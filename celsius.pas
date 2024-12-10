unit celsius;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  temp: string;
  celsius: double;
begin
Try //Tentar executar os pr�ximos comandos
repeat
     temp := inputbox('Digite a temperatura em graus Fahrenheit',
      'Fahrenheit para Celsius','');
     if temp <> 'Sair' then
        begin
        //efeuta o c�lculo de convers�o da temperatura
        celsius := (strtofloat(temp)+ 40)* 5 / 9 - 40;
        //Mostra a mensagem com o resultado
        messagedlg(floattostr(celsius),mtinformation,[mbok],0);
        end
//Se a vari�vel Temp contiver um valor diferente da palavra
// 'Sair' o loop � executado novamente
until temp = 'Sair';
Application.Terminate
//Se o usu�rio digitar a palavra Sair o programa � finalizado
except
   on EConvertError do  begin
      ShowMessage('Digite um n�mero V�lido');
      Application.Terminate;
   end;
   end;
end;

end.
