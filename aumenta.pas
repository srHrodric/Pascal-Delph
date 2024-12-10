unit aumenta;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls;

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
if Button = mbRight then Begin
  Image1.Height := Image1.Height + 2;
  Image1.Width  := Image1.Width + 2;
end;

if Button = mbLeft then Begin
  Image1.Height := Image1.Height - 2;
  Image1.Width  := Image1.Width -  2;
end;
end;

end.
