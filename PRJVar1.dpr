program PRJVar1;

uses
  QForms,
  var1 in 'var1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
