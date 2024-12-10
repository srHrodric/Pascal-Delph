unit dataNasc;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  Data: TDateTime;
begin
Data := StrToDate(Edit1.Text);
Edit1.Text :=
  FormatDateTime(' "Você Nasceu no dia" dd, dddd, mmmm " de " yyyy',
   Data);
end;

end.
