program PRJCadCliGrid2;

uses
  Forms,
  CadCliGrid2 in 'CadCliGrid2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
