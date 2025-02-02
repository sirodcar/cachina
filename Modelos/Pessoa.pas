unit Pessoa;

interface

uses
   CAtribEntity,  GenericEntidade;

Type
  [TableName('Pessoa')]
  [Modulo('5')]
  TPessoa = class(TGenericEntidade)
  private
    FObservacao: string;
    FEmail: string;
    FCodigoClassificacao: integer;
    FCodigo: integer;
    FCodigoFilial: integer;
    FCPFCNPJ: string;
    FRazaoSocial: string;
    FNome: string;
    FTelefone: string;
    FBairro: string;
    FUF: string;
    FCEP: string;
    FMunicipio: string;
    FComplemento: string;
    FEndereco: string;
    FTipo: string;
    FFaturar: string;
    FEstadoCivil: string;
    FDataNascimento: TDatetime;
    FCodigoProfissao: Integer;
    FRendaFormal: double;
    FRendaFamiliar: double;
    FCodigoPessoaMae: integer;
    FFilhos: integer;
    FCodigoConjuge: integer;
    FCodigoPessoaPai: integer;
    FRG: string;
    FOE: string;
    FInscricaoEstadual: string;
    FCodigoIBGE: string;
    FClassificacaoFiscal : string;
  public
    [KeyField('Codigo')]
    property Codigo :integer read FCodigo write FCodigo;
    [FieldName('CodigoFilial')]
    property CodigoFilial :integer read FCodigoFilial write FCodigoFilial;
    [FieldName('CodigoClassificacao')]
    property CodigoClassificacao:integer read FCodigoClassificacao write FCodigoClassificacao;
    [FieldName('Nome')]
    property Nome : string read FNome write FNome;
    [FieldName('RazaoSocial')]
    [Required('RazaoSocial')]
    property RazaoSocial : string read FRazaoSocial write FRazaoSocial;
    [FieldName('Observacao')]
    property Observacao : string read FObservacao write FObservacao;
    [FieldName('CPFCNPJ')]
    [Required('CPFCNPJ')]
    property CPFCNPJ : string read FCPFCNPJ write FCPFCNPJ;
    [FieldName('InscricaoEstadual')]
    [Required('InscricaoEstadual')]
    property InscricaoEstadual : string read FInscricaoEstadual write FInscricaoEstadual;
    [FieldName('RG')]
    property RG : string read FRG write FRG;
    [FieldName('OE')]
    property OE : string read FOE write FOE;
    [FieldName('Email')]
    property Email: string read FEmail write FEmail;
    [FieldName('Telefone')]
    [Required('Telefone')]
    property Telefone: string read FTelefone write FTelefone;
    [FieldName('Endereco')]
    [Required('Endereco')]
    property Endereco: string read FEndereco write FEndereco;
    [FieldName('UF')]
    [Required('UF')]
    property UF: string read FUF write FUF;
    [FieldName('Bairro')]
    [Required('Bairro')]
    property Bairro: string read FBairro write FBairro;
    [FieldName('Municipio')]
    [Required('Municipio')]
    property Municipio: string read FMunicipio write FMunicipio;

    [FieldName('CodigoIBGE')]
    //[Required('Municipio')]
    property CodigoIBGE: string read FCodigoIBGE write FCodigoIBGE;

    [FieldName('CEP')]
    [Required('CEP')]
    property CEP: string read FCEP write FCEP;
    [FieldName('Complemento')]
    property Complemento: string read FComplemento write FComplemento;
    [FieldName('Tipo')]
    property Tipo: string read FTipo write FTipo;
    [FieldName('Faturar')]
    property Faturar: string read FFaturar write FFaturar;
    //[FieldName('EstadoCivil')]
    //property EstadoCivil: string read FEstadoCivil write FEstadoCivil;
    //[FieldName('CodigoPessoaPai')]
    //property CodigoPessoaPai: integer read FCodigoPessoaPai write FCodigoPessoaPai;
    //[FieldName('CodigoPessoaMae')]
    //property CodigoPessoaMae: integer read FCodigoPessoaMae write FCodigoPessoaMae;
    //[FieldName('CodigoPessoaConjuge')]
    //property CodigoPessoaConjuge: integer read FCodigoConjuge write FCodigoConjuge;
    //[FieldName('Filhos')]
    //property Filhos: integer read FFilhos write FFilhos;
    //[FieldName('DataNascimento')]
    //property DataNascimento: TDatetime read FDataNascimento write FDataNascimento;
    //[FieldName('CodigoProfissao')]
    //property CodigoProfissao: Integer read FCodigoProfissao write FCodigoProfissao;
    //[FieldName('Renda')]
    //property RendaFormal: double read FRendaFormal write FRendaFormal;
    //[FieldName('RendaFamiliar')]
    //property RendaFamiliar: double read FRendaFamiliar write FRendaFamiliar;

    property ClassificacaoFiscal : string read FClassificacaoFiscal write FClassificacaoFiscal;
  end;

implementation

{ TClientes }



end.
