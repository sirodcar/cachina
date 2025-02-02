unit OrcamentoDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
 Graphics, FMX.Controls, Forms, Dialogs, StdCtrls,
  Data.DB,  System.Rtti, GenericEntidade, DBClient, ControllerProdutos,
  TemplateDetalhesBase, ItensOrcamento,  Mapper,strUtils, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Controls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.jpeg, Vcl.FileCtrl, Vcl.Buttons, ACBrBase, ACBrCalculadora,
  Vcl.Menus;

type
  TFormOrcamentoDetalhes = class(TTemplateFormBaseDetalhes)
    srcItens: TDataSource;
    Label8: TLabel;
    TabControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    memoObservacao: TMemo;
    edtCodigo: TEdit;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cboSituacao: TComboBox;
    StringGrid1: TDBGrid;
    srcOrcamentoFormaPagamento: TDataSource;
    Button1: TSpeedButton;
    Button2: TSpeedButton;
    dateData: TDateTimePicker;
    srcProdutos: TDataSource;
    Button3: TSpeedButton;
    TabSheet3: TTabSheet;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    cboExtintor: TComboBox;
    cboMacaco: TComboBox;
    cboChaveRoda: TComboBox;
    cboBateria: TComboBox;
    cboTriangulo: TComboBox;
    cboCalotas: TComboBox;
    cboAcendendor: TComboBox;
    cbofarolMilha: TComboBox;
    cboTapete: TComboBox;
    cboRodas: TComboBox;
    cboCdPlayer: TComboBox;
    cboEstepe: TComboBox;
    cboPneusTraseiros: TComboBox;
    cboPneusDianteiro: TComboBox;
    cboChave: TComboBox;
    cboManual: TComboBox;
    cboAutoFalantes: TComboBox;
    edtExtintor: TEdit;
    edtMacaco: TEdit;
    edtChaveRoda: TEdit;
    edtTriangulo: TEdit;
    edtCalotas: TEdit;
    edtBateria: TEdit;
    edtAutoFalantes: TEdit;
    edtCDPlayer: TEdit;
    edtRodas: TEdit;
    edtTapete: TEdit;
    edtFarolMilha: TEdit;
    edtAcendedor: TEdit;
    edtEstepe: TEdit;
    edtPneusTraseiros: TEdit;
    edtPneusDianteiro: TEdit;
    edtChave: TEdit;
    edtManual: TEdit;
    edtObjetos: TEdit;

    Label19: TLabel;
    grdItens: TDBGrid;
    gpbItens: TGroupBox;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    edtCodigoItem: TEdit;
    edtQuantidade: TEdit;
    edtValor: TEdit;
    BitBtn1: TSpeedButton;
    CornerButton1: TSpeedButton;
    edtOrdem: TEdit;
    edtDescontoItem: TEdit;
    cboProduto: TDBLookupComboBox;
    Image5: TImage;
    FileListBox1: TFileListBox;
    memoObservacaoVistoria: TMemo;
    Label38: TLabel;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    cboFormaPagamento: TComboBox;
    Label21: TLabel;
    dateVencimento: TDateTimePicker;
    Label17: TLabel;
    edtValorFormaPagamento: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    cboCor: TComboBox;
    edtAno: TEdit;
    cboModelo: TComboBox;
    edtPlaca: TEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label10: TLabel;
    cboUnidadeMedida: TComboBox;
    GroupBox3: TGroupBox;
    lbCNPJ: TLabel;
    edtCPFCNPJ: TEdit;
    cboClientes: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    lbrazao: TLabel;
    lbtelefone: TLabel;
    lbContato: TLabel;
    Label18: TLabel;
    lbTotalCobrado: TLabel;
    Label44: TLabel;
    lbResto: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    PopupMenu1: TPopupMenu;
    VisualizarFatura1: TMenuItem;
    SpeedButton5: TSpeedButton;
    Label15: TLabel;
    cboFuncionarios: TDBLookupComboBox;
    lbdatahorainicio: TLabel;
    cboCodigoTabelaPreco: TDBLookupComboBox;
    Label5: TLabel;
    lbTotal: TLabel;
    edtdesconto: TEdit;
    Label7: TLabel;
    edtValorDesconto: TEdit;
    Label14: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtCodigoItemChange(Sender: TObject);
    procedure edtPlacaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure edtCPFCNPJExit(Sender: TObject);
    procedure CornerButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure lbNomeClienteDblClick(Sender: TObject);
    procedure lbMarcaDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure grdItensCellClick(Column: TColumn);
    procedure StringGrid1CellClick(Column: TColumn);
    procedure TabSheet3Show(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure edtDescontoItemExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cboFormaPagamentoSelect(Sender: TObject);
    procedure cboClientesExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure edtPlacaKeyPress(Sender: TObject; var Key: Char);
    procedure VisualizarFatura1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure cboProdutoCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ItensOrcamento           : TItensEntradas;
    ItemOrcamento            : TGenericEntidade;
    MapperItemOrcamento      : TMapper;
    OrcamentoFormaPagamento  : TGenericEntidade;
    MapperOrcamentoFormaPagamento: TMapper;
    DataSetCliente:TDataSet;

    ControllerProdutos       : TControllerProdutos;

    TotalOrcamento:Double;
    TotalCobrado:Double;
    TotalResto:Double;

    procedure MapearCamposOrcamento;
    procedure MapearCamposItemOrcamento;
    procedure MapearOrcamentoFormaPagamento;
    procedure TotalizarOrcamento;
    procedure TotalLizarOrcamentoFormaPagamento;

    procedure CarregarProdutos;
    procedure PersistirItemOrcamento;
    procedure VerificarCPFCNPJ(CPFCNPJ, Placa: string);
    procedure VerificarPlaca(CodigoCliente, Placa: string);
    procedure GetItemOrcamento;
    procedure AjustaTamanhoGrid;
    procedure SelecionarComissao;
    procedure GetOrcamento(CodigoOrcamento: string);
    procedure SalvarItens(CodigoOrcamento: string;prsOperacao: string );
    procedure SalvarVeiculo;
    procedure SalvarOrcamentoFormaPagamento(CodigoOrcamento: string);
    procedure AdicionarItem;
    procedure VerificarModelo(Modelo: string);
    procedure ShowLembrete;

    { Private declarations }
  public
    { Public declarations }
    procedure GetOrcamentoPesquisa(Codigo: string = '');
    procedure RefreshDataSetItemOrcamento(Codigo: string ='');
    procedure ConsultaOrcamentoFormaPagamento(CodigoOrcamento: string);
  end;

var
  FormOrcamentoDetalhes: TFormOrcamentoDetalhes;

implementation

{$R *.dfm}

uses
   ControllerOrcamento, EntidadeFactory, ControllerClientes, Principal,
   DBUtils, DialogsUtils, Winapi.Windows, UtilsString, ControllerRecebimento
   {EmissorNfe}, ControllerParametros, LembretesExibir, ControllerTabelas;


procedure TFormOrcamentoDetalhes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if cboProduto.text <>  '' then
     edtCodigoItem.text := inttostr( Integer(cboProduto.KeyValue ));
  AdicionarItem;
end;

procedure TFormOrcamentoDetalhes.BitBtn2Click(Sender: TObject);
var
  ControllerRecebimento:TControllerRecebimento;
  DataSetOrcamentoFormaPagamento:TDataSet;
  Valor: Double;
  CodigoOrcamento: string;
  CodigoFormaPagamento: string;
  CodigoLoteRecebimento: string;
  Parcelas: Integer;
  CentroCusto: string;
  CodigoOrcamentoFormaPagamento:string;
  Faturado: Boolean;
begin
  inherited;
  if Operacao = '' then
  begin
    CodigoOrcamento := '';
    CodigoOrcamento := srcEntidade.DataSet.FieldByName('Codigo').AsString;
    Valor           := srcOrcamentoFormaPagamento.DataSet.FieldByName('Liquido').AsFloat;
    CodigoOrcamentoFormaPagamento := srcOrcamentoFormaPagamento.DataSet.FieldByName('Codigo').Asstring;

    if CodigoOrcamento <> '' then
    begin

      if srcOrcamentoFormaPagamento.dataset.isEmpty then
      begin
        showmessage('Nenhuma forma de pagamento vinculada!');
        abort;
      end;

      if TControllerOrcamento(Controller).GetValue('Recebimento',
                                                   'CodigoOrcamentoFormaPagamento='+ CodigoOrcamentoFormaPagamento,
                                                   'Count(*)') <> '0'  then
      begin
        showmessage('Esta forma de pagamento j� foi faturada!');
        abort;
      end;

      CodigoFormaPagamento := srcOrcamentoFormaPagamento.dataset.FieldByName('CodigoFormaPagamento').AsString;

      Parcelas := strtoint( TControllerOrcamento(Controller).GetValue('FormaPagamento',
                                                                      'Codigo='+ CodigoFormaPagamento,
                                                                      'NumeroParcelas') );
      ControllerRecebimento:=TControllerRecebimento.create;

      CentroCusto :=   TControllerOrcamento(Controller).GetValue('CentroCusto',
                                                                 'Descricao=''OFICINA''',
                                                                 'Codigo') ;

      Faturado := ControllerRecebimento.ParcelarConta(
                  Valor ,
                  Parcelas,
                  CodigoFormaPagamento,
                  srcOrcamentoFormaPagamento.dataset.FieldByName('Vencimento').AsString,
                  srcEntidade.DataSet.FieldByName('CodigoCliente').AsString,
                  CodigoOrcamento,
                  CentroCusto,
                  CodigoOrcamentoFormaPagamento,
                  '',
                  srcEntidade.DataSet.FieldByName('Nome').asstring +' - '+
                  srcEntidade.DataSet.FieldByName('Codigo').asstring );

      if Faturado then
      begin
        TControllerOrcamento(Controller).AlterarSituacaoParaFaturado( 'Codigo IN ('+
                                                                      CodigoOrcamento +')', '' );

        formPrincipal.ShowRecebimentosListagem( 'CodigoOrcamento IN ('+ CodigoOrcamento +')');

        GetOrcamentoPesquisa(CodigoOrcamento);
      end;
      //close;
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.btnAlterarClick(Sender: TObject);
begin
  //if srcEntidade.dataset.fieldByName('Situacao').asstring <> 'Faturado' then
  begin
    inherited;
    TotalizarOrcamento;
    //CarregarProdutos;
    AjustaTamanhoGrid;
    ConsultaOrcamentoFormaPagamento(srcEntidade.dataset.fieldByName('Codigo').asstring);
    DataSetCliente  := TControllerClientes.GetCliente(srcEntidade.dataset.fieldByName('CodigoCliente').asstring);
  end;
end;

procedure TFormOrcamentoDetalhes.btnCancelarClick(Sender: TObject);
begin
  inherited;
  AjustaTamanhoGrid;
end;

procedure TFormOrcamentoDetalhes.btnConfirmarClick(Sender: TObject);
var
  CodigoOrcamento: string;
  lsOperacao: string;
begin
  VerificarModelo(cboModelo.text);

  if memoObservacao.text = '' then
  begin
    showmessage('Informe uma observa��o do servi�o (Exemplo: Contato, telefone, problema, etc..) !');
    abort;
  end;

  if Operacao = 'Insert' then
     edtCodigo.Text := TControllerOrcamento(Controller).GetMaxOrcamento;
  CodigoOrcamento :=  edtCodigo.Text;

  if memoObservacao.Text <> '' then
  MapperEntidade.associar('DataHoraInicio',nil, datetimetostr(now));

  lsOperacao:= Operacao;
  inherited;
  SalvarItens(CodigoOrcamento , lsOperacao );
  SalvarOrcamentoFormaPagamento(CodigoOrcamento);
  SalvarVeiculo;
  ConsultaOrcamentoFormaPagamento(CodigoOrcamento);
  GetOrcamento(CodigoOrcamento);
  TotalizarOrcamento;
  AjustaTamanhoGrid;
end;

procedure TFormOrcamentoDetalhes.SalvarOrcamentoFormaPagamento(CodigoOrcamento: string);
var
  NumeroParcelas: string;
begin
  if srcOrcamentoFormaPagamento.DataSet.active then
  begin
    if TClientdataSet(srcOrcamentoFormaPagamento.DataSet).ChangeCount > 0 then
    begin
        TControllerOrcamento(Controller).ExcluirOrcamentoFormaPagamento(CodigoOrcamento);
        srcOrcamentoFormaPagamento.DataSet.first;
        while not srcOrcamentoFormaPagamento.DataSet.eof do
        begin
          MapperOrcamentoFormaPagamento.Entidade := TEntidadeFactory.Criar(tpOrcamentoFormaPagamento);
          MapperOrcamentoFormaPagamento.SendDataSetToEntidade;

          MapperOrcamentoFormaPagamento.SendValueToFieldEntidade('CodigoOrcamento', CodigoOrcamento);

          NumeroParcelas := TControllerOrcamento(Controller).GetValue(
                            TEntidadeFactory.GetNameEntidade(tpFormaPagamento),
                           'Codigo=' + MapperOrcamentoFormaPagamento.GetValueEntidade('CodigoFormaPagamento'),
                           'NumeroParcelas');

          if NumeroParcelas <> '' then
             MapperOrcamentoFormaPagamento.SendValueToFieldEntidade('QuantidadePercelas',
                                                                     NumeroParcelas);

          Controller.Inserir(MapperOrcamentoFormaPagamento.Entidade);

          srcOrcamentoFormaPagamento.DataSet.next;
        end;
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.SalvarVeiculo;
var
  ControllerCliente: TControllerClientes;
  DataSetClientes: TDataSet;
begin
  if edtPlaca.text <> '' then
  begin
     ControllerCliente := TControllerClientes.create;
     DataSetClientes    := ControllerCliente.GetClientePlaca(
                           MapperEntidade.GetValueEntidade('CodigoCliente'),
                           edtPlaca.text);

     if (DataSetClientes.IsEmpty) or
     ((not DataSetClientes.IsEmpty) and (MapperEntidade.GetValueEntidade('CodigoCliente') <>
                                         DataSetClientes.fieldByName('Codigo').asstring)) then
     begin
        TControllerOrcamento(Controller).VincularVeiculo(edtPlaca.text,
        edtAno.text,
        cboCor.text,
        inttostr(Integer(cboModelo.Items.Objects[cboModelo.ItemIndex])),
        MapperEntidade.GetValueEntidade('CodigoCliente'));
     end;
  end;
end;

procedure TFormOrcamentoDetalhes.SalvarItens(CodigoOrcamento: string;prsOperacao: string );
begin
  srcItens.dataSet.first;
  while not srcItens.dataSet.eof do
  begin
     MapperItemOrcamento.Entidade := TEntidadeFactory.Criar(tpItemOrcamento);
     MapperItemOrcamento.DataSet  := srcItens.dataSet;

     MapperItemOrcamento.SendDataSetToEntidade;

     MapperItemOrcamento.SendValueToFieldEntidade('CodigoOrcamento', CodigoOrcamento);
     MapperItemOrcamento.SendValueToFieldEntidade('Descricao', srcItens.dataSet.fieldbyname('Descricao').asstring );

     if srcItens.dataSet.fieldbyname('Tipo').asstring = 'SERVI�O' then
        MapperItemOrcamento.SendValueToFieldEntidade('CFOP', '5934' )
     else
     begin
        if DataSetCliente.FieldByName('UF').AsString <> 'RN' then
           MapperItemOrcamento.SendValueToFieldEntidade('CFOP', TControllerParametros.GetCFOPPadraoVendaForaEstado)
        else
           MapperItemOrcamento.SendValueToFieldEntidade('CFOP', TControllerParametros.GetCFOPPadraoVenda );

        MapperItemOrcamento.SendValueToFieldEntidade('SitA', '0' );
        MapperItemOrcamento.SendValueToFieldEntidade('ValorBasecalculoICMS', '0' );
        MapperItemOrcamento.SendValueToFieldEntidade('PercentualICMS', '0' );
        MapperItemOrcamento.SendValueToFieldEntidade('ValorICMS', '0' );
     end;

     //usUnmodified, usModified, usInserted, usDeleted
     if (TClientDataset(srcItens.dataSet).UpdateStatus = usInserted) or (prsOperacao = 'Insert') then
        Controller.Inserir(MapperItemOrcamento.Entidade)
     else
     if TClientDataset(srcItens.dataSet).UpdateStatus = usModified then
        Controller.Atualizar(MapperItemOrcamento.Entidade);

     srcItens.dataSet.next;

     MapperItemOrcamento.Entidade.free;

  end;
  RefreshDataSetItemOrcamento(CodigoOrcamento);
end;

procedure TFormOrcamentoDetalhes.btnExcluirClick(Sender: TObject);
begin
  inherited;
  RefreshDataSetItemOrcamento('0');
end;

procedure TFormOrcamentoDetalhes.btnInserirClick(Sender: TObject);
begin
  inherited;
  RefreshDataSetItemOrcamento('0');
  //CarregarProdutos;
  AjustaTamanhoGrid;
  cboSituacao.ItemIndex := 0;
  edtQuantidade.Text    := '1';
  ConsultaOrcamentoFormaPagamento('-1');
  dateData.Date       := date;
  dateVencimento.Date := date;
  edtAno.text         := '';
  cboCor.text         := '';
  cboModelo.text      := '';
  //cboFuncionario.ItemIndex:= cboFuncionario.Items.IndexOfObject(
   //                          TObject(strtoInt(FormPrincipal.CodigoPessoa)));
end;

procedure TFormOrcamentoDetalhes.AjustaTamanhoGrid;
begin

end;

procedure TFormOrcamentoDetalhes.SelecionarComissao;
var
  PercentualComissao: string;
  CodigoFuncionario: string;
begin
  if (edtCodigoItem.Text <> '') AND (ControllerProdutos.EhServico(edtCodigoItem.Text)) then
  begin
    CodigoFuncionario := FormPrincipal.ShowFuncionariosComboEditDialgo(tpFuncionarios, 'Funcion�rio');

    if (CodigoFuncionario <> '') and (edtCodigoItem.Text <> '') then
    begin
      PercentualComissao := TControllerOrcamento.GetValue(
                            TEntidadeFactory.GetNameEntidade(tpFuncionarioComissao) + ' T1 ', 'CodigoFuncionario=' +
                            CodigoFuncionario + ' and CodigoProduto=' + edtCodigoItem.Text, 'PercentualComissao');

      if ( strtofloatDef( PercentualComissao, 0 ) = 0 ) then
        PercentualComissao := TControllerOrcamento.GetValue(
                              TEntidadeFactory.GetNameEntidade(tpFuncionarios) + ' T1 ', 'Codigo=' +
                              CodigoFuncionario, 'ISNULL(Comissao,0) as Comissao');

      if (PercentualComissao <> '') then
      begin
        MapperItemOrcamento.SendValueToFieldEntidade('CodigoFuncionario' , CodigoFuncionario  );
        MapperItemOrcamento.SendValueToFieldEntidade('PercentualComissao', PercentualComissao );
      end
      else
        TDialogs.MensagemAtencao('Comiss�o do funcion�rio n�o est� liberado para este servi�o.');
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ShowFormClienteDetlahes( edtCPFCNPJ.text );

  FillLookUpCombobox( tpPessoa,
                      cboClientes,
                      'Codigo',
                      'Nome',
                      'TIPO=''CLIENTE''' );
end;

procedure TFormOrcamentoDetalhes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ShowProdutosListagem('T1.Codigo='+ quotedstr(edtCodigoItem.text) );
  CarregarProdutos;
end;

procedure TFormOrcamentoDetalhes.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActFormaPagamentos.execute;
  FillCombobox( tpFormaPagamento , cboFormaPagamento);
end;

procedure TFormOrcamentoDetalhes.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActModelos.Execute;
  FillCombobox( tpModeloVeiculo, cboModelo );
end;

procedure TFormOrcamentoDetalhes.StringGrid1CellClick(Column: TColumn);
begin
  inherited;
  MapperOrcamentoFormaPagamento.Dataset := srcOrcamentoFormaPagamento.DataSet;
  MapperOrcamentoFormaPagamento.SendDataSetToEntidade;
  MapperOrcamentoFormaPagamento.EntidadeToComponent;
end;

procedure TFormOrcamentoDetalhes.TabSheet2Show(Sender: TObject);
begin
  inherited;
  if not srcEntidade.DataSet.isEmpty then
  begin
    if srcEntidade.DataSet.fieldByname('Codigo').asstring <> '' then
       ConsultaOrcamentoFormaPagamento(srcEntidade.DataSet.fieldByname('Codigo').asstring)
    else
       ConsultaOrcamentoFormaPagamento('-1');
  end;
  TotalLizarOrcamentoFormaPagamento;
end;

procedure TFormOrcamentoDetalhes.TabSheet3Show(Sender: TObject);
begin
  inherited;
  if MapperEntidade.Dataset.FieldByName('Placa').AsString <> '' then
  begin
    if DirectoryExists( extractfilepath(application.ExeName)+'fotos\'+
                              MapperEntidade.Dataset.FieldByName('Placa').AsString)  then
     FileListBox1.Directory:= extractfilepath(application.ExeName)+'fotos\'+
                              MapperEntidade.Dataset.FieldByName('Placa').AsString;
  end;
end;

procedure TFormOrcamentoDetalhes.GetOrcamento(CodigoOrcamento: string);
begin
  Condicao := 'T1.Codigo=' + CodigoOrcamento;
  srcEntidade.Dataset := Controller.GetSelect(ControllerOrcamento.ConsultaTabela, Condicao, CamposOrcamento);
  MapperEntidade.Dataset := srcEntidade.Dataset;
end;

procedure TFormOrcamentoDetalhes.ConsultaOrcamentoFormaPagamento(CodigoOrcamento: string);
begin
  OrcamentoFormaPagamento := TEntidadeFactory.Criar(tpOrcamentoFormaPagamento);

  srcOrcamentoFormaPagamento.DataSet := TControllerOrcamento(Controller).GetDataSet(
                                        OrcamentoFormaPagamento,
                                       'CodigoOrcamento='+ quotedstr(CodigoOrcamento),
                                        CamposOrcamentoFormaPagamento);

  MapperOrcamentoFormaPagamento.DataSet := srcOrcamentoFormaPagamento.DataSet;
  MapperOrcamentoFormaPagamento.Entidade:= OrcamentoFormaPagamento;
end;

procedure TFormOrcamentoDetalhes.VerificarModelo(Modelo: string);
begin
  if Modelo <> '' then
  begin
    if TControllerOrcamento(Controller).GetValue('ModeloVeiculo',
     'Descricao=' +quotedstr( Modelo ), 'Codigo') = '' then
    begin
      showmessage('Modelo n�o cadastrado!');
      abort;
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.AdicionarItem;
begin
  if edtCodigoItem.Text <> '' then
  begin
    PersistirItemOrcamento;
    edtOrdem.Text := '';
    edtCodigoItem.Text := '';
    cboProduto.KeyValue := Null;
    edtQuantidade.Text := '1';
    edtValor.Text := '0';
    edtDescontoItem.Text := '0';
    cboUnidadeMedida.itemindex := -1;
    edtValorDesconto.Text:= '0';
    TotalizarOrcamento;
  end;
end;

procedure  TFormOrcamentoDetalhes.CarregarProdutos;
begin
  srcProdutos.DataSet := ControllerProdutos.GetSelect('Produtos T1 ',
  'Coalesce(Ativo,''S'')=''S'' Order By Descricao','Codigo, Descricao');
end;

procedure TFormOrcamentoDetalhes.cboClientesExit(Sender: TObject);
begin
  inherited;
  DataSetCliente  := TControllerClientes.GetCliente(string(cboClientes.KeyValue));
  edtCPFCNPJ.Text := DataSetCliente.FieldByName('CPFCNPJ').AsString;
  VerificarCPFCNPJ( edtCPFCNPJ.text, edtPlaca.text );

 { VerificarPlaca( ifThen( cboClientes.text <> '' ,
                  string( cboClientes.keyvalue ), '') ,
                  edtPlaca.text );}

end;

procedure TFormOrcamentoDetalhes.cboFormaPagamentoSelect(Sender: TObject);
begin
  inherited;
  if cboFormaPagamento.text <> '' then
  begin
     dateVencimento.date := date + strtoint( TControllerOrcamento(Controller).GetValue('FormaPagamento',
                                   'Descricao='+ quotedstr( cboFormaPagamento.text),
                                   'ISNULL(DiasVencimento,0) as DiasVencimento') );
  end;
end;

procedure TFormOrcamentoDetalhes.cboProdutoCloseUp(Sender: TObject);
begin
  inherited;
  edtCodigoItem.Text:= cboProduto.keyvalue;
end;

procedure TFormOrcamentoDetalhes.PersistirItemOrcamento;
var
  DescricaoProduto: string;
  Update: Boolean;
  Count: Integer;
  total:double;
begin
  with MapperItemOrcamento do
  begin
    if edtOrdem.text = '' then
    begin
      Entidade := TEntidadeFactory.Criar(tpItemOrcamento);
      DataSet := srcItens.DataSet;
      SelecionarComissao;
    end
    else
    if srcItens.Dataset.fieldbyname('CodigoFuncionario').asinteger <= 0 then
       SelecionarComissao;

    if strtofloatDef( edtValorDesconto.Text ,0) > 0 then
    begin
       if strtofloatDef( edtQuantidade.Text,0) * strtofloatDef( edtValor.Text,0) > 0 then
       begin
         total:= strtofloatDef( edtValorDesconto.Text ,0) * 100 /
                                                      ( strtofloatDef( edtQuantidade.Text,0) *
                                                        strtofloatDef( edtValor.Text,0) );
          edtDescontoItem.Text:= FormatFloat(',0.00', total );
       end;
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

      srcItens.DataSet.fieldbyname('Selecionado').asstring :='X';
      srcItens.DataSet.Post;
    end
    else
    begin
      srcItens.DataSet.edit;

      DescricaoProduto := cboProduto.text;
      SendValueToFieldDataSet('Descricao', DescricaoProduto);
      SendEntidadeToDataSet;
      srcItens.DataSet.fieldbyname('Selecionado').asstring :='X';
      srcItens.DataSet.Post;
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.VerificarCPFCNPJ(CPFCNPJ, Placa: string);
var
  DataSetClientes: TDataSet;
  CPFContato,  NomeContato: string;
begin
  if CPFCNPJ <> '' then
  begin
    DataSetClientes := TControllerClientes.GetClienteContatoCPF(CPFCNPJ);
    if (DataSetClientes <> nil) and (not DataSetClientes.IsEmpty) then
    begin
      try
         if length(SoNumeros(CPFCNPJ)) = 14 then
            FormPrincipal.SelecionarContato( DataSetClientes.FieldByName('Codigo').AsString,
                                             CPFContato,
                                             NomeContato );

         if (NomeContato <> '') and (CPFContato <> '') then
         begin
           lbContato.Caption := NomeContato +'  '+ CPFContato;
           MapperEntidade.SendValueToFieldEntidade('Contato', lbContato.Caption  );
         end;

      finally
          if DataSetClientes.fieldByName('Autorizado').AsString = 'SIM' then
          begin
             MapperEntidade.SendValueToFieldEntidade('CodigoCliente', DataSetClientes.FieldByName('Codigo').AsString);

             edtCPFCNPJ.text       := DataSetClientes.FieldByName('CPFCNPJ').AsString;
             cboClientes.KeyValue  := DataSetClientes.FieldByName('Codigo').AsString;
             lbtelefone.caption    := DataSetClientes.FieldByName('Telefone').AsString;
             lbrazao.caption       := DataSetClientes.FieldByName('RazaoSocial').AsString;
             if DataSetClientes.fieldbyname('ContaAtrasada').asInteger > 0 then
             begin
                lbCNPJ.font.color := clred;
                showmessage('Cliente possui conta em atraso!');
             end
             else
                lbCNPJ.font.color := clblue;
          end
          else
             TDialogs.MensagemAtencao('Cliente ou Contato n�o autorizado!');
      end;
    end
    else
    if TDialogs.ConfirmarMensagem('Este cliente n�o foi encontrado. Deseja cadastrar ?') then
    begin
      FormPrincipal.ShowFormClienteDetlahes(CPFCNPJ );
    end;
    if DataSetClientes <> nil then
      DataSetClientes.Free;
  end;
end;

procedure TFormOrcamentoDetalhes.VerificarPlaca(CodigoCliente, Placa: string);
var
  DataSetClientes: TDataSet;
begin
  if Placa <> '' then
  begin
    DataSetClientes := TControllerClientes.GetClientePlaca( CodigoCliente , Placa);
    if (DataSetClientes <> nil) and (not DataSetClientes.IsEmpty) then
    begin
      with DataSetClientes do
      begin
        edtCPFCNPJ.text       := FieldByName('CPFCNPJ').AsString;
        cboClientes.KeyValue  := FieldByName('Codigo').AsString;
        lbrazao.caption       := FieldByName('RazaoSocial').AsString;
        lbtelefone.caption    := FieldByName('Telefone').AsString;
        cboModelo.ItemIndex   := cboModelo.Items.IndexOf(FieldByName('Modelo').AsString);
        edtAno.text           := FieldByName('Ano').AsString;
        cboCor.text           := FieldByName('Cor').AsString;
      end;
    end;
  end;
end;

procedure TFormOrcamentoDetalhes.VisualizarFatura1Click(Sender: TObject);
begin
  inherited;
  formPrincipal.ShowRecebimentosListagem( 'CodigoOrcamentoFormaPagamento='+ quotedstr(
                                           srcOrcamentoFormaPagamento.dataset.fieldbyname('Codigo').asstring ) );
end;

procedure TFormOrcamentoDetalhes.GetItemOrcamento;
begin
  if ItemOrcamento <> nil then
    FreeandNil(ItemOrcamento);
  ItemOrcamento := TEntidadeFactory.Criar(tpItemOrcamento);
  MapperItemOrcamento.Entidade := ItemOrcamento;
  MapperItemOrcamento.Dataset := srcItens.DataSet;
  MapperItemOrcamento.SendDataSetToEntidade;
  MapperItemOrcamento.EntidadeToComponent;
end;

procedure TFormOrcamentoDetalhes.GetOrcamentoPesquisa(Codigo: string = '');
var
  CodigoOrcamento: string;
begin
  if Codigo = '' then
     CodigoOrcamento := FormPrincipal.SelectOrcamento
  else
     CodigoOrcamento := Codigo;


 if CodigoOrcamento <> '' then
  begin
    GetOrcamento(CodigoOrcamento);
    MapperEntidade.SendValueToFieldEntidade('CodigoCliente',
    MapperEntidade.DataSet.FieldByName('CodigoCliente').AsString);
    MapperEntidade.EntidadeToComponent;
    RefreshDataSetItemOrcamento;
    TotalizarOrcamento;
    VerificarPlaca(MapperEntidade.DataSet.FieldByName('CodigoCliente').AsString,
                   edtPlaca.text);
  end;

end;

procedure TFormOrcamentoDetalhes.btnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFormOrcamentoDetalhes.Button1Click(Sender: TObject);
Var
  CodigoFormaPagameto: string;

begin
  inherited;
  if Operacao <> '' then
  begin
      CodigoFormaPagameto := inttostr(Integer(cboFormaPagamento.Items.Objects[cboFormaPagamento.itemindex]));

      CodigoFormaPagameto := TControllerOrcamento(Controller).GetValue('PessoaFormaPagamento',
                                    '"CodigoFormaPagamento" ='+ CodigoFormaPagameto +' and '+
                                    '"CodigoPessoa" ='+ string(cboClientes.keyValue) ,
                                    'CodigoFormaPagamento' );

      if strtofloatDef(edtValorFormaPagamento.text,0) < 0  then
      begin
        TDialogs.MensagemAtencao('Informe o valor');
        abort;
      end;

      if CodigoFormaPagameto <> '' then
      begin
        MapperOrcamentoFormaPagamento.ComponentToEntidade;

        srcOrcamentoFormaPagamento.DataSet.append;
        with MapperOrcamentoFormaPagamento do
        begin
            DataSet := srcOrcamentoFormaPagamento.DataSet;
            SendValueToFieldDataSet('Codigo', inttostr(DataSet.recno) );
            SendValueToFieldDataSet('CodigoFilial', '1' );
            SendValueToFieldDataSet('CodigoFormaPagamento',CodigoFormaPagameto);
            SendValueToFieldDataSet('Valor', edtValorFormaPagamento.text);
            SendValueToFieldDataSet('ValorPago', edtValorFormaPagamento.text);
            SendValueToFieldDataSet('PercentualDesconto' , edtdesconto.Text );
            SendValueToFieldDataSet('QuantidadePercelas' , '0');
            SendValueToFieldDataSet('Vencimento', datetostr(dateVencimento.date) );
            SendValueToFieldDataSet('CodigoOrcamento', '1');
            DataSet.fieldByName('Descricao').asstring := cboFormaPagamento.text;
        end;
      end
      else
        TDialogs.MensagemAtencao('Forma de pagamento n�o dispon�vel!');

      TotalLizarOrcamentoFormaPagamento;
  end
  else
     showmessage('Or�amento n�o est� em modo de edi��o!');
end;

procedure TFormOrcamentoDetalhes.Button2Click(Sender: TObject);
begin
  inherited;
  srcOrcamentoFormaPagamento.DataSet.delete;
  TotalLizarOrcamentoFormaPagamento;
end;

procedure TFormOrcamentoDetalhes.Button3Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ShowRelOrcamento(srcEntidade.DataSet,
                                 srcItens.DataSet,
                                 srcOrcamentoFormaPagamento.DataSet);
end;

procedure TFormOrcamentoDetalhes.CornerButton1Click(Sender: TObject);
begin
  inherited;
  if not srcItens.Dataset.isEmpty then
  begin
    if ( Operacao = 'Update') and (MapperItemOrcamento.Entidade <> nil ) then
    begin
       Controller.Excluir( MapperItemOrcamento.Entidade );
       srcItens.Dataset.delete;
    end
    else
       srcItens.Dataset.delete;
    TotalizarOrcamento;
  end;
end;

procedure TFormOrcamentoDetalhes.FileListBox1Change(Sender: TObject);
begin
  inherited;
  Image5.Picture.LoadFromFile(FileListBox1.FileName);
end;

procedure TFormOrcamentoDetalhes.FormCreate(Sender: TObject);
var
//ItemOrcamento:TGenericEntidade;
  CodigoOrcamento: string;
begin
  Controller         := TControllerOrcamento.Create;
  ControllerProdutos := TControllerProdutos.Create;
  Entidade           := TEntidadeFactory.Criar(tpOrcamento);
  Tabela             := ControllerOrcamento.ConsultaTabela;
  Campos             := ControllerOrcamento.CamposOrcamento;
  ItemOrcamento      := TEntidadeFactory.Criar(tpItemOrcamento);
  Condicao           := '0=1';

  inherited;

  MapearCamposOrcamento;
  MapearCamposItemOrcamento;
  MapearOrcamentoFormaPagamento;
  RefreshDataSetItemOrcamento;

  TotalizarOrcamento;
  FillCombobox( tpFormaPagamento , cboFormaPagamento);
  FillCombobox( tpModeloVeiculo, cboModelo );
  FillCombobox( tpUnidadeMedida, cboUnidadeMedida );

  TabControl1.ActivePageIndex := 0;
  FillLookUpCombobox( tpFuncionarios, cboFuncionarios,'Codigo','Nome', 'SITUACAO=''ATIVO''' );
  FillLookUpCombobox( tpPessoa, cboClientes,'Codigo','Nome', 'TIPO=''CLIENTE''' );
  FillLookUpCombobox( tpTabelaPreco, cboCodigoTabelaPreco,'Codigo','Descricao', 'Validade >= GetDate() ' );

  CarregarProdutos;
  ConsultaOrcamentoFormaPagamento(srcEntidade.DataSet.fieldByname('Codigo').asstring);
  //Formprincipal.AjustaForm(self);
end;

procedure TFormOrcamentoDetalhes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = vk_F10 then
  begin
    srcItens.DataSet.edit;
    SelecionarComissao;
    MapperItemOrcamento.SendEntidadeToDataSet;
  end;
end;

procedure TFormOrcamentoDetalhes.FormShow(Sender: TObject);
begin
  inherited;
  ShowLembrete;
end;

procedure  TFormOrcamentoDetalhes.ShowLembrete;
var
   ControllerLembrete: TControllerTabelas;
   DataSet : TDataset;
   FormLembrete: TForm;
begin
  inherited;
  try
     ControllerLembrete:= TControllerTabelas.create;
     DataSet := TControllerTabelas(ControllerLembrete).GetDataSet(
                TEntidadeFactory.Criar(tpLembretes),
                'coalesce( encerrado , ''N'') <> ''S'' ');
     if not DataSet.isempty then
     begin
       FormLembrete := FormPrincipal.ShowForm(TFormLembretesExibir,nil,false,false);
       TFormLembretesExibir(FormLembrete).srcLembretes.DataSet := DataSet;
       TFormLembretesExibir(FormLembrete).ShowModal;
       FormLembrete.Free;
     end;
  finally
     DataSet.free;
     ControllerLembrete.free;
  end;
end;

procedure TFormOrcamentoDetalhes.MapearCamposOrcamento;
begin
  with MapperEntidade do
  begin
    Associar('Codigo', edtCodigo);
    Associar('Placa', edtPlaca);
    Associar('Data', dateData);
    Associar('Desconto', nil);
    Associar('Situacao', cboSituacao);
    Associar('Observacao', memoObservacao);
    Associar('CodigoCliente', cboClientes );
    Associar('CodigoFuncionario', cboFuncionarios );

    Associar('CPFCNPJ', edtCPFCNPJ);
    Associar('RazaoSocial', lbrazao);
    Associar('Telefone', lbtelefone);

    //DADOS DE VISTORIA
    Associar('opcaofarolMilha',		cbofarolMilha);
    Associar('opcaoChaveRoda',		cboChaveRoda);
    Associar('opcaoMacaco',			cboMacaco);
    Associar('opcaoAutoFalantes',	cboAutoFalantes);
    Associar('opcaoCdPlayer',		cboCdPlayer);
    Associar('opcaoTriangulo',		cboTriangulo);
    Associar('opcaoEstepe',			cboEstepe);
    Associar('opcaoPneusTraseiros', cboPneusTraseiros);
    Associar('opcaoTapete',			cboTapete);
    Associar('opcaoExtintor',		cboExtintor);
    Associar('opcaoCalotas',		cboCalotas);
    Associar('opcaoChave',			cboChave);
    Associar('opcaoBateria',		cboBateria);
    Associar('opcaoManual',			cboManual);
    Associar('opcaoPneusDianteiro', cboPneusDianteiro);
    Associar('opcaoAcendendor',		cboAcendendor);
    Associar('opcaoRodas',			cboRodas);

    Associar('TextRodas',			edtRodas);
    Associar('TextFarolMilha',		edtFarolMilha);
    Associar('TextChaveRoda',		edtChaveRoda);
    Associar('TextMacaco',			edtMacaco);
    Associar('TextObjetos',			edtObjetos);
    Associar('TextAutoFalantes',	edtAutoFalantes);
    Associar('TextCDPlayer',		edtCDPlayer);
    Associar('TextTriangulo',		edtTriangulo);
    Associar('TextEstepe',			edtEstepe);
    Associar('TextPneusTraseiros',	edtPneusTraseiros);
    Associar('TextTapete',			edtTapete);
    Associar('TextExtintor',		edtExtintor);
    Associar('TextCalotas',			edtCalotas);
    Associar('TextChave',			edtChave);
    Associar('TextBateria',			edtBateria);
    Associar('TextManual',			edtManual);
    Associar('TextPneusDianteiro',	edtPneusDianteiro);
    Associar('TextAcendedor',		edtAcendedor);
  //Associar('Ordem',		edtOrdemServico);
    Associar('Contato',		lbContato );
    Associar('ObservacaoVistoria', memoObservacaoVistoria );
    Associar('DataInicio',		lbdatahorainicio );
    Associar('CodigoTabelaPreco',		cboCodigoTabelaPreco );
  end;
end;

procedure TFormOrcamentoDetalhes.MapearOrcamentoFormaPagamento;
begin
   MapperOrcamentoFormaPagamento:= TMapper.Create(nil, nil);
   with MapperOrcamentoFormaPagamento do
   begin
      Associar('CodigoOrcamento', nil);
      Associar('CodigoFormaPagamento', cboFormaPagamento);
      Associar('Valor', edtValorFormaPagamento);
      Associar('PercentualDesconto', nil);
      Associar('QuantidadePercelas', nil);
      Associar('Vencimento', dateVencimento);
      Associar('ValorPago', nil);

    //Associar('Opcao', cboOpcao);
   end;
end;

procedure TFormOrcamentoDetalhes.grdItensCellClick(Column: TColumn);
begin
  inherited;
  if (Operacao = 'Update') or (Operacao = 'Insert') then
  begin
    GetItemOrcamento;
  end;
end;

procedure TFormOrcamentoDetalhes.lbMarcaDblClick(Sender: TObject);
begin
  inherited;
  if edtCPFCNPJ.Text <> '' then
  FormPrincipal.ShowFormClienteDetlahes(edtCPFCNPJ.Text);
end;

procedure TFormOrcamentoDetalhes.lbNomeClienteDblClick(Sender: TObject);
begin
  inherited;
    if edtCPFCNPJ.Text <> '' then
  FormPrincipal.ShowFormClienteDetlahes(edtCPFCNPJ.Text );
end;

procedure TFormOrcamentoDetalhes.MapearCamposItemOrcamento;
begin
  MapperItemOrcamento   := TMapper.create(nil,
                           srcItens.DataSet );

  with MapperItemOrcamento do
  begin
    Associar('CodigoOrcamento', nil);
    Associar('Codigo', nil);
    Associar('Ordem', edtOrdem);
    Associar('CodigoFilial', nil);
    Associar('CodigoProduto', edtCodigoItem);

    Associar('Quantidade', edtQuantidade);
    Associar('Valor', edtValor);

    Associar('Desconto', edtDescontoItem);
    Associar('CodigoProduto', cboProduto);
    Associar('CodigoFuncionario', nil);
    Associar('PercentualComissao', nil);
    Associar('CodigoUnidade', cboUnidadeMedida);
  //Associar('ValorBasecalculoICMS_ST', nil);
  //Associar('PercentualICMS_ST',nil);
  //Associar('ValorICMS_ST', nil);
  //Associar('ValorBasecalculoICMS_RET', nil);
  //Associar('PercentualICMS_RET', nil);
  //Associar('ValorICMS_RET', nil);
  //Associar('ValorBasecalculoPIS', nil);
  //Associar('PercentualPIS',nil);
  //Associar('ValorPIS', nil);
  //Associar('ValorBasecalculoPIS_ST', nil);
  //Associar('PercentualPIS_ST', nil);
  //Associar('ValorPIS_ST', nil);
  //Associar('ValorBasecalculoCOFINS_ST', nil);
  //Associar('PercentualCOFINS_ST', nil);
  //Associar('ValorCOFINS_ST', nil);
  //Associar('ValorBasecalculoIPI', nil);
  //Associar('PercentualIPI', nil);
  //Associar('ValorIPI', nil);
    Associar('ValorBasecalculoICMS', nil);
    Associar('PercentualICMS', nil);
    Associar('ValorICMS', nil);
    Associar('CFOP', nil);
    Associar('SitA', nil);
    Associar('SitB', nil);

  end;
end;

procedure TFormOrcamentoDetalhes.TotalizarOrcamento;
var
  I: Integer;
  Valor:Double;
begin
  try
    TotalCobrado := 0;
    TotalResto   := 0;

    srcItens.dataset.first;
    Valor := 0;
    while not srcItens.dataset.eof do
    begin
      Valor :=  Valor + srcItens.dataset.fieldByName('Valor').asFloat *
                        srcItens.dataset.fieldByName('Quantidade').asFloat
                        - ( srcItens.dataset.fieldByName('Valor').asFloat *
                        srcItens.dataset.fieldByName('Quantidade').asFloat *
                        srcItens.dataset.fieldByName('Desconto').asFloat / 100 );
      srcItens.dataset.next;
    end;
  finally
    Valor :=  Valor - (Valor * srcEntidade.dataset.fieldByName('Desconto').asFloat / 100 );
    lbTotal.caption := FormatFloat(',0.00;', valor );
    TotalOrcamento  := valor;
  end;
end;

procedure TFormOrcamentoDetalhes.RefreshDataSetItemOrcamento(Codigo: string ='');
var
  CodigoOrcamento: string;
begin
  CodigoOrcamento:= ifthen( Codigo <> '',
                            Codigo ,
                            MapperEntidade.DataSet.FieldByName('Codigo').AsString);

  srcItens.Dataset := Controller.GetSelect( ConsultaTabelaItem,
                      'CodigoOrcamento=' +
                      ifthen(CodigoOrcamento <> '',CodigoOrcamento,'0') ,
                      CamposItemOrcamento);

  TfloatField(srcItens.dataset.fieldbyname('Valor')).DisplayFormat := '0.00;';
  TfloatField(srcItens.dataset.fieldbyname('Total')).DisplayFormat := '0.00;';

  MapperItemOrcamento.Dataset:= srcItens.Dataset;
end;

procedure TFormOrcamentoDetalhes.edtCodigoItemChange(Sender: TObject);
begin
  inherited;
  if edtCodigoItem.text <> '' then
  begin
    edtValor.text       := FormatFloat('0.00;',
    ControllerProdutos.GetPrecoVenda(edtCodigoItem.text,'', VarToStr(cboCodigoTabelaPreco.KeyValue) ));
    cboProduto.KeyValue := edtCodigoItem.Text;
    cboUnidadeMedida.ItemIndex := cboUnidadeMedida.Items.IndexOf('UN');
  end;
end;

procedure TFormOrcamentoDetalhes.edtCPFCNPJExit(Sender: TObject);
var
  cpfcnpj: string;
begin
  inherited;
  cpfcnpj := SoNumeros(edtCPFCNPJ.text);

  if (edtCPFCNPJ.text <> '') //and (cpfcnpj <> '00000000000')
  then
  begin
     if length(cpfcnpj) = 11 then
     begin
        edtCPFCNPJ.text :=copy(cpfcnpj,0,3)+'.'+copy(cpfcnpj,4,3)+'.'+copy(cpfcnpj,7,3)+'-'+copy(cpfcnpj,10,2);
        if not UtilsString.Cpf(cpfcnpj) then
        begin
           showmessage('CPF Inv�lido');
           abort;
        end;
     end
     else
     begin
         if not UtilsString.cnpj(cpfcnpj) then
        begin
           showmessage('CPF Inv�lido');
           abort;
        end;

        edtCPFCNPJ.text:=copy(cpfcnpj,0,2)+'.'+copy(cpfcnpj,3,3)+'.'+copy(cpfcnpj,6,3)+'/'+copy(cpfcnpj,9,4)+'-'+copy(cpfcnpj,13,2);
     end;
     VerificarCPFCNPJ(edtCPFCNPJ.text, edtPlaca.text);
  end;
end;

procedure TFormOrcamentoDetalhes.edtDescontoItemExit(Sender: TObject);
begin
  inherited;
  AdicionarItem;
end;

procedure TFormOrcamentoDetalhes.edtPlacaExit(Sender: TObject);
begin
  inherited;
  if cboClientes.text = '' then
     VerificarPlaca('', edtPlaca.text);
end;

procedure TFormOrcamentoDetalhes.edtPlacaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #32 then
   Key := #0;
  EditPress(sender, key);
end;

procedure TFormOrcamentoDetalhes.TotalLizarOrcamentoFormaPagamento;
var
  Total:Double;
begin
   Total := 0;
   srcOrcamentoFormaPagamento.dataset.first;
   while not srcOrcamentoFormaPagamento.dataset.eof do
   begin
     Total := Total + srcOrcamentoFormaPagamento.dataset.fieldbyname('Liquido').asFloat;
     srcOrcamentoFormaPagamento.dataset.next;
   end;

   TotalCobrado := Total;
   TotalResto   := TotalOrcamento - Total;

   lbTotalCobrado.caption := FormatFloat(',0.00;', TotalCobrado );
   lbResto.caption        := FormatFloat(',0.00;', TotalResto * -1);
end;

end.
