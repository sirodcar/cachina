unit SubGrupoProdutosDetalhes;

interface

uses
    System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateDetalhesComTabGrid, System.Rtti,   Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls,  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, Vcl.Menus;

type
  TFormSubGrupoProdutosDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtDescricao: TEdit;
    cboCodigoGrupo: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSubGrupoProdutosDetalhes: TFormSubGrupoProdutosDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory, DBUtils;

procedure TFormSubGrupoProdutosDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpSubGrupo);
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('Descricao', edtDescricao);
    associar('CodigoGrupo',  cboCodigoGrupo);
  end;

  FillCombobox( tpGrupo, cboCodigoGrupo );

end;

end.
