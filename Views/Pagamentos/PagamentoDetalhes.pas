unit PagamentoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid,
  Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Menus,DBClient, strUtils, Dateutils;

type

   THackDBGrid = class(TDBGrid);

  TFormPagamentoDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbData: TLabel;
    dateData: TDateTimePicker;
    lbCodigoPessoa: TLabel;
    cboCodigoPessoa: TComboBox;
    edtDescricao: TEdit;
    lbDescricao: TLabel;
    lbValor: TLabel;
    edtValor: TEdit;
    lbCodigoCategoria: TLabel;
    cboCodigoCategoria: TComboBox;
    edtNumeroDocumento: TEdit;
    lbNumeroDocumento: TLabel;
    cboSituacao: TComboBox;
    lbSituacao: TLabel;
    lbCodigoCaixa: TLabel;
    cboCodigoCaixa: TComboBox;
    lbCodigoFormaPagamento: TLabel;
    lbObservacao: TLabel;
    memoObservacao: TMemo;
    cboCodigoFormaPagamento: TComboBox;
    dateDataVencimento: TDateTimePicker;
    lbDataVencimento: TLabel;
    btnMovimentar: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Baixaar1: TMenuItem;
    BitBtn2: TSpeedButton;
    Label5: TLabel;
    lbTotal: TLabel;
    lbTotalPago: TLabel;
    Label4: TLabel;
    Parcelar1: TMenuItem;
    Label3: TLabel;
    cboFormaPgtoPesquisa: TComboBox;
    Label8: TLabel;
    cboCaixaPesquisa: TComboBox;
    Label7: TLabel;
    cboSituacaoPesquisa: TComboBox;
    Label2: TLabel;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    Recibo1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label11: TLabel;
    edtNumero: TEdit;
    Label6: TLabel;
    Label12: TLabel;
    cboCategoriaPesquisa: TComboBox;
    Label1: TLabel;
    cboCentroCusto: TComboBox;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    cboCentroCustoPesquisa: TComboBox;
    edtPorTipoPeriodo: TRadioGroup;
    PopupMenu2: TPopupMenu;
    Resumo1: TMenuItem;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnMovimentarClick(Sender: TObject);
    procedure Baixaar1Click(Sender: TObject);
    procedure srcPesquisaStateChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure grdEntidadeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Parcelar1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Recibo1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    procedure BaixarConta;
    procedure SomaTotais;
    procedure FormatarCamposMoedas;
    procedure ParcelarConta;
    procedure EstornarConta;
    procedure GetContasSelecionadas(var Valor: Double; var Contas: string);
    procedure InserirEntrada(Contas,
                             FormaPagamentoEntrada: string;
                             ValorEntrada: Double);
    procedure InserirParcelas(Contas, FormaPagamentoParcela: string;
      ValorParcela: Double; DataVencimento: TDatetime;
      Acada:boolean; Dias, Parcelas:integer;NumeroDocumento : string = '');
    procedure MontarCondicao;
    { Private declarations }
  protected
     procedure RefreshDataSet;override;
  public
    { Public declarations }
  end;

var
  FormPagamentoDetalhes: TFormPagamentoDetalhes;

implementation

{$R *.dfm}

uses  EntidadeFactory, DBUtils, ControllerPagamento, Baixar, Relpagamento,
  Parcelar, Mapper, Principal, RelRecibo, UtilsString, RelBalancoContabil;

procedure TFormPagamentoDetalhes.btnMovimentarClick(Sender: TObject);
begin
  inherited;
  BaixarConta;
  RefreshDataSet;
  tabPrincipal.ActivePageIndex := 0;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

procedure TFormPagamentoDetalhes.btnInserirClick(Sender: TObject);
begin
  inherited;
  dateData.Date:= date;
  dateDataVencimento.Date:= date;
  cboSituacao.ItemIndex := 0;
//cboFuncionario.ItemIndex:= cboFuncionario.Items.IndexOfObject(
//TObject(strtoInt(FormPrincipal.CodigoPessoa)));

end;

