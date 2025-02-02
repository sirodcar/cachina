unit FactoryController;

interface

uses
InterfaceController , forms, DBClient;

type
  TFactoryController  = class
  public
     class function CriarControllerCliente( Form:TForm; ClientDataSet: TClientDataSet): IController;
  end;

implementation

{ TFactoryController }

uses ControllerCliente;

class function TFactoryController.CriarControllerCliente(Form:TForm; ClientDataSet: TClientDataSet): IController;
begin
   result := TControllerCliente.create(Form , ClientDataSet);
end;

end.
