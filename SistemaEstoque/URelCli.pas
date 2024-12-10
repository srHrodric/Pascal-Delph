unit URelCli;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TRelCli = class(TForm)
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
    Table1 : TTable;
    TitleBand1: TQRBand;
    QRLabel5: TQRLabel;
  private
  end;

var
  RelCli: TRelCli;

implementation

{$R *.DFM}

end.
