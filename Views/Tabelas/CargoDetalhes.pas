unit CargoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Menus;

type
  TFormCargoDetalhes = class(TTemplateFormComTabGridDetalhes)
    Label1: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    chkProducao: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCargoDetalhes: TFormCargoDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory, Mapper;

procedure TFormCargoDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpCargo);
  inherited;
  with MapperEntidade do
  begin
    Associar('Codigo',nil);
    Associar('Descricao', edtDescricao);
    Associar('TemProducao', chkProducao);
  end;
end;

end.
