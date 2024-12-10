unit agrupa;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Image4: TImage;
    ListBox1: TListBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Image5: TImage;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.xfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked = true then begin
  image1.visible := true;
  end
  else
  image1.visible := false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked = true then begin
  image2.visible := true;
  end
  else
  image2.visible := false;
end;


procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked = true then begin
  image3.visible := true;
end
  else
  image3.visible := false;
end;


procedure TForm1.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked = true then begin
  image4.Picture.LoadFromFile('/figuras/sun.ico')
end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked = true then begin
  image4.Picture.LoadFromFile('/figuras/rain.ico')
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
listbox1.Items.Add('Convênio');
listbox1.Items.Add('Desconto Especial');
listbox1.Items.Add('Promoção Amigo Cliente');

ComboBox1.Items.Add('Relógio');
ComboBox1.Items.Add('Vaso Sanitário');
ComboBox1.Items.Add('Alvo');

end;

procedure TForm1.ListBox1Click(Sender: TObject);
begin
case listbox1.ItemIndex of
0:Label1.caption := '10% Desconto no Valor A vista';
1:Label1.caption := '5% Para Clientes Novos';
2:Label1.caption := '20% Promoção Cinema';
end;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
case ComboBox1.ItemIndex of
0:image5.Picture.LoadFromFile('c:\figuras\clock04.ico');
1:image5.Picture.LoadFromFile('c:\figuras\trash03.ico');
2:image5.Picture.LoadFromFile('c:\figuras\misc01.ico');
end;
end;

end.
