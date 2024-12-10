unit UEntraProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Enter, Buttons;

type
  TfmEntraProd = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    MREnter1: TMREnter;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    salvar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBText1: TDBText;
    Label4: TLabel;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure salvarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmEntraProd: TfmEntraProd;

implementation

uses dataEstoque, uRelEntraProd;

{$R *.DFM}

procedure TfmEntraProd.SpeedButton7Click(Sender: TObject);
begin
modestoque.tbentraprod.cancel;
salvar.Enabled := false;
fmentraprod.close
end;

procedure TfmEntraProd.SpeedButton1Click(Sender: TObject);
begin
modestoque.tbEntraProd.Append ;
salvar.Enabled := true;
dbedit1.SetFocus ;
end;

procedure TfmEntraProd.SpeedButton2Click(Sender: TObject);
begin
modestoque.tbentraprod.delete
end;

procedure TfmEntraProd.SpeedButton4Click(Sender: TObject);
begin
modestoque.tbentraprod.edit;
salvar.Enabled := true;
end;

procedure TfmEntraProd.salvarClick(Sender: TObject);
begin
salvar.Enabled := false;
if messagedlg('Deseja adicionar valores ao estoque',mtinformation,[mbyes,mbno],0)=
mryes then
   begin
     if not modestoque.tbProduto.Locate('codpro',dbedit1.text,[]) then
       begin
         modestoque.tbEntraProd.cancel;
         showmessage('Produto não encontrado necessário cadastrar');
       end
      else
      begin
       modestoque.tbProduto.edit;
       modestoque.tbProdutoquantest.Value := modestoque.tbProdutoquantest.Value +
       strtofloat(dbedit2.text);
       modestoque.tbProduto.Post;
       modestoque.tbentraprod.Post;
       end;
       end;
    end;

procedure TfmEntraProd.SpeedButton3Click(Sender: TObject);
var
dia: string;
begin

if not assigned(fmrelEntraProd) then
 fmrelEntraProd := tfmrelEntraProd.create(application);
 dia := inputbox('Digite a data para filtrar','Digite a data no formato dd/mm/aaaa','');
 fmrelentraprod.Query1.close;
 fmrelentraprod.Query1.ParamByName('endata').asdate := strtodate(dia);
  fmrelentraprod.Query1.open;
 fmrelEntraProd.QuickRep1.Preview
end;

procedure TfmEntraProd.SpeedButton6Click(Sender: TObject);
var
dia: string;
begin

if not assigned(fmrelEntraProd) then
 fmrelEntraProd := tfmrelEntraProd.create(application);
 dia := inputbox('Digite a data para filtrar','Digite a data no formato dd/mm/aaaa','');
 fmrelentraprod.Query1.close;
 fmrelentraprod.Query1.ParamByName('endata').asdate := strtodate(dia);
  fmrelentraprod.Query1.open;
 fmrelEntraProd.QuickRep1.print;
end;

procedure TfmEntraProd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
modestoque.tbProduto.MasterSource := nil;
modestoque.tbProduto.MasterFields := '';
end;

procedure TfmEntraProd.FormActivate(Sender: TObject);
begin
modestoque.tbProduto.MasterSource := modestoque.datEntraProd ;
modestoque.tbProduto.MasterFields := 'CodPro';

end;

end.
