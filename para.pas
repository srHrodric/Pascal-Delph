unit para;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  Provider, QButtons, QExtCtrls, QGrids, QDBGrids, DB, DBClient, DBLocal,
  DBLocalS, SqlExpr, QStdCtrls, QMask, QDBCtrls, DBXpress;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    SQLClientDataSet1: TSQLClientDataSet;
    SQLClientDataSet1COD_FITA: TIntegerField;
    SQLClientDataSet1DESCRICAO: TStringField;
    SQLClientDataSet1OBSERVACAO: TStringField;
    SQLClientDataSet1DATA_CAD: TSQLTimeStampField;
    SQLClientDataSet1TEMPO_DURA: TStringField;
    SQLClientDataSet1COD_ESTILO: TIntegerField;
    Edit1: TEdit;
    Button1: TButton;
    procedure btExcluirClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.btExcluirClick(Sender: TObject);
begin
;
end;

procedure TForm1.btConfirmarClick(Sender: TObject);
begin
;
end;

procedure TForm1.btAtualizarClick(Sender: TObject);
begin
;
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
SqlClientDataSet1.Close;
SqlClientDataSet1.Params[0].Value := StrToInt(Edit1.Text);
SqlClientDataSet1.Open;
end;

end.
