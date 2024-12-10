unit SalvaTelaVCL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Bitmap : TBitmap;
  DC : hDc;
  DesktopRect : TRect;
  DesktopCanvas : TCanvas;
  HoraAtu : DWord;
begin
// esconde a aplicação
  Application.MainForm.Hide;
// da 1/2 segundo para restaurar tela
  HoraAtu := GetTickCount;
  while GetTickCount-HoraAtu < 500 do
    Application.ProcessMessages;
  try
// pega um DC para a área de trabalho
    DC := GetDC(GetDesktopWindow);
    try
// cria um canvas para área de trabalho
      DesktopCanvas := TCanvas.Create;
// cria um bitmap para armazenar área de trabalho
      Bitmap := TBitmap.Create;
      try
// deixa tamanho do bitmap igual ao da tela
        Bitmap.Width := Screen.Width;
        Bitmap.Height := Screen.Height;
// seta o Handle do canvas para o DC da área de trabalho
        DesktopCanvas.Handle := DC;
        DeskTopRect := Rect(0,0,Screen.Width,Screen.Height);
// copia imagem da área de trabalho para o bitmap
        Bitmap.Canvas.CopyRect(DeskTopRect,DeskTopCanvas,DeskTopRect);
// salva o bitmap
       if SaveDialog1.Execute then
      Bitmap.SaveToFile(SaveDialog1.FileName);
      Image1.Picture.LoadFromFile(SaveDialog1.Filename);
      finally
        Bitmap.Free;
        DesktopCanvas.Free;
      end;
    finally
// libera o DC da área de trabalho
      ReleaseDC(GetDesktopWindow,DC);
    end;
  finally
// restaura aplicação
    Application.MainForm.Show;
  end;

end;

end.
