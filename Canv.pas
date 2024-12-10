unit Canv;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QButtons;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
Form1.Canvas.Ellipse(10,20,60,85);
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
 Form1.Canvas.Ellipse(100,200,150,150);
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
  Form1.Canvas.Rectangle(200,20,300,300);
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin
  Form1.Canvas.MoveTo(300,200);
  Form1.Canvas.LineTo(400,200);
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
Form1.Canvas.Font.Size := 30;
Form1.Canvas.Font.Color := clBlue;
Form1.Canvas.TextOut(500,250,'Kylix Fácil');
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
Form1.Canvas.Brush.Style := bsSolid;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
Form1.Canvas.Brush.Style := bsBDiagonal;
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
Form1.Canvas.Brush.Style := bsDiagCross;
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
Form1.Canvas.Brush.Style := bsVertical;
end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
Form1.Canvas.Brush.Style := bsHorizontal;
end;

end.
