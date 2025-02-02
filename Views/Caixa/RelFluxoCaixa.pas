unit RelFluxoCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, QRCtrls,
  QuickRpt, Vcl.ExtCtrls, QRPDFFilt, QRExport;

type
  TFormRelFluxoCaixa = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Codificacao: TStringField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Janeiro: TFloatField;
    ClientDataSet1Fevereiro: TFloatField;
    ClientDataSet1Marco: TFloatField;
    ClientDataSet1Abril: TFloatField;
    ClientDataSet1Maio: TFloatField;
    ClientDataSet1Junho: TFloatField;
    ClientDataSet1Julho: TFloatField;
    ClientDataSet1Agosto: TFloatField;
    ClientDataSet1Setembro: TFloatField;
    ClientDataSet1Outubro: TFloatField;
    ClientDataSet1Novembro: TFloatField;
    ClientDataSet1JaneiroConta: TFloatField;
    ClientDataSet1FevereiroConta: TFloatField;
    ClientDataSet1MarcoConta: TFloatField;
    ClientDataSet1AbrilConta: TFloatField;
    ClientDataSet1MaioConta: TFloatField;
    ClientDataSet1JunhoConta: TFloatField;
    ClientDataSet1JulhoConta: TFloatField;
    ClientDataSet1AgostoConta: TFloatField;
    ClientDataSet1SetembroConta: TFloatField;
    ClientDataSet1OutubroConta: TFloatField;
    ClientDataSet1NovembroConta: TFloatField;
    ClientDataSet1DezembroConta: TFloatField;
    ClientDataSet1Dezembro: TFloatField;
    QRLabel14: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
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
  FormRelFluxoCaixa: TFormRelFluxoCaixa;

implementation

{$R *.dfm}

uses ControllerTabelas, FiltroFluxoCaixa;

procedure TFormRelFluxoCaixa.Consultar;
var
  controller: TControllerTabelas;
  DataSet: TDataSet;
  Periodo1,Periodo2, Caixa: string;
begin

  Controller := TControllerTabelas.Create;

  Periodo1 := ' "DataHora">=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + ' and ' +
              ' "DataHora"<=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', DataFinal));

  Periodo2 := ' "DataVencimento">=' + quotedstr(formatdatetime('DD/MM/YYYY 00:00:00', DataInicial)) + ' and ' +
              ' "DataVencimento"<=' + quotedstr(formatdatetime('DD/MM/YYYY 23:59:59', DataFinal));
  if CodigoCaixa <> '' then
     Caixa := ' and "CodigoCaixa"=' + CodigoCaixa;


  DataSet := Controller.GetSelect( ' select '+
  ' cat.Codificacao, cat.Descricao , '+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 1 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Janeiro,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 2 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Fevereiro,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 3 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Marco,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 4 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Abril,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 5 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Maio,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 6 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Junho,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 7 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Julho, '+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 8 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Agosto,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 9 and  year("DataHora")  = year(getdate()) and "CodigoCategoria" = cat."Codigo") as Setembro,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 10 and year("DataHora") =  year(getdate()) and "CodigoCategoria" = cat."Codigo") as Outubro,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 11 and year("DataHora") =  year(getdate()) and "CodigoCategoria" = cat."Codigo") as Novembro,'+
  ' (select SUM("Valor") From CaixaMovimentacao where MONTH("DataHora")= 12 and year("DataHora") =  year(getdate()) and "CodigoCategoria" = cat."Codigo") as Dezembro,'+
  '  ( case Tipo '+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 1 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo" '+ Caixa +')'+
  '  else'+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 1 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as JaneiroConta,'+
  '( case Tipo'+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 2 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 2 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as FevereiroConta,'+
  '( case Tipo'+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 3 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else'+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 3 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as MarcoConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 4 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 4 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as AbrilConta, '+
  '( case Tipo'+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 5 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 5 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as MaioConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 6 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 6 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as JunhoConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 7 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 7 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as JulhoConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 8 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 8 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as AgostoConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 9 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 9 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as SetembroConta, '+
  '( case Tipo '+
  '  when ''Entrada'' then '+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 10 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else  '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 10 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as OutubroConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 11 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else '+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 11 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as NovembroConta,'+
  '( case Tipo '+
  '  when ''Entrada'' then'+
  '    (select SUM("Valor") From Recebimento where MONTH("DataVencimento")= 12 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  '  else'+
  '    (Select SUM("Valor") From Pagamento where MONTH("DataVencimento")= 12 and year("DataVencimento")  = year(getdate()) and "CodigoCategoria" = cat."Codigo"'+ Caixa +')'+
  ' end ) as DezembroConta '+
  ' from'+
  ' Categorias cat'+
  ' where'+
  ' "Codigo" in (Select "CodigoCategoria" from CaixaMovimentacao where '+ Periodo1 + Caixa +') or '+
  ' "Codigo" in (Select "CodigoCategoria" from Pagamento where '+ Periodo2 + Caixa +') or '+
  ' "Codigo" in (Select "CodigoCategoria" from Recebimento where '+ Periodo2 + Caixa +')' );

  ClientDataSet1.CloneCursor( TClientDataSet(DataSet) , true);

end;

procedure TFormRelFluxoCaixa.FormCreate(Sender: TObject);
begin
   imgLogo.picture.LoadFromFile(extractfilepath(application.ExeName)+'logo.jpg');
end;

end.

