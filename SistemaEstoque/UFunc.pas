unit UFunc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Enter, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Db, DBTables;

type
  TfmFunc = class(TForm)
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
    DBMemo1: TDBMemo;
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
    Table1: TTable;
    DataSource1: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label11: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFunc: TfmFunc;

implementation

uses dataEstoque, URelFunc;

{$R *.DFM}

procedure TfmFunc.SpeedButton1Click(Sender: TObject);
begin
modestoque.tbfunc.Append ;
salvar.Enabled := true;
dbedit1.SetFocus;
end;

procedure TfmFunc.SpeedButton2Click(Sender: TObject);
begin
modestoque.tbfunc.delete
end;

procedure TfmFunc.SpeedButton4Click(Sender: TObject);
begin
 modestoque.tbfunc.edit;
 salvar.Enabled := true;
 dbedit2.SetFocus
end;

procedure TfmFunc.salvarClick(Sender: TObject);
begin
modestoque.tbfunc.Post ;
salvar.Enabled := false;
end;

procedure TfmFunc.SpeedButton7Click(Sender: TObject);
begin
modestoque.tbfunc.cancel;
salvar.Enabled := false;
fmfunc.close
end;

procedure TfmFunc.SpeedButton5Click(Sender: TObject);
begin
if not assigned(fmrelfunc) then
 fmrelfunc := tfmrelfunc.create(application);
 fmrelfunc.QuickRep1.Preview
end;

procedure TfmFunc.SpeedButton6Click(Sender: TObject);
begin
if not assigned(fmrelfunc) then
 fmrelfunc := tfmrelfunc.create(application);
 fmrelfunc.QuickRep1.print
end;

end.
