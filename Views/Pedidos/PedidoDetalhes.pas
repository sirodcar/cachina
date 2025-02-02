unit PedidoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesBase, Data.DB, mapper,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ItensPedido, GenericEntidade, ControllerProdutos,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ComCtrls, Strutils, Dateutils;

type
  TFormPedidoDetalhes = class(TTemplateFormBaseDetalhes)
    Label1: TLabel;
    edtCodigo: TEdit;
    lbData: TLabel;
    dateData: TDateTimePicker;
    lbCodigoFornecedor: TLabel;
    cboCodigoFornecedor: TDBLookupComboBox;
    lbCodigoFormaPagamento: TLabel;
    cboCodigoFormaPagamento: TComboBox;
    lbTipoFrete: TLabel;
    cboTipoFrete: TComboBox;
    lbDataEmissao: TLabel;
    dateDataEmissao: TDateTimePicker;
    lbValorDesconto: TLabel;
    edtValorDesconto: TEdit;
    lbValorFrete: TLabel;
    edtValorFrete: TEdit;
    srcItens: TDataSource;
    srcProdutos: TDataSource;
    srcfornecedores: TDataSource;
    grdItens: TDBGrid;
    gpbItens: TGroupBox;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    edtCodigoItem: TEdit;
    edtQuantidade: TEdit;
    edtValor: TEdit;
    BitBtn1: TSpeedButton;
    CornerButton1: TSpeedButton;
    edtOrdem: TEdit;
    cboProduto: TDBLookupComboBox;
    dateDataPrevisao: TDateTimePicker;
    Label2: TLabel;
    cboSituacao: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    cboFuncionario: TComboBox;
    CornerButton2: TSpeedButton;
    cboUnidadeMedida: TComboBox;
    Label5: TLabel;
    Label7: TLabel;
    edtFator: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cboProdutoCloseUp(Sender: TObject);
    procedure CornerButton2Click(Sender: TObject);
    procedure grdItensCellClick(Column: TColumn);
    procedure edtCodigoItemChange(Sender: TObject);
    procedure CornerButton1Click(Sender: TObject);
  private
    { Private declarations }
    ItemPedido             : TGenericEntidade;
    MapperItemPedido       : TMapper;
    ControllerProdutos     : TControllerProdutos;
    procedure MapearCamposItem;
    procedure RefreshDataSetItemPedido(Codigo: string = '');
    procedure GetPedido(CodigoPedido: string);
    procedure AjustaTamanhoGrid;
    procedure CarregarProdutos;
    procedure PersistirItemPedido;
    procedure ShowPedidoListagem;
    procedure GetItemPedido;
    procedure SalvarItens(CodigoPedido: string);
  public
    { Public declarations }
  end;

var
  FormPedidoDetalhes: TFormPedidoDetalhes;

implementation

{$R *.dfm}

uses  ControllerTabelas, EntidadeFactory, DBUtils, ControllerFornecedores,
  ControllerPedido, Principal, PedidoListagem;


procedure TFormPedidoDetalhes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  PersistirItemPedido;
  edtOrdem.Text        := '';
  edtCodigoItem.Text   := '';
  cboProduto.KeyValue    := Null;
  edtQuantidade.Text   := '1';
  edtValor.Text        := '0';
end;

procedure TFormPedidoDetalhes.PersistirItemPedido;
var
  DescricaoProduto: string;
  Count: Integer;
begin
  with MapperItemPedido do
  begin
    if edtOrdem.text = '' then
    begin
      Entidade := TEntidadeFactory.Criar(tpItemPedido);
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
        srcItens.Dataset := TControllerPedido(Controller).GetDataSet(MapperItemPedido.Entidade,
                            'CodigoPedido=' + srcEntidade.DataSet.FieldByName('Codigo').AsString,
                            CamposItemPedido);
      end;
    end;
  end;
end;

procedure TFormPedidoDetalhes.btnAlterarClick(Sender: TObject);
begin
  CarregarProdutos;
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormPedidoDetalhes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormPedidoDetalhes.btnConfirmarClick(Sender: TObject);
var
  CodigoPedido: string;
