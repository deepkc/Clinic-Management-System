object Form_QRBill_NNH: TForm_QRBill_NNH
  Left = 0
  Top = 0
  Caption = 'Patient Bill'
  ClientHeight = 640
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QrBill: TQuickRep
    Left = 38
    Top = 16
    Width = 792
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = QrBillAfterPrint
    BeforePrint = QrBillBeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = Custom
    Page.Continuous = True
    Page.Values = (
      0.000000000000000000
      2100.580000000000000000
      50.800000000000000000
      2095.500000000000000000
      99.060000000000000000
      149.860000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Tax Invoice'
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object GroupFooterBand1: TQRBand
      Left = 37
      Top = 208
      Width = 698
      Height = 281
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        743.479166666666700000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      BandType = rbGroupFooter
      object QRLabel28: TQRLabel
        Left = 213
        Top = 99
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          563.562500000000000000
          261.937500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'In Words [NPR]'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 7
        Top = 127
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          336.020833333333300000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_GrossAmount: TQRLabel
        Left = 619
        Top = 5
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          13.229166666666670000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00000.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_user: TQRLabel
        Left = 79
        Top = 127
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          336.020833333333300000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 515
        Top = 5
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          13.229166666666670000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sub Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 507
        Top = 24
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1341.437500000000000000
          63.500000000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Discount'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Discount: TQRLabel
        Left = 619
        Top = 24
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          63.500000000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 515
        Top = 42
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          111.125000000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Taxable Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_TaxableAmount: TQRLabel
        Left = 619
        Top = 42
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          111.125000000000000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel_TaxSystemCap: TQRLabel
        Left = 515
        Top = 59
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          156.104166666666700000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5% HST'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Svrtax: TQRLabel
        Left = 619
        Top = 59
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          156.104166666666700000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 542
        Top = 98
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1434.041666666667000000
          259.291666666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Total: TQRLabel
        Left = 619
        Top = 98
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          259.291666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = lbl_TotalPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 607
        Top = 5
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          13.229166666666670000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 607
        Top = 24
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          63.500000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel44: TQRLabel
        Left = 607
        Top = 42
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          111.125000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 607
        Top = 59
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          156.104166666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 607
        Top = 98
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          259.291666666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 70
        Top = 127
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          336.020833333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 437
        Top = 118
        Width = 159
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          312.208333333333300000
          420.687500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DEPOSIT AMOUNT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 607
        Top = 118
        Width = 5
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          312.208333333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_depositamount: TQRLabel
        Left = 619
        Top = 118
        Width = 73
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          312.208333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 483
        Top = 137
        Width = 113
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          362.479166666666700000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'BALANCE AMOUNT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 607
        Top = 137
        Width = 5
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          362.479166666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_balanceamt: TQRLabel
        Left = 619
        Top = 137
        Width = 73
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          362.479166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = lbl_balanceamtPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 222
        Top = 1
        Width = 496
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          587.375000000000000000
          2.645833333333333000
          1312.333333333333000000)
        XLColumn = 0
        Pen.Color = -1
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 7
        Top = 146
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          386.291666666666700000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Printed Date/Time :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Date: TQRLabel
        Left = 7
        Top = 163
        Width = 262
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          431.270833333333300000
          693.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Printed Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_refundedtest: TQRLabel
        Left = 366
        Top = 139
        Width = 79
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          968.375000000000000000
          367.770833333333300000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '* Refunded Test'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_DepositFooter: TQRLabel
        Left = 157
        Top = 147
        Width = 384
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          415.395833333333300000
          388.937500000000000000
          1016.000000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = 's[kof l/kf]{6 lng cfpFbf of] ljn clgjfo{ ?kdf lnP/ cfpg'#39#39'xf]nf .'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Preeti'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 7
        Top = 194
        Width = 128
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          513.291666666666700000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User Name : (Your Name) '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 7
        Top = 208
        Width = 147
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          18.520833333333330000
          550.333333333333300000
          388.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Password : (Your Mobile No.) '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 316
        Top = 265
        Width = 210
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          701.145833333333300000
          555.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'View Report at : www.grandehospital.com'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 207
        Top = 95
        Width = 496
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          547.687500000000000000
          251.354166666666700000
          1312.333333333333000000)
        XLColumn = 0
        Pen.Color = -1
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel51: TQRLabel
        Left = 483
        Top = 77
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1277.937500000000000000
          203.729166666666700000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Non-Taxable Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 607
        Top = 77
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1606.020833333333000000
          203.729166666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_NonTaxable: TQRLabel
        Left = 619
        Top = 77
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1637.770833333333000000
          203.729166666666700000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '00.00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel54: TQRLabel
        Left = 7
        Top = 179
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          473.604166666666700000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Re-print By'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel56: TQRLabel
        Left = 70
        Top = 208
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          550.333333333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_ReprintBy: TQRLabel
        Left = 79
        Top = 179
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          209.020833333333300000
          473.604166666666700000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 252
        Top = 164
        Width = 193
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          666.750000000000000000
          433.916666666666700000
          510.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = '** We wish you a good health **'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Inwords: TQRLabel
        Left = 290
        Top = 99
        Width = 212
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          767.291666666666700000
          261.937500000000000000
          560.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Fifteen Thousand twenty five only'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = lbl_InwordsPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 37
      Top = 19
      Width = 698
      Height = 138
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = PageHeaderBand1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        365.125000000000000000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object lbl_headName: TQRLabel
        Left = 308
        Top = 60
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          814.916666666666700000
          158.750000000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TAX INVOICE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 228
        Top = 117
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          603.250000000000000000
          309.562500000000000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'S. No.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 263
        Top = 117
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          695.854166666666700000
          309.562500000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Services'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 563
        Top = 117
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1489.604166666667000000
          309.562500000000000000
          60.854166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rate'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 593
        Top = 117
        Width = 18
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1568.979166666667000000
          309.562500000000000000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Qty'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 653
        Top = 117
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          309.562500000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Amount'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object Lbl_Refund: TQRLabel
        Left = 314
        Top = 76
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          830.791666666666700000
          201.083333333333300000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '[ REFUND ]'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 488
        Top = 117
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1291.166666666667000000
          309.562500000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Item Code'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 2
        Top = 1
        Width = 175
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          182.562500000000000000
          5.291666666666667000
          2.645833333333333000
          463.020833333333300000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765867C0000FFD8FFE000104A46494600010201006000
          600000FFE112104578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001B0000007201320002000000140000008D87
          69000400000001000000A4000000D00000006000000001000000600000000141
          646F62652050686F746F73686F702043532057696E646F777300323031373A30
          353A32352031363A32363A3433000000000003A00100030000000100010000A0
          020004000000010000010BA00300040000000100000078000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          000001000010DA0000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0001FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004800A003012200
          021101031101FFDD0004000AFFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F534924925
          2967F52EB785812C71F56FED4B20BBFB67E8D7FDA59FF59BA966635B5E363D9E
          932CACBDEF6E8FE76ED0FF00CC6FF5563F4EE919B9E7750CD941326F7CED3FD4
          FCEB9CAA66E6642671628994FBBA3CB7238CE319F3CC4711D877FEF4BFEE62DB
          1F59FA90C8F54B5869E3ECF1A47FC6FD3F53FE87FC1ADEE9DD670BA80DB5BB65
          D1EEA5FA3BFB3F9B67F61553F563A79C3F4048C88FE95F9DBB99D93B36FF0021
          73FD43A566F4F337B66B07DB915CEDF2D7E952F5199F3383D53FD640EB2FEAFD
          7F459BDBE479AF463FD4E48FA63D38FF00C1FD3FFD2AF7292C2FAB3D4B2F28DD
          464BFD51535AE6587E9438B86D7BBF3FE8ADD5731E41920271D8F77373E1961C
          92C72A263DB6D755249249EC4A4924925292492494A4924925292492494A4924
          9253FFD0F535CF752FACD751996518B5D765757B5CF7EED5E3E9EDDBF9ACFA2B
          43AEF51FB06113598C8BA594F913F4ACFF00ADB5731D1FA77DBF35941FE66BF7
          DE7F920FD0FF00AEBBFEFEAA7339A7C51C588D4E5BBA3C8F2D8CE39F319C5E38
          8F483E1F34BFEE62F418586DEAADA7A9F52A9BBF6C51489D9B09DECB2C63BE93
          DFFE66C45EAFD6E8E961B56C365EE6CB183DAD03E8B4B9FF002FA0C4DD7BAA9E
          9B88D1490322D315022400DFE72CDBFC86FB54BA761D96B6ACFEA4C6D99E5BED
          25A07A6D277B18D6FF00A4F77BDEA4EA71E33FACA06792BFE97F5D8A8111CF9A
          3FA8B94716112AFA47FD5FEFC9C9F5BEB416FED483B469F66DA7E873BBECDF4F
          6FF2F7FDA16A749EB78FD503A8730D77B5B2FACFB985BF45DB5DFDAFA0F5A8B3
          FA861BEB6DB9DD398D6678611BB6CEF6C87BAB737E8B9EEDBEC7A431CF1FA84C
          CE3FA7197A8CBFB9FBAA39B1661C12C51C72DB16487A230FEAE5FDE8FF005DAD
          9B8C3A3577750E9B4B65DB7D7A893B0306EFD254D6FD1DAE77BFF9081D33EB25
          D9398CC6CA6575B6DF6D6F64FD3FCD6BB71FCF56BA1754FDA788F6646D75F5E9
          68880E63BE83F67F2BE839737D4F01DD3F35F8E2433E9D0EEFB49F67F6AA77B1
          419724A0219711FD51F9A03F97E936B97C31C92CBCBF303FA4447A72124CB86B
          D3FE27FD07BA4950E8BD44750C26DAEFE799ECB87F287E77FD73E9ABEAEC6425
          1121B1161CBC909427284854A268BCEFD62EA7D43133D95635E6AACD2D71686B
          4EA5CF6CFBDAEFDD5A7D1339D9DD3EBB6C337326BB8F1EF6FE77F6DBEF585F5A
          F4EA6CFF00886FFD5D8A7F56F21D8BD4ADC1B74F56447FC257FF0093A9528E69
          479A94492604F06A7D3197E8BA7939784B9084E31032463EE581EA9C63F3DAE7
          AB753FDB9F65FB41F43ED42BF4F6B7E86E8D9BB6EE5A7F58F2F2B0F0EAB316C3
          53DD68697000FB76BDD1EF0EFDD584E11F59A3FEEE0FC5CD72D7FADBFD029FF8
          F1FF005162519CFDAE60F11B8C8F09BF97C933C58FEF1CA0108D4A11321C22A5
          FDEFDE5BEADF55C8CC37519767A96B22CADD0012C3ED7B7D81BF41FF00F9F107
          EB2753EA187975D78B71A98EAB7101AD3AEE709F7B5CB1F0321D819B8B96EFE6
          DFABBCEB7175367F99B77ABFF5BBFA755FF11FF7E7267BD33CACBD444E047AAF
          D5C32F547564FBB638F3F1F444E2C9191E1A1C1C70F4CE3C2EE5D917B7A1BB25
          AF8BC637A82C81F4F66EDD1F47E92CBFABFD53A865F503564DE6CAC54E70696B
          47B81609F635BE2B4323FF00136EFF00C27FFA2D61FD587B19D4DCE7B835BE8B
          B571007D2678A9724E433601C44023D42F43E6D7C38E0796E6898032893C26BD
          51FEEBA9F5973F370CE37D96D357A9EA6F80D33B766DFA6D77EF2B3F57F2B232
          FA7FAD92FF0052CF51EDDC401A03A7D00D599F5B2DAAC389E9BDAF8F52769062
          7D3F057BEAB7FC943FE36CFCA8C2723CDCE3C44C4476BF4FE874464C711F0EC7
          2E102667ACABD7F364FD27FFD1E93EB37DA7F69CDDFCD6C1F678E36FF84FFAE7
          A9F4FF00EB6B5FEAC7D8FF0067FE823D79FD6B9DDBFF003667F336FD0DA8FD73
          A6FDBF08B582722AF7D27C4FE757FF005D6AE5FA47503819ACBCC8A5FECBDBFC
          927E947EF54E5425FA9E678E5AC727E91FD1FF00D17FE83AF0FE95C8FB70F4E4
          C35E88FE9F0FCBFE3FFE95743AA6DABEB1D76752F7E29DA6A23468683ECDFF00
          F1777BEE5D4ACFEB1D31BD4F103185A2D610FA6C3AB75FA41D1F99631070F39B
          D3BD1E99D4AE6FAE19355DAEC7324B2B6B9EEFA36B76FE729E03DBC93E2F9267
          884CFEF4BF40FF00DC3532919F0E2E1FE731038E5887EE47FCAC47FE94759229
          4ACACBCE6E7FADD33A6DCDFB49612FB752C6B6432C6B5EDFF0BEFF00CDFA0A69
          4844789F947591EC1AD8F1999A1F28F9A5FA308FEF49CAE9DB6DFACB659D33D9
          8C0B8DC4EAD2D3FCE6DFE4DB77F32AFF00D69FB17D89A2EFE953FAAF33CB7D6E
          3F3367EFAB5D1FA633A5623858E69B1C4BEEB068D86FD068DDF995B172DD4F39
          DD4331F90012C30CA19DF683ECD3F7EC77BD52C87DAC04480E3CC49E0FD18717
          EEFF0077FE9BA9847DE39B12813ED72F18C7DCFD2C9C3FBD2FEBFF00E936F7D5
          6FB4FED17FA5FCC7A7FAC4F1FF0003FF005CDDFF0081FA8BAC547A374E1D3F09
          B53BF9E7FBEE77F2CFE6FF00D6FE82BCACF2D8CE3C5189DF73FD5BFD168F3B9A
          39B3CA511E91E907F7B87F49E4BEB77FCA23FF000B0FFAAB543AD576E267E367
          D7CDCCAEE69F1B2B0D6BC7F699B14FEB77FCA2DFFC2C3FEAAD5A9D5F0FED5D09
          8E689B71EB65CCFECB7F48DFED57B954940CE7CC57CD1319C7CE2E8C328C78F9
          3E2F966278E7FDD9F0B8F6398FFAC95D959965B914D8D3E4F6D6F5ADF5B7FA05
          3FF1E3FEA2C5CF74D33D470F59FD3571F0910BA1FADBFD029FF8F1FF00516258
          A5C5839897EF489FB559A3C3CDF291DF86223FE2E8E3DB8C6DFABF8F9204FD9E
          DB2B7FF52C77FE95D883D4720E4E160DAE33632BB28B3E3596ECFF003AB76E5B
          BF57F1D993D0ACC7B3E85AEB587E7DD72F6D76546CA6CD1F51735E3B6E6FB5CA
          2CD131C7190DB2E38C65FDF870D7FCD67E5A6279B240FCD832CE51FEE65E2FFB
          B7B1C8FF00C4DBBFF09FFE8B5CA61E0DF9F69A280D73C34BC879810086F9FEF2
          EAF23FF136EFFC27FF00A2D62FD56FF951DFF10EFF00AAAD4FCC404F2E189DA4
          29ABCA64963C1CCCE3F346448B68E6F4BCAE9DB3ED0D637D59DBB0CFD18DD3A3
          7F79749F55BFE4A1FF001AFF00CAA9FD6FE70FFEBBFF00A2D5CFAADFF250FF00
          8D7FE54B0638E3E6A508EC21D7C7855CD65965E4219275C529EB5FD5F722FF00
          FFD2F535CFF52FAB36E466597E358CAD96FB9CC783A3CFD37376FEFF00D25D02
          4999314320E198B1BB2E1CF930C8CB19A2451EAE3E1E637A4B69E99D4AE6EFDB
          34DC010CD93B595D8E77D0733F7BE86C567A9748C2EA6D0EB445A1B15DCCE403
          AFF56C62CFFACBD333326DAF2B1D9EAB2B6163D8DFA7CEEDCD67E7AC5E9FD5B3
          7A79DB43B7540FBA8B24B47F57F3A972AB3CC31C8E2CB0BC5B465BE9FF0074DF
          C7CB4B2C073183208E7D4E488F4FAAFF00ABF2713A3FB13AF01FB37D71F609DD
          EA4FB63F7367F3DFF58DFE8AD8E9BD1F0BA630BD9EEB76C597BF431C9FE4575F
          B55677D68C0FB18B8027208FE8BF9D331FCE6DD9B3F96B9ECFEA79BD45C0643B
          D84FB31EB04367B7B7575AFF00EB207272F86A51BCB3AF46BC5C11FDDBFD05D1
          C5CE73170C95831DFEB2A3C1EE4FF4A5C3FE53FF0049BD0E5E4B7AD57774FE9D
          701B769BED2096B9A777E8AA70FA5B9CDFD23BF7107A67D5BB3173199393632D
          6D426B6301FA7F9AE76EFDC53FAB5D372F13D6BF25BE97AC1AD6567E9434B8EE
          78FCCFA4B714D8F18C9C3972C6B20D86BE9F57A7D2D6CD9CE033C18260E23BCB
          D32948CA3EBF5A92492561A4E0F5DE9F8199946DC8EA35E23AAA831EC796486C
          5D7FA8EDEF66DFD1577D9FF178F6BFFC1AD1C7EA1D2C54DA5B9943FD26D4D77E
          919C5BB2BC6DCDDDEDFB4FA95FA3FE97D4F62CCEB5F562DEA5957E4D77B6A75D
          4BA88734B8169A32F199BF5FF057E67AD5B9BFE0FED157F8542C9FAA99392CB6
          C7650AB26E7B5C5E375818C651556DAABFB497EEDF9F898D957DEFFD3DB5D3FE
          97D3B58D8E3846529015297CC59279B24E1184A571C7F20AF95955D0FA7E3645
          5983A8B052CBDC6A69D9B49A8D965B40B37FB9F4328BBD5FF47E85BFE8D5BEB6
          FE95995578D7752A315CDB846E7B24BFD3F53D1DAF7B7DFE8DF5DFFF0015FA45
          532BEACE6E5F4BFB0BF22AA9F5E5E56553756C712DFB4372DD57B1EEFE729C9C
          EF7FBBF4B8F5FA7FE1521F55F2CDF75CFC96139163AE73432035C69CEC0686C4
          39ED6D19789FCE7E93F55FF47E97A2D8E0C6232888D465F305F2E6B34A71C929
          DCE1F2CAA3A37FA4BBA6E050709B9F4DCF6BF73BDEC0E06D69BEA69607BBF9CA
          6B7DD5FF00A4ABF48A967F4AE99D4735F6D5D46AAECB4B2B754D2C79363ABF5A
          BFCFDDEA5B8ADF59ACFF0045FA640B7EA7645ACF4CE5319B0134D8CACEF63CB1
          EFF59CE2FDB6BE9CE34D98DFB98ACB31DFEA7ABBD12AFAB3D428CB666B32297D
          82FA6E754EACB58054CC8C2DB5BABFD27F43C9AF6FABEA7E928FF43EC4A5871C
          A02063718EC3C910E6734324B2C6559257C52A1ADF83A5916F4D1D2ECC3B33A9
          AD95D5F67B2E73D8034CFD925FB9DB5AEF5DBE8EDFF4DFA2547A5E1F4CE9BD43
          71EA75597389C51412C6BBD53B2DF4A37977ADB367E8BF968177D4FC87DB9575
          796D0FC9B2C781635CF6345CECC63DADA7D46B59FAAF5177F35E9EFCCAFD6B3E
          9AB14FD573FB41B7E45A1F89558FB6AC56EE0038BA8B5B63DDBBDDEA6463B72F
          2696ECC77E5FEB1E9FA9EBFAC4E281946447AA1F29EC88E7CB184E025E9C9F38
          A1EA65D4FF00647587542BEA98ED38EE6B4863EB79DD93B7ECCC3EFF006BAFDB
          FABFFA6FF06AFF0045C4AB1305B5D378CAADCE73DB73620871FCDD85CD58F5FD
          52CC662635032EB0EC638B607FA73BACC4A1B8D57D3276B1F7B7D6F67E959FE0
          D6CF47C3C8C1C06625E6B71A4B9B5BAA0402C99AF707CFE936FF0039F9890C70
          133900F59144A8E7C8710C265FAB89B11A1BF9FF0084FF00FFD3F53497CAE924
          A7EA8543A8F45C2CF97BDBE9DFDAE64077F6FF0036C6FF005D7CCC92664E0E13
          EE570FF599707BBEE0F678B8FA703EF83EAB751391E9173051FF00723CBFE27E
          9FA9FF0081FF00C22DEE9DD1F0BA7806A66FBA21D73F579FEAFF00A36FF517CC
          A92ADCBFDD788FB7F35E9C7BFF0080DEE77EFDC03DDFE6EBD5ED7CBFF54FE5ED
          BF5424BE57495C731FAA125F2BA4929FAA125F2BA4929FAA125F2BA4929FAA12
          5F2BA4929FAA125F2BA4929FAA125F2BA4929FFFD9FFED16A850686F746F7368
          6F7020332E30003842494D042500000000001000000000000000000000000000
          0000003842494D03ED0000000000100060000000010001006000000001000138
          42494D042600000000000E000000000000000000003F8000003842494D040D00
          00000000040000001E3842494D04190000000000040000001E3842494D03F300
          0000000009000000000000000001003842494D040A0000000000010000384249
          4D271000000000000A000100000000000000023842494D03F500000000004800
          2F66660001006C66660006000000000001002F6666000100A1999A0006000000
          000001003200000001005A00000006000000000001003500000001002D000000
          060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03
          E800003842494D04080000000000100000000100000240000002400000000038
          42494D041E000000000004000000003842494D041A0000000003450000000600
          00000000000000000000780000010B00000008006E006E00680020006C006F00
          67006F0000000100000000000000000000000000000000000000010000000000
          0000000000010B00000078000000000000000000000000000000000100000000
          00000000000000000000000000000010000000010000000000006E756C6C0000
          000200000006626F756E64734F626A6300000001000000000000526374310000
          000400000000546F70206C6F6E6700000000000000004C6566746C6F6E670000
          00000000000042746F6D6C6F6E670000007800000000526768746C6F6E670000
          010B00000006736C69636573566C4C73000000014F626A630000000100000000
          0005736C6963650000001200000007736C69636549446C6F6E67000000000000
          000767726F757049446C6F6E6700000000000000066F726967696E656E756D00
          00000C45536C6963654F726967696E0000000D6175746F47656E657261746564
          0000000054797065656E756D0000000A45536C6963655479706500000000496D
          672000000006626F756E64734F626A6300000001000000000000526374310000
          000400000000546F70206C6F6E6700000000000000004C6566746C6F6E670000
          00000000000042746F6D6C6F6E670000007800000000526768746C6F6E670000
          010B0000000375726C54455854000000010000000000006E756C6C5445585400
          0000010000000000004D7367655445585400000001000000000006616C745461
          67544558540000000100000000000E63656C6C54657874497348544D4C626F6F
          6C010000000863656C6C546578745445585400000001000000000009686F727A
          416C69676E656E756D0000000F45536C696365486F727A416C69676E00000007
          64656661756C740000000976657274416C69676E656E756D0000000F45536C69
          636556657274416C69676E0000000764656661756C740000000B6267436F6C6F
          7254797065656E756D0000001145536C6963654247436F6C6F72547970650000
          00004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C
          6566744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365
          746C6F6E67000000000000000B72696768744F75747365746C6F6E6700000000
          003842494D042800000000000C000000013FF00000000000003842494D041400
          0000000004000000013842494D040C0000000010F600000001000000A0000000
          48000001E000008700000010DA00180001FFD8FFE000104A4649460001020100
          4800480000FFED000C41646F62655F434D0001FFEE000E41646F626500648000
          000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F15181313
          15131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C
          0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0CFFC0001108004800A003012200021101031101FFDD0004
          000AFFC4013F0000010501010101010100000000000000030001020405060708
          090A0B0100010501010101010100000000000000010002030405060708090A0B
          1000010401030204020507060805030C33010002110304211231054151611322
          718132061491A1B14223241552C16233347282D14307259253F0E1F163733516
          A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B4
          95C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7
          D7E7F71100020201020404030405060707060535010002110321311204415161
          7122130532819114A1B14223C152D1F0332462E1728292435315637334F12506
          16A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797
          A7B7C7FFDA000C03010002110311003F00F5349249252967F52EB785812C71F5
          6FED4B20BBFB67E8D7FDA59FF59BA966635B5E363D9E932CACBDEF6E8FE76ED0
          FF00CC6FF5563F4EE919B9E7750CD941326F7CED3FD4FCEB9CAA66E664267162
          8994FBBA3CB7238CE319F3CC4711D877FEF4BFEE62DB1F59FA90C8F54B5869E3
          ECF1A47FC6FD3F53FE87FC1ADEE9DD670BA80DB5BB65D1EEA5FA3BFB3F9B67F6
          1553F563A79C3F4048C88FE95F9DBB99D93B36FF002173FD43A566F4F337B66B
          07DB915CEDF2D7E952F5199F3383D53FD640EB2FEAFD7F459BDBE479AF463FD4
          E48FA63D38FF00C1FD3FFD2AF7292C2FAB3D4B2F28DD464BFD51535AE6587E94
          38B86D7BBF3FE8ADD5731E41920271D8F77373E1961C92C72A263DB6D7552492
          49EC4A4924925292492494A4924925292492494A49249253FFD0F535CF752FAC
          D751996518B5D765757B5CF7EED5E3E9EDDBF9ACFA2B43AEF51FB06113598C8B
          A594F913F4ACFF00ADB5731D1FA77DBF35941FE66BF7DE7F920FD0FF00AEBBFE
          FEAA7339A7C51C588D4E5BBA3C8F2D8CE39F319C5E388F483E1F34BFEE62F418
          586DEAADA7A9F52A9BBF6C51489D9B09DECB2C63BE93DFFE66C45EAFD6E8E961
          B56C365EE6CB183DAD03E8B4B9FF002FA0C4DD7BAA9E9B88D1490322D3150224
          00DFE72CDBFC86FB54BA761D96B6ACFEA4C6D99E5BED25A07A6D277B18D6FF00
          A4F77BDEA4EA71E33FACA06792BFE97F5D8A8111CF9A3FA8B94716112AFA47FD
          5FEFC9C9F5BEB416FED483B469F66DA7E873BBECDF4F6FF2F7FDA16A749EB78F
          D503A8730D77B5B2FACFB985BF45DB5DFDAFA0F5A8B3FA861BEB6DB9DD398D66
          78611BB6CEF6C87BAB737E8B9EEDBEC7A431CF1FA84CCE3FA7197A8CBFB9FBAA
          39B1661C12C51C72DB16487A230FEAE5FDE8FF005DAD9B8C3A3577750E9B4B65
          DB7D7A893B0306EFD254D6FD1DAE77BFF9081D33EB25D9398CC6CA6575B6DF6D
          6F64FD3FCD6BB71FCF56BA1754FDA788F6646D75F5E968880E63BE83F67F2BE8
          39737D4F01DD3F35F8E2433E9D0EEFB49F67F6AA77B1419724A0219711FD51F9
          A03F97E936B97C31C92CBCBF303FA4447A72124CB86BD3FE27FD07BA4950E8BD
          44750C26DAEFE799ECB87F287E77FD73E9ABEAEC64251121B1161CBC90942728
          4854A268BCEFD62EA7D43133D95635E6AACD2D71686B4EA5CF6CFBDAEFDD5A7D
          1339D9DD3EBB6C337326BB8F1EF6FE77F6DBEF585F5AF4EA6CFF00886FFD5D8A
          7F56F21D8BD4ADC1B74F56447FC257FF0093A9528E69479A94492604F06A7D31
          97E8BA7939784B9084E31032463EE581EA9C63F3DAE7AB753FDB9F65FB41F43E
          D42BF4F6B7E86E8D9BB6EE5A7F58F2F2B0F0EAB316C353DD68697000FB76BDD1
          EF0EFDD584E11F59A3FEEE0FC5CD72D7FADBFD029FF8F1FF005162519CFDAE60
          F11B8C8F09BF97C933C58FEF1CA0108D4A11321C22A5FDEFDE5BEADF55C8CC37
          519767A96B22CADD0012C3ED7B7D81BF41FF00F9F107EB2753EA187975D78B71
          A98EAB7101AD3AEE709F7B5CB1F0321D819B8B96EFE6DFABBCEB7175367F99B7
          7ABFF5BBFA755FF11FF7E7267BD33CACBD444E047AAFD5C32F547564FBB638F3
          F1F444E2C9191E1A1C1C70F4CE3C2EE5D917B7A1BB25AF8BC637A82C81F4F66E
          DD1F47E92CBFABFD53A865F503564DE6CAC54E70696B47B81609F635BE2B4323
          FF00136EFF00C27FFA2D61FD587B19D4DCE7B835BE8BB571007D2678A9724E43
          3601C44023D42F43E6D7C38E0796E6898032893C26BD51FEEBA9F5973F370CE3
          7D96D357A9EA6F80D33B766DFA6D77EF2B3F57F2B232FA7FAD92FF0052CF51ED
          DC401A03A7D00D599F5B2DAAC389E9BDAF8F527690627D3F057BEAB7FC943FE3
          6CFCA8C2723CDCE3C44C4476BF4FE874464C711F0EC72E102667ACABD7F364FD
          27FFD1E93EB37DA7F69CDDFCD6C1F678E36FF84FFAE7A9F4FF00EB6B5FEAC7D8
          FF0067FE823D79FD6B9DDBFF003667F336FD0DA8FD73A6FDBF08B582722AF7D2
          7C4FE757FF005D6AE5FA47503819ACBCC8A5FECBDBFC927E947EF54E5425FA9E
          678E5AC727E91FD1FF00D17FE83AF0FE95C8FB70F4E4C35E88FE9F0FCBFE3FFE
          95743AA6DABEB1D76752F7E29DA6A23468683ECDFF00F1777BEE5D4ACFEB1D31
          BD4F103185A2D610FA6C3AB75FA41D1F99631070F39BD3BD1E99D4AE6FAE1935
          5DAEC7324B2B6B9EEFA36B76FE729E03DBC93E2F9267884CFEF4BF40FF00DC35
          32919F0E2E1FE731038E5887EE47FCAC47FE947592294ACACBCE6E7FADD33A6D
          CDFB49612FB752C6B6432C6B5EDFF0BEFF00CDFA0A694844789F947591EC1AD8
          F1999A1F28F9A5FA308FEF49CAE9DB6DFACB659D33D98C0B8DC4EAD2D3FCE6DF
          E4DB77F32AFF00D69FB17D89A2EFE953FAAF33CB7D6E3F3367EFAB5D1FA633A5
          623858E69B1C4BEEB068D86FD068DDF995B172DD4F39DD4331F90012C30CA19D
          F683ECD3F7EC77BD52C87DAC04480E3CC49E0FD18717EEFF0077FE9BA9847DE3
          9B12813ED72F18C7DCFD2C9C3FBD2FEBFF00E936F7D56FB4FED17FA5FCC7A7FA
          C4F1FF0003FF005CDDFF0081FA8BAC547A374E1D3F09B53BF9E7FBEE77F2CFE6
          FF00D6FE82BCACF2D8CE3C5189DF73FD5BFD168F3B9A39B3CA511E91E907F7B8
          7F49E4BEB77FCA23FF000B0FFAAB543AD576E267E367D7CDCCAEE69F1B2B0D6B
          C7F699B14FEB77FCA2DFFC2C3FEAAD5A9D5F0FED5D098E689B71EB65CCFECB7F
          48DFED57B954940CE7CC57CD1319C7CE2E8C328C78F93E2F966278E7FDD9F0B8
          F6398FFAC95D959965B914D8D3E4F6D6F5ADF5B7FA053FF1E3FEA2C5CF74D33D
          470F59FD3571F0910BA1FADBFD029FF8F1FF00516258A5C5839897EF489FB559
          A3C3CDF291DF86223FE2E8E3DB8C6DFABF8F9204FD9EDB2B7FF52C77FE95D883
          D4720E4E160DAE33632BB28B3E3596ECFF003AB76E5BBF57F1D993D0ACC7B3E8
          5AEB587E7DD72F6D76546CA6CD1F51735E3B6E6FB5CA2CD131C7190DB2E38C65
          FDF870D7FCD67E5A6279B240FCD832CE51FEE65E2FFBB7B1C8FF00C4DBBFF09F
          FE8B5CA61E0DF9F69A280D73C34BC879810086F9FEF2EAF23FF136EFFC27FF00
          A2D62FD56FF951DFF10EFF00AAAD4FCC404F2E189DA429ABCA64963C1CCCE3F3
          46448B68E6F4BCAE9DB3ED0D637D59DBB0CFD18DD3A37F79749F55BFE4A1FF00
          1AFF00CAA9FD6FE70FFEBBFF00A2D5CFAADFF250FF008D7FE54B0638E3E6A508
          EC21D7C7855CD65965E4219275C529EB5FD5F722FF00FFD2F535CFF52FAB36E4
          66597E358CAD96FB9CC783A3CFD37376FEFF00D25D024999314320E198B1BB2E
          1CF930C8CB19A2451EAE3E1E637A4B69E99D4AE6EFDB34DC010CD93B595D8E77
          D0733F7BE86C567A9748C2EA6D0EB445A1B15DCCE403AFF56C62CFFACBD33332
          6DAF2B1D9EAB2B6163D8DFA7CEEDCD67E7AC5E9FD5B37A79DB43B7540FBA8B24
          B47F57F3A972AB3CC31C8E2CB0BC5B465BE9FF0074DFC7CB4B2C073183208E7D
          4E488F4FAAFF00ABF2713A3FB13AF01FB37D71F609DDEA4FB63F7367F3DFF58D
          FE8AD8E9BD1F0BA630BD9EEB76C597BF431C9FE4575FB55677D68C0FB18B8027
          208FE8BF9D331FCE6DD9B3F96B9ECFEA79BD45C0643BD84FB31EB04367B7B757
          5AFF00EB207272F86A51BCB3AF46BC5C11FDDBFD05D1C5CE73170C95831DFEB2
          A3C1EE4FF4A5C3FE53FF0049BD0E5E4B7AD57774FE9D701B769BED2096B9A777
          E8AA70FA5B9CDFD23BF7107A67D5BB3173199393632D6D426B6301FA7F9AE76E
          FDC53FAB5D372F13D6BF25BE97AC1AD6567E9434B8EE78FCCFA4B714D8F18C9C
          3972C6B20D86BE9F57A7D2D6CD9CE033C18260E23BCBD32948CA3EBF5A924925
          61A4E0F5DE9F8199946DC8EA35E23AAA831EC796486C5D7FA8EDEF66DFD1577D
          9FF178F6BFFC1AD1C7EA1D2C54DA5B9943FD26D4D77E919C5BB2BC6DCDDDEDFB
          4FA95FA3FE97D4F62CCEB5F562DEA5957E4D77B6A75D4BA88734B8169A32F199
          BF5FF057E67AD5B9BFE0FED157F8542C9FAA99392CB6C7650AB26E7B5C5E3758
          18C651556DAABFB497EEDF9F898D957DEFFD3DB5D3FE97D3B58D8E3846529015
          297CC59279B24E1184A571C7F20AF95955D0FA7E36455983A8B052CBDC6A69D9
          B49A8D965B40B37FB9F4328BBD5FF47E85BFE8D5BEB6FE95995578D7752A315C
          DB846E7B24BFD3F53D1DAF7B7DFE8DF5DFFF0015FA45532BEACE6E5F4BFB0BF2
          2AA9F5E5E56553756C712DFB4372DD57B1EEFE729C9CEF7FBBF4B8F5FA7FE152
          1F55F2CDF75CFC96139163AE73432035C69CEC0686C439ED6D19789FCE7E93F5
          5FF47E97A2D8E0C6232888D465F305F2E6B34A71C929DCE1F2CAA3A37FA4BBA6
          E050709B9F4DCF6BF73BDEC0E06D69BEA69607BBF9CA6B7DD5FF00A4ABF48A96
          7F4AE99D4735F6D5D46AAECB4B2B754D2C79363ABF5ABFCFDDEA5B8ADF59ACFF
          0045FA640B7EA7645ACF4CE5319B0134D8CACEF63CB1EFF59CE2FDB6BE9CE34D
          98DFB98ACB31DFEA7ABBD12AFAB3D428CB666B32297D82FA6E754EACB58054CC
          8C2DB5BABFD27F43C9AF6FABEA7E928FF43EC4A5871CA02063718EC3C910E673
          4324B2C6559257C52A1ADF83A5916F4D1D2ECC3B33A9AD95D5F67B2E73D8034C
          FD925FB9DB5AEF5DBE8EDFF4DFA2547A5E1F4CE9BD4371EA75597389C51412C6
          BBD53B2DF4A37977ADB367E8BF968177D4FC87DB9575796D0FC9B2C781635CF6
          345CECC63DADA7D46B59FAAF5177F35E9EFCCAFD6B3E9AB14FD573FB41B7E45A
          1F89558FB6AC56EE0038BA8B5B63DDBBDDEA6463B72F2696ECC77E5FEB1E9FA9
          EBFAC4E281946447AA1F29EC88E7CB184E025E9C9F38A1EA65D4FF0064758754
          2BEA98ED38EE6B4863EB79DD93B7ECCC3EFF006BAFDBFABFFA6FF06AFF0045C4
          AB1305B5D378CAADCE73DB73620871FCDD85CD58F5FD52CC662635032EB0EC63
          8B607FA73BACC4A1B8D57D3276B1F7B7D6F67E959FE0D6CF47C3C8C1C06625E6
          B71A4B9B5BAA0402C99AF707CFE936FF0039F9890C70133900F59144A8E7C871
          0C265FAB89B11A1BF9FF0084FF00FFD3F53497CAE924A7EA8543A8F45C2CF97B
          DBE9DFDAE64077F6FF0036C6FF005D7CCC92664E0E13EE570FF599707BBEE0F6
          78B8FA703EF83EAB751391E9173051FF00723CBFE27E9FA9FF0081FF00C22DEE
          9DD1F0BA7806A66FBA21D73F579FEAFF00A36FF517CCA92ADCBFDD788FB7F35E
          9C7BFF0080DEE77EFDC03DDFE6EBD5ED7CBFF54FE5EDBF5424BE57495C731FAA
          125F2BA4929FAA125F2BA4929FAA125F2BA4929FAA125F2BA4929FAA125F2BA4
          929FAA125F2BA4929FFFD93842494D042100000000005300000001010000000F
          00410064006F00620065002000500068006F0074006F00730068006F00700000
          001200410064006F00620065002000500068006F0074006F00730068006F0070
          00200043005300000001003842494D04060000000000070005000000010100FF
          E117FA687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F00
          3C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D70
          43656869487A7265537A4E54637A6B633964273F3E0A3C783A786D706D657461
          20786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786D7074
          6B3D27584D5020746F6F6C6B697420332E302D32382C206672616D65776F726B
          20312E36273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A
          2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E74
          61782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62
          652E636F6D2F69582F312E302F273E0A0A203C7264663A446573637269707469
          6F6E207264663A61626F75743D27757569643A62386431343266352D34313336
          2D313165372D616166352D393534323163303861653861270A2020786D6C6E73
          3A657869663D27687474703A2F2F6E732E61646F62652E636F6D2F657869662F
          312E302F273E0A20203C657869663A436F6C6F7253706163653E313C2F657869
          663A436F6C6F7253706163653E0A20203C657869663A506978656C5844696D65
          6E73696F6E3E3236373C2F657869663A506978656C5844696D656E73696F6E3E
          0A20203C657869663A506978656C5944696D656E73696F6E3E3132303C2F6578
          69663A506978656C5944696D656E73696F6E3E0A203C2F7264663A4465736372
          697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264663A61
          626F75743D27757569643A62386431343266352D343133362D313165372D6161
          66352D393534323163303861653861270A2020786D6C6E733A7064663D276874
          74703A2F2F6E732E61646F62652E636F6D2F7064662F312E332F273E0A203C2F
          7264663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074
          696F6E207264663A61626F75743D27757569643A62386431343266352D343133
          362D313165372D616166352D393534323163303861653861270A2020786D6C6E
          733A70686F746F73686F703D27687474703A2F2F6E732E61646F62652E636F6D
          2F70686F746F73686F702F312E302F273E0A20203C70686F746F73686F703A48
          6973746F72793E3C2F70686F746F73686F703A486973746F72793E0A203C2F72
          64663A4465736372697074696F6E3E0A0A203C7264663A446573637269707469
          6F6E207264663A61626F75743D27757569643A62386431343266352D34313336
          2D313165372D616166352D393534323163303861653861270A2020786D6C6E73
          3A746966663D27687474703A2F2F6E732E61646F62652E636F6D2F746966662F
          312E302F273E0A20203C746966663A4F7269656E746174696F6E3E313C2F7469
          66663A4F7269656E746174696F6E3E0A20203C746966663A585265736F6C7574
          696F6E3E39362F313C2F746966663A585265736F6C7574696F6E3E0A20203C74
          6966663A595265736F6C7574696F6E3E39362F313C2F746966663A595265736F
          6C7574696F6E3E0A20203C746966663A5265736F6C7574696F6E556E69743E32
          3C2F746966663A5265736F6C7574696F6E556E69743E0A203C2F7264663A4465
          736372697074696F6E3E0A0A203C7264663A4465736372697074696F6E207264
          663A61626F75743D27757569643A62386431343266352D343133362D31316537
          2D616166352D393534323163303861653861270A2020786D6C6E733A7861703D
          27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F273E0A
          20203C7861703A437265617465446174653E323031372D30352D32355431363A
          32363A34332B30353A34353C2F7861703A437265617465446174653E0A20203C
          7861703A4D6F64696679446174653E323031372D30352D32355431363A32363A
          34332B30353A34353C2F7861703A4D6F64696679446174653E0A20203C786170
          3A4D65746164617461446174653E323031372D30352D32355431363A32363A34
          332B30353A34353C2F7861703A4D65746164617461446174653E0A20203C7861
          703A43726561746F72546F6F6C3E41646F62652050686F746F73686F70204353
          2057696E646F77733C2F7861703A43726561746F72546F6F6C3E0A203C2F7264
          663A4465736372697074696F6E3E0A0A203C7264663A4465736372697074696F
          6E207264663A61626F75743D27757569643A62386431343266352D343133362D
          313165372D616166352D393534323163303861653861270A2020786D6C6E733A
          7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F31
          2E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E61646F
          62653A646F6369643A70686F746F73686F703A62386431343266342D34313336
          2D313165372D616166352D3935343231633038616538613C2F7861704D4D3A44
          6F63756D656E7449443E0A203C2F7264663A4465736372697074696F6E3E0A0A
          203C7264663A4465736372697074696F6E207264663A61626F75743D27757569
          643A62386431343266352D343133362D313165372D616166352D393534323163
          303861653861270A2020786D6C6E733A64633D27687474703A2F2F7075726C2E
          6F72672F64632F656C656D656E74732F312E312F273E0A20203C64633A666F72
          6D61743E696D6167652F6A7065673C2F64633A666F726D61743E0A203C2F7264
          663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A78
          6D706D6574613E0A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A3C3F787061636B657420656E643D2777273F3EFFE20C5849
          43435F50524F46494C4500010100000C484C696E6F021000006D6E7472524742
          2058595A2007CE00020009000600310000616373704D53465400000000494543
          20735247420000000000000000000000000000F6D6000100000000D32D485020
          2000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000011637072740000015000000033646573
          63000001840000006C77747074000001F000000014626B707400000204000000
          147258595A00000218000000146758595A0000022C000000146258595A000002
          4000000014646D6E640000025400000070646D6464000002C400000088767565
          640000034C0000008676696577000003D4000000246C756D69000003F8000000
          146D6561730000040C0000002474656368000004300000000C72545243000004
          3C0000080C675452430000043C0000080C625452430000043C0000080C746578
          7400000000436F70797269676874202863292031393938204865776C6574742D
          5061636B61726420436F6D70616E790000646573630000000000000012735247
          422049454336313936362D322E31000000000000000000000012735247422049
          454336313936362D322E31000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000058595A
          20000000000000F35100010000000116CC58595A200000000000000000000000
          000000000058595A200000000000006FA2000038F50000039058595A20000000
          00000062990000B785000018DA58595A2000000000000024A000000F840000B6
          CF64657363000000000000001649454320687474703A2F2F7777772E6965632E
          636800000000000000000000001649454320687474703A2F2F7777772E696563
          2E63680000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000064657363000000000000002E494543
          2036313936362D322E312044656661756C742052474220636F6C6F7572207370
          616365202D207352474200000000000000000000002E4945432036313936362D
          322E312044656661756C742052474220636F6C6F7572207370616365202D2073
          5247420000000000000000000000000000000000000000000064657363000000
          000000002C5265666572656E63652056696577696E6720436F6E646974696F6E
          20696E2049454336313936362D322E3100000000000000000000002C52656665
          72656E63652056696577696E6720436F6E646974696F6E20696E204945433631
          3936362D322E3100000000000000000000000000000000000000000000000000
          0076696577000000000013A4FE00145F2E0010CF140003EDCC0004130B00035C
          9E0000000158595A2000000000004C09560050000000571FE76D656173000000
          0000000001000000000000000000000000000000000000028F00000002736967
          20000000004352542063757276000000000000040000000005000A000F001400
          19001E00230028002D00320037003B00400045004A004F00540059005E006300
          68006D00720077007C00810086008B00900095009A009F00A400A900AE00B200
          B700BC00C100C600CB00D000D500DB00E000E500EB00F000F600FB0101010701
          0D01130119011F0125012B01320138013E0145014C0152015901600167016E01
          75017C0183018B0192019A01A101A901B101B901C101C901D101D901E101E901
          F201FA0203020C0214021D0226022F02380241024B0254025D02670271027A02
          84028E029802A202AC02B602C102CB02D502E002EB02F50300030B0316032103
          2D03380343034F035A03660372037E038A039603A203AE03BA03C703D303E003
          EC03F9040604130420042D043B0448045504630471047E048C049A04A804B604
          C404D304E104F004FE050D051C052B053A05490558056705770586059605A605
          B505C505D505E505F6060606160627063706480659066A067B068C069D06AF06
          C006D106E306F507070719072B073D074F076107740786079907AC07BF07D207
          E507F8080B081F08320846085A086E0882089608AA08BE08D208E708FB091009
          25093A094F09640979098F09A409BA09CF09E509FB0A110A270A3D0A540A6A0A
          810A980AAE0AC50ADC0AF30B0B0B220B390B510B690B800B980BB00BC80BE10B
          F90C120C2A0C430C5C0C750C8E0CA70CC00CD90CF30D0D0D260D400D5A0D740D
          8E0DA90DC30DDE0DF80E130E2E0E490E640E7F0E9B0EB60ED20EEE0F090F250F
          410F5E0F7A0F960FB30FCF0FEC1009102610431061107E109B10B910D710F511
          131131114F116D118C11AA11C911E81207122612451264128412A312C312E313
          03132313431363138313A413C513E5140614271449146A148B14AD14CE14F015
          12153415561578159B15BD15E0160316261649166C168F16B216D616FA171D17
          411765178917AE17D217F7181B18401865188A18AF18D518FA19201945196B19
          9119B719DD1A041A2A1A511A771A9E1AC51AEC1B141B3B1B631B8A1BB21BDA1C
          021C2A1C521C7B1CA31CCC1CF51D1E1D471D701D991DC31DEC1E161E401E6A1E
          941EBE1EE91F131F3E1F691F941FBF1FEA20152041206C209820C420F0211C21
          48217521A121CE21FB22272255228222AF22DD230A23382366239423C223F024
          1F244D247C24AB24DA250925382568259725C725F726272657268726B726E827
          182749277A27AB27DC280D283F287128A228D429062938296B299D29D02A022A
          352A682A9B2ACF2B022B362B692B9D2BD12C052C392C6E2CA22CD72D0C2D412D
          762DAB2DE12E162E4C2E822EB72EEE2F242F5A2F912FC72FFE3035306C30A430
          DB3112314A318231BA31F2322A3263329B32D4330D3346337F33B833F1342B34
          65349E34D83513354D358735C235FD3637367236AE36E937243760379C37D738
          143850388C38C839053942397F39BC39F93A363A743AB23AEF3B2D3B6B3BAA3B
          E83C273C653CA43CE33D223D613DA13DE03E203E603EA03EE03F213F613FA23F
          E24023406440A640E74129416A41AC41EE4230427242B542F7433A437D43C044
          034447448A44CE45124555459A45DE4622466746AB46F04735477B47C0480548
          4B489148D7491D496349A949F04A374A7D4AC44B0C4B534B9A4BE24C2A4C724C
          BA4D024D4A4D934DDC4E254E6E4EB74F004F494F934FDD5027507150BB510651
          50519B51E65231527C52C75313535F53AA53F65442548F54DB5528557555C256
          0F565C56A956F75744579257E0582F587D58CB591A596959B85A075A565AA65A
          F55B455B955BE55C355C865CD65D275D785DC95E1A5E6C5EBD5F0F5F615FB360
          05605760AA60FC614F61A261F56249629C62F06343639763EB6440649464E965
          3D659265E7663D669266E8673D679367E9683F689668EC6943699A69F16A486A
          9F6AF76B4F6BA76BFF6C576CAF6D086D606DB96E126E6B6EC46F1E6F786FD170
          2B708670E0713A719571F0724B72A67301735D73B87414747074CC7528758575
          E1763E769B76F8775677B37811786E78CC792A798979E77A467AA57B047B637B
          C27C217C817CE17D417DA17E017E627EC27F237F847FE5804780A8810A816B81
          CD8230829282F4835783BA841D848084E3854785AB860E867286D7873B879F88
          04886988CE8933899989FE8A648ACA8B308B968BFC8C638CCA8D318D988DFF8E
          668ECE8F368F9E9006906E90D6913F91A89211927A92E3934D93B69420948A94
          F4955F95C99634969F970A977597E0984C98B89924999099FC9A689AD59B429B
          AF9C1C9C899CF79D649DD29E409EAE9F1D9F8B9FFAA069A0D8A147A1B6A226A2
          96A306A376A3E6A456A4C7A538A5A9A61AA68BA6FDA76EA7E0A852A8C4A937A9
          A9AA1CAA8FAB02AB75ABE9AC5CACD0AD44ADB8AE2DAEA1AF16AF8BB000B075B0
          EAB160B1D6B24BB2C2B338B3AEB425B49CB513B58AB601B679B6F0B768B7E0B8
          59B8D1B94AB9C2BA3BBAB5BB2EBBA7BC21BC9BBD15BD8FBE0ABE84BEFFBF7ABF
          F5C070C0ECC167C1E3C25FC2DBC358C3D4C451C4CEC54BC5C8C646C6C3C741C7
          BFC83DC8BCC93AC9B9CA38CAB7CB36CBB6CC35CCB5CD35CDB5CE36CEB6CF37CF
          B8D039D0BAD13CD1BED23FD2C1D344D3C6D449D4CBD54ED5D1D655D6D8D75CD7
          E0D864D8E8D96CD9F1DA76DAFBDB80DC05DC8ADD10DD96DE1CDEA2DF29DFAFE0
          36E0BDE144E1CCE253E2DBE363E3EBE473E4FCE584E60DE696E71FE7A9E832E8
          BCE946E9D0EA5BEAE5EB70EBFBEC86ED11ED9CEE28EEB4EF40EFCCF058F0E5F1
          72F1FFF28CF319F3A7F434F4C2F550F5DEF66DF6FBF78AF819F8A8F938F9C7FA
          57FAE7FB77FC07FC98FD29FDBAFE4BFEDCFF6DFFFFFFEE000E41646F62650064
          4000000001FFDB00840004030303030304030304060403040607050404050708
          0606070606080A0809090909080A0A0C0C0C0C0C0A0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010405050807080F0A0A0F140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080078010B03011100021101031101FFDD
          00040022FFC401A2000000070101010101000000000000000004050302060100
          0708090A0B010002020301010101010000000000000001000203040506070809
          0A0B100002010303020402060703040206027301020311040005211231415106
          1361227181143291A10715B14223C152D1E1331662F0247282F12543345392A2
          B26373C235442793A3B33617546474C3D2E2082683090A181984944546A4B456
          D355281AF2E3F3C4D4E4F465758595A5B5C5D5E5F566768696A6B6C6D6E6F637
          475767778797A7B7C7D7E7F738485868788898A8B8C8D8E8F829394959697989
          99A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFA1100020201020305050405
          06040803036D0100021103042112314105511361220671819132A1B1F014C1D1
          E1234215526272F1332434438216925325A263B2C20773D235E2448317549308
          090A18192636451A2764745537F2A3B3C32829D3E3F38494A4B4C4D4E4F46575
          8595A5B5C5D5E5F5465666768696A6B6C6D6E6F6475767778797A7B7C7D7E7F7
          38485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A
          8A9AAABACADAEAFAFFDA000C03010002110311003F00F7D62AEC55D8ABB15762
          AEA8C5524F3079A345F2CDB9B8D5AE562EA63847C52BFF00AAA37CC6CFA9C784
          5C8B9FA3ECFCFAB970E28DF9BCC93F3CD4EAE7D4D348D0FEC8606B703FCAA743
          F2CE6C7B430F12ABD3DFD5EDCFB1B2F06C4FF79FEC5EA1A1798F47F31DB8B9D2
          6E9674DB9274913D997A8CE9706A71E617036F0BABD0E5D2CB872C693704664B
          86DE05762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB
          15762AEC55D8ABB15762AEC55D8ABFFFD0F7D62AEC55D8ABB1542DEDFDA69D6E
          F757D3A5BDBA0AB4B210A07DF909CE3017234DB8B14F2CB8600927B9E41E6DFC
          E807D4B1F2AC7BEEBFA4255DBE68A7F59CE575BDBB18DC7173EF7D0BB2FD923B
          4F507FCCFD6F23BDBDBCD4AE5AF7519DEE6E9F7692462D53F4F4CE3B2669E595
          CECBE89834F8F0478718111E4A1C5B8F32ADC7F9A86990F0E5574DDC71BABDD1
          1A76A5A8693742F74BB97B5BA4355910D3A788E8465983519314B8A069A353A5
          C5A88F06488907B0F94FF3A2193D3B2F34A7A526CA2FE21F013E2EBDBE633B2D
          176FC264472FA4F7BE6FDA7EC9CE173D3EE3F98F5AB4BDB6BD812E2D2649EDE4
          154923219483EE33A98CC4B71C9E07263963970C810513926B762AEC55D8ABB1
          5762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762
          AEC55FFFD1F7D62AEC55D8AB4C688C7B804FE180A4737C9FE67F32EB5E61D466
          7D4EE9A58E391D22807C312856A6CBD33CBF5DACCB9B21123B03F4BEF1D99D9D
          834D8A2611164024FF00124A88F24891C28649A4344451C989F00335F184A52A
          88B2EDE531004C8D00F4AF28FE506ABAAFA57BAFB1D3ECABC85BD019DC7B8E8B
          F4E751A1EC294889E535FD1786ED4F6AB1E3B8611C52FE77F087B5CBE5FD225D
          31B496B58C5A345E8F108B50B4A546DD7BE7667040C786B67CD23ADCB1CBE209
          1BBB78779B3F28B59D17D4BCD10FE92D3C12C630293C6BF21F6BE8CE275DD879
          204CB16E1F4FECBF6A70E6A866F44BBFF84BCE9D0AB14901565342AC28411E20
          E73138189A2F6D09090B0C97C93E67D6B42D6ACE1B1B865B3B99E38E7B66DE36
          0EC17A763BF5CDCF66EBB2E3CA237B1743DB3D9B8351825290F5441A2FA98569
          BE7A53E18DE2AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8
          ABB15762AEC55D8ABB15762AEC55FFD2F7D62AE3D31552696343C59D54F81207
          EBC048091191E416BCF1147A48BF64FED0F0F9E449047366226C6CF9BB41FCBA
          D7FCD57F34E91FD4F4BF5E4FF4C98100AF235E0BD5B382C3D9393519644FA637
          CDF61D57B41A7D1E188FAE7C23D23F4BDAFCABF97FA07952356B58BEB17F4F8E
          F2600C95EFC4745FA33AFD2767E2D38A88DFBDF35ED1EDAD46B0FACD47F9A393
          24BABAB5B181AE6F25482DD055E49182A81F3399F29088B2683A6C78E5924044
          1913DCC024FCE4F2BA6B02C07A8DA7538B6A201E01EBFCBD4AFBE694F6D60197
          82F6FE73D5C7D96D5CB0F895EAFE67567B677F67A8DBA5D58CC9716D20AA4B1B
          06523E8CDD465190B06C3CAE4C53C52226288631E6BFCBAF2FF9A51A5963FAA6
          A447C1790801ABFE50E8D9ADD6766E2D48DC51EF779D9BDBBA8D11001B8FF34B
          C76EFF002F7CC5E57D7F4E33426EF4FF00AD4212F2052CB4E60FC43AAFD39C99
          EC9CB833C0F38DF37D121DBDA6D5E9A62F867C27D27DCFA3BD68850FA8B43E2C
          3FAE77DC43BDF1EE13DCD89A373457563E0AC0FEAC20828208E8BD4D46142EC5
          5D8AB47A62AC575CFCC2F2BF976FDF4CD56E5E2BC455764589DC51C546E335FA
          8ED1C1825C33345DD68FB1755AAC7E2638DC7DEADE5EF3CF973CD1752D9E8F74
          66B8853D4747468CF1AD2A3975C969F5D87506B19B6BD6F64EA747112CB1A04D
          77B25CCE752C4B5AFCC5F2AF97F50934BD4EE9E2BC882B3A2C4EE28C2A37029D
          0E6067ED0C3865C33345DD68FB1757AAC7C78E371F7A3FCBBE6DD13CD293C9A3
          4CD325B15594B23250B0247DAF965BA7D563CE0981B0E2EBBB3B3E8C8194558E
          F456B9ADE9FE5ED3DF54D5243159C6CA8CEAA5C82E683619666CD1C513291A0D
          3A5D264D4E4F0F18B93175FCDDF23330517B202C428261900A934F0CD68ED7D3
          13425BBBC97B35AF02F83ED6731B89115D482AC03291B820EE336E1E688A3497
          EB9AE69DE5DB16D4B5590C568ACA8CEAA5CD5F61B0DF2BCD9A38A3C52341C9D2
          E9326A67E1E317263965F9A9E4CD42EE0B1B5BC91EE6E5D62894C2E01763402A
          466BB1F6AE9F24C4632B25DC66F67B5B8606728FA622CEE19A54FD3D336CF3AC
          2EEFF353C9B65733D9DC5DC8B716EED1CAA21720321A1DE9E39ABCBDA7A7C723
          194B70F4387D9ED6E5809C63B4877A73E5DF35E8DE698E79B4695A68ADD824A5
          D1A3A161514E5D732B4FAAC79C5C0DBADD6F67E6D2484728A2534BFBD834EB39
          AFAE895B7B7469656009211454EC3AE644E6211323C83898F1CB248463B92683
          0B3F9BFE453FF1FB2FFC8893FA66A25DB3A51FC4F47FE8635FCF83ED0CBB47D5
          ECB5CD3E1D534E73259DC02627652A4F1254EC77EA336B8F2472444A3C8BA0D4
          69E78321C73DA5147E58E3BFFFD3F7D62A82D4F51B6D2AC6E351BC7096D6C864
          9189F0EDF3390C93108991E41BB060966C8211166469F2BF983CC57DAFEB375A
          B5C48E86762522563C5231B2A800F619E5FAAD74F36433B23C9F76D0766E2D36
          08E3001A1B9AEA9D7E5C797EEBCD1E618E29A497F4759FEFEECF26A100FC295A
          FED1CD8763E2C99F36E4F0C5D57B41ABC7A4D39A038A5E98ECFA5E3448D42228
          5551450360067A1814F8C991277639E77F350F28E88DAA083EB323388628EBC5
          79B56849F0DB3075DAA1A6C672176DD93D9FF9ECE31DF087806A1AE79BBF3075
          0580892ED98FEEECADC110C60F88E9F4B67099353AAD74AA20D793EB58345A2E
          CAC7C4687F4A5F5166317E48DE9D04CD25D71D7F765B5A8300DFEC96EB5A77CD
          BC3D9F1E1593EBFB1E725ED8446A2847F75DFF00C4C36D352F387E5E6A2D1812
          D94A1A925B4A394128AF5A7423DC669E19F53A09D1069E8F260D0F6AE3BDA5E6
          3EA8BDEFC85E6FFF0019690F7CF6FF0056B8824F467406AA5A80D57D8E775A1D
          60D4E3E2AA7CA7B63B33F219B82EC1DD944B1A491B46E2A8E0AB0F107639B022
          F67480906C3E61F3EE857BE57F30CB606699AC24ACD60CCCC47A6C6A57AF553B
          679CF6AC3260CC6C9A3C9F6DEC3D562D5E984B84710F4CBF5A5FE57F32DE796F
          5BB5D523677891B8CF196243C4DB30A1F6E9987A2D764C194126C39BDA5D998F
          578258E85F4F7BEA9B1BCB7BFB486F6D5C496F3A2C9138DC1561519EA119090B
          1C9F09C98A58E6632E63644E49ADD8ABB157CDDF9C3FF29CDD7FCC3C1FF10CF3
          CEDFFF0019F83ECBECA7F888FEB148BC93AE37973CCB63A9934803FA37007FBE
          A4F85BEEEB983D97A9F03344F4E45DA76D68C6AB4B28751EA1EF7D548CAE8194
          D55802A7B107A67A8836367C1B70777CDDF9B7FF0029CDE9FF00221FF93633CF
          BB7BFC63E0FB2FB29FE223DE599FE4301F52D63FE32C3FF116CDB7B383F752F7
          BCDFB67FDF63F7326FCE103FC0B77FF19A0FF898CD8F6D7F8ACBE0E9FD97FF00
          1E8FB8FDCF9B5D41A83DF6AE79AF295BED4FA5FF002BBCC1FA77CA96E256ADE5
          87FA25C0EFF00F80FD2B9E9DD95A919B083D46C5F0EF68343F96D5C80E52F504
          3FE717FCA1171FF19E0FF89643B67FC5A4E47B2FFE3D1F71784794BFE52AD1FF
          00E62E1FF890CE0FB3B6D4C3DEFAB76B7F89E5FEA97D6A7A8F9E7AB3F3F17C91
          E6703FC4BABFFCC64FFF001339E51DA23FC227EF7DFF00B27FC531FF00543D67
          F2236D3B5703FDFF001FFC40E759ECE7F727DEF03ED9FF007D0F73D0FCE3FF00
          28A6B1FF003092FF00C473A0D57F752F73C87667F8D63FEB07C9C00A74E99E4B
          2E6FD02393E9CFCACFF94174AFF564FF00938D9EA5D99FE2D0F73E19DBFF00E3
          D93DECC7364E81FFD4F7CB7438ABC47F3A3CDBEA489E54B293F771D25D4483FB
          7D523FE2738FEDDD6EDE147E2FA5FB27D97B7E6663CA1FF14F2244791D228D4B
          4B21088A37249D8019C7463C52E1EA5F45948441913B0DDF4FFE5FF9593CADE5
          F86D6451FA427026BD7EFEA30FB3F251B67A876769069F088F5EAF85F6DF689D
          66A0CBF846D1F72DF3D79EAD7C976704CF17D6AF2E5F8C36DCB8D547DA6277D8
          60D7EBE1A58832EBC93D8FD9193B426444F0C40DE4C56C75193F38ACE4D3EF2C
          5B4DD26CE74966B847E6D23A83FBB5A814D8EE735D8B30ED2818CA24441E6EEF
          360FE43C8270909CE40EDDC3F9CF43D13CBDA4797AD45A6936A96F1FED301576
          3E2CC7739BBC1A78628D4050793D56B736AA7C59644A6B414CC87092DD6742D2
          B5DB56B3D56D52E613D390F897DD4F50729CB861923C3216E5E9B57974F3E2C7
          220BCF2FA71F93B6322E9D64FA8E97A84FCD6477E2617A01C1881BD46E0E6972
          CC767632631B16F598612EDDCA38E421388FF4DE6C87C89E7EB7F3A4572AD00B
          3BEB620B5BF2E758DBA303B77DB33343DA10D50D851755DB1D8D3D0486FC5197
          56BF32BCA8BE67F2FC9F575AEA7640CF68475341F127D2323DA9A4FCC6120731
          BA7B07B48E8F522CFA25E993E67208AA30208D8A9EA08DB7CF31C912362FB802
          25BBDA7F25FCD9EA4727952F24F8E2ACB6058F55EAC83E5D46771D85ADE38F85
          2E6393E61ED676670C86A62363F5FEB7B22E758F9E5B78ABB157CDFF009C3FF2
          9CDD7FCC3DBFFC433CF3B7BFC67FCD0FB2FB29FE223FAC5811151B8D9B6AE73E
          2EAFB9EB6DF4C7E586BFFA7FCA76AD2B72BCB2FF0045B8AF5AC7F649F9AD33D3
          7B2B55E3E007A8D9F0EEDFD17E5757203E997AA3F17907E6E823CF379FE54701
          1FF22C0CE4FB7FFC63E01F44F64FFC47FCE2CCFF0021BFDE3D63FE3243FF0011
          6CDC7B39FDD4BDEF37ED97F7D8FDCC97F387FE506BCFF8CD07FC9C19B0EDAFF1
          597C1D3FB2FF00E3D0F71FB9F37115A802B5CF360092407DA4EDBBD13F26F5E1
          A5F991F4B99A96DAA2705A9DBD74DD3EF1519D27606A78329C67949E2BDADD0F
          8BA719473C7FEE5E95F9C43FE748B8FF008CF0FEB39D2F6C7F8B49E2FD97FF00
          1F8FB8BC23CA5FF294E8FF00F31707FC4C6707D9FF00E330F7BEAFDADFE2797F
          AA5F5AF71F3CF57EAFCFC5F2479A3FE525D5FF00E6327FF899CF29ED2FF189FB
          CBF40764FF008A63FEA87ACFE447FC73B57FF8CF17FC40E757ECEFF732F7BC07
          B65FDFC3DCF43F38FF00CA2BACFF00CC24DFF11CE83546B0CBDCF21D99FE358F
          FAC1F270DF7CF243CDFA0BA3E9CFCACFF94174AFF564FF00938D9EA5D97FE2D0
          F73E15DBFF00E3D93DECC7366E85FFD5F6E79B7CC50796342BBD56623D445E36
          F19EAF2B6CA07EBCC4D5EA23831199765D9BA296AF3C7147E3E41F2B5DDDCF7F
          753DEDD3992E6E18CB23B77663539E599724B24E523CC97DEF0E18E180847603
          67A2FE4EF950EADAB37982F23AD8581FF47E5FB771DBE851BE74BD83A4E391C9
          21C9E27DABED318B178103EA97D5FD57BDCF3456D0493CEC121894BC8E760154
          549CEE0911167907CAA11329088E65F2FF009A35BBDF3DF9AF9DB82C93CA2D74
          D87B88EB41B7BF539E6BABCF2D6EA6872BA0FB7F66E931F6668FD5CC0E29BE8A
          F2A7976DBCB1A25B6936E01318E73C9DDE56DD9B3D074BA71831880E8F8FF68E
          B65ACCF2CB2EBCBCA3D13DCCA75CEC55D8AA51E63D0EDBCC3A45D695742B1CE8
          4231FD8906EAC3E4731F5184668181EAE668B573D2E68E48F42F9AF46D4751F2
          0F9B95E7461359CA60BE8BB3C35F8BE7B6E33CEB06596875547BF84FB9F68D5E
          0C7DA7A2F49FA85C7FACFA86CEEEDEFED61BCB47125B4E8248DC742AC2A33D2E
          3212008E45F0FCB8E58E46321445DBE7DFCDAF2A7E80D70EAD6B1F1D335325CD
          3ECA4FD587D3D46703DBBA4F0B278A07A4F37D73D98ED3FCC60F0A47D70FB62C
          1F4DD42E74AD42DF54B372B736CE24461E23B7C88CD160CC7064131EF7ABD569
          E39F14B1CF9483EACF2CEBB6DE63D1ED756B53F04EBFBC4EE920D994FC8E7AAE
          9F38CD8C4C750F816BB473D2E696397309C664382EC55F377E70FF00CA7375FF
          0030F07FC433CEFB7FFC67FCD0FB2FB29FE223FAC5224D2FEB7E4DB8D5235ABD
          85F224B4ED1CF1D2BFF040662F83C7A23203E92ECA5A9F0FB40633CA70FB6259
          4FE4CEBA74EF31CBA4CAD4B7D4E3A2787AD1EEBF78A8CD97B3FA9E0C8719FE27
          45ED6E8BC5D38CA39C0FFB1287FCE65E1E7566A7DBB585BE9DC7F0CABB7F6D40
          F70723D9137A2FF38B2BFC86FF0078F58FF8C90FFC45B36FECDFF752F7BCF7B6
          7FDF43DCC9BF387FE506BBFF008CD07FC9C19B0EDAFF001597C1D47B2FFE3F0F
          71FB9E11E52B78EF7CCBA759CD4F4EE25F45ABFF0016A95AFD15CE1FB3E027A9
          00F5D9F53ED7C871E96731CC0BF9140BADDE85ABBF0252EF4DB8207621E17FEC
          CA2465A7D413CB84B93131D569C5EE3247EF7BAFE61EA30EB9F95FFA56DCD63B
          8FAB4DB6F425A8C3E83B6779DA1319B44643A8B7CA7B130CB4FDA831CB98262F
          15F28FFCA53A3F6FF4B87FE263387ECEFF001987BDF51ED6FF0013CBFD52FAD4
          F51F3CF56EAFCFA5F24799FF00E524D5CFFCBE4FFF001339E53DA3FE3331E65F
          7FEC9FF14C7FD50C9FF2FBF302D7C976D7B6F7166F74D7522480A304E3C41143
          507C7367D97DA90D2633190B749DB9D8793B427194642341926B7F9CF63AAE91
          7DA647A5CB1BDDC2F0AB9914852E2952299B1CFDBF8A7031113643A5D27B2797
          0E68CCCC54483C9E3E053B6D9C61E6FA507D39F959FF00282E93FEAC9FF271B3
          D47B2FFC561EE7C2BB7FFC7B27BD98E6CDD0BFFFD6F45FE798D5BEB5A6BB1FF7
          09C488F8D7FDE8EFCBE8E99C87B43E270C7F9AFA57B1BE0FAFFD53FDEBC894A7
          A89CFEC7205EBFCB5DF38DC64710F7BE8F3BE135CE9F5AF97CE94DA55B1D1CC4
          6CB82F0F429C6BC457A77F9E7ACE9CC0E31C154FCF5AC194663E2DF15F548BF3
          3ACB56BDF28DE45A4C9C5928F73181F14902EECA08E9E3989DA58E73C0441D9F
          6065C38B59139391E5E52E8F25FCA0D4342B3F3198F54897EBD3D23D3A761511
          C9BD47B161D3392EC1CB8C65225F5747D07DAAC19F26984B19F4C7EA1DE1F462
          E7A0D3E3CBB025D8ABB155ADE1DF143E7CFCE7BFD12EB5F8ADEC231FA4ED948D
          42E145031A0E0A4F72B9C276FE5C672088FABABEB7EC960CF0C0653FA25F407A
          3FE51D9EAB67E4FB61A9B9292B34B671B0A3242DD013EE7719D1F63E39C34D11
          378CF6972E2C9AD9787D3EAF3927FE6D6D1D742BBFD31E8FD5CC5270FAC538FA
          9C0D29DEBF2CCED57078678FBBABA9ECD197C78F857763E9EE7CA2295246DE03
          DB3CA275C5B72B7E80175BBD9BF2286AFE96A6C6A3452CBC3977B8EFC7E8FB59
          DBFB3E32701BFA7A3E65ED89C3C70AFAEB7FEABD9F3AA7CEDD8ABE6FFCE1FF00
          94E6EBFE61E0FF0088E79DF6FF00F8CFF9A1F66F653FC447F58A7BF951A5C7AE
          7963CD3A4C94A5C7A6A95ECFC18A9FA0819B1EC4C7E2E0C902E9FDA7D41D3EAF
          0641CC7EB797DBCB75A3EA8938252F2C670D4E843C4DB8FC339885E0CDE712F7
          39230D56023A4E3F7B33FCD8BC8B54D6B4CD5E03FB9BED3A1953EF6A8FA0E6E7
          B72427284C7F1079BF65F19C58B2623CE132CBBF21BFDE4D63FE3243FF00116C
          DC7B39FDD4BDEF3BED9FF7D0F7326FCE1FF941AF3FE3341FF270667F6DFF008A
          CBE0EA3D97FF001F87B8FDCF08F291E3E6AD19BFE5EE1FF890CE1BB38D6AA3EF
          7D4FB5C5E8F27F5594FE7268674CF339D4635A5AEA8825A8DBF7C9F0B8FA7639
          B4EDDD37066193A4B9BA0F64F59E2E98E33CE1FEE4AEF2FEB1F5DFCB1F31E852
          9AC963C2E6053D7D29245A81F23FAF2CD1EA0CB43381E70FB986BF49E176AE1C
          C394FD27FAC0311F297FCA55A3FF00CC643FF1319A7D0FF8D47DEF4BDADFE279
          3FAA5F5AF71F3CF547E7E3C9F24F9A0FFCEC9AB8FF0097C9FF00E4E1CF29ED23
          FE112F7BEFFD93FE298FFAA1DA479675ED79259348B192ED2160B298E87893B8
          AD7060D0E6CE0980BA65ABED3D3E9481965C24A32EBC87E6FB3B792EEEB499A3
          B7854C92C8C051557A9EB974FB2B53006463B071B1F6EE8B2484633B24D063A3
          B7D3B66A8BBC7D39F959FF00282E95FEAC9FF271B3D4BB33FC5A1EE7C2BB7FFC
          7B27BD98E6CDD0BFFFD7F6F79AFCBD6FE65D0EEB4A9800F22F28243FB12AEEAC
          331753A78E6C6625D87676B25A4CF1C91E877F30F956F2CEE34FBDB8B1BB5F4E
          E2DD8C72A1ECCA699E579F14B1CCC0F38BEF9833472E38CE3CA5BBD07F27FCD9
          FA1F583A0DE484586A27F7258EC93F6F9721B6745D85ADE09F8723B4B93C6FB5
          3D963361F1E03D50FABFAAFA04A8752AC2AA41041EE33BB3B87C9412393E68FC
          C4F2C49E51F327A9640C76174DF5AB1917F61B95592BFE49E99E79DA9A53A6CE
          271D81DC3ED1D83DA035DA5E19EF288E197EB7B87907CD29E6AD021BC6205F41
          FB8BD4EE2451D7E4C37CECFB3F56351884BAF57CCBB67B38E8B5061FC2778FB9
          95E6C5D23B156AB8AB1CF3B799A1F2AE8373A93906E4831D9C47AB4CC283EEEA
          73075BA91A7C4667E0EDBB2B412D66A238C72FE23FD1780791BCBD71E74F3427
          D6F94B6E8C6EB5199AB5209AD09FF28ED9C276769E5ABD4F1CBA6E5F59ED9D6C
          7B3B4950D891C300FA7A3448A358A301234015546C001B0033D240A0F88C8991
          BEA4BE76FCD7F35FE9FD77F465B3F2D374D25169D1E6E8EDF47419C076E6B4CF
          27044ED17D83D98ECCFCBE0F1643D53FB22C274CD3AEB58D42DB4BB45E775732
          2C683B0AF53F21D7347A7C32CF90423CCBD46AB510D3E2964972887D5DE5CD0E
          D7CBBA45B691683F776EB466EED21DD98FCCE7A9E9F0C7163101D1F03D76AE5A
          ACD2CB2EA536CC8709D8ABE6FF00CE1FF94E6EBFE61EDFFE239E79DBDFE33FE6
          87D9BD94FF00111FD62CB3F21C9F435D03FDF901FF00857CDB7B387D13F7879E
          F6D3EBC5EE2C53F37340FD0FE696BE8578D9EA8BEBA91D04A36907DFBFD39ABE
          DCD278798E41CA43ED77BECB6B7C6D2F867EAC7B7F9AC32EB5096F2D2C2D66DC
          D923C68DFE4337303E8A9CD366CC72638C4FF0BD2E1D3471649CC7F1D1F8BD83
          F21BFDE3D63FE3243FF116CEC3D9CFEE65EF7CE7DB2FEFA1EE64DF9C3FF282DD
          FF00C6683FE4E0CD8F6D7F8ACBE0E9FD97FF001F8FB8FDCF03F2D1E3E64D24F8
          5DC07FE1C6705A1FF198FBDF58ED317A4C9FD52F7CFCD7D03F4DF956E2789395
          E69A7EB51506E5576703E637CEFF00B5B4DE36035CC3E47ECDEB7F2FAB009F4C
          FD25F3CE9FA84D602E42EF1DDC0D6F2A8EE1E847DC4039E77A7D44B1997F4870
          BEC7A9D30CDC27AC4F1046794853CD3A38FF0097B87FE2632FD07F8CC3DEE3F6
          B7F89E5FEA97D6BDC7CF3D55F9F8BE49F33FFCA49ABFFCC64FFF001339E53DA3
          FE313F7BEFFD93FE298FFAA1EB3F911FF1CED63FE33C7FF1039D5FB3BFDCCBDE
          F01ED90FDFC3DCF42F38FF00CA29ACFF00CC1CDFF11CE8357FDCCBDC5E47B33F
          C6B1FF00583E4E1B533C9A46CBF413E9CFCACFF941749FF564FF00938D9EA1D9
          9FE2D0F73E15DBFF00E3D93DECC7366E85FFD0F7C9E8715789FE747944A3A79A
          EC63D9B8C5A82A8EFD1643FA8E71FDBDA1E21E2C46FF00C4FA4FB27DA95FE0D3
          3E70FD4F2052E8CAF1B9575F89186C4106A08F9671D1918CAC74E4FA39889020
          8D8BE9DFCBCF35279A7CBF0CF230FD236D486F57BF351B37C986F9E9DD9DAB1A
          8C20F51B17C33B6FB38E8B50623E93BC7E29A7993CA9A3F9AACD2CB578D9E289
          FD48DE33C1D5A94D8FBF7CC8D56971EA23C33161C3D076866D1CF8F11A2582EB
          5A6E9DF94BA70D73CBB1CB2B5C4F1C1776D712978E48CD4EDB6CC3B1CD4E6C70
          ECDC4678C5EFB87A3D2E6CBDB797C1CC40A0786406ECA3CA9F985E5FF34C4A96
          D30B7BFF00DAB2988592BFE49E8C3E599FA3ED1C5A88DC4D1EE751DA3D8BA8D1
          1F50B8FF003872655CF364E898CF9A7CF9A0795A322F6712DE9154B388869491
          E3E03E7981AAD762D38F51F875771D9FD8FA8D69F40A8FF38B14D120B0FCDEB3
          9F51D7E29218AC273159DBC1295555650D56EB56F7CD76030ED18714C551D9DE
          EACE5EC4C8218482643D4699AF96BCA5A3F94E09A0D2236513B7395E46E6E481
          402BE0336BA6D263D38A80E6F39AFED2CDAC909653CB924DF999E6C1E59F2FC8
          B6EE1754BE061B51DC023E27FA066276A6B069F1137B9763D81D99F9CD48B1E8
          8EF27CD458925C9AB1A9A9EA49EB9E6329191B2FB70881403DAFF25FCA66285F
          CD37B1D249818AC030E89FB4E3E7D33BBEC3D17043C490DCF27CC3DACED3E39F
          E5E0761F5FBFB9EC206752F9E86F15762AF9BBF38B6F3CDCFF00CC3DBFFC473C
          EBB7F6D4FC1F66F64FFC447F58B2DFC86DA2D77FD7B7FF0088BE6DFD9BFA67F0
          79EF6D7EBC5EE3F7B28FCD7F2FFE9CF2ACD3449CAEF4E3F5A8A9D4A8D9C7D233
          6FDADA6F1701AE71DDD07B37AEFCBEAC59DA7E93FA1F37576A76A533CC6DF6CE
          6F6CFC87DACF59FF008C90FF00C45B3BBF673FBA97BDF2EF6CFF00BEC7EE649F
          9C3FF2835DFF00C6683FE4E0CD8F6D7F8ACBE0EA3D96FF001F87BA5F73C0FCBA
          7FE762D2FF00E62E0FF9383383D17F8C47DE1F58ED2FF15C9FD52FAD258D2559
          2290068DC157077041D88CF5422F67E7E048363A3E50F37688FE5CF315F694DF
          DDC7217849EF13FC487EE39E5DDA5A7F03398FC5F7BEC9D60D5696193AD51F7A
          DF29FF00CA55A39F1BB84FFC38C8F67FF8CE3F7B676AFF0089E5FEA97D6A7A8F
          9E7AABF3F17C93E68FF949357FF98C9FFE2673CA7B47FC627EF7DFFB27FC531F
          F543D63F223FE39DABFF00C678BFE2073ABF677FB93EF781F6CBFBF87B9E87E7
          1FF945358FF98397FE2273A1D50FDD4BDCF21D99FE358FFAC1F2683B0CF233CE
          DFA0DF4EFE567FCA0BA57FAB27FC9C6CF52ECBFF001687B9F09EDFFF001EC9EF
          6639B3742FFFD1F7D62A84D46C2DF53B1B8B0BB50F6D728D1CAA7C1B21920271
          313C8B761CD2C5904E3CE2767CAFE60F2CEA5A06B375A5496F23C70B110CA88C
          CAD19DD48A0EE33CCB55A0C98B29888923A3EE9A1ED4C3A8C11C9C401237B3D5
          39FCBBD6F51F2BF9862965B69FF475DD20BC5F4DE8149D9FA7EC9CCDEC8C9974
          F968C4D4BC9D576FE0C1ACD39A9C78E3EA8EE3E4FA5A399254124643C6C2AACA
          6A08CF4206DF1B944834529F32F96B4FF34E98DA5EA5CBD12C1D1E3346575E84
          663EA74F1CF0E097273B41AEC9A4CA3263E61E0BE6AFCB1F307959CDEE9E1EFB
          4F8CF25B9801F563A77751B8F98CE1F57D91974C78F1EE1F55ECEF68B4FAC1C1
          97D323D0FD27DCB13F363CD71E84DA37AAA67A701A8B72FAC8527A7857B5723F
          CB79FC3E0237FE775652F6634873F8BFC3CF83F85AF2C7E5BF993CDB2FD72EC3
          DA69F29E6F7B7352EF5DC9407738E9BB2736A4F14F61DE79A75FED0697431E0C
          7EA90FE18F20F7AF2AF95B4EF2969C74ED3B91576F52696435679294AFB6771A
          5D2C7043863C9F2AED0ED0C9ACC9C7939A732CA9123C921E31A02CC7D86F9964
          80EBA2388D0E6F98FCF9AAEABE67F304BA835A4EB62958AC50C6F4F454D2BD3A
          93BE79D76ACB2EA32FD2787A3ED5D878B068F4E23C71E23BCF7082F2BF956FFC
          C5ADDAE99E8491C0EDCEE25742A1625FB4771D7C331B43A09E5CA0104072FB4F
          B5B169B4F2989027A517D4D65696F636B0D9DAA08EDEDD1638906C02A8A0CF4C
          8C444003907C3726439246679944649ADD8AB47A62AF0CFCCEF26F9A75BF36CF
          7FA56992DCD9BC30AACA85002556846EC338CED8ECFCF9B37142361F4FF677B5
          F4BA6D208659F0CACB23FC9FF2E6B9E5F8F565D6AC9ECDAE1E130872A79050D5
          FB24F8E67F62693269E32E31574E97DA8ED0C1AB963F0A5C540DBD36489658DA
          390728DC15707B8228467487778B04C4D87CDBAD7E5879BADF56BC8B4CD324B9
          B012B1B6990A05319351D581DBA679DEABB1F38C92E08DC6EDF65D1FB47A3386
          3E24F8675EA0F48FC9FF002EEB9E5EB5D5135AB37B379E48DA20E54F20AA41FB
          24E747D8BA5C9A7C644C55BC67B4FAFC1ABC9038A5C4004F7F3374AD475BF295
          CE9FA5DBB5CDEBCB0B2C4B40484704F52074CCEED3C32CDA79461CDD67B3FAAC
          7A6D5C72643C3100FDCF1BD0FF002F7CEB6DADE9F7573A3CD1DBC3731492484A
          51555C12766ED9C7E93B2F531CD194A34017D1B5DDBDA2C9A79C239012627BDF
          498DC9CF437C639BCAFF0036FC93A96BD2596ABA1DA9BABF881B7B88D388631F
          556A923A1A8CE67B6FB3E79C0940590F75ECC76BE3D2F163CD2E189F57F9CC13
          CB7F97DE73B3F306997777A44B15B417313CB2129408AC093B3669345D99A886
          784A51A00BD576976F68B269B242392CCA269F4793DFE9CF427C6CBE6ED7FF00
          2FBCE977AEEA5756FA3CB25BCD7334913864A1567241FB5DC679EEB7B2F533CD
          294636097D8FB37B77458F4D8E32C8011116F47FCA0F2F6B5E5FB2D4A2D6ACDE
          CE49A58DA2572A792AA904FC24E745D8DA5C983191315BBC77B4FAEC3AACB196
          29710019AF99EDA7BDF2EEA9676A865B99EDA48E18C756665A01BE6DF51132C7
          203990F39A1C91C7A884E5C8483E711F96DE7AA7FC7126FF00828FFE6ACF3A3D
          8DAAFE6BECBFE88BB3FF00D507DAF7DFCBDD3EFB4AF28E9FA7EA3035BDE421C4
          B1352A2AEC47427B1CF40D0E2963C118CB987C93B633C336AE7381B893B328CC
          D74EFF00FFD2F7D62AEC5567015E83EEAE2556BC6BE9BEC3EC9EDED913C8B289
          36F9A743FCC2F30795AFA68A097EB3A77AD272B296A569CCFD93D573CFF176B6
          5C1908E71BE5DCFB36ABB074FACC5135C33E11EA0F6BF2AFE62F97BCD2AB0C33
          7D5B51A7C567310AC4FF00927A30CEBF49DA38751C8EFDCF9AF68F626A3466E4
          2E3FCE0CB6818107EECD9D5BA1F731C93C87E5593571ADBE9B11BD1D453F765B
          F98A74AFBE611D0E1393C4E116ED876BEA861F084CF0FE3AB22002A855140360
          074A6661D9D4DDEEC37CD7F995E5DF2C07B732FD73520282D613CA87FCB6E8B9
          AAD676A61D3F33EAEE7A2ECDEC0D4EB0F101C31FE74BF43C7AE7CFDE62F34798
          34E1757060B21750FA7690928807A83AF763F3CE50F6B65D46A202E85BE891EC
          2D3E934D3205CB84FA8FB9F4988D48E83EECF417C6ACDB6235076007C85315B5
          C0530A1BC0AEC55A3D31578D79A3F3C26F2F7987CDBE5C5D2126BCF2FB6946C1
          DE5754BB86FE6B78AE09214F16805C2B5056AB842A85CFE74EBD058F9DB524D3
          34B687CB1AA9D16CAD0DF482F2693EB915A89A78C467D388FA9C830E5BAD3155
          B3FE7C5F5AD8E9F24FA2C02F975EBCD135C11DCBBDBC56DA6C91C771776F27A6
          0C8B59A3E2AC17F6BC31A43D07C9BE6F9BCD1ABF9BF4C9AD12D97CB3AB7E898A
          5472E674FABC53FA8C081C4D64A5078604B0AF26FE76C9E6ABFD2F4C934A8ECE
          F6EB5BD4746BE8CCAC7D282CA09A782E12AA3909962A6FF6487FE5C348497FE5
          7CF9AAF7C9BAD79B348F2DD93BE8DA9C56B25A5D5EC911934EBDE02D2E54AC4D
          F1485C557ECF1DD58E14A7771F9BFAF585D6B5A15FE856CDE6AB0BED1345B0B4
          82E9CDB4FA86B96FEB1E72B460AC5151BE20952ABD302A0ACFF3F649353D074B
          BFD152D67D4D358B4D4489CC896BAB69137A0B0720A03473B0A239A37C49B634
          A995A7E725D5C6B1F97DA6C9A4C6B6FE70D3E0BED4EE44CDFE8325F2B7D5A350
          57E3E6E8EBF115E9810C9FC99E77B8F35683AF6B135925AC9A36A7AA69A90A39
          7122E9921457248142F4DC76C484BCEF4CFF009C8DB7BAD197589F4D8250BE58
          8FCC3716B6773EACA97F3DEFD4E3B23B7C35254966F8872FB385532BBFCE9D6F
          4EB09ECB51D0ECECFCE36BAE41E5EBB866BF2BA4C0F776DF5A86E24BAF4B92A3
          A9E0014AFA9F0E2A88B8FCE0D6AC3CF49E57BED1AD0E9A352D3343B8B8B7BB77
          BA5BDD56D0DC891223180D0A10558F20D4F8A98152CD2FF38FCFBAEC9E4C6D2F
          CB7A59B2F36CF7D6CB24D7F323C2FA64F32CDF0884D47A51064DF773C7DF0AA2
          6E7F3CEEA087F30254D1A22BE50922FD145A7602FEDDEEDACA490FC3F070951C
          7C3CB02BDA16B404F700FDF8A8E4BB157FFFD3F7D62AEC55D8AB4C2A8C3C4118
          08B48E6F94BCD3E57D6BCBBA84DFA4ED9920924778AE17E2898331228C33CC75
          DA1CD8B248C86D7CDF77ECAED2C1AAC511096E001C3D5215768DD648D8ACA86A
          AC09520F8D466AA04C4D8E6EE6511214770F46F28FE6F6B1A398ECF5CE5A8E9F
          5004B5A4E83A75FDA03DF3A7D0F6E4E044727A877BC4F6A7B2D8B35CF0FA65DD
          FC25EDB37993468B4C3AAB5E446D562F5B675E4452B402BD7B67687538C478AC
          727CCA3A1CC728C62278AEB93C3BCDBF9B7ADEB7EA5A690C74CD3AA54F1359E4
          5F76EDF46715AEEDC9CC98E33C21F50ECCF65F0E00279BD72FF621E78C4125DC
          F263BB54EE4F8939CCC8F11BB7B388A1439329F23F95B59D7B58B4B8B1B66365
          6D3C724F72FF000C6A1181201EE76ED9BAECDD0CF2658CC0DA27ABCFF6D76A60
          D3E194652F5481003EA35E99E94F87378ABB15762AEC55C71578AF9EBF24752F
          375F6B5AA5B6A305A5FDE6B3A6EA9A74A44955B5B586182EADE5A0E9288EA38F
          754C21081BBFC93F345E5AF9E347964D08E95E6BD59B578AF7D29FF48F07BE86
          E4DBDC3F1E2D1848D8003F6DB02534F3F7E4643E6D97EADA3DC45A168561A25D
          69FA25858F2B548F52BB9D6632CCB12D1A13E9A7251F131DF154EBC87E4DF3BF
          957CDBE63D4350BBD2EE7CBDE63BB1A9CE211702F92EC5AC305072023E04C44F
          F36F8AB0AB2FC83F3169573A46B3A76AF68BAEE9FF00A7D6E4B89BEAF30D55AE
          9AC5B65E41ADFEB2437F935E3DB0AAB5B7E416AFA5F97F5AF2EE9BADACF69ABE
          9FA15B97BF796578EF3469C3C8CA69B42C838C683EC7CB154F75EFCA3D6754F3
          0799BCC965A9DB5AEA37BAAE89AEF97CC88F224573A25B984A5CA8E35497930F
          81ABC4E2A924FF00F38FD7B776A6DEF35785E6B9D3B5817D77146F130D6B56BE
          8AFA2B985456890BC600A9E7403155087F213CC95D3F519F5D89758D162F2D41
          A6470C93AD8B2E80C1E733C657E232334862FE4AD4F7C0ACCFC89E48F38795C7
          9AB49D46E74D9FCBDACDEEA5A969AF6E27178936A5297E33730138A83FB1BD71
          560BA3FF00CE35BD8E8DFA224BCB1B2927F2C43A25F5ED8425649356B7BE1789
          78C0AAFA8BF0AA9E4799A61B564D27E57F9C26F2E798EDAEEFB43BFF003179CE
          EBD5F31497965349A7ADBADB2DAC6B6F17A81B9C6143A973F6BF9702A61F97FF
          0094163E4ED7EFF5CD47EAFAC5EFA1A6DAE8FA9CF1F3BE863B1B25B590B3B0F8
          4C85797C07A6D85503E57FCA6D73CBF6BE428A4BEB49A5F28DD6B57574544816
          6FD2BEB1882545471320E7CBFD8E2AC4FF00E85E3CCF068B756B6FAFC33EA7AA
          E8F3586AA6F1E796D85F49A8A6A08F6E38F248797A8197ED55B978E057BAF97C
          798469500F349B33AD8E42E0E9BEA8B5A54F1E1EB7C7F6695AF7C5534C55FFD4
          F7D62AEC55D8ABB15435D58DADF40F6B790A4F6EE28F1C8A1948F91C8CA02428
          EE1B31E496397144D1F2791F9B7F25E393D4BEF2B49E9B8AB1B094D50FFA8DDB
          E47396D776146678B16C7B9EFF00B33DAC946A1A8163F9E1E41A869D7DA5DC35
          9EA36EF6D72868C922D3FCC671F9B4F3C52E190A7D1F4FA9C79E3C58E42410A6
          A6A2A694FB35DA99471C88E6DE2206F48CD2B4AD4759BA5B1D2EDDAEAE588A2A
          02788F127A0197E9F4D9329A80BBF271B55ABC5A78F1E497087B2794FF00262D
          ADB85EF99E417330A30B38CD23047F3377CECF47D850C752C9EA2F9AF69FB573
          C971C03847F3BF89EAF6F696F6912416B1243020A247180AA07C8674F18888A0
          F099272C878A46C9561858378ABB15762AEC55D8ABB15762AEC55D8ABAB8ABB1
          5762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABFFFD5F7D62AEC55D8ABB1
          5762AD5314251AEF96B47F31DB1B5D5AD5275A7C0F4A4887C5586E331F3E9E19
          854C5B9FA3D766D2CF8B1C8879A27E45423552F26A4CDA3755882D2E3FD52DD2
          9EF9CEC7D9FC7E2F113E9EE7B497B63338684071FF003BF85E9DA3797B49F2FD
          B0B5D26D52DE3A7C4CA3E363E2CDD4E74787043146A0283C4EAB5B9B533E2C92
          324D065EE1B78ABB15762AEC55D8ABB15762AEC55D8ABB15762AEC55D8ABB157
          62AEC55D8ABB15762AEC55D8ABB15762AEC55FFFD9}
        Stretch = True
      end
      object QRLabel59: TQRLabel
        Left = 240
        Top = 19
        Width = 270
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          635.000000000000000000
          50.270833333333330000
          714.375000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nepal National Hospital'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel59Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRLabel_HosSloganTitle: TQRLabel
        Left = 268
        Top = 1
        Width = 162
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          709.083333333333300000
          2.645833333333333000
          428.625000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '(ISO 9001 : 2008 Certified)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel60Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel_HosAddress: TQRLabel
        Left = 260
        Top = 46
        Width = 177
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          687.916666666666700000
          121.708333333333300000
          468.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Kalanki-14, Kathmandu, Nepal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel_HosAddressPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = -1
        Top = 70
        Width = 821
        Height = 1
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          -2.645833333333333000
          185.208333333333300000
          2172.229166666667000000)
        XLColumn = 0
        Pen.Color = -1
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 573
        Top = 52
        Width = 117
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1516.062500000000000000
          137.583333333333300000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VAT No. 500081118'
        Color = clWhite
        OnPrint = QRLabel5Print
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 222
        Top = 136
        Width = 496
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          587.375000000000000000
          359.833333333333300000
          1312.333333333333000000)
        XLColumn = 0
        Pen.Color = -1
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel_BillStatus: TQRLabel
        Left = 573
        Top = 65
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1516.062500000000000000
          171.979166666666700000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patient Copy'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object lbl_billtype: TQRLabel
        Left = 7
        Top = 72
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          190.500000000000000000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Invoice No.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel24: TQRLabel
        Left = 7
        Top = 87
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          18.520833333333330000
          230.187500000000000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Inv. Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 71
        Top = 87
        Width = 4
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          187.854166666666700000
          230.187500000000000000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 71
        Top = 72
        Width = 4
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          187.854166666666700000
          190.500000000000000000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_InvoiceNo: TQRLabel
        Left = 80
        Top = 72
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          211.666666666666700000
          190.500000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Invoice No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_InvoiceDate: TQRLabel
        Left = 80
        Top = 87
        Width = 85
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          211.666666666666700000
          230.187500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2012/03/26 02:45'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 37
      Top = 157
      Width = 698
      Height = 51
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        134.937500000000000000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = True
      Master = QrBill
      DataSet = QueryBill
      FooterBand = GroupFooterBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 263
        Top = 1
        Width = 200
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          695.854166666666700000
          2.645833333333333000
          529.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QueryBill
        DataField = 'Test'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText1Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 538
        Top = 0
        Width = 48
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1423.458333333333000000
          0.000000000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryBill
        DataField = 'Rate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 591
        Top = 0
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1563.687500000000000000
          0.000000000000000000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryBill
        DataField = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 640
        Top = 0
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          0.000000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryBill
        DataField = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.00'
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 228
        Top = 0
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          603.250000000000000000
          0.000000000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryBill
        DataField = 'SN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 485
        Top = 0
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1283.229166666667000000
          0.000000000000000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryBill
        DataField = 'TESTCODE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '#0.00'
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 263
        Top = 30
        Width = 200
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          695.854166666666700000
          79.375000000000000000
          529.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QueryBill
        DataField = 'PackageTest'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRLabel53: TQRLabel
      Left = 213
      Top = 326
      Width = 55
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        563.562500000000000000
        862.541666666666700000
        145.520833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Episode No'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel55: TQRLabel
      Left = 281
      Top = 326
      Width = 4
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        743.479166666666700000
        862.541666666666700000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object Lbl_EpisodeNo: TQRLabel
      Left = 291
      Top = 326
      Width = 62
      Height = 15
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        769.937500000000000000
        862.541666666666700000
        164.041666666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Episode No'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = lbl_SchemePrint
      ParentFont = False
      Transparent = True
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel10: TQRLabel
      Left = 43
      Top = 233
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        616.479166666666700000
        82.020833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Name '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel_HosNoCap: TQRLabel
      Left = 43
      Top = 213
      Width = 58
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        563.562500000000000000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Hospital No.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel16: TQRLabel
      Left = 43
      Top = 270
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        714.375000000000000000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Address '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_Addres: TQRLabel
      Left = 116
      Top = 270
      Width = 43
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        306.916666666666700000
        714.375000000000000000
        113.770833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Address'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      OnPrint = lbl_AddresPrint
      ParentFont = False
      Transparent = False
      WordWrap = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_Name: TQRLabel
      Left = 116
      Top = 232
      Width = 35
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        306.916666666666700000
        613.833333333333300000
        92.604166666666670000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Name '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object Lbl_HosNo: TQRLabel
      Left = 116
      Top = 213
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        306.916666666666700000
        563.562500000000000000
        171.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Hospital No.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel18: TQRLabel
      Left = 107
      Top = 232
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        283.104166666666700000
        613.833333333333300000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel19: TQRLabel
      Left = 107
      Top = 213
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        283.104166666666700000
        563.562500000000000000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel21: TQRLabel
      Left = 107
      Top = 270
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        283.104166666666700000
        714.375000000000000000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel2: TQRLabel
      Left = 43
      Top = 250
      Width = 60
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        661.458333333333300000
        158.750000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Age/Gender'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 107
      Top = 250
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        283.104166666666700000
        661.458333333333300000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_agesex: TQRLabel
      Left = 116
      Top = 249
      Width = 24
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        306.916666666666700000
        658.812500000000000000
        63.500000000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Age'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
    object QRLabel8: TQRLabel
      Left = 43
      Top = 287
      Width = 57
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        113.770833333333300000
        759.354166666666700000
        150.812500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Contact No.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel9: TQRLabel
      Left = 106
      Top = 288
      Width = 4
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        280.458333333333300000
        762.000000000000000000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_contactno: TQRLabel
      Left = 116
      Top = 288
      Width = 73
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        306.916666666666700000
        762.000000000000000000
        193.145833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '############'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      OnPrint = lbl_contactnoPrint
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel49: TQRLabel
      Left = 44
      Top = 304
      Width = 40
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        116.416666666666700000
        804.333333333333300000
        105.833333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Scheme'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel50: TQRLabel
      Left = 107
      Top = 303
      Width = 4
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        283.104166666666700000
        801.687500000000000000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_Scheme: TQRLabel
      Left = 116
      Top = 304
      Width = 46
      Height = 15
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        306.916666666666700000
        804.333333333333300000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Scheme'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = lbl_SchemePrint
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object Lbl_DocDept: TQRLabel
      Left = 117
      Top = 122
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        309.562500000000000000
        322.791666666666700000
        129.645833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Doc/Dept'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      OnPrint = lbl_SchemePrint
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel61: TQRLabel
      Left = 44
      Top = 121
      Width = 51
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        116.416666666666700000
        320.145833333333300000
        134.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Doc/Dept :'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel62: TQRLabel
      Left = 108
      Top = 121
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        285.750000000000000000
        320.145833333333300000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel67: TQRLabel
      Left = 193
      Top = 210
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        510.645833333333300000
        555.625000000000000000
        82.020833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'IP No. '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel68: TQRLabel
      Left = 226
      Top = 143
      Width = 4
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        597.958333333333300000
        378.354166666666700000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel_IPNO: TQRLabel
      Left = 235
      Top = 210
      Width = 31
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        621.770833333333300000
        555.625000000000000000
        82.020833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'IP No.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QrBarcode: TQRAsBarcode
      Left = 44
      Top = 172
      Width = 118
      Height = 26
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        68.791666666666670000
        116.416666666666700000
        455.083333333333300000
        312.208333333333300000)
      XLColumn = 0
      BarcodeHeight = 25
      BarcodeWidth = 118
      Modul = 1
      Ratio = 2.000000000000000000
      Text = '150100001'
      Typ = bcCode93
    end
    object QRBand1: TQRBand
      Left = 37
      Top = 157
      Width = 698
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel12: TQRLabel
        Left = 248
        Top = 2
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          656.166666666666700000
          5.291666666666667000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 37
      Top = 489
      Width = 698
      Height = 29
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        76.729166666666670000
        1846.791666666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel57: TQRLabel
        Left = 30
        Top = 1
        Width = 637
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          79.375000000000000000
          2.645833333333333000
          1685.395833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 
          'B&B Hospital, Pvt. Ltd., Gwarko, Lalitpur, P.O. Box: 2481, Ph: 9' +
          '77-1-5531933, Fax: 977-1-5528526, E-mail: bbhospital@wlink.com.n' +
          'p'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel58: TQRLabel
        Left = 274
        Top = 14
        Width = 149
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          724.958333333333300000
          37.041666666666670000
          394.229166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Web: www.bbhospital.com.np'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object QRLabel23: TQRLabel
      Left = 44
      Top = 137
      Width = 55
      Height = 15
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        116.416666666666700000
        362.479166666666700000
        145.520833333333300000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Refund No.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel29: TQRLabel
      Left = 44
      Top = 152
      Width = 58
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        116.416666666666700000
        402.166666666666700000
        153.458333333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Refund Bills'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel32: TQRLabel
      Left = 108
      Top = 152
      Width = 4
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        285.750000000000000000
        402.166666666666700000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_Refundno: TQRLabel
      Left = 117
      Top = 137
      Width = 19
      Height = 15
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        309.562500000000000000
        362.479166666666700000
        50.270833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'N/A'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object lbl_RefundBills: TQRLabel
      Left = 117
      Top = 152
      Width = 7
      Height = 17
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        309.562500000000000000
        402.166666666666700000
        18.520833333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = '0'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
    object QRLabel25: TQRLabel
      Left = 108
      Top = 137
      Width = 4
      Height = 15
      Enabled = False
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        39.687500000000000000
        285.750000000000000000
        362.479166666666700000
        10.583333333333330000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = ':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 8
    end
  end
    object QueryBill: TOraQuery
    SQL.Strings = (
            'Select * from VW_PATIENTBILL'
            'WHERE 99=99')
    Left = 536
    Top = 432
  end
  object QueryFooter: TOraQuery
    SQL.Strings = (
            'SELECT * FROM VW_PATIENTBILL_SUMMARY'
            'WHERE 99=99')
    Left = 624
    Top = 432
  end
  object Query_Process: TOraQuery
    Left = 816
    Top = 104
  end
  object Table_PackageTest: TOraTable
    Left = 912
    Top = 64
  end
  object Query_PackageTest: TOraQuery
    Left = 816
    Top = 104
  end
end
