unit imprimedireto;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

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

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
const
  Frase = 'Delphi 6 unindo velocidade com o facilidade';
var
  Imprime: TextFile;
  i : Integer;
begin
// atribui a porta da impressora para gravação de dados
  AssignFile(Imprime, 'LPT1');
  Rewrite(Imprime);
// muda tipo de letra
  Write(Imprime,#27'(s1p52T');
// impressão padrão
  Write(Imprime,#27'&a5r5C'+#27'(s0b0S'+Frase);
// impressão em itálico
  Write(Imprime,#27'&a6r5C'+#27'(s0b0S'+Frase);
// negrito
  Write(Imprime,#27'&a7r5C'+#27'(s3b0S'+Frase);
// negrito itálico
  Write(Imprime,#27'&a8r5C'+#27'(s3b1S'+Frase);
// muda tamanho do texto
  for i := 1 to 7 do
    Write(Imprime,#27'&a'+IntToStr(12+i)+'r5C'+#27'(s0b0s'+
       IntToStr(i*2)+'V'+Frase);
// limpar buffer da impressora
  Write(Imprime,#27'E');
// fecha o arquivo de impressão
  CloseFile(Imprime);
end;

end.
