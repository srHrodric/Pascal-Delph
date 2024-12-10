unit Mensagem;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
ShowMessage('Alô Mundo');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
MessageDlg('Deseja Sair do Programa',mtConfirmation,
[mbyes,mbno],0,mbYes);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if MessageDlg('Deseja Sair do Programa',mtConfirmation,
[mbyes,mbno],0,mbYes) = mrYes then
 begin
    ShowMessage('Obrigado Por Usar meu Programa');
     Close;
 end
  Else begin
   Showmessage('Obrigado Por Ficar');
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Button4.Caption := InputBox('Pergunta Nome','Qual Seu Nome','William');
end;

end.
