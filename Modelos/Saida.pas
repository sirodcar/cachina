unit Saida;

interface

uses
 CAtribEntity,  GenericEntidade;

type
  [TableName('Saida')]
  [Modulo('7')]
  TSaida = class(TGenericEntidade)
  private
    FCodigo: Integer;
    FCodigoFilial: Integer;
    FCodigoFuncionario: Integer;
    FCodigoOrcamento: Integer;
    FData: TDatetime;
    FNumeroDocumento: string;
    FAplicacao: string;
    procedure SetCodigo(const Value: Integer);
    procedure SetCodigoFilial(const Value: Integer);
    procedure SetCodigoFuncionario(const Value: Integer);
    procedure SetCodigoOrcamento(const Value: Integer);
    procedure SetData(const Value: TDatetime);
    procedure SetNumeroDocumento(const Value: string);
    procedure SetAplicacao(const Value: string);
  public
    [KeyField('Codigo')]
    [FieldName('Codigo')]
    property Codigo: Integer read FCodigo write SetCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: Integer read FCodigoFilial write SetCodigoFilial;
    [FieldName('Data')]
    property Data: TDatetime read FData write SetData;
    [FieldName('NumeroDocumento')]
    property NumeroDocumento: string read FNumeroDocumento write SetNumeroDocumento;
    [FieldName('CodigoOrcamento')]
    property CodigoOrcamento: Integer read FCodigoOrcamento write SetCodigoOrcamento;
    [FieldName('CodigoFuncionario')]
    property CodigoFuncionario: Integer read FCodigoFuncionario write SetCodigoFuncionario;
    [FieldName('Aplicacao')]
    property Aplicacao: string read FAplicacao write SetAplicacao;
  end;

implementation

{ TSaida }

procedure TSaida.SetAplicacao(const Value: string);
begin
  FAplicacao := Value;
end;

procedure TSaida.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TSaida.SetCodigoFilial(const Value: Integer);
begin
  FCodigoFilial := Value;
end;

procedure TSaida.SetCodigoFuncionario(const Value: Integer);
begin
  FCodigoFuncionario := Value;
end;

procedure TSaida.SetCodigoOrcamento(const Value: Integer);
begin
  FCodigoOrcamento := Value;
end;

procedure TSaida.SetData(const Value: TDatetime);
begin
  FData := Value;
end;

procedure TSaida.SetNumeroDocumento(const Value: string);
begin
  FNumeroDocumento := Value;
end;

End.

