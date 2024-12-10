unit uRelPro;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables, Mask, DBCtrls;

type
  Trelpro = class(TForm)
    QuickRep1 : TQuickRep;
    PageFooterBand1 : TQRBand;
    QRSysData1 : TQRSysData;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    TitleBand1: TQRBand;
    QRLabel5: TQRLabel;
    Query1: TQuery;
    Query1CodPro: TFloatField;
    Query1Descrio: TStringField;
    Query1QuantEst: TFloatField;
    Query1ValorUnit: TCurrencyField;
    Query1EstMinimo: TFloatField;
    Query1Forma: TStringField;
    Query1CodFor: TFloatField;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
  private
  end;

var
  relpro: Trelpro;

implementation

{$R *.DFM}

end.
