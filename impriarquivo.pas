unit impriarquivo;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
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
 F1, F2: TextFile;
 Ch: Char;
begin
 if OpenDialog1.Execute then begin
   AssignFile(F1, Opendialog1.Filename);
   Reset(F1);
   AssignFile(F2,'LPT1');
   Rewrite(F2);
   While not Eof(F1) do
   begin
     Read(F1,Ch);
     Write(F2, Ch);
   end;
   CloseFile(F2);
   end;
   CloseFile(F1);
end;

end.
