object Form_ReffWiseRevenue: TForm_ReffWiseRevenue
  Left = 0
  Top = 0
  Caption = 'Reff. Wise Revenue Collection'
  ClientHeight = 232
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 37
    Align = alTop
    TabOrder = 0
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
    Width = 310
    Height = 167
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 17
      Width = 42
      Height = 13
      Caption = 'Ref. Doc'
    end
    object DBLCB_DocCode: TDBLookupComboBox
      Left = 60
      Top = 13
      Width = 240
      Height = 21
      DropDownRows = 30
      KeyField = 'DocCode'
      ListField = 'DocName'
      ListSource = Ds_Doccode
      TabOrder = 0
      OnKeyDown = DBLCB_DocCodeKeyDown
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 40
      Width = 296
      Height = 113
      TabOrder = 1
      object label2: TLabel
        Left = 141
        Top = 51
        Width = 23
        Height = 13
        Caption = 'To :-'
      end
      object Label1: TLabel
        Left = 8
        Top = 51
        Width = 35
        Height = 13
        Caption = 'From :-'
      end
      object BtnTo: TSpeedButton
        Left = 234
        Top = 47
        Width = 23
        Height = 24
        Caption = 'AD'
      end
      object BtnFrom: TSpeedButton
        Left = 112
        Top = 49
        Width = 23
        Height = 21
        Caption = 'AD'
      end
      object DateEditXTo: TDateEditX
        Left = 170
        Top = 48
        Width = 62
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C65667403AA0003546F7002300577
          69647468023E0B4461746541442E5965617203DB070C4461746541442E4D6F6E
          7468020C0A4461746541442E44617902060B4461746556532E59656172031408
          0C4461746556532E4D6F6E746802080A4461746556532E44617902140000}
      end
      object DateEditxFrom: TDateEditX
        Left = 45
        Top = 49
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C656674022D03546F7002310B4461
          746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A44617465
          41442E44617902070B4461746556532E596561720314080C4461746556532E4D
          6F6E746802080A4461746556532E44617902150000}
      end
      object Rb_Summary: TRadioButton
        Left = 59
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Summary'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = Rb_SummaryClick
      end
      object Rb_Detail: TRadioButton
        Left = 138
        Top = 16
        Width = 65
        Height = 17
        Caption = 'Detail'
        TabOrder = 3
        OnClick = Rb_DetailClick
      end
      object Panel_Detail: TPanel
        Left = 45
        Top = 75
        Width = 187
        Height = 33
        TabOrder = 4
        Visible = False
        object Rb_BillWise: TRadioButton
          Left = 13
          Top = 8
          Width = 71
          Height = 17
          Caption = 'Bill Wise'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object Rb_TestWise: TRadioButton
          Left = 93
          Top = 8
          Width = 76
          Height = 17
          Caption = 'Test Wise'
          TabOrder = 1
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 210
    Width = 310
    Height = 22
    Panels = <>
  end
  object Query_DocCode: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'select * from Doctor'
      'order by DocName')
    Left = 24
  end
  object Ds_Doccode: TDataSource
    DataSet = Query_DocCode
    Left = 112
    Top = 8
  end
end
