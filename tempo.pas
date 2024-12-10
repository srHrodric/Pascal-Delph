unit tempo;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QTypes, QExtCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    LCDNumber1: TLCDNumber;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HoraEntrada:tDateTime;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
HoraEntrada := Now;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  HoraAtual: TDateTime;
begin
HoraAtual := Now;
LCDNumber1.Value :=
    FormatDateTime('hh:mm:ss',HoraAtual - HoraEntrada);
end;

end.
