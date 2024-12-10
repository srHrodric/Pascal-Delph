unit multiplataforma;

interface

uses
  {$IFDEF LINUX}
  SysUtils, Classes, QGraphics, QControls, QForms,
  QDialogs,QStdCtrls;
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs,StdCtrls;
  {$ENDIF}

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
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

{$IFDEF MSWINDOWS}
{$R *.DFM}
{$ENDIF}
{$IFDEF LINUX}
{$R *.xfm}
{$ENDIF}

function InverteStr(Str : String) : String;
var
  i : Integer;
begin
  Result := '';
  for i := Length(Str) downto 1 do
    Result := Result + Str[i];
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text <> '' then
    ShowMessage(InverteStr(Edit1.Text));
end;

end.
