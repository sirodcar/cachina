unit OrcamentoListagem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,  windows,
   Graphics, Controls, Forms, Dialogs, StdCtrls,  ControllerOrcamento, Vcl.ComCtrls,
   Data.DB, Vcl.Grids, Vcl.DBGrids,  Vcl.Buttons, Vcl.ExtCtrls, TemplateListagemBase,
  Vcl.Menus, DBClient, DateUtils, Math, Vcl.DBCtrls;

type
  TFormOrcamentoListagem = class(TTemplateFormListagemBase)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtPlaca: TEdit;
    Label2: TLabel;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    btnconsultar: TSpeedButton;
    btnInserir: TSpeedButton;
    btnAlterar: TSpeedButton;
    Label3: TLabel;
    cboSituacao: TComboBox;
    Label4: TLabel;
    edtCliente: TEdit;
    PopupMenu1: TPopupMenu;
    Geral1: TMenuItem;
    Comisso1: TMenuItem;
    Analticofinanceiro1: TMenuItem;
    Label5: TLabel;
    cboFuncionario: TComboBox;
    Label6: TLabel;
    edtNumero: TEdit;
    Faturar1: TMenuItem;
    Relatrio1: TMenuItem;
    VisualizarFatura1: TMenuItem;
    N1: TMenuItem;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    srcItens: TDataSource;
    srcRecebimento: TDataSource;
    Retornar1: TMenuItem;
    N2: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBMemo1: TDBMemo;
    PopupMenu2: TPopupMenu;
    Oramentos1: TMenuItem;
    Comisses1: TMenuItem;
    SpeedButton5: TSpeedButton;
    GroupBox4: TGroupBox;
    lbSelecionado: TLabel;
    GroupBox2: TGroupBox;
    lbTotal: TLabel;
    Label7: TLabel;
    edtModelo: TEdit;
    Produto1: TMenuItem;
    Servios1: TMenuItem;
    chkSefaz: TCheckBox;
    lbregistros: TLabel;
    SpeedButton7: TSpeedButton;
    procedure btnconsultarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure Grid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Grid1CellClick(Column: TColumn);
    procedure VisualizarFatura1Click(Sender: TObject);
    procedure Individual1Click(Sender: TObject);
    procedure srcEntidadeDataChange(Sender: TObject; Field: TField);
    procedure Grid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Retornar1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Oramentos1Click(Sender: TObject);
    procedure Comisses1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Garantia1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    Fcodigo: string;
    Total:double;
    TotalSelecionado:double;
    Condicao: string;
    procedure Setcodigo(const Value: string);
    procedure SomaTotal;
    procedure SomaSelecionados(Valor: double);
    procedure AgruparOcamentos(var CodigoOrcamentos: string; var Valor: Double; var CodigoCliente: string);
    procedure Faturar;
    procedure EmitirNFE(Tipo: string);
    procedure GetRegistrosMarcados(var CodigoOrcamentos: string);
    { Private declarations }
  public
    { Public declarations }
    Operacao: string;
    Controller: TControllerOrcamento;
    property codigo:string read Fcodigo write Setcodigo;
  end;

var
  FormOrcamentoListagem: TFormOrcamentoListagem;

implementation

{$R *.dfm}

uses
  EntidadeFactory, ControllerRecebimento, Mapper, GenericEntidade, strutils,
  DialogsUtils, {EmissorNfe,}RelOrcamentoGeral, UtilsString, Parcelar,
  DBUtils, Principal, RelComissaoOrcamento, EmissorNfe, ControllerNFE;

{ TFormOrcamentoListagem }

procedure TFormOrcamentoListagem.btnAlterarClick(Sender: TObject);
begin
  inherited;
  Codigo := srcEntidade.DataSet.FieldByName('Codigo').AsString;
  Operacao := 'Update';
  FormPrincipal.SelecionarOrcamentDetalhe(Operacao, Codigo);
end;

procedure TFormOrcamentoListagem.btnInserirClick(Sender: TObject);
begin
  inherited;
  Codigo   := '';
  Operacao := 'Insert';
  FormPrincipal.SelecionarOrcamentDetalhe(Operacao, Codigo);
