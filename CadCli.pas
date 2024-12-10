unit CadCli;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  DB, DBClient, QStdCtrls, QMask, QDBCtrls, QExtCtrls, QButtons, QDBActns,
  QActnList, QGrids, QDBGrids;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TAutoIncField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Endereco: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1Estado: TStringField;
    ClientDataSet1Fone: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ActionList1: TActionList;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSource2: TDataSource;
    ClientDataSet2: TClientDataSet;
    DBGrid1: TDBGrid;
    ClientDataSet2CodigoVenda: TAutoIncField;
    ClientDataSet2Codigo: TIntegerField;
    ClientDataSet2DataVenda: TDateField;
    ClientDataSet2ValorTotal: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure ClientDataSet2AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
ClientDataSet1.LoadFromFile('c:\projDelphi6\Clientes.cds');
ClientDataSet2.LoadFromFile('c:\projDelphi6\Vendas.cds');
end;

procedure TForm1.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.SaveToFile('c:\projDelphi6\Clientes.cds',dfBinary);
end;

procedure TForm1.ClientDataSet2AfterPost(DataSet: TDataSet);
begin
ClientDataSet2.SaveToFile('c:\projDelphi6\Vendas.cds',dfBinary);
end;

end.
