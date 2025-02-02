unit SequenciaNF;

interface

uses
 CAtribEntity,  GenericEntidade;

type
  [TableName('SequenciaNF')]
  TSequenciaNF = class(TGenericEntidade)
  private
    FCodigo: Integer;
    FCodigoFilial: Integer;
    FSequencia: Integer;
    FEspecie: string;
    FSerie: string;
    FDispositivo: string;
  public
    [KeyField('Codigo')]
    property Codigo: Integer read FCodigo write FCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial: Integer read FCodigoFilial write FCodigoFilial;
    [FieldName('Sequencia')]
    property Sequencia: Integer read FSequencia write FSequencia;
    [FieldName('Especie',3)]
    property Especie: string read FEspecie write FEspecie;
    [FieldName('Serie',3)]
    property Serie: string read FSerie write FSerie;
    [FieldName('Dispositivo',20)]
    property Dispositivo: string read FDispositivo write FDispositivo;
  end;

implementation

end.
