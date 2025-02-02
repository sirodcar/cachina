unit RelCurvaABC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBClient, Vcl.ExtCtrls, QuickRpt,
  Data.DB, QRCtrls, qrpctrls, QRPDFFilt, QRNewXLSXFilt, DateUtils;

type
  TFormRelCurvaABC = class(TForm)
    cdsCurvaABC: TClientDataSet;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    cdsCurvaABCTemp: TClientDataSet;
    cdsCurvaABCTempDescricao: TStringField;
    cdsCurvaABCTempQuantidade: TFloatField;
    cdsCurvaABCTempTotal: TFloatField;
    cdsCurvaABCTempPercentual: TFloatField;
    cdsCurvaABCTempAcumulado: TFloatField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    lbPercentual: TQRLabel;
    lbAcumulado: TQRLabel;
    QRXLSXFilter1: TQRXLSXFilter;
    cdsCurvaABCTempCodigo: TIntegerField;
    SummaryBand1: TQRBand;
    lbtotal: TQRLabel;
    lbABC: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbPercentual2: TQRLabel;
    lbAcumulado2: TQRLabel;
    cdsCurvaABCTempPercentual2: TFloatField;
    cdsCurvaABCTempAcumulado2: TFloatField;
    lbABC2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRSysData2: TQRSysData;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cdsCurvaABCTempAfterInsert(DataSet: TDataSet);
    procedure QuickRep1Export(Sender: TCustomQuickRep;
      var ExportHandled: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    FTipo: string;
    totalValor ,
    totalQuantidade ,
    acumuladoValor ,
    acumuladoQuantidade :Double;


    procedure SetTipo(const Value: string);
  public
    { Public declarations }
    property Tipo: string read FTipo write SetTipo;
    procedure GerarCurvaABC(Tipo : string = '');
  end;

var
  FormRelCurvaABC: TFormRelCurvaABC;

implementation

{$R *.dfm}

uses ControllerProdutos, FiltroPeriodo;

procedure TFormRelCurvaABC.cdsCurvaABCTempAfterInsert(DataSet: TDataSet);
begin
   cdsCurvaABCTempQuantidade.AsFloat := 0;
   cdsCurvaABCTempTotal.AsFloat      := 0;
end;

procedure TFormRelCurvaABC.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lbPercentual.Caption := Formatfloat( ',0.000;',  cdsCurvaABCTempTotal.AsFloat *  100 / totalValor);
   lbPercentual2.Caption := Formatfloat( ',0.000;',  1 / cdsCurvaABCtemp.RecordCount * 100 );

   acumuladoValor := acumuladoValor +  ( cdsCurvaABCtempTotal.AsFloat *  100 / totalValor);
   acumuladoQuantidade := acumuladoQuantidade + (1 / cdsCurvaABCtemp.RecordCount * 100); //( cdsCurvaABCtempquantidade.AsFloat * 100 / totalQuantidade);

   lbAcumulado2.Caption  := Formatfloat( ',0.000;', acumuladoQuantidade );
   lbAcumulado.Caption  := Formatfloat( ',0.000;', acumuladoValor );

   if acumuladoQuantidade < 20 then
      lbABC.Caption:= 'A'
   else
   if acumuladoQuantidade > 50 then
      lbABC.Caption:= 'C'
   else
      lbABC.Caption:= 'B';

   if (acumuladoValor < 80)  then
      lbABC2.Caption:= 'A'
   else
   if (acumuladoValor > 95) then
      lbABC2.Caption:= 'C'
   else
      lbABC2.Caption:= 'B';


end;

procedure TFormRelCurvaABC.SetTipo(const Value: string);
begin
  FTipo := Value;
end;

procedure TFormRelCurvaABC.GerarCurvaABC(Tipo : string = '');
var
  Controller:TControllerProdutos;
  Form: TFormFiltroPeriodo;
  totaltemp: double;
begin
  Controller:= TControllerProdutos.create;

  Form := TFormFiltroPeriodo.Show(StartOfTheYear(date) , date);
  if Form <> nil then
  begin
     cdsCurvaABC.CloneCursor( TClientDataSet( Controller.GetCurvaABC(
     ' Data >= '''+formatdatetime('DD.MM.YYYY',Form.DateTimePicker1.DateTime)    + ''''+
     ' and Data <= '''+formatdatetime('DD.MM.YYYY',Form.DateTimePicker2.DateTime)+
     ''' And Tipo ='+ quotedstr('MATERIAL') ) ),true);
     Form.free;
  end;

  totalValor          := 0;
  totalQuantidade     := 0;
  acumuladoValor      := 0;
  acumuladoQuantidade := 0;

  cdsCurvaABC.IndexFieldNames := 'Descricao';

  cdsCurvaABC.First;
  while not cdsCurvaABC.Eof do
  begin
       totalValor := totalValor + cdsCurvaABC.FieldByName('Total').AsFloat;
       totalQuantidade := totalQuantidade + cdsCurvaABC.FieldByName('quantidade').AsFloat;
    cdsCurvaABC.Next;
  end;

  Controller.free;

  cdsCurvaABCTemp.CreateDataSet;

  cdsCurvaABCTemp.IndexDefs.Add( 'IndexPercentual', 'Percentual', [ixDescending]);

  cdsCurvaABCTemp.Open;

  cdsCurvaABC.First;


  totaltemp := 0;
  while not cdsCurvaABC.Eof do
  begin
     if cdsCurvaABCTemp.Locate('Codigo', cdsCurvaABC.FieldByName('codigo').AsString,[] ) then
        cdsCurvaABCTemp.Edit
     else
        cdsCurvaABCTemp.Append;
     cdsCurvaABCTempCodigo.AsString := cdsCurvaABC.FieldByName('codigo').AsString;
     cdsCurvaABCTempDescricao.AsString := cdsCurvaABC.FieldByName('Descricao').AsString;
     cdsCurvaABCTempQuantidade.AsFloat := cdsCurvaABCTempQuantidade.AsFloat + cdsCurvaABC.FieldByName('quantidade').AsFloat;
     cdsCurvaABCTempTotal.AsFloat      := cdsCurvaABCTempTotal.AsFloat      + cdsCurvaABC.FieldByName('Total').AsFloat;

     totaltemp := totaltemp + cdsCurvaABC.FieldByName('Total').AsFloat;

     cdsCurvaABCTemp.Post;
     cdsCurvaABC.Next;
  end;

  cdsCurvaABCTemp.first;
  while not  cdsCurvaABCTemp.eof do
  begin
     cdsCurvaABCTemp.Edit;
     cdsCurvaABCTempPercentual.AsFloat := (cdsCurvaABCTempTotal.AsFloat * 100 / totalValor);
     cdsCurvaABCTempPercentual2.AsFloat := (cdsCurvaABCtempquantidade.AsFloat  * 100 / totalQuantidade);
     cdsCurvaABCTemp.Post;
     cdsCurvaABCTemp.Next;
  end;

  lbtotal.Caption :=  formatfloat(',0.00;', totaltemp );

  cdsCurvaABCTemp.IndexName := 'IndexPercentual';

  cdsCurvaABCTemp.First;
end;

procedure TFormRelCurvaABC.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      AcumuladoValor :=0;
      AcumuladoQuantidade:=0;
end;

procedure TFormRelCurvaABC.QuickRep1Export(Sender: TCustomQuickRep;
  var ExportHandled: Boolean);
begin
  AcumuladoValor :=0;
  AcumuladoQuantidade:=0;
end;

end.
