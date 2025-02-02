unit RecebimentosDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus, DBClient,StrUtils, DateUtils, ACBrBoleto;

type
  TFormRecebimentoDetalhes = class(TTemplateFormComTabGridDetalhes)
    PopupMenu1: TPopupMenu;
    Baixaar1: TMenuItem;
    BitBtn2: TSpeedButton;
    Label5: TLabel;
    Label4: TLabel;
    lbTotalPago: TLabel;
    lbTotal: TLabel;
    Parcelar1: TMenuItem;
    Boleto1: TMenuItem;
    Label3: TLabel;
    cboFormaPgtoPesquisa: TComboBox;
    cboCaixaPesquisa: TComboBox;
    Label8: TLabel;
    Label7: TLabel;
    cboSituacaoPesquisa: TComboBox;
    Label2: TLabel;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    srcOrcamento: TDataSource;
    srcItensOrcamento: TDataSource;
    PageControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    lbData: TLabel;
    lbCodigoPessoa: TLabel;
    cboCodigoPessoa: TComboBox;
    dateData: TDateTimePicker;
    lbDescricao: TLabel;
    edtDescricao: TEdit;
    lbCodigoCategoria: TLabel;
    cboCodigoCategoria: TComboBox;
    lbCodigoCaixa: TLabel;
    cboCodigoCaixa: TComboBox;
    dateDataVencimento: TDateTimePicker;
    lbDataVencimento: TLabel;
    lbValor: TLabel;
    edtValor: TEdit;
    lbSituacao: TLabel;
    cboSituacao: TComboBox;
    lbObservacao: TLabel;
    memoObservacao: TMemo;
    edtNumeroDocumento: TEdit;
    lbNumeroDocumento: TLabel;
    lbCodigoFormaPagamento: TLabel;
    cboCodigoFormaPagamento: TComboBox;
    Grid1: TDBGrid;
    grdItens: TDBGrid;
    edtJuros: TEdit;
    Label1: TLabel;
    edtMulta: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtDesconto: TEdit;
    Recibo1: TMenuItem;
    edtNumero: TEdit;
    Label11: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    cboCategoriaPesquisa: TComboBox;
    Label13: TLabel;
    cboCentroCustoPesquisa: TComboBox;
    Label14: TLabel;
    cboCentroCusto: TComboBox;
    SpeedButton3: TSpeedButton;
    edtPorTipoPeriodo: TRadioGroup;
    Label15: TLabel;
    edtNossoNumero: TEdit;
    PopupMenu2: TPopupMenu;
    Detalhado1: TMenuItem;
    Resumo1: TMenuItem;
    Label16: TLabel;
    edtOrcamento: TEdit;
    edtLote: TEdit;
    Label17: TLabel;
    edtCodigoPesquisa: TEdit;
    Label18: TLabel;
    N1: TMenuItem;
    Individual1: TMenuItem;
    Agrupado1: TMenuItem;
    SpeedButton4: TSpeedButton;
    btnMovimentar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMovimentarClick(Sender: TObject);
    procedure Baixaar1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure srcPesquisaStateChange(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure grdEntidadeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Parcelar1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure srcOrcamentoDataChange(Sender: TObject; Field: TField);
    procedure TabSheet5Show(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure Resumo1Click(Sender: TObject);
    procedure Individual1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    procedure BaixarConta;
    procedure FormatarCamposMoedas;
    procedure SomaTotais;
    procedure ParcelarConta;
    procedure EstornarConta;
    procedure GetContasSelecionadas(var Valor: Double; var Contas: string);
    procedure InserirEntrada(Contas, FormaPagamentoEntrada: string;
      ValorEntrada: Double; CodigoOrcamento, CodigoLoteRecebimento,CodigoCentroCusto: string;
      CodigoOrcamentoFormaPagamento: string);
    procedure InserirParcelas( Contas,
                               FormaPagamentoParcela: string;
                               ValorParcela: Double;
                               DataVencimento: TDatetime;
                               Acada: boolean;
                               Dias: integer;
                               CodigoOrcamento,
                               CodigoCentroCusto,
                               CodigoLoteRecebimento,
                               CodigoOrcamentoFormaPagamento: string);
    procedure MontarCondicao;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecebimentoDetalhes: TFormRecebimentoDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, DBUtils, ControllerRecebimento, Baixar, RelRecebimento,
  Parcelar, Mapper, Principal, BoletoACBr, UtilsString, RelRecibo,
  ControllerOrcamento, RelRecebimento2;

procedure TFormRecebimentoDetalhes.btnMovimentarClick(Sender: TObject);
begin
  inherited;
  BaixarConta;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

procedure TFormRecebimentoDetalhes.btnInserirClick(Sender: TObject);
begin
  inherited;
  dateData.Date:= date;
  dateDataVencimento.Date:= date;
  cboSituacao.ItemIndex := 0;
  //cboFuncionario.ItemIndex:= cboFuncionario.Items.IndexOfObject(
  //                           TObject(strtoInt(FormPrincipal.CodigoPessoa)));
end;

procedure TFormRecebimentoDetalhes.btnPesquisarClick(Sender: TObject);
begin
  MontarCondicao;
  inherited;
  FormatarCamposMoedas;
end;

procedure TFormRecebimentoDetalhes.Detalhado1Click(Sender: TObject);
begin
  inherited;
  application.CreateForm(TFormRelRecebimento,FormRelRecebimento );
  FormRelRecebimento.cdsRecebimento.CloneCursor( TClientDataSet(srcPesquisa.DataSet), true );
  FormRelRecebimento.QuickRep1.PreviewModal;
  FormRelRecebimento.FreeOnRelease;
end;

procedure TFormRecebimentoDetalhes.Baixaar1Click(Sender: TObject);
begin
  inherited;
  BaixarConta;
  RefreshDataSet;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

procedure TFormRecebimentoDetalhes.BaixarConta;
var
   I:integer;
   Selecionados:TBookmarkList;
   Data: TDatetime;
   Valor: Double;
   AssumirDataVencimento: boolean;

   procedure Baixar;
   begin
      UpdateEntidade(srcPesquisa.DataSet.fieldByName('Codigo').AsString);
      Alterar;
      MapperEntidade.Associar('DataBaixa', nil, datetostr(Data));
      MapperEntidade.Associar('ValorBaixado', nil, ifthen( Valor > 0, floattostr( Valor +
                                                   srcPesquisa.DataSet.FieldByName('ValorBaixado').AsFloat),
                                                   srcEntidade.DataSet.FieldByName('Valor').AsString));
      //if Valor = srcEntidade.DataSet.FieldByName('Valor').AsFloat then
      MapperEntidade.Associar('Situacao', nil, 'Baixado');
      Persistir;
   end;

begin
  application.Createform(TFormBaixar, FormBaixar);
  Selecionados:= grdEntidade.SelectedRows;
  if Selecionados.Count > 0 then
  begin
    Valor := 0;
    for I := 0 to Selecionados.Count - 1 do
    begin
      srcPesquisa.DataSet.GotoBookmark( Selecionados[i] );
      Valor := Valor + srcPesquisa.DataSet.FieldByName('Valor').AsFloat;
    end;
    FormBaixar.edtValorPago.text := floattostr(Valor);
  end;

  if FormBaixar.showmodal = mrOk then
  begin
    Data  := FormBaixar.Data;

    Valor := FormBaixar.Valor;
    FormBaixar.enabled := false;
    if Selecionados.Count > 0 then
    begin
        if application.messagebox('Deseja baixar a fatura na data do vencimento ',
        'Data',mb_iconquestion+ mb_yesno) = id_yes then
        begin
            AssumirDataVencimento := true
        end;
        //srcPesquisa.DataSet.Bookmark
        Valor := 0;
        for I := 0 to Selecionados.Count - 1 do
        begin
            srcPesquisa.DataSet.GotoBookmark( Selecionados[i] );
            if AssumirDataVencimento then
            begin
              Data  := srcPesquisa.DataSet.FieldByName('DataVencimento').AsDatetime;
            end;
            Baixar;
        end;
    end
    else
      Baixar;
  end;
  FormBaixar.free;
end;

procedure TFormRecebimentoDetalhes.EstornarConta;
begin
  Alterar;
  MapperEntidade.Associar('DataBaixa', nil, '01/01/1889');
  MapperEntidade.Associar('ValorBaixado', nil, '0');
  MapperEntidade.Associar('Situacao', nil, 'Aberto');
  Persistir;
end;

procedure TFormRecebimentoDetalhes.FormActivate(Sender: TObject);
begin
  inherited;
  FormatarCamposMoedas;
end;

procedure TFormRecebimentoDetalhes.FormatarCamposMoedas;
begin
  TFloatField(srcPesquisa.DataSet.FieldByName('Valor')).DisplayFormat := '0.00;';
  TFloatField(srcPesquisa.DataSet.FieldByName('ValorBaixado')).DisplayFormat := '0.00;';
end;

procedure TFormRecebimentoDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerRecebimento.Create;
  Entidade   := TEntidadeFactory.Criar(tpRecebimento);
  Tabela     := ControllerRecebimento.ConsultaTabela;
  Campos     := ControllerRecebimento.StrCamposRecebimento;

  dateInicio.date:= StartOfTheWeek(date) ;
  dateFim.date:= date+1;
  cboSituacaoPesquisa.ItemIndex := 0;

  MontarCondicao;
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('Data', dateData);
    associar('Descricao', edtDescricao);
    associar('CodigoPessoa',  cboCodigoPessoa);
    associar('Valor', edtValor);
    associar('CodigoCategoria',  cboCodigoCategoria);
    associar('Situacao', cboSituacao);
    associar('CodigoCaixa',  cboCodigoCaixa);
    associar('NumeroDocumento', edtNumeroDocumento);
    associar('DataVencimento', dateDataVencimento);
    associar('CodigoFormaPagamento',  cboCodigoFormaPagamento);
    associar('Observacao', memoObservacao);
    associar('PercentualJuros', edtJuros);
    associar('PercentualMulta', edtMulta);
    associar('PercentualDesconto', edtDesconto);
    associar('CodigoOrcamento', nil );
    associar('CodigoLoteRecebimento', nil );
    associar('CodigoCentroCusto', cboCentroCusto);
    associar('CodigoOrcamentoFormaPagamento', nil);
    associar('NossoNumero', edtNossoNumero);
  //associar('CodigoFuncionario', cboFuncionario);
  // associar('DataBaixa', dateDataBaixa);
  // associar('ValorBaixado', edtValorPago);
  end;

  FillCombobox( tpPessoa, cboCodigoPessoa,'0=0','Codigo','Nome','Nome');
  FillCombobox( tpFormaPagamento, cboCodigoFormaPagamento);
  FillCombobox( tpCaixa, cboCodigoCaixa);
  FillCombobox( tpCentroCusto, cboCentroCusto);
  FillCombobox( tpCentroCusto, cboCentroCustoPesquisa);
  FillCombobox( tpPlanoContas, cboCodigoCategoria,' Tipo=''C'' ','Codigo',
                                                '(Codificacao+'' ''+Descricao) as Descricao ',
                                                'Codificacao');
  FillCombobox( tpPlanoContas, cboCategoriaPesquisa,' Tipo=''C'' ','Codigo',
                                                '(Codificacao+'' ''+Descricao) as Descricao ',
                                                'Codificacao');
  FillCombobox( tpFormaPagamento, cboFormaPgtoPesquisa);
  FillCombobox( tpCaixa, cboCaixaPesquisa);

  CampoPesquisa := 'pess."Nome"';
  FormatarCamposMoedas;

end;

procedure TFormRecebimentoDetalhes.grdEntidadeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
  Situacao: string;
  DataVencimento:TDatetime;
begin
  inherited;
  Situacao:= srcPesquisa.dataset.FieldByName('Situacao').asstring;
  DataVencimento := srcPesquisa.dataset.FieldByName('DataVencimento').asDatetime;
    if ( DataVencimento > date) and
       ( Situacao= 'Aberto') then
       grdEntidade.Canvas.Font.Color := clBlue
    else
    if ( DataVencimento <= date) and
       ( Situacao = 'Aberto')   then
       grdEntidade.Canvas.Font.Color := clRed
    else
    if ( Situacao = 'Baixado')    then
      grdEntidade.Canvas.Font.Color := clGreen
    else
    if ( Situacao = 'Parcelado')   then
       grdEntidade.Canvas.Font.Color := clgray
    else
    if ( Situacao = 'Cancelado')   then
       grdEntidade.Canvas.Font.Color := clSilver ;

  grdEntidade.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormRecebimentoDetalhes.Parcelar1Click(Sender: TObject);
begin
  inherited;
  ParcelarConta;
  RefreshDataSet;
  Operacao:= '';
  AtualizarBotoes;
end;

procedure TFormRecebimentoDetalhes.GetContasSelecionadas(var Valor: Double; var Contas: string);
var
  I: Integer;
begin
  for I := 0 to grdEntidade.SelectedRows.Count - 1 do
  begin
    srcPesquisa.DataSet.GotoBookmark(grdEntidade.SelectedRows[i]);
    if srcPesquisa.DataSet.FieldByName('Situacao').AsString <> 'Aberto' then
    begin
      showmessage('Somente contas com situa��o "Aberto"!');
      abort;
    end;
    Valor := Valor + srcPesquisa.DataSet.FieldByName('ValorLiquido').AsFloat;
    Contas := Contas + srcPesquisa.DataSet.FieldByName('Codigo').asstring + ifthen(Contas <> '', ',', '');
  end;
end;

procedure TFormRecebimentoDetalhes.Individual1Click(Sender: TObject);
Var
  ValorSelecionado: Double;
  I: Integer;
  Codigo: string;
begin
  inherited;
  application.createform(TfrmBoletoACBr,frmBoletoACBr);
  frmBoletoACBr.DataSet:= srcPesquisa.DataSet;
  frmBoletoACBr.Controller := Controller;
  if TComponent(Sender).Name = 'Agrupado1' then
  begin
      for I := 0 to grdEntidade.SelectedRows.Count - 1 do
      begin
        srcPesquisa.DataSet.GotoBookmark( grdEntidade.SelectedRows[i] );
        ValorSelecionado  := ValorSelecionado + srcPesquisa.DataSet.FieldByName('Valor').asFloat;
      end;
      frmBoletoACBr.GerarBoleto;
      frmBoletoACBr.AdicionarBoleto;
  end
  else
  begin
      for I := 0 to grdEntidade.SelectedRows.Count - 1 do
      begin
          srcPesquisa.DataSet.GotoBookmark( grdEntidade.SelectedRows[i] );
          frmBoletoACBr.GerarBoleto;
          frmBoletoACBr.AdicionarBoleto;
      end;
  end;

  with frmBoletoACBr do
  begin
      ShowModal;
      if application.messagebox('Confirma impress�o do boleto ',
      'Confirmar', mb_iconquestion+mb_YesNo) = Id_yes then
      begin
         for I := 0 to grdEntidade.SelectedRows.Count - 1 do
         begin
            srcPesquisa.DataSet.GotoBookmark( grdEntidade.SelectedRows[i] );
            if  Titulo <> nil then
            begin
               if TACBrTitulo(ACBrBoleto1.ListadeBoletos[i]).NossoNumero <> '' then
               begin
                    Codigo          := srcPesquisa.DataSet.FieldByName('Codigo').asstring;
                    TControllerRecebimento(Controller).AtualizarNossoNumero(
                                                       Codigo ,
                                                       TACBrTitulo(ACBrBoleto1.ListadeBoletos[i]).NossoNumero,
                                                       TACBrTitulo(ACBrBoleto1.ListadeBoletos[i]).LinhaDigitada );
               end;
            end;
         end;
      end;
      free;
  end;

end;

procedure TFormRecebimentoDetalhes.InserirEntrada(Contas: string ;
                                                FormaPagamentoEntrada: string;
                                                ValorEntrada:Double;
                                                CodigoOrcamento: string;
                                                CodigoLoteRecebimento: string;
                                                CodigoCentroCusto: string;
                                                CodigoOrcamentoFormaPagamento: string );
var
  BaixaAutomatica: string;
begin
    with MapperEntidade do
    begin
      Associar('NumeroDocumento', nil , Contas);
      Associar('Valor', nil , FormatFloat(',0.00;',ValorEntrada) );
      Associar('DataVencimento', nil , datetostr(date));
      Associar('CodigoOrcamento', nil , CodigoOrcamento);
      Associar('CodigoLoteRecebimento', nil , CodigoLoteRecebimento);
      Associar('CodigoCentroCusto', nil , CodigoCentroCusto);
      Associar('CodigoOrcamentoFormaPagamento', nil , CodigoOrcamentoFormaPagamento);

      if FormaPagamentoEntrada <> '' then
      begin
         Associar('CodigoFormaPagamento', nil , FormaPagamentoEntrada );

         BaixaAutomatica:= TControllerRecebimento(Controller).GetValue(
                           TMapper.GetTableNameClasse( TEntidadeFactory.GetClassInfo(tpFormaPagamento) ) ,
                           'Codigo='+ FormaPagamentoEntrada+
                           ' and BaixaAutomatica = ''S''',
                           'BaixaAutomatica' );

         if BaixaAutomatica <> '' then
         begin
            associar('Situacao', nil,'Baixado');
            associar('DataBaixa', nil,datetostr(date) );
            associar('DataVencimento', nil, datetostr(date) );
            associar('ValorBaixado', nil, FormatFloat(',0.00;',ValorEntrada) );
         end;

      end;

      Associar('Descricao', nil , 'Entrada '+
                MapperEntidade.GetValueEntidade('Descricao') );

      TControllerRecebimento(Controller).PMapper:= MapperEntidade;
      Controller.Inserir(MapperEntidade.Entidade);
    end;
end;

procedure  TFormRecebimentoDetalhes.InserirParcelas( Contas: string;
                                                     FormaPagamentoParcela: string;
                                                     ValorParcela :Double;
                                                     DataVencimento:TDatetime;
                                                     Acada:boolean;
                                                     Dias :integer;
                                                     CodigoOrcamento,
                                                     CodigoCentroCusto,
                                                     CodigoLoteRecebimento,
                                                     CodigoOrcamentoFormaPagamento: string );
var
  I , Dia :integer;
begin
  with MapperEntidade do
  begin
      Dia := dayOf(DataVencimento);
      for I := 0 to FormParcelar.QtdParcelas - 1 do
      begin
         Associar('CodigoFormaPagamento', nil , FormaPagamentoParcela );
         Associar('Situacao', nil,'Aberto');
         Associar('NumeroDocumento', nil , Contas +'/'+ inttostr(I+1) );
         Associar('Valor', nil , FormatFloat(',0.00;',ValorParcela) );
         Associar('DataVencimento', nil , datetostr(DataVencimento));
         Associar('CodigoOrcamento', nil , CodigoOrcamento );
         Associar('CodigoLoteRecebimento', nil , CodigoLoteRecebimento );
         Associar('CodigoCentroCusto', nil , CodigoCentroCusto );
         Associar('CodigoOrcamentoFormaPagamento', nil , CodigoOrcamentoFormaPagamento );


         Controller.Inserir(MapperEntidade.Entidade);

         if Acada  then
            DataVencimento:= incDay(DataVencimento,Dias)
         else
            DataVencimento:= strtodate( inttostr( Dia ) +'/'+
                                        inttostr( monthOf(IncMonth(DataVencimento)) )+'/'+
                                        inttostr( yearOf(DataVencimento)) );
      end;
  end;
end;

procedure TFormRecebimentoDetalhes.MontarCondicao;
begin
  case edtPorTipoPeriodo.itemindex of
    0:  Condicao := ' "data" >=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', dateInicio.date)) + ' and ' +
                    ' "data" <=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', dateFim.date));

    1:  Condicao := ' "DataVencimento" >=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', dateInicio.date)) + ' and ' +
                    ' "DataVencimento" <=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', dateFim.date));

    2:  Condicao := ' "DataBaixa" >=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', dateInicio.date)) + ' and ' +
                    ' "DataBaixa" <=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', dateFim.date));
  end;


  if cboCaixaPesquisa.Text <> '' then
    Condicao := condicao + ' and caix."Descricao" =' + quotedstr(cboCaixaPesquisa.Text);

  if cboFormaPgtoPesquisa.Text <> '' then
    Condicao := condicao + ' and form."Descricao" =' + quotedstr(cboFormaPgtoPesquisa.Text);

  if cboSituacaoPesquisa.Text <> '' then
    Condicao := condicao + ' and T1."Situacao" =' + quotedstr(cboSituacaoPesquisa.Text);

  if edtNumero.text <> '' then
    Condicao := condicao + ' and T1."NumeroDocumento" LIKE (' + quotedstr( '%'+edtNumero.Text+'%')+')';

  if edtValorPesquisa.text <> '' then
    Condicao := condicao + ' and pess."Nome"  LIKE (' + quotedstr('%'+ edtValorPesquisa.Text +'%')+')';

  if cboCentroCustoPesquisa.Text <> '' then
    Condicao := condicao + ' and centro."Descricao" =' + quotedstr(cboCentroCustoPesquisa.Text);

 if cboCategoriaPesquisa.Text <> '' then
    Condicao := condicao + ' and categ."Descricao" =' + quotedstr(cboCategoriaPesquisa.Text);

 if edtOrcamento.Text <> '' then
    Condicao := condicao + ' and T1."CodigoOrcamento" =' + quotedstr(edtOrcamento.Text);

 if edtlote.Text <> '' then
    Condicao := condicao + ' and T1."CodigoLoteOrcamento" =' + quotedstr(edtlote.Text);

 if edtCodigoPesquisa.Text <> '' then
    Condicao := condicao + ' and T1."Codigo" =' + quotedstr(edtCodigoPesquisa.Text);

