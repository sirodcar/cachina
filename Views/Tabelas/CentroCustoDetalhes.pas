unit CentroCustoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Menus;

type
  TFormCentroCustoDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtDescricao: TEdit;
    lbDescricao: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCentroCustoDetalhes: TFormCentroCustoDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormCentroCustoDetalhes.FormCreate(Sender: TObject);
begin
  Controller      := TControllerTabelas.Create;
  Entidade        := TEntidadeFactory.Criar(tpCentroCusto);
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('Descricao', edtDescricao);
  end;
end;

end.
