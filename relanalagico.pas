unit relanalagico;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs, QTypes,
  QExtCtrls, Math;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
    procedure CriaRelogio;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

function Gira(Angulo : Extended; const Ponto : TPoint) : TPoint;
var
  Seno, Cosseno : Extended;
begin
// Faz o seno e cosseno do ângulo
  SinCos(Angulo*pi/180, Seno, Cosseno);
// Gira X
  Result.X := Trunc(Ponto.X * Cosseno + Ponto.Y * Seno);
// Gira Y
  Result.Y := Trunc(Ponto.Y * Cosseno - Ponto.X * Seno);
end;

procedure TForm1.CriaRelogio;
var
  Hora, Mint, Seg, MSeg : Word;
  Raio : Integer;
  cx, cy, i : Integer;
  Angulo : Extended;
  APontos : Array[0..3] of TPoint;
  Ponto : TPoint;
  OldColor : TColor;
begin
  with PaintBox1.Canvas do begin
// limpa a tela
    FillRect(ClientRect);
// salva a cor de preenchimento
//configura cor para preto
    OldColor := Brush.Color;
    Brush.Color := clBlack;
// Grava o centro do relógio
    cx := (ClientRect.Right+ClientRect.Left) div 2;
    cy := (ClientRect.Bottom+ClientRect.Top) div 2;
// determina o tamanho(raio) do relógio
    Raio := min(ClientRect.Right-ClientRect.Left,
       ClientRect.Bottom-ClientRect.Top) div 2;
// separa hora atual em variaveis
    DecodeTime(time,Hora,Mint,Seg,MSeg);
// encontra o ângulo do desenho do ponteiro das horas
    Angulo := 30*(3 - Hora) - Mint div 2;
// gira pontos do polígono do ponteiro das horas
    APontos[0] := Gira(Angulo,Point(-Raio div 10, 0));
    APontos[1] := Gira(Angulo,Point(0,-Raio div 10));
    APontos[2] := Gira(Angulo,Point(Raio div 2, 0));
    APontos[3] := Gira(Angulo,Point(0,Raio div 10));
    for i := 0 to 3 do begin
      Inc(APontos[i].x,cx);
      Inc(APontos[i].y,cy);
    end;
// desenha o ponteiro das horas
    Polygon(APontos);
// encontra o ângulo do ponteiro dos minutos
    Angulo := (15 - Mint)*6;
// gira pontos do polígono do ponteiro dos minutos
    APontos[0] := Gira(Angulo,Point(-Raio div 20, 0));
    APontos[1] := Gira(Angulo,Point(0,-Raio div 20));
    APontos[2] := Gira(Angulo,Point(Raio *3 div 4, 0));
    APontos[3] := Gira(Angulo,Point(0,Raio div 20));
    for i := 0 to 3 do begin
      Inc(APontos[i].x,cx);
      Inc(APontos[i].y,cy);
    end;
// desenha o ponteiro dos minutos
    Polygon(APontos);
// retorna cor de preenchimento ao original
    Brush.Color := OldColor;
// encontra o ângulo do ponteiro dos segundos
    Angulo := (15 - Seg)*6;
// desenha o ponteiro dos segundos
    Ponto := Point(0,Raio * 3 div 4);
    MoveTo(cx,cy);
    Ponto := Gira(Angulo, Ponto);
    LineTo(cx+Ponto.x,cy+Ponto.Y);
// desenha as marcações dos minutos
    for i := 0 to 59 do begin
      if i mod 5 = 0 then
        Ponto := Point(Raio * 9 div 10,0)
      else
        Ponto := Point(Raio * 29 div 30,0);
        Ponto := Gira(6*i, Ponto);
        MoveTo(cx+Ponto.X,cy+Ponto.Y);
        Ponto := Point(Raio,0);
        Ponto := Gira(6*i, Ponto);
        LineTo(cx+Ponto.X,cy+Ponto.Y);
      end;
    end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  CriaRelogio;
end;

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
  CriaRelogio;
end;

end.
