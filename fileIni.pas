unit fileIni;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs, IniFiles,
  QStdCtrls;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    IniFile : TIniFile;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
// cria o inifile, apontando para o arquivo de configuração
  IniFile := TIniFile.Create
  ('C:\Arquivos de programas\Arquivos comuns\Borland Shared\DBExpress\dbxconnections.ini');
// lê as seções para os itens da combobox
  IniFile.ReadSections(Combobox1.Items);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Inifile.UpdateFile;
  IniFile.Free;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
// lê a seção referente ao texto da combobox,
// jogando os valores no memo
  IniFile.ReadSectionValues(Combobox1.Text, Memo1.Lines);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Ident : String;
  i : Integer;
begin
// apaga a seção para que seja gravada novamente
  IniFile.EraseSection(ComboBox1.Text);
  for i := 0 to Memo1.Lines.Count-1 do begin
// Ident tem o nome do identificador
    Ident := Memo1.Lines.Names[i];
    if Ident <> '' then
// values[Ident] tem o valor referente ao identificador
      Inifile.WriteString(Combobox1.Text, Ident,
        Memo1.Lines.Values[Ident]);
  end;
end;

end.
