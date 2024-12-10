program PRJSalvaTela;

uses
  QForms,
  SalvaTela in 'SalvaTela.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
