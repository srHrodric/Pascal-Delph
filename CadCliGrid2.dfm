object Form1: TForm1
  Left = 135
  Top = 91
  Width = 597
  Height = 412
  Caption = 'Cadastro de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 176
    Top = 304
    Width = 240
    Height = 25
    DataSource = DataSource1
    Flat = True
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Pr'#243'ximo Registro'
      #218'ltimo Registro'
      'Novo Registro'
      'Apagar Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar Registro'
      'Atualizar Registro')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 264
    Top = 336
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkClose
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 553
    Height = 241
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fone'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 48
    Top = 16
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterPost = ClientDataSet1AfterPost
    Left = 88
    Top = 16
    Data = {
      D90000009619E0BD010000001800000006000000000003000000D90006436F64
      69676F040001000200010007535542545950450200490008004175746F696E63
      00044E6F6D65010049000000010005574944544802000200320008456E646572
      65636F0100490000000100055749445448020002005000064369646164650100
      4900000001000557494454480200020028000645737461646F01004900000001
      0005574944544802000200020004466F6E650100490000000100055749445448
      020002000F0001000C4155544F494E4356414C55450400010001000000}
    object ClientDataSet1Codigo: TAutoIncField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Nome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object ClientDataSet1Endereco: TStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object ClientDataSet1Cidade: TStringField
      FieldName = 'Cidade'
      Size = 40
    end
    object ClientDataSet1Estado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object ClientDataSet1Fone: TStringField
      FieldName = 'Fone'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 15
    end
  end
end
