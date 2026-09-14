object Form_TestNameList: TForm_TestNameList
  Left = 424
  Top = 203
  Width = 379
  Height = 266
  Caption = 'Test Name List'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 371
    Height = 30
    Align = alTop
    TabOrder = 0
    object BitBtnPreview: TBitBtn
      Left = 2
      Top = 2
      Width = 115
      Height = 25
      Caption = '&Preview (F1)'
      TabOrder = 0
      OnClick = BitBtnPreviewClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtnExcel: TBitBtn
      Left = 117
      Top = 2
      Width = 138
      Height = 25
      Caption = 'Send To Excel (F2)'
      TabOrder = 1
      OnClick = BitBtnExcelClick
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000016000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF4000000000006666FF00FFFF
        408888888806EEF0FF00FFFF440E6666606EEF04FF00FFFF4440E66606EEF060
        FF00FFFF44440E606EEF0000FF00FFFF44444006EEF04444FF00FFFF4444406E
        EF004444FF00FFFF444406EEF0680444FF00FFFF44406EEF0E668044FF00FFFF
        4406EEF040E66804FF00FFFF40FFFF04440EEEE0FF00FFFF4000004444400000
        FF00FFFF4044444444444444FF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00}
    end
    object BitBtnCancel: TBitBtn
      Left = 255
      Top = 2
      Width = 115
      Height = 25
      Caption = '&Cancel (Esc)'
      TabOrder = 2
      OnClick = BitBtnCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 371
    Height = 183
    Align = alClient
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 372
      Height = 20
    end
    object Label1: TLabel
      Left = 49
      Top = 116
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'Department'
    end
    object DBLookupComboBox_DepTestName: TDBLookupComboBox
      Left = 112
      Top = 112
      Width = 249
      Height = 21
      ListSource = DataSource_GetData
      TabOrder = 0
      OnKeyDown = DBLookupComboBox_DepTestNameKeyDown
    end
    object RadioButton_Department: TRadioButton
      Left = 112
      Top = 40
      Width = 137
      Height = 17
      Caption = 'Department Wise  (F3)'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton_DepartmentClick
    end
    object RadioButton_TestCategory: TRadioButton
      Left = 112
      Top = 64
      Width = 168
      Height = 17
      Caption = 'Test Name Category Wise (F4)'
      TabOrder = 2
      OnClick = RadioButton_TestCategoryClick
    end
    object CheckBox1: TCheckBox
      Left = 285
      Top = 167
      Width = 50
      Height = 17
      Caption = 'Temp'
      TabOrder = 3
      Visible = False
    end
    object CB_Tax: TCheckBox
      Left = 114
      Top = 88
      Width = 90
      Height = 17
      Caption = 'Including Tax'
      TabOrder = 4
      Visible = False
    end
    object CB_UndefineRateList: TCheckBox
      Left = 222
      Top = 88
      Width = 132
      Height = 17
      Caption = 'Undefine Rate List (0)'
      TabOrder = 5
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 213
    Width = 371
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Query_GetData: TQuery
    DatabaseName = 'Hospital'
    Top = 46
  end
  object DataSource_GetData: TDataSource
    DataSet = Query_GetData
    Left = 8
    Top = 54
  end
end
