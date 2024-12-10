unit format;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
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

function SHFormatDrive(Wnd : hWnd; Drive : integer;
  Size : uint; Action : integer) : integer; stdcall;
  external 'shell32' name 'SHFormatDrive';

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  SHFormatDrive(Handle,0,2,1);
end;

end.
