unit RelRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    lbTexto: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    lbTexto2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbNomeAssinatura: TQRLabel;
  private
    FValor: string;
    Fservico: string;
    FExtenso: string;
    FNome: string;
    FNomeAssinatura: string;
    procedure SetExtenso(const Value: string);
    procedure SetNome(const Value: string);
    procedure Setservico(const Value: string);
    procedure SetValor(const Value: string);
    procedure SetNomeAssinatura(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Nome: string read FNome write SetNome;
    property Valor: string read FValor write SetValor;
    property Extenso: string read FExtenso write SetExtenso;
    property servico: string read Fservico write Setservico;
    property NomeAssinatura: string read FNomeAssinatura write SetNomeAssinatura;
    procedure Montar;
  end;

var
  FormRelRecibo: TFormRelRecibo;

implementation

{$R *.dfm}

procedure TFormRelRecibo.SetExtenso(const Value: string);
begin
  FExtenso := Value;
end;

procedure TFormRelRecibo.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TFormRelRecibo.SetNomeAssinatura(const Value: string);
begin
  FNomeAssinatura := Value;
end;

procedure TFormRelRecibo.Setservico(const Value: string);
begin
  Fservico := Value;
end;

procedure TFormRelRecibo.SetValor(const Value: string);
begin
  FValor := Value;
end;

procedure TFormRelRecibo.Montar;
var
  texto: string;
begin
  texto := lbTexto.caption;

  texto := stringreplace(texto, '#Nome', FNome, [rfReplaceAll]);
  texto := stringreplace(texto, '#Valor', FValor, [rfReplaceAll]);
  texto := stringreplace(texto, '#Extenso', FExtenso, [rfReplaceAll]);
  texto := stringreplace(texto, '#Servico', FServico, [rfReplaceAll]);

  lbTexto.caption  := texto;
  lbTexto2.caption := texto;

  lbNomeAssinatura.caption :=  FNomeAssinatura;
end;

end.
