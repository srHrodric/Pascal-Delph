unit AlteraList;

interface

uses
  SysUtils, Types, Classes, Variants, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
begin
if Edit1.Text = ''  then begin
  ShowMessage('Digite Um valor Na Caixa');
  Edit1.Setfocus;
  end
else begin
  ListBox1.Items.Add(Edit1.Text);
  Edit1.Clear;
  Edit1.SetFocus;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
ListBox1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
if Edit1.Text = ''  then begin
  ShowMessage('Digite Um valor Na Caixa');
  Edit1.Setfocus;
  end
else begin
  ListBox1.Items.Add(Edit1.Text);
  Edit1.Clear;
  Edit1.SetFocus;
  end;

end;

end.
