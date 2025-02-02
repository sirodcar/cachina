unit ProcessoDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateDetalhesComTabGrid, Data.DB,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls;

type
  TFormProcessoDetalhes = class(TTemplateFormComTabGridDetalhes)
    edtValorCausa: TEdit;
    edtValorPedido: TEdit;
    edtValorProvisionado: TEdit;
    edtValorFinal: TEdit;
    lbValorFinal: TLabel;
    lbValorProvisionado: TLabel;
    lbValorCausa: TLabel;
    lbValorPedido: TLabel;
    edtNumero: TEdit;
    lbCodigoContrario: TLabel;
    lbCodigoAdvogado: TLabel;
    lbCodigoCliente: TLabel;
    lbNumero: TLabel;
    lbCodigoFaseAtual: TLabel;
    lbCodigoTipoAcao: TLabel;
    lbCodigoObjeto: TLabel;
    lbCodigoAreaJuridica: TLabel;
    lbCodigoDistribuicao: TLabel;
    lbDataInicio: TLabel;
    lbParticipacao: TLabel;
    lbCodigoResultado: TLabel;
    lbDataEncerramento: TLabel;
    edtParticipacao: TEdit;
    dateDataInicio: TDateTimePicker;
    dateDataEncerramento: TDateTimePicker;
    lbRiscoPerda: TLabel;
    edtRiscoPerda: TEdit;
    TabSheet3: TTabSheet;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    cboCodigoAreaJuridica: TDBLookupComboBox;
    cboCodigoDistribuicao: TDBLookupComboBox;
    cboCodigoFaseAtual: TDBLookupComboBox;
    cboCodigoTipoAcao: TDBLookupComboBox;
    cboCodigoObjeto: TDBLookupComboBox;
    cboCodigoAdvogado: TDBLookupComboBox;
    cboCodigoCliente: TDBLookupComboBox;
    cboCodigoContrario: TDBLookupComboBox;
    cboCodigoResultado: TDBLookupComboBox;
    memoObservacao: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessoDetalhes: TFormProcessoDetalhes;

implementation

{$R *.dfm}

uses EntidadeFactory, ControllerProcesso, DBUtils, Principal;

procedure TFormProcessoDetalhes.FormCreate(Sender: TObject);
begin
  Entidade:= TEntidadeFactory.criar(tpProcesso);
  Controller:= TControllerProcesso.create;
  Campos := ControllerProcesso.CamposProcesso;
  Tabela := ControllerProcesso.ConsultaTabela;
  CampoPesquisa:= 'T1."Numero"';
  inherited;
  with MapperEntidade do
  begin
    associar('Codigo', nil);
    associar('CodigoFilial', nil);
    associar('Numero', edtNumero);
    associar('CodigoCliente',  cboCodigoCliente);
    associar('CodigoAdvogado',  cboCodigoAdvogado);
    associar('CodigoContrario',  cboCodigoContrario);
    associar('CodigoObjeto',  cboCodigoObjeto);
    associar('CodigoTipoAcao',  cboCodigoTipoAcao);
    associar('CodigoFaseAtual',  cboCodigoFaseAtual);
    associar('CodigoDistribuicao',  cboCodigoDistribuicao);
    associar('CodigoAreaJuridica',  cboCodigoAreaJuridica);
    associar('CodigoResultado',  cboCodigoResultado);
    associar('Observacao', memoObservacao);
    associar('Participacao', edtParticipacao);
    associar('ValorCausa', edtValorCausa);
    associar('ValorPedido', edtValorPedido);
    associar('ValorProvisionado', edtValorProvisionado);
    associar('ValorFinal', edtValorFinal);
    associar('RiscoPerda', edtRiscoPerda);
    associar('DataInicio', dateDataInicio);
    associar('DataEncerramento', dateDataEncerramento);
  end;

  DBUtils.FillLookUpCombobox(tpFuncionarios,  cboCodigoAdvogado, 'Codigo','Nome' );
  DBUtils.FillLookUpCombobox(tpPessoa,  cboCodigoCliente, 'Codigo','Nome' );
  DBUtils.FillLookUpCombobox(tpPessoa,  cboCodigoContrario, 'Codigo','Nome' );

  DBUtils.FillLookUpCombobox(tpAreaJuridica, cboCodigoAreaJuridica);
  DBUtils.FillLookUpCombobox(tpDistribuicao, cboCodigoDistribuicao);
  DBUtils.FillLookUpCombobox(tpFaseAtual,    cboCodigoFaseAtual);
  DBUtils.FillLookUpCombobox(tpTipoAcao,     cboCodigoTipoAcao);
  DBUtils.FillLookUpCombobox(tpObjeto,       cboCodigoObjeto);
  DBUtils.FillLookUpCombobox(tpResultado,    cboCodigoResultado);

end;

procedure TFormProcessoDetalhes.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActAreaJuridica.Execute;
  DBUtils.FillLookUpCombobox(tpAreaJuridica, cboCodigoAreaJuridica);
end;

procedure TFormProcessoDetalhes.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActClientes.Execute;
  DBUtils.FillLookUpCombobox(tpPessoa,  cboCodigoCliente, 'Codigo','Nome' );
end;

procedure TFormProcessoDetalhes.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   FormPrincipal.ActFornecedores.Execute;
   DBUtils.FillLookUpCombobox(tpPessoa,  cboCodigoContrario, 'Codigo','Nome' );
end;

procedure TFormProcessoDetalhes.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  FormPrincipal.ActFuncionarios.Execute;
  DBUtils.FillLookUpCombobox(tpFuncionarios,  cboCodigoAdvogado, 'Codigo','Nome' );
end;

procedure TFormProcessoDetalhes.SpeedButton5Click(Sender: TObject);
begin
  inherited;
    FormPrincipal.ActDistribuicao.Execute;
    DBUtils.FillLookUpCombobox(tpDistribuicao, cboCodigoDistribuicao);
end;

procedure TFormProcessoDetalhes.SpeedButton6Click(Sender: TObject);
begin
  inherited;
    FormPrincipal.ActFaseProcesso.Execute;
    DBUtils.FillLookUpCombobox(tpFaseAtual,    cboCodigoFaseAtual);
end;

procedure TFormProcessoDetalhes.SpeedButton7Click(Sender: TObject);
begin
  inherited;
    FormPrincipal.ActTipoAcao.Execute;
    DBUtils.FillLookUpCombobox(tpTipoAcao,     cboCodigoTipoAcao);
end;

procedure TFormProcessoDetalhes.SpeedButton8Click(Sender: TObject);
begin
  inherited;
    FormPrincipal.ActObjetoProcesso.Execute;
    DBUtils.FillLookUpCombobox(tpObjeto,       cboCodigoObjeto);
end;

procedure TFormProcessoDetalhes.SpeedButton9Click(Sender: TObject);
begin
  inherited;
    FormPrincipal.ActResultado.Execute;
end;

end.
