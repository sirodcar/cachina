unit ModelosDetalhes;

interface

uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateDetalhesComTabGrid, System.Rtti,   Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Menus;

type
  TFormModelosDetalhes = class(TTemplateFormComTabGridDetalhes)
    lbDescriacao: TLabel;
    edtDescricao: TEdit;
    cboMarca: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModelosDetalhes: TFormModelosDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas,  EntidadeFactory, DBUtils;

procedure TFormModelosDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpModeloVeiculo);
  inherited;
  with MapperEntidade do
  begin
    Associar('Codigo', nil);
    Associar('Descricao', edtDescricao);
    Associar('CodigoMarca', cboMarca);
  end;
  FillCombobox(tpMarcaVeiculo, cboMarca);
end;

end.
