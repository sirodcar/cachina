unit DistribuicaoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TFormDistribuicaoDetalhes = class(TTemplateFormComTabGridDetalhes)
    Label1: TLabel;
    edtDescricao: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDistribuicaoDetalhes: TFormDistribuicaoDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerTabelas;

procedure TFormDistribuicaoDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerTabelas.create;
  Entidade   := TEntidadefactory.criar(tpDistribuicao);
  CampoPesquisa := 'T1."Descricao"';
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo',nil);
    Associar('CodigoFilial', nil);
    Associar('Descricao', edtDescricao);
  end;

end;

end.
