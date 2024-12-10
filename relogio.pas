unit relogio;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QTypes, QExtCtrls, QStdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
label1.caption := timetostr(time);
end;

end.
