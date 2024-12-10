unit Incli;

interface

uses
  SysUtils, Types, Classes, Variants,
  QGraphics, QControls, QForms, QDialogs,Qt;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormPaint(Sender: TObject);
var
  i : Integer;
  DevPoint,PrPoint : TPoint;
begin
  Form1.Canvas.Font.Color := clBlue;
  Form1.Canvas.Font.Size  := 15;
// Pega o meio da tela
  DevPoint.X := ClientWidth div 2;
  DevPoint.Y := ClientHeight div 2;
// loop de 0 a 18 onde os graus serão colocados de 20 e 20
// perfazendo um total de 360 graus
  for i := 0 to 18 do begin
// gira 10 graus
    QPainter_rotate(Canvas.Handle,20);
// converte as coordenadas
    QPainter_xFormDev(Canvas.Handle,PPoint(@PrPoint),
       PPoint(@DevPoint));
// desenha o texto
    Form1.Canvas.TextOut(PrPoint.X+50,PrPoint.Y,'Delphi 6 Fácil');
  end;
end;

end.