end;

procedure TFormRecebimentoDetalhes.ParcelarConta;
var
   I:integer;

   Valor: Double;
   ValorParcela: Double;
   DataVencimento: TDatetime;
   Contas: string;
   Acada:boolean;
   Dias :integer;
   FormaPagamentoEntrada: string;
   FormaPagamentoParcela: string;
   ValorEntrada: Double;
   CodigoOrcamento: string;
   CodigoLoteRecebimento: string;
  CodigoCentroCusto: string;
  CodigoOrcamentoFormaPagamento: string;
begin
  GetContasSelecionadas(Valor,Contas);
  application.Createform(TFormParcelar, FormParcelar);
  FormParcelar.edtValorParcelar.text := floattostr(Valor);
  if FormParcelar.ShowModal = mrOk then
  begin
    ValorParcela          := ( FormParcelar.Valor - FormParcelar.ValorEntrada) /
                               FormParcelar.QtdParcelas ;
    DataVencimento        := FormParcelar.Vencimento;
    Acada                 := FormParcelar.Acada;
    Dias                  := FormParcelar.Dias;
    FormaPagamentoParcela := FormParcelar.FormaPgtoParcela;
    FormaPagamentoEntrada := FormParcelar.FormaPgtoEntrada;
    ValorEntrada          := FormParcelar.ValorEntrada;

    CodigoOrcamento        := srcEntidade.DataSet.FieldByName('CodigoOrcamento').asstring;
    CodigoLoteRecebimento  := srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring;
    CodigoCentroCusto      := srcEntidade.DataSet.FieldByName('CodigoCentroCusto').asstring;
    CodigoOrcamentoFormaPagamento :=  srcEntidade.DataSet.FieldByName('CodigoOrcamentoFormaPagamento').asstring;

    Alterar;
    with MapperEntidade do
    begin
      //Inserir Entrada
      if FormParcelar.ValorEntrada > 0 then
      begin
         InserirEntrada( Contas,
                         FormaPagamentoEntrada,
                         ValorEntrada,
                         CodigoOrcamento,
                         CodigoLoteRecebimento,
                         CodigoCentroCusto,
                         CodigoOrcamentoFormaPagamento );
      end;
      //Inserir Parcelas
      InserirParcelas(Contas,
                      FormaPagamentoParcela,
                      ValorParcela,
                      DataVencimento,
                      Acada,
                      Dias,
                      CodigoOrcamento,
                      CodigoCentroCusto,
                      CodigoLoteRecebimento,
                      CodigoOrcamentoFormaPagamento );

      //Atualizar conta para "Parcelado"
      for I := 0 to grdEntidade.SelectedRows.Count - 1 do
      begin
        Alterar;
        srcEntidade.DataSet.GotoBookmark( grdEntidade.SelectedRows[i] );
        Associar('Situacao', nil , 'Parcelado' );
        Controller.Atualizar(MapperEntidade.Entidade);
      end;
    end;
  end;
