unit ItemOrcamento;

interface

uses
   CAtribEntity,  GenericEntidade, Contnrs, Classes, SysUtils;

Type
  [TableName('ItemOrcamento')]
  [Modulo('4')]
  TItemOrcamento = class(TGenericEntidade)
  private
    FDesconto: Double;
    FValor: Double;
    FCodigoProduto: integer;
    FCodigo: integer;
    FTotal: Double;
    FCodigoFilial: integer;
    FCodigoOrcamento: integer;
    FQuantidade: Double;
    FOrdem: integer;
    FCodigoFuncionario: integer;
    FPercentualComissao: Double;
    FCodigoUnidade: integer;
    FFator: double;
    FObservacao: string;
    Fstatus: string;
    FHoraFim: string;
    FHoraInicio: string;
    FDescricao: string;
    FValorBasecalculoICMS_RET: Double;
    FValorPIS_ST: Double;
    FValorIPI: Double;
    FValorCOFINS_ST: Double;
    FValorICMS_RET: Double;
    FPercentualICMS: Double;
    FValorBasecalculoICMS: Double;
    FValorICMS: Double;
    FPercentualICMS_ST: Double;
    FValorBasecalculoICMS_ST: Double;
    FPercentualPIS: Double;
    FValorBasecalculoPIS: Double;
    FValorICMS_ST: Double;
    FValorPIS: Double;
    FPercentualPIS_ST: Double;
    FPercentualIPI: Double;
    FPercentualCOFINS_ST: Double;
    FValorBasecalculoPIS_ST: Double;
    FValorBasecalculoIPI: Double;
    FValorBasecalculoCOFINS_ST: Double;
    FPercentualICMS_RET: Double;
    FCFOP: string;
    FPercentualCOFINS: Double;
    FValorBasecalculoCOFINS: Double;
    FValorCOFINS: Double;
    FSitA: string;
    FSitB: string;
    procedure SetCodigo(const Value: integer);
    procedure SetCodigoFilial(const Value: integer);
    procedure SetCodigoOrcamento(const Value: integer);
    procedure SetCodigoProduto(const Value: integer);
    procedure SetDesconto(const Value: Double);
    procedure SetOrdem(const Value: integer);
    procedure SetQuantidade(const Value: Double);
    procedure SetTotal(const Value: Double);
    procedure SetValor(const Value: Double);
    procedure SetCodigoFuncionario(const Value: integer);
    procedure SetPercentualComissao(const Value: Double);
    procedure SetCodigoUnidade(const Value: integer);
    procedure SetFator(const Value: double);
    procedure SetHoraFim(const Value: string);
    procedure SetHoraInicio(const Value: string);
    procedure SetObservacao(const Value: string);
    procedure Setstatus(const Value: string);
    procedure SetDescricao(const Value: string);
    procedure SetPercentualCOFINS_ST(const Value: Double);
    procedure SetPercentualICMS(const Value: Double);
    procedure SetPercentualICMS_RET(const Value: Double);
    procedure SetPercentualICMS_ST(const Value: Double);
    procedure SetPercentualIPI(const Value: Double);
    procedure SetPercentualPIS(const Value: Double);
    procedure SetPercentualPIS_ST(const Value: Double);
    procedure SetValorBasecalculoCOFINS_ST(const Value: Double);
    procedure SetValorBasecalculoICMS(const Value: Double);
    procedure SetValorBasecalculoICMS_RET(const Value: Double);
    procedure SetValorBasecalculoICMS_ST(const Value: Double);
    procedure SetValorBasecalculoIPI(const Value: Double);
    procedure SetValorBasecalculoPIS(const Value: Double);
    procedure SetValorBasecalculoPIS_ST(const Value: Double);
    procedure SetValorCOFINS_ST(const Value: Double);
    procedure SetValorICMS(const Value: Double);
    procedure SetValorICMS_RET(const Value: Double);
    procedure SetValorICMS_ST(const Value: Double);
    procedure SetValorIPI(const Value: Double);
    procedure SetValorPIS(const Value: Double);
    procedure SetValorPIS_ST(const Value: Double);
    procedure SetCFOP(const Value: string);
    procedure SetPercentualCOFINS(const Value: Double);
    procedure SetValorBasecalculoCOFINS(const Value: Double);
    procedure SetValorCOFINS(const Value: Double);
    procedure SetSitA(const Value: string);
    procedure SetSitB(const Value: string);

  strict private
    procedure UpdateTotal;
  published
    [KeyField('Codigo')]
    property  Codigo: integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property  CodigoFilial: integer read FCodigoFilial write SetCodigoFilial;
    [FieldName('CodigoOrcamento')]
    property  CodigoOrcamento: integer read FCodigoOrcamento write SetCodigoOrcamento;
    [FieldName('Ordem')]
    property  Ordem:  integer read FOrdem write SetOrdem;
    [FieldName('CodigoProduto')]
    property  CodigoProduto: integer read FCodigoProduto write SetCodigoProduto;
    [LogAuditoria('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;

    [FieldName('Quantidade')]
    property  Quantidade: Double read FQuantidade write SetQuantidade;
    [FieldName('Valor')]
    property  Valor: Double read FValor write SetValor;
    [FieldName('Desconto')]
    property  Desconto: Double read FDesconto write SetDesconto;
    [FieldName('Total')]
    property  Total: Double read FTotal write SetTotal;
    [FieldName('CodigoFuncionario')]
    property  CodigoFuncionario: integer read FCodigoFuncionario write SetCodigoFuncionario;
    [FieldName('PercentualComissao')]
    property PercentualComissao: Double read FPercentualComissao write SetPercentualComissao;
    [FieldName('CodigoUnidade')]
    property CodigoUnidade: integer read FCodigoUnidade write SetCodigoUnidade;
    [FieldName('Fator')]
    property Fator: double read FFator write SetFator;
    [FieldName('HoraInicio')]
    property HoraInicio: string read FHoraInicio write SetHoraInicio;
    [FieldName('HoraFim')]
    property HoraFim: string read FHoraFim write SetHoraFim;
    [FieldName('Observacao')]
    property Observacao: string read FObservacao write SetObservacao;
    [FieldName('status')]
    property status: string read Fstatus write Setstatus;
    //Impostos
    [FieldName('ValorBasecalculoICMS')]
    property ValorBasecalculoICMS :Double read FValorBasecalculoICMS write SetValorBasecalculoICMS;
    [FieldName('PercentualICMS')]
    property PercentualICMS :Double read FPercentualICMS write SetPercentualICMS;
    [FieldName('ValorICMS')]
    property ValorICMS :Double read FValorICMS write SetValorICMS;
    [FieldName('ValorBasecalculoICMS_ST')]
    property ValorBasecalculoICMS_ST :Double read FValorBasecalculoICMS_ST write SetValorBasecalculoICMS_ST;
    [FieldName('PercentualICMS_ST')]
    property PercentualICMS_ST :Double read FPercentualICMS_ST write SetPercentualICMS_ST;
    [FieldName('ValorICMS_ST')]
    property ValorICMS_ST :Double read FValorICMS_ST write SetValorICMS_ST;
    [FieldName('ValorBasecalculoICMS_RET')]
    property ValorBasecalculoICMS_RET :Double read FValorBasecalculoICMS_RET write SetValorBasecalculoICMS_RET;
    [FieldName('PercentualICMS_RET')]
    property PercentualICMS_RET :Double read FPercentualICMS_RET write SetPercentualICMS_RET;
    [FieldName('ValorICMS_RET')]
    property ValorICMS_RET :Double read FValorICMS_RET write SetValorICMS_RET;
    [FieldName('ValorBasecalculoPIS')]
    property ValorBasecalculoPIS :Double read FValorBasecalculoPIS write SetValorBasecalculoPIS;
    [FieldName('PercentualPIS')]
    property PercentualPIS :Double read FPercentualPIS write SetPercentualPIS;
    [FieldName('ValorPIS')]
    property ValorPIS :Double read FValorPIS write SetValorPIS;
    [FieldName('ValorBasecalculoPIS_ST')]
    property ValorBasecalculoPIS_ST :Double read FValorBasecalculoPIS_ST write SetValorBasecalculoPIS_ST;
    [FieldName('PercentualPIS_ST')]
    property PercentualPIS_ST :Double read FPercentualPIS_ST write SetPercentualPIS_ST;

    [FieldName('ValorBasecalculoCOFINS')]
    property ValorBasecalculoCOFINS:Double read FValorBasecalculoCOFINS write SetValorBasecalculoCOFINS;
     [FieldName('PercentualCOFINS')]
    property PercentualCOFINS:Double read FPercentualCOFINS write SetPercentualCOFINS;
     [FieldName('ValorCOFINS')]
    property ValorCOFINS:Double  read FValorCOFINS write SetValorCOFINS;

    [FieldName('ValorPIS_ST')]
    property ValorPIS_ST :Double read FValorPIS_ST write SetValorPIS_ST;
    [FieldName('ValorBasecalculoCOFINS_ST')]
    property ValorBasecalculoCOFINS_ST :Double read FValorBasecalculoCOFINS_ST write SetValorBasecalculoCOFINS_ST;
    [FieldName('PercentualCOFINS_ST')]
    property PercentualCOFINS_ST :Double read FPercentualCOFINS_ST write SetPercentualCOFINS_ST;
    [FieldName('ValorCOFINS_ST')]
    property ValorCOFINS_ST :Double read FValorCOFINS_ST write SetValorCOFINS_ST;
    [FieldName('ValorBasecalculoIPI')]
    property ValorBasecalculoIPI :Double read FValorBasecalculoIPI write SetValorBasecalculoIPI;
    [FieldName('PercentualIPI')]
    property PercentualIPI :Double read FPercentualIPI write SetPercentualIPI;
    [FieldName('ValorIPI')]
    property ValorIPI :Double read FValorIPI write SetValorIPI;
    [FieldName('CFOP')]
    property CFOP: string read FCFOP write SetCFOP;
    [FieldName('SitA')]
    property SitA : string read FSitA write SetSitA;
    [FieldName('SitB')]
    property SitB : string read FSitB write SetSitB;

  end;

implementation

{ TContatos }

procedure TItemOrcamento.SetCFOP(const Value: string);
begin
  FCFOP := Value;
end;

procedure TItemOrcamento.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TItemOrcamento.SetCodigoFilial(const Value: integer);
begin
  FCodigoFilial := Value;
end;

procedure TItemOrcamento.SetCodigoFuncionario(const Value: integer);
begin
  FCodigoFuncionario := Value;
end;

procedure TItemOrcamento.SetCodigoOrcamento(const Value: integer);
begin
  FCodigoOrcamento := Value;
end;

procedure TItemOrcamento.SetCodigoProduto(const Value: integer);
begin
  FCodigoProduto := Value;
end;

procedure TItemOrcamento.SetCodigoUnidade(const Value: integer);
begin
  FCodigoUnidade := Value;
end;

procedure TItemOrcamento.SetDesconto(const Value: Double);
begin
  FDesconto := Value;
  UpdateTotal;
end;

procedure TItemOrcamento.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TItemOrcamento.SetFator(const Value: double);
begin
  FFator := Value;
end;

procedure TItemOrcamento.SetHoraFim(const Value: string);
begin
  FHoraFim := Value;
end;

procedure TItemOrcamento.SetHoraInicio(const Value: string);
begin
  FHoraInicio := Value;
end;

procedure TItemOrcamento.SetObservacao(const Value: string);
begin
  FObservacao := Value;
end;

procedure TItemOrcamento.SetOrdem(const Value: integer);
begin
  FOrdem := Value;
end;

procedure TItemOrcamento.SetPercentualCOFINS(const Value: Double);
begin
  FPercentualCOFINS := Value;
end;

procedure TItemOrcamento.SetPercentualCOFINS_ST(const Value: Double);
begin
  FPercentualCOFINS_ST := Value;
end;

procedure TItemOrcamento.SetPercentualComissao(const Value: Double);
begin
  FPercentualComissao := Value;
end;

procedure TItemOrcamento.SetPercentualICMS(const Value: Double);
begin
  FPercentualICMS := Value;
end;

procedure TItemOrcamento.SetPercentualICMS_RET(const Value: Double);
begin
  FPercentualICMS_RET := Value;
end;

procedure TItemOrcamento.SetPercentualICMS_ST(const Value: Double);
begin
  FPercentualICMS_ST := Value;
end;

procedure TItemOrcamento.SetPercentualIPI(const Value: Double);
begin
  FPercentualIPI := Value;
end;

procedure TItemOrcamento.SetPercentualPIS(const Value: Double);
begin
  FPercentualPIS := Value;
end;

procedure TItemOrcamento.SetPercentualPIS_ST(const Value: Double);
begin
  FPercentualPIS_ST := Value;
end;

procedure TItemOrcamento.UpdateTotal;
begin
  FTotal := FValor * FQuantidade - (FValor * FQuantidade * FDesconto / 100);
end;

procedure TItemOrcamento.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
  UpdateTotal;
end;

procedure TItemOrcamento.SetSitA(const Value: string);
begin
  FSitA := Value;
end;

procedure TItemOrcamento.SetSitB(const Value: string);
begin
  FSitB := Value;
end;

procedure TItemOrcamento.Setstatus(const Value: string);
begin
  Fstatus := Value;
end;

procedure TItemOrcamento.SetValor(const Value: Double);
begin
  FValor := Value;
  UpdateTotal;
end;

procedure TItemOrcamento.SetValorBasecalculoCOFINS(const Value: Double);
begin
  FValorBasecalculoCOFINS := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoCOFINS_ST(const Value: Double);
begin
  FValorBasecalculoCOFINS_ST := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoICMS(const Value: Double);
begin
  FValorBasecalculoICMS := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoICMS_RET(const Value: Double);
begin
  FValorBasecalculoICMS_RET := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoICMS_ST(const Value: Double);
begin
  FValorBasecalculoICMS_ST := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoIPI(const Value: Double);
begin
  FValorBasecalculoIPI := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoPIS(const Value: Double);
begin
  FValorBasecalculoPIS := Value;
end;

procedure TItemOrcamento.SetValorBasecalculoPIS_ST(const Value: Double);
begin
  FValorBasecalculoPIS_ST := Value;
end;

procedure TItemOrcamento.SetValorCOFINS(const Value: Double);
begin
  FValorCOFINS := Value;
end;

procedure TItemOrcamento.SetValorCOFINS_ST(const Value: Double);
begin
  FValorCOFINS_ST := Value;
end;

procedure TItemOrcamento.SetValorICMS(const Value: Double);
begin
  FValorICMS := Value;
end;

procedure TItemOrcamento.SetValorICMS_RET(const Value: Double);
begin
  FValorICMS_RET := Value;
end;

procedure TItemOrcamento.SetValorICMS_ST(const Value: Double);
begin
  FValorICMS_ST := Value;
end;

procedure TItemOrcamento.SetValorIPI(const Value: Double);
begin
  FValorIPI := Value;
end;

procedure TItemOrcamento.SetValorPIS(const Value: Double);
begin
  FValorPIS := Value;
end;

procedure TItemOrcamento.SetValorPIS_ST(const Value: Double);
begin
  FValorPIS_ST := Value;
end;

procedure TItemOrcamento.SetTotal(const Value: Double);
begin
  FTotal := Value;
end;
{
Obs : A diretiva �default� na propriedade �Items� de TItensPedido permite ter uma
caminho mais curto para acessar o item por exemplo :

ItensPedido[5].Codigo_Produto;

ao inv�s de :

ItensPedido.GetItem(5).Codigo_Produto;
}
end.