end;

procedure TFormOrcamentoListagem.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  Codigo   := srcEntidade.DataSet.FieldByName('Codigo').AsString;
  Operacao := '';
  FormPrincipal.SelecionarOrcamentDetalhe(Operacao, Codigo);
end;

procedure TFormOrcamentoListagem.Comisses1Click(Sender: TObject);
var
controller: TControllerOrcamento;
begin
  inherited;
  application.CreateForm(TFormRelComissaoOrcamento,FormRelComissaoOrcamento );

  controller:= TControllerOrcamento.create;

  FormRelComissaoOrcamento.cdsOrcamentoComissao.CloneCursor (
  TClientDataset( controller.GetOrcamentoComissao(Condicao)) , true );

  controller.free;

  FormRelComissaoOrcamento.QuickRep2.PreviewModal;
  FormRelComissaoOrcamento.FreeOnRelease;
end;

procedure TFormOrcamentoListagem.edtNumeroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = vk_return then
  begin
    btnconsultar.Click;
  end;
end;

procedure TFormOrcamentoListagem.Individual1Click(Sender: TObject);
var
  ControllerRecebimento:TControllerRecebimento;
  CentroCusto: string;
  CodigoLoteRecebimento: string;
  CodigoFormaPagamento: string;
  CodigoCliente: string;
  CodigoOrcamento: string;
  CodigoOrcamentos: string;
  DataVencimento: string;
  Valor: Extended;
  CodigoOrcamentoFormaPagamento: string;
begin
  inherited;
 {
  try
      srcEntidade.DataSet.filter:= 'Faturar=''X''';
      srcEntidade.DataSet.filtered:= true;
      if not srcEntidade.DataSet.isEmpty then
      begin

        CodigoOrcamentos := '';
        ControllerRecebimento := TControllerRecebimento.Create;
        CentroCusto :=   TControllerOrcamento(Controller).GetValue('CentroCusto',
                                                             'Descricao=''OFICINA''',
                                                             'Codigo') ;
        srcEntidade.DataSet.first;
        while not srcEntidade.DataSet.eof do
        begin
          CodigoOrcamento :=  srcEntidade.DataSet.fieldbyname('Codigo').asstring;
          CodigoCliente   :=  srcEntidade.DataSet.fieldbyname('CodigoCliente').asstring;

          CodigoOrcamentos := CodigoOrcamentos + ifthen(CodigoOrcamentos <> '', ',', '') +
                            srcEntidade.DataSet.FieldByName('Codigo').asstring;

          if (srcEntidade.DataSet.Fieldbyname('Faturar').asstring = 'X') and
             (srcEntidade.DataSet.fieldByName('Situacao').asstring <> 'Faturado') then
          begin
              CodigoOrcamentoFormaPagamento := srcOrcamentoFormaPagamento.DataSet.fieldbyname('Codigo').asstring;
              CodigoFormaPagamento  := srcOrcamentoFormaPagamento.DataSet.fieldbyname('CodigoFormaPagamento').asstring;

              if srcOrcamentoFormaPagamento.DataSet.fieldbyname('Vencimento').asstring <> '' then
                 DataVencimento := srcOrcamentoFormaPagamento.DataSet.fieldbyname('Vencimento').asstring
              else
                 DataVencimento := FormatDatetime('DD/MM/YYYY', srcEntidade.DataSet.fieldbyname('Data').asdatetime);

              Valor                 := srcOrcamentoFormaPagamento.DataSet.fieldbyname('Valor').asFloat;

              if Valor = 0 then
                 Valor := srcEntidade.DataSet.fieldbyname('TotalEntidade').asfloat;

              if ( srcOrcamentoFormaPagamento.DataSet.recordcount = 1) and
                 ( DataVencimento <> '') and
                 ( CodigoFormaPagamento <> '' ) and
                 ( Valor > 0) and
                 ( CodigoCliente<> '' )
              then
              begin
                 ControllerRecebimento.InserirConta( Valor,
                                                     CodigoFormaPagamento,
                                                     DataVencimento,
                                                     CodigoCliente,
                                                     CodigoOrcamento,
                                                     CentroCusto,
                                                     CodigoOrcamentoFormaPagamento,
                                                     CodigoLoteRecebimento );

                 Controller.AlterarSituacaoParaFaturado( 'Codigo ='+ CodigoOrcamento, '' );
              end;
          end;
          srcEntidade.DataSet.next;
        end;

        formPrincipal.ShowRecebimentosListagem('CodigoOrcamento IN ( '+ CodigoOrcamentos +' )' );
      end;
  finally
     srcEntidade.DataSet.filtered:= false;
     btnconsultar.Click;
  end;
  }

