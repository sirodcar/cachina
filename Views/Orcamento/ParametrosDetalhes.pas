unit ParametrosDetalhes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,ControllerTabelas, Vcl.DBCtrls, GenericEntidade,
  FileCtrl, iniFiles, pcnAuxiliar, ACBrUtil, pcnNFeW, pcnNFeRTXT, pcnNFe, pcnConversao,
  pcnConversaoNFe,  System.TypInfo;

type
  TFormParametrosDetalhes = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    CFOPPADRAOVENDA: TComboBox;
    Label2: TLabel;
    CFOPPADRAOVENDAFORAESTADO: TComboBox;
    Label3: TLabel;
    CFOPPADRAOCOMPRA: TComboBox;
    Label4: TLabel;
    CFOPPADRAOCOMPRAFORAESTADO: TComboBox;
    Label5: TLabel;
    CFOPPADRAODEVOLUCAO: TComboBox;
    Label6: TLabel;
    CFOPPADRAODEVOLUCAOFORAESTADO: TComboBox;
    Panel2: TPanel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet6: TTabSheet;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    sbtnLogoMarca: TSpeedButton;
    edtLogoMarca: TEdit;
    ckSalvar: TCheckBox;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    cbxRetirarAcentos: TCheckBox;
    CheckBox1: TCheckBox;
    cbVersaoDF: TComboBox;
    cbModeloDF: TComboBox;
    cbFormaEmissao: TComboBox;
    edtFormatoAlerta: TEdit;
    cboSSLCryptLib: TComboBox;
    cboSSLHTTPLib: TComboBox;
    cboSSLLib: TComboBox;
    cboSSLXMLLib: TComboBox;
    cboSSLType: TComboBox;
    TabSheet7: TTabSheet;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    ckxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    gbProxy: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet8: TTabSheet;
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
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    edtCNAE: TEdit;
    TabSheet9: TTabSheet;
    GroupBox5: TGroupBox;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    TabSheet13: TTabSheet;
    Label36: TLabel;
    SpeedButton1: TSpeedButton;
    Label37: TLabel;
    SpeedButton2: TSpeedButton;
    Label38: TLabel;
    SpeedButton3: TSpeedButton;
    Label39: TLabel;
    SpeedButton4: TSpeedButton;
    Label40: TLabel;
    Label41: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label42: TLabel;
    SpeedButton7: TSpeedButton;
    Label43: TLabel;
    SpeedButton8: TSpeedButton;
    edtPathNfe: TEdit;
    edtPathCancelamento: TEdit;
    edtPathDPEC: TEdit;
    edtPathInutilizacao: TEdit;
    edtPathMDe: TEdit;
    edtPathCCe: TEdit;
    edtPathSalvar: TEdit;
    edtPathSquemas: TEdit;
    Label45: TLabel;
    edtIdToken: TEdit;
    Label44: TLabel;
    edtToken: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure GravarConfiguracao;
    procedure LerConfiguracao;
    { Private declarations }
  public
    { Public declarations }
     Entidade: TGenericEntidade;
    Controller: TControllerTabelas;
  end;

var
  FormParametrosDetalhes: TFormParametrosDetalhes;

const
  SELDIRHELP = 1000;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory, srvModBaseDados, strUtils, Principal;

procedure TFormParametrosDetalhes.Button1Click(Sender: TObject);
var
  I: Integer;
  valor: string;
begin
  for I := 0 to componentcount -1 do
  begin
     valor:= '';
     if Components[i]is TCombobox then
     begin
        valor := copy( (Components[i] as TCombobox ).Text, 1, (Components[i] as TCombobox ).MaxLength);
     end;

     if Components[i]is TDBLookUpCombobox then
     begin
        valor :=  (Components[i] as TDBLookUpCombobox ).keyvalue;
     end;

     if Components[i]is TEdit then
     begin
        valor := copy( (Components[i] as TEdit ).Text, 1, (Components[i] as TEdit ).MaxLength);
     end;

     if Components[i]is TCheckbox then
     begin
        valor := ifthen( (Components[i] as  TCheckbox).Checked , 'S','N');
     end;

     if valor <> '' then
        DSServerModuleBaseDados.ExecSql( Format('UPDATE Parametros  SET Valor = ''%s'' WHERE Parametro = ''%s'' ' ,[valor, Components[i].Name]));
  end;

  GravarConfiguracao;

  close;

end;

procedure TFormParametrosDetalhes.FormActivate(Sender: TObject);
var
   I:integer;
   DataSet:TDataSet;
