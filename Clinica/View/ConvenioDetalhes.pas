unit ConvenioDetalhes;

interface

uses TemplateDetalhesComTabGrid, Vcl.Controls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, System.Classes, Vcl.ExtCtrls, Vcl.Buttons;


type
  TFormConvenioDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtDescricao: TEdit;
    lbDescricao: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConvenioDetalhes: TFormConvenioDetalhes;

implementation

{$R *.dfm}

uses ControllerTabelas, EntidadeFactory;

procedure TFormConvenioDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllertabelas.Create;
  Entidade   := TEntidadeFactory.Criar(tpConvenio);
  inherited;
  CampoCodigo:= 'Codigo';
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('Descricao', edtDescricao);
  end;
end;

end.