begin
  if Operacao = 'Insert' then
     edtCodigo.Text := TControllerPedido(Controller).GetMaxPedido;
  CodigoPedido:=  edtCodigo.Text;
  inherited;
  SalvarItens(CodigoPedido);
  GetPedido(CodigoPedido);
  AjustaTamanhoGrid;

end;

procedure TFormPedidoDetalhes.SalvarItens(CodigoPedido: string);
begin
  TControllerPedido(Controller).ExcluirItens(CodigoPedido);

  if MapperItemPedido.Entidade = nil then
     MapperItemPedido.Entidade := TEntidadeFactory.Criar(tpItemPedido);

  srcItens.dataSet.first;
  while not srcItens.dataSet.eof do
  begin
    MapperItemPedido.SendDataSetToEntidade;
    MapperItemPedido.SendValueToFieldEntidade('CodigoPedido', CodigoPedido);
    Controller.Inserir(MapperItemPedido.Entidade);
    srcItens.dataSet.next;
  end;
  RefreshDataSetItemPedido(CodigoPedido);
end;


procedure TFormPedidoDetalhes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormPedidoDetalhes.btnInserirClick(Sender: TObject);
begin
  RefreshDataSetItemPedido('0');
  inherited;
  CarregarProdutos;
  AjustaTamanhoGrid;
  MapperEntidade.EntidadeToComponent;

  edtQuantidade.Text    := '1';
  dateData.Date         := date;
  dateDataPrevisao.Date := date+1;
  cboSituacao.text      := 'Pendente';
  edtCodigo.text        := '';

  cboFuncionario.ItemIndex:= cboFuncionario.Items.IndexOfObject(
                            TObject(strtoInt(FormPrincipal.CodigoPessoa)));

  cboTipoFrete.text     := 'CIF';
end;

procedure  TFormPedidoDetalhes.CarregarProdutos;
begin
   srcProdutos.DataSet := ControllerProdutos.GetSelect( TEntidadeFactory.GetNameEntidade(tpProduto)+
                                                       ' T1 ','0=0','"Codigo", "Descricao"');
end;


procedure TFormPedidoDetalhes.cboProdutoCloseUp(Sender: TObject);
begin
  inherited;
  if cboProduto.text <>  '' then
     edtCodigoItem.text := inttostr( Integer(cboProduto.KeyValue ));
end;

procedure TFormPedidoDetalhes.CornerButton1Click(Sender: TObject);
begin
  inherited;
  if not srcItens.Dataset.isEmpty then
  begin
    if Operacao = 'Update' then
    begin
       Controller.Excluir( MapperItemPedido.Entidade );
       RefreshDataSetItemPedido;
    end
    else
       srcItens.Dataset.delete;
  end;
end;

procedure TFormPedidoDetalhes.CornerButton2Click(Sender: TObject);
begin
  ShowPedidoListagem;
end;

procedure TFormPedidoDetalhes.edtCodigoItemChange(Sender: TObject);
begin
  inherited;
  cboProduto.KeyValue := edtCodigoItem.Text;
end;

procedure TFormPedidoDetalhes.ShowPedidoListagem;
var
  CodigoPedido: string;
begin
  FormPedidoListagem:= TFormPedidoListagem.Create(application);
  FormPedidoListagem.Showmodal;

  CodigoPedido:= FormPedidoListagem.Codigo;

  if CodigoPedido <> '' then
  begin
    GetPedido(CodigoPedido);
    MapperEntidade.SendValueToFieldEntidade('CodigoFornecedor',
    MapperEntidade.DataSet.FieldByName('CodigoFornecedor').AsString);
    MapperEntidade.EntidadeToComponent;
    RefreshDataSetItemPedido(CodigoPedido);
  end;

  if FormPedidoListagem.operacao = 'Update' then
    btnAlterar.Click
  else
  if FormPedidoListagem.operacao = 'Insert' then
    btnInserir.Click;

  FormPedidoListagem.Free;
end;

procedure TFormPedidoDetalhes.GetPedido(CodigoPedido: string);
begin
  Condicao := 'T1.Codigo=' + CodigoPedido;
  srcEntidade.Dataset := Controller.GetSelect(ControllerPedido.ConsultaTabela, Condicao, CamposPedido);
  MapperEntidade.Dataset := srcEntidade.Dataset;
