unit BoletoACBr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ACBrBase, ACBrBoleto, ACBrUtil,
  ACBrBoletoFCFR, DB, StrUtils, Controller;

type
  TfrmBoletoACBr = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button7: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edtLocalPag: TEdit;
    edtEspecieDoc: TEdit;
    edtEspecieMod: TEdit;
    cbxAceite: TComboBox;
    edtCarteira: TEdit;
    edtNossoNro: TEdit;
    edtMoraJuros: TEdit;
    edtValorDesconto: TEdit;
    edtValorAbatimento: TEdit;
    edtMulta: TEdit;
    edtDataMora: TMaskEdit;
    edtDataDesconto: TMaskEdit;
    edtDataAbatimento: TMaskEdit;
    edtDataProtesto: TMaskEdit;
    edtNumeroDoc: TEdit;
    edtValorDoc: TEdit;
    edtDataDoc: TMaskEdit;
    edtVencimento: TMaskEdit;
    memMensagem: TMemo;
    edtInstrucoes1: TEdit;
    edtInstrucoes2: TEdit;
    Panel2: TPanel;
    edtNome: TEdit;
    edtCPFCNPJ: TEdit;
    edtEmail: TEdit;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtComplemento: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtCEP: TEdit;
    Label30: TLabel;
    edtUF: TEdit;
    ACBrBoleto1: TACBrBoleto;
    Label31: TLabel;
    cbxLayOut: TComboBox;
    ACBrBoletoFCFR1: TACBrBoletoFCFR;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxLayOutChange(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    Titulo : TACBrTitulo;
    DataSet:TDataset;
    Controller: IController;
    procedure AdicionarBoleto;
    procedure GerarBoleto;
  end;

var
  frmBoletoACBr: TfrmBoletoACBr;

implementation

Uses TypInfo,ControllerRecebimento, UtilsString,  ControllerSequencias;

{$R *.dfm}

procedure TfrmBoletoACBr.Button1Click(Sender: TObject);
begin
   ACBrBoleto1.ACBrBoletoFC.NomeArquivo := ExtractFilePath(Application.ExeName)+'boleto.html';
   ACBrBoleto1.GerarHTML;
end;

procedure TfrmBoletoACBr.Button2Click(Sender: TObject);
begin
   ACBrBoleto1.GerarPDF;
end;

procedure TfrmBoletoACBr.Button6Click(Sender: TObject);
var
  NumeroRemessa: string;
begin
  NumeroRemessa:= TControllerSequencias.GetSequenciaRemessa;
  if NumeroRemessa <> '' then
  begin
     ACBrBoleto1.GerarRemessa( strtoint( NumeroRemessa ) );
     TControllerSequencias.IncrementarSequenciaRemessa;
     close;
  end;
end;

procedure TfrmBoletoACBr.Button7Click(Sender: TObject);
begin
   AdicionarBoleto;
   ACBrBoleto1.Imprimir;
end;

procedure TfrmBoletoACBr.FormCreate(Sender: TObject);
var
  I : TACBrBolLayOut ;
begin
   cbxLayOut.Items.Clear ;
   For I := Low(TACBrBolLayOut) to High(TACBrBolLayOut) do
      cbxLayOut.Items.Add( GetEnumName(TypeInfo(TACBrBolLayOut), integer(I) ) ) ;
   cbxLayOut.ItemIndex := 0 ;
end;

procedure TfrmBoletoACBr.cbxLayOutChange(Sender: TObject);
begin
  ACBrBoleto1.ACBrBoletoFC.LayOut := TACBrBolLayOut( cbxLayOut.ItemIndex );
end;

procedure TfrmBoletoACBr.GerarBoleto;
var
  DadosCliente :TDataset;
  DadosCaixa :TDataset;
  Nome, RazaoSocial : string;
  ValorJuros      ,
  ValorMulta      : Double;
  Codigo          : string;
  Carteira        : string;
  CodigoCaixa     : string;
  Valor           : Double;
  DataVencimento  : TDatetime;
  Data            : TDatetime;
  CodigoBanco     : integer;
  Cendente        : string;
  Agencia         : string;
  Conta           : string;
  Digito          : string;
  Convenio        : string;
  PercentualJuros : Double;
  PercentualMulta : Double;
  NumeroDocumento : string;
  CodigoPessoa    : string;

  ValorSelecionado: Double;
begin
    if DataSet.FieldByName('FormaPagamento').asstring <> '' then
    begin
       if DataSet.FieldByName('CodigoBanco').asinteger > 0 then
       begin

           Codigo          := DataSet.FieldByName('Codigo').asstring;
           Carteira        := DataSet.FieldByName('Carteira').asstring;
           CodigoCaixa     := DataSet.FieldByName('CodigoCaixa').asstring;

           if ValorSelecionado = 0 then
              Valor           := DataSet.FieldByName('Valor').asFloat
           else
              Valor           := ValorSelecionado;

           DataVencimento  := DataSet.FieldByName('DataVencimento').AsDatetime;
           CodigoBanco     := DataSet.FieldByName('CodigoBanco').asinteger;
           Cendente        := DataSet.FieldByName('Cendente').asstring;
           Agencia         := DataSet.FieldByName('Agencia').asstring;
           Conta           := DataSet.FieldByName('Conta').asstring;
           Digito          := DataSet.FieldByName('Digito').asstring;
           Convenio        := DataSet.FieldByName('Convenio').asstring;
           PercentualJuros := DataSet.FieldByName('PercentualJuros').asfloat;
           PercentualMulta := DataSet.FieldByName('PercentualMulta').asfloat;
           Data            := DataSet.FieldByName('Data').AsDatetime;
           NumeroDocumento := DataSet.FieldByName('NumeroDocumento').asstring;
           CodigoPessoa    := DataSet.FieldByName('CodigoPessoa').asstring;


           DadosCliente := TControllerRecebimento(Controller).GetSelect('Pessoa T1',
                            'Codigo='+ CodigoPessoa  );
           Nome         := DadosCliente.FieldByName('Nome').asstring;
           RazaoSocial  := DadosCliente.FieldByName('RazaoSocial').asstring;

           with frmBoletoACBr do
           begin
              ACBrBoleto1.Cedente.CNPJCPF:= '04.678.720/0001-61';
              ACBrBoleto1.Cedente.Nome  := 'GC AutoEletrica e Eletronica Av.atonio basilio 3288 '+
              'Lagoa N. Natal/RN 59056005';
              ACBrBoleto1.Cedente.Logradouro:='Av atonio basilio';
              ACBrBoleto1.Cedente.Bairro:= 'Lagoa Nova';
              ACBrBoleto1.Cedente.Cidade:= 'Natal';
              ACBrBoleto1.Cedente.UF:= 'RN';
              ACBrBoleto1.Cedente.CEP:= '59056005';
              ACBrBoleto1.Cedente.NumeroRes:= '3288';

              edtNumeroDoc.text         := NumeroDocumento;

              if CodigoCaixa <> '' then
              begin

                 edtCarteira.text    := Carteira;
                 edtNossoNro.text    := UtilsString.StrZero(strtoint( Codigo ) , 4 );
                 edtVencimento.text  := Formatdatetime('DD/MM/YY',DataVencimento);
                 edtValorDoc.text    := floattostr( Valor );
                 edtDataDoc.text     := Formatdatetime('DD/MM/YY', Data );
                 edtNumero.text      := '0';
                 ValorJuros          := Valor * PercentualJuros / 100;
                 ValorMulta          := Valor * PercentualMulta / 100;
                 memMensagem.text    := 'AP�S O VENCIMENTO COBRAR MULTA DE '+
                                        FormatFloat(',0.00;',ValorMulta)+ ' R$ e COBRAR JUROS DE '+
                                        FormatFloat(',0.00;',ValorJuros)+ ' R$ POR DIA DE ATRASO.';

                 edtNome.text        := StrZero(DadosCliente.FieldByName('Codigo').AsInteger,6)+' - '+
                                        ifThen( RazaoSocial <> '', RazaoSocial, Nome );
                 edtCPFCNPJ.text     := DadosCliente.FieldByName('CPFCNPJ').asstring;
                 edtEndereco.text    := DadosCliente.FieldByName('Endereco').asstring;
                 edtBairro.text      := DadosCliente.FieldByName('Bairro').asstring;
                 edtCidade.text      := DadosCliente.FieldByName('Municipio').asstring;
                 edtUF.text          := DadosCliente.FieldByName('UF').asstring;
                 edtCep.text         := DadosCliente.FieldByName('Cep').asstring;
                 edtLocalPag.Text    := 'Preferencialmente nas ag�ncias';

                 case CodigoBanco of
                   1:   begin
                          ACBrBoleto1.Banco.TipoCobranca := cobBancoDoBrasil;
                          edtLocalPag.Text    := 'Preferencialmente nas ag�ncias ou lotericas';
                        end;
                   748: begin
                          ACBrBoleto1.Banco.TipoCobranca := cobSicred;
                          ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
                          edtLocalPag.Text    := 'Preferencialmente nas cooperativas SICRED';
                        end;
                   341: ACBrBoleto1.Banco.TipoCobranca := cobItau;
                   11:  ACBrBoleto1.Banco.TipoCobranca := cobBradesco;
                   33:  ACBrBoleto1.Banco.TipoCobranca := cobSantander;
                   104: ACBrBoleto1.Banco.TipoCobranca := cobCaixaEconomica;
                 end;

                 ACBrBoleto1.Cedente.CodigoCedente := Cendente;
                 ACBrBoleto1.Cedente.Agencia       := copy(Agencia, 0 , length(Agencia) - 1 );
                 ACBrBoleto1.Cedente.AgenciaDigito := copy(Agencia, length(Agencia) , 1);
                 ACBrBoleto1.Cedente.Conta         := Conta;
                 ACBrBoleto1.Cedente.ContaDigito   := Digito;
                 ACBrBoleto1.Cedente.Convenio      := Convenio;
              end;
           end;
       end
       else
       showmessage('Informe o caixa!');
    end;
end;

procedure TfrmBoletoACBr.AdicionarBoleto;
var
  Linha:Tstringlist;
begin
     Titulo := ACBrBoleto1.CriarTituloNaLista;

     with Titulo do
     begin
        Vencimento        := StrToDate(edtVencimento.Text);
        DataDocumento     := StrToDate(edtDataDoc.Text);
        NumeroDocumento   := stringreplace(edtNumeroDoc.Text,'/','',[rfReplaceAll]);
        EspecieDoc        := edtEspecieDoc.Text;

        if cbxAceite.ItemIndex = 0 then
           Aceite := atSim
        else
           Aceite := atNao;

        DataProcessamento := date;
        Carteira          := edtCarteira.Text;
        NossoNumero       := edtNossoNro.Text;
        ValorDocumento    := StrToCurr(edtValorDoc.Text);

        Sacado.NomeSacado := edtNome.Text;
        Sacado.CNPJCPF    := OnlyNumber(edtCPFCNPJ.Text);
        Sacado.Logradouro := edtEndereco.Text;
        Sacado.Numero     := edtNumero.Text;
        Sacado.Bairro     := edtBairro.Text;
        Sacado.Cidade     := edtCidade.Text;
        Sacado.UF         := edtUF.Text;
        Sacado.CEP        := OnlyNumber(edtCEP.Text);

        ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
        LocalPagamento    := edtLocalPag.Text;
        ValorMoraJuros    := StrToCurrDef(edtMoraJuros.Text,0);
        ValorDesconto     := StrToCurrDef(edtValorDesconto.Text,0);
        ValorAbatimento   := StrToCurrDef(edtValorAbatimento.Text,0);
        DataMoraJuros     := StrToDateDef(edtDataMora.Text, 0);
        DataDesconto      := StrToDateDef(edtDataDesconto.Text, 0);
        DataAbatimento    := StrToDateDef(edtDataAbatimento.Text, 0);
        DataProtesto      := StrToDateDef(edtDataProtesto.Text, 0);
        PercentualMulta   := StrToCurrDef(edtMulta.Text,0);
        Mensagem.Text     := memMensagem.Text;
        OcorrenciaOriginal.Tipo := toRemessaBaixar;

        //Instrucao1        := padL(trim(edtInstrucoes1.Text),2,'0');
        //Instrucao2        := padL(trim(edtInstrucoes2.Text),2,'0');

        ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
     end;

end;

end.
