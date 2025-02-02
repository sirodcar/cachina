unit SequenciaNotaFiscal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Vcl.Menus,
  Data.DB, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TFormSequenciaNotaFiscal = class(TTemplateFormComTabGridDetalhes)
    Label2: TLabel;
    Sequencia: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Serie: TEdit;
    Especie: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSequenciaNotaFiscal: TFormSequenciaNotaFiscal;

implementation


uses ControllerTabelas, EntidadeFactory, Mapper;

{$R *.dfm}

procedure TFormSequenciaNotaFiscal.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpSequenciaNF);
  inherited;
  MapearComponentes;
end;

end.
