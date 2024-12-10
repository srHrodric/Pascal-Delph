object Form1: TForm1
  Left = 240
  Top = 170
  Width = 508
  Height = 108
  Caption = 'Letreiro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 16
    Width = 150
    Height = 45
    Caption = 'DELPHI '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 200
    OnTimer = Timer1Timer
    Left = 408
    Top = 16
  end
end
