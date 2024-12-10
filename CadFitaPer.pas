unit CadFitaPer;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  Provider, QButtons, QExtCtrls, QGrids, QDBGrids, DB, DBClient, DBLocal,
  DBLocalS, SqlExpr, QStdCtrls, QMask, QDBCtrls, DBXpress;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLClientDataSet1: TSQLClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btPrimeiro: TSpeedButton;
    btVoltar: TSpeedButton;
    btAvancar: TSpeedButton;
    btUltimo: TSpeedButton;
    btInserir: TSpeedButton;
    btAtualizar: TSpeedButton;
    btExcluir: TSpeedButton;
    btConfirmar: TSpeedButton;
    btEditar: TSpeedButton;
    btCancelar: TSpeedButton;
    SQLClientDataSet1COD_FITA: TIntegerField;
    SQLClientDataSet1DESCRICAO: TStringField;
    SQLClientDataSet1OBSERVACAO: TStringField;
    SQLClientDataSet1DATA_CAD: TSQLTimeStampField;
    SQLClientDataSet1TEMPO_DURA: TStringField;
    SQLClientDataSet1COD_ESTILO: TIntegerField;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure btAvancarClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure SQLClientDataSet1NewRecord(DataSet: TDataSet);
    procedure SQLClientDataSet1AfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.btPrimeiroClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.First;
end;

procedure TForm1.btVoltarClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.Prior;

end;

procedure TForm1.btAvancarClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.Next;

end;

procedure TForm1.btUltimoClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.Last;

end;

procedure TForm1.btInserirClick(Sender: TObject);
begin
  SQLClientDataSet1.Append;

end;

procedure TForm1.btExcluirClick(Sender: TObject);
begin
  if not SQLCLientDataSet1.bof then
    SQLClientDataSet1.Delete;

  SQLClientDataset1.ApplyUpdates(0);

end;

procedure TForm1.btEditarClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.Edit;

end;

procedure TForm1.btConfirmarClick(Sender: TObject);
begin
  if (SQLClientDataSet1.State = dsEdit) or
     (SQLClientDataSet1.State = dsInsert) then
    SQLClientDataSet1.Post;

  SQLClientDataset1.ApplyUpdates(0);

end;

procedure TForm1.btCancelarClick(Sender: TObject);
begin
  if (SQLClientDataSet1.State = dsEdit) or
     (SQLClientDataSet1.State = dsInsert) then
    SQLClientDataSet1.Cancel;

  SQLClientDataset1.ApplyUpdates(0);

end;

procedure TForm1.btAtualizarClick(Sender: TObject);
begin
  SQLClientDataset1.ApplyUpdates(0);
  SQLClientDataSet1.Refresh;

end;

// Ao criar um novo registro no dataset
procedure TForm1.SQLClientDataSet1NewRecord(DataSet: TDataSet);
begin
// O novo registro precisa de um codigo
  SQLClientDataSet1Cod_fita.Value  := 0;
end;


procedure TForm1.SQLClientDataSet1AfterPost(DataSet: TDataSet);
begin
// Aplicar as alteracoes
  SQLClientDataset1.ApplyUpdates(0);
// Atualizar o dataset
  SQLClientDataset1.Refresh;
end;


procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

// Ao fechar o formulario
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Aplicar as alteracoes
  SQLClientDataset1.ApplyUpdates(0);
end;

end.
