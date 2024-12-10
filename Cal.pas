unit Cal;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  PriValor,SegValor: Double;
begin
PriValor := StrToFloat(Edit1.text);
SegValor := StrToFloat(Edit2.text);
if RadioButton1.Checked = true Then
  Label3.Caption := FloatToStr(PriValor + SegValor);

if RadioButton2.Checked = true Then
  Label3.Caption := FloatToStr(PriValor - SegValor);

if RadioButton3.Checked = true Then
  Label3.Caption := FloatToStr(PriValor * SegValor);

if RadioButton4.Checked = true Then
  Label3.Caption := FloatToStr(PriValor / SegValor);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Application.Terminate
end;

end.
