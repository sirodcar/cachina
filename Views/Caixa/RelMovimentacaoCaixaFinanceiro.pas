unit RelMovimentacaoCaixaFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, QRCtrls,
  QuickRpt, Vcl.ExtCtrls, QRPDFFilt, QRExport;

type
  TFormRelMovimentacaoCaixaFinanceiro = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    cdsMovimentacaoCaixaFinanceiro: TClientDataSet;
    cdsMovimentacaoCaixaFinanceiroData: TDateTimeField;
    cdsMovimentacaoCaixaFinanceiroDescricao: TStringField;
    cdsMovimentacaoCaixaFinanceiroSaldo: TFloatField;
    cdsMovimentacaoCaixaFinanceiroTipo: TStringField;
    cdsMovimentacaoCaixaFinanceiroValorDebito: TFloatField;
    cdsMovimentacaoCaixaFinanceiroValorCredito: TFloatField;
    cdsMovimentacaoCaixaFinanceiroNumeroDocumento: TStringField;
    cdsMovimentacaoCaixaFinanceiroCodificacao: TStringField;
    cdsMovimentacaoCaixaFinanceiroPlanoConta: TStringField;
    cdsMovimentacaoCaixaFinanceiroCaixa: TStringField;
    imgLogo: TQRImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DataInicial: TDatetime;
    DataFinal: TDatetime;
    CodigoCaixa: string;
    procedure Consultar;
  end;

var
  FormRelMovimentacaoCaixaFinanceiro: TFormRelMovimentacaoCaixaFinanceiro;

implementation

{$R *.dfm}

uses ControllerTabelas, FiltroFluxoCaixa;

procedure TFormRelMovimentacaoCaixaFinanceiro.Consultar;
var
  controller: TControllerTabelas;
  DataSet, DataSetSaldo : TDataSet;
  Periodo1,Periodo2, Caixa,Caixa2, Campos: string;
  Valor, Saldo: double;
  Campos2: string;
