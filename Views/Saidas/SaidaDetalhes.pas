unit SaidaDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesBase, Vcl.StdCtrls,
  Data.DB, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, strutils,
  Vcl.DBGrids, GenericEntidade, EntidadeFactory, Mapper,
  ItensSaida,
  ControllerProdutos;

type
  TFormSaidaDetalhes = class(TTemplateFormBaseDetalhes)
    dateData: TDateTimePicker;
    cboCodigoFuncionario: TDBLookupComboBox;
    grdItens: TDBGrid;
    gpbItens: TGroupBox;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    edtCodigoItem: TEdit;
    edtQuantidade: TEdit;
    BitBtn1: TSpeedButton;
    CornerButton1: TSpeedButton;
    edtOrdem: TEdit;
    cboProduto: TDBLookupComboBox;
    srcItens: TDataSource;
    srcfuncionario: TDataSource;
    edtCodigo: TEdit;
    Label1: TLabel;
    srcProdutos: TDataSource;
    Label2: TLabel;
    cboEstoque: TDBLookupComboBox;
    srcEstoque: TDataSource;
    CornerButton2: TSpeedButton;
    edtAplicacao: TEdit;
    Label3: TLabel;
    Label12: TLabel;
    edtValor: TEdit;
    Label5: TLabel;
    cboUnidadeMedida: TComboBox;
    edtFator: TEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure cboProdutoCloseUp(Sender: TObject);
    procedure grdItensCellClick(Column: TColumn);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure CornerButton2Click(Sender: TObject);
    procedure edtCodigoItemChange(Sender: TObject);
  private
    { Private declarations }
    ItemSaida            : TGenericEntidade;
    MapperItemSaida      : TMapper;
    ControllerProdutos   : TControllerProdutos;
    procedure MapearCamposItemSaida;
    procedure PersistirItemSaida;
    procedure RefreshDataSetItemSaida(Codigo: string ='');
    procedure GetSaida(CodigoSaida: string);
    procedure AjustaTamanhoGrid;
    procedure CarregarProdutos;
    procedure GetItemSaida;
    procedure CarregarEstoques;
    procedure SalvarItens(CodigoSaida: string);
  public
    { Public declarations }
  end;

var
  FormSaidaDetalhes: TFormSaidaDetalhes;

implementation

{$R *.dfm}

uses ControllerSaida,  ControllerFuncionarios, DBUtils, Principal;

procedure TFormSaidaDetalhes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PersistirItemSaida;
  edtOrdem.Text        := '';
  edtCodigoItem.Text   := '';
  cboProduto.KeyValue    := Null;
  edtQuantidade.Text   := '1';
  edtValor.Text        := '0';
//edtDescontoItem.Text := '0';
end;

procedure TFormSaidaDetalhes.PersistirItemSaida;
var
  DescricaoProduto: string;
  Update: Boolean;
  Count: Integer;
begin
  with MapperItemSaida do
  begin
    if edtOrdem.text = '' then
    begin
      Entidade := TEntidadeFactory.Criar(tpItemSaida);
      DataSet := srcItens.DataSet;
    end;

    ComponentToEntidade;

    if edtOrdem.text = '' then
    begin
      srcItens.DataSet.append;
      Count := srcItens.DataSet.RecordCount + 1;
      DescricaoProduto := cboProduto.text;
      SendValueToFieldEntidade('Ordem', inttostr(Count));
      SendValueToFieldEntidade('Codigo', inttostr(Count));
      SendValueToFieldDataSet('Descricao', DescricaoProduto);
      SendEntidadeToDataSet;
      srcItens.DataSet.Post;
    end
    else
    begin
      srcItens.DataSet.edit;
      DescricaoProduto := cboProduto.text;
      SendValueToFieldDataSet('Descricao', DescricaoProduto);
      SendEntidadeToDataSet;
      srcItens.DataSet.Post;
    end;

    if (Operacao = 'Update') and (srcEntidade.DataSet.state in [dsedit]) then
    begin
      if srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
      begin
        Controller.Atualizar(Entidade);
        srcItens.Dataset := TControllerSaida(Controller).GetDataSet(MapperItemSaida.Entidade,
                            'CodigoSaida=' + srcEntidade.DataSet.FieldByName('Codigo').AsString,
                            CamposItemSaida);
      end;
    end;
  end;
