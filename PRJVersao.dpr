program PRJVersao;

uses
  Forms,
  versao in 'versao.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
