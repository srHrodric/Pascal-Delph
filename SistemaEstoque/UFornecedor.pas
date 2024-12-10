unit UFornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Enter, ExtCtrls, Buttons, Db, DBTables;

type
  TfmFornecedor = class(TForm)
    MREnter1: TMREnter;
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
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    salvar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DataSource1: TDataSource;
    Table1: TTable;
    DBLookupComboBox1: TDBLookupComboBox;
    Label15: TLabel;
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
  fmFornecedor: TfmFornecedor;

implementation

uses dataEstoque, URelForn;

{$R *.DFM}

procedure TfmFornecedor.SpeedButton1Click(Sender: TObject);
begin
modestoque.tbForn.Append  ;
salvar.Enabled := true;
dbedit1.SetFocus;
end;

procedure TfmFornecedor.SpeedButton2Click(Sender: TObject);
begin
modestoque.tbForn.delete
end;

procedure TfmFornecedor.SpeedButton4Click(Sender: TObject);
begin
modestoque.tbforn.edit;
salvar.Enabled := true;
dbedit2.SetFocus
end;

procedure TfmFornecedor.salvarClick(Sender: TObject);
begin
modestoque.tbforn.Post ;
salvar.Enabled := false;
end;

procedure TfmFornecedor.SpeedButton7Click(Sender: TObject);
begin
modestoque.tbforn.cancel;
fmfornecedor.close
end;

procedure TfmFornecedor.SpeedButton6Click(Sender: TObject);
begin
if not assigned(fmrelforn) then
 fmrelforn := tfmrelforn.create(application);
 fmrelforn.QuickRep1.print
end;

procedure TfmFornecedor.SpeedButton5Click(Sender: TObject);
begin
if not assigned(fmrelforn) then
 fmrelforn := tfmrelforn.create(application);
 fmrelforn.QuickRep1.preview
end;

end.
