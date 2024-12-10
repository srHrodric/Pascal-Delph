unit URelFunc;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TfmRelFunc = class(TForm)
    QuickRep1 : TQuickRep;
    PageFooterBand1 : TQRBand;
    QRSysData1 : TQRSysData;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    QRLabel1 : TQRLabel;
    QRExpr1 : TQRExpr;
    QRLabel2 : TQRLabel;
    QRExpr2 : TQRExpr;
    QRLabel3 : TQRLabel;
    QRExpr3 : TQRExpr;
    QRLabel4 : TQRLabel;
    QRExpr4 : TQRExpr;
    QRLabel5 : TQRLabel;
    QRExpr5 : TQRExpr;
    Table1 : TTable;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
  end;

var
  fmRelFunc: TfmRelFunc;

implementation
Const Org: Boolean = True;

{$R *.DFM}

procedure TfmRelFunc.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  If Org Then Begin
    DetailBand1.Color := clWhite;
    Org := False;
  End Else Begin
    DetailBand1.Color := $00CDCDCF;
    Org := True;
  End;
end;

end.
