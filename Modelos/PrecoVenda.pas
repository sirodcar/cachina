unit PrecoVenda;

interface

type
  TPrecoVenda = class
  private
    FCustoFixo: double;
    FTaxa: double;
    FDesconto: double;
    FLucro: double;
    FValorVenda: double;
    FComissao: double;
    FImposto: double;
    FCusto: double;
    FMarkup: double;
    procedure SetComissao(const Value: double);
    procedure SetCusto(const Value: double);
    procedure SetCustoFixo(const Value: double);
    procedure SetDesconto(const Value: double);
    procedure SetImposto(const Value: double);
    procedure SetLucro(const Value: double);
    procedure SetTaxa(const Value: double);
    procedure SetValorVenda(const Value: double);
    procedure SetMarkup(const Value: double);
  public
    property Custo: double read FCusto write SetCusto;
    property Imposto: double read FImposto write SetImposto;
    property Taxa: double read FTaxa write SetTaxa;
    property Comissao: double read FComissao write SetComissao;
    property Desconto: double read FDesconto write SetDesconto;
    property CustoFixo: double read FCustoFixo write SetCustoFixo;
    property Lucro: double read FLucro write SetLucro;
    property ValorVenda: double read FValorVenda write SetValorVenda;
    property Markup: double read FMarkup write SetMarkup;
  end;

implementation

{ TPrecoVenda }

procedure TPrecoVenda.SetComissao(const Value: double);
begin
  FComissao := Value;
end;

procedure TPrecoVenda.SetCusto(const Value: double);
begin
  FCusto := Value;
end;

procedure TPrecoVenda.SetCustoFixo(const Value: double);
begin
  FCustoFixo := Value;
end;

procedure TPrecoVenda.SetDesconto(const Value: double);
begin
  FDesconto := Value;
end;

procedure TPrecoVenda.SetImposto(const Value: double);
begin
  FImposto := Value;
end;

procedure TPrecoVenda.SetLucro(const Value: double);
begin
  FLucro := Value;
end;

procedure TPrecoVenda.SetMarkup(const Value: double);
begin
  FMarkup := Value;
end;

procedure TPrecoVenda.SetTaxa(const Value: double);
begin
  FTaxa := Value;
end;

procedure TPrecoVenda.SetValorVenda(const Value: double);
begin
  FValorVenda := Value;
end;

end.
