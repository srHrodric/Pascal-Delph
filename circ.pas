unit circ;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs;

type
  TForm1 = class(TForm)
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  y    : integer;
implementation

{$R *.xfm}

procedure TForm1.FormClick(Sender: TObject);
var
x : integer;
begin
 repeat
  for x:= 0 to 300 do  begin
    form1.Canvas.Pen.Color:=random(65535);
    form1.Canvas.Brush.Style:=bsclear;
    form1.Canvas.ellipse(trunc(form1.width/2+x),trunc(form1.height/2+x),trunc(form1.width/2-x),trunc(form1.height/2-x));
   end;
     for x:= 300 downto 0 do begin
       form1.Canvas.Pen.Color:=random(65535);
       form1.Canvas.ellipse(trunc(form1.width/2+x),trunc(form1.height/2+x),trunc(form1.width/2-x),trunc(form1.height/2-x));
     end;
    y :=y+1;
 until y>20;
 application.terminate;
 end;



end.
