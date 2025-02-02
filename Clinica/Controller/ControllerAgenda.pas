unit ControllerAgenda;

interface

uses
   Windows, DB,  Messages, SysUtils, Variants, Classes, ControllerTabelas, DateUtils,
   GenericEntidade;

Type
  TControllerAgenda = class(TControllerTabelas )
  private


  public
    procedure Inserir(Objecto: TGenericEntidade );override;
    procedure Atualizar(Objecto: TGenericEntidade);override;
    procedure Excluir(Objecto: TGenericEntidade); override;
    function GetDataSet(Objecto: TGenericEntidade;Condicao: string; Fields: string= ''):TDataset;
    function GetSelect(Tabela, Condicao:string; Fields: string= ''):TDataset;
    function GetMaxAgenda: String;
    procedure Inicializar(Sender:TStringList);
    class function GetIntervaloAgenda(Data:TDatetime): string;
    class function GetCamposAgenda: string;

    procedure RepetirAgendamento(Objecto: TGenericEntidade;Tipo: string);

  end;

  const
  CamposAgendamento        = 'T1.*';
  DescricaoTipoAgendamento = '(Select "Descricao" from TipoAgendamento where "Codigo" = T1."CodigoTipoAgendamento") as DescricaoTipoAgendamento';
  DescricaoConvenio        = '(Select "Descricao" from Convenio where "Codigo" = T1."CodigoConvenio")  as DescricaoConvenio';
  Encaminado               = '(Select "Descricao" from Especialista where "Codigo" = T1."CodigoEncaminhado")  as Encaminhado';
  Paciente                 = ' ( case '+
                             '  when "CodigoPaciente" > 0 then '+
                           //'   (Select "Nome"|| '' : '' || "NumeroCarteira" from Triagem where "Codigo" = T1."CodigoPaciente")'+
                             '   (Select "Nome" from Triagem where "Codigo" = T1."CodigoPaciente")'+
                             ' else' +
                             '    "NomePaciente" '+
                             ' end)  as Paciente';
  TabelaCID               = '(Select "Descricao" from TabelaCID where "Codigo" = T1."CodigoCID")  as TabelaCID';


implementation

{ TControllerAgenda }

uses GenericDAO, EntidadeFactory, UtilsString;

procedure TControllerAgenda.Atualizar(Objecto: TGenericEntidade);
begin
    inherited;
end;

procedure TControllerAgenda.Excluir(Objecto: TGenericEntidade);
begin
    inherited ;
end;

 function TControllerAgenda.GetDataSet(Objecto: TGenericEntidade; Condicao,
  Fields: string): TDataset;
begin
   result:= inherited  ;
end;

class function TControllerAgenda.GetIntervaloAgenda(Data:TDatetime): string;
begin
   result:= '( ( "Data" >= cast( '+ quotedstr( FormatDatetime( 'YYYY/MM/DD', Data))+' as Date)' +
            '  and '+
            '  "Data" <= cast( '+ quotedstr( FormatDatetime( 'YYYY/MM/DD', Data))+' as Date) )'+
            ' OR '+
            '  T1."Codigo" IN (Select  "CodigoAgendamento" From Sessoes where '+
            '( "Data" >= cast( '+ quotedstr( FormatDatetime( 'YYYY/MM/DD', Data))+' as Date)' +
            '  and '+
            '  "Data" <= cast( '+ quotedstr( FormatDatetime( 'YYYY/MM/DD', Data))+' as Date) ) ) )';

end;

function TControllerAgenda.GetSelect(Tabela, Condicao,
  Fields: string): TDataset;
begin
   result:=  inherited  ;
end;

procedure TControllerAgenda.Inicializar(Sender: TStringList);
begin

end;

procedure TControllerAgenda.Inserir(Objecto: TGenericEntidade);
begin
   //'CodigoEspecialista', 'CodigoConvenio','CodigoTipoAgendamento',
   //Mapper.IsRiquired(['NomePaciente']);
   inherited;
end;

procedure TControllerAgenda.RepetirAgendamento(Objecto: TGenericEntidade;Tipo: string);
var
  I: Integer;
  Data : TDatetime;
  Hora: string;
  CodigoEspecialista: string;
  CodigoPaciente: string;
  UltimoDia: TDatetime;
  Mes: integer;
  Max:integer;
  intervalo: integer;
begin
  PMapper.Entidade:= Objecto;

  Data               := PMapper.GetValueDatetimeEntidade('Data');
  Hora               := PMapper.GetValueEntidade('Hora');
  CodigoEspecialista := PMapper.GetValueEntidade('CodigoEspecialista');
  CodigoPaciente     := PMapper.GetValueEntidade('CodigoPaciente');

  case tipo[1] of
     'S':begin Max := 4; intervalo:= 7;end;
     'Q':begin Max := 2; intervalo:= 14; end;
  end;

  if (CodigoPaciente <> '') and (CodigoEspecialista <> '') and (Hora <> '') then
  begin
    Mes:= monthof(Data);
    for I := 1 to Max do
    begin
      Data := incday(Data , intervalo);
      if Mes = monthof(Data) then
      begin
        if TGenericDAO.GetValue( TEntidadeFactory.GetNameEntidade(tpAgendamento) ,
        '     "Data" = '+ quotedstr(FormatDatetime('YYYY/MM/DD',Data) )+
        ' and "Hora" = '+ quotedstr(Hora)+
        ' and "CodigoEspecialista" = '+ CodigoEspecialista +
        ' and "CodigoPaciente"     = '+ CodigoPaciente , 'CodigoPaciente') = '' then
        begin
          PMapper.SendValueToFieldEntidade('Data', datetostr(Data) );
          Inserir(PMapper.Entidade);
        end
        else
        begin
        //Mapper.SendValueToFieldEntidade('CodigoPaciente', CodigoPaciente );
          PMapper.SendValueToFieldEntidade('Data', datetostr(Data) );
          Atualizar( PMapper.Entidade);
        end;
      end;
    end;
  end;
end;

class function TControllerAgenda.GetCamposAgenda: string;
begin
  result:= CamposAgendamento +','+ DescricaoTipoAgendamento+','+
           DescricaoConvenio +','+ Encaminado+','+Paciente+','+TabelaCID;
end;

function TControllerAgenda.GetMaxAgenda: String;
begin
  result := GetSelect('Agendamento','0=0',' max("Codigo") + 1 as Codigo ').FieldByName('Codigo').AsString;
end;


end.
