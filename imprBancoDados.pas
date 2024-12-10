unit imprBancoDados;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  DBXpress, Provider, SqlExpr, QStdCtrls, QGrids, QDBGrids, DB, DBClient,
  DBLocal, DBLocalS ;

type
  TForm1 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLClientDataSet1: TSQLClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    SQLClientDataSet1COD_FITA: TIntegerField;
    SQLClientDataSet1DESCRICAO: TStringField;
    SQLClientDataSet1OBSERVACAO: TStringField;
    SQLClientDataSet1DATA_CAD: TSQLTimeStampField;
    SQLClientDataSet1TEMPO_DURA: TStringField;
    SQLClientDataSet1COD_ESTILO: TIntegerField;
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
Const
Cabecalho = 'Cod. Fita  Descricao            Data Cadastro  Tempo Duracao';
Var
ArquivoTemp: textfile;
begin
   AssignFile(Arquivotemp,'LPT1');
   Rewrite(Arquivotemp);
 SqlClientDataSet1.First;
 While not SqlClientDataSet1.eof do
    begin
     writeln(arquivotemp,'Codigo Fita  :  ',SqlClientDataSet1Cod_Fita.asstring);
     writeln(arquivotemp,'Descricao    :  ',SqlClientDataSet1Descricao.asstring);
     writeln(arquivotemp,'Data Cadastro:  ',SqlClientDataSet1Data_Cad.asstring);
     writeln(arquivotemp,'Tempo duracao:  ',SqlClientDataSet1Tempo_Dura.asstring);
     writeln(arquivotemp);  //linha em branco
     writeln(arquivotemp);
     SqlClientDataSet1.Next;
 end;
 CloseFile(Arquivotemp);
 end;



end.
