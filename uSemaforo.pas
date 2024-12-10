unit uSemaforo;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
image1.visible := true;
label1.Visible := true;
image2.visible := false;
label2.visible := false;
image3.visible := false;
label3.visible := false;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
image1.visible := false;
label1.Visible := false;
image2.visible := true;
label2.visible := true;
image3.visible := false;
label3.visible := false;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
image1.visible := false;
label1.Visible := false;
image2.visible := false;
label2.visible := false;
image3.visible := true;
label3.visible := true;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
close;
end;

end.
