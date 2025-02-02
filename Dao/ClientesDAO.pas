unit ClientesDAO;

interface

Uses
Db, Rtti, CAtribEntity, TypInfo, SysUtils, srvModBaseDados,
DBClient, Provider, Forms, Dialogs, strUtils, GenericEntidade, GenericDAO;

type
  TClientesDAO = class(TGenericDAO)
  private
  public
    class function GetClientes(Condicao: string = ''; Campos: string = ''):TDataSet;
    class function GetCliente(Codigo: string; Campos: string = ''):TDataSet;
    class function GetClientePlaca( CodigoCliente: string ; Placa: string):TDataset;
    class function GetClienteContatoCPF(CPFCNPJ: string):TDataset;
    class function GetClienteCPFCNPJ(CPFCNPJ: string):TDataset;
    class function GetClienteNomeCPFCNPJ(CPFCNPJ: string): TDataset; static;
  end;

implementation

{ TClientesDAO }

class function TClientesDAO.GetCliente(Codigo: string; Campos: string = ''): TDataSet;
begin
  result:= GetSelect( 'Pessoa T1', 'T1.Codigo='+quotedstr(Codigo), Campos );
end;

class function TClientesDAO.GetClienteContatoCPF(CPFCNPJ: string): TDataset;
begin
  result:= nil;
  if CPFCNPJ <> '' then
  result:= GetSelect( 'Pessoa  left join Contatos on Contatos.CodigoCliente = Pessoa.Codigo',
           'Pessoa.CPFCNPJ='+quotedstr(CPFCNPJ)+' or CPF='+quotedstr(CPFCNPJ),
           'top 1 Pessoa.Codigo , '+
           ' (case when Contatos.CPF = '+quotedstr(CPFCNPJ)+
           ' then Contatos.Nome else Pessoa.Nome end ) as Nome,'+
           ' RazaoSocial as RazaoSocial,'+
           ' (case when Contatos.CPF = '+quotedstr(CPFCNPJ)+
           ' then Contatos.Telefone else Pessoa.Telefone end) as telefone,'+
           ' (case when Contatos.CPF = '+quotedstr(CPFCNPJ)+
           ' then Contatos.CPF else  Pessoa.CPFCNPJ end) as CPFCNPJ,'+
           ' (case when Contatos.CPF = '+quotedstr(CPFCNPJ)+
           ' then Contatos.Autorizado else ''SIM'' end ) as Autorizado,'+
           ' ( Select count(*) From Recebimento where '+
           '   CodigoPessoa =  Pessoa.Codigo and '+
           '   Convert( datetime ,DataVencimento,103) <= Convert( datetime , getdate(), 103 ) and '+
           '   Situacao = ''Aberto'' ) as ContaAtrasada');
end;

class function TClientesDAO.GetClienteCPFCNPJ(CPFCNPJ: string): TDataset;
begin
   result:= nil;
   if CPFCNPJ <> '' then
   result:= GetSelect( 'Pessoa T1', 'T1.CPFCNPJ='+quotedstr(CPFCNPJ) );
end;


class function TClientesDAO.GetClienteNomeCPFCNPJ(CPFCNPJ: string): TDataset;
begin
   result:= nil;
   if CPFCNPJ <> '' then
      result:= GetSelect( 'Pessoa T1', 'Nome Like ('+ quotedstr('%'+  CPFCNPJ +'%')+ ' or '+
                                      'CPFCNPJ Like '+quotedstr('%'+ CPFCNPJ +'%')+')');
end;

class function TClientesDAO.GetClientePlaca(CodigoCliente: string; Placa: string): TDataset;
begin
   result:= nil;
   if placa <> '' then
      result:= GetSelect('Pessoa'+
            ' inner join Veiculos ve on ve.CodigoCliente = Pessoa.Codigo'+
            ' LEFT join ModeloVeiculo mo on ve.CodigoModelo= mo.Codigo'+
            ' LEFT join MarcaVeiculo ma on ma.codigo = mo.CodigoMarca',
            ' Placa= '+quotedstr(placa)+
            ifthen( CodigoCliente <> '', ' and Pessoa.Codigo='+ CodigoCliente , '')+
            ' group by '+
            ' Pessoa.Nome, Pessoa.RazaoSocial , Pessoa.Telefone, '+
            ' Pessoa.CPFCNPJ, ve.cor, ve.ano, mo.Descricao, ma.Descricao ',
            ' TOP 1 max(Pessoa.Codigo) AS Codigo , Pessoa.Nome, Pessoa.RazaoSocial ,'+
            ' Pessoa.Telefone, Pessoa.CPFCNPJ, ve.cor, '+
            ' ve.ano, mo.Descricao as Modelo, ma.Descricao as Marca');
end;

class function TClientesDAO.GetClientes(Condicao, Campos: string): TDataSet;
begin
   result:= GetSelect( 'Pessoa T1', Condicao , Campos );
end;

end.