end;

procedure TFormSaidaDetalhes.RefreshDataSetItemSaida(Codigo: string ='');
var
  CodigoSaida: string;
begin
  CodigoSaida:= ifthen( Codigo <> '',
                            Codigo ,
                            MapperEntidade.DataSet.FieldByName('Codigo').AsString);

  srcItens.Dataset := Controller.GetSelect( TMapper.GetTableNameClasse(
                      TEntidadeFactory.GetClassInfo(tpItemSaida) )+' T1 ',
                      '"CodigoSaida"=' +
                      ifthen(CodigoSaida <> '',CodigoSaida,'0') ,
                      CamposItemSaida);

  MapperItemSaida.Dataset:= srcItens.Dataset;
end;

procedure TFormSaidaDetalhes.GetSaida(CodigoSaida: string);
begin
  Condicao := 'T1."Codigo"=' + CodigoSaida;
  srcEntidade.Dataset := Controller.GetSelect(ControllerSaida.ConsultaTabela, Condicao, CamposSaida);
  MapperEntidade.Dataset := srcEntidade.Dataset;
end;


procedure TFormSaidaDetalhes.grdItensCellClick(Column: TColumn);
begin
  inherited;
  if (Operacao = 'Update') or (Operacao = 'Insert') then
  begin
    GetItemSaida;
  end;
end;

procedure TFormSaidaDetalhes.GetItemSaida;
begin
  if ItemSaida <> nil then
    FreeandNil(ItemSaida);
  ItemSaida := TEntidadeFactory.Criar(tpItemSaida);
  MapperItemSaida.Entidade := ItemSaida;
  MapperItemSaida.Dataset := srcItens.DataSet;
  MapperItemSaida.SendDataSetToEntidade;
  MapperItemSaida.EntidadeToComponent;
end;

procedure TFormSaidaDetalhes.btnAlterarClick(Sender: TObject);
begin
  CarregarProdutos;
  CarregarEstoques;
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormSaidaDetalhes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormSaidaDetalhes.btnConfirmarClick(Sender: TObject);
var
  i:integer;
  CodigoSaida: string;
begin
  if Operacao = 'Insert' then
     edtCodigo.Text := TControllerSaida(Controller).GetMaxSaida;
  CodigoSaida:=  edtCodigo.Text;
  inherited;
  SalvarItens(CodigoSaida);
  GetSaida(CodigoSaida);
  AjustaTamanhoGrid;

end;

procedure TFormSaidaDetalhes.SalvarItens(CodigoSaida: string);
begin
  TControllerSaida(Controller).ExcluirItens(CodigoSaida);

  if MapperItemSaida.Entidade = nil then
     MapperItemSaida.Entidade := TEntidadeFactory.Criar(tpItemSaida);

  srcItens.dataSet.first;
  while not srcItens.dataSet.eof do
  begin
    MapperItemSaida.SendDataSetToEntidade;
    MapperItemSaida.SendValueToFieldEntidade('CodigoSaida', CodigoSaida);
    Controller.Inserir(MapperItemSaida.Entidade);
    srcItens.dataSet.next;
  end;
  RefreshDataSetItemSaida(CodigoSaida);
end;

procedure TFormSaidaDetalhes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormSaidaDetalhes.btnInserirClick(Sender: TObject);
begin
  RefreshDataSetItemSaida('0');
  inherited;
  CarregarProdutos;
  CarregarEstoques;
  AjustaTamanhoGrid;
 // MapperEntidade.EntidadeToComponent;
  edtQuantidade.Text := '1';
  edtFator.Text := '1';
  dateData.Date      := date;
