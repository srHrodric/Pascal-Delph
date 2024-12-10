unit UProdutos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Enter, Buttons, Db, DBTables;

type
  TfmProdutos = class(TForm)
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
    Label7: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    MREnter1: TMREnter;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    salvar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    DataSource1: TDataSource;
    Table1: TTable;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmProdutos: TfmProdutos;

implementation

uses dataEstoque, uEscPro;

{$R *.DFM}

procedure TfmProdutos.SpeedButton1Click(Sender: TObject);
var cod: real;
begin
modestoque.tbProduto.Last;
cod := modestoque.tbprodutocodpro.value + 1;
modestoque.tbproduto.Append ;
dbedit1.Text := floattostr(cod);
salvar.Enabled := true;
dbedit2.SetFocus;

end;

procedure TfmProdutos.SpeedButton2Click(Sender: TObject);
begin
modestoque.tbProduto.delete
end;

procedure TfmProdutos.SpeedButton4Click(Sender: TObject);
begin
modestoque.tbproduto.edit;
 salvar.Enabled := true;
 dbedit2.SetFocus
end;

procedure TfmProdutos.salvarClick(Sender: TObject);
begin
modestoque.tbproduto.Post ;
salvar.Enabled := false;
end;

procedure TfmProdutos.SpeedButton7Click(Sender: TObject);
begin
modestoque.tbProduto.cancel;
fmprodutos.close
end;

procedure TfmProdutos.SpeedButton6Click(Sender: TObject);
begin
if not assigned(fmescpro) then
 begin
 fmescpro := tfmescpro.create(application);
 end;
 fmescpro.BitBtn1.Caption := 'Imprimir';
 fmescpro.showmodal;
end;

procedure TfmProdutos.SpeedButton5Click(Sender: TObject);
begin
if not assigned(fmescpro) then
  begin
 fmescpro := tfmescpro.create(application);
end;
 fmescpro.BitBtn1.Caption := 'Visualizar';
 fmescpro.showmodal;

end;

end.
