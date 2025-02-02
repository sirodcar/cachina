unit MarcasDetalhes;

interface

uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateDetalhesComTabGrid, System.Rtti,  Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB;

type
  TFormMarcasDetalhes = class(TTemplateFormComTabGridDetalhes)
    Label1: TLabel;
    edtDescricao: TEdit;
    procedure FormCreate(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMarcasDetalhes: TFormMarcasDetalhes;

implementation

{$R *.dfm}

uses  ControllerTabelas, EntidadeFactory;

procedure TFormMarcasDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpMarcaVeiculo);
  inherited;
  with MapperEntidade do
  begin
    Associar('Codigo', nil);
    Associar('Descricao', edtDescricao);
  end;
end;

end.
