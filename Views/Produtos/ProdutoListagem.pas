unit ProdutoListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateListagemBase, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormProdutoListagem = class(TTemplateFormListagemBase)
    lbdescricao: TLabel;
    SpeedButton1: TSpeedButton;
    edtdescricao: TEdit;
    SpeedButton3: TSpeedButton;
    procedure Grid1DblClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutoListagem: TFormProdutoListagem;

implementation

{$R *.dfm}

uses GenericDAO, Produtos;

procedure TFormProdutoListagem.btnSelecionarClick(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

procedure TFormProdutoListagem.Grid1DblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
  inherited;
end;

procedure TFormProdutoListagem.SpeedButton1Click(Sender: TObject);
begin
  ModalResult:= mrNone;
  close;
end;

procedure TFormProdutoListagem.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if edtdescricao.Text  <> '' then
  begin
    srcEntidade.DataSet.Close;
    srcEntidade.DataSet:=TGenericDAO.GetAll<TProdutos>( TProdutos.Create ,
                         'Descricao LIKE ' + quotedstr('%'+ edtdescricao.Text +'%')+' and Tipo=''MATERIAL'' ',
                         'Codigo, Descricao, Referencia, CodigoBarras');
  end;
end;

end.
