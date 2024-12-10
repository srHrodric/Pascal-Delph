unit PRJexecutaprog;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, Libc;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
var
  rc : Integer;
begin
  rc := Libc.system('kcalc');
  if rc = -1 then
    ShowMessage('Erro ao executar kcalc');
end;

end.
