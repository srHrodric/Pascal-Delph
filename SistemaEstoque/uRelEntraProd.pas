unit uRelEntraProd;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TfmRelEntraProd = class(TForm)
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
    Query1: TQuery;
    Query1CodEn: TIntegerField;
    Query1CodPro: TFloatField;
    Query1Quantidade: TFloatField;
    Query1DataEntrada: TDateField;
    QRLabel4: TQRLabel;
    QRExpr4: TQRExpr;
    Query1Descrio: TStringField;
    QRShape1: TQRShape;
    TitleBand1: TQRBand;
    QRExpr5: TQRExpr;
  private
  end;

var
  fmRelEntraProd: TfmRelEntraProd;

implementation

{$R *.DFM}

end.
