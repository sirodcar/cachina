unit AtributoEntidade;

interface

type
  EditFieldName = class(TCustomAttribute)
    private FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;

type
  TableName = class(TCustomAttribute)
  private
    FName: string;
  public
    constructor Create(aName: String);
    property Name: string read FName write FName;
  end;

type
  KeyField = class(TCustomAttribute)
  private
    FName: string;
  public
    constructor Create(aName: String);
    property Name: string read FName write FName;
  end;

type
  JOIN = class(TCustomAttribute)
  private
    FName: string;
  public
    constructor Create(aName: String);
    property Name: string read FName write FName;
  end;


implementation

constructor EditFieldName.Create(aName: String);
begin
  FName := aName;
end;

{ TableName }

constructor TableName.Create(aName: String);
begin
  FName := aName;
end;


{ KeyField }

constructor KeyField.Create(aName: String);
begin
  FName := aName;
end;

{ JOIN }
constructor JOIN.Create(aName: String);
begin
  FName := aName;
end;

end.

