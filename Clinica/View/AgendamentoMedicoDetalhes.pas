unit AgendamentoMedicoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AgendamentoDetalhes, Vcl.Menus, Data.DB,
  Datasnap.DBClient, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormAgendamentoMedicosDetalhes = class(TFormAgendamentoDetalhes)
    Label5: TLabel;
    cboCodigoHospital: TComboBox;
    SpeedButton5: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendamentoMedicosDetalhes: TFormAgendamentoMedicosDetalhes;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory, Principal;

procedure TFormAgendamentoMedicosDetalhes.FormCreate(Sender: TObject);
begin
  inherited;
  with MapperEntidade do
  begin
    associar('CodigoHospital',  cboCodigoHospital );
  end;
  FillCombobox( tpPessoa, cboCodigoHospital,'"Tipo"=''FORNECEDOR'' ','Codigo','Nome','Nome');
end;

procedure TFormAgendamentoMedicosDetalhes.SpeedButton5Click(Sender: TObject);
begin
  inherited;
   formPrincipal.actFornecedor.Execute;
end;

end.
