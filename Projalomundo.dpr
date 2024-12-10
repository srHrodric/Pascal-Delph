program Projalomundo;

uses
  QForms,
  alomundo in 'alomundo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
