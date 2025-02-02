unit srvModBaseDados;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMSSQL, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, //MidasLib,
  Data.DBXFirebird,  FMX.Forms,
  FMX.Dialogs;

type
  TDSServerModuleBaseDados = class(TDataModule)
    LSCONEXAO: TSQLConnection;
    SQLDSServidor: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Conectar:boolean;
    function Desconectar:boolean;
    function getDataSet(strQry:string):TDataSet;
    function execSql(strQry:string): boolean;
  end;

var
  DSServerModuleBaseDados: TDSServerModuleBaseDados;

implementation

{$R *.dfm}

function TDSServerModuleBaseDados.Conectar:boolean;
begin
  try
    LSCONEXAO.Connected := true;
    result := true;
  except
    result := false;
  end;
end;

procedure TDSServerModuleBaseDados.DataModuleCreate(Sender: TObject);
begin
   LSCONEXAO.Params.Values['DataBase']:= stringreplace(ParamStr(0),'exe','fdb',[]);
end;

function TDSServerModuleBaseDados.Desconectar:boolean;
begin
  try
    LSCONEXAO.Connected := false;
    result := true;
  except
    result := false;
  end;
end;

function TDSServerModuleBaseDados.getDataSet(strQry:string): TDataSet;
begin
  SQLDSServidor.Close;
  SQLDSServidor.Params.Clear;
  SQLDSServidor.commandText := strQry;
  SQLDSServidor.Open;

  result := SQLDSServidor;
end;

function TDSServerModuleBaseDados.execSql(strQry:string): boolean;
Var
   msgErro:string;
begin
  result := false;
  SQLDSServidor.Close;
  SQLDSServidor.Params.Clear;
  SQLDSServidor.commandText:= strQry;
  try
    SQLDSServidor.ExecSQL;
    result := true;
  except
    on e: Exception do
    begin
      raise Exception.Create(e.Message)
    end;
  end;
end;

end.
