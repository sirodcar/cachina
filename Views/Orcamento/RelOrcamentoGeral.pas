unit RelOrcamentoGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, Data.DB, Datasnap.DBClient,
  QuickRpt, QRPDFFilt, QRExport, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

  //
type
  TFormRelOrcamentoGeral = class(TForm)
    QRExcelFilter1: TQRExcelFilter;
    DataSource1: TDataSource;
    QuickRep2: TQuickRep;
    TitleBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel6: TQRLabel;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRSubDetail3: TQRSubDetail;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel8: TQRLabel;
    cdsOrcamento: TClientDataSet;
    cdsRecebimento: TClientDataSet;
    srcOrcamento: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelOrcamentoGeral: TFormRelOrcamentoGeral;

implementation

{$R *.dfm}

procedure TFormRelOrcamentoGeral.FormCreate(Sender: TObject);
begin
//  imgLogo.picture.LoadFromFile(extractfilepath(application.ExeName)+'logo.jpg');
end;

procedure TFormRelOrcamentoGeral.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  cdsRecebimento.filtered:= false;
  cdsRecebimento.filter := 'CodigoOrcamento='+cdsOrcamento.fieldbyname('Codigo').asstring;
  cdsRecebimento.filtered:= true;
end;

end.
