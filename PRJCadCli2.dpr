program PRJCadCli2;

uses
  Forms,
  CadCli2 in 'CadCli2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
