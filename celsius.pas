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
Try //Tentar executar os próximos comandos
repeat
     temp := inputbox('Digite a temperatura em graus Fahrenheit',
      'Fahrenheit para Celsius','');
     if temp <> 'Sair' then
        begin
        //efeuta o cálculo de conversão da temperatura
        celsius := (strtofloat(temp)+ 40)* 5 / 9 - 40;
        //Mostra a mensagem com o resultado
        messagedlg(floattostr(celsius),mtinformation,[mbok],0);
        end
//Se a variável Temp contiver um valor diferente da palavra
// 'Sair' o loop é executado novamente
until temp = 'Sair';
Application.Terminate
//Se o usuário digitar a palavra Sair o programa é finalizado
except
   on EConvertError do  begin
      ShowMessage('Digite um número Válido');
      Application.Terminate;
   end;
   end;
end;

end.
