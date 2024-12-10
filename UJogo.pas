unit UJogo;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QExtCtrls, QStdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
image1.visible := false;
label1.caption := inttostr(random(10));
label2.caption := inttostr(random(10));
label3.caption := inttostr(random(10));
if (Label1.Caption = '5') or (Label2.Caption = '5')
 or (Label3.Caption = '5') then  begin
  image1.visible := true;
  beep;
 end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Randomize;
end;

end.
