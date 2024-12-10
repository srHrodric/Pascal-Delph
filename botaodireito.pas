unit botaodireito;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
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

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight Then begin
   Image1.Height := Image1.Height + 2;
   Image1.Width  := Image1.Width  + 2;
  end;

  if Button = mbLeft Then begin
   Image1.Height := Image1.Height - 2;
   Image1.Width  := Image1.Width  - 2;
  end;
 end;

end.
