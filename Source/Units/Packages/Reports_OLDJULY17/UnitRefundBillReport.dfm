object FormRefundBillReport: TFormRefundBillReport
  Left = 428
  Top = 250
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Refund & Cancel Bill Report'
  ClientHeight = 186
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 31
    Width = 363
    Height = 136
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 47
      Top = 84
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'From Date:'
    end
    object Label2: TLabel
      Left = 207
      Top = 84
      Width = 16
      Height = 13
      Caption = 'To:'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 0
      Width = 372
      Height = 22
    end
    object BtnFrom: TSpeedButton
      Left = 178
      Top = 79
      Width = 23
      Height = 21
      Caption = 'BS'
      OnClick = BtnFromClick
    end
    object BtnTo: TSpeedButton
      Left = 299
      Top = 79
      Width = 23
      Height = 24
      Caption = 'BS'
      OnClick = BtnToClick
    end
    object DateEditX_FromDate: TDateEditX
      Left = 106
      Top = 80
      Width = 71
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C656674026A03546F700250057769
        64746802470B4461746541442E5965617203D6070C4461746541442E4D6F6E74
        6802010A4461746541442E44617902180B4461746556532E59656172030E080C
        4461746556532E4D6F6E7468020A0A4461746556532E446179020B0000}
    end
    object DateEditX_ToDate: TDateEditX
      Left = 226
      Top = 80
      Width = 72
      Height = 21
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C65667403E20003546F7002500577
        6964746802480B4461746541442E5965617203D6070C4461746541442E4D6F6E
        746802010A4461746541442E44617902180B4461746556532E59656172030E08
        0C4461746556532E4D6F6E7468020A0A4461746556532E446179020B0000}
    end
    object RadioButton_OPCollection: TRadioButton
      Left = 106
      Top = 33
      Width = 111
      Height = 17
      Caption = '&OP Collection (F3)'
      Checked = True
      TabOrder = 2
      TabStop = True
      Visible = False
      OnClick = RadioButton_OPCollectionClick
    end
    object RadioButton_IPCollection: TRadioButton
      Left = 104
      Top = 56
      Width = 106
      Height = 17
      Caption = '&IP Collection (F4)'
      TabOrder = 3
      Visible = False
      OnClick = RadioButton_IPCollectionClick
    end
    object GroupBox1: TGroupBox
      Left = 219
      Top = 39
      Width = 134
      Height = 34
      TabOrder = 4
      Visible = False
      object RB_RefundDetail: TRadioButton
        Left = 3
        Top = 14
        Width = 113
        Height = 17
        Caption = 'Refund Detail (F5)'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RB_IPTestCancel: TRadioButton
        Left = 11
        Top = 39
        Width = 139
        Height = 17
        Caption = 'IP Test Cancel Report'
        TabOrder = 1
      end
      object RB_IPTestCancelTestWise: TRadioButton
        Left = 11
        Top = 64
        Width = 156
        Height = 17
        Caption = 'IP Test Cancel Test Wise'
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 31
    Align = alTop
    TabOrder = 0
    object BitBtnPreview: TBitBtn
      Left = 2
      Top = 2
      Width = 115
      Height = 28
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
    object BitBtn2: TBitBtn
      Left = 255
      Top = 2
      Width = 115
      Height = 28
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
      OnClick = BitBtn2Click
    end
    object BitBtnExcel: TBitBtn
      Left = 117
      Top = 2
      Width = 138
      Height = 28
      Caption = 'Send  To &Excel (F2)'
      DoubleBuffered = True
      Glyph.Data = {
        F6010000424DF60100000000000076000000280000001F000000180000000100
        04000000000080010000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFF44444444
        44440000FFFFFFFFFFF0FFFF4000000000006666FFFFFFFFFFF0FFFF40888888
        8806EEF0FFFFFFFFFFF0FFFF440E6666606EEF04FFFFFFFFFFF0FFFF4440E666
        06EEF060FFFFFFFFFFF0FFFF44440E606EEF0000FFFFFFFFFFF0FFFF44444006
        EEF04444FFFFFFFFFFF0FFFF4444406EEF004444FFFFFFFFFFF0FFFF444406EE
        F0680444FFFFFFFFFFF0FFFF44406EEF0E668044FFFFFFFFFFF0FFFF4406EEF0
        40E66804FFFFFFFFFFF0FFFF40FFFF04440EEEE0FFFFFFFFFFF0FFFF40000044
        44400000FFFFFFFFFFF0FFFF4444444444444444FFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnExcelClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 167
    Width = 363
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object SelectFile: TSaveDialog
    Top = 56
  end
  object Query1: TOraQuery
    Left = 336
    Top = 63
  end
end