begin
   FillCombobox( tpCFOP, CFOPPADRAOVENDA, 'Descricao like (''VENDA%'') AND CFOP < 6000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
   FillCombobox( tpCFOP, CFOPPADRAOVENDAFORAESTADO, 'Descricao like (''VENDA%'') AND CFOP >= 6000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
   FillCombobox( tpCFOP, CFOPPADRAOCOMPRA, 'Descricao like (''COMPRA%'') AND CFOP <= 2000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
   FillCombobox( tpCFOP, CFOPPADRAOCOMPRAFORAESTADO, 'Descricao like (''COMPRA%'') AND CFOP >= 2000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
   FillCombobox( tpCFOP, CFOPPADRAODEVOLUCAO, ' Descricao like (''DEVOLU��O DE COMPRA%'') AND CFOP <= 6000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');
   FillCombobox( tpCFOP, CFOPPADRAODEVOLUCAOFORAESTADO, 'Descricao like (''DEVOLU��O DE COMPRA%'') AND CFOP >= 6000 ',
        'CFOP',' CFOP +''  '' +  Descricao as Descricao ','CFOP');

  Controller:= TControllerTabelas.create;

  DataSet := Controller.GetSelect('select * from Parametros');

  for I := 0 to componentCount - 1 do
  begin
    if DataSet.Locate( 'Parametro', Components[i].Name , [] ) then
    begin
       if (Components[i] is TEdit) then
          (Components[i] as TEdit).text:= DataSet.FieldByName('Valor').Value
       else
       if (Components[i] is TCombobox) then
          (Components[i] as TCombobox).text:= DataSet.FieldByName('Valor').Value;
    end;
  end;
end;

procedure TFormParametrosDetalhes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormPrincipal.UnRegisterForm('TFormParametrosDetalhes');
  Action:= cafree;
end;

procedure TFormParametrosDetalhes.FormCreate(Sender: TObject);
var
 I : TpcnTipoEmissao;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
begin
  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFe' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;

  LerConfiguracao;

end;

procedure TFormParametrosDetalhes.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteInteger( 'Geral','DANFE'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',rgFormaEmissao.ItemIndex) ;
      Ini.WriteInteger( 'Geral','ModeloDF',cbModeloDF.ItemIndex) ;
      Ini.WriteInteger( 'Geral','VersaoDF',cbVersaoDF.ItemIndex) ;
      Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      //Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;

      Ini.WriteString( 'Geral','PathNfe'  ,edtPathNfe.text );
      Ini.WriteString( 'Geral','PathCancelamento'  ,edtPathCancelamento.text );
      Ini.WriteString( 'Geral','PathDPEC'  ,edtPathDPEC.text );
      Ini.WriteString( 'Geral','PathCCe'  ,edtPathCCe.text );
      Ini.WriteString( 'Geral','PathMDe'  ,edtPathMDe.text );
      Ini.WriteString( 'Geral','PathInutilizacao'  ,edtPathInutilizacao.text );
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathSalvar.text );
      Ini.WriteString( 'Geral','PathSquemas'  ,edtPathSquemas.text );
      Ini.WriteBool(   'Geral','RetirarAcentos'      ,cbxRetirarAcentos.Checked) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','IdToken'  ,edtIdToken.Text) ;
      Ini.WriteString( 'Geral','Token'  ,edtToken.Text) ;

      Ini.WriteInteger( 'Geral','SSLCryptLib'  ,cboSSLCryptLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLHTTPLib'  ,cboSSLHTTPLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLLib'  ,cboSSLLib.ItemIndex);
      Ini.WriteInteger( 'Geral','SSLXMLLib'  ,cboSSLXMLLib.ItemIndex);

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      //Ini.WriteBool(   'WebService','Visualizar',cbxVisualizar.Checked) ;
      Ini.WriteBool(   'WebService','SalvarSOAP',cbxSalvarSOAP.Checked) ;
      Ini.WriteBool(   'WebService','AjustarAut',cbxAjustarAut.Checked) ;
      Ini.WriteString( 'WebService','Aguardar'    ,edtAguardar.Text) ;
      Ini.WriteString( 'WebService','Tentativas'  ,edtTentativas.Text) ;
      Ini.WriteString( 'WebService','Intervalo'  ,edtIntervalo.Text) ;
      Ini.WriteInteger( 'WebService','Intervalo'  ,cboSSLType.ItemIndex) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteString( 'Emitente','CNPJ'       ,edtEmitCNPJ.Text) ;
      Ini.WriteString( 'Emitente','IE'         ,edtEmitIE.Text) ;
      Ini.WriteString( 'Emitente','RazaoSocial',edtEmitRazao.Text) ;
      Ini.WriteString( 'Emitente','Fantasia'   ,edtEmitFantasia.Text) ;
      Ini.WriteString( 'Emitente','Fone'       ,edtEmitFone.Text) ;
      Ini.WriteString( 'Emitente','CEP'        ,edtEmitCEP.Text) ;
      Ini.WriteString( 'Emitente','Logradouro' ,edtEmitLogradouro.Text) ;
      Ini.WriteString( 'Emitente','Numero'     ,edtEmitNumero.Text) ;
      Ini.WriteString( 'Emitente','Complemento',edtEmitComp.Text) ;
      Ini.WriteString( 'Emitente','Bairro'     ,edtEmitBairro.Text) ;
      Ini.WriteString( 'Emitente','CodCidade'  ,edtEmitCodCidade.Text) ;
      Ini.WriteString( 'Emitente','Cidade'     ,edtEmitCidade.Text) ;
      Ini.WriteString( 'Emitente','UF'         ,edtEmitUF.Text) ;
      Ini.WriteString( 'Emitente','CNAE'       ,edtCNAE.text  ) ;

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;

      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TFormParametrosDetalhes.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;
  Ini := TIniFile.Create( IniFile );
  try
      edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;

      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao'  ,0);
      ckSalvar.Checked         := Ini.ReadBool(   'Geral','Salvar'         ,True);
      edtPathNfe.text          := Ini.ReadString( 'Geral','PathNfe'         ,'');
      edtPathCancelamento.text := Ini.ReadString( 'Geral','PathCancelamento','');
      edtPathDPEC.text         := Ini.ReadString( 'Geral','PathDPEC'        ,'');
      edtPathCCe.text          := Ini.ReadString( 'Geral','PathCCe'         ,'');
      edtPathMDe.text          := Ini.ReadString( 'Geral','PathMDe'         ,'');
      edtPathInutilizacao.text := Ini.ReadString( 'Geral','PathInutilizacao','');
      edtPathSalvar.text       := Ini.ReadString( 'Geral','PathSalvar'      ,'');
      edtPathSquemas.text      := Ini.ReadString( 'Geral','PathSquemas'     ,'');

      cbModeloDF.ItemIndex     := Ini.ReadInteger( 'Geral','ModeloDF',0);
      cbVersaoDF.ItemIndex     := Ini.ReadInteger( 'Geral','VersaoDF',0);
      edtIdToken.Text          := Ini.ReadString( 'Geral','IdToken'  ,'');
      edtToken.Text            := Ini.ReadString( 'Geral','Token'  ,'');

      cboSSLCryptLib.ItemIndex := Ini.ReadInteger( 'Geral','SSLCryptLib',0);
      cboSSLHTTPLib.ItemIndex  := Ini.ReadInteger( 'Geral','SSLHTTPLib',0);
      cboSSLLib.ItemIndex      := Ini.ReadInteger( 'Geral','SSLLib',0);
      cboSSLXMLLib.ItemIndex   := Ini.ReadInteger( 'Geral','SSLXMLLib',0);

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','RN')) ;
      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckxVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;

      ckxVisualizar.Checked  := Ini.ReadBool(  'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked  := Ini.ReadBool(  'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(  'WebService','AjustarAut',False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','3') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      cboSSLType.ItemIndex   := Ini.ReadInteger( 'WebService','SSLType' ,0 ) ;

      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     := Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;
      edtCNAE.Text           := Ini.ReadString( 'Emitente','CNAE'       ,'') ;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;

  finally
     Ini.Free ;
  end;

end;

procedure TFormParametrosDetalhes.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione a pasta';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TFormParametrosDetalhes.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.filename;
  end;
end;

procedure TFormParametrosDetalhes.SpeedButton1Click(Sender: TObject);
var
   diretorio      : string;
begin
  {if Length(edtPathLogs.Text) <= 0 then
     diretorio := ExtractFileDir(application.ExeName)
  else
     diretorio := edtPathLogs.Text;}

  if SelectDirectory(diretorio, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  begin
     {formDiretorios := FormPrincipal.ShowForm( TFormDiretorios, nil ,  true );
     diretorio := TformDiretorios(formDiretorios).Diretorio;}
     case TSpeedButton(Sender).tag of
       1: edtPathNfe.text          := diretorio;
       2: edtPathCancelamento.text := diretorio;
       3: edtPathDPEC.text         := diretorio;
       4: edtPathCCe.text          := diretorio;
       5: edtPathMDe.text          := diretorio;
       6: edtPathInutilizacao.text := diretorio;
       7: edtPathSalvar.text       := diretorio;
       8: edtPathSquemas.text      := diretorio;
     end;
  end;
end;

end.
