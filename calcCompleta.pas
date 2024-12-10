unit calcCompleta;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button16: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  priValor,segValor: Double;
  Operador: String;
  Resu: Boolean;
implementation

{$R *.xfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '1';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '1';
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '2';
  Resu := False;
end
 else  begin
  Edit1.Text := Edit1.Text + '2';
 end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '3';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '3';
 end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '4';
  Resu := False;
end
 else  begin
  Edit1.Text := Edit1.Text + '4';
 end;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '5';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '5';
 end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '6';
  Resu := False;
end
 else  begin
  Edit1.Text := Edit1.Text + '6';
 end;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '7';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '7';
 end;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '8';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '8';
 end;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '9';
  Resu := False;
end
 else begin
  Edit1.Text := Edit1.Text + '9';
 end;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
if Resu = True Then  Begin
  Edit1.text := '0';
  Resu := False;
end
 else  begin
  Edit1.Text := Edit1.Text + '0';
 end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
PriValor := StrToFloat(Edit1.Text);
Edit1.Clear;
Operador := 'soma';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
PriValor := StrToFloat(Edit1.Text);
Edit1.Clear;
Operador := 'subtrai';
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
PriValor := StrToFloat(Edit1.Text);
Edit1.Clear;
Operador := 'multiplica';
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
PriValor := StrToFloat(Edit1.Text);
Edit1.Clear;
Operador := 'divide';
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
Resu := True;
SegValor := StrToFloat(Edit1.Text);
if Operador = 'soma'  Then
  Edit1.Text := FloatToStr(PriValor + SegValor);
if Operador = 'subtrai'  Then
  Edit1.Text := FloatToStr(PriValor - SegValor);
if Operador = 'multiplica'  Then
  Edit1.Text := FloatToStr(PriValor + SegValor);
if Operador = 'divide'  Then
  Edit1.Text := FloatToStr(PriValor + SegValor);
end;

end.
