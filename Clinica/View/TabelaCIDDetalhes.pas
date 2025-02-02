unit TabelaCIDDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFormTabelaCIDDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescricao: TLabel;
    edtDescricao: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabelaCIDDetalhes: TFormTabelaCIDDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerTabelas;

procedure TFormTabelaCIDDetalhes.FormCreate(Sender: TObject);
begin
  Controller:= TControllerTabelas.create;
  Entidade := TEntidadefactory.Criar(tpTabelaCID);
  inherited;
  with MapperEntidade do
  begin
  associar('Codigo', nil);
  associar('Descricao', edtDescricao);
  //associar('Codificacao', edtCodificacao);
  end;
  CampoPesquisa:= '"Descricao"';
end;

end.