end;

procedure TFormOrcamentoListagem.Oramentos1Click(Sender: TObject);
var
  DataSetItemOrcamento, DataSetRecebimento:TDataset;
begin
  inherited;
  application.CreateForm(TFormRelOrcamentoGeral,FormRelOrcamentoGeral );

  FormRelOrcamentoGeral.cdsOrcamento.CloneCursor( TClientDataSet(srcEntidade.DataSet), true );

  DataSetRecebimento:= Controller.GetSelect('Orcamento T1 left join Recebimento rec on CodigoOrcamento = T1.Codigo'+
                                            ' left join FormaPagamento form on Form.Codigo = rec.CodigoFormaPagamento',
                                            Condicao,
                                            'T1.*, Form.Descricao as FormaPagamento, '+
                                            ' rec.Valor as ValorRecebimento, rec.DataVencimento, rec.CodigoOrcamento ');

  FormRelOrcamentoGeral.cdsRecebimento.CloneCursor( TClientDataSet(DataSetRecebimento) ,true);

  DataSetItemOrcamento := Controller.GetSelect(  ConsultaTabelaItem ,
   '0=0' , ControllerOrcamento.CamposItemOrcamento);


  FormRelOrcamentoGeral.QuickRep2.PreviewModal;
  FormRelOrcamentoGeral.FreeOnRelease;

end;

procedure TFormOrcamentoListagem.Retornar1Click(Sender: TObject);
begin
  inherited;
  TControllerOrcamento(Controller).Retornar( srcEntidade.DataSet.fieldbyname('Codigo').asstring );

  edtNumero.text    := '';

  cboSituacao.text  := '';
  dateInicio.date   := date;
  dateFim.date      := date;

  btnconsultar.click;

end;

procedure TFormOrcamentoListagem.AgruparOcamentos( var CodigoOrcamentos: string;
                                                   var Valor: Double;
                                                   var CodigoCliente: string);
begin
  try
     srcEntidade.DataSet.DisableControls;
     srcEntidade.DataSet.first;
     while not srcEntidade.DataSet.eof do
     begin
        if srcEntidade.DataSet.fieldByName('Faturar').asstring = 'X' then
        begin
           CodigoOrcamentos := CodigoOrcamentos + ifthen(CodigoOrcamentos <> '', ',', '') +
                               srcEntidade.DataSet.FieldByName('Codigo').asstring;

           if (CodigoCliente <> '') and (CodigoCliente <> trim(
           srcEntidade.DataSet.FieldByName('CodigoCliente').asstring)) then
           begin
             showmessage('N�o � possivel faturar or�amentos de clientes diferentes!');
             abort;
           end;

           CodigoCliente := trim(srcEntidade.DataSet.FieldByName('CodigoCliente').asstring);
           Valor := Valor + srcEntidade.DataSet.FieldByName('TotalEntidade').AsFloat;
        end;
        srcEntidade.DataSet.next;
     end;
  finally
    srcEntidade.DataSet.enableControls;
  end;

end;

procedure TFormOrcamentoListagem.Faturar;
var
  ControllerRecebimento: TControllerRecebimento;
  CodigoFormaPagamento: string;
  CodigoOrcamentos: string;
  CodigoCliente: string;
  Valor: Double;
  Faturado: Boolean;
  CentroCusto: string;
  CodigoOrcamentoFormaPagamento: string;
  Parcelas: Integer;
  LoteRecebimento: string;
