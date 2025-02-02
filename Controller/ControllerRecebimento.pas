unit ControllerRecebimento;

interface

uses
   Windows, SysUtils, Data.DB,  Messages,  Variants,  ControllerTabelas,
   GenericEntidade, Forms, Classes, Dateutils, StrUtils;

type
  TControllerRecebimento = class( TControllerTabelas )
  private

  public
    procedure Inserir(Objecto: TGenericEntidade);override;
    procedure Atualizar(Objecto: TGenericEntidade);override;
    procedure AtualizarNossoNumero(Codigo, NossoNumero, Linha: string);
    procedure Excluir(Objecto: TGenericEntidade);override;
    function GetDataSet(Objecto: TGenericEntidade;
                        Condicao: string;
                        Fields: string= '') :TDataset;
    function GetSelect(Tabela, Condicao:string; Fields: string= ''):TDataset;
    procedure Baixar(Objecto: TGenericEntidade);
    procedure Estornar(Objecto: TGenericEntidade);

    function InserirLoteRecebimento(Valor: string): string;


    procedure InserirConta(Valor: Double;
                           CodigoFormaPagamento,
                           Vencimento,
                           CodigoCliente,
                           CodigoOrcamento : string;
                           CentroCusto: string;
                           CodigoOrcamentoFormaPagamento: string;
                           var LoteRecebimento :string;
                           Descricao: string;
                           Caixa: string;
                           Index : Integer = -1 );

    function ParcelarConta( Valor: Double;
                            NumeroParcelas:integer;
                            CodigoFormaPagamento,
                            Vencimento,
                            CodigoCliente ,
                            CodigoOrcamento : string;
                            CentroCusto : string;
                            CodigoOrcamentoFormaPagamento: string;
                            CodigoLoteRecebimento:string;
                            Descricao: string ):boolean;

    procedure InserirParcelas( FormaPagamentoParcela: string;
      ValorParcela: Double; DataVencimento: TDatetime; Acada: boolean;
      Dias: integer; CodigoCliente: string;  QtdParcelas:Integer; CodigoOrcamento ,
      CodigoLoteRecebimento: string; CentroCusto : string; CodigoOrcamentoFormaPagamento: string;
      Descricao: string; caixa: string);
  end;

  resourcestring
  StrCamposRecebimento = ' T1.*, pess."Nome" as Cliente, pess."CPFCNPJ" as CPFCNPJ, '+
                         ' categ."Descricao" as Categoria,'+
                         ' form."Descricao" as FormaPagamento, caix."Descricao" as Caixa,'+
                         ' caix."Status" ,caix."CodigoBanco" , caix."Cendente" as Cendente, '+
                         ' caix."Carteira" AS Carteira ,'+
                         ' caix."Agencia" As Agencia , caix."Conta" ,caix."Digito" as Digito ,caix."Taxa" as Taxa,'+
                         ' caix.Convenio, caix.NossoNumero , '+
                         ' Cast( ( case '+
                         ' when DataVencimento < GetDate() and Situacao  IN ( ''Aberto'' ,''Protestado'' ) then '+
                         '  ( ( Valor + '+
                         '    ( Valor * ISNULL(T1.PercentualMulta , 0) / 100 )   + '+
                         '    ( Valor * ISNULL(T1.PercentualJuros , 0) / 100 ) * '+
                         '      DATEDIFF ( month , DataVencimento , GetDate() )  ) - '+
                         '    ( Valor * ISNULL(T1.PercentualDesconto ,0) / 100 ) ) '+
                         ' when DataVencimento < GetDate() and Situacao  IN ( ''Baixado'' ) then '+
                         '  ( ( Valor + '+
                         '    ( Valor * ISNULL(T1.PercentualMulta , 0) / 100 )   + '+
                         '    ( Valor * ISNULL(T1.PercentualJuros , 0) / 100 ) * '+
                         '      DATEDIFF ( month , DataVencimento , DataBaixa )  ) - '+
                         '    ( Valor * ISNULL(T1.PercentualDesconto ,0) / 100 ) ) '+
                         ' else '+
                         '      Valor end ) as Numeric(10,2) )  as ValorLiquido, '+
                         ' centro.Descricao as DescricaoCentroCusto, '''' as Selecionado, '+
                         ' Form.CNPJOperadoraCartao, Form.CodigoBandeiraTEF, Form.CodigoFormaPagamento as CodigoFormaPagamentoPadrao ';

  ConsultaTabela       = ' Recebimento T1 '+
                         ' left join Pessoa pess on pess."Codigo" = T1."CodigoPessoa" '+
                         ' left join Categorias categ on categ."Codigo" = T1."CodigoCategoria"'+
                         ' left join Caixa caix on caix."Codigo" = T1."CodigoCaixa" '+
                         ' left join FormaPagamento form on form."Codigo" = T1."CodigoFormaPagamento"'+
                         ' left join CentroCusto centro on centro.Codigo = T1."CodigoCentroCusto" ';

  CamposOrcamentoRecebimento = ' T1."Codigo",  T1."Placa",  T1."Observacao", T1."Data" as DataOrcamento , Rec."Data",'+
                               ' Rec."DataVencimento", (case when rec."Situacao" IS NULL then T1."Situacao" else  rec."Situacao" end) as Situacao,'+
                               ' DATEDIFF( day, Rec."Data", Rec."DataVencimento" )  as PrazoMedio, '+
                               ' Rec."DataBaixa", DATEDIFF( day, GETDATE() , Rec."DataVencimento")  as PrazoStatus';

  ConsultaOrcamentoRecebimento =  ' Orcamento T1 left join Recebimento rec on rec."CodigoOrcamento" =  T1."Codigo" ';
                                 // ' or rec."CodigoLoteRecebimento" = T1."CodigoLoteRecebimento"';


implementation

{ TControllerClientes }

uses  GenericDAO, EntidadeFactory,  Principal, UtilsNumeros,
  UtilsString, Controller, Mapper, ControllerCaixaMovimentacao, Parcelar,
  Vcl.Controls;

procedure TControllerRecebimento.Atualizar(Objecto: TGenericEntidade);
begin
  inherited;
  Baixar(Objecto);
end;

procedure TControllerRecebimento.AtualizarNossoNumero(Codigo,
  NossoNumero, Linha : string);
begin
   TGenericDAO.UpdateSQL('Recebimento','NossoNumero='+ quotedstr( NossoNumero ) +
                         ' , LinhaDigitavel='+ quotedstr( Linha ) ,'Codigo='+Codigo );
end;

procedure TControllerRecebimento.Baixar(Objecto: TGenericEntidade);
var
  PCaixaMovimentacao:TGenericEntidade;
  ControllerCaixaMovimentacao: IController;
  MapperCaixaMovimentacao : TMapper;
begin
  inherited;
  if ( PMapper <> nil ) and (strtofloatDef(PMapper.GetValueEntidade('ValorBaixado'),0) > 0) then
  begin
      PCaixaMovimentacao := TEntidadeFactory.Criar(tpCaixaMovimentacao);

      ControllerCaixaMovimentacao:= TControllerCaixaMovimentacao.Create;

      MapperCaixaMovimentacao := TMapper.Create(PCaixaMovimentacao);

      with MapperCaixaMovimentacao do
      begin
        associar('Codigo',nil);
        associar('CodigoFilial',nil);
        associar('CodigoCaixa',nil, PMapper.GetValueEntidade('CodigoCaixa') );
        associar('DataHora',nil, datetostr(PMapper.GetValueDatetimeEntidade('DataBaixa')) );
        associar('Valor',nil, PMapper.GetValueEntidade('ValorBaixado'));
        associar('CodigoCategoria',nil, PMapper.GetValueEntidade('CodigoCategoria'));
        associar('Observacao',nil, PMapper.GetValueEntidade('Descricao') );
        associar('Tipo',nil,'CR�DITO');
        associar('CodigoConta', nil, PMapper.GetValueEntidade('Codigo') );
      end;
      ControllerCaixaMovimentacao.Mapper := MapperCaixaMovimentacao;

      ControllerCaixaMovimentacao.Inserir(PCaixaMovimentacao);
  end;
end;

procedure TControllerRecebimento.Estornar(Objecto: TGenericEntidade);
var
  PCaixaMovimentacao:TGenericEntidade;
  ControllerCaixaMovimentacao: IController;
  MapperCaixaMovimentacao : TMapper;
begin
  inherited;
  if ( PMapper <> nil ) then
  begin
    TGenericDAO.DeleteSQL(TEntidadeFactory.GetNameEntidade(tpCaixaMovimentacao) ,
                         ' CodigoConta='+ PMapper.GetValueEntidade('Codigo'));
  end;
end;

procedure TControllerRecebimento.Excluir(Objecto: TGenericEntidade);
begin
  inherited ;
end;


function TControllerRecebimento.GetDataSet(Objecto: TGenericEntidade;Condicao: string;  Fields: string= ''): TDataset;
begin
  result:= inherited;
end;

function TControllerRecebimento.GetSelect(Tabela, Condicao,
  Fields: string): TDataset;
begin
  result:= inherited;
end;

procedure TControllerRecebimento.Inserir(Objecto:TGenericEntidade);
begin
  inherited;
  //Baixar(Objecto);
end;

function TControllerRecebimento.InserirLoteRecebimento(Valor: string): string;
begin
  TGenericDAO.InsertSQL('LoteRecebimento','"CodigoFilial","Valor"','1 ,'+ Valor );
  result := GetValue('LoteRecebimento T1','0=0','Max("Codigo")');
end;


procedure TControllerRecebimento.InserirConta( Valor: Double;
                                               CodigoFormaPagamento,
                                               Vencimento,
                                               CodigoCliente,
                                               CodigoOrcamento : string;
                                               CentroCusto: string;
                                               CodigoOrcamentoFormaPagamento: string;
                                               var LoteRecebimento :string;
                                               Descricao: string;
                                               Caixa: string;
                                               Index : Integer = -1 );
var
  Recebimento           : TGenericEntidade;
  MapperRecebimento     : TMapper;
  DatasetFormaPagamento : TDataSet;
  BaixaAutomatica       : string;
  PercentualJuros       : string;
  PercentualMulta       : string;
  PercentualTaxaCartao  : Double;
  PercentualTaxaAntecipacao : Double;
  DiasAntecipacao           : integer;
begin
  Recebimento := TEntidadefactory.Criar(tpRecebimento);
  PMapper     := TMapper.Create(Recebimento,  nil);

  with PMapper do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('CodigoPessoa', nil,  CodigoCliente);
    associar('Valor', nil, FloatToStr(Valor) );
    associar('CodigoFormaPagamento', nil, CodigoFormaPagamento );
    associar('CodigoCaixa',  nil, '1');
    associar('Data', nil, datetostr(date) );
    associar('DataVencimento', nil, Vencimento );
    associar('Observacao', nil, '');
    associar('CodigoCategoria',  nil);
    associar('Situacao', nil,'Aberto');
    associar('CodigoOrcamentoFormaPagamento', nil, CodigoOrcamentoFormaPagamento );
    associar('CodigoCaixa', nil, caixa );


    associar('Descricao', nil,Descricao);

    if CentroCusto <> '' then
       associar('CodigoCentroCusto',  nil, CentroCusto );

    if CodigoFormaPagamento <> '' then
    begin
       DatasetFormaPagamento := GetSelect( 'FormaPagamento' ,
                                           ' Codigo='+ CodigoFormaPagamento,
                                           ' BaixaAutomatica , '+
                                           ' ISNULL(PercentualJuros,0) as PercentualJuros,'+
                                           ' ISNULL(PercentualMulta,0) as PercentualMulta,'+
                                           ' ISNULL(PercentualTaxaCartao,0) as PercentualTaxaCartao,'+
                                           ' ISNULL(PercentualTaxaAntecipacao,0)  as PercentualTaxaAntecipacao,'+
                                           ' ISNULL(DiasAntecipacao,0) as DiasAntecipacao' );

       BaixaAutomatica           := DatasetFormaPagamento.fieldbyname('BaixaAutomatica').asstring;
       PercentualJuros           := DatasetFormaPagamento.fieldbyname('PercentualJuros').asstring;
       PercentualMulta           := DatasetFormaPagamento.fieldbyname('PercentualMulta').asstring;

       PercentualTaxaCartao      := DatasetFormaPagamento.fieldbyname('PercentualTaxaCartao').asfloat;
       PercentualTaxaAntecipacao := DatasetFormaPagamento.fieldbyname('PercentualTaxaAntecipacao').asfloat;
       DiasAntecipacao           := DatasetFormaPagamento.fieldbyname('DiasAntecipacao').AsInteger;

       if BaixaAutomatica = 'S' then
       begin
          associar('Situacao', nil,'Baixado');
          associar('DataBaixa', nil,datetostr(date + DiasAntecipacao) );
          associar('ValorBaixado', nil, FloatToStr(Valor -
                                                  (Valor * PercentualTaxaCartao / 100 ) -
                                                  (Valor * PercentualTaxaAntecipacao / 100) ) );
       end;

       associar('PercentualJuros', nil, PercentualJuros );
       associar('PercentualMulta', nil, PercentualMulta );

       associar('PercentualTaxaCartao', nil, floattostr(PercentualTaxaCartao) );
       associar('PercentualTaxaAntecipacao', nil, floattostr(PercentualTaxaAntecipacao) );
       associar('DiasAntecipacao', nil, inttostr(DiasAntecipacao) );

       if CodigoOrcamento <> '' then
       begin
          associar('CodigoOrcamento', nil, CodigoOrcamento );
          associar('NumeroDocumento', nil, StrZero( strtoint(CodigoOrcamento), 6 )+
          ifthen(Index = -1 , '' , '/'+ inttostr(index) ) );
       end
       else
       if LoteRecebimento <> '' then
       begin
          associar('CodigoLoteRecebimento', nil, LoteRecebimento );
          associar('NumeroDocumento', nil, StrZero( strtoint(LoteRecebimento), 6 )+
          ifthen(Index >= 0 ,'/'+ inttostr(index),'') );
       end;

    end
    else
    begin
       LoteRecebimento  := InserirLoteRecebimento(
                           StringReplace(FloatToStr(Valor),',', '.', []) );

       associar('Situacao', nil,'Acumulado');
       associar('CodigoLoteRecebimento', nil, LoteRecebimento );
       associar('NumeroDocumento', nil, StrZero( strtoint(LoteRecebimento), 6 ) );
    end;

    Inserir( Recebimento );

    associar('Codigo', nil,
              GetValue('Recebimento','0=0','Max(Codigo)'));

    if BaixaAutomatica <> '' then
    begin
       Atualizar( Recebimento );
    end;

    PMapper.free;
    PMapper := nil;


  end;
end;


function TControllerRecebimento.ParcelarConta( Valor: Double;
                                                NumeroParcelas:integer;
                                                CodigoFormaPagamento,
                                                Vencimento,
                                                CodigoCliente ,
                                                CodigoOrcamento : string;
                                                CentroCusto : string;
                                                CodigoOrcamentoFormaPagamento: string;
                                                CodigoLoteRecebimento:string;
                                                Descricao: string ):boolean;
var
   I:integer;
   Data: TDatetime;
   DataVencimento: TDatetime;
   ValorParcela: Double;
   Acada:boolean;
   Dias :integer;
   FormaPagamentoEntrada: string;
   FormaPagamentoParcela: string;
   Caixa: string;
   ValorEntrada: Double;
   Parcelas:integer;
begin
  application.Createform(TFormParcelar, FormParcelar);

  FormParcelar.edtValorParcelar.text   := floattostr(Valor);
  if NumeroParcelas > 1 then
     FormParcelar.edtQtdParcelas.text  := inttostr( NumeroParcelas )
  else
     FormParcelar.edtQtdParcelas.text  := '1';

  FormParcelar.cboCodigoFormaPagamento.keyValue := CodigoFormaPagamento;
  FormParcelar.dateDataVencimento.date          := StrToDateDef(Vencimento, date);
  FormParcelar.LoteRecebimento                  := CodigoLoteRecebimento;

  result := false;

  if FormParcelar.ShowModal = mrOk then
  begin
    ValorParcela          :=(FormParcelar.Valor -
                             FormParcelar.ValorEntrada) /
                             FormParcelar.QtdParcelas;

    DataVencimento        := FormParcelar.Vencimento;
    Acada                 := FormParcelar.Acada;
    Dias                  := FormParcelar.Dias;
    FormaPagamentoParcela := FormParcelar.FormaPgtoParcela;
    FormaPagamentoEntrada := FormParcelar.FormaPgtoEntrada;
    ValorEntrada          := FormParcelar.ValorEntrada;
    Parcelas              := FormParcelar.QtdParcelas;
    Caixa                 := FormParcelar.Caixa;

  //Inserir Entrada
    if FormParcelar.ValorEntrada > 0 then
    begin
      InserirConta( ValorEntrada,
                    FormaPagamentoEntrada,
                    datetostr(date),
                    CodigoCliente,
                    CodigoOrcamento,
                    CentroCusto,
                    CodigoOrcamentoFormaPagamento,
                    CodigoLoteRecebimento,
                    Descricao,
                    Caixa,
                    0  );
    end;

    InserirParcelas( FormaPagamentoParcela,
                     ValorParcela,
                     DataVencimento,
                     Acada,
                     Dias,
                     CodigoCliente,
                     Parcelas ,
                     CodigoOrcamento,
                     CodigoLoteRecebimento ,
                     CentroCusto,
                     CodigoOrcamentoFormaPagamento,
                     Descricao,
                     Caixa );
    result := true;
  end
  else
  if CodigoLoteRecebimento <> '' then
  begin
     DeleteSQL('Recebimento', 'CodigoLoteRecebimento = '+
                               CodigoLoteRecebimento );
    abort;
  end;

end;

procedure  TControllerRecebimento.InserirParcelas( FormaPagamentoParcela: string;
                                                   ValorParcela :Double;
                                                   DataVencimento:TDatetime;
                                                   Acada:boolean;
                                                   Dias :integer;
                                                   CodigoCliente: string;
                                                   QtdParcelas:Integer;
                                                   CodigoOrcamento,
                                                   CodigoLoteRecebimento: string;
                                                   CentroCusto : string;
                                                   CodigoOrcamentoFormaPagamento: string;
                                                   Descricao: string;
                                                   caixa: string );
var
  I , Dia :integer;
begin
   Dia := dayOf(DataVencimento);
   if QtdParcelas > 0 then
   begin
       for I := 0 to QtdParcelas - 1 do
       begin
          InserirConta( ValorParcela,
                        FormaPagamentoParcela,
                        datetostr(DataVencimento),
                        CodigoCliente,
                        CodigoOrcamento,
                        CentroCusto,
                        CodigoOrcamentoFormaPagamento,
                        CodigoLoteRecebimento,
                        Descricao,
                        caixa ,
                        I + 1  );
          if Acada  then
             DataVencimento:= incDay(DataVencimento,Dias)
          else
             DataVencimento:=  IncMonth(DataVencimento);
       end;
   end
   else
   begin
      InserirConta( ValorParcela,
                    FormaPagamentoParcela,
                    datetostr(DataVencimento),
                    CodigoCliente,
                    CodigoOrcamento,
                    CentroCusto,
                    CodigoOrcamentoFormaPagamento,
                    CodigoLoteRecebimento,
                    Descricao,
                    caixa,
                    -1  );
   end;

end;

end.
