program PRJpropriedades;

uses
  QForms,
  prop in 'prop.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