procedure TFormPagamentoDetalhes.btnPesquisarClick(Sender: TObject);
begin
  MontarCondicao;

  inherited;
  FormatarCamposMoedas;
end;

procedure TFormPagamentoDetalhes.Baixaar1Click(Sender: TObject);
begin
  inherited;
  BaixarConta;
  RefreshDataSet;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

procedure TFormPagamentoDetalhes.BaixarConta;
var
   I:integer;
   Selecionados:TBookmarkList;
   Data: TDatetime;
   Valor: Double;
   AssumirDataVencimento:boolean;

   procedure Baixar;
   begin
      UpdateEntidade(srcPesquisa.DataSet.fieldByName('Codigo').AsString);
      Alterar;
      MapperEntidade.Associar('DataBaixa', nil, datetostr(Data));
      MapperEntidade.Associar('ValorBaixado', nil, ifthen( Valor > 0, floattostr( Valor +
                                                   srcPesquisa.DataSet.FieldByName('ValorBaixado').AsFloat),
                                                   srcEntidade.DataSet.FieldByName('Valor').AsString));
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

procedure TFormPagamentoDetalhes.BitBtn2Click(Sender: TObject);
begin
  inherited;
  application.CreateForm(TFormRelPagamento,FormRelPagamento );
  FormRelPagamento.cdsPagamento.CloneCursor( TClientDataSet(srcPesquisa.DataSet), true );
  FormRelPagamento.QuickRep1.PreviewModal;
  FormRelPagamento.FreeOnRelease;
end;

procedure TFormPagamentoDetalhes.EstornarConta;
begin
  Alterar;
  MapperEntidade.Associar('DataBaixa', nil, '01/01/1889');
  MapperEntidade.Associar('ValorBaixado', nil, '0');
  MapperEntidade.Associar('Situacao', nil, 'Aberto');
  Persistir;
end;

procedure TFormPagamentoDetalhes.FormCreate(Sender: TObject);
begin
  Controller      := TControllerPagamento.Create;
  Entidade        := TEntidadeFactory.Criar(tpPagamento);
  Tabela          := ControllerPagamento.ConsultaTabela;
  Campos          := ControllerPagamento.StrCamposPagamentos;

  dateInicio.date:= StartOfTheWeek(date) ;
  dateFim.date:= date+1;

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
    associar('CodigoCentroCusto', cboCentroCusto);

  //associar('CodigoFuncionario', cboFuncionario);
  //associar('DataBaixa', nil);
  //associar('ValorBaixado', nil);
  end;
  CampoPesquisa  := 'pess."Nome"';
  FillCombobox( tpPessoa, cboCodigoPessoa,'TIPO=''FORNECEDOR'' ','Codigo','Nome','Nome');
  FillCombobox( tpFormaPagamento, cboCodigoFormaPagamento);
  FillCombobox( tpCaixa, cboCodigoCaixa);
  FillCombobox( tpCentroCusto, cboCentroCusto);
  FillCombobox( tpCentroCusto, cboCentroCustoPesquisa);
  FillCombobox( tpPlanoContas, cboCodigoCategoria,' Tipo=''D'' or Tipo is Null ');
  FillCombobox( tpPlanoContas, cboCategoriaPesquisa,' Tipo=''D'' or Tipo is Null ');

  FillCombobox( tpFormaPagamento, cboFormaPgtoPesquisa);
  FillCombobox( tpCaixa, cboCaixaPesquisa);
  FillCombobox( tpPlanoContas, cboCodigoCategoria,' Tipo=''Sa�da'' or Tipo is Null ');

  TFloatField(srcPesquisa.DataSet.FieldByName('Valor')).DisplayFormat:= '0.00;';
  TFloatField(srcPesquisa.DataSet.FieldByName('ValorBaixado')).DisplayFormat:= '0.00;';
end;

