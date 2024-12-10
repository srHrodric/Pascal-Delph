unit SenhaSimples;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormShow(Sender: TObject);
var
  senha: string;
begin
  senha := InputBox('Digite a Senha','Digite a Senha','');
  if senha = 'delphi' then
    begin
      ShowMessage('Senha Correta,Logando no Sistema');
      Label1.Visible := True;
    end
  else
    begin
      ShowMessage('Senha Incorreta');
      Application.Terminate;
    end;
end;

end.
