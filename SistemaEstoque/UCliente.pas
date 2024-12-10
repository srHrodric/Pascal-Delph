unit UCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, Enter, Db, DBTables;

type
  TfmClientes = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    salvar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    MREnter1: TMREnter;
    Table1: TTable;
    DataSource1: TDataSource;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmClientes: TfmClientes;

implementation

uses dataEstoque, URelCli, uAber;

{$R *.DFM}

procedure TfmClientes.SpeedButton7Click(Sender: TObject);
begin
modestoque.tbCliente.cancel;
fmclientes.close
end;

procedure TfmClientes.SpeedButton1Click(Sender: TObject);
var cod: real;
begin
modestoque.tbCliente.last;
cod := modestoque.tbClientecodcli.value + 1;
modestoque.tbCliente.Append ;
dbedit1.Text := floattostr(cod);
salvar.Enabled := true;
dbedit2.SetFocus;
end;

procedure TfmClientes.SpeedButton2Click(Sender: TObject);
begin
modestoque.tbCliente.delete
end;

procedure TfmClientes.SpeedButton4Click(Sender: TObject);
begin
modestoque.tbCliente.edit;
 salvar.Enabled := true;
 dbedit2.SetFocus
end;

procedure TfmClientes.salvarClick(Sender: TObject);
begin
modestoque.tbCliente.Post ;
salvar.Enabled := false;
end;

procedure TfmClientes.SpeedButton5Click(Sender: TObject);
begin
if not assigned(relcli) then
 relcli := trelcli.create(application);
 relcli.QuickRep1.Preview
end;

procedure TfmClientes.SpeedButton6Click(Sender: TObject);
begin
if not assigned(relcli) then
 relcli := trelcli.create(application);
 relcli.QuickRep1.print
end;

end.