procedure TFormPagamentoDetalhes.grdEntidadeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    if ( srcPesquisa.dataset.FieldByName('DataVencimento').asDatetime > date) and
       ( srcPesquisa.dataset.FieldByName('Situacao').asstring = 'Aberto') then
       grdEntidade.Canvas.Font.Color := clBlue
    else
    if ( srcPesquisa.dataset.FieldByName('DataVencimento').asDatetime <= date) and
       ( srcPesquisa.dataset.FieldByName('Situacao').asstring = 'Aberto')   then
       grdEntidade.Canvas.Font.Color := clRed
    else
    if ( srcPesquisa.dataset.FieldByName('Situacao').asstring = 'Baixado')    then
      grdEntidade.Canvas.Font.Color := clGreen
    else
    if ( srcPesquisa.dataset.FieldByName('Situacao').asstring = 'Parcelado')   then
       grdEntidade.Canvas.Font.Color := clgray
    else
    if ( srcPesquisa.dataset.FieldByName('Situacao').asstring = 'Cancelado')   then
       grdEntidade.Canvas.Font.Color := clSilver ;
  grdEntidade.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormPagamentoDetalhes.Parcelar1Click(Sender: TObject);
begin
  inherited;
  if Operacao = '' then
  begin
    ParcelarConta;
    RefreshDataSet;
    Operacao:= '';
    AtualizarBotoes;
  end
  else
    showmessage('Confirme primeiramente as altera��es!');
end;

procedure TFormPagamentoDetalhes.GetContasSelecionadas(var Valor: Double; var Contas: string);
var
  I: Integer;
begin
  if grdEntidade.SelectedRows.Count > 1 then
  begin
     for I := 0 to grdEntidade.SelectedRows.Count - 1 do
     begin
        srcPesquisa.DataSet.GotoBookmark(grdEntidade.SelectedRows[i]);

        if srcPesquisa.DataSet.FieldByName('Situacao').AsString <> 'Aberto' then
        begin
           showmessage('Somente contas com situa��o "Aberto"!');
           abort;
        end;

        Valor := Valor + srcPesquisa.DataSet.FieldByName('Valor').AsFloat;
        Contas := Contas + srcPesquisa.DataSet.FieldByName('Codigo').asstring + ifthen(Contas <> '', ',', '');
     end;
  end
  else
  begin
      Valor  := Valor + srcPesquisa.DataSet.FieldByName('Valor').AsFloat;
      Contas := Contas + srcPesquisa.DataSet.FieldByName('Codigo').asstring + ifthen(Contas <> '', ',', '');
  end;


end;

procedure TFormPagamentoDetalhes.InserirEntrada(Contas: string ;
                                                FormaPagamentoEntrada: string;
                                                ValorEntrada:Double);
var
  BaixaAutomatica: string;
begin
    with MapperEntidade do
    begin
      Associar('NumeroDocumento', nil , Contas);
      Associar('Valor', nil , FormatFloat(',0.00;',ValorEntrada) );
      Associar('DataVencimento', nil , datetostr(date));

      if FormaPagamentoEntrada <> '' then
      begin
         Associar('CodigoFormaPagamento', nil , FormaPagamentoEntrada );

         BaixaAutomatica:= TControllerPagamento(Controller).GetValue(
                           TMapper.GetTableNameClasse( TEntidadeFactory.GetClassInfo(tpFormaPagamento) ) ,
                           'Codigo='+ FormaPagamentoEntrada+
                           ' and BaixaAutomatica = ''S''', 'BaixaAutomatica' );
         if BaixaAutomatica <> '' then
         begin
             associar('Situacao', nil,'Baixado');
             associar('DataBaixa', nil,datetostr(date) );
             associar('DataVencimento', nil, datetostr(date) );
             associar('ValorBaixado', nil, FormatFloat('0.00;',ValorEntrada) );
         end;
      end;
      Associar('Descricao', nil , 'Entrada '+ MapperEntidade.GetValueEntidade('Entrada') );
      TControllerPagamento(Controller).PMapper:= MapperEntidade;
      Controller.Inserir(MapperEntidade.Entidade);
    end;
end;

procedure  TFormPagamentoDetalhes.InserirParcelas(Contas: string;
                                                  FormaPagamentoParcela: string;
                                                  ValorParcela :Double;
                                                  DataVencimento:TDatetime;
                                                  Acada:boolean;
                                                  Dias,
                                                  Parcelas :integer;
                                                  NumeroDocumento : string = '');
