unit drag;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QExtCtrls, QStdCtrls, QTypes;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ImgCancelar: TImage;
    ImgConfirmar: TImage;
    Image7: TImage;
    Timer1: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Timer2: TTimer;
    ImgNuvem: TImage;
    lblAdeus: TLabel;
    Timer3: TTimer;
    ImgChuva: TImage;
    lblChove: TLabel;
    Timer4: TTimer;
    procedure Image7DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Image7DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.Image7DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
Accept := Source is Timage;
end;

procedure TForm1.Image7DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
if (Source as Timage).Tag = 0 Then Begin
  (Source as Timage).Visible := False;
  Label3.Caption := IntToStr(StrToInt(Label3.Caption)+1);
end;
If (Source as Timage).Tag = 1 Then Begin
    Image1.Visible := True;
    Image2.Visible := True;
    Image3.Visible := True;
    Image4.Visible := True;
    Timer1.Enabled := True;
    Timer2.Enabled := False;
    Label3.Caption := '0';
    Timer3.Enabled := True;
    lblAdeus.Visible := True;
    ImgNuvem.Visible := True;
end;
If (Source as Timage).Tag = 2 Then Begin
  if Label3.Caption <> '0' Then Begin
    Image1.Visible := True;
    Image2.Visible := True;
    Image3.Visible := True;
    Image4.Visible := True;
    Timer1.Enabled := True;
    Label3.Caption := '0';
    Timer2.Enabled := True;
    Timer1.Enabled := False;
    Timer4.Enabled := True;
    ImgChuva.Visible := True;
    lblChove.Visible := True;
  End
   Else
   ShowMessage('Escolha os produtos primeiro');
end;

end;
procedure TForm1.Timer1Timer(Sender: TObject);
begin
    Label1.Caption := 'Venda Cancelada';
    Label1.Visible := Not Label1.Visible;
    Label1.Font.Color := clRed;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
Label1.Caption := 'Venda Realizada, Dinheiro em Caixa';
Label1.Visible := Not Label1.Visible;
Label1.Font.Color := clBlue;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
if ImgNuvem.Top > 0 Then Begin
  ImgNuvem.Top := ImgNuvem.Top  - 2;
  ImgNuvem.Left := ImgNuvem.Left - 1;
  lblAdeus.Top := lblAdeus.Top  - 2;
  lblAdeus.Left := lblAdeus.Left - 1;
end
else begin
  Timer3.Enabled := False;
  ImgNuvem.Visible := false;
  lblAdeus.Visible := false;
end;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
if ImgChuva.Top < 350 Then Begin
  ImgChuva.Top := ImgChuva.Top  + 1;
  lblChove.Top := lblChove.Top  + 1;
end
else begin
  Timer4.Enabled := False;
  ImgChuva.Visible := false;
  lblChove.Visible := false;
end;
end;

end.