begin
  Controller := TControllerTabelas.Create;

  Periodo1 := 'and caix."DataHora">=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + ' and ' +
                 'caix."DataHora"<=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', DataFinal));

  Periodo2 := 'and caix2."DataHora">=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + ' and ' +
                 'caix2."DataHora"<=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', DataFinal));

  Saldo := 0;

  if CodigoCaixa <> '' then
  begin
    Caixa := ' and caix."CodigoCaixa"=' + CodigoCaixa;
    Caixa2 := ' and caix2."CodigoCaixa"=' + CodigoCaixa;
  end;

  Campos := ' caix."Codigo", caix."DataHora", caix."Observacao", caix."Tipo", caix."Valor",'+
  ' "NumeroDocumento", cat."Descricao" as PlanoConta, cat."Codificacao", cx."Descricao" as Caixa  ';

  Campos2 := ' caix2."Codigo", caix2."DataHora", caix2."Observacao", caix2."Tipo", caix2.Valor,'+
  ' "NumeroDocumento", cat."Descricao" as PlanoConta, cat."Codificacao", cx."Descricao" as Caixa ';

  DataSet := Controller.GetSelect(
             ' select '+ Campos +' from ' +
             ' CaixaMovimentacao caix '+
             ' inner join Caixa cx on cx."Codigo" = caix."CodigoCaixa"'+
             ' left join Recebimento rec on rec."Codigo" = caix."CodigoConta" ' +
             ' left join Categorias cat on cat."Codigo" = caix."CodigoCategoria"'+
             ' where ' +
             ' caix."Tipo" = ''CR�DITO'' ' +  Periodo1 + Caixa +
             ' union all ' +
             ' select '+ Campos2 +' from ' +
             ' CaixaMovimentacao caix2 '+
             ' inner join Caixa cx on cx."Codigo" = caix2."CodigoCaixa"'+
             ' left join Pagamento pag on pag."Codigo" = caix2."CodigoConta" ' +
             ' left join Categorias cat on cat."Codigo" = caix2."CodigoCategoria"'+
             ' where ' +
             ' caix2."Tipo"= ''D�BITO'' ' +  Periodo2 + Caixa2 +
             ' ORDER BY "DataHora", "Codigo"');

  if CodigoCaixa <> '' then
  begin
    DataSetSaldo:= Controller.GetSelect('Select ISNULL( ( Select ISNULL(SUM(ISNULL(caix."Valor",0)),0) from ' +
                   ' CaixaMovimentacao caix '+
                   ' inner join Caixa cx on cx."Codigo" = caix."CodigoCaixa"'+
                   ' left join Categorias cat on cat."Codigo" = caix."CodigoCategoria"'+
                   ' where ' +
                   ' caix."Tipo" = ''CR�DITO'' and caix."DataHora" < ' +
                   quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + Caixa +' )'+
                   ' - ' +
                   ' ( Select ISNULL(SUM(ISNULL(caix2."Valor",0)),0) from ' +
                   ' CaixaMovimentacao caix2 '+
                   ' inner join Caixa cx on cx."Codigo" = caix2."CodigoCaixa"'+
                   ' left join Categorias cat on cat."Codigo" = caix2."CodigoCategoria"'+
                   ' where ' +
                   ' caix2."Tipo" = ''D�BITO'' and caix2."DataHora" < ' +
                   quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + Caixa2 +' )'+
                   ' ,0 ) as Saldo ');

    Saldo := DataSetSaldo.FieldByName('Saldo').AsFloat;

    cdsMovimentacaoCaixaFinanceiro.Append;
    cdsMovimentacaoCaixaFinanceiroData.AsDateTime := DataSet.FieldByName('DataHora').AsFloat;
    cdsMovimentacaoCaixaFinanceiroDescricao.AsString := 'Saldo Inicial';
    cdsMovimentacaoCaixaFinanceiroTipo.asstring := '';
    cdsMovimentacaoCaixaFinanceiroPlanoConta.asstring := '';
    cdsMovimentacaoCaixaFinanceiroCodificacao.asstring := '';
    cdsMovimentacaoCaixaFinanceiroCaixa.asstring := DataSet.FieldByName('Caixa').AsString;
    //cdsMovimentacaoCaixaFinanceiroValorCredito.AsFloat := Saldo;
    cdsMovimentacaoCaixaFinanceiroSaldo.AsFloat  := Saldo;
    cdsMovimentacaoCaixaFinanceiro.Post;

  end;

  DataSet.First;

  while not DataSet.eof do
  begin
    cdsMovimentacaoCaixaFinanceiro.Append;

    Valor := DataSet.FieldByName('Valor').AsFloat;

    if DataSet.FieldByName('Tipo').AsString = 'CR�DITO' then
    begin
      cdsMovimentacaoCaixaFinanceiroValorCredito.AsFloat := Valor;
      Saldo := Saldo + Valor;
      cdsMovimentacaoCaixaFinanceiroSaldo.AsFloat := Saldo;
    end
    else
    if DataSet.FieldByName('Tipo').AsString = 'D�BITO' then
    begin
      cdsMovimentacaoCaixaFinanceiroValorDebito.AsFloat := Valor;
      Saldo := Saldo - Valor;
      cdsMovimentacaoCaixaFinanceiroSaldo.AsFloat := Saldo;
    end;

    cdsMovimentacaoCaixaFinanceiroData.AsDateTime := DataSet.FieldByName('DataHora').AsFloat;
    cdsMovimentacaoCaixaFinanceiroDescricao.AsString := DataSet.FieldByName('Observacao').AsString;
    cdsMovimentacaoCaixaFinanceiroTipo.asstring := DataSet.FieldByName('Tipo').AsString;
    cdsMovimentacaoCaixaFinanceiroPlanoConta.asstring := DataSet.FieldByName('PlanoConta').AsString;
    cdsMovimentacaoCaixaFinanceiroCodificacao.asstring := DataSet.FieldByName('Codificacao').AsString;
    cdsMovimentacaoCaixaFinanceiroCaixa.asstring := DataSet.FieldByName('Caixa').AsString;
    cdsMovimentacaoCaixaFinanceiro.Post;
    DataSet.Next;

  end;

end;

procedure TFormRelMovimentacaoCaixaFinanceiro.FormCreate(Sender: TObject);
begin
  if FileExists(extractfilepath(application.ExeName)+'logo.jpg') then  
  imgLogo.picture.LoadFromFile(extractfilepath(application.ExeName)+'logo.jpg');
end;

end.
