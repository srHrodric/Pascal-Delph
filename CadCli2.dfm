object Form1: TForm1
  Left = 192
  Top = 107
  Width = 432
  Height = 366
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
  object Label1: TLabel
    Left = 75
    Top = 52
    Width = 33
    Height = 13
    Caption = 'Codigo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 80
    Top = 83
    Width = 28
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 63
    Top = 113
    Width = 46
    Height = 13
    Caption = 'Endereco'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 72
    Top = 146
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 72
    Top = 174
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 80
    Top = 208
    Width = 24
    Height = 13
    Caption = 'Fone'
    FocusControl = DBEdit6
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 48
    Width = 134
    Height = 21
    DataField = 'Codigo'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 80
    Width = 198
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 110
    Width = 297
    Height = 21
    DataField = 'Endereco'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 112
    Top = 142
    Width = 249
    Height = 21
    DataField = 'Cidade'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 112
    Top = 172
    Width = 30
    Height = 21
    DataField = 'Estado'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 112
    Top = 203
    Width = 195
    Height = 21
    DataField = 'Fone'
    DataSource = DataSource1
    MaxLength = 13
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 88
    Top = 240
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
    TabOrder = 6
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 296
    Width = 75
    Height = 25
    TabOrder = 7
    Kind = bkClose
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
