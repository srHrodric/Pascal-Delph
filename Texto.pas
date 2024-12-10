unit Texto;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QTypes, QExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  X,Y:Integer;

implementation

{$R *.xfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
X:= X + 100;
Form1.Canvas.Font.Color := Random(10000);
Form1.Canvas.Font.Size := 15;
Form1.Canvas.TextOut(X,Y,'DELPHI ');
If X > Form1.ClientWidth Then
  Begin
  X := 0;
  Y:= Y +40;
end;
end;

end.
