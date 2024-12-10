unit URelForn;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TfmrelForn = class(TForm)
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
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel8: TQRLabel;
  private
  end;

var
  fmrelForn: TfmrelForn;

implementation

{$R *.DFM}

end.
