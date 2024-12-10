unit bolas;

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

implementation

{$R *.xfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
 x,y:integer;
 begin
  x:= random(form1.ClientWidth);
  y:= random(form1.Clientheight);
  form1.Canvas.Brush.Color:= random(65535);
  form1.Canvas.Pen.Color:= random(65535);
  form1.Canvas.Ellipse(x-15,y-15,x+15,y+15);
  form1.Canvas.font.Name:= 'arial';
  form1.Canvas.Font.Color:= clblue;
  form1.Canvas.Font.Size:= 12;
  form1.Canvas.TextOut(x-10,y-30,'Delphi');
 end;



end.
