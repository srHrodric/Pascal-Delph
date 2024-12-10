program MyRecord;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  untFunction in 'untFunction.pas';

var aArray: TRegistro;
begin
  try
     try
       CriaArquivoVazio(aArray);
       OpcaoAgenda(aArray);
     except
       on E: Exception do
         Writeln(E.ClassName, ': ', E.Message);
     end;
  finally

  end;
end.
