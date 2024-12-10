unit driv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Drive: Char;
begin
  for Drive := 'A' to 'Z' do begin
    case GetDriveType(PChar(Drive + ':\')) of
      DRIVE_REMOVABLE:
        Listbox1.Items.Add(Drive + '     Removível');
      DRIVE_FIXED:
        Listbox1.Items.Add(Drive + '     Fixo');
      DRIVE_REMOTE:
        Listbox1.Items.Add(Drive + '     Disco de rede');
      DRIVE_CDROM:
        Listbox1.Items.Add(Drive + '     CD-ROM');
    end;
  end;

end;

end.
