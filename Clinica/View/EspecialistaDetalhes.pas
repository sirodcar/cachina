unit EspecialistaDetalhes;

interface

uses TemplateDetalhesComTabGrid, Vcl.Controls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, System.Classes, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TFormEspecialistaDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescricao: TLabel;
    lbNumero: TLabel;
    edtNumero: TEdit;
    edtDescricao: TEdit;
    Label1: TLabel;
    edtNumeroOperadora: TEdit;
    cboConselho: TCombobox;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEspecialistaDetalhes: TFormEspecialistaDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormEspecialistaDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllertabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpEspecialista);
  inherited;
  CampoCodigo:= '"Codigo"';
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('Descricao', edtDescricao);
    associar('Numero', edtNumero);
    associar('NumeroOperadora', edtNumeroOperadora);
    associar('Conselho', cboConselho);
  end;
end;

end.
