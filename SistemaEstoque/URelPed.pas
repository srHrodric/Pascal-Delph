unit URelPed;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TfmRelPed = class(TForm)
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
    Query1: TQuery;
    Query1CodPed: TIntegerField;
    Query1CodCli: TFloatField;
    Query1Nome: TStringField;
    Query1CodFun: TFloatField;
    Query1Nome_1: TStringField;
    Query1DataPed: TDateField;
    Query1DataEnt: TDateField;
    Query1FormaDePagamento: TStringField;
    Query1TotalGeral: TCurrencyField;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel6: TQRLabel;
  private
  end;

var
  fmRelPed: TfmRelPed;

implementation

{$R *.DFM}

end.
