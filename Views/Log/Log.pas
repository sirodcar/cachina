unit Log;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TemplateListagemBase, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  ControllerTabelas;

type
  TFormLogListagem = class(TTemplateFormListagemBase)
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ControllerTabelas:TControllerTabelas;
  end;

var
  FormLogListagem: TFormLogListagem;

implementation

{$R *.dfm}

procedure TFormLogListagem.FormCreate(Sender: TObject);

begin
  inherited;
  ControllerTabelas   := TControllerTabelas.Create;

  srcEntidade.DataSet :=  ControllerTabelas.GetSelect('Log T1 '+
                                                      ' inner join Funcionarios func on'+
                                                      ' func.Codigo = CodigoFuncionario '+
                                                      ' inner Join Modulo modu on '+
                                                      ' modu.Codigo = CodigoModulo',' 0=0 ',
                                                      ' T1.Data, func.Nome, modu.Descricao as Modulo, T1.Descricao');
end;

end.
