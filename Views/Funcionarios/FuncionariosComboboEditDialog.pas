unit FuncionariosComboboEditDialog;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  Graphics, Controls, Forms, Dialogs, StdCtrls,
  TemplateComboEditDialog;

type
  TFormFuncionariosComboboEditDialog = class(TTemplateFormComboboEditDialog)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFuncionariosComboboEditDialog: TFormFuncionariosComboboEditDialog;

implementation

{$R *.dfm}

uses DBUtils, EntidadeFactory;

procedure TFormFuncionariosComboboEditDialog.FormCreate(Sender: TObject);
begin
  inherited;
  FillComboBox(tpFuncionarios, ComboEdit1,'0=0', 'Codigo','Nome', 'Nome');
end;

end.
