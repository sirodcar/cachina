unit ClientesDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Graphics, Controls, Forms, Dialogs, StdCtrls, TemplateDetalhesComTabGrid,
  System.Rtti, Data.DB, Grids, GenericEntidade,  Mapper, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus,ACBrCEP,
  ACBrBase, ACBrSocket;

type
  TFormClientesDetalhes = class(TTemplateFormComTabGridDetalhes)
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    edtNomeContato: TEdit;
    Label15: TLabel;
    edtTelefoneContato: TEdit;
    Label21: TLabel;
    edtCPFContato: TEdit;
    cboAutorizado: TComboBox;
    Label16: TLabel;
    btnInserirContato: TButton;
    btnConfirmarContato: TButton;
    btnRemoverContato: TButton;
    Label17: TLabel;
    Label18: TLabel;
    btnInserirVeiculo: TButton;
    btnConfirmarVeiculo: TButton;
    btnRemoverVeiculo: TButton;
    Label19: TLabel;
    cboCor: TComboBox;
    Label20: TLabel;
    Observacao: TMemo;
    srcContatos: TDataSource;
    srcVeiculos: TDataSource;
    cboModelo: TComboBox;
    tabDetalhes: TPageControl;
    TabSheet7: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    edtAno: TEdit;
    edtPlaca: TEdit;
    Nome: TEdit;
    RazaoSocial: TEdit;
    CPFCNPJ: TEdit;
    Telefone: TEdit;
    Email: TEdit;
    CodigoClassificacao: TComboBox;
    Endereco: TEdit;
    Bairro: TEdit;
    Municipio: TEdit;
    UF: TComboBox;
    CEP: TEdit;
    Complemento: TEdit;
    TabSheet8: TTabSheet;
    srcOrcamento: TDataSource;
    Grid1: TDBGrid;
    grdItens: TDBGrid;
    srcItensOrcamento: TDataSource;
    Faturar: TCheckBox;
    TabSheet9: TTabSheet;
    DBGrid1: TDBGrid;
    cboFormPagamento: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    srcFormaPagamentoCliente: TDataSource;
    TabSheet10: TTabSheet;
    Label11: TLabel;
    Label13: TLabel;
    ComboBox1: TComboBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    edtCPFConjuge: TEdit;
    cboCodigoPessoaPai: TDBLookupComboBox;
    cboCodigoPessoaMae: TDBLookupComboBox;
    cboCodigoPessoaConjuge: TDBLookupComboBox;
    Label26: TLabel;
    edtRenda: TEdit;
    Label27: TLabel;
    edtRendaFamiliar: TEdit;
    Label28: TLabel;
    edtFilhos: TEdit;
    dateDataNascimento: TDateTimePicker;
    Label29: TLabel;
    Label30: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label31: TLabel;
    InscricaoEstadual: TEdit;
    Label32: TLabel;
    RG: TEdit;
    Label45: TLabel;
    CodigoIBGE: TEdit;
    Label46: TLabel;
    ClassficacaoFiscal: TComboBox;
    SpeedButton6: TSpeedButton;
    ACBrCEP1: TACBrCEP;
    procedure btnConfirmarContatoClick(Sender: TObject);
    procedure btnInserirVeiculoClick(Sender: TObject);
    procedure btnInserirContatoClick(Sender: TObject);
    procedure btnConfirmarVeiculoClick(Sender: TObject);
    procedure btnRemoverContatoClick(Sender: TObject);
    procedure btnRemoverVeiculoClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure CPFCNPJExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure btnPesquisarClick(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure srcOrcamentoDataChange(Sender: TObject; Field: TField);
    procedure TabSheet9Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
  private
    Veiculos: TGenericEntidade;
    Contatos: TGenericEntidade;
    MapperContatos:TMapper;
    MapperVeiculos:TMapper;
    procedure MapearCampoContatos;
    procedure MapearCampoVeiculos;
    procedure ConsultarContatos;
    procedure ConsultarVeiculos;

    { Private declarations }
  public
    { Public declarations }
  end;

const
 CondicaoTipo = ' Tipo LIKE ''%CLIENTE%'' ';
var
  FormClientesDetalhes: TFormClientesDetalhes;

implementation

uses
  ControllerClientes, ControllerTabelas, EntidadeFactory, DBUtils, DialogsUtils,
  strutils, UtilsString, ControllerRecebimento, Principal;

{$R *.dfm}

procedure TFormClientesDetalhes.FormCreate(Sender: TObject);
begin
  Controller := TControllerClientes.Create;
  Entidade   := TEntidadeFactory.Criar(tpPessoa);
  Contatos   := TEntidadeFactory.Criar(tpContatos);
  Veiculos   := TEntidadeFactory.Criar(tpVeiculos);
  Condicao   := CondicaoTipo;
  inherited;
  MapearComponentes;
  MapearCampoContatos;
  MapearCampoVeiculos;
  FillCombobox( tpClassificacaoCliente, CodigoClassificacao );
  FillCombobox( tpModeloVeiculo, cboModelo );
  FillLookUpCombobox( tpFormaPagamento, cboFormPagamento );
  CampoPesquisa := 'Nome';
end;

procedure  TFormClientesDetalhes.ConsultarContatos;
begin
  if (Operacao <> 'Insert') then
     srcContatos.Dataset:= Controller.GetDataset(Contatos,
                           'CodigoCliente='+quotedstr(srcEntidade.DataSet.FieldByName('Codigo').AsString))
  else
     srcContatos.Dataset:= Controller.GetDataset(Contatos,'CodigoCliente=0');

  if MapperContatos <> nil then
  MapperContatos.Dataset := srcContatos.Dataset;
end;

procedure TFormClientesDetalhes.MapearCampoContatos;
begin
  ConsultarContatos;
  MapperContatos := TMapper.Create(Contatos,srcContatos.DataSet);
  with MapperContatos do
  begin
    Associar('CodigoCliente', nil);
    Associar('Nome', edtNomeContato);
    Associar('Telefone', edtTelefoneContato);
    Associar('Autorizado', cboAutorizado);
    Associar('CPF', edtCPFContato);
  end;
end;

procedure TFormClientesDetalhes.ConsultarVeiculos;
begin
  if (Operacao <> 'Insert') then
     srcVeiculos.Dataset:= Controller.GetDataset(Veiculos,
                           'CodigoCliente='+quotedstr(srcEntidade.DataSet.FieldByName('Codigo').AsString),
                           StrCamposVeiculos )
  else
     srcVeiculos.Dataset:= Controller.GetDataset(Veiculos,
                       'CodigoCliente=0 ', StrCamposVeiculos );
  if MapperVeiculos <> nil then
     MapperVeiculos.Dataset:= srcVeiculos.Dataset;
end;

procedure TFormClientesDetalhes.MapearCampoVeiculos;
begin
  ConsultarVeiculos;
  MapperVeiculos:=TMapper.Create(Veiculos,srcVeiculos.DataSet);
  with MapperVeiculos do
  begin
    Associar('CodigoCliente', nil);
    Associar('CodigoModelo', cboModelo);
    Associar('Placa', edtPlaca);
    Associar('Cor',  cboCor);
    Associar('Ano',  edtAno);
    {Associar('Potencia', edtPotencia);
    Associar('Cilindrada', edtCilindrada );
    Associar('PesoLiquido', edtPesoLiquido );
    Associar('PesoBruto', edtPesoBruto );
    Associar('NumeroSerie', edtNumeroSerie );
    Associar('Kilometragem', edtKilometragem );
    Associar('Renavan', edtRenavan );
    Associar('PrecoCompra', edtPrecoCompra );
    Associar('PrecoVenda', edtPrecoVenda );
    Associar('DataCompra', edtPrecoCompra );
    Associar('DataVenda', edtPrecoVenda );
    Associar('TipoCombustivel', cboCombustivel ); }

  end;
end;

procedure TFormClientesDetalhes.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActFormaPagamentos.execute;
end;

procedure TFormClientesDetalhes.SpeedButton6Click(Sender: TObject);
var
buscacep: TACBrCEP;
begin
  inherited;
   ACBrCEP1.WebService := TACBrCEPWebService( wsViaCep ) ;
   ACBrCEP1.ChaveAcesso := '1STa9eKhhfKvc7Ljh6W6CO5Kr/bFOl.';
   ACBrCEP1.BuscarPorCEP(CEP.Text);
end;

procedure TFormClientesDetalhes.srcOrcamentoDataChange(Sender: TObject;
  Field: TField);
var
  CondicaoItemOrcamento: string;
begin
  inherited;
  CondicaoItemOrcamento:= ifthen( not srcOrcamento.DataSet.FieldByName('Codigo').isNull,
                                'CodigoOrcamento='+srcOrcamento.DataSet.FieldByName('Codigo').asstring,
                                '0=1');
 srcItensOrcamento.DataSet:=  Controller.GetSelect(TEntidadeFactory.GetNameEntidade(tpitemorcamento)+' T1',
                              CondicaoItemOrcamento,
                              'Ordem, (Select Descricao from Produtos where Produtos.Codigo=CodigoProduto) AS Descricao,'+
                              ' Quantidade, Valor, Desconto, Total');
end;

procedure TFormClientesDetalhes.TabSheet2Show(Sender: TObject);
begin
  inherited;
  tabDetalhes.activepageindex := 0;
end;

procedure TFormClientesDetalhes.TabSheet4Show(Sender: TObject);
begin
  inherited;
  ConsultarContatos;
end;

procedure TFormClientesDetalhes.TabSheet5Show(Sender: TObject);
begin
  inherited;
  ConsultarVeiculos;
end;

procedure TFormClientesDetalhes.TabSheet8Show(Sender: TObject);
var
  CondicaoOrcamento: string;
begin
  inherited;
  CondicaoOrcamento:= ifthen(not MapperEntidade.Dataset.FieldByName('Codigo').isNull ,
                             ' CodigoCliente='+ MapperEntidade.Dataset.FieldByName('Codigo').asstring,
                             '0=1');
  srcOrcamento.DataSet:=  Controller.GetSelect( ControllerRecebimento.ConsultaOrcamentoRecebimento,
                          CondicaoOrcamento,
                          CamposOrcamentoRecebimento);
end;

procedure TFormClientesDetalhes.TabSheet9Show(Sender: TObject);
begin
  inherited;
  srcFormaPagamentoCliente.dataset := TControllerClientes(Controller).GetClienteFormaPagamento(
  MapperEntidade.GetValueEntidade('Codigo') );
end;

procedure TFormClientesDetalhes.ACBrCEP1BuscaEfetuada(Sender: TObject);
begin
  inherited;
  Endereco.Text := ACBrCEP1.Enderecos.Objects[0].Logradouro;
  bairro.Text := ACBrCEP1.Enderecos.Objects[0].bairro;
  UF.Text := ACBrCEP1.Enderecos.Objects[0].UF;
  CodigoIBGE.Text := ACBrCEP1.Enderecos.Objects[0].IBGE_Municipio;
  Municipio.Text := ACBrCEP1.Enderecos.Objects[0].Municipio;
  Complemento.Text := ACBrCEP1.Enderecos.Objects[0].Complemento;

end;

procedure TFormClientesDetalhes.btnConfirmarContatoClick(Sender: TObject);
var
  CodigoCliente: string;
  ControllerTabelas: TControllerTabelas;
begin
  inherited;
  if  srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
  begin
      MapperContatos.ComponentToEntidade;
      CodigoCliente:= MapperEntidade.GetValueEntidade('Codigo');
      MapperContatos.SendValueToFieldEntidade('Codigo', srcContatos.DataSet.FieldByName('Codigo').AsString);
      MapperContatos.SendValueToFieldEntidade( 'CodigoCliente', CodigoCliente);
      ControllerTabelas:= TControllerTabelas.Create;
      if not srcContatos.Dataset.Locate('CPF',edtCPFContato.Text,[]) then
         ControllerTabelas.Inserir(Contatos)
      else
         ControllerTabelas.Atualizar(Contatos);

      ConsultarContatos;
  end
  else
    showmessage('N�o existe cliente confirmado!');
end;

procedure TFormClientesDetalhes.btnConfirmarVeiculoClick(Sender: TObject);
var
  CodigoCliente: string;
  ControllerTabelas: TControllerTabelas;
begin
  inherited;
  if srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
  begin
    MapperVeiculos.ComponentToEntidade;
    MapperVeiculos.SendValueToFieldEntidade('Data', datetostr(date));

    CodigoCliente      := MapperEntidade.GetValueEntidade('Codigo');
    MapperVeiculos.SendValueToFieldEntidade('CodigoCliente', CodigoCliente);
    ControllerTabelas:= TControllerTabelas.Create;
    if not srcVeiculos.Dataset.Locate('Placa',edtPlaca.Text,[]) then
       ControllerTabelas.Inserir(Veiculos)
    else
       ControllerTabelas.Atualizar(Veiculos);

    ConsultarVeiculos;
  end
  else
    showmessage('N�o existe cliente confirmado!');
end;

procedure TFormClientesDetalhes.btnRemoverContatoClick(Sender: TObject);
begin
  inherited;
  if not srcContatos.DataSet.IsEmpty then
  begin
      MapperContatos.SendValueToFieldEntidade('Codigo',
      srcContatos.DataSet.FieldByName('Codigo').AsString);

      if TDialogs.ConfirmarExclusao then
      begin
        Controller.Excluir(Contatos);
        srcContatos.DataSet.delete;
      end;
  end;
end;

procedure TFormClientesDetalhes.btnRemoverVeiculoClick(Sender: TObject);
begin
  inherited;
  if not srcVeiculos.DataSet.isEmpty then
  begin
     MapperVeiculos.SendValueToFieldEntidade('Placa',
     srcVeiculos.DataSet.FieldByName('Placa').AsString);

     if TDialogs.ConfirmarExclusao then
     begin
        Controller.Excluir(Veiculos);
        srcVeiculos.DataSet.delete;
     end;
  end;
end;

procedure TFormClientesDetalhes.Button1Click(Sender: TObject);
begin
  inherited;
  if Operacao <> '' then
  begin
      if cboFormPagamento.text <> '' then
         TControllerClientes(Controller).AddClienteFormaPagamento(
         MapperEntidade.GetValueEntidade('Codigo'),cboFormPagamento.KeyValue);

      srcFormaPagamentoCliente.dataset := TControllerClientes(Controller).GetClienteFormaPagamento(
                                          MapperEntidade.GetValueEntidade('Codigo'));
  end;
end;

procedure TFormClientesDetalhes.Button2Click(Sender: TObject);
begin
  inherited;
  if srcFormaPagamentoCliente.dataset.fieldbyname('CodigoFormaPagamento').asstring  <> '' then
      TControllerClientes(Controller).RemoverClienteFormaPagamento(
      MapperEntidade.GetValueEntidade('Codigo'),
      srcFormaPagamentoCliente.dataset.fieldbyname('CodigoFormaPagamento').asstring );

  srcFormaPagamentoCliente.dataset := TControllerClientes(Controller).GetClienteFormaPagamento(
                                      MapperEntidade.GetValueEntidade('Codigo'));
end;

procedure TFormClientesDetalhes.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  if Contatos <> nil then
    FreeandNil(Contatos);
  Contatos := TEntidadeFactory.Criar(tpContatos);
  MapperContatos.Entidade := Contatos;
  MapperContatos.Dataset := srcContatos.DataSet;
  MapperContatos.SendDataSetToEntidade;
  MapperContatos.EntidadeToComponent;
end;

procedure TFormClientesDetalhes.DBGrid3CellClick(Column: TColumn);
begin
  inherited;
  if Veiculos <> nil then
    FreeandNil(Veiculos);
  Veiculos := TEntidadeFactory.Criar(tpVeiculos);
  MapperVeiculos.Entidade := Veiculos;
  MapperVeiculos.Dataset := srcVeiculos.DataSet;
  MapperVeiculos.SendDataSetToEntidade;
  MapperVeiculos.EntidadeToComponent;
end;

procedure TFormClientesDetalhes.DBGrid3DblClick(Sender: TObject);
begin
  inherited;
  MapperEntidade.EntidadeToComponent;
end;

procedure TFormClientesDetalhes.btnInserirVeiculoClick(Sender: TObject);
begin
  MapperVeiculos.SendNullToComponent;
  inherited;
end;

procedure TFormClientesDetalhes.btnPesquisarClick(Sender: TObject);
begin
  Condicao := CondicaoTipo;
  inherited;
end;

procedure TFormClientesDetalhes.btnInserirContatoClick(Sender: TObject);
begin
  MapperContatos.SendNullToComponent;
  inherited;
end;

procedure TFormClientesDetalhes.CPFCNPJExit(Sender: TObject);
var
  DataSet: TDataset;
  _cpfcnpj: string;
begin
  inherited;
  _cpfcnpj := SoNumeros(CPFCNPJ.text);

  if _cpfcnpj <> '' then
  begin
     if length(_cpfcnpj) = 11 then
     begin
        CPFCNPJ.text :=copy(_cpfcnpj,0,3)+'.'+copy(_cpfcnpj,4,3)+'.'+copy(_cpfcnpj,7,3)+'-'+copy(_cpfcnpj,10,2);
        if not UtilsString.Cpf(_cpfcnpj) then
        begin
           showmessage('CPF Inv�lido');
           abort;
        end;
     end
     else
     if length(_cpfcnpj) = 14 then
     begin
         if not UtilsString.cnpj(_cpfcnpj) then
        begin
           showmessage('CPF Inv�lido');
           abort;
        end;

        CPFCNPJ.text:=copy(_cpfcnpj,0,2)+'.'+copy(_cpfcnpj,3,3)+'.'+copy(_cpfcnpj,6,3)+'/'+copy(_cpfcnpj,9,4)+'-'+copy(_cpfcnpj,13,2);
     end;
  end;

  if (Operacao = 'Insert') and (_cpfcnpj<> '') then
  begin
    DataSet := TControllerClientes.GetClienteCPFCNPJ( _cpfcnpj );
    if not DataSet.IsEmpty then
    begin
      srcEntidade.DataSet.Close;
      srcEntidade.DataSet:= DataSet;
      showmessage('Este CPF/CNPJ j� existe!');
    end;
  end;
end;

end.
