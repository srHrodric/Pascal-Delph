unit CadEstilo;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  DBXpress, DB, SqlExpr, FMTBcd, QStdCtrls, QMask, QDBCtrls, QExtCtrls,
  Provider, QGrids, QDBGrids, DBClient, DBLocal, DBLocalS;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLClientDataSet1: TSQLClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    SQLClientDataSet1COD_ESTILO: TIntegerField;
    SQLClientDataSet1DESCRICAO: TStringField;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    SQLClientDataSet2: TSQLClientDataSet;
    DataSource2: TDataSource;
    SQLClientDataSet2COD_FITA: TIntegerField;
    SQLClientDataSet2DESCRICAO: TStringField;
    SQLClientDataSet2OBSERVACAO: TStringField;
    SQLClientDataSet2DATA_CAD: TSQLTimeStampField;
    SQLClientDataSet2TEMPO_DURA: TStringField;
    SQLClientDataSet2COD_ESTILO: TIntegerField;
    procedure SQLClientDataSet1AfterPost(DataSet: TDataSet);
    procedure SQLClientDataSet1NewRecord(DataSet: TDataSet);
    procedure SQLClientDataSet2AfterPost(DataSet: TDataSet);
    procedure SQLClientDataSet2NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.SQLClientDataSet1AfterPost(DataSet: TDataSet);
begin
SqlClientDataSet1.ApplyUpdates(0);
end;

procedure TForm1.SQLClientDataSet1NewRecord(DataSet: TDataSet);
begin
  SQLClientDataSet1Cod_Estilo.Value  := 0;
  SqlClientDataSet1.Refresh;
end;

procedure TForm1.SQLClientDataSet2AfterPost(DataSet: TDataSet);
begin
SqlClientDataSet2.ApplyUpdates(0);
SqlClientDataSet2.Refresh;
end;

procedure TForm1.SQLClientDataSet2NewRecord(DataSet: TDataSet);
begin
SqlClientDataSet2Cod_Fita.Value := 0 ;
end;

end.
