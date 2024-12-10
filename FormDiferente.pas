unit FormDiferente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
begin
Application.Terminate
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Janela1,Janela2 : hRgn;
begin
// Cria um círculo
  Janela1 := CreateEllipticRgn(0,0,300,300);
// Cria outro círculo
  Janela2 := CreateEllipticRgn(180,180,350,350);
// Combina duas regiões para fazer o formulário
  CombineRgn(Janela1,Janela1,Janela2,RGN_OR);
// Da formato a janela  
  SetWindowRgn(Handle,Janela1,True);
end;

end.
