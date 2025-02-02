unit Produtos;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('Produtos')]
  [Modulo('3')]
  TProdutos = class(TGenericEntidade)
  private
    FCodigoFabricante: integer;
    FCodigoUnidade: integer;
    FValorDespesa: Double;
    FObservacao: string;
    FValorMarkUp: Double;
    FCodigoMarca: integer;
    FCodigoSubGrupo: integer;
    FValorDesconto: Double;
    FValorVenda: Double;
    FCodigoGrupo: integer;
    FDescricao: string;
    FCustoCompra: Double;
    FCodigo: integer;
    FMargemLucro: Double;
    FCodigoFilial: integer;
    FCodigoFamilia: integer;
    FReferencia: string;
    FTipo: string;
    FPercentualEncargos: double;
    FPercentualDespesasInd: double;
    FPerncentualICMS: double;
    FPercentualComissao: double;
    FPercentualPIS: double;
    FPercentualCOFINS: double;
    FPercentualIPI: double;
    FFatorMarkup: double;
    FSimplesNacional: double;
    FPercentualTaxaAdmin: double;
    FCodigoParametroPrecovenda: integer;
    FPercentualCustoFixo: double;
    FPercentualDesconto: double;
    FCodigoNCM: integer;
    FSituacaoTributariaICMS: string;
    FSituacaoTributariaPIS: string;
    FSituacaoTributariaCOFINS: string;
    FSituacaoTributariaIPI: string;
    FEstoqueMinimo: Double;
    FCodigoSubFase: integer;
    FCodigoServicoNFSe: integer;
    FCodigoCEST: string;
    FCodigoProdutoServico:integer;
    FAtivo: string;
    FCodigoBarras: string;
  public
    [KeyField('Codigo')]
    property  Codigo: integer read FCodigo write FCodigo;
    [FieldName('CodigoFilial')]
    property  CodigoFilial: integer read FCodigoFilial write FCodigoFilial;
    [FieldName('Descricao')]
    [LogAuditoria('Descricao')]
    property  Descricao: string read FDescricao write FDescricao;
    [FieldName('CodigoFamilia')]
    property  CodigoFamilia: integer read FCodigoFamilia write FCodigoFamilia;
    [FieldName('CodigoGrupo')]
    property  CodigoGrupo: integer read FCodigoGrupo write FCodigoGrupo;
    [FieldName('CodigoSubGrupo')]
    property  CodigoSubGrupo: integer read FCodigoSubGrupo write FCodigoSubGrupo;
    [FieldName('CodigoUnidade')]
    property  CodigoUnidade: integer read FCodigoUnidade write FCodigoUnidade;
    [FieldName('Referencia')]
    property  Referencia: string read FReferencia write FReferencia;
    [FieldName('CodigoFabricante')]
    property  CodigoFabricante: integer read FCodigoFabricante write FCodigoFabricante;
    [FieldName('CodigoMarca')]
    property  CodigoMarca: integer read FCodigoMarca write FCodigoMarca;
    [FieldName('Tipo')]
    property  Tipo: string read FTipo write FTipo;
    [FieldName('CustoCompra')]
    property  CustoCompra: Double read FCustoCompra write FCustoCompra;
    [FieldName('ValorVenda')]
    property  ValorVenda: Double read FValorVenda write FValorVenda;
    [FieldName('MargemLucro')]
    property  MargemLucro: Double read FMargemLucro write FMargemLucro;
    [FieldName('ValorMarkUp')]
    property  ValorMarkUp: Double read FValorMarkUp write FValorMarkUp;
    [FieldName('ValorDesconto')]
    property  ValorDesconto: Double read FValorDesconto write FValorDesconto;
    [FieldName('ValorDespesa')]
    property  ValorDespesa: Double read FValorDespesa write FValorDespesa;
    [FieldName('Observacao')]
    property  Observacao: string read FObservacao write FObservacao;
    [FieldName('PercentualEncargos')]
    property PercentualEncargos:double read FPercentualEncargos write FPercentualEncargos;
    [FieldName('PerncentualICMS')]
    property PerncentualICMS:double read FPerncentualICMS write FPerncentualICMS;
    [FieldName('PercentualPIS')]
    property PercentualPIS:double read FPercentualPIS write FPercentualPIS;
    [FieldName('PercentualCOFINS')]
    property PercentualCOFINS:double read FPercentualCOFINS write FPercentualCOFINS;
    [FieldName('PercentualIPI')]
    property PercentualIPI:double read FPercentualIPI write FPercentualIPI;
    [FieldName('PercentualComissao')]
    property PercentualComissao:double read FPercentualComissao write FPercentualComissao;
    [FieldName('PercentualDespesasInd')]
    property PercentualDespesasInd:double read FPercentualDespesasInd write FPercentualDespesasInd;
    [FieldName('FatorMarkup')]
    property FatorMarkup:double read FFatorMarkup write FFatorMarkup;
    [FieldName('SimplesNacional')]
    property SimplesNacional:double read FSimplesNacional write FSimplesNacional;
    [FieldName('PercentualTaxaAdmin')]
    property PercentualTaxaAdmin:double read FPercentualTaxaAdmin write FPercentualTaxaAdmin;
    [FieldName('CodigoParametroPrecoVenda')]
    property CodigoParametroPrecoVenda:integer read FCodigoParametroPrecoVenda write FCodigoParametroPrecovenda;
    [FieldName('PercentualDesconto')]
    property PercentualDesconto: double read FPercentualDesconto write FPercentualDesconto;
    [FieldName('PercentualCustoFixo')]
    property PercentualCustoFixo: double read FPercentualCustoFixo write FPercentualCustoFixo;
    [FieldName('CodigoNCM')]
    property CodigoNCM: integer read FCodigoNCM write FCodigoNCM;
    [FieldName('SituacaoTributariaICMS')]
    property SituacaoTributariaICMS: string read FSituacaoTributariaICMS write FSituacaoTributariaICMS;
    [FieldName('SituacaoTributariaIPI')]
    property SituacaoTributariaIPI: string read FSituacaoTributariaIPI write FSituacaoTributariaIPI;
    [FieldName('SituacaoTributariaPIS')]
    property SituacaoTributariaPIS: string read FSituacaoTributariaPIS write FSituacaoTributariaPIS;
    [FieldName('SituacaoTributariaCOFINS')]
    property SituacaoTributariaCOFINS: string read FSituacaoTributariaCOFINS write FSituacaoTributariaCOFINS;
    [FieldName('EstoqueMinimo')]
    property EstoqueMinimo: Double read FEstoqueMinimo write FEstoqueMinimo;
    [FieldName('CodigoSubFase')]
    property CodigoSubFase: integer read FCodigoSubFase write FCodigoSubFase;
    [FieldName('CodigoServicoNFSe')]
    property CodigoServicoNFSe: integer read FCodigoServicoNFSe write FCodigoServicoNFSe;
    [FieldName('CodigoCEST',7)]
    property CodigoCEST: string read FCodigoCEST write FCodigoCEST;
    [FieldName('CodigoProdutoServico')]
    property CodigoProdutoServico: integer read FCodigoProdutoServico write FCodigoProdutoServico;
    [FieldName('Ativo',1)]
    property Ativo: string  read FAtivo write FAtivo;
    [FieldName('CodigoBarras',20)]
    property CodigoBarras: string read FCodigoBarras write FCodigoBarras;
  end;

implementation

{ TProdutos }

 uses
  System.Classes;

initialization
  RegisterClass(TProdutos);

end.
