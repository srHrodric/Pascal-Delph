unit CadCli2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask, DB, DBClient, Buttons;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Codigo: TAutoIncField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Endereco: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1Estado: TStringField;
    ClientDataSet1Fone: TStringField;
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
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ClientDataSet1.LoadFromFile('c:\ProjDelphi6\Clientes.cds');
end;

procedure TForm1.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.SaveToFile('c:\ProjDelphi6\Clientes.cds');
end;

end.
