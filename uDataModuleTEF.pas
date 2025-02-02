unit uDataModuleTEF;

interface

uses Data.DB, Datasnap.DBClient, frxClass, System.Classes, ACBrBase, ACBrTEFD,
  ACBrTEFDCliSiTef, ACBrTEFDClass, Vcl.Controls,
  uTEFExibeMenu, uTEFObtemCampo, System.SysUtils, Vcl.Dialogs,
  System.DateUtils, Vcl.Forms, uMensagensTef;

type
   tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar,
      tpsPagamento, tpsRelatorio);

  TDmTEF = class(TDataModule)
    ACBrTEFD1: TACBrTEFD;
    frxRelatorioGerencialNFCe: TfrxReport;
    cdsTEF: TClientDataSet;
    cdsTEFNSU: TStringField;
    cdsTEFCodigoAutorizacao: TStringField;
    cdsTEFValor: TFloatField;
    cdsTEFCodigoBandeiraTEF: TStringField;
    cdsTEFNSU_HOST: TStringField;
    procedure ACBrTEFD1AguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
    procedure ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFD1CliSiTefExibeMenu(Titulo: string; Opcoes: TStringList;
      var ItemSelecionado: Integer; var VoltarMenu: Boolean);
    procedure ACBrTEFD1CliSiTefObtemCampo(Titulo: string; TamanhoMinimo,
      TamanhoMaximo, TipoCampo: Integer;
      Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
      var Digitado, VoltarMenu: Boolean);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
      procedure ACBrTEFD1ADM( TACBrTEFDTipo : TACBrTEFDTipo);
  private
    FValorTotalVenda:Double;
    function EfetuarPgto(prrValorVenda: Real;
      proTipoTEF: TACBrTEFDTipo): Boolean;
    procedure ConfirmarTransacaoTEF;


    { Private declarations }
  public
    EstadoSimuladoEcf: tEstadoEcfSimulado;
    { Public declarations }
    pviIndice : Integer;
     function IniciarTEF(Valor: double; var Parcelas: integer;
      var CodigoBandeiraTef, NsuTef, NsuHost: string): Boolean;
  end;

var
  DmTEF: TDmTEF;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmTEF.ACBrTEFD1AguardaResp(Arquivo: string;
  SegundosTimeOut: Integer; var Interromper: Boolean);
var
  Msg: String;
begin
  {
    if (ACBrTEFD1.GPAtual in [gpCliSiTef, gpVeSPague]) then   // � TEF dedicado ?
    begin
    if (Arquivo = '23') and (not bCancelarResp.Visible) then  // Est� aguardando Pin-Pad ?
    begin
    if ACBrTEFD1.TecladoBloqueado then
    begin
    ACBrTEFD1.BloquearMouseTeclado(False);  // Desbloqueia o Teclado
    // TODO: nesse ponto � necess�rio desbloquear o Teclado, mas permitir
    //       um clique apenas no bot�o cancelar.... FALTA CORRIGIR NO DEMO
    end ;

    Msg := 'Tecle "ESC" para cancelar.';
    bCancelarResp.Visible := True ;
    fCancelado := False;
    end;
    end
    else
    Msg := 'Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut) ;

    if Msg <> '' then
    StatusBar1.Panels[2].Text := Msg;
    Application.ProcessMessages;

    if fCancelado then
    Interromper := True ;
  }
end;

procedure TDmTEF.ACBrTEFD1BloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin

  //if frmRecebimento <> nil then
  //   frmRecebimento.Enabled := not Bloqueia;

  Tratado := False; { Deixa executar o c�digo de Bloqueio do ACBrTEFD }
end;

procedure TDmTEF.ACBrTEFD1CliSiTefExibeMenu(Titulo: string;
  Opcoes: TStringList; var ItemSelecionado: Integer; var VoltarMenu: Boolean);
Var
  AForm: TfrmTEFExibeMenu;
  MR: TModalResult;
begin
  AForm := TfrmTEFExibeMenu.Create(self);
  try
    AForm.Panel1.Caption := Titulo;
    AForm.ListBox1.Items.AddStrings(Opcoes);

    MR := AForm.ShowModal;

    VoltarMenu := (MR = mrRetry);

    if (MR = mrOK) then
      ItemSelecionado := AForm.ListBox1.ItemIndex;
  finally
    AForm.Free;
  end;
