object FormUserWiseCollection: TFormUserWiseCollection
  Left = 0
  Top = 0
  Caption = 'User Wise Collection Summary'
  ClientHeight = 246
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 224
    Width = 317
    Height = 22
    Panels = <>
    ExplicitTop = 182
    ExplicitWidth = 309
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 37
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 309
    object Btn_Preview: TButton
      Left = 215
      Top = 2
      Width = 89
      Height = 32
      Caption = '&Preview'
      TabOrder = 0
      OnClick = Btn_PreviewClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 317
    Height = 187
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 310
    ExplicitHeight = 148
    object Label3: TLabel
      Left = 48
      Top = 17
      Width = 52
      Height = 13
      Caption = 'User Name'
    end
    object DBLCB_UserName: TDBLookupComboBox
      Left = 116
      Top = 13
      Width = 145
      Height = 21
      KeyField = 'userid'
      ListField = 'username'
      ListSource = Ds_Username
      TabOrder = 0
      OnKeyDown = DBLCB_UserNameKeyDown
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 40
      Width = 300
      Height = 137
      TabOrder = 1
      object label2: TLabel
        Left = 141
        Top = 27
        Width = 23
        Height = 13
        Caption = 'To :-'
      end
      object Label1: TLabel
        Left = 8
        Top = 27
        Width = 35
        Height = 13
        Caption = 'From :-'
      end
      object BtnTo: TSpeedButton
        Left = 234
        Top = 23
        Width = 23
        Height = 24
        Caption = 'AD'
        OnClick = BtnToClick
      end
      object BtnFrom: TSpeedButton
        Left = 112
        Top = 25
        Width = 23
        Height = 21
        Caption = 'AD'
        OnClick = BtnfromClick
      end
      object DateEditXTo: TDateEditX
        Left = 170
        Top = 24
        Width = 62
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C65667403AA0003546F7002180577
          69647468023E0B4461746541442E5965617203DB070C4461746541442E4D6F6E
          7468020C0A4461746541442E44617902060B4461746556532E59656172031408
          0C4461746556532E4D6F6E746802080A4461746556532E44617902140000}
      end
      object Chk_Detail: TCheckBox
        Left = 66
        Top = 60
        Width = 153
        Height = 17
        Caption = 'User Wise Collection Detail'
        TabOrder = 1
        OnClick = Chk_DetailClick
      end
      object DateEditxFrom: TDateEditX
        Left = 45
        Top = 25
        Width = 65
        Height = 21
        TabOrder = 2
        ControlData = {
          545046300A5444617465456469745200044C656674022D03546F7002190B4461
          746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A44617465
          41442E44617902070B4461746556532E596561720314080C4461746556532E4D
          6F6E746802080A4461746556532E44617902150000}
      end
      object Rb_BillWise: TRadioButton
        Left = 45
        Top = 96
        Width = 65
        Height = 17
        Caption = 'Bill Wise'
        Checked = True
        TabOrder = 3
        TabStop = True
        Visible = False
      end
      object Rb_TestWise: TRadioButton
        Left = 144
        Top = 96
        Width = 75
        Height = 17
        Caption = 'Test Wise'
        TabOrder = 4
        Visible = False
      end
    end
  end
  object QueryUserName: TOraQuery
    SQL.Strings = (
      'select * from usermain'
      'order by username')
    Left = 56
    Top = 8
  end
  object Ds_Username: TDataSource
    DataSet = QueryUserName
    Left = 96
    Top = 8
  end
end
