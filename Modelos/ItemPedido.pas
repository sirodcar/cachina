unit ItemPedido;

interface

uses
 CAtribEntity,  GenericEntidade;

type
  [TableName('ItemPedido')]
  TItemPedido = class(TGenericEntidade)
  private
    FCodigoUnidade: Integer;
    FDesconto: Double;
    FCodigoReferencia: Double;
    FValor: Double;
    FICMS: Double;
    FCodigoProduto: Integer;
    FCodigo: Integer;
    FFator: Double;
    FCodigoFilial: Integer;
    FCodigoPedido: Integer;
    FPIS: Double;
    FCOFINS: Double;
    FQuantidade: Double;
    FCodigoEstoque: Double;
    FICMSSubst: Double;
    FIPI: Double;
    FOrdem: integer;
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigoEstoque(const Value: Double);
    procedure SetCodigoFilial(const Value: Integer);
    procedure SetCodigoPedido(const Value: Integer);
    procedure SetCodigoProduto(const Value: Integer);
    procedure SetCodigoReferencia(const Value: Double);
    procedure SetCodigoUnidade(const Value: Integer);
    procedure SetCOFINS(const Value: Double);
    procedure SetDesconto(const Value: Double);
    procedure SetFator(const Value: Double);
    procedure SetICMS(const Value: Double);
    procedure SetICMSSubst(const Value: Double);
    procedure SetIPI(const Value: Double);
    procedure SetPIS(const Value: Double);
    procedure SetQuantidade(const Value: Double);
    procedure SetValor(const Value: Double);
    procedure SetOrdem(const Value: integer);
public
  [KeyField('Codigo')]
  property Codigo: Integer read FCodigo write SetCodigo;
  [FieldName('CodigoFilial')]
  property CodigoFilial: Integer read FCodigoFilial write SetCodigoFilial;
  [FieldName('CodigoPedido')]
   property CodigoPedido: Integer read FCodigoPedido write SetCodigoPedido;
  [FieldName('Ordem')]
  property Ordem:integer read FOrdem write SetOrdem;
  [FieldName('CodigoProduto')]
  property CodigoProduto: Integer read FCodigoProduto write SetCodigoProduto;
  [FieldName('Quantidade')]
  property Quantidade: Double read FQuantidade write SetQuantidade;
  [FieldName('Valor')]
  property Valor: Double read FValor write SetValor;
  [FieldName('CodigoUnidade')]
  property CodigoUnidade: Integer read FCodigoUnidade write SetCodigoUnidade;
  [FieldName('Desconto')]
  property Desconto: Double read FDesconto write SetDesconto;
  [FieldName('Fator')]
  property Fator: Double read FFator write SetFator;
  [FieldName('IPI')]
  property IPI: Double read FIPI write SetIPI;
  [FieldName('PIS')]
  property PIS: Double read FPIS write SetPIS;
  [FieldName('COFINS')]
  property COFINS: Double read FCOFINS write SetCOFINS;
  [FieldName('ICMS')]
  property ICMS: Double read FICMS write SetICMS;
  [FieldName('ICMSSubst')]
  property ICMSSubst: Double read FICMSSubst write SetICMSSubst;
  [FieldName('CodigoEstoque')]
  property CodigoEstoque: Double read FCodigoEstoque write SetCodigoEstoque;
  [FieldName('CodigoReferencia')]
  property CodigoReferencia: Double read FCodigoReferencia write SetCodigoReferencia;
end;

implementation

{ TItemPedido }

procedure TItemPedido.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TItemPedido.SetCodigoEstoque(const Value: Double);
begin
  FCodigoEstoque := Value;
end;

procedure TItemPedido.SetCodigoFilial(const Value: Integer);
begin
  FCodigoFilial := Value;
end;

procedure TItemPedido.SetCodigoPedido(const Value: Integer);
begin
  FCodigoPedido := Value;
end;

procedure TItemPedido.SetCodigoProduto(const Value: Integer);
begin
  FCodigoProduto := Value;
end;

procedure TItemPedido.SetCodigoReferencia(const Value: Double);
begin
  FCodigoReferencia := Value;
end;

procedure TItemPedido.SetCodigoUnidade(const Value: Integer);
begin
  FCodigoUnidade := Value;
end;

procedure TItemPedido.SetCOFINS(const Value: Double);
begin
  FCOFINS := Value;
end;

procedure TItemPedido.SetDesconto(const Value: Double);
begin
  FDesconto := Value;
end;

procedure TItemPedido.SetFator(const Value: Double);
begin
  FFator := Value;
end;

procedure TItemPedido.SetICMS(const Value: Double);
begin
  FICMS := Value;
end;

procedure TItemPedido.SetICMSSubst(const Value: Double);
begin
  FICMSSubst := Value;
end;

procedure TItemPedido.SetIPI(const Value: Double);
begin
  FIPI := Value;
end;

procedure TItemPedido.SetOrdem(const Value: integer);
begin
  FOrdem := Value;
end;

procedure TItemPedido.SetPIS(const Value: Double);
begin
  FPIS := Value;
end;

procedure TItemPedido.SetQuantidade(const Value: Double);
begin
  FQuantidade := Value;
end;

procedure TItemPedido.SetValor(const Value: Double);
begin
  FValor := Value;
end;

End.

