unit Crono;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QTypes, QExtCtrls, QStdCtrls;

type
  TForm1 = class(TForm)
    LCDNumber1: TLCDNumber;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  HoraComeca: TDateTime;

implementation

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
HoraComeca := time;
Button2.Enabled := true;
Button1.Enabled := false;
Timer1.Enabled := true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
LCDNumber1.Value :=
    FormatDateTime('ss:zzz',time - HoraComeca);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Button1.Enabled := true;
Button2.Enabled := false;
Timer1.Enabled := false;
end;

end.
