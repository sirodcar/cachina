unit RelOrcamento2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QuickRpt, Data.DB,
  Datasnap.DBClient, QRCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormRelOrcamento2 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    cdsOrcamento: TClientDataSet;        //
    cdsItens: TClientDataSet;
    cdsRecebimento: TClientDataSet;
    QRCompositeReport1: TQRCompositeReport;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    srcOrcamento: TDataSource;
    SummaryBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText19: TQRDBText;
    procedure QRCompositeReport1AddReports(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelOrcamento2: TFormRelOrcamento2;

implementation

{$R *.dfm}

procedure TFormRelOrcamento2.QRCompositeReport1AddReports(Sender: TObject);
begin
   QRCompositeReport1.Reports.Add(QuickRep1);
  //QRCompositeReport1.Reports.Add(QuickRep1);
end;

end.

//
