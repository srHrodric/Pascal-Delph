unit Menu;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QMenus, QTypes, QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    AbrirFigura1: TMenuItem;
    N1: TMenuItem;
    FecharFigura1: TMenuItem;
    FecharSistema1: TMenuItem;
    CorFundo1: TMenuItem;
    Corfundo2: TMenuItem;
    CordaLetra1: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    ColorDialog1: TColorDialog;
    SobreoAutor1: TMenuItem;
    Editar1: TMenuItem;
    copiar1: TMenuItem;
    Colar1: TMenuItem;
    Fonte1: TMenuItem;
    FontDialog1: TFontDialog;
    procedure FecharSistema1Click(Sender: TObject);
    procedure AbrirFigura1Click(Sender: TObject);
    procedure FecharFigura1Click(Sender: TObject);
    procedure Corfundo2Click(Sender: TObject);
    procedure CordaLetra1Click(Sender: TObject);
    procedure SobreoAutor1Click(Sender: TObject);
    procedure copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses SegundoForm;

{$R *.xfm}

procedure TForm1.FecharSistema1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.AbrirFigura1Click(Sender: TObject);
begin
OpenDialog1.Execute;
if OpenDialog1.FileName <> '' Then  Begin
  Image1.Visible := True;
  Image1.Picture.LoadFromFile(OpenDialog1.Filename);
  Form1.Caption := OpenDialog1.FileName;
end;
end;

procedure TForm1.FecharFigura1Click(Sender: TObject);
begin
Image1.Visible := False;
end;
procedure TForm1.Corfundo2Click(Sender: TObject);
begin
  ColorDialog1.Color := Form1.Color;
  ColorDialog1.Execute;
  Form1.Color := ColorDialog1.Color;
end;

procedure TForm1.CordaLetra1Click(Sender: TObject);
begin
  ColorDialog1.Color := Edit1.Font.Color;
  ColorDialog1.Execute;
  Edit1.Font.Color := ColorDialog1.Color
end;

procedure TForm1.SobreoAutor1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.copiar1Click(Sender: TObject);
begin
Edit1.CopyToClipboard ;
end;

procedure TForm1.Colar1Click(Sender: TObject);
begin
Edit1.PasteFromClipboard;
end;

procedure TForm1.Fonte1Click(Sender: TObject);
begin
FontDialog1.Font := Edit1.Font ;
FontDialog1.Execute;
Edit1.Font := FontDialog1.Font;
end;

end.


