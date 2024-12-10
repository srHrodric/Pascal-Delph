unit VariaveisAmbiente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
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
  Env : PChar;
  i : Integer;
  PosEq : Integer;
begin
  Env := GetEnvironmentStrings;
  With ListBox1 do begin
    While Env^ <> #0 do begin
      Items.Add(StrPas(Env));
      Inc(Env,StrLen(Env)+1);
    end;
          end;

end;

end.