end;

procedure TDmTEF.ACBrTEFD1CliSiTefObtemCampo(Titulo: string;
  TamanhoMinimo, TamanhoMaximo, TipoCampo: Integer;
  Operacao: TACBrTEFDCliSiTefOperacaoCampo; var Resposta: AnsiString;
  var Digitado, VoltarMenu: Boolean);
Var
  AForm: TfrmTEFObtemCampo;
  MR: TModalResult;
begin
  AForm := TfrmTEFObtemCampo.Create(self);
  try
    AForm.Panel1.Caption := Titulo;
    AForm.TamanhoMaximo := TamanhoMaximo;
    AForm.TamanhoMinimo := TamanhoMinimo;
    AForm.Operacao := Operacao;
    AForm.TipoCampo := TipoCampo;
    AForm.Edit1.Text := Resposta; { Para usar Valores Previamente informados }

    MR := AForm.ShowModal;

    Digitado := (MR = mrOK);
    VoltarMenu := (MR = mrRetry);

    if Digitado then
      Resposta := AForm.Edit1.Text;
  finally
    AForm.Free;
  end;

end;

procedure TDmTEF.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
var
  retorno: String;
begin
  try
    case Operacao of
      opeAbreGerencial:
        retorno := 'Abre Gerencial';

      opeFechaCupom:
        estadoSimuladoEcf := tpsLivre;

      opeSubTotalizaCupom:
        retorno := 'Sub Totaliza';

      opeFechaGerencial, opeFechaVinculado:
        estadoSimuladoEcf := tpsRelatorio;

      opePulaLinhas:
        begin
          Sleep(200);
        end;

      opeImprimePagamentos:
        begin
          retorno := 'ImprimePagamentos';
        end;
    end;
    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;

procedure TDmTEF.ACBrTEFD1ComandaECFAbreVinculado(COO,
  IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  try
    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;

procedure TDmTEF.ACBrTEFD1ComandaECFImprimeVia(TipoRelatorio
  : TACBrTEFDTipoRelatorio; Via: Integer; ImagemComprovante: TStringList;
  var RetornoECF: Integer);
var
  retorno: String;
begin
  try
    case TipoRelatorio of
      trGerencial:
        retorno := 'GERENCIAL:' + ImagemComprovante.Text;
      trVinculado:
        begin
          // ImagemComprovante.Text � o cara que retorna o comprovante do TEF.
          // Passar para a impress�o do DANFE do ACBr.

          retorno := 'VINCULADO:' + ImagemComprovante.Text;
          frxRelatorioGerencialNFCe.Variables['lsTextoRelatorioGerencial'] :=
            frxRelatorioGerencialNFCe.Variables['lsTextoRelatorioGerencial'] +
            ImagemComprovante.Text + #13 + #10;
        end;
    end;

    RetornoECF := 1;
  except
    RetornoECF := 0;
  end;
end;

procedure TDmTEF.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1;
end;

procedure TDmTEF.ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
  Mensagem: string; var AModalResult: TModalResult);
var
  Fim: TDateTime;
  OldMensagem: String;
