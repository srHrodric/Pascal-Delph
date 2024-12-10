unit cir;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QButtons, QStdCtrls, QComCtrls;

type
  TForm1 = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    ColorDialog1: TColorDialog;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
ColorDialog1.Execute;
Form1.Canvas.Brush.Color := ColorDialog1.Color;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
Form1.Canvas.Ellipse(X+SpinEdit1.Value,Y+SpinEdit1.Value,
                     X-SpinEdit1.Value,Y-SpinEdit1.Value);
end;

end.
