program PRJDriv;

uses
  Forms,
  driv in 'driv.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
