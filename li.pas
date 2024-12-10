unit li;

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
  icresce,ccresce:boolean;
  ii,cc: integer;


implementation

{$R *.xfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 if icresce then
  begin
   ii:= ii+random(50);
     if ii > height then begin
       icresce:= false;
     end;
  end
   else begin
     ii:= ii - random(20);
       if ii < 0 then begin
         icresce:=true;
        end;
    end;
    if ccresce then begin
      cc:= cc + random(15);
       if cc > width then begin
         ccresce:=false;
       end;
     end
     else begin
       cc:= cc - random(10);
        if cc < 0 then begin
          ccresce:=true;
        end;
      end;
      Form1.Canvas.pen.Color:=random(65535);
      Form1.canvas.MoveTo(cc,0);
      Form1.canvas.LineTo(0,ii);
      Form1.canvas.MoveTo(cc,height);
      Form1.canvas.LineTo(0,height-ii);
      Form1.canvas.MoveTo(width,ii);
      Form1.canvas.LineTo(width-cc,0);
      Form1.canvas.MoveTo(width,height-ii);
      Form1.canvas.LineTo(width-cc,height);
      Form1.canvas.MoveTo(width,height-ii);
      Form1.canvas.LineTo(0,ii);
      Form1.canvas.MoveTo(width,ii);
      Form1.canvas.LineTo(0,height-ii);
      Form1.canvas.moveTo(width-cc,0);
      Form1.canvas.lineTo(cc,height);
      Form1.canvas.MoveTo(width-cc,height);
      Form1.canvas.lineTo(cc,0);
end;

end.
