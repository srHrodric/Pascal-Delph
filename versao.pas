unit versao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormCreate(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

{ TForm1 }


procedure TForm1.FormCreate(Sender: TObject);
var
  OSVersionInfo : TOSVersionInfo;
begin
  OsVersionInfo.dwOSVersionInfoSize := SizeOf(TOsVersionInfo);
  GetVersionEx(OsVersionInfo);
  with OsVersionInfo do begin
    Label4.Caption := IntToStr(dwMajorVersion);
    Label5.Caption := IntToStr(dwMinorVersion);
    Label6.Caption := IntToStr(LoWord(dwBuildNumber));
    case dwPlatformID of
      VER_PLATFORM_WIN32S : Label8.Caption := 'Win32s';
      VER_PLATFORM_WIN32_WINDOWS : Label8.Caption := 'Windows 95/98/Millenium';
      VER_PLATFORM_WIN32_NT : Label8.Caption := 'Windows NT';
    end;
  end;    
end;

end.
