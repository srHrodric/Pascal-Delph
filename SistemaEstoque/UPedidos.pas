unit UPedidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfmPedidos = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
 private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPedidos: TfmPedidos;

implementation

uses dataEstoque, URelPed, URelDetalhe;

{$R *.DFM}

procedure TfmPedidos.SpeedButton1Click(Sender: TObject);
begin
modestoque.tbdetped.First;
while not modestoque.tbdetped.Eof do
begin
modestoque.tbproduto.Locate('CodPro',modestoque.tbdetpedcodpro.Value , []);
if modestoque.tbdetpedbaixa.Value <> true then
   begin
    modestoque.tbproduto.Edit;
    modestoque.tbprodutoquantEst.value:= modestoque.tbprodutoquantEst.Value -
    modestoque.tbdetpedquantidade.Value;
    modestoque.tbproduto.Post;
    modestoque.tbdetped.Edit;
    modestoque.tbdetpedbaixa.Value := true;
    modestoque.tbdetped.Post;
  end;
modestoque.tbdetped.next;
end;
end;

procedure TfmPedidos.Button1Click(Sender: TObject);
var
total: double;
begin
modestoque.tbDetPed.First ;
while not modestoque.tbDetPed.Eof do
  begin
    total := total + modestoque.tbDetPedsubtotal.Value ;
    modestoque.tbDetPed.Next;
  end;
modestoque.tbPedidos.edit;
modestoque.tbPedidostotalgeral.Value := total;
modestoque.tbPedidos.Post ;
end;

procedure TfmPedidos.DBEdit5Exit(Sender: TObject);
begin
modestoque.tbPedidos.Post 
end;

procedure TfmPedidos.SpeedButton2Click(Sender: TObject);
begin
fmPedidos.Close
end;

procedure TfmPedidos.SpeedButton3Click(Sender: TObject);
var
diaini: string;
diafin: string;
begin
if not assigned(fmrelped) then
 fmrelped:= tfmrelped.create(application);
 diaini := inputbox('Digite a data Inicial dos Pedidos','Digite a data no formato dd/mm/aaaa','');
 diafin := inputbox('Digite a data Final dos Pedidos','Digite a data no formato dd/mm/aaaa','');
 fmrelped.Query1.close;
 fmrelped.Query1.ParamByName('dataini').asdate := strtodate(diaini);
 fmrelped.Query1.ParamByName('datfin').asdate := strtodate(diafin);
 fmrelped.Query1.open;
 fmrelped.QuickRep1.Preview
end;

procedure TfmPedidos.SpeedButton4Click(Sender: TObject);
var
diaini: string;
diafin: string;
begin
if not assigned(fmrelped) then
 fmrelped:= tfmrelped.create(application);
 diaini := inputbox('Digite a data Inicial dos Pedidos','Digite a data no formato dd/mm/aaaa','');
 diafin := inputbox('Digite a data Final dos Pedidos','Digite a data no formato dd/mm/aaaa','');
 fmrelped.Query1.close;
 fmrelped.Query1.ParamByName('dataini').asdate := strtodate(diaini);
 fmrelped.Query1.ParamByName('datfin').asdate := strtodate(diafin);
 fmrelped.Query1.open;
 fmrelped.QuickRep1.print
end;

procedure TfmPedidos.SpeedButton5Click(Sender: TObject);
begin
if not assigned(fmreldetalhe) then
 fmreldetalhe := tfmreldetalhe.create(application);
 fmreldetalhe.Query1.close;
 fmreldetalhe.Query1.ParamByName('pedido').asinteger := strtoint(dbtext1.Field.DisplayText);
 fmreldetalhe.Query1.open;
 fmreldetalhe.QuickRep1.preview
end;

end.
