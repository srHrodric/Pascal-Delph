unit Ent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
//verifica se o enter foi pressinado
  if (key = #13)  and not (ActiveControl is TMemo) then begin
    //desabilita a tecla
    key := #0;
    //Troca a tecla pelo ENTER pelo TAB
  Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
