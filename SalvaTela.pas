unit SalvaTela;

interface

uses
  SysUtils, Types, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, Qt, QExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Image1: TImage;
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
var
  Bitmap : TBitmap;   NumJanela : Cardinal;
begin
// esconde aplica��o para n�o aparecer na imagem
  Hide;
// processa as mensagens
  Application.ProcessMessages;
// cria o Bitmap para guardar a imagem
  Bitmap := TBitmap.Create;
  try
// pega o n�mero da janela da �rea de trabalho
    NumJanela := QWidget_winId(QApplication_Desktop);
// captura a �rea de trabalho para o bitmap
    QPixmap_grabWindow(Bitmap.Handle,NumJanela,0,0,-1,-1);
// mostra novamente a janela
    Show;
// salva a figura capturada
    if SaveDialog1.Execute then
      Bitmap.SaveToFile(SaveDialog1.FileName);
      Image1.Picture.LoadFromFile(SaveDialog1.Filename);
  finally
   //Libera vari�vel da mem�ria
    Bitmap.Free;
  end;
end;

end.