end;

procedure TFormRecebimentoDetalhes.Recibo1Click(Sender: TObject);
begin
  inherited;
  application.createform(TFormRelrecibo,FormRelrecibo);
  FormRelrecibo.Nome    := srcPesquisa.dataset.fieldbyname('Cliente').asstring;
  FormRelrecibo.Valor   := FormatFloat(',0.00;', srcPesquisa.dataset.fieldbyname('ValorBaixado').asFloat);
  FormRelrecibo.Extenso := NumeroParaExtenso( srcPesquisa.dataset.fieldbyname('ValorBaixado').asFloat);
  FormRelrecibo.Servico := srcPesquisa.dataset.fieldbyname('Descricao').asstring;
  FormRelrecibo.NomeAssinatura := 'GC Velocimentros';


  FormRelrecibo.montar;

  FormRelrecibo.quickrep1.PreviewModal;
  FormRelrecibo.free;
end;

procedure TFormRecebimentoDetalhes.Resumo1Click(Sender: TObject);
begin
  inherited;
  application.CreateForm(TFormRelRecebimento2,FormRelRecebimento2 );
  FormRelRecebimento2.cdsRecebimento.CloneCursor( TClientDataSet(srcPesquisa.DataSet), true );
  FormRelRecebimento2.QuickRep1.PreviewModal;
  FormRelRecebimento2.FreeOnRelease;
