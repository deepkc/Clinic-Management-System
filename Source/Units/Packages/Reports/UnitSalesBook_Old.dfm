object Form_SalesBook: TForm_SalesBook
  Left = 0
  Top = 0
  Caption = 'Sales Book'
  ClientHeight = 312
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 445
    Height = 36
    Align = alTop
    TabOrder = 0
    object BitBtnPreview: TBitBtn
      Left = 214
      Top = 1
      Width = 115
      Height = 34
      Align = alRight
      Caption = '&Preview (F1)'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtnPreviewClick
    end
    object BitBtnCancel: TBitBtn
      Left = 329
      Top = 1
      Width = 115
      Height = 34
      Align = alRight
      Caption = '&Cancel (Esc)'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtnCancelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 36
    Width = 445
    Height = 257
    Align = alClient
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 442
      Height = 20
    end
    object Label1: TLabel
      Left = 35
      Top = 98
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'From Date:'
    end
    object Label2: TLabel
      Left = 215
      Top = 98
      Width = 16
      Height = 13
      Caption = 'To:'
    end
    object DateEditX_FromDate: TDateEditX
      Left = 96
      Top = 94
      Width = 93
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C656674026003546F70025E057769
        647468025D0B4461746541442E5965617203D6070C4461746541442E4D6F6E74
        6802010A4461746541442E44617902180B4461746556532E59656172030E080C
        4461746556532E4D6F6E7468020A0A4461746556532E446179020B0000}
    end
    object DateEditX_ToDate: TDateEditX
      Left = 234
      Top = 94
      Width = 93
      Height = 21
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C65667403EA0003546F70025E0577
        69647468025D0B4461746541442E5965617203D6070C4461746541442E4D6F6E
        746802010A4461746541442E44617902180B4461746556532E59656172030E08
        0C4461746556532E4D6F6E7468020A0A4461746556532E446179020B0000}
    end
    object BitBtn_FromDate: TBitBtn
      Left = 165
      Top = 96
      Width = 24
      Height = 18
      Caption = 'BS'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn_FromDateClick
    end
    object BitBtn_ToDate: TBitBtn
      Left = 301
      Top = 96
      Width = 24
      Height = 18
      Caption = 'BS'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn_ToDateClick
    end
    object CBTaxOffice: TCheckBox
      Left = 96
      Top = 37
      Width = 153
      Height = 17
      Caption = 'Sales Book For Tax Office'
      TabOrder = 4
      OnClick = CBTaxOfficeClick
    end
    object GroupBox_SalesBook: TGroupBox
      Left = 97
      Top = 55
      Width = 233
      Height = 31
      TabOrder = 5
      Visible = False
      object RB_Detail: TRadioButton
        Left = 29
        Top = 8
        Width = 51
        Height = 17
        Caption = '&Detail '
        TabOrder = 0
      end
      object RB_Summary: TRadioButton
        Left = 143
        Top = 8
        Width = 67
        Height = 17
        Caption = '&Summary  '
        TabOrder = 1
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 293
    Width = 445
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Query_RefundSummary: TOraQuery
    SQL.Strings = (
      'select * from vw_salesbookrefundsummary'
      'where 39=39'
      'and 39=39')
    Left = 78
    Top = 176
  end
  object Query_SummaryCash: TOraQuery
    SQL.Strings = (
      'select * from vw_salesbookcashsummary'
      'where 39=39'
      'and 39=39')
    Left = 360
    Top = 96
  end
  object Table_TaxSummaryReport: TTable
    Left = 224
    Top = 192
  end
end
