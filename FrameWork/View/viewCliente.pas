unit viewCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, RTTI, Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  GenericEntidade, InterfaceController, Vcl.Buttons;

type
  TFormViewCLiente = class(TForm)
    Nome: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    CPF: TEdit;
    Endereco: TEdit;
    Clientes: TClientDataSet;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Codigo: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Controller: IController;
  end;

var
  FormViewCLiente: TFormViewCLiente;

implementation

{$R *.dfm}

uses FactoryController;

procedure TFormViewCLiente.FormCreate(Sender: TObject);
begin
  Controller:= TFactoryController.CriarControllerCliente( self, Clientes );
end;

procedure TFormViewCLiente.SpeedButton1Click(Sender: TObject);
begin
  Controller.SelectId(Codigo.Text);
end;

procedure TFormViewCLiente.SpeedButton2Click(Sender: TObject);
begin
  Controller.Select('Nome Like ('+ quotedstr('%'+ Nome.Text +'%')+')');
end;

procedure TFormViewCLiente.Button1Click(Sender: TObject);
begin
  Controller.Delete;
end;

procedure TFormViewCLiente.Button7Click(Sender: TObject);
begin
  Controller.Insert;
end;

procedure TFormViewCLiente.Button8Click(Sender: TObject);
begin
  Controller.Update;
end;

procedure TFormViewCLiente.Button9Click(Sender: TObject);
begin
  Controller.Edit;
end;

end.