end;

procedure  TFormSaidaDetalhes.CarregarProdutos;
begin
   srcProdutos.DataSet := ControllerProdutos.GetSelect( TEntidadeFactory.GetNameEntidade(tpProduto)+
                                                       ' T1 ','Ativo=''S''','"Codigo", "Descricao"');
end;

procedure  TFormSaidaDetalhes.CarregarEstoques;
begin
   srcEstoque.DataSet := ControllerProdutos.GetSelect('Estoque T1 ','0=0','"Codigo", "Descricao"');
end;

procedure TFormSaidaDetalhes.cboProdutoCloseUp(Sender: TObject);
begin
  inherited;
  if cboProduto.text <>  '' then
     edtCodigoItem.text := inttostr( Integer(cboProduto.KeyValue ));
end;

procedure TFormSaidaDetalhes.CornerButton2Click(Sender: TObject);
var
  CodigoSaida: string;
begin
  CodigoSaida := FormPrincipal.ShowSaidaListagem;
  if CodigoSaida <> '' then
  begin
    GetSaida(CodigoSaida);
    MapperEntidade.EntidadeToComponent;
    RefreshDataSetItemSaida(CodigoSaida);
  end;
end;

procedure TFormSaidaDetalhes.edtCodigoItemChange(Sender: TObject);
begin
  inherited;
  cboProduto.KeyValue := edtCodigoItem.Text;
end;

procedure TFormSaidaDetalhes.AjustaTamanhoGrid;
begin
  if (Operacao = 'Update') or (Operacao = 'Insert') then
  begin
     grdItens.Height:= grdItens.Height - gpbItens.Height - 5;
     grdItens.top := grdItens.top + gpbItens.Height + 5;
  end
  else
  begin
     grdItens.Height:= grdItens.Height + gpbItens.Height + 5;
     grdItens.top :=  grdItens.top - gpbItens.Height - 5;
  end;
end;

procedure TFormSaidaDetalhes.FormCreate(Sender: TObject);
var
  ItemSaida:TGenericEntidade;
  CodigSaida: string;
begin
  Controller         := TControllerSaida.Create;
  ControllerProdutos := TControllerProdutos.Create;
  Entidade           := TEntidadeFactory.Criar(tpSaida);
  Tabela             := ControllerSaida.ConsultaTabela;
  Campos             := ControllerSaida.CamposSaida;
  ItemSaida          := TEntidadeFactory.Criar(tpItemSaida);
  Condicao           := '0=1';
  inherited;
  with MapperEntidade do
  begin
      associar('Codigo', edtCodigo);
      associar('Data', dateData);
      associar('CodigoFuncionario',  cboCodigoFuncionario);
      associar('Aplicacao', edtAplicacao);
  end;
  MapearCamposItemSaida;
  srcFuncionario.DataSet:= TControllerFuncionarios.Create.GetSelect(
                            TEntidadeFactory.GetNameEntidade(tpFuncionarios),
                            '0=0','"Codigo","Nome"');
  RefreshDataSetItemSaida('0');
end;

procedure TFormSaidaDetalhes.MapearCamposItemSaida;
begin
  MapperItemSaida   := TMapper.create(nil, srcItens.DataSet );

  with MapperItemSaida do
  begin
    Associar('Codigo', nil);
    Associar('Ordem', edtOrdem);
    Associar('CodigoFilial', nil);
    Associar('CodigoSaida', nil);
    Associar('CodigoProduto', edtCodigoItem);
    Associar('Quantidade', edtQuantidade);
    Associar('Valor', edtValor);
    Associar('CodigoProduto', cboProduto);
    Associar('CodigoEstoque', cboEstoque);
    Associar('CodigoUnidade', cboUnidadeMedida);
    Associar('Fator', edtFator);
  end;
end;

end.