var
  I :integer;
begin
  with MapperEntidade do
  begin
      for I := 0 to Parcelas - 1 do
      begin
         Associar('CodigoFormaPagamento', nil , FormaPagamentoParcela );
         Associar('Situacao', nil,'Aberto');
         Associar('NumeroDocumento', nil , ifthen( NumeroDocumento <>'' ,
                                                   NumeroDocumento, Contas) +'/'+
                                                   FormatFloat('00',I+1) );
         Associar('Valor', nil , FormatFloat('0.00;',ValorParcela) );
         Associar('ValorBaixado', nil , '0' );
         Associar('DataBaixa', nil , '01/01/1889');
         Associar('DataVencimento', nil , datetostr(DataVencimento));
         Associar('Parcela', nil , 'SIM');

         Controller.Inserir(MapperEntidade.Entidade);

         {if Acada  then
            DataVencimento:= incDay(DataVencimento,Dias)
         else }
         DataVencimento:= IncMonth(DataVencimento); { strtodate( inttostr( Dia ) +'/'+
                                        inttostr( monthOf() )+'/'+
                                        inttostr( yearOf(DataVencimento)) ); }
      end;
  end;
end;

procedure TFormPagamentoDetalhes.ParcelarConta;
var
   Valor: Double;
   ValorParcela: Double;
   DataVencimento: TDatetime;
   Contas: string;
   Acada:boolean;
   Dias :integer;
   FormaPagamentoEntrada: string;
   FormaPagamentoParcela: string;
   ValorEntrada: Double;
   QtdParcelas:integer;
begin
  //GetContasSelecionadas(Valor,Contas);
  if srcPesquisa.dataset.fieldbyname('NumeroDocumento').asstring = '' then
  begin
    showmessage('Informe o Numero do documento do pagamento !');
    abort;
  end;

  if srcPesquisa.dataset.fieldbyname('Parcela').asstring = 'SIM' then
  begin
    showmessage('Conta n�o pode ser parcelada!');
    abort;
  end;
  try
      srcPesquisa.DataSet.filter := 'Codigo='+ srcPesquisa.DataSet.FieldByName('Codigo').AsString;
      srcPesquisa.DataSet.filtered:= true;

      UpdateEntidade(srcPesquisa.DataSet.FieldByName('Codigo').AsString);
      MapperEntidade.SendDataSetToEntidade;
      MapperEntidade.EntidadeToComponent;

      Valor  := srcEntidade.DataSet.FieldByName('Valor').AsFloat;

      application.Createform(TFormParcelar, FormParcelar);
      FormParcelar.edtValorParcelar.text := floattostr(Valor);
      if FormParcelar.ShowModal = mrOk then
      begin
        ValorParcela     := ( FormParcelar.Valor - FormParcelar.ValorEntrada) /
                              FormParcelar.QtdParcelas ;
        DataVencimento   := FormParcelar.Vencimento;
        Acada            := FormParcelar.Acada;
        Dias             := FormParcelar.Dias;
        FormaPagamentoParcela :=FormParcelar.FormaPgtoParcela;
        FormaPagamentoEntrada :=FormParcelar.FormaPgtoEntrada;
        ValorEntrada     := FormParcelar.ValorEntrada;
        QtdParcelas      := FormParcelar.QtdParcelas;

        Alterar;

        with MapperEntidade do
        begin
          //Inserir Entrada
          if FormParcelar.ValorEntrada > 0 then
          begin
             InserirEntrada(Contas, FormaPagamentoEntrada, ValorEntrada);
          end;
          //Inserir Parcelas
          InserirParcelas( Contas,
                           FormaPagamentoParcela,
                           ValorParcela,
                           DataVencimento,
                           Acada,
                           Dias,
                           QtdParcelas,
                           srcEntidade.dataset.fieldbyname('NumeroDocumento').asstring );

           UpdateEntidade(srcPesquisa.DataSet.FieldByName('Codigo').AsString);
           MapperEntidade.SendDataSetToEntidade;
           MapperEntidade.EntidadeToComponent;
           Alterar;
           Associar('Situacao', nil , 'Parcelado' );
           Controller.Atualizar(Entidade);
        end;
      end;
  finally
    srcPesquisa.DataSet.filtered:= false
  end;