begin
   if frmMensagensTef = nil then
      application.CreateForm(TfrmMensagensTef, frmMensagensTef);

  case Operacao of

    opmOK:
      AModalResult := MessageDlg(Mensagem, mtInformation, [mbOK], 0);
    opmYesNo:
      AModalResult := MessageDlg(Mensagem, mtConfirmation, [mbYes, mbNo], 0);
    opmExibirMsgOperador, opmRemoverMsgOperador:
      frmMensagensTef.lMensagemOperador.Caption := Mensagem;
    opmExibirMsgCliente, opmRemoverMsgCliente:
      frmMensagensTef.lMensagemCliente.Caption := Mensagem;

    opmDestaqueVia:
      begin
        OldMensagem := frmMensagensTef.lMensagemOperador.Caption;
        try
          frmMensagensTef.lMensagemOperador.Caption := Mensagem;
          frmMensagensTef.pMensagemOperador.Visible := True;
          frmMensagensTef.pMensagem.Visible := True;

          { Aguardando 3 segundos }
          Fim := IncSecond(now, 3);
          repeat
            Sleep(200);
            frmMensagensTef.lMensagemOperador.Caption := Mensagem + ' ' +
              IntToStr(SecondsBetween(Fim, now));
            Application.ProcessMessages;
          until (now > Fim);

        finally
          frmMensagensTef.lMensagemOperador.Caption := OldMensagem;
        end;
      end;
  end;


  if ( Pos( '31', Mensagem ) > 0 ) then
     frmMensagensTef.lMensagemOperador.Caption := '';

  frmMensagensTef.pMensagemOperador.Visible := (frmMensagensTef.lMensagemOperador.Caption <> '');
  frmMensagensTef.pMensagemCliente.Visible := False; // (lMensagemCliente.Caption <> '') ;

  frmMensagensTef.pMensagem.Visible := frmMensagensTef.pMensagemOperador.Visible or frmMensagensTef.pMensagemCliente.Visible;
  if frmMensagensTef.pMensagem.Visible = True then
     frmMensagensTef.Show
  else
     frmMensagensTef.Hide;
  Application.ProcessMessages;
end;

procedure TDmTEF.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
  var RetornoECF: string);
var
  ASubTotal: Double;
begin
  case Operacao of
    ineSubTotal:
      begin
        ASubTotal := FValorTotalVenda;
        RetornoECF := FloatToStr(ASubTotal);
        if estadoSimuladoEcf = tpsPagamento then
          RetornoECF := FloatToStr(0);
      end;

    ineTotalAPagar:
      RetornoECF := '0';

    ineEstadoECF:
      begin
        Case estadoSimuladoEcf of
          tpsLivre:
            RetornoECF := 'L';
          tpsVenda:
            RetornoECF := 'V';
          tpsPagamento:
            RetornoECF := 'P';
          tpsRelatorio:
            RetornoECF := 'R';
        else
          RetornoECF := 'O';
        end;
      end;
  end;
end;

procedure TDmTEF.ACBrTEFD1ADM( TACBrTEFDTipo : TACBrTEFDTipo);
Begin

  if not(DMTEF.ACBrTEFD1.Inicializado( TACBrTEFDTipo )) then
     ACBrTEFD1.Inicializar(TACBrTEFDTipo);

  ACBrTEFD1.ADM(TACBrTEFDTipo);
End;

function TDmTEF.IniciarTEF(Valor:double; var Parcelas:integer; var CodigoBandeiraTef, NsuTef, NsuHost: string ): Boolean;
    function GetCodigoBandeira(prsRede: string): string;
  begin
    if Pos('VISA', prsRede) > 0 then
      result := '01'
    else if Pos('MASTER', prsRede) > 0 then
      result := '02'
    else if Pos('AMERICAN', prsRede) > 0 then
      result := '03'
    else if Pos('ELO', prsRede) > 0 then
      result := '06'
    else if Pos('HIPERCARD', prsRede) > 0 then
      result := '07'
    else
      result := '99';
    { '01'bcVisa, '02'bcMasterCard, '03' bcAmericanExpress, '04' bcSorocred,
      '05'bcDinersClub, '06'bcElo, '07' bcHipercard, '08' bcAura,
      '09'bcCabal, '99'bcOutros }
  end;
var
  lbRetorno: Boolean;
  I: Integer;
  liParcelas : Integer;
begin
  lbRetorno := False;
  liParcelas := 0;

  FValorTotalVenda:= Valor;
  estadoSimuladoEcf := tpsVenda;
  lbRetorno := EfetuarPgto( Valor, TACBrTEFDTipo.gpTefDial);
  estadoSimuladoEcf := tpsLivre;

  FValorTotalVenda:= 0;

  if (lbRetorno) then
  begin
    ConfirmarTransacaoTEF;

    liParcelas := ACBrTEFD1.Resp.QtdParcelas;
    if liParcelas = 0 then
       liParcelas := 1;

    Parcelas := liParcelas;
    CodigoBandeiraTef := GetCodigoBandeira(ACBrTEFD1.Resp.Rede);
    NsuTef   := ACBrTEFD1.Resp.CodigoAutorizacaoTransacao;
    NsuHost  := ACBrTEFD1.Resp.NSU;

    {
    AdicionarDadosTEF(ACBrTEFD1.RespostasPendentes[0].NSU,
    ACBrTEFD1.RespostasPendentes[0].CodigoAutorizacaoTransacao,
    ACBrTEFD1.RespostasPendentes[0].Rede,
    ACBrTEFD1.RespostasPendentes[0].ValorTotal);
    }
  end
  else
    ACBrTEFD1.CancelarTransacoesPendentes;

  result := lbRetorno;
