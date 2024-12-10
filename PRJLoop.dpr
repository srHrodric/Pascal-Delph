program PRJLoop;

uses
  QForms,
  Loop1 in 'Loop1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
