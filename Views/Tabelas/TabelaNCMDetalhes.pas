unit TabelaNCMDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid,
  Vcl.StdCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TFormTabelaNCMDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtCodigoNCM: TEdit;
    memoDescricao: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabelaNCMDetalhes: TFormTabelaNCMDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerTabelas;

procedure TFormTabelaNCMDetalhes.FormCreate(Sender: TObject);
begin
  Controller      := TControllerTabelas.Create;
  Entidade        := TEntidadeFactory.Criar(tpTabelaNCM);
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('Descricao', memoDescricao);
    associar('CodigoNCM', edtCodigoNCM);
  end;
end;

end.