begin
  try
    srcEntidade.DataSet.filter := 'Faturar = ''X'' and Situacao <> ''Faturado'' ';
    srcEntidade.DataSet.filtered := true;
    if not srcEntidade.DataSet.isEmpty then
    begin
      CodigoOrcamentos := '';
      AgruparOcamentos(CodigoOrcamentos, Valor, CodigoCliente);
      ControllerRecebimento := TControllerRecebimento.Create;
      if Valor > 0 then
      begin
        CentroCusto := TControllerOrcamento(Controller).GetValue('CentroCusto', 'Descricao=''OFICINA''', 'Codigo');
        if Pos(',', CodigoOrcamentos) > 0 then
        begin
          ControllerRecebimento.InserirConta(Valor, '', datetostr(date), CodigoCliente, '', CentroCusto,
          CodigoOrcamentoFormaPagamento, LoteRecebimento,
          srcEntidade.DataSet.FieldByName('Nome').asstring + ' - ' + CodigoOrcamentos,'');

          Faturado := ControllerRecebimento.ParcelarConta(Valor, 1, '1', datetostr(date), CodigoCliente, '',
          CentroCusto, CodigoOrcamentoFormaPagamento, LoteRecebimento,
          srcEntidade.DataSet.FieldByName('Nome').asstring + ' - ' + CodigoOrcamentos);
        end
        else
        begin
          Parcelas := 0;
          Faturado := ControllerRecebimento.ParcelarConta(Valor, ifthen(Parcelas > 0, Parcelas, 1),
          CodigoFormaPagamento, datetostr(date), CodigoCliente, CodigoOrcamentos, CentroCusto, CodigoOrcamentoFormaPagamento,
          LoteRecebimento, srcEntidade.DataSet.FieldByName('Nome').asstring + ' - ' + srcEntidade.DataSet.FieldByName('Codigo').asstring);
        end;
        if Faturado then
        begin
          Controller.AlterarSituacaoParaFaturado('Codigo IN (' + CodigoOrcamentos + ')', LoteRecebimento);

          formPrincipal.ShowRecebimentosListagem(ifthen(LoteRecebimento <> '',
          'CodigoLoteRecebimento = ' + LoteRecebimento, 'CodigoOrcamento IN (' + CodigoOrcamentos + ')'));

          srcItens.DataSet := TControllerOrcamento(Controller).GetSelect(ConsultaTabelaItem,
           'CodigoOrcamento IN ( ' + CodigoOrcamentos + ' ) ', CamposItemOrcamento);

          FormPrincipal.ShowRelOrcamento2(Controller.GetSelect(ControllerOrcamento.ConsultaTabela,
           'T1.Codigo IN ( ' + CodigoOrcamentos + ' ) ', CamposOrcamento), srcItens.DataSet, srcRecebimento.DataSet);

        end;
      end;
    end
    else
      showmessage('Nenhum or�amento dispon�vel para faturar!');
  finally
    srcEntidade.DataSet.filtered := false;
    btnconsultar.Click;
  end;
end;

procedure TFormOrcamentoListagem.GetRegistrosMarcados(var CodigoOrcamentos:string );
var
  CodigoLoteRecebimentos: string;
  CodigoCliente: string;
  CodigoLote: string;
begin
   srcEntidade.DataSet.filter := 'Faturar=''X''';
   srcEntidade.DataSet.filtered := true;
   srcEntidade.DataSet.first;
   while not srcEntidade.DataSet.eof do
   begin
      if (srcEntidade.DataSet.fieldByName('Faturar').asstring = 'X') and
         (srcEntidade.DataSet.fieldByName('Situacao').asstring = 'Faturado') then
      begin
         CodigoOrcamentos := CodigoOrcamentos + ifthen(CodigoOrcamentos <> '', ' , ', '') + srcEntidade.DataSet.FieldByName('Codigo').asstring;
         CodigoLoteRecebimentos := CodigoLoteRecebimentos + ifthen(CodigoLoteRecebimentos <> '', ' , ', '') + srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring;
         if (CodigoCliente <> '') and (CodigoCliente <> srcEntidade.DataSet.FieldByName('CodigoCliente').asstring) then
         begin
            showmessage('N�o � possivel emitir NFe de clientes diferentes!');
            abort;
         end;
         if (CodigoLote <> '') and (CodigoLote <> srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring) then
         begin
            showmessage('N�o � possivel emitir NFe de Lote diferentes!');
            abort;
         end;
         CodigoCliente := srcEntidade.DataSet.FieldByName('CodigoCliente').asstring;
         CodigoLote := srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring;
      end;
      srcEntidade.DataSet.next;
   end;
