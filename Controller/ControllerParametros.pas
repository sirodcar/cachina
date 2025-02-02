unit ControllerParametros;

interface

type
  TControllerParametros=class
  private
  public
    class function GetCFOPPadraoVenda: string; static;
    class function GetCFOPPadraoCompra: string; static;
    class function GetCFOPPadraoCompraForaEstado: string; static;
    class function GetCFOPPadraoDevolucaoCompra: string; static;
    class function GetCFOPPadraoVendaForaEstado: string; static;
  end;

implementation

{ TControllerParametros }

uses GenericDAO;

class function TControllerParametros.GetCFOPPadraoVenda: string;
begin
   result := TGenericDAO.GetValue('Parametros','Parametro= ''CFOPPADRAOVENDA''', 'Valor');
end;

class function TControllerParametros.GetCFOPPadraoVendaForaEstado: string;
begin
   result := TGenericDAO.GetValue('Parametros','Parametro= ''CFOPPADRAOVENDAFORAESTADO''', 'Valor');
end;

class function TControllerParametros.GetCFOPPadraoCompra: string;
begin
   result := TGenericDAO.GetValue('Parametros','Parametro= ''CFOPPADRAOCOMPRA''', 'Valor');
end;

class function TControllerParametros.GetCFOPPadraoCompraForaEstado: string;
begin
   result := TGenericDAO.GetValue('Parametros','Parametro= ''CFOPPADRAOCOMPRAFORAESTADO''', 'Valor');
end;

class function TControllerParametros.GetCFOPPadraoDevolucaoCompra: string;
begin
   result := TGenericDAO.GetValue('Parametros','Parametro= ''CFOPPADRAODEVOLUCAO''', 'Valor');
end;

end.
