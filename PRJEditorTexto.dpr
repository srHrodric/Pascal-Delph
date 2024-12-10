program PRJEditorTexto;

uses
  QForms,
  Principal in 'Principal.pas' {Form1},
  Editor in 'Editor.pas' {Form2},
  Splash in 'Splash.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Form3.Update;
  Application.CreateForm(TForm1, Form1);
  Form3.Hide;
  Form3.Release;
  Application.Run;
end.
