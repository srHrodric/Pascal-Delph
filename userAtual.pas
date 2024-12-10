unit userAtual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

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

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Buffer : string;
  BufLen : DWord;
begin
  BufLen := 255;
  SetLength(Buffer,BufLen);
  GetUserName(PChar(Buffer), BufLen);
  SetLength(Buffer,BufLen);
  ShowMessage(Buffer);

end;

end.
