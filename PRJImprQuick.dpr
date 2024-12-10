program PRJImprQuick;

uses
  Forms,
  ImpriQuick in 'ImpriQuick.pas' {Form1},
  Unit2 in '..\Arquivos de programas\Borland\Delphi6\Projects\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
