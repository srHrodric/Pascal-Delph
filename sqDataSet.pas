unit sqDataSet;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs, FMTBcd,
  QStdCtrls, QMask, QDBCtrls, DB, SqlExpr, DBXpress;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    SQLDataSet1COD_FITA: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1OBSERVACAO: TStringField;
    SQLDataSet1DATA_CAD: TSQLTimeStampField;
    SQLDataSet1TEMPO_DURA: TStringField;
    SQLDataSet1COD_ESTILO: TIntegerField;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
// fecha o dataset para mudar parâmetro
SqlDataset1.Close;
SqlDataset1.ParambyName('cod_fita').Asinteger := StrToInt(Edit1.Text);
SqlDataset1.Open;
// se não encontrar - eof é True
    if SqlDataset1.EOF then begin
      SqlDataset1.Close;
      MessageDlg('Pesquisa Filme','Filme não encontrado',
         mtError,[mbok],0);
    end;
end;

end.