end;

procedure TFormOrcamentoListagem.EmitirNFE(Tipo: string);
var
  CodigoOrcamentos: string;
begin
  try
    if srcEntidade.DataSet.FieldByName('Codigo').AsString <> '' then
    begin
      GetRegistrosMarcados(CodigoOrcamentos);

      if CodigoOrcamentos = '' then
        CodigoOrcamentos := '0';
      srcEntidade.DataSet.Filtered := false;
      srcEntidade.DataSet.Filter := 'Codigo IN (' + CodigoOrcamentos + ')';
      srcEntidade.DataSet.Filtered := true;

      TContollerNFE.CriarNFE(Tipo, srcEntidade.DataSet,
                             TControllerOrcamento(Controller).GetSelect(ConsultaTabelaItem,
                             'CodigoOrcamento IN ( ' + CodigoOrcamentos +
                             ' ) and  isnull(Tipo,'''') = ''MATERIAL'' ',
                             CamposItemOrcamento), srcRecebimento.DataSet);
    end;
  finally
    srcEntidade.DataSet.filtered := false;
  end;

end;

procedure TFormOrcamentoListagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Operacao:= 'abort';
end;

procedure TFormOrcamentoListagem.FormCreate(Sender: TObject);
begin
  inherited;
  dateInicio.date:= StartOfTheWeek(date) ;
  dateFim.date:= date;
  Controller:= TControllerOrcamento.Create;
  FillCombobox( tpFuncionarios   , cboFuncionario,'0=0','Codigo','Nome','Nome');


  srcEntidade.DataSet:= Controller.GetSelect(
                        ControllerOrcamento.ConsultaTabela,
                        'Situacao <> ''Faturado'' '+
                        'and '+
                        'Situacao <> ''Cancelado'' '+
                        ' and t1.Data >='+ quotedstr(formatDatetime('DD/MM/YYYY 00:00:00.000',dateInicio.date) )+
                        ' and t1.Data <='+ quotedstr(formatDatetime('DD/MM/YYYY 23:59:59.999',dateFim.date) )+
                        'order by Codigo Desc ',
                        ControllerOrcamento.CamposOrcamento);


   SomaTotal;
   TfloatField(srcEntidade.dataset.fieldbyname('TotalEntidade')).DisplayFormat := ',0.00;';

   // Formprincipal.AjustaForm(self);
end;

procedure TFormOrcamentoListagem.Garantia1Click(Sender: TObject);
begin
  inherited;
   EmitirNFE('GARANTIA');
end;

procedure TFormOrcamentoListagem.Grid1CellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'Faturar' then
  begin
     if  not srcEntidade.DataSet.isEmpty then
     begin
       srcEntidade.DataSet.edit;
       if srcEntidade.DataSet.Fieldbyname('Faturar').asstring <> 'X' then
       begin
          srcEntidade.DataSet.Fieldbyname('Faturar').asstring := 'X';
          SomaSelecionados(srcEntidade.DataSet.Fieldbyname('TotalEntidade').asFloat);
       end
       else
       begin
          srcEntidade.DataSet.Fieldbyname('Faturar').asstring := '';
          SomaSelecionados(srcEntidade.DataSet.Fieldbyname('TotalEntidade').asFloat * -1);
       end;
       srcEntidade.DataSet.post;
     end;
  end;
end;

procedure TFormOrcamentoListagem.Grid1DblClick(Sender: TObject);
begin
  if  not srcEntidade.DataSet.isEmpty then
      btnSelecionar.Click;
  //inherited;
end;

procedure TFormOrcamentoListagem.Grid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if active then
  begin
      if ( srcEntidade.dataset.FieldByName('Situacao').asstring = 'A Faturar') then
         Grid1.Canvas.Font.Color := clPurple
      else
      if ( srcEntidade.dataset.FieldByName('Situacao').asstring = 'Pendente')   then
         Grid1.Canvas.Font.Color := clRed
      else
      if ( srcEntidade.dataset.FieldByName('Situacao').asstring = 'Faturado')    then
        Grid1.Canvas.Font.Color := clGreen
      else
      if ( srcEntidade.dataset.FieldByName('Situacao').asstring = 'Cancelado')   then
         Grid1.Canvas.Font.Color := clgray;
  Grid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TFormOrcamentoListagem.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
end;

procedure TFormOrcamentoListagem.btnconsultarClick(Sender: TObject);
begin
  inherited;
  Condicao:= '0=0';

  if edtPlaca.Text <> ''    then
     Condicao:= Condicao + ' and t1.placa='+ quotedstr(edtPlaca.Text);

  if datetostr(dateInicio.Date) <> '' then
     Condicao:= Condicao + ' and t1.Data >= '+ quotedstr(formatDatetime('DD/MM/YYYY 00:00:00',dateInicio.date) );

  if datetostr(dateFim.Date) <> '' then
     Condicao:= Condicao + ' and t1.Data <= '+ quotedstr(formatDatetime('DD/MM/YYYY 23:59:59',dateFim.date) );

  if edtCliente.Text <> ''  then
     Condicao:= Condicao + ' and clie.Nome Like '+ quotedstr( '%'+ edtCliente.Text +'%' );

  if cboSituacao.Text <> '' then
  begin
      if cboSituacao.Text = 'Faturado e A Faturar' then
         Condicao:= Condicao + ' and ( t1.Situacao =''Faturado'' or t1.Situacao =''A Faturar'' ) '
      else
         Condicao:= Condicao + ' and t1.Situacao ='+ quotedstr( cboSituacao.Text );
  end;

  if edtNumero.text <> '' then
      Condicao:= Condicao + ' and t1.Codigo ='+ edtNumero.Text;

{  if edtLote.text <> '' then
      Condicao:= Condicao + ' and t1.CodigoLoteRecebimento ='+ edtLote.Text; }

  if edtModelo.text <> '' then
      Condicao:= Condicao + ' and mod.Descricao LIKE ('+ quotedstr( '%'+ edtModelo.Text+'%') +')';

  if cboFuncionario.text <> '' then
     Condicao:= Condicao + ' and t1.Codigo IN ( Select CodigoOrcamento from itemOrcamento '+
                           ' inner join funcionarios func on CodigoFuncionario = func.Codigo '+
                           ' where CodigoOrcamento = T1.Codigo '+
                           ' and func.Nome = '+quotedstr(cboFuncionario.text)+' )';
  if chkSefaz.Checked then
     Condicao:= Condicao + ' and isNull(NFe.ChaveAcesso ,'''') <> '''' ';

  srcEntidade.DataSet.close;
  srcEntidade.DataSet := nil;
  srcEntidade.DataSet := Controller.GetSelect(
                        ControllerOrcamento.ConsultaTabela,
                        Condicao+ifthen( Condicao <> '',
                        ' order by Codigo desc',''), CamposOrcamento);

  TfloatField(srcEntidade.dataset.fieldbyname('TotalEntidade')).DisplayFormat := ',0.00;';

  TClientDataSet(srcEntidade.Dataset).IndexFieldNames:= 'Data';
  //Controller.Free;

  SomaTotal;
end;

procedure  TFormOrcamentoListagem.SomaTotal;
begin
  try
    Total:= 0;
    TotalSelecionado:= 0;
    srcEntidade.OnDataChange:= nil;
    srcEntidade.DataSet.DisableControls;
    srcEntidade.DataSet.first;
    while not srcEntidade.DataSet.eof do
    begin
      Total := Total + srcEntidade.DataSet.fieldbyname('TotalEntidade').asfloat;
      srcEntidade.DataSet.next;
    end;
    lbtotal.caption:= FormatFloat(',0.00;', total);
    lbregistros.caption := inttostr( srcEntidade.DataSet.recordcount );
  finally
    srcEntidade.DataSet.first;
    srcEntidade.DataSet.enableControls;
    srcEntidade.OnDataChange:= srcEntidadeDataChange;
  end;
end;


procedure  TFormOrcamentoListagem.SomaSelecionados(Valor:double);
begin
  TotalSelecionado:= total - ( total - Valor - TotalSelecionado);
  lbSelecionado.caption:= FormatFloat(',0.00;',TotalSelecionado);
end;


procedure TFormOrcamentoListagem.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Operacao:= 'abort';
  close;
end;

procedure TFormOrcamentoListagem.SpeedButton3Click(Sender: TObject);
var
ListaOrcamento : TstringList;
dataItens, DatasetRecebimento:Tdataset;
begin
  inherited;
   ListaOrcamento := TstringList.Create;
   ListaOrcamento.Delimiter:=',';
   try
      srcEntidade.OnDataChange:= nil;
      srcEntidade.dataset.First;
      while not srcEntidade.dataset.eof do
      begin
         ListaOrcamento.Add( srcEntidade.dataset.fieldbyname('codigo').asstring );
         srcEntidade.dataset.next;
      end;
   finally
     srcEntidade.OnDataChange:= srcEntidadeDataChange;
   end;

   dataItens:=  TControllerOrcamento(Controller).GetSelect(
                                                       ConsultaTabelaItem,
                                                       'CodigoOrcamento IN ( ' + ListaOrcamento.DelimitedText + ' )',
                                                       CamposItemOrcamento);
   DatasetRecebimento := TControllerRecebimento(Controller).GetSelect(
                            ConsultaTabela ,
                            'CodigoOrcamento IN ( ' + ListaOrcamento.DelimitedText + ')'  ,
                            StrCamposRecebimento);

  FormPrincipal.ShowRelOrcamento2( srcEntidade.DataSet ,
                                   dataItens ,
                                   DatasetRecebimento );
end;

procedure TFormOrcamentoListagem.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  EmitirNFE('VENDA');
end;

procedure TFormOrcamentoListagem.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  Codigo := srcEntidade.DataSet.FieldByName('Codigo').AsString;
  Operacao := 'Retornar';
  FormPrincipal.SelecionarOrcamentDetalhe(Operacao, Codigo);
end;

procedure TFormOrcamentoListagem.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Faturar;
end;

procedure TFormOrcamentoListagem.srcEntidadeDataChange(Sender: TObject;
  Field: TField);
  var
  CodigoOrcamento: string;
  CodigoLoteRecebimento: string;
begin
  inherited;
  CodigoLoteRecebimento := srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring;
  CodigoOrcamento       := srcEntidade.DataSet.FieldByName('Codigo').asstring;

  if CodigoOrcamento ='' then
     CodigoOrcamento:= '-1';

  srcItens.DataSet := TControllerOrcamento(Controller).GetSelect(
                                           ConsultaTabelaItem,
                                           'CodigoOrcamento = ' +
                                           quotedstr(CodigoOrcamento),
                                           CamposItemOrcamento);

  srcRecebimento.DataSet := TControllerRecebimento(Controller).GetSelect(
                            ConsultaTabela ,
                            ifthen( CodigoLoteRecebimento <> '',
                            'CodigoLoteRecebimento = '+ quotedstr(CodigoLoteRecebimento),
                            'CodigoOrcamento = '+ quotedstr(CodigoOrcamento) )  ,
                            StrCamposRecebimento);

  TFloatField(srcRecebimento.DataSet.FieldByName('Valor')).DisplayFormat := ',0.00;';
end;

procedure TFormOrcamentoListagem.VisualizarFatura1Click(Sender: TObject);
var
  CodigoLoteRecebimento: string;
  CodigoOrcamento: string;
begin
  inherited;
  CodigoLoteRecebimento            := srcEntidade.DataSet.FieldByName('CodigoLoteRecebimento').asstring;
  CodigoOrcamento := srcEntidade.DataSet.FieldByName('Codigo').asstring;

  formPrincipal.ShowRecebimentosListagem( ifthen( CodigoLoteRecebimento <> '',
  'CodigoLoteRecebimento = '+CodigoLoteRecebimento,
  'CodigoOrcamento = '+ quotedstr(CodigoOrcamento) ));
end;

end.
