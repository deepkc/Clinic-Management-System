object FormUserWiseCollection: TFormUserWiseCollection
  Left = 0
  Top = 0
  Caption = 'User Wise Collection Summary'
  ClientHeight = 204
  ClientWidth = 309
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 182
    Width = 309
    Height = 22
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 309
    Height = 37
    Align = alTop
    TabOrder = 1
    object Btn_Preview: TButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Preview'
      TabOrder = 0
      OnClick = Btn_PreviewClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 309
    Height = 144
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 48
      Top = 17
      Width = 52
      Height = 13
      Caption = 'User Name'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 119
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 48
      Top = 48
      Width = 217
      Height = 77
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 27
        Width = 35
        Height = 13
        Caption = 'From :-'
      end
      object label2: TLabel
        Left = 124
        Top = 27
        Width = 23
        Height = 13
        Caption = 'To :-'
      end
      object DateEditX1: TDateEditX
        Left = 52
        Top = 23
        Width = 65
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674023403546F7002170B4461
          746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A44617465
          41442E44617902060B4461746556532E596561720314080C4461746556532E4D
          6F6E746802080A4461746556532E44617902140000}
      end
      object DateEditX2: TDateEditX
        Left = 148
        Top = 22
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C65667403940003546F7002160B44
          61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
          6541442E44617902060B4461746556532E596561720314080C4461746556532E
          4D6F6E746802080A4461746556532E44617902140000}
      end
      object Chk_Detail: TCheckBox
        Left = 43
        Top = 50
        Width = 153
        Height = 17
        Caption = 'User Wise Collection Detail'
        TabOrder = 2
      end
    end
  end
  object QueryUserName: TQuery
    DatabaseName = 'orahospital'
    Left = 24
    Top = 64
  end
end
