unit ParametrosPrecoVenda;

interface

uses
   CAtribEntity,  GenericEntidade;

type
  [TableName('ParametrosPrecoVenda')]
  TParametrosPrecoVenda = class(TGenericEntidade)
  private
    FDescricao: string;
    FCodigo: Integer;
    FCodigoFilial: integer;
    FPercentualFolha: Double;
    FPercentualCustoFixo: Double;
    FPercentualDesconto: Double;
    FPercentualLucro: Double;
    FPercentualComissao: Double;
    FPercentualCartao: Double;
    FPercentualCustoVariavel: Double;
    FAdicional: Double;
    FPercentualImposto: Double;
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigoFilial(const Value: integer);
    procedure SetDescricao(const Value: string);
    procedure SetAdicional(const Value: Double);
    procedure SetPercentualCartao(const Value: Double);
    procedure SetPercentualComissao(const Value: Double);
    procedure SetPercentualCustoFixo(const Value: Double);
    procedure SetPercentualCustoVariavel(const Value: Double);
    procedure SetPercentualDesconto(const Value: Double);
    procedure SetPercentualFolha(const Value: Double);
    procedure SetPercentualImposto(const Value: Double);
    procedure SetPercentualLucro(const Value: Double);
  public
    [KeyField('Codigo')]
    property Codigo: Integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial:integer read FCodigoFilial write SetCodigoFilial;
    [FieldName('Descricao')]
    property Descricao: string read FDescricao write SetDescricao;
    [FieldName('PercentualImposto')]
    property PercentualImposto:  Double read FPercentualImposto write SetPercentualImposto;
    [FieldName('PercentualCartao')]
    property PercentualCartao:  Double read FPercentualCartao write SetPercentualCartao;
    [FieldName('PercentualComissao')]
    property PercentualComissao:  Double read FPercentualComissao write SetPercentualComissao;
    [FieldName('PercentualDesconto')]
    property PercentualDesconto:  Double read FPercentualDesconto write SetPercentualDesconto;
    [FieldName('PercentualCustoFixo')]
    property PercentualCustoFixo:  Double read FPercentualCustoFixo write SetPercentualCustoFixo;
    [FieldName('PercentualLucro')]
    property PercentualLucro:  Double read FPercentualLucro write SetPercentualLucro;
    [FieldName('PercentualCustoVariavel')]
    property PercentualCustoVariavel: Double read FPercentualCustoVariavel write SetPercentualCustoVariavel;
    [FieldName('PercentualFolha')]
    property PercentualFolha: Double read FPercentualFolha write SetPercentualFolha;
    [FieldName('Adicional')]
    property Adicional:  Double read FAdicional write SetAdicional;

  end;

implementation

{ TMarcaVeiculo }

procedure TParametrosPrecoVenda.SetAdicional(const Value: Double);
begin
  FAdicional := Value;
end;

procedure TParametrosPrecoVenda.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TParametrosPrecoVenda.SetCodigoFilial(const Value: integer);
begin
  FCodigoFilial := Value;
end;

procedure TParametrosPrecoVenda.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualCartao(const Value: Double);
begin
  FPercentualCartao := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualComissao(const Value: Double);
begin
  FPercentualComissao := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualCustoFixo(const Value: Double);
begin
  FPercentualCustoFixo := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualCustoVariavel(const Value: Double);
begin
  FPercentualCustoVariavel := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualDesconto(const Value: Double);
begin
  FPercentualDesconto := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualFolha(const Value: Double);
begin
  FPercentualFolha := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualImposto(const Value: Double);
begin
  FPercentualImposto := Value;
end;

procedure TParametrosPrecoVenda.SetPercentualLucro(const Value: Double);
begin
  FPercentualLucro := Value;
end;

end.
