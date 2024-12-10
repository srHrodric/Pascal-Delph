program PRJMenu;

uses
  QForms,
  Menu in 'Menu.pas' {Form1},
  SegundoForm in 'SegundoForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
