unit ServerContainerUnit1;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport, IniFiles,
  Datasnap.DSServer, Datasnap.DSCommonServer, forms,
  Datasnap.DSAuth, IndyPeerImpl, Data.DB,
  IPPeerServer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Comp.Client;

type
  TServerContainer1 = class(TDataModule)
    DSServer1: TDSServer;
    DSTCPServerTransport1: TDSTCPServerTransport;
    DSServerClass1: TDSServerClass;
    FDConnection1: TFDConnection;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    procedure DSServerClass1GetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ServerContainer1: TServerContainer1;

implementation

uses Winapi.Windows, ServerMethodsUnit1;

{$R *.dfm}

procedure TServerContainer1.DataModuleCreate(Sender: TObject);
var
  arquivo:TIniFile;
  HostName: string;
  DataBase: string;
  Driver: string;
begin
  arquivo   := TIniFile.create(ExtractFilePath(application.ExeName)+'configuracao.ini');

  HostName  := arquivo.ReadString('Configuracao', 'HostName', HostName);
  DataBase  := arquivo.ReadString('Configuracao', 'DataBase', DataBase);
  Driver  := arquivo.ReadString('Configuracao', 'Driver', Driver);
  FDConnection1.Params.Values['HostName']:= HostName;
  FDConnection1.Params.Values['DataBase']:= DataBase;
end;

procedure TServerContainer1.DSServerClass1GetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := ServerMethodsUnit1.TServerMethodsGeneric;
end;


end.

