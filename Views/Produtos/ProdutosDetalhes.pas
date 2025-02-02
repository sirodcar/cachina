unit ProdutosDetalhes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  Graphics, Controls, Forms, Dialogs,  TemplateDetalhesComTabGrid, System.Rtti, Data.DB,
  GenericEntidade, ControllerTabelas, Mapper, Vcl.Grids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, DBClient,
  Vcl.Menus, Vcl.DBCtrls;

type
  TFormProdutosDetalhes = class(TTemplateFormComTabGridDetalhes)
    srcParametrosPrecoVenda: TDataSource;
    srcClassificacaoCliente: TDataSource;
    TabControl1: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    MemoObservacao: TMemo;
    Label11: TLabel;
    Label4: TLabel;
    cboSubGrupo: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    cboGrupo: TDBLookupComboBox;
    cboFamilia: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    edtDescricao: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    edtReferencia: TEdit;
    Label7: TLabel;
    edtCustoCompra: TEdit;
    Label17: TLabel;
    edtSimplesNacional: TEdit;
    Label21: TLabel;
    edtTaxa: TEdit;
    Label15: TLabel;
    edtComissao: TEdit;
    Label9: TLabel;
    edtDesconto: TEdit;
    Label18: TLabel;
    edtCustoFixos: TEdit;
    Label16: TLabel;
    edtMargemLucro: TEdit;
    Label27: TLabel;
    lbTotal: TLabel;
    Total: TLabel;
    edtValorVenda: TEdit;
    Label5: TLabel;
    edtValorBase: TEdit;
    lbValorLucroCartao: TLabel;
    Label26: TLabel;
    lbPercentualLucroCartao: TLabel;
    lbValorLucro: TLabel;
    lbPercentualLucro: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label19: TLabel;
    edtMarkup: TEdit;
    edtParamLucro: TEdit;
    edtParamCustoFixo: TEdit;
    edtParamDesconto: TEdit;
    edtParamComissao: TEdit;
    edtParamTaxa: TEdit;
    edtParamImpostoSimples: TEdit;
    cboParametrosPrecoVenda: TComboBox;
    cboTipo: TComboBox;
    Label28: TLabel;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    srcEstoqueProduto: TDataSource;
    Label32: TLabel;
    cboUnidadeMedida: TComboBox;
    SpeedButton1: TSpeedButton;
    Label33: TLabel;
    edtEstoqueMinimo: TEdit;
    CurvaABC1: TMenuItem;
    TabSheet6: TTabSheet;
    Label29: TLabel;
    SpeedButton5: TSpeedButton;
    edtCodigoCEST: TEdit;
    Label34: TLabel;
    CurvaABCPorFamiliadeprodutos1: TMenuItem;
    SpeedButton6: TSpeedButton;
    cboCodigoServicoNFSe: TComboBox;
    Label35: TLabel;
    Label36: TLabel;
    cboCodigoProdutoServico: TComboBox;
    chkAtivo: TCheckBox;
    PopupMenu1: TPopupMenu;
    AlterarFamlia1: TMenuItem;
    cboCodigoNCM: TDBLookupComboBox;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    ProdutosporFamiliaGrupoSubGrupo1: TMenuItem;
    Label37: TLabel;
    edtCodigoBarras: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure edtCustoCompraChange(Sender: TObject);
    procedure edtParamComissaoChange(Sender: TObject);
    procedure edtParamCustoFixoChange(Sender: TObject);
    procedure edtParamDescontoChange(Sender: TObject);
    procedure edtParamImpostoSimplesChange(Sender: TObject);
    procedure edtParamLucroChange(Sender: TObject);
    procedure edtParamTaxaChange(Sender: TObject);
    procedure edtValorBaseChange(Sender: TObject);
    procedure edtValorVendaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure cboParametrosPrecoVendaExit(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure CurvaABC1Click(Sender: TObject);
    procedure CurvaABCPorFamiliadeprodutos1Click(Sender: TObject);
    procedure AlterarFamlia1Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure cboFamiliaCloseUp(Sender: TObject);
    procedure cboGrupoCloseUp(Sender: TObject);
    procedure ProdutosporFamiliaGrupoSubGrupo1Click(Sender: TObject);
  private
    //ClassificacaoCliente: TGenericEntidade;

    ControllerTabelas: TControllerTabelas;
    //FieldsMapListParametros: TStringList;
    ParametrosPrecoVenda: TGenericEntidade;
    MapperParametrosPrecoVenda:TMapper;

    procedure AtualizarMarKup;
    procedure CalculaLucroSobrePrecoCartao;
    procedure CalculaLucroSobrePrecoSugerido;
    function CalculaTotalMarkup: Double;
    procedure CalculaValor(Tipo: string; AtualizaMarKup: boolean= true);

    procedure ConsultaClassificacaoCliente(Valor, Lucro: Double);
    procedure ConsultarParametroPrecoVenda;


    procedure MapearParametrosPrecoVenda;
    procedure MapearProduto;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosDetalhes: TFormProdutosDetalhes;

implementation

uses ControllerProdutos, EntidadeFactory, UtilsNumeros, DBUtils,
  Principal, RelCurvaABC, AlterarProdutos, RelProdutos, RelProdutosFamiliaGrupo;

{$R *.dfm}


procedure TFormProdutosDetalhes.FormCreate(Sender: TObject);
begin
  Controller           := TControllerProdutos.Create;
  Entidade             := TEntidadeFactory.Criar(tpProduto);
//ClassificacaoCliente := TEntidadeFactory.Criar(tpClassificacaoCliente);
  ControllerTabelas    := TControllerTabelas.Create;
  Campos               := CamposProduto;
  Tabela               := Consultatabela;
  Condicao := '0=1';
  inherited;
  MapearProduto;
  MapearParametrosPrecoVenda;

  FillLookUpCombobox( tpFamilia,  cboFamilia);
  FillLookUpCombobox( tpGrupo, cboGrupo);
  FillLookUpCombobox( tpSubGrupo, cboSubGrupo);

  FillCombobox( tpParametrosPrecoVenda, cboParametrosPrecoVenda);
  FillCombobox( tpUnidadeMedida, cboUnidadeMedida);

  FillLookUpCombobox( tpTabelaNCM, cboCodigoNCM ,'CodigoNCM','(CodigoNCM+'' - ''+Descricao)');

 { FillCombobox( tpTabelaNCM,
  cboCodigoNCM,
  '0=0',
  'Codigo',
  ' (CodigoNCM +''  '' +  Descricao) as Descricao ',
  'CodigoNCM'); }

  FillCombobox( tpTabelaNFSe,
  cboCodigoServicoNFSe,
  '0=0',
  'Codigo',
  ' (CodigoNFSe +''  '' +  Descricao) as Descricao ',
  'CodigoNFSe');

   FillCombobox( tpProduto,
    cboCodigoProdutoServico,
    'Tipo=''SERVICO'' or Tipo=''SERVI�O'' ',
    'Codigo',
    'Descricao');

end;

procedure TFormProdutosDetalhes.TabSheet3Show(Sender: TObject);
begin
  inherited;
  srcEstoqueProduto.dataset:= TControllerProdutos(Controller).GetProdutoEstoque(
                              MapperEntidade.GetValueEntidade('Codigo'));
end;

procedure TFormProdutosDetalhes.TabSheet5Show(Sender: TObject);
begin
  inherited;
   ConsultaClassificacaoCliente(0,0);
  {
  srcParametrosPrecoVenda.DataSet,
  FieldsMapListParametros
  }
end;

procedure TFormProdutosDetalhes.MapearProduto;
begin
  with MapperEntidade do
  begin
    Associar('Codigo', nil);
    Associar('Descricao', edtDescricao);
    Associar('Observacao', MemoObservacao);
    Associar('CodigoFamilia', cboFamilia);
    Associar('CodigoGrupo', cboGrupo);
    Associar('CodigoSubGrupo', cboSubGrupo);
    Associar('Referencia', edtReferencia);
    Associar('SimplesNacional', edtSimplesNacional);
    Associar('PercentualEncargos', edtTaxa);
    Associar('MargemLucro', edtMargemLucro);
    Associar('PercentualComissao', edtComissao);
    Associar('PercentualDesconto', edtDesconto);
    Associar('PercentualCustoFixo', edtCustoFixos);
    Associar('CustoCompra', edtCustoCompra);
    Associar('CodigoParametroPrecoVenda', cboParametrosPrecoVenda);
    Associar('ValorVenda', edtValorBase);
    Associar('Tipo', cboTipo);
    Associar('CodigoNCM', cboCodigoNCM);
    Associar('CodigoUnidade', cboUnidadeMedida);
    Associar('EstoqueMinimo', edtEstoqueMinimo);
    Associar('CodigoServicoNFSe', cboCodigoServicoNFSe);
    Associar('CodigoCEST', edtCodigoCEST);
    Associar('CodigoProdutoServico', cboCodigoProdutoServico);
    Associar('Ativo', chkAtivo);
    Associar('CodigoBarras', edtCodigoBarras);

  end;
end;

procedure TFormProdutosDetalhes.Produtos1Click(Sender: TObject);
begin
  application.CreateForm(TFormRelProdutos, FormRelProdutos );
  FormRelProdutos.ClientDataSet1.Data := TClientDataSet(srcPesquisa.DataSet).data;

  FormRelProdutos.QuickRep1.PreviewModal;
  FormRelProdutos.FreeOnRelease;
  inherited;
end;

procedure TFormProdutosDetalhes.ProdutosporFamiliaGrupoSubGrupo1Click(
  Sender: TObject);
begin
  inherited;
  try
    application.CreateForm(TFormRelProdutosFamiliaGrupo, FormRelProdutosFamiliaGrupo );
    FormRelProdutosFamiliaGrupo.ClientDataSet1.Data := TClientDataSet(srcPesquisa.DataSet).data;
    FormRelProdutosFamiliaGrupo.ClientDataSet1.IndexFieldNames:='CodigoFamilia;GrupoProduto';
    FormRelProdutosFamiliaGrupo.ClientDataSet1.Filter :='CodigoFamilia is not null and CodigoFamilia > 0 ';
    FormRelProdutosFamiliaGrupo.ClientDataSet1.Filtered:= true;
    FormRelProdutosFamiliaGrupo.QuickRep1.PreviewModal;
  finally
    FormRelProdutosFamiliaGrupo.ClientDataSet1.Filtered:= false;
    FormRelProdutosFamiliaGrupo.FreeOnRelease;
  end;
end;

procedure TFormProdutosDetalhes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActUnidadeMedida.execute;
end;

procedure TFormProdutosDetalhes.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActFamilia.Execute;
end;

procedure TFormProdutosDetalhes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.Actgrupoproduto.Execute;
end;

procedure TFormProdutosDetalhes.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActSubgrupoProduto.Execute;
end;

procedure TFormProdutosDetalhes.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActTabelaNCM.Execute;

  {FillCombobox( tpTabelaNCM,
                cboCodigoNCM,
                '0=0',
                'Codigo',
                ' (CodigoNCM +''  '' +  Descricao) as Descricao',
                'CodigoNCM'); }



end;

procedure TFormProdutosDetalhes.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActTabelaNFSe.Execute;
end;

procedure TFormProdutosDetalhes.MapearParametrosPrecoVenda;
begin
  ConsultarParametroPrecoVenda;
  MapperParametrosPrecoVenda:= TMapper.Create(ParametrosPrecoVenda,
                                              srcParametrosPrecoVenda.DataSet);
  with MapperParametrosPrecoVenda do
  begin
    Associar('Codigo', nil);
    Associar('Descricao', edtDescricao);
    Associar('Adicional', nil);
    Associar('PercentualCartao', edtParamTaxa);
    Associar('PercentualComissao', edtParamComissao);
    Associar('PercentualCustoFixo', edtParamCustoFixo);
    Associar('PercentualCustoVariavel', nil);
    Associar('PercentualDesconto', edtParamDesconto);
    Associar('PercentualFolha', nil);
    Associar('PercentualImposto', edtParamImpostoSimples);
    Associar('PercentualLucro', edtParamLucro);
  end;
  MapperParametrosPrecoVenda.EntidadeToComponent;
end;

procedure TFormProdutosDetalhes.cboFamiliaCloseUp(Sender: TObject);
begin
  inherited;
  cboGrupo.Enabled:= cboFamilia.Text <> '';
  if cboGrupo.Enabled  then
  begin
     FillLookUpCombobox( tpGrupo,  cboGrupo, 'Codigo', ' Descricao ', 'CodigoFamilia In (Select Codigo From FamiliaProdutos where Descricao ='+ quotedstr(cboFamilia.Text)+')');
  end;
end;

procedure TFormProdutosDetalhes.cboGrupoCloseUp(Sender: TObject);
begin
  inherited;
  cboSubGrupo.Enabled:= cboGrupo.Text <> '';
  if cboSubGrupo.Enabled  then
  begin
     FillLookUpCombobox( tpSubGrupo, cboSubGrupo, 'Codigo', ' Descricao ','CodigoGrupo IN (Select Codigo From GrupoProdutos where Descricao ='+ quotedstr(cboGrupo.Text)+')');
  end;
end;

procedure TFormProdutosDetalhes.cboParametrosPrecoVendaExit(Sender: TObject);
begin
  inherited;
  MapperParametrosPrecoVenda.EntidadeToComponent;
end;

procedure TFormProdutosDetalhes.ConsultaClassificacaoCliente(Valor,Lucro: Double);
var
  sValor, sLucro: string;
begin
//FORMAT(EndOfDayRate, 'C', 'en-us')
  sValor := stringReplace(floattostr(Valor), ',', '.', []);
  sLucro := stringReplace(floattostr(Lucro), ',', '.', []);
  {
  srcClassificacaoCliente.DataSet := ControllerTabelas.GetSelect('ClassificacaoCliente','',
                                     'Descricao,' + 'Desconto, ' + '(' + sValor +
                                     ' - ('+ sValor +' * Desconto / 100 ) ) as Valor');
  TFloatField(srcClassificacaoCliente.DataSet.FieldByName('Valor')).DisplayFormat:= ',0.00;'
  CAST(Valor  AS decimal(15,2))
  }
end;

procedure TFormProdutosDetalhes.ConsultarParametroPrecoVenda;
var
  ControllerTabelas: TControllerTabelas;
begin
  ParametrosPrecoVenda := TEntidadeFactory.Criar(tpParametrosPrecoVenda);
  ControllerTabelas    := TControllerTabelas.Create;
//Consultar pelo GetSelect
  srcParametrosPrecoVenda.DataSet := ControllerTabelas.GetDataSet(ParametrosPrecoVenda,'');
end;

procedure TFormProdutosDetalhes.CurvaABC1Click(Sender: TObject);
begin
  inherited;
  application.CreateForm(TFormRelCurvaABC,FormRelCurvaABC );
  FormRelCurvaABC.GerarCurvaABC;
  FormRelCurvaABC.QuickRep1.PreviewModal;
  FormRelCurvaABC.FreeOnRelease;
end;

procedure TFormProdutosDetalhes.CurvaABCPorFamiliadeprodutos1Click(
  Sender: TObject);
begin
  inherited;
  application.CreateForm(TFormRelCurvaABC,FormRelCurvaABC );
  FormRelCurvaABC.GerarCurvaABC('familia');
  FormRelCurvaABC.QuickRep1.PreviewModal;
  FormRelCurvaABC.FreeOnRelease;
end;

procedure TFormProdutosDetalhes.CalculaValor(Tipo:string;AtualizaMarKup: boolean = true);
var
   PrecoVenda : TPrecoVenda;

   procedure CreatePrecoVenda;
   begin
     //PrecoVenda            := TPrecoVenda.Create;
     PrecoVenda.Custo      := strtofloatDef(edtCustoCompra.Text,0);
     PrecoVenda.Imposto    := strtofloatDef(edtSimplesNacional.Text,0);
     PrecoVenda.Lucro      := strtofloatDef(edtMargemLucro.Text,0);
     PrecoVenda.Comissao   := strtofloatDef(edtComissao.Text,0);
     PrecoVenda.Desconto   := strtofloatDef(edtDesconto.Text,0);
     PrecoVenda.CustoFixo  := strtofloatDef(edtCustoFixos.Text,0);
     PrecoVenda.Markup     := strtofloatDef(edtMarkup.Text,0);
     PrecoVenda.ValorVenda := strtofloatDef(edtValorVenda.Text,0);
   end;

begin
   try
   if Tipo = 'Imposto' then
      edtSimplesNacional.text:= FormatFloat(',0.00;',
                                ConvertPercentToValor(strtofloatDef(edtCustoCompra.Text,0),
                                strtofloatDef(edtValorVenda.Text,0)))
   else
   if Tipo = 'Comissao' then
      edtComissao.text   := FormatFloat(',0.00;',
                            ConvertPercentToValor(strtofloatDef(edtParamComissao.Text,0) ,
                            strtofloatDef(edtValorVenda.Text,0)))
   else
   if Tipo = 'CustoFixo' then
      edtCustoFixos.text := FormatFloat(',0.00;',
                            ConvertPercentToValor(strtofloatDef(edtParamCustoFixo.Text,0) ,
                            strtofloatDef(edtValorVenda.Text,0)))
   else
   if Tipo = 'Desconto' then
      edtDesconto.text   := FormatFloat(',0.00;', ConvertPercentToValor(strtofloatDef(edtParamDesconto.Text,0),
                                                                            strtofloatDef(edtValorVenda.Text,0)))

   else
   if Tipo = 'Taxa' then
     edtTaxa.text        := FormatFloat(',0.00;',
                            ConvertPercentToValor(strtofloatDef(edtParamTaxa.Text,0) ,
                            strtofloatDef(edtValorVenda.Text,0)))
   else
   if Tipo = 'TotalDespesasBruta'  then
   begin
     CreatePrecoVenda;
     lbTotal.caption      := FormatFloat(',0.00;', TControllerProdutos(Controller).CalculaTotalDespesas(PrecoVenda));
   end
   else
   if Tipo = 'Lucro'  then
   begin
     CreatePrecoVenda;
     edtMargemLucro.text  := FormatFloat(',0.00;', TControllerProdutos(Controller).CalculaLucro(PrecoVenda));
   end
   else
   if Tipo = 'PrecoSugerido' then
   begin
     CreatePrecoVenda;
     edtValorVenda.text  :=  FormatFloat(',0.00;', TControllerProdutos(Controller).CalculaPrecoSugerido(PrecoVenda));
     if strtointdef(edtValorBase.Text,0) = 0 then
        edtValorBase.text  :=  edtValorVenda.text;
   end;

   if AtualizaMarKup then
      AtualizarMarKup;
   except end;
end;

function TFormProdutosDetalhes.CalculaTotalMarkup:Double;
begin
   result:= strtofloatdef(edtParamImpostoSimples.text, 0) +
            strtofloatdef(edtParamComissao.text, 0)  +
            strtofloatdef(edtParamCustoFixo.text, 0)  +
            strtofloatdef(edtParamDesconto.text, 0) +
            strtofloatdef(edtParamTaxa.text, 0) +
            strtofloatdef(edtParamLucro.text, 0);
end;

procedure TFormProdutosDetalhes.AlterarFamlia1Click(Sender: TObject);
var
  I:Integer;
  Form:TForm;
  Selecionados:TBookmarkList;
begin
  inherited;
  Selecionados:= grdEntidade.SelectedRows;
  if Selecionados.Count > 0 then
  begin
    Form := FormPrincipal.ShowForm(TFormAlterarProdutos, nil, false);
    with Form as TFormAlterarProdutos do
    begin
       for I := 0 to Selecionados.Count - 1 do
       begin
         srcPesquisa.DataSet.GotoBookmark( Selecionados[i] );
         Produtos.Add(srcPesquisa.DataSet.FieldByName('Codigo').AsString);
       end;
       showmodal;
    end;
  end;
end;

procedure TFormProdutosDetalhes.AtualizarMarKup;
begin
  edtMarkup.text := FormatFloat(',0.00;', CalculaTotalMarkup );

  edtMargemLucro.text  := '0';
  CalculaValor('TotalDespesasBruta', false);
  CalculaValor('PrecoSugerido', false);
  CalculaValor('Lucro',false);
  CalculaValor('TotalDespesasBruta', false);
end;

procedure TFormProdutosDetalhes.edtCustoCompraChange(Sender: TObject);
begin
  inherited;
  CalculaValor('PrecoSugerido',false);
  CalculaValor('Imposto');
  CalculaValor('Taxa');
  CalculaValor('Comissao');
  CalculaValor('Desconto');
  CalculaValor('CustoFixo' );
end;

procedure TFormProdutosDetalhes.edtParamComissaoChange(Sender: TObject);
begin
  inherited;
  CalculaValor('Comissao');
end;

procedure TFormProdutosDetalhes.edtParamCustoFixoChange(Sender: TObject);
begin
  inherited;
  CalculaValor('CustoFixo' );
end;

procedure TFormProdutosDetalhes.edtParamDescontoChange(Sender: TObject);
begin
  inherited;
  CalculaValor('Desconto');
end;

procedure TFormProdutosDetalhes.edtParamImpostoSimplesChange(Sender: TObject);
begin
  inherited;
  CalculaValor('Imposto');
end;

procedure TFormProdutosDetalhes.edtParamTaxaChange(Sender: TObject);
begin
  inherited;
  CalculaValor('Taxa');
end;

procedure TFormProdutosDetalhes.edtParamLucroChange(Sender: TObject);
begin
  inherited;
  AtualizarMarKup;
end;

procedure TFormProdutosDetalhes.edtValorBaseChange(Sender: TObject);
begin
  inherited;
  ConsultaClassificacaoCliente( StrTofloatDef(edtValorBase.Text,0) , strtofloatdef(lbPercentualLucro.caption,0)  );
  CalculaLucroSobrePrecoCartao;
end;

procedure TFormProdutosDetalhes.edtValorVendaChange(Sender: TObject);
begin
  inherited;
  edtMargemLucro.text  := '0';
  CalculaValor('TotalDespesasBruta', false);
  CalculaValor('PrecoSugerido', false);
  CalculaValor('Lucro',false);
  CalculaValor('TotalDespesasBruta', false);

  if strtofloatdef(edtValorVenda.Text,0) > 0 then
  begin
    CalculaLucroSobrePrecoSugerido;
    CalculaLucroSobrePrecoCartao;
  end;
end;

procedure TFormProdutosDetalhes.CalculaLucroSobrePrecoSugerido;
begin
  try
  lbPercentualLucro.caption := FormatFloat(',0.00;', strtofloatdef(edtMargemLucro.Text, 0) /
                                                    (strtofloatdef(edtValorVenda.Text, 0) / 100));
  lbValorLucro.caption := FormatFloat(',0.00;', strtofloatdef(lbPercentualLucro.caption, 0) *
                                                 strtofloatdef(edtValorVenda.text, 0) / 100);
  except

  end;
end;

procedure TFormProdutosDetalhes.btnConfirmarClick(Sender: TObject);
begin
  TControllerProdutos(Controller).PMapper := MapperEntidade;
  inherited;
end;

procedure TFormProdutosDetalhes.btnInserirClick(Sender: TObject);
begin
  inherited;
  cboTipo.itemIndex := 0;
  cboUnidadeMedida.itemindex:= cboUnidadeMedida.Items.IndexOf('UN');
  chkAtivo.Checked:= true;
end;

procedure TFormProdutosDetalhes.btnPesquisarClick(Sender: TObject);
begin
  Condicao:= '0=0';
  inherited;
end;

procedure TFormProdutosDetalhes.CalculaLucroSobrePrecoCartao;
begin
  try
  lbPercentualLucroCartao.caption :=  FormatFloat(',0.00;',
                                      strtofloatdef(lbPercentualLucro.caption, 0) *
                                                            strtofloatdef(edtValorBase.Text, 0) /
                                                            strtofloatdef(edtValorVenda.Text, 0) );

  lbValorLucroCartao.caption := FormatFloat(',0.00;', strtofloatdef(lbPercentualLucroCartao.caption, 0) *
                                                      strtofloatdef(edtValorBase.text, 0) / 100);
  except

  end;
end;

end.
