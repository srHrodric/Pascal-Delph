unit URelDetalhe;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, Db, DBTables;

type
  TfmRelDetalhe = class(TForm)
    QuickRep1 : TQuickRep;
    PageFooterBand1 : TQRBand;
    QRSysData1 : TQRSysData;
    ColumnHeaderBand1 : TQRBand;
    DetailBand1 : TQRBand;
    PageHeaderBand1: TQRBand;
    Query1: TQuery;
    Query1CodPed: TIntegerField;
    Query1CodCli: TFloatField;
    Query1CodFun: TFloatField;
    Query1DataPed: TDateField;
    Query1DataEnt: TDateField;
    Query1FormaDePagamento: TStringField;
    Query1TotalGeral: TCurrencyField;
    Query1Nome: TStringField;
    Query1Endereo: TStringField;
    Query1Cidade: TStringField;
    Query1Estado: TStringField;
    Query1Cep: TStringField;
    Query1Telefone: TStringField;
    Query1Nome_1: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
  private
  end;

var
  fmRelDetalhe: TfmRelDetalhe;

implementation

uses dataEstoque;

{$R *.DFM}

end.
