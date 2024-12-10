program PRJUmaVez;

uses
  Forms,
  Windows,
  umavez in 'umavez.pas' {Form1};

{$R *.res}

begin
  if FindWindow('TForm1', 'Form1') <> 0 then
    SetForegroundWindow(FindWindow('TForm1', 'Form1'))
  else begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
  End;
end.