end;

procedure TFormRecebimentoDetalhes.TabSheet5Show(Sender: TObject);
var
  CondicaoOrcamento: string;
begin
  inherited;
  CondicaoOrcamento:= ifthen(not srcEntidade.Dataset.FieldByName('Codigo').isNull ,
                             ' T1.Codigo='+ quotedstr(
                             srcEntidade.Dataset.FieldByName('CodigoOrcamento').asstring) +' or '+
                             ' T1.CodigoLoteRecebimento='+ quotedstr(
                             srcEntidade.Dataset.FieldByName('CodigoLoteRecebimento').asstring),
                             '0=1');

  srcOrcamento.DataSet:=  Controller.GetSelect( ControllerOrcamento.ConsultaTabela ,
                                                CondicaoOrcamento,
                                                CamposOrcamento);
end;

procedure TFormRecebimentoDetalhes.srcOrcamentoDataChange(Sender: TObject;
  Field: TField);
var
  CondicaoItemOrcamento: string;
begin
  inherited;
  CondicaoItemOrcamento:= ifthen( not srcOrcamento.DataSet.FieldByName('Codigo').isNull,
                                'CodigoOrcamento='+srcOrcamento.DataSet.FieldByName('Codigo').asstring,
                                '0=1');
  srcItensOrcamento.DataSet:=  Controller.GetSelect(TEntidadeFactory.GetNameEntidade(tpitemorcamento)+' T1',
                              CondicaoItemOrcamento,
                              ' Ordem, (Select Descricao from Produtos where '+
                              ' Produtos.Codigo=CodigoProduto) AS Descricao,'+
                              ' Quantidade, Valor, Desconto, Total');