end;

function TDmTEF.EfetuarPgto(prrValorVenda: Real; proTipoTEF: TACBrTEFDTipo): Boolean;
var
  StatusTransacao: Boolean;
begin
  StatusTransacao := False;
  try
    {
    ACBrTEFD1.TEFCliSiTef. := 'SE000001';
    ACBrTEFD1.TEFCliSiTef.CodigoLoja := '00000000';
    }
    ACBrTEFD1.Inicializar(proTipoTEF);
    if not(ACBrTEFD1.Inicializado(proTipoTEF)) then
      raise Exception.Create('TEF n�o inicializado.');

    StatusTransacao := ACBrTEFD1.CRT(prrValorVenda, '02', '0');
  finally
    result := StatusTransacao;
    // ACBrTEFD1.DesInicializar(TACBrTEFDTipo.gpCliSiTef);
  end;
end;

procedure TDmTEF.ConfirmarTransacaoTEF;
begin
  try
    try
      //ACBrTEFD1.ImprimirTransacoesPendentes;
      ACBrTEFD1.ConfirmarTransacoesPendentes;
    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
  finally
    ACBrTEFD1.DesInicializar(TACBrTEFDTipo.gpCliSiTef);
  end;
end;

end.
{
Segue informa��es referente ao processo de certifica��o e recertifica��o.
Como efetuar a certifica��o de sua Automa��o Comercial?
1.    Preencher o formul�rio com os dados da Software House  (Formul�rio abaixo);
2.    Efetuar o download da documenta��o da interface e PAY&GO DEMO (Link�s abaixo);
3.    Desenvolver a interface TEF-IP na Automa��o Comercial;
4.    Efetuar todos testes dentro do Pay&Go Demo sem interrup��o e em uma �nica passada no m�dulo "Certifica��o".
As transa��es dever�o ser efetuadas sequencialmente n�o podendo ser interrompido, caso haja interrup��o o processo de Certifica��o
dever� ser reiniciado do passo 01;
5.    Executar o programa PGZIPLOG para efetuar a compacta��o dos arquivos do PAY&GO que dever�o ser enviados para dev@ntk.com.br;
6.    Aguardar prazo m�ximo de 5 dias �teis para an�lise dos LOG�s.

Por favor preencher o formul�rio abaixo para cadastro da sua empresa em nossa plataforma.

Formul�rio.

Legenda, AC*: Automa��o Comercial

Raz�o Social:
Nome Fantasia:
CNPJ:
Nome do Respons�vel:
Telefone - M�vel/Fixo:

E-mail:
Uso TEF:
Revenda (    ) / Uso pr�prio (    )             *marque com X

Ramo que AC* atua:
Linguagem do Sistema:

Solu��o TEF/ Integra��o:
PayGo (   ) ControlPay (  ) PGWEB Win/Lin/Android (    ) Gate2all (   ) Recorr�ncia (   ) POS TEF S920 (   )

PayMail (   ) PayReport (   ) iChegou (   )
Possui TEF integrado?
Sim (    ) N�o (    ) Qual?

Nome + Vers�o da AC*:
Segue os link�s.

PAYGO

Paygo Demo: https://www.setis.com.br/download/PGPP/PG_004.003.012.001_demo.zip
Roteiro de Testes: https://www.setis.com.br/download/PGPP/PGDocCertif_v3.02.zip
Manual Especifica��o T�cnica: https://www.setis.com.br/download/PGPP/PGWPP_ACIF_v2.15.zip
PGZIPLOG: https://www.setis.com.br/download/PGPP/PGZipLog_161118.zip

Caso n�o tenha pinpad, configurar no Paygo Cliente Ip do Servidor + porta 8005.

}