end;

procedure TFormPedidoDetalhes.grdItensCellClick(Column: TColumn);
begin
  inherited;
  if (Operacao = 'Update') or (Operacao = 'Insert') then
  begin
    GetItemPedido;
  end;
end;

procedure TFormPedidoDetalhes.GetItemPedido;
begin
  if ItemPedido <> nil then
    FreeandNil(ItemPedido);
  ItemPedido := TEntidadeFactory.Criar(tpItemPedido);
  MapperItemPedido.Entidade := ItemPedido;
  MapperItemPedido.Dataset := srcItens.DataSet;
  MapperItemPedido.SendDataSetToEntidade;
  MapperItemPedido.EntidadeToComponent;
end;

procedure TFormPedidoDetalhes.RefreshDataSetItemPedido(Codigo: string ='');
var
  CodigoPedido: string;
begin
  CodigoPedido:= ifthen( Codigo <> '',
                            Codigo ,
                            MapperEntidade.DataSet.FieldByName('Codigo').AsString);

  srcItens.Dataset := Controller.GetSelect( TMapper.GetTableNameClasse(
                      TEntidadeFactory.GetClassInfo(tpItemPedido) )+' T1 ',
                      '"CodigoPedido"=' +
                      ifthen(CodigoPedido <> '',CodigoPedido,'0') ,
                      CamposItemPedido);

  MapperItemPedido.Dataset:= srcItens.Dataset;
end;

procedure TFormPedidoDetalhes.FormCreate(Sender: TObject);
begin
  Controller         := TControllerPedido.Create;
  ControllerProdutos := TControllerProdutos.Create;
  Entidade           := TEntidadeFactory.Criar(tpPedido);
  ItemPedido        := TEntidadeFactory.Criar(tpItemPedido);
  Condicao           := '0=1';

  inherited;

  with MapperEntidade do
  begin
      associar('Codigo', edtCodigo);
      associar('Data', dateData);
      associar('CodigoFornecedor',  cboCodigoFornecedor);
      associar('CodigoFormaPagamento',  cboCodigoFormaPagamento);
      associar('Frete', edtValorFrete);
      associar('TipoFrete', cboTipoFrete);
      associar('Data', dateDataEmissao);
      associar('Previsao', dateDataPrevisao);
      associar('Desconto', edtValorDesconto);
      associar('Situacao', cboSituacao);

    //associar('ValorCustofinanceiro', edtValorCustofinanceiro);
    //associar('ValorDespesas', edtValorDespesas);
    //associar('ValorSeguro', edtValorSeguro);
    //associar('ValorIPI', edtValorIPI);
    //associar('ValorPIS', edtValorPIS);
    //associar('ValorCONFINS', edtValorCONFINS);
    //associar('ValorICMS', edtValorICMS);
    //associar('ValorICMSSubstituto', edtValorICMSSubstituto);

  end;

  MapearCamposItem;

  FillCombobox( tpFormaPagamento , cboCodigoFormaPagamento);
  FillCombobox( tpFuncionarios   , cboFuncionario,'0=0','Codigo','Nome','Nome');
  FillCombobox( tpUnidadeMedida  , cboUnidadeMedida );

  srcfornecedores.DataSet:= TControllerfornecedores.Create.GetSelect(
                            TEntidadeFactory.GetNameEntidade(tpPessoa),
                            '"Tipo"=''FORNECEDOR''','"Codigo","Nome"');

end;

procedure TFormPedidoDetalhes.MapearCamposItem;
begin
  MapperItemPedido   := TMapper.create(nil, srcItens.DataSet );

  with MapperItemPedido do
  begin
    Associar('Codigo', nil);
    Associar('Ordem', edtOrdem);
    Associar('CodigoFilial', nil);
    Associar('CodigoPedido', nil);
    Associar('CodigoProduto', edtCodigoItem);
    Associar('CodigoProduto', cboProduto);
    Associar('Quantidade', edtQuantidade);
    Associar('Valor', edtValor);
    Associar('Desconto', nil);
    Associar('CodigoUnidade', cboUnidadeMedida);
    Associar('Fator', edtFator);
  end;
end;

procedure TFormPedidoDetalhes.AjustaTamanhoGrid;
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


end.