end;

procedure TFormRecebimentoDetalhes.srcPesquisaStateChange(Sender: TObject);
begin
  inherited;
  SomaTotais;
end;

procedure TFormRecebimentoDetalhes.TabSheet2Show(Sender: TObject);
begin
  inherited;
   btnMovimentar.Caption := 'Baixar';
  PageControl1.activepageindex := 0;
end;

procedure TFormRecebimentoDetalhes.SomaTotais;
var
  total: Extended;
  pago: Extended;
begin
  total:=0;
  pago :=0;
  if (srcPesquisa.DataSet <> nil) and (srcPesquisa.DataSet.active) then
  begin
    try
      srcPesquisa.DataSet.DisableControls;
      srcPesquisa.DataSet.first;
      while not srcPesquisa.DataSet.eof do
      begin
         if (srcPesquisa.DataSet.FieldByName('Situacao').AsString <> 'Parcelado') and
            (srcPesquisa.DataSet.FieldByName('Situacao').AsString <> 'Cancelado') then
         begin
           total := total + srcPesquisa.DataSet.FieldByName('Valor').asfloat;
           pago  := pago + srcPesquisa.DataSet.FieldByName('ValorBaixado').asfloat;
         end;
         srcPesquisa.DataSet.next;
      end;
      srcPesquisa.DataSet.first;
      lbTotal.caption     := formatFloat(',0.00;', total );
      lbTotalPago.caption := formatFloat(',0.00;', pago);
    finally
      srcPesquisa.DataSet.enableControls;
    end;
  end;
end;

procedure TFormRecebimentoDetalhes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActCentroCusto.Execute;
  FillCombobox( tpCentroCusto, cboCentroCusto);
end;

procedure TFormRecebimentoDetalhes.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EstornarConta;
  tabPrincipal.ActivePageIndex := 0;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

end.

