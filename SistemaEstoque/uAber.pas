unit uAber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, jpeg;

type
  TfrmAbertura = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Panel2: TPanel;
    Image1: TImage;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbertura: TfrmAbertura;

implementation

uses UCliente, UProdutos, UFornecedor, UFunc, UEntraProd, UPedidos;

{$R *.DFM}

procedure TfrmAbertura.FormCreate(Sender: TObject);
begin
label3.caption := datetostr(date)
end;

procedure TfrmAbertura.BitBtn7Click(Sender: TObject);
begin
application.Terminate 
end;

procedure TfrmAbertura.SpeedButton1Click(Sender: TObject);
begin
if not assigned(fmclientes) then
 fmclientes := tfmclientes.create(application);
 fmclientes.showmodal;
end;

procedure TfrmAbertura.SpeedButton7Click(Sender: TObject);
begin
application.Terminate 
end;

procedure TfrmAbertura.SpeedButton2Click(Sender: TObject);
begin
if not assigned(fmprodutos) then
 fmprodutos := tfmprodutos.create(application);
 fmprodutos.showmodal;
end;

procedure TfrmAbertura.SpeedButton4Click(Sender: TObject);
begin
if not assigned(fmfornecedor) then
 fmfornecedor := tfmfornecedor.create(application);
 fmfornecedor.showmodal;
end;

procedure TfrmAbertura.SpeedButton3Click(Sender: TObject);
begin
if not assigned(fmfunc) then
 fmfunc := tfmfunc.create(application);
 fmfunc.showmodal;
end;

procedure TfrmAbertura.SpeedButton5Click(Sender: TObject);
begin
if not assigned(fmentraprod) then
 fmentraprod := tfmentraprod.create(application);
 fmentraprod.showmodal;
end;

procedure TfrmAbertura.SpeedButton6Click(Sender: TObject);
begin
if not assigned(fmpedidos) then
 fmpedidos := tfmpedidos.create(application);
 fmpedidos.showmodal;
end;

end.
