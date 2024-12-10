program PRJCelsius;

uses
  QForms,
  celsius in 'celsius.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
