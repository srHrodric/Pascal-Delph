unit CadCliGrid;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  DB, DBClient, QStdCtrls, QMask, QDBCtrls, QExtCtrls, QButtons, QGrids,
  QDBGrids;

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
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    Edit3: TEdit;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientDataSet1AfterPost(DataSet: TDataSet);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ClientDataSet1.Filter := 'Estado = ''' + Edit1.Text + '''';
ClientDataSet1.Filtered := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
ClientDataSet1.LoadFromFile('c:\ProjDelphi6\Clientes.cds');
end;

procedure TForm1.ClientDataSet1AfterPost(DataSet: TDataSet);
begin
ClientDataSet1.SaveToFile('c:\ProjDelphi6\Clientes.cds',dfBinary);
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
ClientDataSet1.Filter := 'Estado = ''SP''';
ClientDataSet1.Filtered := True;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
ClientDataSet1.Filter := 'Estado = ''MG''';
ClientDataSet1.Filtered := True;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
ClientDataSet1.Filtered := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
If Not ClientDataSet1.Locate('Codigo',Edit2.Text,[]) Then
  ShowMessage('Código não Localizado');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ClientDataSet1.Locate('Nome',Edit3.Text,
                [LoCaseInsensitive,LoPartialKey]);

end;

end.
