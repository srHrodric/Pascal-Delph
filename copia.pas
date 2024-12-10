unit copia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure Copiar(Entrada,Saida : String);
var
  StrmEnt, StrmSai : TFileStream;
begin
  StrmEnt := TFileStream.Create(Entrada,fmOpenRead);
  try
    StrmSai := TFileStream.Create(Saida, fmOpenWrite or
      fmCreate);
    try
      StrmSai.CopyFrom(StrmEnt, StrmEnt.Size);
    finally
      StrmSai.Free;
    end;
  finally
    StrmEnt.Free;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Copiar('c:\autoexec.bat','c:\windows\desktop\Autoexec.txt');
  ShowMessage('C�pia Conclu�da')
end;

end.