end;

procedure TFormPagamentoDetalhes.Recibo1Click(Sender: TObject);
begin
  inherited;
  application.createform(TFormRelrecibo,FormRelrecibo);
  FormRelrecibo.Nome    := 'GC Velocimentros';
  FormRelrecibo.Valor   := FormatFloat(',0.00;', srcPesquisa.dataset.fieldbyname('ValorBaixado').asFloat);
  FormRelrecibo.Extenso := NumeroParaExtenso( srcPesquisa.dataset.fieldbyname('ValorBaixado').asFloat);
  FormRelrecibo.Servico := srcPesquisa.dataset.fieldbyname('Descricao').asstring;
  FormRelrecibo.NomeAssinatura := srcPesquisa.dataset.fieldbyname('Fornecedor').asstring;

  FormRelrecibo.montar;

  FormRelrecibo.quickrep1.PreviewModal;
  FormRelrecibo.free;
end;

procedure TFormPagamentoDetalhes.RefreshDataSet;
begin
  inherited;
  FormatarCamposMoedas;
end;

procedure TFormPagamentoDetalhes.MontarCondicao;
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
    Condicao := condicao + ' and T1."NumeroDocumento" LIKE ' + quotedstr('%'+edtNumero.Text+'%');

 if cboCentroCustoPesquisa.Text <> '' then
    Condicao := condicao + ' and centro."Descricao" =' + quotedstr(cboCentroCustoPesquisa.Text);

 if cboCategoriaPesquisa.Text <> '' then
    Condicao := condicao + ' and categ."Descricao" =' + quotedstr(cboCategoriaPesquisa.Text);


end;

procedure TFormPagamentoDetalhes.SomaTotais;
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

procedure TFormPagamentoDetalhes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActFornecedores.Execute;
  FillCombobox( tpPessoa, cboCodigoPessoa,'TIPO=''FORNECEDOR'' ','Codigo','Nome','Nome');
end;

procedure TFormPagamentoDetalhes.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActCategorias.Execute;
  FillCombobox( tpPlanoContas, cboCodigoCategoria,' Tipo=''D'' or Tipo is Null ');
end;

procedure TFormPagamentoDetalhes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActCentroCusto.Execute;
  FillCombobox( tpCentroCusto, cboCentroCusto);
end;

procedure TFormPagamentoDetalhes.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EstornarConta;
  RefreshDataSet;
  tabPrincipal.ActivePageIndex := 0;
  Operacao:= '';
  AtualizarBotoes;
  showmessage('Opera��o finalizada!');
end;

procedure TFormPagamentoDetalhes.srcPesquisaStateChange(Sender: TObject);
begin
  inherited;
  SomaTotais;
end;

procedure TFormPagamentoDetalhes.TabSheet2Show(Sender: TObject);
begin
  inherited;
  btnMovimentar.Enabled:= true;
  if MapperEntidade.GetValueEntidade('Situacao') = 'Aberto' then
     btnMovimentar.Caption := 'Baixar'
  else
  if MapperEntidade.GetValueEntidade('Situacao') = 'Baixado' then
     btnMovimentar.Caption := 'Estornar'
  else
  if MapperEntidade.GetValueEntidade('Situacao') = 'Cancelado' then
     btnMovimentar.Caption := 'Ativar'
  else
  if MapperEntidade.GetValueEntidade('Situacao') = 'Parcelado' then
     btnMovimentar.Enabled:= false;
end;

procedure TFormPagamentoDetalhes.FormatarCamposMoedas;
begin
  TFloatField(srcPesquisa.DataSet.FieldByName('Valor')).DisplayFormat := '0.00;';
  TFloatField(srcPesquisa.DataSet.FieldByName('ValorBaixado')).DisplayFormat := '0.00;';
end;

end.
