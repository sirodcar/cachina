unit Veiculos;

interface

uses
   CAtribEntity,  GenericEntidade;

type
  [TableName('Veiculos')]
  TVeiculos = class(TGenericEntidade)
  private
    FObservacao: string;
    FCor: string;
    FChassi: string;
    FCodigoFilial: integer;
    FAno: integer;
    FCodigoCliente: integer;
    FCodigoModelo: integer;
    FPlaca: string;
    FData: TDatetime;
    FPesoBruto: Double;
    FCMT: string;
    FPrecoVenda: Double;
    FAnoFabricacao: integer;
    FNumeroMotor: string;
    FPesoLiquido: Double;
    FPrecoCompra: Double;
    FTipoVeiculo: string;
    FTipoCombustivel: string;
    FCilindrada: string;
    FRenavan: string;
    FKilometragem: integer;
    FNumeroSerie: string;
    FAnoModelo: integer;
    FPotencia: string;
    FDataVenda: TDatetime;
    FDataCompra: TDatetime;
  public
    [KeyField('Placa')]
    [FieldName('Placa')]
    property Placa: string read FPlaca write FPlaca;
    [KeyField('CodigoCliente')]
    [FieldName('CodigoCliente')]
    property CodigoCliente:integer read FCodigoCliente write FCodigoCliente;
    [FieldName('CodigoFilial')]
    property CodigoFilial:integer read FCodigoFilial write FCodigoFilial;
    [FieldName('CodigoModelo')]
    property CodigoModelo:integer read FCodigoModelo write FCodigoModelo;
    [FieldName('Chassi')]
    property Chassi: string read FChassi write FChassi;
    [FieldName('Ano')]
    property Ano:integer read FAno write FAno;
    [FieldName('Cor')]
    property Cor: string read FCor write FCor;
    [FieldName('Observacao')]
    property Observacao: string read FObservacao write FObservacao;
    [FieldName('Data')]
    property Data:TDatetime read FData write FData;
    //[FieldName('Potencia')]
    property Potencia : string read FPotencia write FPotencia;
    //[FieldName('Cilindrada')]
    property Cilindrada: string read FCilindrada write FCilindrada;
    //[FieldName('PesoLiquido')]
    property PesoLiquido: Double read FPesoLiquido write FPesoLiquido;
    //[FieldName('PesoBruto')]
    property PesoBruto: Double read FPesoBruto write FPesoBruto;
    //[FieldName('NumeroSerie')]
    property NumeroSerie: string read FNumeroSerie write FNumeroSerie;
    //[FieldName('TipoCombustivel')]
    property TipoCombustivel: string read FTipoCombustivel write FTipoCombustivel;
    //[FieldName('NumeroMotor')]
    property NumeroMotor: string read FNumeroMotor write FNumeroMotor;
    //[FieldName('CMT')]
    property CMT: string read FCMT write FCMT;
    //[FieldName('Kilometragem')]
    property Kilometragem:integer read FKilometragem write FKilometragem;
    //[FieldName('Renavan')]
    property Renavan : string read FRenavan write FRenavan;
    //[FieldName('AnoModelo')]
    property AnoModelo :integer read FAnoModelo write FAnoModelo;
    //[FieldName('AnoFabricacao')]
    property AnoFabricacao:integer read FAnoFabricacao write FAnoFabricacao;
    //[FieldName('TipoVeiculo')]
    property  TipoVeiculo: string read FTipoVeiculo write FTipoVeiculo;
    //[FieldName('DataCompra')]
    property DataCompra:TDatetime read FDataCompra write FDataCompra;
    //[FieldName('DataVenda')]
    property DataVenda:TDatetime read FDataVenda write FDataVenda;
    //[FieldName('PrecoCompra')]
    property PrecoCompra:Double read FPrecoCompra write FPrecoCompra;
    //[FieldName('PrecoVenda')]
    property PrecoVenda:Double read FPrecoVenda write FPrecoVenda;
  end;

implementation

{ TVeiculos }


end.
