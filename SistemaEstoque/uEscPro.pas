unit uEscPro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TfmEscPro = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEscPro: TfmEscPro;

implementation

uses uRelPro;

{$R *.DFM}

procedure TfmEscPro.BitBtn1Click(Sender: TObject);
begin
if not assigned(relpro) then
 begin
  relpro := trelpro.create(application);
 end;
if fmescpro.BitBtn1.Caption = 'Visualizar' then
  begin
      if fmescpro.RadioButton1.Checked = true then
      begin
       relpro.Query1.close;
       relpro.Query1.sql.Clear;
       relpro.Query1.sql.Add('select * from dbprodutos.db');
       relpro.Query1.open;
       relpro.QuickRep1.Preview;
      end
   else
    begin
    relpro.Query1.close;
    relpro.Query1.sql.Add('Where estminimo > quantest');
    relpro.Query1.open;
    relpro.QuickRep1.Preview;
end;
end;
if fmescpro.BitBtn1.Caption = 'Imprimir' then
  begin
      if fmescpro.RadioButton1.Checked = true then
      begin
       relpro.Query1.close;
       relpro.Query1.sql.Clear;
       relpro.Query1.sql.Add('select * from dbprodutos.db');
       relpro.Query1.open;
       relpro.QuickRep1.print;
      end
   else
    begin
    relpro.Query1.close;
    relpro.Query1.sql.Add('Where estminimo > quantest');
    relpro.Query1.open;
    relpro.QuickRep1.print;
end;
end;

end;

end.
