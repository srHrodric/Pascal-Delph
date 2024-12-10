unit Prot1;

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
  MudaX,MudaY: Boolean;

implementation

{$R *.xfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
Form1.Canvas.Pen.Color := Random(65535);
Form1.Canvas.Brush.Color := Random(65535);
if MudaX = True Then
  X:= X-5
 Else
  X:= X+5;
if MudaY = True Then
  Y:= Y-5
 Else
   Y:= Y +5;
Form1.Canvas.Ellipse(X,Y,X+20,Y+20);
if X > Form1.ClientWidth  Then
  MudaX := True;
if Y > Form1.ClientHeight Then
  MudaY := True;
if X < 0 Then
  MudaX := False;
if Y < 0 Then
  MudaY := False;
end;

end.
