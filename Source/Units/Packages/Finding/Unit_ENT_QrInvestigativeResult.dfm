object Form_ENT_QrFinding: TForm_ENT_QrFinding
  Left = 0
  Top = 0
  Caption = 'Form_ENT_QrFinding'
  ClientHeight = 741
  ClientWidth = 849
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
  object ENT_QrFinding: TQuickRep
    Tag = 1
    Left = 8
    Top = -139
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = ENT_QrFindingAfterPrint
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
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Manual
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 1
    PrintIfEmpty = True
    ReportTitle = 'Investigation Report'
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    OnApplyPrinterSettings = ENT_QrFindingApplyPrinterSettings
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 266
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
        703.791666666666700000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Left = 8
        Top = 156
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          412.750000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NAME'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel12: TQRLabel
        Left = 407
        Top = 156
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          412.750000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL NO.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel16: TQRLabel
        Left = 7
        Top = 223
        Width = 171
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          590.020833333333300000
          452.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SAMPLE RECEIVED DATE & TIME'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object lbl_ReportedDate: TQRLabel
        Left = 565
        Top = 190
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          502.708333333333300000
          264.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2012/08/13 11:53:06'
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
      object lbl_Name: TQRLabel
        Left = 193
        Top = 156
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          412.750000000000000000
          92.604166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 565
        Top = 156
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          412.750000000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hospital No.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 180
        Top = 156
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          412.750000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 554
        Top = 156
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          412.750000000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 180
        Top = 223
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          590.020833333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 8
        Top = 171
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          452.437500000000000000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AGE/GENDER'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel15: TQRLabel
        Left = 180
        Top = 171
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          452.437500000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_agegender: TQRLabel
        Left = 193
        Top = 171
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          452.437500000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Age/Gender'
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
      object QRLabel17: TQRLabel
        Left = 407
        Top = 190
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          502.708333333333300000
          378.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE & TIME OF ANALYSIS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel20: TQRLabel
        Left = 554
        Top = 190
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          502.708333333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_RegisteredDate: TQRLabel
        Left = 191
        Top = 223
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          505.354166666666700000
          590.020833333333300000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reported Date :'
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
      object QRLabel23: TQRLabel
        Left = 8
        Top = 205
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          542.395833333333300000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REFERRED BY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel24: TQRLabel
        Left = 180
        Top = 205
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          542.395833333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_referaldoc: TQRLabel
        Left = 193
        Top = 205
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          542.395833333333300000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_referaldoc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = lbl_referaldocPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel35: TQRLabel
        Left = 604
        Top = 245
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1598.083333333333000000
          648.229166666666700000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Method '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel36: TQRLabel
        Left = 214
        Top = 245
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333300000
          648.229166666666700000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Result'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel42: TQRLabel
        Left = 303
        Top = 245
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          648.229166666666700000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Units'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel44: TQRLabel
        Left = 347
        Top = 245
        Width = 23
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          918.104166666666700000
          648.229166666666700000
          60.854166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Flag'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel45: TQRLabel
        Left = 391
        Top = 245
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1034.520833333333000000
          648.229166666666700000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Reference Range'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape10: TQRShape
        Left = 719
        Top = 244
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1902.354166666667000000
          645.583333333333300000
          2.645833333333333000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 0
        Top = 244
        Width = 720
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          645.583333333333300000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Color = -1
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 263
        Width = 720
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          695.854166666666700000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 4
        Top = 245
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          648.229166666666700000
          68.791666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Test'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape2: TQRShape
        Left = -1
        Top = 244
        Width = 1
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          -2.645833333333333000
          645.583333333333300000
          2.645833333333333000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel80: TQRLabel
        Left = 247
        Top = 29
        Width = 225
        Height = 30
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          653.520833333333300000
          76.729166666666670000
          595.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL NAME'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        OnPrint = QRLabel80Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 18
      end
      object QRLabel81: TQRLabel
        Left = 300
        Top = 58
        Width = 120
        Height = 24
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          793.750000000000000000
          153.458333333333300000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL ADDRESS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = QRLabel81Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel82: TQRLabel
        Left = 296
        Top = 74
        Width = 127
        Height = 24
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          783.166666666666700000
          195.791666666666700000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL PHONE NO.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = QRLabel82Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 0
        Top = 239
        Width = 720
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          21.166666666666670000
          0.000000000000000000
          632.354166666666700000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Style = bsClear
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 153
        Width = 720
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          404.812500000000000000
          1905.000000000000000000)
        XLColumn = 0
        Brush.Style = bsClear
        Pen.Style = psDot
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText7: TQRDBText
        Left = 333
        Top = 134
        Width = 53
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          354.541666666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'TestHead'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
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
      object QRLabel8: TQRLabel
        Left = 407
        Top = 171
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          452.437500000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SAMPLE NO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 554
        Top = 171
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1465.791666666667000000
          452.437500000000000000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_sampleNo: TQRLabel
        Left = 565
        Top = 171
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          452.437500000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sample No'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = lbl_referaldocPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlbl_labno: TQRLabel
        Left = 407
        Top = 226
        Width = 44
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1076.854166666667000000
          597.958333333333300000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LAB NO.'
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
      object qrlbl19: TQRLabel
        Left = 554
        Top = 224
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
          1465.791666666667000000
          592.666666666666700000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object qrlbl_labb: TQRLabel
        Left = 565
        Top = 224
        Width = 47
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          592.666666666666700000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlbl_labb'
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
      object qrlblissue: TQRLabel
        Left = 8
        Top = 137
        Width = 68
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          362.479166666666700000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ISSUED TO :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 8
        Top = 187
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          494.770833333333300000
          309.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PATIENT TYPE / WARD'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel41: TQRLabel
        Left = 180
        Top = 187
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          476.250000000000000000
          494.770833333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_patienttype: TQRLabel
        Left = 193
        Top = 187
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          510.645833333333300000
          494.770833333333300000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patient Type'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = lbl_referaldocPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel30: TQRLabel
        Left = 565
        Top = 208
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1494.895833333333000000
          550.333333333333300000
          264.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2012/08/13 11:53:06'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel30Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel31: TQRLabel
        Left = 407
        Top = 208
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1076.854166666667000000
          550.333333333333300000
          285.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REPORT PRINTED ON'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel46: TQRLabel
        Left = 554
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
          1465.791666666667000000
          550.333333333333300000
          13.229166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
    object GroupFooterBand1: TQRBand
      Left = 48
      Top = 1006
      Width = 720
      Height = 4
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        10.583333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object GroupFooterBand2: TQRBand
      Left = 48
      Top = 375
      Width = 720
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object PageFooterBand1: TQRBand
      Left = 48
      Top = 729
      Width = 720
      Height = 277
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
        732.895833333333300000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        Left = 4
        Top = 253
        Width = 114
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          669.395833333333300000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Printed Date/Time :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Date: TQRLabel
        Left = 123
        Top = 253
        Width = 242
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          325.437500000000000000
          669.395833333333300000
          640.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Printed Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 371
        Top = 252
        Width = 60
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          981.604166666666700000
          666.750000000000000000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Printed By'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 432
        Top = 252
        Width = 6
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          666.750000000000000000
          15.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Verifiedby: TQRLabel
        Left = 444
        Top = 252
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
          1174.750000000000000000
          666.750000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_Verifiedby'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 564
        Top = 251
        Width = 29
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1492.250000000000000000
          664.104166666666700000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 592
        Top = 252
        Width = 6
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          666.750000000000000000
          15.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 598
        Top = 252
        Width = 34
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1582.208333333333000000
          666.750000000000000000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel32: TQRLabel
        Left = 635
        Top = 251
        Width = 12
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1680.104166666667000000
          664.104166666666700000
          31.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'of'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_totpage: TQRLabel
        Left = 652
        Top = 251
        Width = 64
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1725.083333333333000000
          664.104166666666700000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_totpage'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 25
        Top = 34
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          66.145833333333330000
          89.958333333333330000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Performed by'
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
      object lbl_Qualification_LD: TQRLabel
        Left = 24
        Top = 66
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          174.625000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '#########'
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
      object lbl_Docname_LD: TQRLabel
        Left = 24
        Top = 50
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          132.291666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '########'
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
      object QRLabel5: TQRLabel
        Left = 540
        Top = 34
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          89.958333333333330000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dispatch By'
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
      object lbl_DocName_RD: TQRLabel
        Left = 540
        Top = 50
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          132.291666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '############'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = lbl_DocName_RDPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_Qualification_RD: TQRLabel
        Left = 540
        Top = 66
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          174.625000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '#########'
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
      object lbl_Specialization_LD: TQRLabel
        Left = 24
        Top = 82
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          63.500000000000000000
          216.958333333333300000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '########'
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
      object lbl_Specialization_RD: TQRLabel
        Left = 540
        Top = 82
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          216.958333333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '############'
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
      object QRShape11: TQRShape
        Left = 531
        Top = 29
        Width = 108
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1404.937500000000000000
          76.729166666666670000
          285.750000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 14
        Top = 29
        Width = 108
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          37.041666666666670000
          76.729166666666670000
          285.750000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object Image_GaneshB: TQRImage
        Left = 698
        Top = 40
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1846.791666666667000000
          105.833333333333300000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676513320000FFD8FFE000104A46494600010201004800
          480000FFE1068A4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A32313A30320000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000055C00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F5549249252964FD6AEA193D37
          EAFE6E6E210DC8AABFD13DC3706B9CE6D41FB0FD3D9BF7ED5ACB1BEB8D19391F
          55BAA538B48C9BECC6B032AD64E9CB36B5EE75AC6FBE967F84B7D891532E8D95
          98DCECFE919963B21F83E8D9464BC35AFB28BDAEF4CDDE98656EBEBC8C7CBA5C
          EAEAABF46CABF3D6BAE63A4E73733EB5FDA58EDCCCBE89897B4C44837653A769
          F737F9D5BE7A860065D61C9A433175C877A8D8AFFE39DBBF45C7E7A4A6C24B17
          2FEB7745C6C86E39B4DB6399EAC54374D65BEAD76D5FF7219655BECFD5FD5FD1
          D767EE21D3D47AD65E4E3E751897D58A18E664F4DBDAC6584591662E65374FA0
          EB9BE9FA7762FDABF44CBBF49FA7AF621614EF24AA1EA782C631D9173319EF68
          77A3739ACB1BB84EC7B377D350FDAF86E1FA216DDFF174D8E1FE76CD9FF491B5
          3792549F9D911FA1C1BAC3FCA35B07FE096077FD15017F56B8EDAEBC6A1CD8DE
          1F63AD736448DD556CA5BFF83A56A741259E7A767DC1C327A8D803810598CC65
          2D83FCA78C9C96BBFA992ACE1E257874368ADF658D6FE75D63EE799FDEBAF759
          63BFCE4949D2492494FF00FFD0F554924925292492494E0319BBEBDE43B5F6F4
          9A41FED6464FFE41357F53FA4E0D348C2C5FB43B1AB763D55655CF7566AB1CD7
          D95DDBC5FEAD2C7B7D5AE97D7E9B2CFE6BD344A5A4FD76CC7761D33141F89BF3
          E3FEA56E214A72EAE9797037DB4634BB7B9B8B4341DC06D63FD4C8F5BDED6FE7
          FA28BFB1B11ED8C975B97265C2EB1EE69FEB50D2CC6FFC055F491A521A30F131
          C463D15D20FF00A3686FFD4846492494A506D55B5EFB1AC6B5F646F70001740D
          ADDEEFCEDAD534925292492494A49249253FFFD1F55492492529249072F2A9C3
          C5BB2EF3B69C7ADD6DAEF06B017BCFF9AD494E57492FBFEB275CCAD3D3ABECB8
          2C23C6AADF9B67FD2EA7B16DAC6FAA38F6D5D071EFC8DA72B3CBB3B25CD11366
          538E56DFFACB2C663FF52A5B29294924924A5249249294924924A52492492949
          24924A7FFFD2F55497CAA924A7EAA41CCFE897FF0037FCDBFF009EFE6BE89FE7
          FF00E07FD27F217CB6924A7EA1E9DFF27E2FF33FCCD7FD1BF98FA2DFE8DFF75F
          FD0FFC1AB2BE5549253F5524BE5549253F5524BE5549253F5524BE5549253F55
          24BE5549253F5524BE5549253FFFD9FFED0B4450686F746F73686F7020332E30
          003842494D042500000000001000000000000000000000000000000000384249
          4D03ED000000000010004800000001000100480000000100013842494D042600
          000000000E000000000000000000003F8000003842494D040D00000000000400
          0000783842494D04190000000000040000001E3842494D03F300000000000900
          0000000000000001003842494D040A00000000000100003842494D2710000000
          00000A000100000000000000013842494D03F5000000000048002F6666000100
          6C66660006000000000001002F6666000100A1999A0006000000000001003200
          000001005A00000006000000000001003500000001002D000000060000000000
          013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E80000384249
          4D040000000000000200013842494D0402000000000004000000003842494D04
          08000000000010000000010000024000000240000000003842494D041E000000
          000004000000003842494D041A00000000034900000006000000000000000000
          00003C000000960000000A0055006E007400690074006C00650064002D003200
          0000010000000000000000000000000000000000000001000000000000000000
          0000960000003C00000000000000000000000000000000010000000000000000
          000000000000000000000010000000010000000000006E756C6C000000020000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000
          0006736C69636573566C4C73000000014F626A6300000001000000000005736C
          6963650000001200000007736C69636549446C6F6E6700000000000000076772
          6F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45
          536C6963654F726967696E0000000D6175746F47656E65726174656400000000
          54797065656E756D0000000A45536C6963655479706500000000496D67200000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000
          000375726C54455854000000010000000000006E756C6C544558540000000100
          00000000004D7367655445585400000001000000000006616C74546167544558
          540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000
          000863656C6C546578745445585400000001000000000009686F727A416C6967
          6E656E756D0000000F45536C696365486F727A416C69676E0000000764656661
          756C740000000976657274416C69676E656E756D0000000F45536C6963655665
          7274416C69676E0000000764656661756C740000000B6267436F6C6F72547970
          65656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F
          6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F
          75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E
          67000000000000000B72696768744F75747365746C6F6E670000000000384249
          4D041100000000000101003842494D0414000000000004000000043842494D04
          0C0000000005780000000100000080000000330000018000004C800000055C00
          180001FFD8FFE000104A46494600010201004800480000FFED000C41646F6265
          5F434D0002FFEE000E41646F626500648000000001FFDB0084000C0808080908
          0C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E
          0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108
          0033008003012200021101031101FFDD00040008FFC4013F0000010501010101
          010100000000000000030001020405060708090A0B0100010501010101010100
          000000000000010002030405060708090A0B1000010401030204020507060805
          030C33010002110304211231054151611322718132061491A1B14223241552C1
          6233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617
          D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F5566676
          8696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404030405
          0607070605350100021103213112044151617122130532819114A1B14223C152
          D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317
          644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F556
          66768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311
          003F00F5549249252964FD6AEA193D37EAFE6E6E210DC8AABFD13DC3706B9CE6
          D41FB0FD3D9BF7ED5ACB1BEB8D19391F55BAA538B48C9BECC6B032AD64E9CB36
          B5EE75AC6FBE967F84B7D891532E8D9598DCECFE919963B21F83E8D9464BC35A
          FB28BDAEF4CDDE98656EBEBC8C7CBA5CEAEAABF46CABF3D6BAE63A4E73733EB5
          FDA58EDCCCBE89897B4C44837653A769F737F9D5BE7A860065D61C9A433175C8
          77A8D8AFFE39DBBF45C7E7A4A6C24B172FEB7745C6C86E39B4DB6399EAC54374
          D65BEAD76D5FF7219655BECFD5FD5FD1D767EE21D3D47AD65E4E3E751897D58A
          18E664F4DBDAC6584591662E65374FA0EB9BE9FA7762FDABF44CBBF49FA7AF62
          1614EF24AA1EA782C631D9173319EF6877A3739ACB1BB84EC7B377D350FDAF86
          E1FA216DDFF174D8E1FE76CD9FF491B53792549F9D911FA1C1BAC3FCA35B07FE
          096077FD15017F56B8EDAEBC6A1CD8DE1F63AD736448DD556CA5BFF83A56A741
          259E7A767DC1C327A8D803810598CC652D83FCA78C9C96BBFA992ACE1E257874
          368ADF658D6FE75D63EE799FDEBAF75963BFCE4949D2492494FF00FFD0F55492
          4925292492494E0319BBEBDE43B5F6F49A41FED6464FFE41357F53FA4E0D348C
          2C5FB43B1AB763D55655CF7566AB1CD7D95DDBC5FEAD2C7B7D5AE97D7E9B2CFE
          6BD344A5A4FD76CC7761D33141F89BF3E3FEA56E214A72EAE9797037DB4634BB
          7B9B8B4341DC06D63FD4C8F5BDED6FE7FA28BFB1B11ED8C975B97265C2EB1EE6
          9FEB50D2CC6FFC055F491A521A30F131C463D15D20FF00A3686FFD4846492494
          A506D55B5EFB1AC6B5F646F70001740DADDEEFCEDAD534925292492494A49249
          253FFFD1F55492492529249072F2A9C3C5BB2EF3B69C7ADD6DAEF06B017BCFF9
          AD494E57492FBFEB275CCAD3D3ABECB82C23C6AADF9B67FD2EA7B16DAC6FAA38
          F6D5D071EFC8DA72B3CBB3B25CD11366538E56DFFACB2C663FF52A5B29294924
          924A5249249294924924A5249249294924924A7FFFD2F55497CAA924A7EAA41C
          CFE897FF0037FCDBFF009EFE6BE89FE7FF00E07FD27F217CB6924A7EA1E9DFF2
          7E2FF33FCCD7FD1BF98FA2DFE8DFF75FFD0FFC1AB2BE5549253F5524BE554925
          3F5524BE5549253F5524BE5549253F5524BE5549253F5524BE5549253FFFD938
          42494D042100000000005500000001010000000F00410064006F006200650020
          00500068006F0074006F00730068006F00700000001300410064006F00620065
          002000500068006F0074006F00730068006F007000200037002E003000000001
          003842494D04060000000000070008000000010100FFE11248687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420
          626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A
          4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C7465727320
          6573633D224352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761
          646F62653A6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C
          6B697420322E382E322D33332C206672616D65776F726B20312E35273E0A3C72
          64663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E
          6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323272078
          6D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F
          312E302F273E0A0A203C7264663A4465736372697074696F6E2061626F75743D
          27757569643A65306633313965612D653963372D313165312D393131652D6333
          33323437656632373832270A2020786D6C6E733A7861704D4D3D27687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C
          7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F
          746F73686F703A36316232353761352D653963362D313165312D393131652D63
          33333234376566323738323C2F7861704D4D3A446F63756D656E7449443E0A20
          3C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C
          2F783A7861706D6574613E0A2020202020202020202020202020202020202020
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
          20202020202020202020200A3C3F787061636B657420656E643D2777273F3EFF
          EE000E41646F626500644000000001FFDB008400010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010102
          0202020202020202020203030303030303030303010101010101010101010102
          0201020203030303030303030303030303030303030303030303030303030303
          030303030303030303030303030303030303030303FFC0001108003C00960301
          1100021101031101FFDD00040013FFC401A20000000602030100000000000000
          000000070806050409030A0201000B0100000603010101000000000000000000
          060504030702080109000A0B1000020103040103030203030302060975010203
          0411051206210713220008311441322315095142166124331752718118629125
          43A1B1F02634720A19C1D13527E1533682F192A2445473454637476328555657
          1AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A67
          68696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7
          B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA11
          0002010302040403050404040606056D01020311042112053106002213415107
          3261147108428123911552A162163309B124C1D14372F017E182342592531863
          44F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3
          D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6
          F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9
          C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00
          DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD563FCACEDAF92594F97FD0BF13FE
          3C765EDEE9FAADDDF1E7E447C84CD6EACCEC5C26FC7DD19DEACCF755ECED83D7
          95B479ED50E2364E5337D8B2D567AA287C398929A9A38A8EAA9599E425F7134D
          F531DB42C031427F3CD2B5071514C50E6BD3A8A34176008AD3CFFC9D194F857F
          231FE58FC5FEA2EF8AEDBD16CFDCDBC3015941D85B2A1A992B61D8FDABB2B399
          5D8BDADB2E0AB9963A8ABA5DABD8BB6B274304D222493C10248CAA5EC145ACE2
          E6049479F1FB47FAAA3E5D51D74315E8D27B51D57AF7BF75EEBDEFDD7BAF7BF7
          5EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF
          7BF75EEBDEFDD7BAFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD534FC9BE
          E1D87B07F9D0FF002C8D88D539883B1BB7FA03E6B6C5A9A7FE17924C1D6ECB4C
          475EF6462A64CDC94CB85A8C863F73755CB1CD491CCD5912D6C123C622903FB2
          B9C37EF2B6929D8AB43C305B505F99F3FB3F674AE3A9B5956B826BFB295FB3CB
          EDE971FCA4D9E8B61FCDDDA88D6C6EC8FE68FF003E70985A65663150E3B2FDD1
          5DBE5A96189BFE03C5FC4778544810704C8587EAB7B7ECB0922F98723F653A62
          4E2A7E5D5AF7B5BD37D26B736F3D9FB2A9E82AF796EBDB5B4A972B92A7C3632A
          7736771781A7C965EAC3B52E2A826CAD552C75992A958D8C70465A570A6CA6C7
          DD2496389754B22AAFA9200FE7D7BA279F297E6553754EC3EE593E3CE3766FC9
          5EF6E80C56D6DFBDABF1F768EF6A2ADEC7DB3D592E6E8EA378E5EAB6BEDD8F39
          B8A2DDCDB1A9F2355B770F2D345539CAE8238A10C858841777FE1694B6024972
          4FA2AAFC4491F680071CD6941D2A82D8494699FC386B4D4479FA7467BABFB93A
          A7BAB6FC1BA3A9BB1367F6160E6A4C656BD66D4CFE3B30D411E62862C963E1CC
          525254495B84AF9E8E65734D591C1509C874560405B14D14CA1A3704115F98AF
          A8F2FCFA4EE8C868CB43D095EDDEABD639A6869E379AA258E08631AA4966758A
          345FEAEEE55547FAE7DFB871EBDD039BC3E46F40EC03226F3EE9EAEDB95111D2
          D4193DF3B720CA3390C4471627F88364A795B41B2A44CC48E07B60DD5BAD2B3A
          E7E60FF83ABF8527F01E91F51F2A76155C3149B2367F75767B4F378213B17A5F
          B0A5C648C50C8B20DD3B9F07B63660A79107A6539211B5C59BDE85CAB7C11BB7
          FB5207E45A80FE5D6C464F1651F69E9B64ECDF945BA6529B1BE35E0B6663DD94
          C79AEF9EE0C360AB853B152278B6875160FB7E59E531927C15393C73AB583153
          7D35D776E7B21555F56353FEF207FCFC3AF52203E324FC87F949FF00274A7EA1
          DB5F26B1B9EDC799EF6ED7EA5DDB85C8A3A6D8D8DD5DD41B8B63C3B57FCA2392
          39325BD373F69EF8C8EF0A85A6568D9971D898D8B6B112DB4FBBC69386D52CE1
          87A05A0FF093FCCF5B76888A47111F326A7FC007F2E8C17B7FA6BAF7BF75EEBD
          EFDD7BAFFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD172EF0F8ADD3DF20
          B7BFC78EC9EC2C3E49B7EFC5BED65EE0E9BDD981CACF85CD6DEDC75180C9ED6C
          FE26A6AA9D5FF896D0DE1B7B2B25265B1B283056469131D2F146EAC4B0094A31
          26AA6B834AD08201F95403F97DBD5D2464A81C0FF9411FE027AABFF86D2F7D63
          FA0BF9C6547C64C5ED4C9FC868FF0098D7CEE9BA371FD8B54D49B2ABFB19F03B
          05B69AEE09E9C81161BF8FB2870ED1C6E57F75E356775471B4CB693880566133
          0C648AC86A734150A6A2B8AD2B8EB6502B2D4E08AFF2E97BD714BFCD613132E0
          FBCBB2BAD3A476A6EEE9479F79F7564F27D4DDA1BA7E3EF796369B07F7392EB9
          106C8EAAD85BE3AF377D457E40C143B97053CD817C7A33D6D6C3509046D46BB9
          46CF1CD2016FFC64A9200FC9684F0A7701C4357A799A034748C123CA8457EDA1
          3C0FA115F4E80CDF7F1D7A8FBBF2B2EE5C97CCFF0091BF24B776270180DA46B7
          E377591C9ED9DEF99C3E667A9DCD95EE1A1EB1C249F1EF79566EAC0D7CF81A90
          63DBF05361EA1D63715216A51335B5A4B2994492CC694A2A8CD4F1D540A71515
          AE47A9E3E0EC8ADFA68A1B3E7E5E99247E5FE0E8D0F41FC52DB7D389837E92F8
          2DB4F6767B0598CC6EFA3ED2EE3DE1D6DD6DB9727B9F70961595D5DB7FA1703D
          8264A3A3A690C34545531532504234C688ED248EB20B5312811DAE6A482EC2A3
          CF828381E4053F6F5ED51B1F11E760C4508009C7FB623A34F41D3BDF391CE64F
          78D7EFDE8FEADDDB9EA4A3C4E673BD47D1906537BD6E031D354D663B0B91EC4E
          C1DC9935CDD363ABABEA258166C0A411BCCECB0AB3B9650905C6AF1249231211
          43A533FB5893F974D78880502123E64FF8053A568F8ED2E4E432EF5EF5F909BC
          CB36A6A64EC387ADA83D4852489697A5B07D68EF4EEA4FA25925B7F5BFBBFD20
          26AF3CADFEDA83F62D075A329AA14555A7A006BF6EAD5D4BC5FC53F8F38CAE19
          493AB36F6E2CB0D5FEE5F7DC994EC6CC1D57D41B2BBFB21B9320C0EA3F590FBB
          0B4B7029E1023E79FF000D7AD99E624378AD51E8694FB29C07CBA16F6FEC8D97
          B494AED5DA3B5F6CAB0B32EDFC062B0CA45AD6231D494C08B71EDE5454144500
          7C853A6C92724D7AEB0389DCB8FCAEEBACCE6EC3B871B97CB5355ED8C38C163F
          129B4315163292967C42D75249255E79AAB230CB56D5152448A66F1A80882EDA
          46E1DDE4975569414002FD9F6FA9EB648A00053A54FB7BAAF5EF7EEBDD7BDFBA
          F75EF7EEBDD7BDFBAF75FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF7555FFCAA9E39B6F7CF5A9572F3547F34DF9D02A6EBA4A4947D934B8D8539
          249028A8A2B1FE9FE1ED1D91AC729232646FF0F4E49C57FD28EACB7746CFDA5B
          DF1A986DE9B5F6EEEEC3C75B49928F15B9F0B8DCFE3532340E65A1AF5A1CAD35
          5D2AD6514A75452E8D71B72A41F6A9911C51D411F3CF54048E07A7F861869E28
          A0A78A382086348A1861458A28A28D42471C51A0548E345000000000E3DDBAD7
          593DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75543FCA14BD7F4D7CABDD4C8CB1EF4FE65BFCC333D4CE47A
          26A7A3F935BE36A24B17A50988B6DA205C7D41FC5BDA0DBC830B81C039FF0000
          3FE5E9D97E25FB3AB5EF6BFA6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7B
          AFFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD233B1F7CE13AC7AF37E765
          6E5AA8A8B6E75EECDDCFBE33F593B88E0A4C2ED4C25767B29533487848A0A1A0
          7663F803DB533F8514B263B549FD83AB22EA655F53D119FE525B3737B3FF0097
          4FC5AAADD346F43BC7B3B61557C80DE94F3A14AC4DDDF23B73677BDF704791D6
          048D90A7C8F61BC5317F56B8CDED6B7B62C6210DB228F3A9FDA7FCD4EB72125D
          BEDEAC67DACEA9D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD5DFE3DF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD55FF00F358AAACDF5D29D5BF0FF055F2E3
          F727CEBF903D6DF1D67A984333D2755415359DB5F222AE54592232534FD09D69
          B871E57500F2E42353C3120BB713A921B7A1A4AE01F3A0FF008BA57E55E9E86A
          18B83F08EACE292969682969A86869A0A3A2A3A7869692929628E0A6A5A5A78D
          61A7A6A7822558A18208902A2280AAA0002DED7AAAAAAAA8A28141F674CF523D
          DBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7AEBDD7BDEFAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD6DFE3DFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD174EEFFF0065BBFBF1F1B7FD38FF00753FD217FA6393
          FD964FE37F7BFDE4FF004C3FDC0DE7F7DFDC9FE1BFE57FC43FD1BFF1BFBED7FE
          49FC37CFF71E8F696E3E9AB17D452BA869E3C6A3D3E74E38E1D391F89DFE1FA1
          AFD9D18BF6ABA6FAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD
          7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBF
          FFD9}
      end
      object Image_JyotiB: TQRImage
        Left = 698
        Top = 38
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1846.791666666667000000
          100.541666666666700000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765AF390000FFD8FFE000104A46494600010201004800
          480000FFE108334578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A31373A34300000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000070500
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A547ACE
          7DB81D3ECBB1D8DB729E5B56254E301F75AE1550C77F23D47FE97FE0B7BD5E58
          9D6AD8EAFD2DAE8F4B186567D93FF0157D95BFFC50DC929D4C2CAAF370E8CCAB
          F9BC8AD96B7BE8F01FFC51D52E8B8C317A46163011E9515B48F30D6CABA92949
          24924A5249249294924924A524924929FFD0F554924925292492494A5CC75EDD
          7FD61A705AEF7E6619C70CEE6BB2EADF9F67FD6F0F19FF00F5DB68AFFC22E9D7
          33899B5647D6CAF3DCE6FD9F2F12EC4E9CF912FF00B3DADB72AC6FEF5795F4F1
          F6FF0039460FDA3FC224A746E73FFE7462344EC183945FA98936E0FA5A7D1FCD
          B91FAA758C3E94DA0E4EF73B2AD14D35D4C363C920D963F633FC0E3D2CB2FC8B
          7FC1D55AE67A9754C5E99F5D1BD5B277ECFD8D93BAB113E95173322A731AF2CD
          D75FB6FDADFF008A57FAF66D2CCCC6CABA9B1EC187636AA8087BAECCB7130F1E
          9DA7F3DDEA6C77FA3494F4A92C6EA9D5B23A3E1E2E3D18AEEA7D46D6C371EB78
          AC1654D69CBCABB22FF6D3452D3F4DFF00CE5F763D1FE19581F587A37A58F71C
          A6B6BCBC67E6505D237515B5965B6FB87B765766FF004DDFA4FE73FD15A929D1
          4964E2FD60AF27A95584317229AEFA9F653937B3D20F351ABD4A998F6EDCBF6B
          6F6BBD4B69AEBFDC59B9FD63AEDDF5AFEC5D229F5F0BA4D06DEA35EE657EADD7
          37F56C46DB6B1FB6CAE9FD66BF7D353DFF00D22DA9253D424B369EA197D41A1B
          8D8D7E13481BEFC960616FEF32AA1C5EEB6EFCDF77EAFF009FFA7FE6ACBF554D
          A9818D92077712492792E739253349249253FFD1F554924925346FCEBACCA7E0
          E031AFBEA0D37DD67F3556ED58D7B5A43EEB9EDFD27A0CFF0007FCEDB4FA94FA
          B26F4E6BC4E55B664BC8832E2C67CA8A7655FE7FA967FC220B30B3B17A9DF918
          CF65B899AE6D99145A4B5F5D8D6328F5B1EC6B5FEA576554D7BF1EDFF09FA565
          FF00E091BA8663B0E8B72AD7D58F89434D96E4584986812FFD13437FF3E24A73
          3EB06161669A7A3B69ABD4CB6BBD7B4B5A5D562336B725EC73BDCCB6EDECC4A1
          FF0098FBBD7FFB4E89D4FA3E55EDC5B7A37D970323061B4BEEC66DBBA90D7567
          087F356E2633FF00E01DEA7FC5A9FD5FC2C822EEAF9E1C33BA916BCD766868C7
          617BB0707D3FA0C7E3B2EB1F91FF0076AEBFFE0D6C24A781EA9F577EB0677D64
          C37F55BAABEA7E316B1F530578E7219EA6457896D0E7E465DF8BECB3ED1EABBD
          2BB7D7FD45A9F587A3F58EA1D4BA7DF4E3D2FB2AD8F6DAF76EAB19D4DD4E73BF
          D1DD73F33ECF562B2CAA9FD157EBFF0036BA6B28AAC7D563DA1CFA1C5F51FDD7
          16BAA2E1FF005BB1ED44494F337F43EB1D5FA9D96F52F4B13A65D4D755F8F4BD
          CFBED6B0D8F7E1BF236D2CA70EFB2DDD93E8FE9B2ABAEBA1FF00A15A987F57BA
          562620C3F446452CB05B58C9FD36C2D3FABB29F565B4D588CFD1625757F315AD
          249253CFFD6376455D57A4598801CBBCE461D124431D6D62F7653EB716FAB4E2
          D786FB2CAF77E93F9BFCF5AF8181474FC66E3D124025CFB1E65F63DC775B7DCF
          FCFB6D7FBDEB9ECB7332FF00C60E254E12FE9B8A2DA24C6DFB40CAAB2EC633F3
          DAF6558957A9F98BAA494A4924925292492494FF00FFD2F55497CAA924A7EAA5
          43AEFF00C9591FD1786FF4FF00E8DF49BFD23F93FBBFF08BE6449253F5524BE5
          549253F5524BE5549253F5524BE5549253F51FFDAD1FCD7F347FE37E90FF00C0
          7FEFE8EBE5549253F5524BE5549253F5524BE5549253FFD9FFED0CEE50686F74
          6F73686F7020332E30003842494D042500000000001000000000000000000000
          0000000000003842494D03ED0000000000100048000000010001004800000001
          00013842494D042600000000000E000000000000000000003F8000003842494D
          040D000000000004000000783842494D04190000000000040000001E3842494D
          03F3000000000009000000000000000001003842494D040A0000000000010000
          3842494D271000000000000A000100000000000000013842494D03F500000000
          0048002F66660001006C66660006000000000001002F6666000100A1999A0006
          000000000001003200000001005A00000006000000000001003500000001002D
          000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800003842494D040000000000000200013842494D0402000000000004
          000000003842494D040800000000001000000001000002400000024000000000
          3842494D041E000000000004000000003842494D041A00000000034900000006
          00000000000000000000003C000000960000000A0055006E007400690074006C
          00650064002D0032000000010000000000000000000000000000000000000001
          0000000000000000000000960000003C00000000000000000000000000000000
          010000000000000000000000000000000000000010000000010000000000006E
          756C6C0000000200000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E670000009600000006736C69636573566C4C73000000014F626A63000000
          01000000000005736C6963650000001200000007736C69636549446C6F6E6700
          0000000000000767726F757049446C6F6E6700000000000000066F726967696E
          656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E65
          72617465640000000054797065656E756D0000000A45536C6963655479706500
          000000496D672000000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E67000000960000000375726C54455854000000010000000000006E756C6C
          54455854000000010000000000004D7367655445585400000001000000000006
          616C74546167544558540000000100000000000E63656C6C5465787449734854
          4D4C626F6F6C010000000863656C6C5465787454455854000000010000000000
          09686F727A416C69676E656E756D0000000F45536C696365486F727A416C6967
          6E0000000764656661756C740000000976657274416C69676E656E756D000000
          0F45536C69636556657274416C69676E0000000764656661756C740000000B62
          67436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254
          797065000000004E6F6E6500000009746F704F75747365746C6F6E6700000000
          0000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D
          4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E
          6700000000003842494D041100000000000101003842494D0414000000000004
          000000023842494D040C00000000072100000001000000800000003300000180
          00004C800000070500180001FFD8FFE000104A46494600010201004800480000
          FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292492494A547ACE7DB81D3ECBB1D8
          DB729E5B56254E301F75AE1550C77F23D47FE97FE0B7BD5E589D6AD8EAFD2DAE
          8F4B186567D93FF0157D95BFFC50DC929D4C2CAAF370E8CCABF9BC8AD96B7BE8
          F01FFC51D52E8B8C317A46163011E9515B48F30D6CABA9294924924A52492492
          94924924A524924929FFD0F554924925292492494A5CC75EDD7FD61A705AEF7E
          6619C70CEE6BB2EADF9F67FD6F0F19FF00F5DB68AFFC22E9D733899B5647D6CA
          F3DCE6FD9F2F12EC4E9CF912FF00B3DADB72AC6FEF5795F4F1F6FF0039460FDA
          3FC224A746E73FFE7462344EC183945FA98936E0FA5A7D1FCDB91FAA758C3E94
          DA0E4EF73B2AD14D35D4C363C920D963F633FC0E3D2CB2FC8B7FC1D55AE67A97
          54C5E99F5D1BD5B277ECFD8D93BAB113E95173322A731AF2CDD75FB6FDADFF00
          8A57FAF66D2CCCC6CABA9B1EC187636AA8087BAECCB7130F1E9DA7F3DDEA6C77
          FA3494F4A92C6EA9D5B23A3E1E2E3D18AEEA7D46D6C371EB78AC1654D69CBCAB
          B22FF6D3452D3F4DFF00CE5F763D1FE19581F587A37A58F71CA6B6BCBC67E650
          5D237515B5965B6FB87B765766FF004DDFA4FE73FD15A929D14964E2FD60AF27
          A95584317229AEFA9F653937B3D20F351ABD4A998F6EDCBF6B6F6BBD4B69AEBF
          DC59B9FD63AEDDF5AFEC5D229F5F0BA4D06DEA35EE657EADD737F56C46DB6B1F
          B6CAE9FD66BF7D353DFF00D22DA9253D424B369EA197D41A1B8D8D7E13481BEF
          C960616FEF32AA1C5EEB6EFCDF77EAFF009FFA7FE6ACBF554DA9818D92077712
          492792E739253349249253FFD1F554924925346FCEBACCA7E0E031AFBEA0D37D
          D67F3556ED58D7B5A43EEB9EDFD27A0CFF0007FCEDB4FA94FAB26F4E6BC4E55B
          664BC8832E2C67CA8A7655FE7FA967FC220B30B3B17A9DF918CF65B899AE6D99
          145A4B5F5D8D6328F5B1EC6B5FEA576554D7BF1EDFF09FA565FF00E091BA8663
          B0E8B72AD7D58F89434D96E4584986812FFD13437FF3E24A733EB06161669A7A
          3B69ABD4CB6BBD7B4B5A5D562336B725EC73BDCCB6EDECC4A1FF0098FBBD7FFB
          4E89D4FA3E55EDC5B7A37D970323061B4BEEC66DBBA90D7567087F356E2633FF
          00E01DEA7FC5A9FD5FC2C822EEAF9E1C33BA916BCD766868C7617BB0707D3FA0
          C7E3B2EB1F91FF0076AEBFFE0D6C24A781EA9F577EB0677D64C37F55BAABEA7E
          316B1F530578E7219EA6457896D0E7E465DF8BECB3ED1EABBD2BB7D7FD45A9F5
          87A3F58EA1D4BA7DF4E3D2FB2AD8F6DAF76EAB19D4DD4E73BFD1DD73F33ECF56
          2B2CAA9FD157EBFF0036BA6B28AAC7D563DA1CFA1C5F51FDD716BAA2E1FF005B
          B1ED44494F337F43EB1D5FA9D96F52F4B13A65D4D755F8F4BDCFBED6B0D8F7E1
          BF236D2CA70EFB2DDD93E8FE9B2ABAEBA1FF00A15A987F57BA562620C3F44645
          2CB05B58C9FD36C2D3FABB29F565B4D588CFD1625757F315AD249253CFFD6376
          455D57A4598801CBBCE461D124431D6D62F7653EB716FAB4E2D786FB2CAF77E9
          3F9BFCF5AF8181474FC66E3D124025CFB1E65F63DC775B7DCFFCFB6D7FBDEB9E
          CB7332FF00C60E254E12FE9B8A2DA24C6DFB40CAAB2EC633F3DAF6558957A9F9
          8BAA494A4924925292492494FF00FFD2F55497CAA924A7EAA543AEFF00C9591F
          D1786FF4FF00E8DF49BFD23F93FBBFF08BE6449253F5524BE5549253F5524BE5
          549253F5524BE5549253F51FFDAD1FCD7F347FE37E90FF00C07FEFE8EBE55492
          53F5524BE5549253F5524BE5549253FFD9003842494D04210000000000550000
          0001010000000F00410064006F00620065002000500068006F0074006F007300
          68006F00700000001300410064006F00620065002000500068006F0074006F00
          730068006F007000200037002E003000000001003842494D0406000000000007
          0008000000010100FFE11248687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF272069
          643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C
          3F61646F62652D7861702D66696C74657273206573633D224352223F3E0A3C78
          3A7861706D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F
          2720783A786170746B3D27584D5020746F6F6C6B697420322E382E322D33332C
          206672616D65776F726B20312E35273E0A3C7264663A52444620786D6C6E733A
          7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32
          322D7264662D73796E7461782D6E73232720786D6C6E733A69583D2768747470
          3A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C726466
          3A4465736372697074696F6E2061626F75743D27757569643A36316232353761
          372D653963362D313165312D393131652D633333323437656632373832270A20
          20786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F
          6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E
          7449443E61646F62653A646F6369643A70686F746F73686F703A363162323537
          61352D653963362D313165312D393131652D6333333234376566323738323C2F
          7861704D4D3A446F63756D656E7449443E0A203C2F7264663A44657363726970
          74696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D6574613E0A20
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
          2020202020202020202020202020202020202020202020202020202020200A3C
          3F787061636B657420656E643D2777273F3EFFEE000E41646F62650064400000
          0001FFDB00840001010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010202020202020202020202030303
          0303030303030301010101010101010101010202010202030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303FFC0001108003C009603011100021101031101FFDD000400
          13FFC401A20000000602030100000000000000000000070806050409030A0201
          000B0100000603010101000000000000000000060504030702080109000A0B10
          0002010304010303020303030206097501020304110512062107132200083114
          4132231509514216612433175271811862912543A1B1F02634720A19C1D13527
          E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3
          B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A8586878889
          8A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6
          D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA1100020103020404030504040406
          06056D010203110421120531060022134151073261147108428123911552A162
          163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A
          7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495
          A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F74858
          68788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAA
          BACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD17AF957DEB3FC6DE81EC5EE0C66CFA9EC7DD3
          B73194541D7DD654396A5C1E4FB3FB3775E5F1FB4BADBADF1395AD8A7A7A1C9E
          F8DEF9BA0C6C32B472089AA3595214FBAB960A4A2D5BFCFD595753015E977D33
          D9341DC9D45D5FDB58CA37C6D076675FED0DF74D8B9A74A99F149BAB01419B6C
          4D54F1AA249578B7AD34F310ABFB91B703E9EEECAC84AB0EE1C7AD11A491E9D0
          95EF5D6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF
          75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD57C7CAF75DEFF0029BE0174CD527936FD176276E7
          CA9DE48260B19C47C6FEB8FE01B4C57446E24A4A4EDAEEFDB9924B8B2D4E3236
          04151EFD5A1209C50FF8475E20900818AFF90F4BCFE5E7B3ABF61FC29F8E7B6F
          25E6151175E5265E38E7666920A0DD190C86E8C552FA99CA25262F330C489721
          11028E07BB39D4CCC05013D7B4E8EDAD69D1CBF75EBDD7BDFBAF75EF7EEBDD7B
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7FFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD539
          7CBBDFB94DBDF2F7B52BF0C8D3EE4D89FCB824D9FD750AE867FF00491F2FFE4B
          63FAC769C1046EA04B555DBA3A9F14AB186D72842AA0927DD455A429C011C7F6
          F4FC7F080786AAFEC1D1DADDDD8537C7CDDBF093A236F63F115BB67B5378673A
          4AA2AB226BE3CBE2B15D71F1C3B33B230B5D834A20684D4CB51D5D0D3542D4FE
          D8A7A8729FB817DEF3A80AE287A649D4C49E8D9FBDF5AEBDEFDD7BAF7BF75EEB
          DEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF7
          5EEBFFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD52C
          E73686E0EEBFE75BBA76FC793C14BD3DD07F113E27F6CF65E3A9AB92AB70647B
          8A83B6BE5D7FA09D9F94A08E4031FB7F1D0EE3C8EEE94C80CAF91C3E219078D9
          89F6A2405F21FCEBFE6A75620141519AD7A59FCD0F909B57657F332FE50DD079
          BC2E4EB323DA5BDFE5A6EFC367E9AA6946276F66F68FC65DE3B7F0D4398A325A
          ACD56E7A3DE3935A170152F433DB5156D3B5C96038E9FF0028EAA46037957A3A
          5F35FB63757477C4DF901DA3B0842DD89B67ACB71AF5A2D4531AD81FB373B4C3
          6DF5C473510A7AAFBD8A4DEF98A05687C6E2507491CFBD52B8AF1EB44D0134AD
          3A42FC25D99BF7A576A6EEF8E1D99DDBDAFF0024377752576DAC954F77772546
          3EB779EF88BB2B6EC1BA728F355E2E831D4698BC5EF75CCD3E328951FF0085E2
          16928BCB288039B145544D00819F327F3CF5BAD4F0E8EDFBAF5EEBDEFDD7BAF7
          BF75EE818DF1F223A4BADBB5BA73A377CF64EDADB9DBDF20AA378D374CF5ED75
          4CADB9BB01FAFF006F4BBAB7A4D85C7D3413B0A2DB98188CF535139869D352A0
          7323A23519D54AA9393C3FD5E5F9F5BA1A6AF2AD3A19FDDFAD7487DA3BFF000B
          BEA6AF9F6AACF97DB7445A08379D31A77DB39AAF86A65A5ACA4DBB5AB3B499B8
          B1F2C0CB355C2868BC83C71CB23AC8B1E81AF0E1D7BCE94E971EF7D7BAF7BF75
          EEBDEFDD7BAFFFD3DFE3DFBAF75EF7EEBDD7BDFBAF751AB2B28F1D4B515D90AA
          A6A1A2A489EA2AAB2B278A9A969A0894B49354544CC90C3146A2ECCC4003EA7D
          FBAF7415E3BBDFA9F395F0E376DEEFA7DD9515153351C52ECEC6E6F77E38D4C0
          15A689F33B6B1B94C3C2630E2E5E75517FAFBBF86E06A2B8A57F2EACCACB4D42
          9D00DF217E7275FF00C78DA994DC39BEB1F909BAAB572187DAFB530FB63A33B2
          E78B7B7616EEC951EDDD83B130D9FA9DB70E161C9EF4DDB94A3C653544D2AD24
          53540795D224775623904AC555581AD32081FCFCBE7D3FF4AFE178A248C8A568
          1816FD9C7A23DD11D75D8BF1F7E79ED4DEB9DEA6EC9CFEF3F933F1F7783FCD4E
          EEC5ECDA6A7EA8ABEDEC2E7F0FD8BD234586DE6D949EB33306C2C56E6DC1D758
          5C4CB043569410E39D11916A64F77323C71885DC954AD3E649A9D3F69F2E99C4
          87C4A0562AA283FA229FB4F13D13DFE715BCEB3A2BE63FF290EEDDD3B8B1D848
          3677CB1DDBDBDDC3979AAE8E8E2DBBD64FB736DF4B62F69D0E43233414498DC6
          EDEECECB198BCF1256564F5B3449AE758D7C13B279437728069E66A40A0FE7FC
          FAF61E91FE1FF28E8CF3F74F7AEF8FE525D1FDF5F355A831BBDBB27BCFE19F66
          6EDC5EDBD8F57B7ABB17D69BF7E6D7496E8DA7B28EC8C557EE6AC9F7162F64E5
          6971091C52CF559268A39668D2A679624BBC55658E272C71C719C1238F0AF03E
          9D6D07EA11F6F425FF002E4F92DB9B73FC11ED0FE637F29A0976E6ECDFF9AEF9
          DF5BD301160BF80D7EC8EACF8EFD81D91D6BD77D7A36EBD65415DDB8DDAFB219
          EB622E25AACFE46A142AEA441521E345491AA40AF979E7CBAAC8C3869A05AFE7
          9E3D123EA3F9D1D81F1A7F98762B637CA9F93D99DF957F20FACF7A7627CACD83
          9ECB53E33E397F2EFDD91E1C6FAF8BDF1AFA94E3F6E54265FBB779EC36C863B2
          B889B24D9EDD92E3C66A3A51E7A3A566F5AAA2EA1DF5C9A9F3E000F51F2E3D58
          0AC51D57F598938E1A47127CFD3F9F567B8FF90BF3A77AEEA7EA1C2FC70C2756
          EFF7DFBBB33EBDB9D87B77786F0F8F18FF008E631AD96EBBAD9F2D81DC9B372D
          96EFACC54E5E870D96DB30554231B90C7E4AAC938F1472D43857034C9E5934F3
          F214D42BF6D7F2EB5AA112952AEC94FB3F9D08FCA95EB8FC56DC9DCFB0BE50FC
          CDEA5F901F21B23DD18ED95D63F18BBC29F74EE2DB9B4BAEB696C193B2E9BBD3
          6FEF6C06CEC060E15876C75D63D3A7696B614C9E4B2D5F13CD512D557D43BB48
          7D854049C8E24F9FCFE5D6DE8D42AB41E43FD9F3FF0050E884F5D7C0BEC7F9DD
          FCC37BC7F998F6EF65F6B752F4FD1754627E3D7F2EBA6EABDED90D81D914DD5E
          D8EAAABDEFF206BCAE3E693098CEC7DE793A9C8EDCA1AA4D795C43C32E4E91A8
          DE1A796D14A8D6EE40AF887CC52807023CEA78FC87CCE2C5A5B79B4155A20208
          20302C464F98C7F869E9D5AD6D2F8FFF00227294947B7FE42FCACFF4ABB3A8E8
          531F90C2F5F74EE27A4329BFE3899D1A4EC8DC78BDE5BBAAEAA0CA523E8AFA4D
          BB16DAA4AA6B8D0B4EED4C59546EFD721604E314A0F43EBF6E3ECE9B90ABF85A
          534D07766BA8FA8FE11F2CFDBD1C2A0A0A1C5D0D1E331945498EC6E3A969E831
          F8FA0A7868E8682869214A7A4A3A3A4A748E0A5A5A5823548E34554445000000
          1EDCEABD4BF7EEBDD7BDFBAF75EF7EEBDD7FFFD4DFE3DFBAF75EF7EEBDD025DE
          FDB953D49B5F0726036EBEF3EC4EC2DDD8AEB6EABD9A2A9B1D4BB8B7DE7A9325
          90A519BCB253D63E136A6DEC1E16BF3199AE58679297138EA878A19A611C3268
          EAA12AB53D3912AB3779223192464D3E4315E93BB77A023CBE428F78F7BEE297
          B8B7BA086A60C4D7C0F41D45B32B7C7209A0D83D6666A8C5A2C2F3158F27996C
          B6719545EAD17F6D7C31E753FEAE1E9D78C954118550A0D6B4CFE678FF0093A3
          170C3153C51C10451C30431A450C30A2C7145146A15238E340A891A280000000
          07BDF1E3D37D579E272984F941F29327BE6599F727517C37DD799D8FD6180A0D
          53D0EF6F957FC32B705DABD81510BCD1D1D7D0F45EDFCD36D3C5544AA29A9371
          576E02CDF71454AF137A983B2B0ED205053269C4FF00303A740A250713C7E43F
          D9E9E3E657F2FAEAFF009E7B7B6363FBAF7CF77EC1CEF576F04DFF00D51BB7E3
          C76F6E7EA0DDDD67BB463A6C5366F0D9DC0B1A6CD65DA86A248FCF92A3AA5815
          DC534706B90BDF4A92ACC80B0FE5EB4FB7A6D8E34AFEDEA99BE517F248C26D4F
          907FCBC3BD20EDEDF7DE3D71D09DC9D55B77BA6A3E5B766F6377FF006DF6CE47
          7E76F60F69E2A335BBDB3151D7B86DA354BBE649B254B4B8FA2459B118E4829A
          46924962BAB786498C019C1FC433E4DC7E5D6B53680AD427153FEC7CFAB6CEE1
          F855D9155F18F6CF51F51F6D4DBA378F48EF5E8BDEDF1E60EE8A94C3ECBC4274
          0F62EC7DE5B2F6B6FDCA75CED75DC1B8628B11B3C501CB4B4B575BA992631998
          3C8CDAA90ECE5CD0F01E407F97F3AF56D40534AE74D38F1E8AC6CCFE509DC5D7
          BF07683E09EC6F9FDD85B73ADE7A4DB79ECDEEDC9F52ED3DF9D9D8CECE1D8186
          EDAEC6CD6C6DDFB8B3F0E3B17B1B7CF655257E4530995C4E627A01949A15AD7A
          70902B8180756D381FCCFAE6BFE03D528486D46A49FD9F2EACB7A3BE1E741F42
          F576D5EACDB7B2A8776516DADEB276C566F0ECD828F7FF00626F2EEFAEACAACA
          66FBDF7A6F0DC1495392CDF70E73315F3D4CD9BBC7530197C34BF6F4D1C50475
          18C0E1D7800053A33FEFDD6FAA47EDCC7C3DC7FCDEB39F16B1FB836A547596F8
          F833D4FDBFF2DF69C53558DE599C2F4C77DF64637A73AF269E8B5D2C3B4BB4B2
          7DAB5CFB8E92A8ABD760B066900306464BEA450E88A6852A6A3F214FE7E5E7D5
          880D1D1BD7FD5F97576B1C71C31C70C31A451448B1C5146AA91C71A28548E345
          0151114000000003DEFAAF5CFDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75FFD5DFE3DFBAF75EF7EEBDD001F21BA4ABBBA36EED1976BEF7ADEB4ECFEACD
          F78DED0EA6DFF4B8D4CF51EDFDE78DC3E776D54526E6DB12D6E323DD9B2775ED
          2DD393C3E671BF754735463EBE434F534B549054C564215AA6B4F3F2A8EB60D2
          B8E967B12B7B81B66BB766EDFEBC8BB068E09A3116C4DD1B82A36767EAA247FB
          7AB867DC1B5E9735B669EB982EBA778F26D49A881354050ECCD64EFAA8C70CF1
          FB718FE7D556A69AB07E59FF00374463E6C772F73ED7DB7B6BA3B62767ED3EBB
          F933F2A73151D55F1BF6E6CAC7A6E2DCFB7EA6AE0A5977F778672BB73D2D42E4
          F667C7DDA125567F29F6B858239658A928DE78E4AF82DB51233AEA202F981FCF
          27FCC3A508A87511C00AE7FC00746F3E367C75EB7F8B1D3BB3BA63AC31AD4D82
          DAD4127F11CD573BD5EE4DEBBA72B59539ADE1BF778E5E779AB337BC37C6E9C8
          D665B2757348EF3D7564AFC02007598B52BC00A0F90F4E983C49A71E877F75EB
          DD356630786DC3471E3F3D8AC7E62862C8E232F15264A920ADA68F2980CAD1E7
          307918E1A849112B71199C741554D281AE1A885245219411A2A18518547F9BAF
          74EBEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEB5DCFE5875EDDCBFCC7BE7E7C89A
          BDB54B06E05ED4F94DD5591DD924B473676BBAEF6176FF005274274D6DEC978E
          3192A1C4E3A7F8AFBB6AB1F47525444F5953346805433BF8312A8698209FE647
          4E93FA4BF6FF0083AD88FDFBA6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBFFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD177DC3FECBA7FB34
          DD5BFDE6FEEE7FB34FFE85BB7BFD12FF0012FE29FDE3FF00437FDEDEA7FF004C
          9FDD8F27FBF7FC3FDE7FEE9FF10D3FEE47C7E2D3FE4FE6F761AB49A7C3D6B151
          EBD188F75EB7D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          031D61FECBCFF7B7B83FD0CFFA1BFEFD7F7D23FF004F9FE8CFFB97FDEBFF0048
          5F65FB5FE96FFBAFFEE5BFBE1FC3EFA7F8C7F9678F57E2FEF66B415E1D6F3415
          E1D0CFEF5D6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD9}
      end
      object Image_AnilB: TQRImage
        Left = 698
        Top = 45
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1846.791666666667000000
          119.062500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167651A2D0000FFD8FFE000104A46494600010201004800
          480000FFE105874578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A31393A30380000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000045900
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492492
          52964F54CBCB1D53A6626338B2A75E5D98F1DD9E9643A9A383FCEDD57A8FFF00
          83A3F9681F593A9BB05F4B6DC9761E239AF73DD4B5AFC8C8B7DB5D1D3B018FDD
          FA7BBD4DFECA7D5FF43E97E92DAF17A6749CD1D73A75F7BF269CAB9F919B92FB
          6D73DDE9B1ACA2BE99556F73FF0050A7ED55B7ED393FAD645B4FF354FADFA216
          97B74924914292492494A4924925292492494FFFD0F554924925292492494A55
          7A8D19D91436BC2C9188F2F69B2DD81EE3583FA5AEADE76556D8DFA373D977A7
          FE895A49253C3578ACCDEBD6D8CB43D9D1EC2CA4515FAD7DD98E6B9B6DB916E5
          5D90EF4FA75777D9F1EECBF428AB2ADBBF9BF42B5A9899D56375EBBF69F51A5F
          6578ED1454E3536C636E7FBAA7FA247AF739D8BEA59B296319F43DFF00CE2D51
          D03A2B7D48C2A62EB0DD6B368DAFB1DF4EDB2BFA0F7B907A66262E3F58EA031A
          8AE860AF1D9B6A6358247AF67E635BFE990A4A61D5C5A6313132727F95E99A5B
          FF006E66FD9B7B7FE2BD5572975CE6075CC15BCFE6076E8FED4351124508DB68
          75CFA835C0B035C5C5A434EEDDED63CFB5EE6ECF7EDFA0889249294924924A52
          4924929FFFD1F554924925292492494A49249252952C268FB6F507773731BF21
          4D07FEFEAEAA98F2CEA196C23478AEE69F1969A1DFE6FD9D2536D2492494A492
          4925292492494A49249253FFD2F55497CAA924A7EAA497CAA924A7EAA497CAA9
          24A7EAA51FCFEDC7CD7CAE924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA
          924A7EAA497CAA924A7FFFD9FFED0A4250686F746F73686F7020332E30003842
          494D0425000000000010000000000000000000000000000000003842494D03ED
          000000000010004800000001000100480000000100013842494D042600000000
          000E000000000000000000003F8000003842494D040D00000000000400000078
          3842494D04190000000000040000001E3842494D03F300000000000900000000
          0000000001003842494D040A00000000000100003842494D271000000000000A
          000100000000000000013842494D03F5000000000048002F66660001006C6666
          0006000000000001002F6666000100A1999A0006000000000001003200000001
          005A00000006000000000001003500000001002D000000060000000000013842
          494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0400
          00000000000200013842494D0402000000000004000000003842494D04080000
          00000010000000010000024000000240000000003842494D041E000000000004
          000000003842494D041A0000000003490000000600000000000000000000003C
          000000960000000A0055006E007400690074006C00650064002D003200000001
          0000000000000000000000000000000000000001000000000000000000000096
          0000003C00000000000000000000000000000000010000000000000000000000
          000000000000000010000000010000000000006E756C6C000000020000000662
          6F756E64734F626A630000000100000000000052637431000000040000000054
          6F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042
          746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000000673
          6C69636573566C4C73000000014F626A6300000001000000000005736C696365
          0000001200000007736C69636549446C6F6E67000000000000000767726F7570
          49446C6F6E6700000000000000066F726967696E656E756D0000000C45536C69
          63654F726967696E0000000D6175746F47656E65726174656400000000547970
          65656E756D0000000A45536C6963655479706500000000496D67200000000662
          6F756E64734F626A630000000100000000000052637431000000040000000054
          6F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042
          746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000000375
          726C54455854000000010000000000006E756C6C544558540000000100000000
          00004D7367655445585400000001000000000006616C74546167544558540000
          000100000000000E63656C6C54657874497348544D4C626F6F6C010000000863
          656C6C546578745445585400000001000000000009686F727A416C69676E656E
          756D0000000F45536C696365486F727A416C69676E0000000764656661756C74
          0000000976657274416C69676E656E756D0000000F45536C6963655665727441
          6C69676E0000000764656661756C740000000B6267436F6C6F7254797065656E
          756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E6500
          000009746F704F75747365746C6F6E67000000000000000A6C6566744F757473
          65746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E670000
          00000000000B72696768744F75747365746C6F6E6700000000003842494D0411
          00000000000101003842494D0414000000000004000000033842494D040C0000
          000004750000000100000080000000330000018000004C800000045900180001
          FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D
          0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C0909
          0C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E
          0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003300
          8003012200021101031101FFDD00040008FFC4013F0000010501010101010100
          000000000000030001020405060708090A0B0100010501010101010100000000
          000000010002030405060708090A0B1000010401030204020507060805030C33
          010002110304211231054151611322718132061491A1B14223241552C1623334
          7282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E2
          65F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6
          B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404030405060707
          0605350100021103213112044151617122130532819114A1B14223C152D1F033
          2462E1728292435315637334F1250616A2B283072635C2D2449354A317644555
          367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F556667686
          96A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00
          F554924925292492494A49249252964F54CBCB1D53A6626338B2A75E5D98F1DD
          9E9643A9A383FCEDD57A8FFF0083A3F9681F593A9BB05F4B6DC9761E239AF73D
          D4B5AFC8C8B7DB5D1D3B018FDDFA7BBD4DFECA7D5FF43E97E92DAF17A6749CD1
          D73A75F7BF269CAB9F919B92FB6D73DDE9B1ACA2BE99556F73FF0050A7ED55B7
          ED393FAD645B4FF354FADFA21697B74924914292492494A4924925292492494F
          FFD0F554924925292492494A557A8D19D91436BC2C9188F2F69B2DD81EE3583F
          A5AEADE76556D8DFA373D977A7FE895A49253C3578ACCDEBD6D8CB43D9D1EC2C
          A4515FAD7DD98E6B9B6DB916E55D90EF4FA75777D9F1EECBF428AB2ADBBF9BF4
          2B5A9899D56375EBBF69F51A5F6578ED1454E3536C636E7FBAA7FA247AF739D8
          BEA59B296319F43DFF00CE2D51D03A2B7D48C2A62EB0DD6B368DAFB1DF4EDB2B
          FA0F7B907A66262E3F58EA031A8AE860AF1D9B6A6358247AF67E635BFE990A4A
          61D5C5A6313132727F95E99A5BFF006E66FD9B7B7FE2BD5572975CE6075CC15B
          CFE6076E8FED4351124508DB6875CFA835C0B035C5C5A434EEDDED63CFB5EE6E
          CF7EDFA0889249294924924A524924929FFFD1F554924925292492494A492492
          52952C268FB6F507773731BF214D07FEFEAEAA98F2CEA196C23478AEE69F1969
          A1DFE6FD9D2536D2492494A4924925292492494A49249253FFD2F55497CAA924
          A7EAA497CAA924A7EAA497CAA924A7EAA51FCFEDC7CD7CAE924A7EAA497CAA92
          4A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7FFFD9003842494D0421
          00000000005500000001010000000F00410064006F0062006500200050006800
          6F0074006F00730068006F00700000001300410064006F006200650020005000
          68006F0074006F00730068006F007000200037002E003000000001003842494D
          04060000000000070008000000010100FFE11248687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E
          3D27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B
          633964273F3E0A3C3F61646F62652D7861702D66696C74657273206573633D22
          4352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761646F62653A
          6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C6B69742032
          2E382E322D33332C206672616D65776F726B20312E35273E0A3C7264663A5244
          4620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F31
          3939392F30322F32322D7264662D73796E7461782D6E73232720786D6C6E733A
          69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F27
          3E0A0A203C7264663A4465736372697074696F6E2061626F75743D2775756964
          3A65306633313965382D653963372D313165312D393131652D63333332343765
          6632373832270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D
          3A446F63756D656E7449443E61646F62653A646F6369643A70686F746F73686F
          703A36316232353761352D653963362D313165312D393131652D633333323437
          6566323738323C2F7861704D4D3A446F63756D656E7449443E0A203C2F726466
          3A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861
          706D6574613E0A20202020202020202020202020202020202020202020202020
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
          2020202020200A3C3F787061636B657420656E643D2777273F3EFFEE000E4164
          6F626500644000000001FFDB0084000101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101020202020202
          0202020202030303030303030303030101010101010101010101020201020203
          0303030303030303030303030303030303030303030303030303030303030303
          03030303030303030303030303030303FFC0001108003C009603011100021101
          031101FFDD00040013FFC401A200000006020301000000000000000000000708
          06050409030A0201000B01000006030101010000000000000000000605040307
          02080109000A0B10000201030401030302030303020609750102030411051206
          21071322000831144132231509514216612433175271811862912543A1B1F026
          34720A19C1D13527E1533682F192A24454734546374763285556571AB2C2D2E2
          F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A6768696A7677
          78797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5
          C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302
          040403050404040606056D010203110421120531060022134151073261147108
          428123911552A162163309B124C1D14372F017E18234259253186344F1A2B226
          351954364564270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A
          94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797
          A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A
          3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD009F
          277B8AABA23A37B0FB1F0D876DCFBC715B7EBE9BAF36846F1C736EFEC3C852CD
          4FB3B6E879648920A3ACCCB46F5D504E8A2C745515325A385C862E2610C4CFF8
          B801EA4F0FF39F974E4481DD549A2F99F41D42F8879BDEBB9FE28FC66DCFD939
          EA8DD1D87B9BA07A7F726FBDC7550D253CF9BDE39FEBFDBF97DCB93920A0A5A1
          A283EEF335933848A189141002802DEED06AF0222CD56D22A7D71D6A5D3E249A
          076D4D3ECE8C47B77AA75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75FFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF745F7BF7BA33DD574DB136EF5FEC09BB4FB6FB
          6376FF0073FAFB64FF001FA4DAB868FECB19599FDD5BDB7BEE8AAA5C8BEDDD83
          B1F6F63E4A9AFA8A7A2AFAD9EA24A5A2A5A69AA6AE15F6C4D318CC71A0066724
          004D0605493C703A7628C3EA672446BC6993E9402A33F9F5AFD7CE0EFEF941BC
          329DF59EDCFF00253A8FAFFAAFE29F51765D3EDFC1F4CF5166F70EF4EEEF9659
          DDB19AD9D96EACEBFA2DDFBEF3197DE5D69D7183CF260F73EF28F1B88A0A5CC6
          72B31B7A67A0C8CB485133C92EA69AE06A4C284216AC41072DABB4641240F3A7
          4B9123558C451F73B0A96A9A2820F969C9C9A6714F3EB610F8BD89ECDC0FC73E
          90C0F72E076E6D6ED1C1F586CDC2EF6DB7B4AA7EEF6F60B3789C251E3E6C563A
          A16BB2904828A2A748E5F0D555538995C4334B104918E61591628D65D3E2019A
          70FCBA2F90A191CC75D15C743BFB77AA75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD1DFE3DFBAF75EF7EEBDD7BD
          FBAF75EF7EEBDD7BDFBAF75EF7EEBDD17EF921F23F63FC61D8B8BDEFBDF19BB3
          3DFDE4DE5B77AF3696DDD9B85FE2996DC1BD37549511E1315257D6D4E336C6D7
          C7CA292579F299AC8637174C91DA4A8123C51C8CCD2F829AB416CD283FCB5A00
          3FE2854D074EC51891883205500924FA0F90A927D00FF067AA12FE627F327BC7
          B4F2BD29F1EBA477365BAC7E5276B7651A6EAFA2F8FDD1FBF3B97B47A5BA7E2A
          75C577B7C8AADEE0DDFD778ED9F574BB3BAE32B598F7C46CDC755B5566727494
          BFC6DE02F329748F2DC3C66A74A9AD14107CFF00136926BC28A062B9E94AAC51
          A9C8A91F888FE41750A8A799F4C7434EECC27C45EADE9FEBFF00809D39F1D7B6
          FA57707766F1E87DADFC477B758E45F736F2EBEA4F919D6757D8B9FEC8EC59B2
          9B83714C33F455D9373519FA9812BF215550900697CA8B62F0122D56D9A391C8
          3C00E0789A13E98FF8BEB6564FF728DC2BE9C713515F20081F6E3AD817D9AF48
          3AC534F0D346D3544D1410A0BBCB348914683FAB3B95551FEB9F7A2428258803
          AD8049A019EB22B2BAABA30656019594865656170CA45C1041E0FBDF1C8E1D6B
          AEFDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFF
          D2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          45F85EA1F9F537CE1F985F21F73F48E331743B96A76B74CFC73DF9B3BB0FAD33
          9BDA9FE326D2A78EA5315B7727BFF7356617A8AAF7BEFB9ABF70E7A16DA395AB
          9A7A8A58D65FF238892E686E7C479540D4C698A03A45682A6BE54E02B5AF4B35
          DBF851A12750F95454FCB1F671A53CBA50F6CECFF97349BB3E1EECEDA9D53F1C
          BAA0EE3F9434D9ECC6E8EC8EE8EDCF90FD83B8B2DB1BA5BBC37B4399DDD263F6
          77584D9E5A66C53490C2FB8E58E1A99228E348A995B4B7A268A4B70422D5F142
          CEC4E935D4C74F11ABD7CB3D783C444A4973DBFD151C4500F8BAB0497A4BBE77
          4E85EC0F963BBB1D48F1FF0095E1BA3BAE761F575054B96D4C9FC5F775376F6F
          7A38029D00D265E966B73AF573ED598257AF8972DA7D168BFCC777F3E9B59A34
          A95B64FF006C4B53F981FB474AADA1F187A7768E562DC6F84CEEF7DD712909BB
          3B5F7BEF4ED8DC10B3105A4A0ACEC3CF6E28B0B7B0B250474B1AFF0065473EEC
          2D6DC1D5E182DEA6AC7F9D7AD1B99C82A1E895AD0607EC14E8C0000000000000
          0005800380001C0007B51D31D26B6B6DC976CD1E4A967DC7B93744B92DC3B837
          01AEDCF594959574499DCAD4E460C0E3BEC6831D4D49B7F6F53CE94741088CC9
          1D2C29E592594BCAEDC71F86186B662589A935E3E5F203801E9D6D9B55303874
          A6F6E75AEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD3DFE3DFBA
          F75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD15
          6EE481EBFE477C3CA45D45317B97BAB76C8A3569031FD399EDA892B81C591B7C
          6904FD0B8FC9F69A6CDC5A0A79B1FF008C91FE5EAEBF049F97F87A353ED4F54E
          BDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF
          75EEBDEFDD7BAFFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75EF7EEBDD178DED1A3FC97E827788B187AEBE40BC730761E3
          91AB3A623F194034B8962773726E3471F53ED3B8ADCDB9A7057FF9F7A717FB39
          3ED1FE5E8C3FB51D37D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD5DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD011D96B3E37B63E3DEE454
          D5452EE4DF3B0B23284D46963DDDB13259EA099DC03E3826CCEC4A6A7B9B032C
          F18BDC8053CB5135B3531523ECA827FC207560469704FA743BFB51D57AF7BF75
          EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBFFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD35E57F8478E8FF008C7D9F8FF8A63BEC7EF3469FE2FF00
          751FF0BFB7D7FF00299F77A7C7A7D5ABE9EEAFA28BAFD453EDF2EBDD3A7BB75E
          EBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAFFD9}
      end
      object SignatureRD: TQRImage
        Left = 526
        Top = 2
        Width = 150
        Height = 25
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1391.708333333333000000
          5.291666666666667000
          396.875000000000000000)
        XLColumn = 0
      end
      object SignatureLD: TQRImage
        Left = 8
        Top = 2
        Width = 150
        Height = 25
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          21.166666666666670000
          5.291666666666667000
          396.875000000000000000)
        XLColumn = 0
      end
      object Image_SanjeetPanditD: TQRImage
        Left = 706
        Top = 45
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1867.958333333333000000
          119.062500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676503480000FFD8FFE000104A46494600010201004800
          480000FFE109C94578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A33310000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000089B00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292547AB75AE97D1
          B17ED5D4B21B8F54C3776AE7BBFD1D35B66CB6CFE456D5CF7EDBFAE7D75A4F43
          E9ECE9184676E7F539F55CDFDFA7019EEAFF0092EBF7D56204A9EB9CE6B1A5CE
          21AD6892E3A00078A4D735C25A411E235E755E334D1D4BAAFD60C01D6B2323AE
          749EA96655586DB2D763D57BB187F4865343B6E3E33EDFE657A2FD4DFAA8CFAB
          98D90E7D85F959CF165ED0E73ABAC3770A71E8F53DEE6535BBD3F55FFA4B52BD
          52F429D32495A1749327454A407E7E0D794CC3B322A6655A26BC773DA2C70D75
          6544FA8FFA2E5CBFD79EB9D4BA7750FABD8B8166C6E767B1B9019AB9EC63AB6B
          A8FF008B7FABFA55D03FA4613FACB3AB3A8ACE55741A45E44D80170780DFFA7E
          EFA7EF42D4AC5EB7D372FA9E674AA2DDD99D3C30E4D70440B06F66D711B5FEDF
          DC57D79D752EB98FF573EBE759EA16D4FC97DB838ECA68A5A4B9F73CB2BAA8DD
          EEDBEA7A6BAAE8B9BF5AADC9D9D6FA7518D45B5BACAECC7BBD435B81686E2E4B
          1C3DF63D8E73FD6C777A5EC4AD34EDA49248A1FFD0F5549249253CBFD67FAB7D
          5737AC74FEBBD22CC676674F6BEB6E367B5CEC7F77B85F57A3FA4AB258EFCFFF
          008AFF0045FA4C9EBBD73EB6F567DDF56707A532BCBF4D8EEA575394D70AE9B2
          7750DB9D531B8D9196C6BBD3F51B659E8FE93D1FF095F4FF005B3AA64748FAB9
          9FD4B15A1D918F517552240712181EE6FE77A7BB7AC1FAABD73EAA745E90D665
          F5BC5BFA8E49391D4323D50E7597BF577BBE939B537F435FF5134A5C4FAC995D
          6B0B37EAB58FE82706AE9F9228C5A2AC9AEEDE5ED6575E256F86B9BB9957D3B1
          6FD9FE315B80F6FEDDE8BD43A5D25C1AFCA7D7EA50D9FA3BAEAFE97FD6DBBD62
          FD7EFAE5F56B371FA7FD832C65E474FEA18F94E1535C5A18DDDBFF004BB7D3FC
          EFDE5D3F50BBAFF5EE9F66160619E975654D76E5E7069736A7696FA780DF51CF
          B9EDF6EDBFD2AD252DD67EBFFD5CE958D45ADB8E75F96C6BF1317146FB2C6BFD
          AC77FC1B777FA44BEAA7D70BBAF5B9D46674EB3A5DF8018E7B2D76EF6D9BCB37
          EE652FAACDACFA0E62E7BA27F8B9FAC9D1EFF4B13A96263E38B379EA0CA3D4CD
          7B40DADA76E57A94515FF22BB3F97FA45BDD1BEA355D17AD5BD470B3EF38F94C
          8CDC5B836C375A0B9EDBDF91ED737E9FF36CAFFF0003FD1A5AAB473F17FC6C74
          6C9A1B90CC1CD7D5582ECDB2AABD466302E732A76458D2DFE776EF4DF5A3EBD6
          0646261F4EFABFD4A96E4F5676C39C1C231A91ADD758DFA75E46DF65553FD3B7
          FB6BACE99D1FA5F49A5F474EC6663576BDD6D8D60FA4F719739EE74B9DFF007C
          FA0AB65FD53FAB398C6B323A5E2B9AC76F6C54D69DC79D6B0CFA5F9E8D153E75
          81F54BACE3F59AFAB7406DBD5BA774AB43EAA73AE151C9B9CD8C9BB0491E9358
          D76C7FAD76CFD27FA6F4D75DF567A77D6EC7FAC5999BD6AC6BF1B3B159639959
          1E9D57EF219894B25CF77D9F1FE9DDFE13F96B672FEB07D5BE90C14E4E762E20
          A84368DEC6B8003E8B286FBFFCD62CA1FE30BA5E4903A36167F5799F7E2E3B85
          623F7AEC9F41A868841D23A29C9FAEDD77AA67D25C28B71DB866C1EDF65236DB
          5CFB5DE9EFFF00B73F96BB05CC9EA9F5EF32061F46C6E9C267D4CFC9F5091FF1
          182D2E63BFEBCACF44C5FAE0327ED1D7B3B15D5069030F0EA3B4B89F6BDD917F
          E97F47FB8D6A297752492450FF00FFD1F554924925317B5AF6963C0735C08734
          89041E410AA0E89D143B70C0C60E1C1F46B9FF00A859BF58BEB0F55E9D954E07
          49E8F7F53CBC8617B2C04578ED83B36DB90EF6B5FF00E67E62CF38BFE337A88F
          D26660745638820515BB22D68FDD77AFBA873BFA885F82997F8CEC76FF00CC6C
          F14B037D134BD8D680008BAADD03FABB96E750FAC5D0BA581FB433F1F19C46E0
          C7D8D0F23C5B54FA8EFF003561D9FE2FAACEADEDEB5D63A8F5236B48B186EF4A
          993F9D5E254DD8CF77BB6FE9169748FA9BF577A5514B29C0C77DF53407653AA6
          9B1CE006EB0D967A8F6EF8DDF4D2534C7D7FE939276F48C5CDEB0492376263BF
          D3047EFDF91F67A9BFE7243AAFD7BCB818DD0F1B01B322CCECA0F91FF15855BD
          D5BBFB6BA688D070124B553CD59D3BEBDE6BB6E4F55C4E99483AFD8287596387
          EE9B739CE6B3FAECA947FE60F4EBDD3D53A8752EA8D3CD59394F15FF00DB78DF
          675D4264A94E5607D53FAB5D38B5D87D331AA7B7E8D9E9873C7FD7ACDF6FFD35
          AB11A0E02749152C9D249252C9D249253FFFD2F55497CAA924A7EA94EBE55492
          0A7EA9497CAC920A7EA94EBE554920A7EAA497CAA922A7EAA497CAA924A7EAA4
          97CAA924A7EAA497CAA924A7FFD9FFED0E6E50686F746F73686F7020332E3000
          3842494D0425000000000010000000000000000000000000000000003842494D
          03ED000000000010004800000001000100480000000100013842494D04260000
          0000000E000000000000000000003F8000003842494D040D0000000000040000
          00783842494D04190000000000040000001E3842494D03F30000000000090000
          00000000000001003842494D040A00000000000100003842494D271000000000
          000A000100000000000000013842494D03F5000000000048002F66660001006C
          66660006000000000001002F6666000100A1999A000600000000000100320000
          0001005A00000006000000000001003500000001002D00000006000000000001
          3842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E80000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D
          0408000000000010000000010000024000000240000000003842494D041E0000
          00000004000000003842494D041A000000000351000000060000000000000000
          0000003C000000960000000E00530061006E006A006500650074002000500061
          006E006400690074000000010000000000000000000000000000000000000001
          0000000000000000000000960000003C00000000000000000000000000000000
          010000000000000000000000000000000000000010000000010000000000006E
          756C6C0000000200000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E670000009600000006736C69636573566C4C73000000014F626A63000000
          01000000000005736C6963650000001200000007736C69636549446C6F6E6700
          0000000000000767726F757049446C6F6E6700000000000000066F726967696E
          656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E65
          72617465640000000054797065656E756D0000000A45536C6963655479706500
          000000496D672000000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E67000000960000000375726C54455854000000010000000000006E756C6C
          54455854000000010000000000004D7367655445585400000001000000000006
          616C74546167544558540000000100000000000E63656C6C5465787449734854
          4D4C626F6F6C010000000863656C6C5465787454455854000000010000000000
          09686F727A416C69676E656E756D0000000F45536C696365486F727A416C6967
          6E0000000764656661756C740000000976657274416C69676E656E756D000000
          0F45536C69636556657274416C69676E0000000764656661756C740000000B62
          67436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254
          797065000000004E6F6E6500000009746F704F75747365746C6F6E6700000000
          0000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D
          4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E
          6700000000003842494D041100000000000101003842494D0414000000000004
          000000053842494D040C0000000008B700000001000000800000003300000180
          00004C800000089B00180001FFD8FFE000104A46494600010201004800480000
          FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292547AB75AE97D1B17ED5D4B21B8F
          54C3776AE7BBFD1D35B66CB6CFE456D5CF7EDBFAE7D75A4F43E9ECE9184676E7
          F539F55CDFDFA7019EEAFF0092EBF7D56204A9EB9CE6B1A5CE21AD6892E3A000
          78A4D735C25A411E235E755E334D1D4BAAFD60C01D6B2323AE749EA96655586D
          B2D763D57BB187F4865343B6E3E33EDFE657A2FD4DFAA8CFAB98D90E7D85F959
          CF165ED0E73ABAC3770A71E8F53DEE6535BBD3F55FFA4B52BD52F429D32495A1
          749327454A407E7E0D794CC3B322A6655A26BC773DA2C70D756544FA8FFA2E5C
          BFD79EB9D4BA7750FABD8B8166C6E767B1B9019AB9EC63AB6BA8FF008B7FABFA
          55D03FA4613FACB3AB3A8ACE55741A45E44D80170780DFFA7EEFA7EF42D4AC5E
          B7D372FA9E674AA2DDD99D3C30E4D70440B06F66D711B5FEDFDC57D79D752EB9
          8FF573EBE759EA16D4FC97DB838ECA68A5A4B9F73CB2BAA8DDEEDBEA7A6BAAE8
          B9BF5AADC9D9D6FA7518D45B5BACAECC7BBD435B81686E2E4B1C3DF63D8E73FD
          6C777A5EC4AD34EDA49248A1FFD0F5549249253CBFD67FAB7D5737AC74FEBBD2
          2CC676674F6BEB6E367B5CEC7F77B85F57A3FA4AB258EFCFFF008AFF0045FA4C
          9EBBD73EB6F567DDF56707A532BCBF4D8EEA575394D70AE9B27750DB9D531B8D
          9196C6BBD3F51B659E8FE93D1FF095F4FF005B3AA64748FAB99FD4B15A1D918F
          517552240712181EE6FE77A7BB7AC1FAABD73EAA745E90D665F5BC5BFA8E4939
          1D4323D50E7597BF577BBE939B537F435FF5134A5C4FAC995D6B0B37EAB58FE8
          2706AE9F9228C5A2AC9AEEDE5ED6575E256F86B9BB9957D3B16FD9FE315B80F6
          FEDDE8BD43A5D25C1AFCA7D7EA50D9FA3BAEAFE97FD6DBBD62FD7EFAE5F56B37
          1FA7FD832C65E474FEA18F94E1535C5A18DDDBFF004BB7D3FCEFDE5D3F50BBAF
          F5EE9F66160619E975654D76E5E7069736A7696FA780DF51CFB9EDF6EDBFD2AD
          252DD67EBFFD5CE958D45ADB8E75F96C6BF1317146FB2C6BFDAC77FC1B777FA4
          4BEAA7D70BBAF5B9D46674EB3A5DF8018E7B2D76EF6D9BCB37EE652FAACDACFA
          0E62E7BA27F8B9FAC9D1EFF4B13A96263E38B379EA0CA3D4CD7B40DADA76E57A
          94515FF22BB3F97FA45BDD1BEA355D17AD5BD470B3EF38F94C8CDC5B836C375A
          0B9EDBDF91ED737E9FF36CAFFF0003FD1A5AAB473F17FC6C746C9A1B90CC1CD7
          D5582ECDB2AABD466302E732A76458D2DFE776EF4DF5A3EBD60646261F4EFABF
          D4A96E4F5676C39C1C231A91ADD758DFA75E46DF65553FD3B7FB6BACE99D1FA5
          F49A5F474EC6663576BDD6D8D60FA4F719739EE74B9DFF007CFA0AB65FD53FAB
          398C6B323A5E2B9AC76F6C54D69DC79D6B0CFA5F9E8D153E7581F54BACE3F59A
          FAB7406DBD5BA774AB43EAA73AE151C9B9CD8C9BB0491E9358D76C7FAD76CFD2
          7FA6F4D75DF567A77D6EC7FAC5999BD6AC6BF1B3B1596399591E9D57EF219894
          B25CF77D9F1FE9DDFE13F96B672FEB07D5BE90C14E4E762E20A84368DEC6B800
          3E8B286FBFFCD62CA1FE30BA5E4903A36167F5799F7E2E3B85623F7AEC9F41A8
          68841D23A29C9FAEDD77AA67D25C28B71DB866C1EDF65236DB5CFB5DE9EFFF00
          B73F96BB05CC9EA9F5EF32061F46C6E9C267D4CFC9F5091FF1182D2E63BFEBCA
          CF44C5FAE0327ED1D7B3B15D5069030F0EA3B4B89F6BDD917FE97F47FB8D6A29
          7752492450FF00FFD1F554924925317B5AF6963C0735C0873489041E410AA0E8
          9D143B70C0C60E1C1F46B9FF00A859BF58BEB0F55E9D954E0749E8F7F53CBC86
          17B2C04578ED83B36DB90EF6B5FF00E67E62CF38BFE337A88FD2666074563882
          0515BB22D68FDD77AFBA873BFA885F82997F8CEC76FF00CC6CF14B037D134BD8
          D680008BAADD03FABB96E750FAC5D0BA581FB433F1F19C46E0C7D8D0F23C5B54
          FA8EFF003561D9FE2FAACEADEDEB5D63A8F5236B48B186EF4A993F9D5E254DD8
          CF77BB6FE9169748FA9BF577A5514B29C0C77DF53407653AA69B1CE006EB0D96
          7A8F6EF8DDF4D2534C7D7FE939276F48C5CDEB0492376263BFD3047EFDF91F67
          A9BFE7243AAFD7BCB818DD0F1B01B322CCECA0F91FF15855BDD5BBFB6BA688D0
          70124B553CD59D3BEBDE6BB6E4F55C4E99483AFD8287596387EE9B739CE6B3FA
          ECA947FE60F4EBDD3D53A8752EA8D3CD59394F15FF00DB78DF675D4264A94E56
          07D53FAB5D38B5D87D331AA7B7E8D9E9873C7FD7ACDF6FFD35AB11A0E0274915
          2C9D249252C9D249253FFFD2F55497CAA924A7EA94EBE554920A7EA9497CAC92
          0A7EA94EBE554920A7EAA497CAA922A7EAA497CAA924A7EAA497CAA924A7EAA4
          97CAA924A7FFD9003842494D042100000000005500000001010000000F004100
          64006F00620065002000500068006F0074006F00730068006F00700000001300
          410064006F00620065002000500068006F0074006F00730068006F0070002000
          37002E003000000001003842494D04060000000000070008000000010100FFE1
          1248687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D7043
          656869487A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D786170
          2D66696C74657273206573633D224352223F3E0A3C783A7861706D6574612078
          6D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786170746B3D
          27584D5020746F6F6C6B697420322E382E322D33332C206672616D65776F726B
          20312E35273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A
          2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E74
          61782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62
          652E636F6D2F69582F312E302F273E0A0A203C7264663A446573637269707469
          6F6E2061626F75743D27757569643A66636232646266632D656462302D313165
          312D613436352D616264666631376133613537270A2020786D6C6E733A786170
          4D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
          6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A
          646F6369643A70686F746F73686F703A33636235326163372D656462302D3131
          65312D613436352D6162646666313761336135373C2F7861704D4D3A446F6375
          6D656E7449443E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F72
          64663A5244463E0A3C2F783A7861706D6574613E0A2020202020202020202020
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
          20202020202020202020202020202020202020200A3C3F787061636B65742065
          6E643D2777273F3EFFEE000E41646F626500644000000001FFDB008400010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101020202020202020202020203030303030303030303010101
          0101010101010101020201020203030303030303030303030303030303030303
          030303030303030303030303030303030303030303030303030303030303FFC0
          001108003C009603011100021101031101FFDD00040013FFC401A20000000602
          030100000000000000000000070806050409030A0201000B0100000603010101
          000000000000000000060504030702080109000A0B1000020103040103030203
          0303020609750102030411051206210713220008311441322315095142166124
          33175271811862912543A1B1F02634720A19C1D13527E1533682F192A2445473
          4546374763285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A
          393A48494A58595A6768696A767778797A85868788898A9495969798999AA4A5
          A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9
          EAF4F5F6F7F8F9FA110002010302040403050404040606056D01020311042112
          0531060022134151073261147108428123911552A162163309B124C1D14372F0
          17E18234259253186344F1A2B226351954364564270A7383934674C2D2E2F255
          657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F528475766
          38768696A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F8
          39495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03
          010002110311003F00DFE3DE88046475EEBDEFC0D45475EEBDEFD934EBDD75FE
          BFFAFF00EDBDB7E4C5C70CD3ECE07F97F93ADFD9D7873EFD1B2C8A59492B53F2
          FDA0E475E38EBD7E2FFEF1F4E4FF00C54FBF170A85954FC870A927FCA7AF75DF
          B77AD75C49B1E49B1B002DC5FF003ED24932C32EA9246D06800A62BE641A5787
          AFCE9D580A8C0EBB1FF22F6F296D4D56057CBAD75E3EFCE09A2AB107FD5FEAFF
          000F5E1D7ADEEC506A0D9AFDB8EBDD77EEC481C7875AEBAB737FF7D6F7428DA8
          386C8F97979FCFECFF0001EB7F2EBBBFBB6A5A85D4351EB5D0512F7AF4DC3DC7
          4DF1EE5ECBD9C9DDF59B426DFD4DD5C73747FDF39B6753D50A297702E1BC9F73
          F60B39FA9018A02E01452C137D75A7D50B2F17FC6BF8687D3571A538678F4F78
          13184CFA3F47D7F97F87A15FDABE99EBDEFDD7BAF7BD1C823AF75D7F87BAEA5A
          E8D5DD4FCFAF7CFAFFD0DFE3DFBAF75D7D78BF3EE8DDC1955A8E3FD5F98FE5D7
          BAEFDDB80A9EBDD173F92DF2DFE35FC3BD8553D9BF26BB9F6274E6CDA7593C59
          1DE199868EB3293448CE68F03858BCF9ACFD71038868E9E793FC3DA3B8BB86D9
          C091C17230A32E78D283D0E454D057CFABAA33FC23FCDD6BADDFDFF0A37ECADF
          9B377EEE5FE5B1F06BB6BB9BAE764E133393CFFCB0EF8C0E5FA97E3DEDEA2C75
          19A99770D31C9AD0E4B70632952376456A8A596A1FC6891333E8F64F26ED773C
          CB15A44A88456A4EA623EC1DAA466A1893C38746115ADBA4665B890923F08C7E
          D3C7F653EDEA94FE377F30FF00E631FCD1B707C86A5F917F3FB76FC44A8F8F7B
          676E764ECFE9AF8FDD359092A3B6F239AA8F36D7DBD89A6C078F74E4F1F5D2D0
          D3F81EAA6A8477AA0EE522F23027BC8E59650F7370EC9C406A8CD6840009507E
          5C34FCE9D2D736D1DB936AA0487008A70F99393FCF3D6DB3FC963AAFF987F5FF
          00C65DC5BA7F990F6DE63B07B7BB6B7E576FEDADB37700A66CEF52EC6C8417C6
          ED8DC12D228A3A4CFE42490D554E3E06961C682906B320915443B4C12430CB38
          D5A24A1009A54D32D9E15C53CE9EB824AEE9A1D304516748CB7A939A7E5FE1AF
          5708DF4E7817FAFF004FF6FF00D7DAA9FBA3ACCBA54352A4F0A1A7991C7C88C6
          40E930E38EBC5ADF8FE83FA5FF00C6FCFBB4972D0805A2AB1A0F200FA9AE7F21
          FB3AF015F3EBB2DC5FF03EB6E7F3F8FF005BDEE5B8A299750D0A3BA993427CBE
          CF3A79F5A03CBCFAE43DAC53A8034C1151D57AEAFC9163C7FB6E7DB425D53326
          96EDA0AF967FE2BFE2ABD6E98EA93BBC3F9B1E43ADBF9C5FC5FF00E58982EBFA
          3ADC276AF5F6E2DDDD91BF32A6AE3AEA0C8566072B94D8D41B4CC1531D1E8867
          C231C819E39BC8950A881180724B71737F35F42216096493AA30232F9C9AF100
          1E001CD2A6A0E90630DAC66CE7B8909D54EDFB7FD91FB3A1BB737C08DA9BB3F9
          A06DBF99D9BEC1EE7AD9B6D74B514388EB58779E731BD4388DE583CAFF0001C5
          EE08F0D8AAAA1A7AAC8D5E0EBEABCF4753E7A7A86BC8EA45D4DE658E4DE20B75
          43A87EA311F2E19FF4C057EDF23D270F4B7229F2EAA3BE69D250F5B7FC29DBF9
          75F62355A6CDC7EFEF8B1D918FDD5B9AA2BE8B1189CCD3ED8A7DFB4D3C197ADA
          D9929CC5498A9A38E4D7A0F8F459869F749C5A26E33493C559449190DE94033F
          60A1AD7A5F6CA5AC2502A6A1B1F3E8FF00D57FC283BF9698ED1C975C613B0BB2
          37961703B931BB4373775ECAEA3DE7B97A236BEE6CBE53F8363F139EEC6C7D13
          D2D1B556443224E207A46D2584A56C4EDB9817C631C5B74EF18FC4028AD3CC02
          D5A7A569F674C9DAAE442B2EA53515A0391F6E3FCFD5DA47224B1A4B13AC91C8
          8B24722306474750C8E8CA48656537047047B3F4712223AFC2C011F9F45A4104
          83C7AE7EEDD6BAF7BAFF0087AF75FFD1DFE3DFBAF75EF7EEBDD15BF9B7DA3DBB
          D27F11BE4576DF41EC097B47B9BAF3A9B77EEAEB8D850C4F512EE2DD18AC5CD3
          E3E9D29635792BBED8A9A834E80BD4087C6A0961ED15F33081846D49352D0D2B
          4AB0CD3CE993D391805C06E1D6AA7FC9D7ADFF0096DFF31F385F94BF3B7E5061
          7E70FCFCC719F76EEBEA9F9059CC8E076C7C7B59727514B4BB236DF4E6E9A8A0
          DAB97C66DEAB83D134705552A1641E34FC90DBBD8ADEDD5A5CC6C93B229F11C5
          15FCC80C48A9078E413EBD18CC2E0431C91B23402A282955353C4711514F2A7E
          67A3EBFCC0BBABA83E78FC89EA2FE4FBD1BD87D658DE9CC36676EF66FCE8CEED
          DDF1B736BEDEC1F516D3AE832181F8F9B5D31F59450E537576065160353438FF
          0020A4A28EF2840B2694D2C9F5120B6842AC4B29AB7C29E5915F418AF9F95704
          D5219962FA9D25830F2C9FCFEDFE5D162F8FB55D53D0FF00F0A95F905B2B6726
          CFDB5D7DBBFE0C6C1A3C5C58FACC263B6FEDF9B67ED4DABA62A7A86AC10968A8
          704F09D2C644D443AF2C4298AEADC5E46CD2EA8A39641A8914A53192698C50D7
          3F6F576B76369AC03E2B018033C7D3FD5FB33D6DD34592A0C9D3C5558DACA6AF
          A49D4B4355473C3534D2A8768D9A39A1778DC07522E09E411F8F6671EED6B76C
          60B562CE467862A699CE3F3E8B9A19233FA8A41F9F52D8FD2E2E3FA707DBD712
          156895D2A9E6280E7E7E7F338EAA071A7488A2ECBEB6CA6ECAEEBEC7760EC7C8
          6FBC5C22A725B268775E06AF7763A9ECE7EE2BB6DD3E41F31490FA1BD5242ABC
          1E78F6CBCB65710980DDC5424690186AAFE4695AF90E9C314C94768980F520D3
          A587DD522542D0FDCD38AD6A76AA5A369A3FB97A6491627A9106AF31A7595C29
          7B690CC01373EDEAC16CAB6E92A090AD74B50D7D58819A60D4F0F5E9BC9C918E
          A483C5C1041FA5BE9FEC0FB54ACBA43A30311A5294A0FB0FF214EABF23C7AA07
          FE6CFF00CDF3B27E29F63ECCF867F06FA4AAFE4F7CEAEC7C136EA8B6651D2566
          4F6EF59ECF3E55A6CD6ED8B125AA065F2A63D5474D3B410F8CAC9231570012EE
          17770F21B7B370AEB4D4C00620FA282698FC44F0E183C5447180BADC76FA75AB
          E7F2FF00F9FB8CF987FCFCB03F2BBF9823ECEF8A1B9FE32FC74DE38EDD580DF1
          B9A9F038A4EC2D8383C8612B171D165129DA92BA18F235150D8D4696632C4523
          0CF652D2422D5227964D6EF2EA2C01A923BB8628588A0F4F5A74A47EA23242B5
          34FE5FEAFF00567ADAA3F9637F39DD99FCC5FE51FC94E91DB5B3739B776DF5F6
          DCC5763750E7F3D879F0359BD7ADAA338DB70E75A86AA79AA25A6C9CF3D3D552
          CF64492291881A74FB6F6B9E56DCE56B9353229D3F2D3902B814D35E3C4F9F49
          CC4C602F4A1539FB0FFB34EAA13F9C2F45EF3FE613FCED3ACFE296C2A9FE1593
          EB2F85F97A39B3ED3554676FD4F71E66BD6AF70C6F8FA9A3A98E3C1EDB33CE54
          B90FA59585997DBD7311FABB8655A92CA147CF4814FB2BFB3A7E0731C40D6833
          FE1EB695F899F097A13E1F7C5FD85F143AE365E06B7ADF67ED6A2DBF988F3782
          C656BEFDAF42D5398DC3BBE9AA61AA872D5D99CACD2D432D4199620E2353A517
          D9DDA41E0C0A8C6B21F889F33FE6F4FDBC49E934D732CAE1CB9C70A797FABCFA
          372889122471A2C71C6AA91C68A111110055445501555545801C01ED48000000
          A01D2726B93C7AE5EF7D7BAF7BF7F87AF75FFFD2DFE3DEABD7BAF5EDEF4CCA83
          531A0EBDD7116FA707FAFF00C56DCFB651548F0CE924E587DBE74CFF00AB81EB
          7F3EB5AEFE74F5DF027ADE8B677416D7F897F1E7B7BF98AFCB2AD93AFBE366CE
          8BAAB6ACFBA31D92DE795A6C7E5FB5379E4F0D498ECA50ED7C0C8925599AA263
          F77574F6B3AACDEC3F7173149248BE1B76B0A0F24A7A1078B79003867A576702
          0909D2046455E98247F9FE7D0B9F14FF00E1385FCAFBA27A836A6D5ECFF8D3B0
          7BF3B5C45499DEC1ED0EC45CCE6B239CDED51047365E5C242F91A6A6C3EDCA6C
          8B49F654B1C49A23D25BD5F43216E032101BC5D1F09381F214C62A3550E7883C
          7AD78C21964368CC91568284E47CC7F80531D5187CC5FE511F06F1FF00CFD3E2
          57C65A2EA1C9F5E7C7BF929F1DB7CE5371EDDEBDEC2DEBB3E7AADEDB568371AE
          372988CC0CC5556D14D4ED45179A9E093C13D915E2FD4C4B2416D14E96CB6D91
          2A00B8A0D5A6ADFE0C70F3E9DB5B8B80B351AA8ABC4F95063FD478F469BE6EFF
          00224DA3F017A8379FCBCF851FCCD3E48FC37DC5D294155BD7090773F73D56E7
          EA8C85751D03C87684AF5698E95EA77A57C09041054C5908E6A89F4C9148802A
          DAF6DADEDC092544D2680100AB6AAE3495AD5BCC548A0CD3AD4324B3CE81D895
          F318E1F3AF97FA864F554945FCF37F98FF00F30CF8998DD9751F267A1FE13ED0
          D87B7EB36BFC9DF95798AAA2DA3BB7B5370662B5BF81E1BAB76D62A49B374952
          304631947C2D3C0A16591DB427EDFB6AE6D4A787E35CC9246683470269C3C4A0
          AB11F3CD686BD2C9EDE240AF09019B3EA07D9E83A297D2387F89BF033F9A0FC1
          CEEDD87DAFDF3DD5D17076A6DA3DA9F3CB78576E7C6757EF8DC39EA1996BB198
          1A8ABC562E07DBF0D4543094D755CF3D4C7016205997DEEFADD66DBA66874AE9
          22BA4004799E19E038E702A7AF453BAC72F8A71A789A91FB0FFABF975B20FF00
          34CF84DFCD0BE6CFF31EF8F7D9FF000B3B2773753FC63ED1F8EF51D5FBD7BB36
          DEE7AADAF1EC8EBA9F72C999DC95B550257C1969F35BEA83262A30AB4B486468
          1159D8125552A5AC9B831BE96DDCCF29AAD3E10A3B454F0071F6FCFCC97DB5C8
          8641A92B153A1A3647F2A6FE6BBFCBD7B23079AFE5D5F3DA1EFAE8ACB54D3C1B
          D7E3B7CECCAEE7DC98AC43D4A86CB67B6BEE2C1AD55540669E10E052B63EA22D
          7A6D50BAAEBE1DA25425E3915641E6BE78A77AB769F3A507CF8D28A25BB86650
          0A53353519FC88CE715AD3A22FF12BF97D7F3C9EADFE609F27F787676C9EB2FB
          7F9539C32760FCBADBBD9F44F06DDD82F4F5ED45B6B612CD0CBD854B458F9A78
          80C7A52514C1E05BBE83ABDB4FB65C47E143029D7E6698FDBC294C7F2FB58959
          5E3ED9053F9F57E189FE457FCB32A7A7F64754F687C65D89DC75FB4F392EF3CA
          766EF8A5AB97B37796FECA56AE53726E8DCFBC71B5B439CCAAEE1C8EA69E8679
          E5A368ECAD1B30D64D92C2B1AC724C7C51C4A9A1CF97A53CB22A78E387499246
          8DB5A1A37AF477FABBE19FC68E96EDFDD7DEFD5FD4DB6B667676F2EBED9DD579
          8DC185866A644D81B12348F6E6D8C663565FE1D8AC7537863690411234CF1233
          92C092A92CE2495260BDE01FB0122848F3F5CD781A79F5A2EC75F77C5C7A4260
          FE12F586D3F9D3D97F3F9B2F56FD81D81D1FB47A73238AC8C54BFC1F0741B3F2
          55558771E3F232C827A4A9C8635E2A59A3B08F446CD7BB1F69DAD0477A6F5E55
          5800AE4D3B88D392714A70F99A53ABA3128D12292EC47CF03C80E845EC6F999F
          123A88D547D9BF267A276455D1A4524F8BCFF69ECBA2CD859F5183C5826CC1CC
          543CFA4F8D638199CF0A09F779374DBE20C4DD290BC74D5A9F6E907A762B1BB9
          DF4470316F9E3FC34E8C55057D1656828B298EA986B71D92A4A6AFA0ACA7712D
          3D5D156429514B53048B759219E0915D58705483ED6C7224B1C72C6D58D8020F
          A8391D26652AC5585181A1EA5FBBF5AEBDEFDD7BAFFFD3DFE3DFBAF75D5AFEEA
          CAAF4D42BD7BAEFDEC0A57D3AF75A96FCA6E8CF981F1C7F9DC769FF314D8DFCB
          D7B0BE7560B37D1FD7FB23A2333B5FB0F6D62F1FD555949B763C3EF890E1B2B0
          55545367E69E96A22A5FDB852386ACC81CB486401D7B7BC59E59E050CC2566A1
          5241FE1CF9951F0E7049E8C6092031B42CFA4B2815FF000FEDF3F5E8D7627F99
          B7F387DDF5F4949B5FF9226FFC44733786A2AFB03BCB65ED6A6A490C57F334D9
          1FB16681650C2C10DC5B917F744BCDCD943359832A920908E7EDA67F970E93BA
          42A240242581C7A11E5E5FE5EA8CFF0098665BF9B9E6BF9A2FF2A6ED0F913D7B
          D23F17BB37797656E4E97E8DCDF5D6E95ED4C66DB6DCB2D18CDD4EE28A108B50
          D8EC7E5E491226AB98CDE49010174D9204B81AE6B9AF8EA14E469E0428380294
          C531E5EA336B5F164D5186A2375B4E4DFCADB69773D16D88FE75F72F627CCD8F
          6C66A9773D0EC4DE9F6DB4BA69370D254256D3D6D575EE0247977043435F12CB
          4B0653215B4F015F4C7ECCA0DAD45CA4D2CAC64D241143EBFC47C8E7141C788F
          34DC335E9359AFE42FFCA1B3DDABFE992B7E09F4C41BC4E63FBC12D262A973D8
          4D89519A568E44C83F596273945D7714A668848E9163238A690B34AAE5989522
          C515E4EE7094A005C9523C866ADF2A0207A74EF8F2507757AB24DC1D1BD2BBBB
          64E13ADB74F51759EE3EBBDB75D87C9EDED879BD8DB6727B3F0590DBEC5B075B
          88DB55B8C9B0F8EAAC4EA2207861468D5995485620AA8E289A252B10D07C863E
          5F99F5AF1E3E43AA788E189D66BD0A11451C31C70C31A431451AC514512AA451
          471A848E38E350111114000000002C3DBA14803476D1714F871C05387ECA7DBD
          53A02FB5FE517C6BE8AA7A9A9EE8EFEE9BEAB4A51219D37F7646D1DA952A6289
          6691051E632F4B57248913862AB196D241B5BD974D7BB7C2ECB25E47F50D8EDA
          9351FC414B119F90FE5D284B6B99155D207319340698AFA5787F3EAB277D7FC2
          83FF0095B6D7A8A8C56C5EF0DC3F21F7353948D76B7C71EACEC4ED8CA544F269
          11C30D5E1F6FC58176677504FDE69526C4DF8F743BC5BC6856285DA830480AA7
          1E649A8F99D3F91F3DA5ABB96AB014E3EBFEAFCFA037FE1DE7F980F790ACA2F8
          73FC9DBE43E4E397CB1E2B7FFC9BDC18CE92D981CF88C1535B8BC8D34798922D
          25AF1453EA6B8F5A90414B6D7BBADD2B5238E2A915C172B53C4791F9629D3AB6
          F007412CB44D59F2C79D3AC0BD49FF000A28F92CD8A3D85F253E29FC08DB2D23
          D5E5B11D27B04F70EFAB78E54A7A28F37BB6A7258C09EA066093A7A882AC74FB
          7235DC1E42B3DCBD14E38257F25A13FCFA6A59601752082D7FC50F035A91F91A
          FF0083A5C54FF2321DC144949F357F9877CEAF95747510E9CBED3A9ED593AA3A
          FAB9D8B4869DB6AEC186913EC2099C948CCC03003586B5BDD3E8878D3866D6CD
          C49A9208E0493E829427FC03A716E7C3A18D694E85BEA1FE409FCA77A6B7D53F
          64E03E26ED6DCFBC6867C5D662B2DD919CDD1D84988ADC408CD356D06377465E
          BF1A95324D1F9242F1481E424D85EDED7DBDBD4012206461923B470E25283269
          4A8F2EAAD793F8864590ABFCBAB8F8A1869A08A9E9A28E9E0A78D2182086358A
          18618942471451A0548E38D000AA00000B0F6B5B4C10E98942AAF0C600FE4294
          F98E92E58D49A93D65BDBDBACEAA2A4E3FCBD569D7BDF813A9815C0A75EEBFFF
          D4DFE3DFB867AF75EF7EEBDD747E87DB4EDFA6EC0E00FF00567ADF9F5E1F4FF7
          DCFF008FBF464940715FE47E7D78F5DFBB93415A7CBF9F5AEB591FF85066E0D8
          BB57B9FF00939F6B6E3DE7B57078CE9DFE62DB2EA77A55E4F334B1C9B676CEE1
          C5C12D6E6F2D01AAB5061E93F80A1A89E78B428651A9757A83BBC188A37852D6
          431B2E1AB4A1045789E35F9FECE955B349A8E8E1E7D1BFEF1FF85057F2C5E98D
          C33ECDC37716E0F90BBDA00CBFDD3F8C5B0F3FDD15F2D4895A05A38325B7A24D
          B934F24A028295AC9761EAF6B9B748D90C96F03C91834069A457FDB5081FED7A
          A2C04FC722AFDA78FD94FF003F416D27F369F9D3F20A9D13E197F289F90D5D43
          5D54B4945D83F2D371E23E3BED2A65911F4D6556067A5CDEE4AA82295479044E
          B65B598EA04175D5F6E13CC2D92158E165C9EE66F9114D2053E60F5B8FE9A8D5
          76320F2031FE5FF275DD774BFF00C286BBE23AB9376FCB8F85BF0B30792A82AB
          B6FA4FA973BDCDBCB1340EA0388F76F60F8B1AD58839578D57D57FA0B7B756DE
          F5D6482EEE48403B4A958C93C6B44A1F9D08EAC9346ADA96DFD7E2CE3F9F4A9A
          4FE507F253796C83B4FBF7F9CA7F30BDFEF5534FFC5CF5D663ADBA531992C755
          4BE59B1120DB3B4323B95E9403A15CE4C384E05871EE9F4715DC2CB701D9D3B6
          A4C8E18793282C33E64D38F014EB4B349149E244403E5818E846E98FE429FCAF
          3A85AA6BB27F1C71DDEBBC6BAA23AFCAF61FC92CCE57BA77865ABD4AB3D655D7
          6EDA8A9A0FB89668C3B14A64FE9F4E3DEE1DB2C4CA22FA43AD6A4120806A294E
          D2299AD388A57CF86BEA2E40907D43786E412B5C547981D59E75B746F4BF4E63
          9315D47D49D6BD638E8CB15A2D83B1F6D6D1A7BB821CB4782C6D0866706C49B9
          238F66B1DB45E0058E2519AD08AFEDD449E992C75331393D0A607E2DC7B7638B
          49F0F49108E1535FD9F2F975E27CFCFAF117FC91F4FA7F85F8B1B8E6FEEF245A
          FE162BC28471C791AD71F2C7DBD6ABD77F4F6E00545140AFECEB5D776F7BD2B5
          0682A3AF75D1E6C3FDE7DB4E0332A32923D7FCE7E7E9FE6EB7F3EBD6F6E695D2
          4051D6BAEFDDB34F9F5EEBFFD5DFE3DE8D3CF875EEBDEF63AF74037CA0EF28BE
          33FC7CEDCEFC9B606F6ED28BAA3656577849D7DD738F4CA6F4DD498D442D8CC1
          5148E91BCE43EB91CDC43023C966D3A4A4BC678EDA468A0323D29A41A56A687D
          7FC1F2C57AD8A5454D075AE3E0BE78FF00C285FE7B50D467BE1BFC14E9EF859D
          3F968A9A7DB5D97F2D3704B92DF935390AB532D36D670B0E484AC5CC2EB84585
          4A59E4B9F6511B6E93691E280A45291AD169E6433F706CE06385401C7A58F1C1
          1C28DC6422B93FE41F9F4B0A5FE4EBFCD9FE446E37CBFCE0FE73DDA741B3F274
          70D3E77AB3E256DD9BAB709594EFA65ABC745918E7C3D25006626233A504D232
          80C083603526CDF5494998B383F13B1660079015033F6FCFAA7D53ABABC6AAAB
          4E007F87A16A5FF84C0FF2BDACDA79AC7E7B03DD1BFF00B0F29F6D5749DC5DA9
          DBFBA3B137862F314790A7C9D36413179B97FB9D918A4969960A882A71D28A8A
          32D1330D5AC2DB5B248819239434DA695D002D0FA01E838D0F1CFCBAF3DCC8CE
          CE40CF953ABBDEA2F8F3D29D1BB7F0BB7BAB7A9FAD36152E131D163E07D97B13
          6CED42DA114544AA985C75318455CC0C8C818804DBE807B72D2D8A02B242BA0D
          72727D3F2078D3CBA65DB51D44F77433B0BD873C1E45CFD3DBB730F88B1A0248
          0D91A88A8FB78FFB1D541A57AECAEAE3E9FEDBDDE5804EA119881E941FB3F2F9
          1EBC0D3AF7D081FEB9FE9FD3E9EECBD8E918A54D49C53D32079F1F9FDB5EB5C7
          3D78FF008FD3DEE500559CFE98F4AD787A83F9F5E1FCFAF29BF363CFF5FF007D
          C8F7481CB80E10D0FAF1F967CC0C815CF5B229D72F6A78F55EBDEFDD7BAF7BDF
          5EEBAFE9EE84355486C79F5EEBBF7615A50F5EEBDEFC005140001D7BAF7BDF5E
          EBFFD6DFE3DD4F1C71EBDD7BDDBFC1D7BAE3CEA1F5B5B9FE9F5FF7BF698F8BF5
          094AE9D22BFC3C4FAF9FD9E5C7AB629D762D6E3E9F8F6F47A342F87F0797FABD
          3D3AA9F9F5E3F436F7E7AF86FA78D0FEDEB638F5D1B5BFC3FC3FD7F6D49A3C31
          ABE1AFE1FB71FECFE7D7871EBDF837FF00636FF78FF636F7EC784FE2F1A669FC
          BE75A53F3EBDE629D746FAC7D6D63F4FA7FB1F6DBEBFAC87E2F0F41E15A57FA5
          E5F67CFADFE13EBD72FE97FF0061FEFBE9F4F6F2D289AE95A9D3FE4E18E1D6BA
          EFDBB8A8F5EB5D747F3FD2DFEFBFC3DD5F836AA68A1AFF00A8E3F6F5BFF0F5DF
          BB0FF8AEB5D7BDEFAF75D7FBEFF7DFE3EE98D5DBF17F2F2FCAB4E1E7F975EEBB
          F77EBDD7BDD4D7CBAF75EF76EBDD7BDFBAF75D7373FEF1F5FA7FC56FEDA5F135
          3EAA57CB8D298E3E55AD7F2A75BC63AFFFD9}
      end
      object Image_MeeraD: TQRImage
        Left = 706
        Top = 45
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1867.958333333333000000
          119.062500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765F63E0000FFD8FFE000104A46494600010201004800
          480000FFE1076B4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A33390000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000063D00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F5549249252924C9D252C924B1
          7A27D68C6EAB9D9DD39D53B173702EB6BF4DE645B5D6FF0047ED38EF86FA8CFA
          3EB33FED3BDFEF414D8EA3D7F0BA6753E9DD3B2E58EEA86C663DBA6C1633D3DB
          4BE4FD2BFD5DB4FF00C22D35CB7D60E978DF587AEB7A5DC66BC7E9F79B5C049A
          ACC9B31C615A3F35B733EC76DD57FC5ABDF547AAE4F52E8E06740EA58363F0BA
          801FE9E83E9BDFC37F9F67A77FB7FD2A56A76D324924A524133DEC63773DC1AD
          D04930249809D25293A64925293A64E929FFD0F54292749252C9D24C82953DBE
          E5C0E3FD5739FF005EFADBB2065636250DAEEE9F91539F57A77E432B39591856
          FF0037EA3DCCB1B7FB6CAEDFF0EBBED09F824805343A4745C4E914D95D0EB2EB
          6F79B7272AF76FBADB0E9EA5D6437E8B7D8C6318CAD8B15F6D5D0FEBC3DF63C5
          787F58315D6BCB8E8DC9C06FE95FFBB5D6EC07EEB3F9752DBCCEB9D1F09FE964
          E654CBBFD087075A7FAB8F5EFB9DFE62E1FF00C66B2CEBDD3707EC98B7065399
          5B0E4645668AE2FF00D037DD7BABC96D6EB0D5BDFF0067D892556FD7DEBBD67A
          08B7A1FA34F53BF29FB31E8032B26BC261DBF69B30FF0049B6DF57F4767A95FB
          E9FD2D152E8F21BD7BAF57557857DDD1B16997BF36CA8D7917DCCFE8FE9E15C7
          7D3D3FD56FAD935E57A7764B3F56FE65F6DAAC6274DEB75D0DC7A0E1747C7606
          B5B4E256EC8700D1B7DB917FD92AFF003F06C47FF9BF4DA08CECBCBCDDDA9165
          C6B6FF00DB385F65ABFE825AA9E73AF7D5FF00DB59184FFAE19B89878F881DBA
          9C7BDCD6DEE25A7F9BCC633ECBF47E9D2FB723D37FA3EB7F845A9D33271306DB
          9BD28F50EA58B76D35636D73E9A8B46C77D8F3BA87A0CF42CF6FE83ED96D557F
          82F496C61F48E97827762625343E237B18D0E3F1B237B95C4690E51C9FAC77C8
          A70F1F0DBD9F9369B1FF00DAC7C56FA7FF00B38961E175F6F51F5F37A8B2DC36
          D503169A1B5875A499B1EFB1D916FA75B3F9B632DF7FE7AD5599674BCEFDB4CE
          A74F50B851B3D3B7A73E0D047FA4AB686BEBBBF3B77E93FEDB4A94E9A49248A9
          FFD1F554924C9294924920A72BA855F59AFBACAB02FC4C1C681B325EC7E45DC7
          BBF57DD8B457B5FF00F0B90A8D3F542EBDEDB3AEF58CDEAAE021F4070C5C577E
          EEFC3C2F4F76D8FF0009758BA44C9529AF87D3B0302BF4F0B1AAC567EED2C6B0
          7FD00D58DFE30A9F5BEA6F5300ED7555B6E6BBB8752F65EDFF00CF6BA1553ABE
          0B7A8F4ACCC0771974594CF87A8D7573FD9DC929B55BC595B6C6F0F01C27C089
          52585F53BAD51D53A2E3D66C9EA1855574751A5D22CAEF6034DADB98EF735CEB
          69B56EA214A4924925292492494A49327494FF00FFD2F55497CAA924A7EAA497
          CAA924A7EAA4DDD7CAC92054FD5292F9592494FD35D3BFA5F51FE89FCF8FE8DF
          CEFF003557FCA3FF0076FF0077FEEB7A0B417CAA92414FD5492F9552454FD529
          2F9592414FD529D7CAA92414FF00FFD9FFED0C0850686F746F73686F7020332E
          30003842494D0425000000000010000000000000000000000000000000003842
          494D03ED000000000010004800000001000100480000000100013842494D0426
          00000000000E000000000000000000003F8000003842494D040D000000000004
          000000783842494D04190000000000040000001E3842494D03F3000000000009
          000000000000000001003842494D040A00000000000100003842494D27100000
          0000000A000100000000000000013842494D03F5000000000048002F66660001
          006C66660006000000000001002F6666000100A1999A00060000000000010032
          00000001005A00000006000000000001003500000001002D0000000600000000
          00013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842
          494D0408000000000010000000010000024000000240000000003842494D041E
          000000000004000000003842494D041A00000000034900000006000000000000
          00000000003C000000960000000A004D00650065007200610020004800610064
          0061000000010000000000000000000000000000000000000001000000000000
          0000000000960000003C00000000000000000000000000000000010000000000
          000000000000000000000000000010000000010000000000006E756C6C000000
          0200000006626F756E64734F626A630000000100000000000052637431000000
          0400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000
          000000000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000
          9600000006736C69636573566C4C73000000014F626A63000000010000000000
          05736C6963650000001200000007736C69636549446C6F6E6700000000000000
          0767726F757049446C6F6E6700000000000000066F726967696E656E756D0000
          000C45536C6963654F726967696E0000000D6175746F47656E65726174656400
          00000054797065656E756D0000000A45536C6963655479706500000000496D67
          2000000006626F756E64734F626A630000000100000000000052637431000000
          0400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000
          000000000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000
          960000000375726C54455854000000010000000000006E756C6C544558540000
          00010000000000004D7367655445585400000001000000000006616C74546167
          544558540000000100000000000E63656C6C54657874497348544D4C626F6F6C
          010000000863656C6C546578745445585400000001000000000009686F727A41
          6C69676E656E756D0000000F45536C696365486F727A416C69676E0000000764
          656661756C740000000976657274416C69676E656E756D0000000F45536C6963
          6556657274416C69676E0000000764656661756C740000000B6267436F6C6F72
          54797065656E756D0000001145536C6963654247436F6C6F7254797065000000
          004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C65
          66744F75747365746C6F6E67000000000000000C626F74746F6D4F7574736574
          6C6F6E67000000000000000B72696768744F75747365746C6F6E670000000000
          3842494D041100000000000101003842494D0414000000000004000000073842
          494D040C0000000006590000000100000080000000330000018000004C800000
          063D00180001FFD8FFE000104A46494600010201004800480000FFED000C4164
          6F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C0808
          0809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C
          110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B
          0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C
          0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0
          0011080033008003012200021101031101FFDD00040008FFC4013F0000010501
          010101010100000000000000030001020405060708090A0B0100010501010101
          010100000000000000010002030405060708090A0B1000010401030204020507
          060805030C33010002110304211231054151611322718132061491A1B1422324
          1552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3
          743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F5
          5666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404
          0304050607070605350100021103213112044151617122130532819114A1B142
          23C152D1F0332462E1728292435315637334F1250616A2B283072635C2D24493
          54A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5
          E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002
          110311003F00F5549249252924C9D252C924B17A27D68C6EAB9D9DD39D53B173
          702EB6BF4DE645B5D6FF0047ED38EF86FA8CFA3EB33FED3BDFEF414D8EA3D7F0
          BA6753E9DD3B2E58EEA86C663DBA6C1633D3DB4BE4FD2BFD5DB4FF00C22D35CB
          7D60E978DF587AEB7A5DC66BC7E9F79B5C049AACC9B31C615A3F35B733EC76DD
          57FC5ABDF547AAE4F52E8E06740EA58363F0BA801FE9E83E9BDFC37F9F67A77F
          B7FD2A56A76D324924A524133DEC63773DC1ADD04930249809D25293A6492529
          3A64E929FFD0F54292749252C9D24C82953DBEE5C0E3FD5739FF005EFADBB206
          5636250DAEEE9F91539F57A77E432B39591856FF0037EA3DCCB1B7FB6CAEDFF0
          EBBED09F824805343A4745C4E914D95D0EB2EB6F79B7272AF76FBADB0E9EA5D6
          437E8B7D8C6318CAD8B15F6D5D0FEBC3DF63C5787F58315D6BCB8E8DC9C06FE9
          5FFBB5D6EC07EEB3F9752DBCCEB9D1F09FE964E654CBBFD087075A7FAB8F5EFB
          9DFE62E1FF00C66B2CEBDD3707EC98B70653995B0E4645668AE2FF00D037DD7B
          ABC96D6EB0D5BDFF0067D892556FD7DEBBD67A08B7A1FA34F53BF29FB31E8032
          B26BC261DBF69B30FF0049B6DF57F4767A95FBE9FD2D152E8F21BD7BAF575578
          57DDD1B16997BF36CA8D7917DCCFE8FE9E15C77D3D3FD56FAD935E57A7764B3F
          56FE65F6DAAC6274DEB75D0DC7A0E1747C7606B5B4E256EC8700D1B7DB917FD9
          2AFF003F06C47FF9BF4DA08CECBCBCDDDA9165C6B6FF00DB385F65ABFE825AA9
          E73AF7D5FF00DB59184FFAE19B89878F881DBA9C7BDCD6DEE25A7F9BCC633ECB
          F47E9D2FB723D37FA3EB7F845A9D33271306DB9BD28F50EA58B76D35636D73E9
          A8B46C77D8F3BA87A0CF42CF6FE83ED96D557F82F496C61F48E9782776262534
          3E237B18D0E3F1B237B95C4690E51C9FAC77C8A70F1F0DBD9F9369B1FF00DAC7
          C56FA7FF00B38961E175F6F51F5F37A8B2DC36D503169A1B5875A499B1EFB1D9
          16FA75B3F9B632DF7FE7AD5599674BCEFDB4CEA74F50B851B3D3B7A73E0D047F
          A4AB686BEBBBF3B77E93FEDB4A94E9A49248A9FFD1F554924C9294924920A72B
          A855F59AFBACAB02FC4C1C681B325EC7E45DC7BBF57DD8B457B5FF00F0B90A8D
          3F542EBDEDB3AEF58CDEAAE021F4070C5C577EEEFC3C2F4F76D8FF0009758BA4
          4C9529AF87D3B0302BF4F0B1AAC567EED2C6B07FD00D58DFE30A9F5BEA6F5300
          ED7555B6E6BBB8752F65EDFF00CF6BA1553ABE0B7A8F4ACCC0771974594CF87A
          8D7573FD9DC929B55BC595B6C6F0F01C27C08952585F53BAD51D53A2E3D66C9E
          A1855574751A5D22CAEF6034DADB98EF735CEB69B56EA214A492492529249249
          4A49327494FF00FFD2F55497CAA924A7EAA497CAA924A7EAA4DDD7CAC92054FD
          5292F9592494FD35D3BFA5F51FE89FCF8FE8DFCEFF003557FCA3FF0076FF0077
          FEEB7A0B417CAA92414FD5492F9552454FD5292F9592414FD529D7CAA92414FF
          00FFD9003842494D042100000000005500000001010000000F00410064006F00
          620065002000500068006F0074006F00730068006F0070000000130041006400
          6F00620065002000500068006F0074006F00730068006F007000200037002E00
          3000000001003842494D04060000000000070008000000010100FFE112486874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061
          636B657420626567696E3D27EFBBBF272069643D2757354D304D704365686948
          7A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C
          74657273206573633D224352223F3E0A3C783A7861706D65746120786D6C6E73
          3A783D2761646F62653A6E733A6D6574612F2720783A786170746B3D27584D50
          20746F6F6C6B697420322E382E322D33332C206672616D65776F726B20312E35
          273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F
          6D2F69582F312E302F273E0A0A203C7264663A4465736372697074696F6E2061
          626F75743D27757569643A66636232646266652D656462302D313165312D6134
          36352D616264666631376133613537270A2020786D6C6E733A7861704D4D3D27
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F27
          3E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A646F6369
          643A70686F746F73686F703A33636235326163362D656462302D313165312D61
          3436352D6162646666313761336135373C2F7861704D4D3A446F63756D656E74
          49443E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A52
          44463E0A3C2F783A7861706D6574613E0A202020202020202020202020202020
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
          202020202020202020202020202020200A3C3F787061636B657420656E643D27
          77273F3EFFEE000E41646F626500644000000001FFDB00840001010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010102020202020202020202020303030303030303030301010101010101
          0101010102020102020303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303030303FFC000110800
          3C009603011100021101031101FFDD00040013FFC401A2000000060203010000
          0000000000000000070806050409030A0201000B010000060301010100000000
          0000000000060504030702080109000A0B100002010304010303020303030206
          0975010203041105120621071322000831144132231509514216612433175271
          811862912543A1B1F02634720A19C1D13527E1533682F192A244547345463747
          63285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A4849
          4A58595A6768696A767778797A85868788898A9495969798999AA4A5A6A7A8A9
          AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6
          F7F8F9FA110002010302040403050404040606056D0102031104211205310600
          22134151073261147108428123911552A162163309B124C1D14372F017E18234
          259253186344F1A2B226351954364564270A7383934674C2D2E2F25565755637
          8485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696
          A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969
          798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C0301000211
          0311003F00DFE3DE86053AF75D7BD30621829A1A60F5EEBC3FE29EEA80A92A72
          0019AF1E3C47AFCFCFF2EB7D77EEE5800589C0EB5D78FBD31A2935EBDD712458
          7F8FD3FA7F8FB4F34881501A166E1E869C7E5F975600F5C016FF005375FF007D
          C5BE9ED12CD70B8FA70D6F4A57FC94E1D5A83D73D167F929F2FBA2BE230E9EAB
          EFBDD726C7C1777F6EEDEE8FDA1BA6AE825976C50760EEDA2C9556DAA2DD9994
          614FB6719999B16F4D1D6545A9D6A5D16464525C3F35D8B7913C4D4518134001
          D34A54B66B400F0009C7EDB470B4B5094A8F534AF4673DAD2C0AB693FE6E99EB
          DFEDBDD14D16AD434FF51FF557ADF5D6A1FD6DFEBF1FEDBFAFBAADC45DAACC14
          F9038FD9EBF975EA1EBDF502DF4FF8A7BD3132468235EDA8E3C6808EB7C09AF5
          D1E14DFF00E35FF1AF749069B690B6452943C38FF2FF00079F5E1C475C23BD80
          FA0B1FE9FD4FE7DA2DB9A508884154D048C03E6735E3D59E99EB2DC7D3FAFB34
          3220658C9258FF002FB7D3AA53CFAF71EED451C7853CFF003EB5D71620017BFF
          0085BDA6B99228D503AB53CA95FF0057EDFF003F56009EB9037FF8A7B7A37D4A
          4835F97FABC8F5A23AF5F9B7FBC7E7DEF58F1346A15A5695CF5EA62BD7FFD0DF
          E3DEA9E7E7D7BAF7BF7CFAF75C0117622E7E9CFE0DAFF4FF005BDA386488B5C4
          CBA8F004D30695E14F4AD0D69F3EAC41C0EB95FF003ED4EB50A18F03FCBFCDD6
          BAF7FBD7BDE055AA34FF00A8FD9D6BA875B5B4D8DA2ACC8D6CA21A3A0A6A8ACA
          A9F4BC822A5A589E79E52B1ABC8C238909B2824DB804FB426748A39A7928516A
          6A0D70013FEA03F9F57A12401C7A083E3F7C8EE8BF953D6B8EEE0F8EFDA3B47B
          77ADF295F94C453EEAD9D925AFA2873384AA6A2CCE13254F224190C367315523
          4D451564305543A94B200CA4BB697293C4195892295A820E4546080781C633EA
          78F5E7428D423AAA2FE75DF1DF6A7CC98FE06FC47DF3453E4765774FCB1AC4DE
          5152C2D2D4D1ED6DADD27D9D90C866A9658CABD1D7612AEB29AA29A60CBE3A84
          46BD87B2CDCA68DDED8ADC5232C54D0F1AE906B4F4AFECFB7A7E0A2ACA4D2B41
          C7F3E9EFF92F7C92ED0DC7D71DC7F047E5065E5CA7CB5FE5D5BF62E89DF79DAF
          7B5776C7521A57A9E88EF0A6F311515D4DBD7644090D4D469F5D65233C875CB6
          F6E58CDA6336EC0E3295E200342BF8A9A1B035312411E9D51D432ACA1AA4FC5F
          26FF002D7E5D5D502793F5FF005AFF00EFAFED5C73395776209A8E15C7FB3EA0
          74D91D726B5B9E7FE2BED4CE6331D1803538FB7CBF3EAA2B5EBCA08F6DDBABA2
          85D240F4F2FDBF6797EDEB673D723FE3F4F6A5829560E015F9E7AAFD9D703A17
          FA0B7D3EBF9FF0F6899AD200B4A295C002A38FC80CD7ECEADDC7AEEC0D8FD7FA
          7F4F6A024729597512388F41F975AA918EBD7E40FF007DFEDBDF9A450EB19CB7
          A8F2FCB2457F67CFAF5315EBD6B5EC393C91F4BDFF00E27DB7A3407312558D49
          0715AFCFD47FABE5BFB7AE23FC38FEA3EA4FFB7F6DC20290D190053201249FDB
          4FF39EBC7E7D73F6B2BE7424FA7A75AEBFFFD1DFDCFD3DD2460A84B03A781A7C
          FCFAD8EBD70471C823DD3524B092946465F5E35F2EBDC0E7AE02FF004E05AD60
          3DA64D75F058AAE9A69038E3FD5F9E7F2B638F5C97E9FEC4FB5102D101E3524F
          553C7AE9BE9F5F6DDDB0F0E9AA809A1FF370F3F9D3ADAF1EA2D4D3C7554F3D34
          C35C3510CB4F32FF00AA8E7468E41F9FAA31F658F0EB8D82BD4641C7F10A5789
          F235F9E6983D5ABD7CFEBF941E73E75FC71FE603F3AFA5FE0CF4AED5EC4DB5F1
          8F78EE5C5FCBCE82DD7DAD55B4B17F2533793EE4DF34DB5BB33A6B72EE45ACD8
          9D51DCDB6365B52D2AD3D5CD4F88CF5142E956D14AB14D1B0CA7C45BC47075A6
          2AA6800C508F8AB5C29071438606856B3AF80237B7D2898A8CE78FF315C79F1C
          75B4EFC58EBEF975F223E4D667E657CD2EA2A4F8EF81EB6C567BAFFE1FFC6797
          76EDEDEFBC765E1373AD343BF3B7FB7B706C8DCFB9362D57616F186896828E8B
          1D2CD0E3718B632BCB21609AE3EA51E565B6FD66A11404E9009A6196A4F99341
          DDE5414E93D54E9504E8F9FAF455FE76993E09FF00364F839F3F718F1E17A83E
          5CA0FE5F3F2E2A3CA29F1299BCF4F36E2F8CFBF333A54835941BB22A8C535438
          21295950B25C5ED592DE259D89F1ABA8853AF501890003152B46258F115F2A75
          550C59D13E16A71F2A703FEAF53EBD5DB6F8F90FD11D61D85D69D4BD8DDBFD71
          B1BB37B9AB32341D51B0F756EEC260F74F61D76260FB8AFA4DA787C855C15999
          A8823360B0AB348FE840CFE9F66B1DCDB475498A86AD7CC83534A934200F9923
          F6755D0EC2AA091D13DF8C5FCD77E207CC3F953DE1F11BA0B3FBDF79EFEE81C4
          5765B78EF24D9590A3EA5CB361372D36CEDCB8DD9FBE2798479FAFDB5B9EA451
          5537DB454CF3238A79A708C46DAE92492088C320D75D06A006D2092695A8040A
          8D43B8790EB66365049A5071FF0057F9B8740C67BF9D1FC74DA3F30B21D07BC3
          179BDA9F1CE82A2BBABA5F9DFB844B87F8C30FCAFC454435B99F8E15FD8590A3
          A7DAF8BCC50EDBA9461979EBD31D2E60498C56FB88D8FB60EE33A49237E9B5B0
          18D21C9240C9140715A804035F8B00F5716E4A820F77A1E3FEAFF571EABF7BAF
          F9917F364EFEFE65349F19FF00967F5EFC63DDBF17FAEF31B1325BB7E4157667
          6FF767596EEDAB95C6C392DF13766763F5EF64B4FD49578AAD8DB1D8ADBD8DC5
          55EE4AC91DAAA47483C4A5B96EEE1A3B9935B0643455508DE78249041A939A10
          0003CEA7A7A18610A7EA015FF0F9F95453F3AF9E3ABC7F8A3DF5F223B4EBFB3F
          61FC9DF8A79EF8E1D93D5B97C75343B8309BC283B4BA17B8B6D66D6B9B0DBC3A
          83B329F19B6B2F55285C6BFF0015C1E5F0F8FC9E11E58564F32CAB27B596B35C
          33C897710D74D40A8201CD299AFE542C08A9C014E93CAB103589C95AF03C7FCD
          FE0E8C86FDED0EB3EABC4FF1DECFEC3D8DD6F83BB8FE33BF776E036862AF1AEB
          70323B87218FA325179235F03DBD25DD9C27C0927547A568597501F204E7E540
          7AA2C72382C8848F903D577F74FF00381F86FD43B5E9374E0AA3BA3E40C398DF
          1B57AD36CD37C76E8FEC3EC4C7EF1DFBBDB28B87DABB4F686FEAAC46DEEA6DC5
          9CCD57311053D36E0791A34692DE356605FF005F6C19DA249A5250F11A785788
          9349AFA10A7D06707651C2A1D383E99A7DB4E1F9D3AB3CC655C991C6E3B212D0
          D76265AEA1A4AC97159314AB92C6C9534F1CCF41905A2A9AEA315D46CE639443
          34D10914E8765B3136446912270EC80A0ED3C45479D7CC703D375E38EA6AAE9B
          F37F7E8201006EE2493FEAFF008A1FE1EBC4D7AE5ED4F5AEBFFFD2DFDC80C0A9
          17045883F420F041FF0061EDB744995A375AA91F31C71FEA1D6C120D471EBA55
          08348E00000038B01EDBB7B74B64F0D3E0F2EBCCC58D4F1EBBFF007DFEFBF1EE
          E471AF9D3E671FC80FF67AF75EBDBFA9FF007DF4F75D6630432B13923CEBF2FF
          00357F6F5EE3D71173F82A3FDEEFFE16F6DA179895684A463E7C6BE54A7EDEB7
          81E753D465337DC4A1D6014DE38BC2559CCC65D52F984C85046B185D1A082492
          4DC0B0B9506717734722442D4D34D356A143F8C11402B81415E151D5FF000835
          3ABAAEBF887FCB4BA8FE1CFC9DF9B9F293626EEDE9B8776FCE1EC2C4760EF3C0
          6E37C41C16C9A9C6FF0015AA9F15B5A4A2A1832353455D97CDD44E4D5CB23449
          A225E14B32A8ED4C7F4EC0065008009E156D5C4F1F4E0303AD993B0A6695AFAF
          953AB1C2BFEA40BFF53C7FC6FDBD241DBFA083C52789A8A7F973FF0017D501F5
          38EAA2FF009EDF4947DE7FCA87E6560E08E05DCBB07ABAABBBF62E4A49929A5C
          16F6E91AEA3ECBC2E5A8AADC5E92B221B7258964166D3330FCFB413DBE968DA5
          24C608AD0FAF6B0A63886A91E7C0F4E23815C791FF0038FE7D6B1FF01A93F982
          FF003CAF993B6FF9B56CBDBDD03D37B17E2975760BE35F46557C96C56FAED7C0
          41DAF4BB696A3B1BB8768ED1DA192D974F9EDDD83CAEE3A8AC5FBCAEA7C74725
          4D2C2C64969DA456A6B6F0EDDE179962EF4666515555514553A8302085CB32E9
          AF1181D3825EEA84D40D6809CE789A8F3F403FE2EE1364FC23FE5D1F12B7E6FF
          00DD59EFE611D9F8AEE2EF6DD54BBAFE4CF567C5ADFD87DA186EE4DF52642A72
          5958683A37A436C760F7A75D6D2DC192CAD4495782C0E7A9E9AA4CEFE4661C2E
          E5FDDB2BA482E18C6B169A21D60AD6BF1200B923F153CB87550F3014D0318A91
          522BC32D5FF57E75B37C176E5152EC38BA8BE347F2EBEE7DD9D690D11A4A4C76
          FAD9DD7BF1D7A8EB68A668A69AA32941DD99DC476164DF212B796695F6A56D45
          54B79642CC4B97612D705FE9ED2416EAA281E81589F35C3D69E64E9A7967AA3A
          E2B23039F5A9FF000F4B9DA5B43E690A16C36D2DA3F0D3E26ECF9944D4F85DAB
          86DF3DEF9CA29DD23592596831149F1AB6552D7911DBD0B908945BD5269E5CFA
          6BC7562EB146878855AB1A7027255BFDE47E5D6818D4D02D7E75A7F2A7F97A7D
          3F117786EF78EAFBABE5D7C99DFEFEB12EDEEBFDDB8AF8DDB2238A46577A6A4A
          4E88C3ECEEC0969CD8ADF23B9B253E86D3E4B7BF1DB1A50C67BC9595A9503B16
          9F35A11F6E07CFAF7894605140A7E7D2C3637C24F899D739983746DAE80EB6A8
          DE74F7F17606EEC1C7D87D9372CCECF2764760C9B9F7D4EEEEC4BB3E41998F24
          9B7B78D8DBA16786D518B0A15AD41F434355C7C857CBAABB195744A6A9E873D2
          33E717CEFF0087FF00CBDFAFB6476D7CC4DF69D73B2333BFA83676CCCFAF5DEF
          8DFE68B78E430F96F1C9153EC3DA9BAABB6EA43B7C56AC95D3253C2207784485
          E6589DEB978A05841B532C82A555156A028AD5751005300006A4D280F5688333
          68594257193419F5F97AF90E2719E8E360F378BDCB84C3EE3C1D64791C2E7F17
          8FCDE1F2112C8915762F2B490D763EB22499239963A9A49D1D432AB00DC8078F
          6AE391258E39636AA32820FA822A0E73D51959199185181A1FB474E64DBDFA47
          08A49AD3AD0EBDF8FF0061EF78D1C714EB5D7FFFD3DFE3DFB875EEBA37F7460E
          70B4A50FFB1D7BAE87FB0FEBC7F5FA7FC47B6D17B8B102BC491EA707CFE5D6FA
          F1BFE0F3F8FA7FBEE3DE9CB951E1C956A9A64678FD9503E47EDEBDF68EB8B0E2
          FC9FCDAD6FF917B4B3A3042E198B52B4A53F9D307AB03E5D705D5FA88B1B5F9B
          DBFDE7DA1805CD0CEF085934D4D6B41F3CD070F5A7CBAB1A70071D12EEE1FE63
          DF04BA1770D16CBED2F959D3385DFF0091AD38DC775A62377D16F6ED2C9E4436
          83418EEB0D89FDE5DFD5D59E4F4F8A2C73BDF8B7B5A6FED14C7134ECEE56BDAA
          581FB594155FB0B0FD873A31B8C94A0F9F49B87E63F6CF6347137C76F84BF207
          7B50544CAB4FBDFBC0EDDF8AFD7F2524C17EDF2694BD995157DD5534122B6BD5
          06C8958C435286254161AE669823595B3641A12405AE7ED07E74604F5E65D3F8
          81FDBFE5A749CEC7E86F9B3F267AF37C75A77376D7C78E95D81D85B5B716CDDC
          FB27A83AB329DE59ACAEDDDCF89ACC464A82BFB07BB6A36EED778A4A4AC28C8B
          B1C16E4AC8A6C43724177206370223DA7B464D78804B5699F30DC69407A70341
          451A5ABE753FEAFF00579F545FFF0009C3FE5A9F13F23F047714FD87B777E760
          EF8DB1F267BF3AB3B6B666EEED7EC993A7EAB7A7536FFC96D8A1AF3D2741B971
          9D6D2D455ED35C7B4E6BF19592CACF76623485F25B457EE6E6E2DE3698500A81
          428C0115E26B5247E5E7D3B2CB344A600D48AB5A63FC3C7F21415AD075B5875F
          F54F57F53623F80755F5BEC3EB4C1B1566C36C0DA1B7B6762D99015467C7EDEC
          7E3A95D941FA9527D9A2C11A2A18E2D2C053000207A6734F5CF48F15269D2F74
          8FF58FF51C1F771047860A049EA050FF00ABE5C3AF54FE5D72F6F000569D6BAF
          7BDF5EEBC3FDF7E3DD54102848FC853FCFD7BA68CF6DFC0EEAC45660373E1311
          B8F059248E3C8E133D8DA2CC622BE38A68EA238EB71B9086A28EA923A8852450
          E8C03A861C807DF9802002B51FEAF5EBDC78F5176AED4DB9B1F018FDADB4B114
          981DBB895A84C6622815D28E862A9AA9EB668696377731426A6A5D9501D280E9
          5014002B1C6904612314415F53F3F3A9EB64926A4D4F4A0F76A1C54F77FABFD5
          F975AEBDFD7DD4162CF55ED14A75BEBFFFD4DFE3DE8914CE3AF75EF7EA70EBDD
          70BDFF003716E7FC08FEBED2AC82551A5814A1078608C1AE7CBE5FCBAB529D77
          C7E2DFE27F3EEDD8DFD991A8F1238FCF39FE7D6BEDEB055C32D4D2D553C15735
          0CF353CD0C35B4E94F24F472CB132475504757054D249353BB07512C72465859
          9585C1B4AA64591637A494A7AD0918FD9D7BAA99ED6FE511D7BF26237A7F97FF
          002D3E71FC90C34E9514F53B12A7BEA7E87EA9ABA59998C70D775AFC60DBFD31
          B7B2924284289AB4554AC072D624142DB75B060F3333B7052DDFA49A654BEBD3
          F953A716575C2E3ECC74607E2BFF002CAF80BF0A64A5AAF8C3F143A6BAAB3F47
          4694037CE3369D2E5FB26A29D56452B5BD91B90E637C569944CFACC95EDAB511
          F4E3DD12197EAB4862C8BE6C4923EC185A0A710B5A9C1EAAD42CD2B13ADB8E71
          FB38747B00E79E7FDF7FAFECC2388AB317604F971C7DA49CFEC1D549F4EB8B5B
          8FA5CFF5FE97FF006DED3DCF84AC82A031F5F3151EA29C69E63FCD65AF546FFC
          9B09DB9DBDFCE1BAAA8E8E4A3C06C5FE67BDA39BC223A491A85EC7EBFEBEDD39
          048525589CC5F78C5C304D0C642559D6C7DA4DA51D25BA123D5F4C7F6FE3E3D3
          D286F02076072CFF00E11C07A75799ECE81AD7A4DD7BDEFAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75D13C7F5F6C4CEAA8C4AEAA797FABEDEB6075EFA0F76
          D42345C71F97AFC875EE3D7B8B7F85BFDE3DDBB3457F053F975AF3EBFFD5DFE3
          DEA9520FA75EEBA1F9F7456D45C2F007E7C7FCDD6FAE3A6DA88FAB5AFF00E3ED
          39B7584CF2C2BFA92115F9F97E5C7ADD6B40780EBB038FA589FE9EEF146445A5
          942B9E3A71FEAFF2F5A273D7638E38F6E251485246AF975EEBA26E38B5B9FF00
          1FA7BA3B9756D214AE7E7C38E3EDEBDD74AB637B9FF5BFDF7F4F6D5BDB04712E
          A6C8382452873C07A7DBD6C9AE3AE57FF78F6FB4AA0914E1FEAC7D9D6A9D70B1
          3CFD45FE96FAFF00ADED26869099186A4AD7491507ECCF963E5F9F56E18F3EA8
          136EF737567C09FE731F2CF697776EDDBDD43D6BFCC1BA9BE3DF7374F6E7DDF9
          56C7E077C779F5CD63745EFAD9185ACA80D48BBBABE9B3185A9FB20EB2C9132C
          9A749520B9278ECB72BA69350898124E92454D187006B4CAD4573F9F4FD1A4B7
          50ABF0B7A7AFCFABFF00F620041F2CF497AF7BB75EEBDEFDD7BAF7BF1FB3AF75
          D1BFE3DB4E64C685CD7D470EB78EBC781FF14F76760A84B034F957FC9D6875C4
          9BFE0FF85C71F8F691DC4C546823D0918F2E3C3F6547ECEAC053AE5707FC6DFE
          F1FF001BF6A55E390D050919FB3FCC7F9F5AC8EBBF6EF5AEBFFFD6DFE3F3EEBD
          BA8D3E2A7FABE55FE7D7BAEBFD6FF7DFF1BF756AD0E8E35CFAFCFF003F4FF375
          BEBC2F617FAFE7DEA2D7E1278BFDA79FDBD78D2B8E1D7BDDBB686BC2BE5FEAFD
          BD6BAF717FC5FDF868D674D35533EBD6F3D78FFBCDFF00DF5FFC3DD1E9F86BAA
          BE5FE5F97DBD7BAE034EA37B5EFC5BFD6FF7BB7B451FD37D549AF478BABB69F6
          7F869C7F2EAC6BA47A75C8FD47D7EA7E9FF136FC7B532FF691D7569A9E1F679D
          334FF62BD68703D7BFAFF4FF007DF4F766AD25AD74797AFE5FEAFB3AD7A744D7
          E587FB237FC73E37FF00B393FE827FBCBFE9C36EFF00B2B7FE993FBB9FC73FD3
          D693FC07FD167F18FF002FFEF669D37FB5F4DBC7E5FF0075FB26B8D1E09F1F5E
          8F0F3C7D7FA3F3F5C57867A7D35FE0F5FF003FF92BD1C9F571F4FA7FBCDBD9AA
          FD55129A74E9FCEB4C7F3E3F9F4CF6E7AE7CFB55DF4F2AD3AAF5EF7E3AA9DB4A
          F5EEBAE6DFE3FE1FF1BF743E2E835A6BF97FB3D6F15F975D0BDF9FF616FF008D
          FBAA6BF10F894AF952BF2AF1FF00275EF2C75E7FA7FBDFFC6BDB777FD8B52B4A
          8AFD9F2F9FA533C3ADAF1EBA37FF001D36FC7D6FFE3EDB93C4A8F8BC0D1F878D
          71C7AF0A7E7D796DC7FB1B7FAD717FF79F7BB4D144D35A51A9F65457F2AD29F2
          EBCD5EB90BDCDFFD87D7E9C7D7FC7DA85F13C4935538E38D34E38F956B5FE5D6
          B141D7FFD9}
      end
      object Image_DeepakRajD: TQRImage
        Left = 706
        Top = 45
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1867.958333333333000000
          119.062500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167652D470000FFD8FFE000104A46494600010201004800
          480000FFE10A344578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A32300000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000090600
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F55492492529243C8C8A31A97E
          46458DA69A9A5D658F21AD6B47D273DCEF6B5732DEA9F593EB202EE821BD23A4
          9FE6FAAE557EA5D78FCDB70702CDAC650EDBFCEE67F3B55BFA3A9253D524B9A1
          F507A1DD0EEAB665F58B412E16676458F89FCD6D353A9C76D7AFD0F4549DFE2F
          7EA7182CE9CDA5ED3B9965365B53C1E64594D8C77B5253D1A4B91B727AAFD50C
          DA3EDB956F52FAB99760A4E4E49DF91876BFF9A75F91FF006A30ACB3D9EA5DEF
          A7FD27FDC9EB925292492494A4924CE735AD2E7101A049274000494833B3B17A
          7E25D9994FD94E3D6EBAC3C9D8C1B9E437F3956E81D730FAFF004AA7AAE107B6
          8BF700DB000F058E756E6BDAC73DBF499FBEBCC7EB775DC9EBDF5A30ADC1C17F
          D83A654ECBB2F2E839382DB2B7DF90FAFD9FA9EEC77FA0CFF0DFCF7E7AEEBFC5
          D536D7F5470EDB9BB6CCB75B94E68E00BADB2DAF6FFD69CC494F4A924924A7FF
          D0F5549249253CDF5CC76756FAC7D3FA26689E98DA6CCFB6927DB916D2FAAAA3
          1AE67F85A28F5BED3653FCDD9FA2F55748A9754E9187D52B636FDECB6976FC7C
          9A5C6BBAA711B4BE9B99EE6EE6FB5ECFE6ECFF0008B98AABFADB99979F8B89D6
          5F4F4AE9EF2C19F6E352FC8B6D6B66FC5ABF9BA5D4637D1B32BECFEA7DA3F45E
          FF007A3D14DDE93F587AB754FAD59F8F452C7740C32FC419201DFF006BA854FB
          9AE33F43F4B657F43FC1AE9D79CFD4BEA1D57EAE740C2CCEB01B7746EA6E373F
          31A22CC5B2F7FB5F9DFE9B1727D8FF00B57F817BF659FA3F4575DD7BEB037A6F
          A7898AC6E4F53C96975341706B195B7F9CCECDB7FED3E0D1FE12DFCFFE6AA414
          D2FF0018EEAFFE6767D2E6FA96647A54D1508DCFB5F6D6DA5B5B4FD3735FFA4F
          EC2E8AA6B99531AE3B9CD680E77890395E5DD3FEB1DBD4FACD99BF58328E6607
          462DC8E958F4506AFB5E55CE38F88FC4C673ACB72B65ACBAAC2FFB7ADF47F4EB
          772B3BEB1F4AEA58975D63EEEA7D771EFAAAE961DBF169C963A97E1FA7B46E65
          78B8D6DEEEA57EFF00D3FA7BFF00D124A7AAB7AC74DA73ABC0B2F0DC9B5DE9B1
          B0E23D42D37B697DA1BE95773E96FA95D563FD4B18A875DFAC7674DB4E3E1623
          B3F228A5D9998C6BB68AB1987DCEDDB5DEA655FB5EDC4C6FF0DE9DBFE8D53EA3
          F57B2707A360B3A5D6ECECDC0CDAF3AD05EDAECCAB4EF6655B75F71DAC75DEBB
          DEFF00DCABF455FEE2D2E9DD09B8F81955E5586DCEEA7B9FD432D9A39CF7B7D2
          DB4EEDDE9D38D56DA3119F995D7FE93D4494E1F5BFACB9F73337A8F47BCD7D37
          A132BB6F78635E32AD76CBACC3DCFDDB29C7C477E9F67A777AF91FF00B3329DD
          6FA9F5BC4C77D96D789F5A69B5B7E30276E3E163BDAE63ABFDCBB3B11DB2EB1F
          FE13357678DF57FA6637416F406B0BF005271DED71F73DAE116BDEF66CFD2DAE
          739EF733F3D16BE918557521D4D8D2321B8CDC366BED6D2D71BB6B19FCB7FD3F
          F8BAD153C4FD6AFABF674EBBA96562BD9EBFD62189D13A5D2D040A2A7B595655
          6EFF00827D78FBBD9FCDAEF70F169C2C4A30F1C6DA71AB6D5537C18C02B60FF3
          5AB9DDDFB6BEBB881BB0FEADD465D261D9994D036FEE3FECB883FEB575ABA841
          4A49249253FFD1F5549249252961FD5E6BFA8FD5A8B4EC199F6800B396B6CB2D
          1AEEFF000BEE5B8B80EBF91D571FA9E560FD581D5DB73DE5F7D755149C2F51ED
          F51EEAB33399FAABAC71DF67A5FA2F5111D94F4BD42CE83D13EAEB307AD64D6C
          C06630C471B7436B5ACF45CDAE9AFDF63DCCFF0007435713F543EA5F59EA5EB5
          DD66EB6BE8F639AC6576B4D795958F4015E1D393FE13170763777D9FE9DDFF00
          6CDCAD74AFAA3F5C9D903A864FD8E8CE8D33B39CFEA196CD640A776CC1C7D9BB
          FED3B16F33EA8F59BE7F69FD66EA171312310578634D7FC032C73777F21E829B
          D7FD5FE854F59A3EB15F14DD858DF65A3739ACA2B602EDAF63086FA763596595
          7D3F4FD37FF368397F5EFEA662B81BBAAE3BDCDE3D126F3AFEEFD99B72833FC5
          F7D53179C9BF08E664110EB72EDB6F71FEB7DA2C7B3FE82D9C2E99D37A7B3660
          62D388C3CB69ADB583F1F4DAD494E21FAF58B66D381D2BAAE7B1E7DB6D388F6D
          67CFD5CA38ED52775FFAD563C7D93EACD9E9BBFC264E5D1491FD6AAA39562E8D
          2494F39659FE30AD7834D3D27159F9C2DB322F77FE075E2B554EBB77D6FE95D2
          6FEA37F56C469A47E8E9A705CE75963C8AE8C767A996FF00E76D7B19F4175CB3
          BA874D767750E9F65841C5C27BF21D59FCEB837D3C577FD67D4BACFEBEC494F3
          7D13EA5FD67C2C6B05DF58ACA1F9963B2B2ABC6C6A41FB45B0721DF69B05965B
          EEF6FD0ABFB0B41DF53725FA59F58BAC1079D97D6CFF00A8C75D2A4929A5D23A
          5D5D2709B8755F7E4B5A4B8DB9563ADB0976BABDFF00F50C575249253FFFD2F5
          5497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA9
          24A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7FFD9FFED0ED050686F
          746F73686F7020332E30003842494D0425000000000010000000000000000000
          000000000000003842494D03ED00000000001000480000000100010048000000
          0100013842494D042600000000000E000000000000000000003F800000384249
          4D040D000000000004000000783842494D04190000000000040000001E384249
          4D03F3000000000009000000000000000001003842494D040A00000000000100
          003842494D271000000000000A000100000000000000013842494D03F5000000
          000048002F66660001006C66660006000000000001002F6666000100A1999A00
          06000000000001003200000001005A0000000600000000000100350000000100
          2D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF03E800003842494D040800000000001000000001000002400000024000
          0000003842494D041E000000000004000000003842494D041A00000000034900
          00000600000000000000000000003C000000960000000A004400650065007000
          61006B002000520061006A000000010000000000000000000000000000000000
          0000010000000000000000000000960000003C00000000000000000000000000
          0000000100000000000000000000000000000000000000100000000100000000
          00006E756C6C0000000200000006626F756E64734F626A630000000100000000
          0000526374310000000400000000546F70206C6F6E6700000000000000004C65
          66746C6F6E67000000000000000042746F6D6C6F6E670000003C000000005267
          68746C6F6E670000009600000006736C69636573566C4C73000000014F626A63
          00000001000000000005736C6963650000001200000007736C69636549446C6F
          6E67000000000000000767726F757049446C6F6E6700000000000000066F7269
          67696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47
          656E6572617465640000000054797065656E756D0000000A45536C6963655479
          706500000000496D672000000006626F756E64734F626A630000000100000000
          0000526374310000000400000000546F70206C6F6E6700000000000000004C65
          66746C6F6E67000000000000000042746F6D6C6F6E670000003C000000005267
          68746C6F6E67000000960000000375726C54455854000000010000000000006E
          756C6C54455854000000010000000000004D7367655445585400000001000000
          000006616C74546167544558540000000100000000000E63656C6C5465787449
          7348544D4C626F6F6C010000000863656C6C5465787454455854000000010000
          00000009686F727A416C69676E656E756D0000000F45536C696365486F727A41
          6C69676E0000000764656661756C740000000976657274416C69676E656E756D
          0000000F45536C69636556657274416C69676E0000000764656661756C740000
          000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C
          6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E6700
          0000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74
          746F6D4F75747365746C6F6E67000000000000000B72696768744F7574736574
          6C6F6E6700000000003842494D041100000000000101003842494D0414000000
          000004000000063842494D040C00000000092200000001000000800000003300
          00018000004C800000090600180001FFD8FFE000104A46494600010201004800
          480000FFED000C41646F62655F434D0002FFEE000E41646F6265006480000000
          01FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513
          1318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C
          0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008
          FFC4013F0000010501010101010100000000000000030001020405060708090A
          0B0100010501010101010100000000000000010002030405060708090A0B1000
          010401030204020507060805030C330100021103042112310541516113227181
          32061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B2
          83264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4
          D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7
          F711000202010204040304050607070605350100021103213112044151617122
          130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2
          B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B4
          95C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7
          C7FFDA000C03010002110311003F00F55492492529243C8C8A31A97E46458DA6
          9A9A5D658F21AD6B47D273DCEF6B5732DEA9F593EB202EE821BD23A49FE6FAAE
          557EA5D78FCDB70702CDAC650EDBFCEE67F3B55BFA3A9253D524B9A1F507A1DD
          0EEAB665F58B412E16676458F89FCD6D353A9C76D7AFD0F4549DFE2F7EA7182C
          E9CDA5ED3B9965365B53C1E64594D8C77B5253D1A4B91B727AAFD50CDA3EDB95
          6F52FAB99760A4E4E49DF91876BFF9A75F91FF006A30ACB3D9EA5DEFA7FD27FD
          C9EB925292492494A4924CE735AD2E7101A049274000494833B3B17A7E25D999
          4FD94E3D6EBAC3C9D8C1B9E437F3956E81D730FAFF004AA7AAE107B68BF700DB
          000F058E756E6BDAC73DBF499FBEBCC7EB775DC9EBDF5A30ADC1C17FD83A654E
          CBB2F2E839382DB2B7DF90FAFD9FA9EEC77FA0CFF0DFCF7E7AEEBFC5D536D7F5
          470EDB9BB6CCB75B94E68E00BADB2DAF6FFD69CC494F4A924924A7FFD0F55492
          49253CDF5CC76756FAC7D3FA26689E98DA6CCFB6927DB916D2FAAAA31AE67F85
          A28F5BED3653FCDD9FA2F55748A9754E9187D52B636FDECB6976FC7C9A5C6BBA
          A711B4BE9B99EE6EE6FB5ECFE6ECFF0008B98AABFADB99979F8B89D65F4F4AE9
          EF2C19F6E352FC8B6D6B66FC5ABF9BA5D4637D1B32BECFEA7DA3F45EFF007A3D
          14DDE93F587AB754FAD59F8F452C7740C32FC419201DFF006BA854FB9AE33F43
          F4B657F43FC1AE9D79CFD4BEA1D57EAE740C2CCEB01B7746EA6E373F31A22CC5
          B2F7FB5F9DFE9B1727D8FF00B57F817BF659FA3F4575DD7BEB037A6FA7898AC6
          E4F53C96975341706B195B7F9CCECDB7FED3E0D1FE12DFCFFE6AA414D2FF0018
          EEAFFE6767D2E6FA96647A54D1508DCFB5F6D6DA5B5B4FD3735FFA4FEC2E8AA6
          B99531AE3B9CD680E77890395E5DD3FEB1DBD4FACD99BF58328E6607462DC8E9
          58F4506AFB5E55CE38F88FC4C673ACB72B65ACBAAC2FFB7ADF47F4EB772B3BEB
          1F4AEA58975D63EEEA7D771EFAAAE961DBF169C963A97E1FA7B46E6578B8D6DE
          EEA57EFF00D3FA7BFF00D124A7AAB7AC74DA73ABC0B2F0DC9B5DE9B1B0E23D42
          D37B697DA1BE95773E96FA95D563FD4B18A875DFAC7674DB4E3E1623B3F228A5
          D9998C6BB68AB1987DCEDDB5DEA655FB5EDC4C6FF0DE9DBFE8D53EA3F57B2707
          A360B3A5D6ECECDC0CDAF3AD05EDAECCAB4EF6655B75F71DAC75DEBBDEFF00DC
          ABF455FEE2D2E9DD09B8F81955E5586DCEEA7B9FD432D9A39CF7B7D2DB4EEDDE
          9D38D56DA3119F995D7FE93D4494E1F5BFACB9F73337A8F47BCD7D37A132BB6F
          78635E32AD76CBACC3DCFDDB29C7C477E9F67A777AF91FF00B3329DD6FA9F5BC
          4C77D96D789F5A69B5B7E30276E3E163BDAE63ABFDCBB3B11DB2EB1FFE133576
          78DF57FA6637416F406B0BF005271DED71F73DAE116BDEF66CFD2DAE739EF733
          F3D16BE918557521D4D8D2321B8CDC366BED6D2D71BB6B19FCB7FD3FF8BAD153
          C4FD6AFABF674EBBA96562BD9EBFD62189D13A5D2D040A2A7B5956556EFF0082
          7D78FBBD9FCDAEF70F169C2C4A30F1C6DA71AB6D5537C18C02B60FF35AB9DDDF
          B6BEBB881BB0FEADD465D261D9994D036FEE3FECB883FEB575ABA8414A492492
          53FFD1F5549249252961FD5E6BFA8FD5A8B4EC199F6800B396B6CB2D1AEEFF00
          0BEE5B8B80EBF91D571FA9E560FD581D5DB73DE5F7D755149C2F51EDF51EEAB3
          3399FAABAC71DF67A5FA2F5111D94F4BD42CE83D13EAEB307AD64D6CC06630C4
          71B7436B5ACF45CDAE9AFDF63DCCFF0007435713F543EA5F59EA5EB5DD66EB6B
          E8F639AC6576B4D795958F4015E1D393FE13170763777D9FE9DDFF006CDCAD74
          AFAA3F5C9D903A864FD8E8CE8D33B39CFEA196CD640A776CC1C7D9BBFED3B16F
          33EA8F59BE7F69FD66EA171312310578634D7FC032C73777F21E829BD7FD5FE8
          54F59A3EB15F14DD858DF65A3739ACA2B602EDAF63086FA7635965957D3F4FD3
          7FF368397F5EFEA662B81BBAAE3BDCDE3D126F3AFEEFD99B72833FC5F7D53179
          C9BF08E664110EB72EDB6F71FEB7DA2C7B3FE82D9C2E99D37A7B366062D388C3
          CB69ADB583F1F4DAD494E21FAF58B66D381D2BAAE7B1E7DB6D388F6D67CFD5CA
          38ED52775FFAD563C7D93EACD9E9BBFC264E5D1491FD6AAA39562E8D2494F396
          59FE30AD7834D3D27159F9C2DB322F77FE075E2B554EBB77D6FE95D26FEA37F5
          6C469A47E8E9A705CE75963C8AE8C767A996FF00E76D7B19F4175CB3BA874D76
          7750E9F65841C5C27BF21D59FCEB837D3C577FD67D4BACFEBEC494F37D13EA5F
          D67C2C6B05DF58ACA1F9963B2B2ABC6C6A41FB45B0721DF69B05965BEEF6FD0A
          BFB0B41DF53725FA59F58BAC1079D97D6CFF00A8C75D2A4929A5D23A5D5D2709
          B8755F7E4B5A4B8DB9563ADB0976BABDFF00F50C575249253FFFD2F55497CAA9
          24A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA4
          97CAA924A7EAA497CAA924A7EAA497CAA924A7FFD93842494D04210000000000
          5500000001010000000F00410064006F00620065002000500068006F0074006F
          00730068006F00700000001300410064006F00620065002000500068006F0074
          006F00730068006F007000200037002E003000000001003842494D0406000000
          0000070008000000010100FFE11248687474703A2F2F6E732E61646F62652E63
          6F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF
          272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F
          3E0A3C3F61646F62652D7861702D66696C74657273206573633D224352223F3E
          0A3C783A7861706D65746120786D6C6E733A783D2761646F62653A6E733A6D65
          74612F2720783A786170746B3D27584D5020746F6F6C6B697420322E382E322D
          33332C206672616D65776F726B20312E35273E0A3C7264663A52444620786D6C
          6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30
          322F32322D7264662D73796E7461782D6E73232720786D6C6E733A69583D2768
          7474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C
          7264663A4465736372697074696F6E2061626F75743D27757569643A66636232
          646266612D656462302D313165312D613436352D616264666631376133613537
          270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F6265
          2E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F6375
          6D656E7449443E61646F62653A646F6369643A70686F746F73686F703A336362
          35326163382D656462302D313165312D613436352D6162646666313761336135
          373C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A44657363
          72697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D657461
          3E0A202020202020202020202020202020202020202020202020202020202020
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
          200A3C3F787061636B657420656E643D2777273F3EFFEE000E41646F62650064
          4000000001FFDB00840001010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010202020202020202020202
          0303030303030303030301010101010101010101010202010202030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303030303FFC0001108003C009603011100021101031101FFDD
          00040013FFC401A2000000060203010000000000000000000007080605040903
          0A0201000B010000060301010100000000000000000006050403070208010900
          0A0B100002010304010303020303030206097501020304110512062107132200
          0831144132231509514216612433175271811862912543A1B1F02634720A19C1
          D13527E1533682F192A24454734546374763285556571AB2C2D2E2F264837493
          8465A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A8586
          8788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CA
          D4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA1100020103020404030504
          04040606056D0102031104211205310600221341510732611471084281239115
          52A162163309B124C1D14372F017E18234259253186344F1A2B2263519543645
          64270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4
          E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7
          F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A
          8A9AAABACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF74507E3FFCF3F89FF293
          B77BFBA2FA1FB8305D87D9BF18F398EDBDDC780C45365234DB990C9C95D4B035
          1E4EB2869F199FA18F278AAAA392A2865A8852A69D9756931B3FBCD97CC71EBC
          012A1C0EC3E7E5D1BEF7EEBDD7BDFBAF75EF7EEBDD7FFFD0DFE3DFBAF75EF7EE
          BDD7BDFBAF741277977CF4D7C67EB0DCFDCFDFBD93B4FA9BAB767520ACDC7BD7
          79E561C561E81246F1D3D323C9AAA2BF255D3111D351D347355554A4470C6EE4
          29AB32A0AB1A0EACAACC68A3AA47C47F330FE621F3E32D263FF95D7C29A2D83D
          0B5BA9719F3C3E7CAEE6D81D71B86896A56239CEA7F8FDB7D28BB43B0F135D02
          BBD0D74D57434EE6C66890707C8B2C89E2D5523C53556ADF601EA381C8AE0D08
          A74E3A2C4571A8D3CF03FC3539AD0E2B4E97F8EFE5ABFCCC7B2C55E57E49FF00
          3B2F9038CAFCB46AD3ED0F889D1FD27D05B4B6D3FDCA54AD26DECFE5B03BEB78
          6429E9B4F8D66AD7F3CA9C4DAD495379A1B579237124C680706080FA82A35023
          E7F11C70E9B32481C98C2042B4A15AD0FA824F4E15DFCAC3E6F6DBA49B21D43F
          CEFF00E74E3376FED5546FDCFB2BE3D776EC8AAC8516934695BB4AABAEB68D65
          362AA3405AB828B234C2705981527DDCF80D80AEB53C75034FCB48FD9515F975
          EF124049409C381507FD5F9741D51FF32BF979F003BD3AE7A0FF009BA6C9EACA
          CE9DEE5DC141B23A57F98A7C7AC46E3DAFD355DBD6AE9D5A8B66FC82EBADC795
          DCD59D4BBA33755308E9EB61AE5C4C86291E34681269E04B12CB1898DC4C0C43
          E134CF1E0D40060641A014192727ABB1B6691224969335680E01A790C9FF0009
          F9D075B034724734692C4E92C52A2C91C91B2BC7246EA191D1D495747520820D
          88F6F74D70C1EB9FBF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEB4EBFF00
          85407F3898BE1F63FA37A6FE24FC9BDC1B3BE666C4EDCC37606FCEBED8B257CD
          895EABC8ECEDC9452E2BB46B298C7890F92ADAEA3968F172BCB50D1B34CD12A8
          472EC42170F524CA18514573C6A2A053D3FCDD3B1800EA2B56F21C7F97D9C3A0
          63FE1311B6F6A65BE7B7CD0ECAEB0A29C6D58BE1B7C4AC776867278E549F7177
          CF67FDCF666EDC9647C93D48396324554B302C8C0053A0163ED6EE7E1F8D02C6
          8142C62B4A54960092DE75E1FE4A755921482474477230483C013E43FC23ED3D
          6EF7ECB7AA75EF7EEBDD7BDFBAF75FFFD1DFE3DFBAF75EF7EEBDD2477FEFBDA7
          D5DB1B78F64EFCCD526DCD93B076C67378EEDCFD7B14A3C3EDCDB78DA9CBE632
          550543398E92829247D2A0B35ACA09207BD8152ABE64803ED2683F69C75EEB5F
          3F8C3F1137C7F365ECDDADFCC7BF98FE06B6A3A1F13B827DD3FCBEBE03E7A48E
          6EB4EBFD890545441B4FE40F7A6DCA7AAA9C4765F6E76262D23CA52419013D0E
          3A8EA22510E8F1430AC9EDE4DB66B881CD6E1974BA9CAA8041029904E01AD315
          E35034D890632841C9FB31E55FB6BFEAF2D8C228A8F1B471C30C74B8FC7E3E95
          228A28922A5A3A2A3A5882A471A288E0A6A5A68230000151117F007B45D540E0
          00E8A37C44F9EFF143E76D176BE47E2C76D62FB528FA53B12B7ABFB127C76333
          78C4C46E8A489AA216A5FE378DC71CBE1329046EF4790A5F2D25488A408E5A37
          0B5560C5850D41A6453F67A8F9F4E4B1F84557C4562541ED35A57C8FCC79F470
          FDDBA6FA271FCC17E32F5BFCC1F861F237E3DF6A6128B35B637E7566EC8E99AA
          C059705BA71189A9CCECFDD78DAABA494394DB3B9A8296B2195597988AB5D19D
          4B90A2493428E8194B0143F6FF0084711F3EA8F178DA53510750208A54107E60
          8CF03F224744FF00F9047776FCF903FCA2FE1776076664EB337BDA97AF733B03
          339CC83996B3309D5BBDF7475D626BAA272AA2A6A1B09B6699259416F2CA8CD7
          37F7B962311552A06380E18C7F93A7A450ADA4711C7EDF3EAE1FDB5D53AF7BF7
          5EE9234FD81B0EAF7B643ACE977B6D1A9EC7C4E029775657AFE9F7261A6DED8C
          DAF5D57F6145B9321B523AD6CED1602B2BBF662AC929D69E497D0AE5B8F7EF4E
          BDD116DD9FCCD7A1768FCBBC2FC45A8DBFD9795C956EE4C2F5DEE3EE8C36DCA3
          ACE8CD81DBBBAB0555B9B68F52EF2DECF9685E877B6E3C3D13B470434D50B04E
          C90CED1B97D17D2A11492DE2335000B5049F2AD78FCA87AF6322B91D574EFF00
          FE7C98AA0EE5F945D1FB37A966C855E3B624107C10DEF4D97A7C8C1F2C7B626D
          DD2F5257E336CE19164357B6B13DA752891D5C05926C7D0554A6E0A9550D6170
          8209E49105B48A4819D75069C3853A7182085A415AAF1E1FCBAA34ECDF80B8F9
          BF9E07C0AE92EFBC6526FCABE95F8BBD95F3EFF980772EE2A239BA0ED2DDBB8A
          AB7CE4F744391CC5642C93EDAC0E4F6BE230B8E82A1A348A9033A85D7ED5C2A9
          04167120A44A59831186EE0A18D7C8396F981E55A0E9B5235A9C5471FF0057EC
          EAE2FF00E12E5D2D1613E22FC8AF96E989184A2F9C3F2C7B4FB4761630E3DB1E
          F8FE9AD959CC96C5EB7A2546201A28E4A4C9BD32A811AC32A952437082525922
          67AF88D5624FCCD07F83F9F5EA96EE24927D7AD9B7DB1D7BAF7BF75EEBDEFDD7
          BAFFD2DFE3DFBAF75EF7EEBDD177F96FD1307C9EF8BFDFDF1E2A2B29B1C3B9BA
          977CF5E4190AD591E8686BB72E02B71D8DACAF8E28A7965A0A6C84B13CEAA8EC
          D12B00A49B153672C505DDB4D3C7AA2491588F5A107FD43CF875A6AE96A71A74
          42BE3A7F304E94F8FBD71D5DF1ABE6253C9F0F7B83AA7686CDEA89F19D8382CD
          607A6F73A6D4C7506CFC1EE0EADED67A09361E4B68E7E971D14D4B1CD5D4F514
          88CD1C89688C8CB378B5BA8E5B8DCCC6D2584AEEE25452CB42C4D081A8A915A1
          04608238E3AF4651954788AB27F09600FF003A0FE75E899FF3ADFE797F0CBE38
          7C32F94DD6BD21F2D3AAB75FCC0DC1D675DB13AD364F5B67E0DFB9AC467FB023
          A5C0CF9FA9CA6D98333B6F0936D7DB998A9C929ABAA89926A744B79081EC8CCC
          8E17C23AEA698C8F53523031EBC70054903AD94D60AEAA57FD5FEAAFDBD1BBFE
          491F093E3EFC43F867D61B8FA1B72EDBDF2DDF5D41D23BBBB37B0F6665F1F98D
          A9D91D8D81D9D5345B8B7CD05562EA2BA8A4AECA64B293D3D5BA54CC59E8D43E
          9915C7B5F753433CA25847E1009C77118D58F5EABF4E2DE49155895C7953D780
          F42294FDBD5C77B4FD5BAA21FE6E3FCD0FA67AF3E2A767745FC5AED3EB7F901F
          353E4655547C53E8BE91EA5DED83DFFBE23ECEED5A51B5EB32D9EC36CCC8E532
          5B668763603333E4E69EB053209A08E2D4198E94CD3452AB4714819CE319A7FA
          B80F2D541D78FA0F8BFD5FEAFF008BE84CE9DEE0F8A1FC9BBE34FC0FF821DB7D
          87353EE4A2D93B0BAB0647118A198A3C56E6CDD5D2E3F25BEB7FFF000B7D7B3B
          686F4ED3CFCD49415B3C4C9515951E35D5A25755971E2031C8B133C4485D43FA
          200D54E34247A7A8C91D7A94E8CD778FC8DDED9CF91DB27E177C7A8A65EC6CAE
          DEA7ECCEF7EDA8A8F1D98C1FC76EA2359510620D651D6C7574155D9DDA75D8F9
          A8B018FAA88AC74CB357C88D12231BC488CCC670E20D04D54806BF840A83C4F1
          3434009A1A53A70C656212E32D403FC27FD5E7FCC9B74F7F308ECAEB0F88FDFF
          0097EE0AF3F20FE467517CDAEF7F84BD27B7311B729F69EE6EFF00EC4DB7BD06
          37A7B6DD5D160207C42652A30196A6973594A7A7A4A5868A8E6A895165563233
          34D178B208876872A3D4E7FCDF963A4CB237826691282A7FD5F9FF00ABCFA239
          F2EBE36F6A7C01D9BF09BE5C6C3A5DD7DCDFCC8BB1FE5CB6C1ED5DF9B7F14D98
          5ECDDCFF002A3AD37D61EB7AE774C34EF355FF00A0BEB1CEE1314F8982D25351
          261D6A16289A62AABA4956E0DA5A19C2DB248295206B3420D492A6878D2B4007
          0AD49718AAD0D724D3F6F42B7CC2FE58FDD3B1BF959F58FC79E9ADD1BB3B6FE4
          AD3FCBDE96F909DB7DA14C994ACDCBBF3B4373F632CFDABBE632AF254D161F1C
          370B980CECB0D262E894B850A57DDE3991AEA368D42C51D4819A71A934AF13E8
          380006695EB7434A03FEAAF52A9FF9716CADC9FCDF7E0EC585D9196C2F4A7F2A
          FF0084140DB773F2E364A7C26F8ED8DFFBAB2F89D9343057A5E19323B769F179
          1DC15A2FAA4AC997E8B7D549995A3592A7F1531C3576AA9CF00A84E07123E7D3
          6D29793E9C7C0B9AF9F97E5FEA3D18EFE7EBD8F95D97FCBFB7F758758E268B25
          F217E67EE2D83F0B7A861A75823DC75D53DD1BB28719B95696687C795A8C5E1B
          678C9D5491C6E2386529235BF2952692168CABD1036493850D8634FB3FC95C0E
          AED5D2C071381F6F5685F18BA2F6B7C63F8EBD25F1EF65E3E871BB6BA6FAC366
          75EE3A9F1D08829243B6B07478FAEAF58C01FBB95C8C53554AC797966663C93E
          F73B892691C1A8271F6797F2EAA8BA5141E34E874F6D757EBDEFDD7BAF7BF75E
          EBFFD3DFE3DFBAF75EF7EEBDD7BDFBAF755D1FCD036E6E7ED2F8CF37C70D8236
          BD36FDF949BC76FF004461371EEBC250EE1A0D8B82DDC2AE6EC3DF7498BC8E3F
          234D2E6701D7D8FC90C7BE80D057CF04A0FA2C4C2C04F59A48A564555AB104D0
          819A301C41008FB7AAB46928D2E31EBE63ECEA983F98F7F285F889D65F12FF00
          975FC0EE86EA3D81B7E87757CE6F8E7B4F74EECC96CBC1D6EFCEC4D8FB713756
          E4ECDAEDFDBCE92968733969B70D2C4ED566691E226A3C688AB6B33E3FEA1756
          D106A1FA4383FF000827E4464FCC700051D48CC98519C7ECCF433776F57D77F2
          21EC8DB3F287E2DD065E9FF960F64F60ED4D99F2F7E23E24576536CFC71CF6FD
          CA63B6C507CADE908EB26AA936B60E1CA0A2A7DD584F3458E952513C6633A044
          CDC3CB753FD5315D5401800141CD3550000531803EC19ED72228754463AB30C1
          AD287D47DBE6385385081D17FF00E64DFCDB7AF3BEB33DADD23D75DDBB83A87E
          0E746F9F01F2CFE44F5CD552C9D8FF0029779E730D4CD88F853F0DE5A1AB5CC6
          437BEEEFE271D367737481D68A9EA1A2B2A5E492CB6D14B4334ACB1A37753F16
          3E11EA7D7CB3F2E9A911E291A29168471F5FB3FD9EA867A4B64769FF002CAFE6
          ADF16FE567617C2AD97B237AFCB7E87EE3C67C19F829D6F8AF2E73AE77456D5E
          0B6074DE17B3F702D354CADBEABF1BB866C96E7CCCA5AB2249A76322CA560855
          DDC76EC57E96DE389B490235AD15853E26CD4907B8D05386483D26F140D548CE
          9F2FCF03E7FEAAFCBADB03B33F96CF77CFFCBA3E5BD36EBA9C37C88FE625F276
          9767F67F666E88EAE930585DC1BD3AD37B6DCDF3D7DD31D7B5D9A928A8F6A75D
          75F51E08E330C7FC9D9E677A990EB9142A7842473325BCA41906966274862452
          A698551E55E1C4D3C9F24E920E4FFABFD43AB04FE5F7F197797C7FEA6CCEEDEE
          EC841B8FE557C86DC2BDBDF263754553157C2FBEF254105262F61E16B6292789
          B68F56EDF8E1C363922924A7630CD3C674D47B6DE6678A088FC283F99C93FE0F
          9631C4F5624D02D4951C3A89D59FCBC7AA3AC3E5976BFCB45DD5BDB7667FB0B3
          F98DDBB57AEF71C9837EBCEA6DE5BCB1B88C6F636F4D978DA1C45256C9BBF7BC
          3848629B215734B3C14664810959198B6080080A38FF00C5D3EDF3EAB92A109A
          A8351F6F47F7DEBAF75EF7EEBDD7BDFBAF75ADC8DE7B7BE767F3C4CFEE1DC9B9
          F1589F8C7FC9F76A2E1284E7B71D2D06D7DE5F31BB831150990CBAC5575F4942
          B5BD4DB567683CBFB863AC11836D5A7DA8F0996192667A2290B4FE9382787FA5
          14FB4D3A694C92DC98563A8415E049A9F97577795F981F12B033CB4B9CF947F1
          D30D530ACEF353E57BB7AD31D3C4B4DFF025A586B37343246B4FFDB24009F9B7
          B4B232C4CA92B0573C01C13F603D2A104CD858589FB0F419EDBFE645F0137A77
          26D5F8FBB2FE61FC78DE7DC9BE1276DA3B0F67F696D5DD595DC0F4F4F255494D
          8D9F0191C86327AF6A789DA3A7F389E5D242231047BF3B88DC47202AE4D28411
          9FCC7576B59D22F19D291D699201AFD95AFF002E8EBFBB749FAF7BF75EEBFFD4
          DFE3DFBAF75EF7EEBDD7BDFBAF755BDF3662CC56FC8AFE5CD8C195CAEDDD9F5D
          F237724DB9770513A4142B96C1F5C66371ECCDAD90AB764313EF9CC61DF1B122
          B07984CE8B726C4D76F28B6BB99726BE18D34F36AF9FCB4EAEACAF0AD5653923
          B7FD3797475F7F75075C76865BAE339BF36BD1EE1CB751EF8A5EC7EBBADA89EB
          A9E6DB5BCE8F1793C35366A94D1555309E44C7E5E74314DE481F502C84AAD8A8
          D08A150720FD84798FDA7F6F55F4C9EA923F99CFF349F88BB836DF6AFF002E7E
          ACEBFDC9FCC1BE4CF78EC9DC5D5B91F8DFD030C3B92836DFF7BB1C710992ED5E
          C8852AB68F5D526126AE4AC69269A4A9A6929AEC913056F6E5AF892CC52D9878
          C2BC7005066A4E0000E49E1F2C75B97F440D64063E55CFECFCFEDF9744ABF91F
          7FC26C76D7C2DA6D99F20FE70E4297B77E426DBADACDC1D57D3151964DDBD39F
          1BF2B91AD6A99B7063125862C46F1ED8A98E2A7F2E6169A2A6A27847DB2BB849
          92F2CC9080438D6BF8BC8127C8F99FE91CD78791EBD435CE5FD7FD5FEAFF000F
          57C7F243E437F2DBEA5DE7B3BB5FE527717C4DD9DD91D35067EB7606E8ED0DE5
          D710F616C28F7053262F704BB462C9D749BA71D3656953C328A38BC92286001F
          57B466E224D359054F0A64E718A578FF003EBC2DFC5901D03C4515CD053F6D3A
          AF6DC9FF000A5AFE5769BA27D97D37B9FBEFE57EE786478462FE2EFC78EC7ECE
          3513AA0748692BAA31DB7B1B54D37214A4C53D25890B663E495A472890485AB8
          C015FB2A457ABB24483BEEA30F4AD2A49FE408FE7F6753687F9BB7CDAED8AA8A
          9BE337F242F9BBBA68EADA68E9F72FC8EDD7D5FF0013B0296F3B53544B1EFBAD
          CDE57C6F0C4ACD1BC30BABB88CDAE18A97B6BD58C3F8014839577456A7AAA96A
          907C8FF87A663B8B394D6299A48F812ABC1BCC13C053CF8FD9D3C637B57FE144
          3D913D64543F143F9707C6AC6D4CF2A5157767F7BF6AF74E7B174AD278E19E6C
          7757E2B0B85CA5444A75B2FDCC0AE97002B5AEA96DED7B256BF4D078A6990B8F
          F6DA42F4E87892664681DE3F260428CFC8F75471F21D4CA1F8BBFCF73B05BC7D
          9FFCCFBE3074950BF926783E37FC31A7DDD918A4984EC28D331DCFBC6612D1D1
          39458DC53432CA972FEA0094F2C76956F0AE26D3E555407ECAD5853F2EB7AD6A
          EA621A334353ABE551C3EDEB39FE51BF25F78574959DC9FCE83F98E6E5A7ABAA
          32E4B07D4DB87AD3A0307554CA23F150D3C3B3B67E4B278EA76D2EB3786AD7CF
          1BD880E03FB7627B0104D05C5934A1AB4264A11FEF282BFB73D279C4D29AC730
          43E5451FE4A7451BF982FF002D0F8E5F13BE24766F6755F7E7F322EEDEC9AD82
          8761F4B6CFDE9F3F3E46641F75F73EFBAEFE07B0B15498CDBBBAB0314BAABEA1
          5EAE38E2FDDC7D2485C3302FEDCB310CB12D8B59C663AD413ACB835C00DA89A5
          48E20E3EC1D5669648E30DA899C5006006AFCB87EDE3D3A7C38FF84BCFF2E0EB
          4EA9D8196F931D5FBAFE417C81CD6DCC4E77BA7706FEEDBECCA9DB79FEC4CA46
          729B8D8ED6C3EE5C2E1ABA9292BAB64A40D5715449531441E62D23B12D48D0C4
          D3C09124915705AA6847E25A103278120D453A6D217631CCD33ACC0715A0E3E5
          C3FD5FB7AB09C0FF0022DFE503B6E821C6E33F97AFC6B7A781E1923932FB2177
          157F969A569A09A4CAEE0ABCA65269A276203BCCCC1094BE8257DECDECED1782
          447E1FFCD38EBFB74D7F9F0C74FBA2C8559ABA87A123FC14E8DA74E7C15F85DF
          1E73F16EBE8BF8A5F1EFA9374C0B5AB4FB9BAFFA8F63ED7DC34C9913AABA3A6C
          DE2B0B4D93A68AA896D6A92AA9D6FC7ADAFA92F6EA5896092526153814000FD8
          07ECEB65159FC46157F53D1ACF697AB75EF7EEBDD7FFD5DFE3DFBAF75EF7EEBD
          D7BDFBAF744A3F98864FE3FE03E1FF006FEE6F937B7F7EEE0EA3DB78EC36572D
          1F54E0F3F9DED3C4E6CEE1C563B69EE0EB8876BC52676837861F7257D34B4955
          0155808632DE032A33F6EF2C72A3431177FE1009D5F2A0209F5E3E55EA920888
          5F1A7F092A3BFF0084F911839EB485DFBD45FCD0FE756E16DBBF11B0DFCDAFB4
          3A0E6AFA9C6D3E3FE74FC94A8F8E9B0E0C44F894AC6A1CAAECFA6DA3BC378E22
          6698C4D6AB2D3532850C0B900E371B7B4B8459638E41230EF0E7420C7A6093C3
          CCF975AFADBAB3934CB76B7501E0F1AD18E38765070FE8F0F2EAD53E1E7F262F
          E711D61B29767E1FE68FC57FE5C9B0B3D58ABBC7627C2AF8F589DE9BF72349A4
          BD565AAFB9BB111375E5B72564CDCCF555B51E362CF1F8C81A8AEE16311C36C2
          F83C282BFA719504D08A1D5A581FE967F3E1D790BC6F2BC518FD4249D7DD4AF9
          AF1F9712283A3B3B63FE13C1B173F92C9E53E577F31BFE669F2D973553054663
          6B6F4F943BAF6375F65920795D29321B5763C9453CB441DD58471D6C410A596C
          A4AFB491C567105D16A0B06D5DC415AFD9406BF9D3E5D385A478DA3794D08A63
          1FCB3D1DEEABFE4A3FCA93A7325066F687C12F8FF90CFD3C91CF1EE2EC5DA5FE
          97F3FF00731C663155FC63B5EAB7A57AD4B024B3AB82CFEA3EAE7DAB3792F84F
          024712C24D68234C7FA562A597F26AF4D889069E38F99FF3F5621B23AD7AE7AC
          F1ED88EB8D81B27AFF0012CC59B19B236AE0B6A63D9998BB3351606828298B17
          2493A7EA6FED879A5916349256644AE904920572680F0A9E34E3D6D628D18BA4
          6A18F120004F4B6F6DF57EBDEFDD7BAF7BF75EEBDEFDD7BA29FDCDF1FEB7B93E
          40FC66DED9F6A3A9EB4E82AEDFDD892E02ADA0A88F37DA790C562F6EF5EE464A
          0969DE4126CEA5ABC9D7534E24012A196E09D3ED44722C713157225AFF009307
          E54A9A5335E9878CBCB193FD98FF000F46C3DA7E9FEBDEFDD7BAF7BF75EEBDEF
          DD7BAF7BF75EEBFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75D1B58EAB69B1BDED6B
          5B9BDF8B5BDEC56A29C7AAB69D2DAE9A299AF0A79D7E5D77EF5D587CB875EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD9}
      end
      object Image_RajendraD: TQRImage
        Left = 715
        Top = 51
        Width = 167
        Height = 63
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.687500000000000000
          1891.770833333333000000
          134.937500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676502370000FFD8FFE000104A46494600010201004800
          480000FFE1071A4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A31313A3031203132
          3A35323A34350000000003A001000300000001FFFF0000A00200040000000100
          0000A7A0030004000000010000003F0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          000001000200000201000400000001000001260202000400000001000005EC00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080030008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492543
          AD756A7A474EB336C63AE782DAE8C767D3B6EB08AF1F1AA1AFE92EB5DB525378
          900124C01A925653FEB67D5765C297756C216131B7D7AF423B3BDFEDFED2AB4F
          D5876786E47D67BBF69DC5C2C6E1EADC3A4EAEF4ABC66ED6E66CDDB3D7CEF5BD
          4FF474AE2AEE9DF573031BAAF4A1854FED6C5EA4723ED5B1AEAF1B18BD9978D9
          39393631D4D388CC5FD5FF0067FF003D937FEAF5637E977A4A7D552597F56BD7
          3D1A97DD53B1C58EB2CA287E8EAE87D8FB30E97B7F31D5E2BAA6FA5FE07F9A5A
          7CF092974924925292492494A49249253FFFD0F554924925292492494A591F59
          3A465754C6C67615ACAB330326BCDC6F581754FB2A0F6B69BF6FE919559EAFF3
          95FE92B5AE924A790EB591FE31B2B0DD8581D3F1B0EF7101F9F5E58782DFF082
          8AEDA2AB297BFF00D2BBF9BFEBFE917159BD0FAF748CF6E534E1BF23A7FA4731
          AD61B71F19971D98F9D9AFB5B4FAF9545AFB32BDD4E5E455FD2EFBFD3F4D7B22
          E37A8747B306EEA1F6EFACB5E0F4FEAB6D96DB8EFA686DA5B635B4FA0DC9CB7D
          DEA56CA9BE8B3F5646D49E9FA917E600FF00ACBD632FAB3E3F99ADC7131C4F7F
          430DCCDEFF00F84DFF00F5B5D2616162E06255878758A71A8686555B78002F35
          E9195EBE39C0E99D43AD75BCBC32EC7A861B9B8B8AD6573F65F5F2322B6D747E
          89AD6B9EF7DEF7FF002D74FD3313FC62BFA7B31F3F3B0716E6833962A7645E64
          EE66FAC1C2C36BAB6FE8FF00C2FA8829EA96265FD71E8143CD34641EA39427F5
          4C069CABA5BF49AEAF17D4F4BFEBCEA9087D4DC2C978B7AD6565759B041D9936
          6DA0387E7330314518BFF6E576ADAC5C3C4C2A5B8F874D78D437E8D553431A3E
          0C606B525397D2FA9FD62CFEA2EFB4F4AFD9BD2DB592CB322D63F22C73B6FA7F
          A0C7758CC7D8DDFEB32D7FEE2DA492494A49249253FFD1F5549249252942EBAA
          A2A7DD7BDB555534BECB1E435AD6B46E73DEF77B5AD6A9A8BD8C7B1CC7B4398E
          0439A44820F2D70494E1D9F5DFEAF1B5D8F8373FAAE501231FA7D6EC827FEBB5
          0FB2D7FF005EC8A98A2DCFFAE39FB862F4DC7E9554FB2ECFB7D6B1CD22777D8B
          07D8C77FC6672DDAEAAEA6ECA98D637F75A001E1D94D253CF7FCD8EA397B5DD6
          3AE6664ED713E8E2460D25A7FC1BDB8BBB2ACFEDE62C0CDE93F5670FAFBB0FAB
          575748C0606BF0AF2CD872DC5B391F68EB96EFBABF49C3D27E1FDA31AEB3F9DF
          52E65ABD0146CAEBB58EAED687B1C21CC700411E0E6949483A7D7D3EBC5633A6
          8A9B8ADD1828DBB3E5E9FB5595998BF56FA16165B337070AAC2BD80B67187A2D
          7348FA375547A755EDFF008D63D69A4A5249249294924924A524924929FFD9FF
          ED0BD450686F746F73686F7020332E30003842494D0425000000000010000000
          000000000000000000000000003842494D03ED00000000001000480000000100
          0100480000000100013842494D042600000000000E000000000000000000003F
          8000003842494D040D000000000004000000783842494D041900000000000400
          00001E3842494D03F3000000000009000000000000000001003842494D040A00
          000000000100003842494D271000000000000A00010000000000000001384249
          4D03F5000000000048002F66660001006C66660006000000000001002F666600
          0100A1999A0006000000000001003200000001005A0000000600000000000100
          3500000001002D000000060000000000013842494D03F80000000000700000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF03E800003842494D040000000000000200013842494D04
          02000000000004000000003842494D0408000000000010000000010000024000
          000240000000003842494D041E000000000004000000003842494D041A000000
          0003490000000600000000000000000000003F000000A70000000A0055006E00
          7400690074006C00650064002D00310000000100000000000000000000000000
          000000000000010000000000000000000000A70000003F000000000000000000
          0000000000000001000000000000000000000000000000000000001000000001
          0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
          000000000000526374310000000400000000546F70206C6F6E67000000000000
          00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000003F0000
          0000526768746C6F6E67000000A700000006736C69636573566C4C7300000001
          4F626A6300000001000000000005736C6963650000001200000007736C696365
          49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
          066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
          75746F47656E6572617465640000000054797065656E756D0000000A45536C69
          63655479706500000000496D672000000006626F756E64734F626A6300000001
          000000000000526374310000000400000000546F70206C6F6E67000000000000
          00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000003F0000
          0000526768746C6F6E67000000A70000000375726C5445585400000001000000
          0000006E756C6C54455854000000010000000000004D73676554455854000000
          01000000000006616C74546167544558540000000100000000000E63656C6C54
          657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
          0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
          6F727A416C69676E0000000764656661756C740000000976657274416C69676E
          656E756D0000000F45536C69636556657274416C69676E000000076465666175
          6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
          47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
          6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
          0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
          747365746C6F6E6700000000003842494D041100000000000101003842494D04
          14000000000004000000023842494D040C000000000608000000010000008000
          0000300000018000004800000005EC00180001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080030008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492543
          AD756A7A474EB336C63AE782DAE8C767D3B6EB08AF1F1AA1AFE92EB5DB525378
          900124C01A925653FEB67D5765C297756C216131B7D7AF423B3BDFEDFED2AB4F
          D5876786E47D67BBF69DC5C2C6E1EADC3A4EAEF4ABC66ED6E66CDDB3D7CEF5BD
          4FF474AE2AEE9DF573031BAAF4A1854FED6C5EA4723ED5B1AEAF1B18BD9978D9
          39393631D4D388CC5FD5FF0067FF003D937FEAF5637E977A4A7D552597F56BD7
          3D1A97DD53B1C58EB2CA287E8EAE87D8FB30E97B7F31D5E2BAA6FA5FE07F9A5A
          7CF092974924925292492494A49249253FFFD0F554924925292492494A591F59
          3A465754C6C67615ACAB330326BCDC6F581754FB2A0F6B69BF6FE919559EAFF3
          95FE92B5AE924A790EB591FE31B2B0DD8581D3F1B0EF7101F9F5E58782DFF082
          8AEDA2AB297BFF00D2BBF9BFEBFE917159BD0FAF748CF6E534E1BF23A7FA4731
          AD61B71F19971D98F9D9AFB5B4FAF9545AFB32BDD4E5E455FD2EFBFD3F4D7B22
          E37A8747B306EEA1F6EFACB5E0F4FEAB6D96DB8EFA686DA5B635B4FA0DC9CB7D
          DEA56CA9BE8B3F5646D49E9FA917E600FF00ACBD632FAB3E3F99ADC7131C4F7F
          430DCCDEFF00F84DFF00F5B5D2616162E06255878758A71A8686555B78002F35
          E9195EBE39C0E99D43AD75BCBC32EC7A861B9B8B8AD6573F65F5F2322B6D747E
          89AD6B9EF7DEF7FF002D74FD3313FC62BFA7B31F3F3B0716E6833962A7645E64
          EE66FAC1C2C36BAB6FE8FF00C2FA8829EA96265FD71E8143CD34641EA39427F5
          4C069CABA5BF49AEAF17D4F4BFEBCEA9087D4DC2C978B7AD6565759B041D9936
          6DA0387E7330314518BFF6E576ADAC5C3C4C2A5B8F874D78D437E8D553431A3E
          0C606B525397D2FA9FD62CFEA2EFB4F4AFD9BD2DB592CB322D63F22C73B6FA7F
          A0C7758CC7D8DDFEB32D7FEE2DA492494A49249253FFD1F5549249252942EBAA
          A2A7DD7BDB555534BECB1E435AD6B46E73DEF77B5AD6A9A8BD8C7B1CC7B4398E
          0439A44820F2D70494E1D9F5DFEAF1B5D8F8373FAAE501231FA7D6EC827FEBB5
          0FB2D7FF005EC8A98A2DCFFAE39FB862F4DC7E9554FB2ECFB7D6B1CD22777D8B
          07D8C77FC6672DDAEAAEA6ECA98D637F75A001E1D94D253CF7FCD8EA397B5DD6
          3AE6664ED713E8E2460D25A7FC1BDB8BBB2ACFEDE62C0CDE93F5670FAFBB0FAB
          575748C0606BF0AF2CD872DC5B391F68EB96EFBABF49C3D27E1FDA31AEB3F9DF
          52E65ABD0146CAEBB58EAED687B1C21CC700411E0E6949483A7D7D3EBC5633A6
          8A9B8ADD1828DBB3E5E9FB5595998BF56FA16165B337070AAC2BD80B67187A2D
          7348FA375547A755EDFF008D63D69A4A5249249294924924A524924929FFD938
          42494D042100000000005500000001010000000F00410064006F006200650020
          00500068006F0074006F00730068006F00700000001300410064006F00620065
          002000500068006F0074006F00730068006F007000200037002E003000000001
          003842494D04060000000000070008000000010100FFE11248687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420
          626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A
          4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C7465727320
          6573633D224352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761
          646F62653A6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C
          6B697420322E382E322D33332C206672616D65776F726B20312E35273E0A3C72
          64663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E
          6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323272078
          6D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F
          312E302F273E0A0A203C7264663A4465736372697074696F6E2061626F75743D
          27757569643A61386639646266312D323366322D313165322D383962612D6234
          33326637643635633631270A2020786D6C6E733A7861704D4D3D27687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C
          7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F
          746F73686F703A61386639646265652D323366322D313165322D383962612D62
          34333266376436356336313C2F7861704D4D3A446F63756D656E7449443E0A20
          3C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C
          2F783A7861706D6574613E0A2020202020202020202020202020202020202020
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
          20202020202020202020200A3C3F787061636B657420656E643D2777273F3EFF
          EE000E41646F626500644000000001FFDB008400010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010102
          0202020202020202020203030303030303030303010101010101010101010102
          0201020203030303030303030303030303030303030303030303030303030303
          030303030303030303030303030303030303030303FFC0001108003F00A70301
          1100021101031101FFDD00040015FFC401A20000000602030100000000000000
          000000070806050409030A0201000B0100000603010101000000000000000000
          060504030702080109000A0B1000020103040103030203030302060975010203
          0411051206210713220008311441322315095142166124331752718118629125
          43A1B1F02634720A19C1D13527E1533682F192A2445473454637476328555657
          1AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A67
          68696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7
          B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA11
          0002010302040403050404040606056D01020311042112053106002213415107
          3261147108428123911552A162163309B124C1D14372F017E182342592531863
          44F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3
          D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6
          F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9
          C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00
          DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD0DFE3DF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF748AEC5EC5
          D91D49B1F74764F646E6C46CED8FB330F5B9EDC9B8F3B5B050637198DA085A79
          E59679DD15A570BA22896F24D2B2C68ACECAA744800B1E03AD815341D542E1FE
          657CECF9EB85C9557C02E91A7F8CFD5349B860C42FC98F9BDB377361337BCB12
          DF6D34FB8BA57A128E986473B88580C9E1AFCED651D354EA50912F2C1F5891A1
          8A532E9D42B420D7F67F809207F3E93CD25C46C05BC0921E0751200F9E3381E9
          5FB3AD7FD7E107F36FF9D9FCD0FE677C32ED8FE70DF25BAF3ABBE336C8EAEDF7
          91DE5D554F96EB4C7EEDA9EE6C2CD98DA18ADABD6FD7FBB765E0287138D971F3
          8ADF3D6D43A08742B3170C2BF4D6453C7794C84F018E3535A8A900281E99247C
          CF4A755071EAC27F93DF677CA4F8AFBB69FE2BFCA0F93FD9FF002472C7E5D772
          7C49CFD37736406EBCBEDDDDBD7FD7507666C6DEBD55BF2AB255BB92BF636F0D
          99E135789C9B543D055CB2B2C97176B490451B2F824F85A7F9D2B5FB08F2F5FC
          FAB5358635C815EB6A6F6CF4DF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD1DFE3DFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7547BF30B1D91F999FCCDFE3
          97C0EDC55F538AF8F9D13D518FF9DDDD1B7C448D49DDBB9315D8B2EC6EAAEB3C
          FD3D4ACD4D93D8F8BCAD1D464EBE02A04F2AAAB5CC6967A1490196E0D7C255C7
          A16240F9D695AD3E5D5595D814319F088C9FF27575B94CA60F6BE1AAF2D9AC8E
          2B6EEDFC2D13D4D7E4F29594989C36271D491DE4A8ABADAB929E8A828A9A25E5
          DD923451F503DB0CE141776007993FE7EAE884D1117EC007A7CBAD183F9A3FF3
          56A6EB4F9AF89F959F0D37ABF4474B76875E557C4DF925F2F6A36C6277AE777A
          E331D9A9AAF6B761F46F4557E6713BDF7A5675AD5AD4D063F733D20C4992AE3D
          1E54B31761B78248A705C47E2E0B119E3C5168493C6A7183E7D5341FA9B7249D
          238D387D873FE43D1E5FE5B1D33D59F1F7716D5F995F2E7B176FFC68E90D93B7
          3746F0F8BDB03E4BF73EDEAEF90DDB5BDFB2B0302F68FCCCF90B364F393D4CFD
          8DBEF6A814186DBF4CAF360F160AF8D18A2976EEF6DF6F95ED6DEE0784D104A6
          4B1E04B1F99A53D00A8E3D685B4CD7523853A698FDBFE4FF00579F474EB3FE14
          91FCBAF73F6352F507C6CA7F90FF0030BB2B29B8E836CEDFC1FC74E8ADE3B9B1
          1B8ABAAEA29A1A9A9C4EEECF41B736E4D8BC5475065AAA93388628E3625AC2FE
          DAF02F0C293A58CA6323885C7E6787F3E9F6454758DA64D645680D4FA757EF04
          A678219CC52C0668A394C13AAA4F09910398A6556755963BD98062011F53EDBE
          1D508A123ACBEFDD6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDE
          FDD7BAF7BF75EEBFFFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF755A1F33FF0097050FC9BECFD9BF243A7BE42F6D7C3EF963
          B136849D6B88EFAEA2187CDCF98EADAACCCFB8EB7AEF7A6C2DD9155ED1DD7819
          73D37DCC4F3C4B514CE5F43D9EC3CC599026B2A33C3E7FE6E23E7F2EAAC64228
          8F4C703C3FD55FF8AEAAAFE64FF284FE705F36FA62BBE37772FF00368EA6CE74
          ED7E5B1592AF9315F10E3D85BE33EB8075A8C553EEAC9ECDEC7A4C5676925AB4
          57AAA634F1D34ECA18ADC001DB65B7B7AF892BCA49AF72AE3ECEE38FB7F97578
          A49A351C03D32475575DF5FF0009F6C574F4BD33F1CB27F24BB1FE507C9AF925
          86DD9B3F636C3C06136D744F5F6D9DB7B631D4D94DF3D8FD99D8F86A6DDBDB75
          BD5DB5A95A158B092D7CF0D554C8208516F606D6D796F70CF15C80230B52694C
          70E20578F957CFECAB733BA47AA25AC95A0FB7FE2BCFA5EFF27DFE401F0F3B07
          3DDD187FE63106E9EFEF983F167B5A6EB6DD5D57BD37AE7936650EC4A0862AFE
          A8EC1C6E3E9334D99DD1B23B036E4AB250B4F54299452BC4F0DD47B48F7F077C
          3141133A9A6A22A69E473FB456B9AD474DF8734D1ABCF21D35E0091F913F3FF2
          75BA2757F4FF0054F49ED4C6EC6EA0EB9D95D65B3F0F01A7C6EDCD8FB6F13B6B
          13491160EE128F154B4D1B3C8E353B302CEDCB127DA49279A51A5E5252B5A570
          0FC8701F90E9C48D23034AFF0094FED39E847F6D757EB8BBA448F2CAEB1C71AB
          3C923B044444059DDDD88555551724F007BD8049000CF5E00920019EABC3E42F
          F360FE5F1F18B3B0ECEED0F931B26A7B12AE09E7C7F5775A419DEE4ECDC87DB4
          ED4D3C306C5EA9C4EF0DC30CD1D429461510C2A847A881EF5472FE1A44ED27A0
          049E9E103D0172154F9B103F971FE5D142AEF9F5FCC9BE52838EF81FFCBBB37D
          6DB1332B50988F945F39F76E27AB76C7F0E9A29050EE2DBBD1583A8CB76AE722
          AA4226A56A88A1889B2CF12027DEC433B11ADD228C1CEAA96FC94027F6FF002E
          B5208A200EA3231E01694FCC9229F2A57A1F3F96B7C75FE637D5151DD1D99FCC
          77E5FE07E42F6376AE4F0106D1EAEEAFDB71EDBE93E98DB7B593254E92ED2A79
          B1588C8CFB83789AD59B23785628BC31A0927606416921B78DD9A199DD8F1245
          07E42A4F127D07CB35EA9E2B4AAA5A208DE829C06070AD49A54E4F56A5EE9D57
          AF7BF75EEBDEFDD7BAF7BF75EEBFFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7548DF287E14FF325DC
          1F3EF21F2F7E1EFC8AF8AFD73B7F29D0FB67A45311DF7D59BFFB4370ED5A0A0D
          C359B9373576D0C760339B6F074151B8B23240D2CCF525E44816375D3F571046
          D559246407895018F1AF062075E6663A2880E9AD2A48AD7D69D54BFCC0F837F3
          17E31FCB3EA1F993DD3FCE32BBAEF1DDD14B8EE84F93FBD3686CAEB4E91C8E27
          ABB1D5557B9F0926D996BABAB685307B6F253543FDED7435D5D4B1688E37B300
          6CF1D81D2ABE214506A48019BD2A4569FCFAA24776354C48452C284548AFA645
          3F6647F2E810EFBF929BBF6EEDA9307FCA0BF9887F32FF00E661F2DE86B1F178
          F8361516DDEE4F8E98005E29B2151DB59DC875FE37660A714F20D2D4F5D3D4F9
          59086896EE18B7B7B79F5C96911EC34249C0A8AD6A401420F1E94096621BC77F
          10FA9F2F97574DD61DBDFCFCBBFBAA36B5327C72F8A3F0DB7AA6D8C0D06E6DF5
          F20B73E6BB3F3F92DDD490469B8F3F41D4DD51928F0F87C1655E367A6A69B32D
          34524A010A8857DACB8B7803304BAD207A51EBF20787D95EAC1EDB49D319328E
          3AAA17F2A64FEDE9F329FC9C77D7C98871F57FCC73E7E7C9CF92D12CED5F91E9
          CEA4DC0BF183E3B4B3D5DA5ABC4D5ECDEB765DD5B8B0D4B37A699AAB311D4089
          0072D723DA4962B56923915599D69424D33F629F5E193F674D891A846900FCBA
          B28F8F1F08FE24FC4FA5307C76F8F5D55D5157351D1D16433FB5768626977666
          A3A2A64A48E6CF6ED929E5DC79BAD9A14FDE9EAAAA59666F53963EDD69E76528
          AFA54F10315151834A57862A4D0E73D5492D4D46BD1A6F6C915041E1D6BAF7BF
          0140075EEBDEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD4DFE3DFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD32EE0DC9B776962AA73BBAB3D85
          DB384A250D5999DC194A1C362A914DECD5390C8CF4D49029B7D59C7BD1200A93
          41D6C02780EAB07B7FF9D4FF002EFEAAC936DAC0775CBF2337E9A9A9C7D3F5D7
          C4BDA9B83E49EEDA9CBD348616C215EADA3CEE031D997994AAD356D7D34848FA
          01CFBF4656504C4E1A8698CE7F2AF4EA43AABAE544A7F11A7F9FA03B27F3BFF9
          A7FC84A3FB8F84FF00CB1A5EB7DB555552438FECDFE613D8F47D30B578C9B4C7
          499EA5E98D8EFB97B2E2FB6916432D1D7350CCEBA4A12A6E5E303AD0BBAA29F2
          3F10AFAA8A918F51FE1E9334A2399E31034814F104053F99FF0021AF45AFE602
          FCFBDA5B6B66ECCF91FF003FFB3E8FBDFBBA1C9E2BAABE317F2C0E99DB5B4B76
          6E4CCE2CD23653218CED8ED1A6DD3BAF6EED4C3A55C3F7B94C90829E99598EAF
          ECFB69C5A6B8E297C57AD72A4AD3E668694FF4DD3897329A27D12AA9FC42A74F
          DA4FF909FE7D01BD11FF0009B8C1F7BD5EDBECAFE663BA376F60E4B09B846E6C
          5F53D776BEE0EDDDC593A979229679FB73B8B7228FE25539458C2D6E1F6BD1E2
          F0BA85D5DF5302BA19ADAD11963B656241E3DD43F691527D6941F33D3A66661A
          5F23AD9EFA73A3BA73E3D6C7C675AF467586C6EA5D85878D131FB53606DBC5ED
          9C34452348BCF2D2E2E9A9D6AEB1E3401E798C93496BB393ED23BB39AB1FC800
          07E40500FC874CF42A7B6C0A75EEBDEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEBD
          EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFFD5DFE3DFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF7549DBEFAFF00F9FAF6B6F0831981EFDFE5E7F143AB8EE1
          CE51D6EE7D87D6DDA9DEBDB8BB5E9F2350B81CBD06DEECB8313D7F3E63278F8E
          23353CB554F1C0243EA2EB6F6F3AC3A80573A7D40A9FE6467F974AE4365A0889
          5FC4F2269FEAFE5D7A8FF91D742F6AD5516E7F9FDDD3F207F985EFD4321C8CBD
          D1BFF35B2BA92742647A4A0C7742F5664F6C75F5062B1534A64A58E78EB6656F
          F3B34BEE9114819DE24FD461425A8DC0D45011A47EC27A44E824D352401E869F
          E0EAD3BA63E3CF43FC74DB71ED0E85E9CEB3E9DDB494D414AF89EB7D95B7F685
          3D6458CA64A3A17C9B612828E6CB54D3D346104D54D34C47D58924FBF3C8D231
          66393E8001FB0500FC875E550A283A18FDD3AB755F5F387E0F6E0F9415FD57DA
          FD2BDFDBB7E2AFCA7E85A9DC32F51F78ED6DBB87DF18E8B0DBBE9E8E9B77EC4E
          C2EBADC33536137DEC6DCF0E3A0F2D34B341353CD18961901D4AEE46E109A8C1
          F903FE1E3F67F31D6F538A50E01E1E47EDE8B545DCFF00CEBBA3AAA2C3F627C3
          9F8CFF003476C63A38E7A9ECBF8E7DFA7A3F7AE43194F118E75A9EA8EE8C09C3
          D4EEDA8301A83150E661A0669843191A759A4FA9847F4C8BAAB904918F95700F
          DAD4F975B88C659C4EACAA17057353F671FF0007DBD584FC66F91137C88DA196
          CBE6FA6BB83A0F7BED4CBC7B7B7BF587736D6FE099EC0E625C7D2E4E2389CFE3
          2A327B377C60EA292AD4C592C357D652B3064628E34FBA82783535F9806B4FCC
          75E60A0F6312BF314FE5D191F7BEABD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD6DFE3DFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD9}
      end
      object qrlbl2: TQRLabel
        Left = 304
        Top = 34
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          89.958333333333330000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Performed by'
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
      object lbl_Qualification_CD: TQRLabel
        Left = 304
        Top = 66
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          174.625000000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '#########'
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
      object lbl_Docname_CD: TQRLabel
        Left = 304
        Top = 50
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          132.291666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '########'
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
      object lbl_Specialization_CD: TQRLabel
        Left = 304
        Top = 82
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          216.958333333333300000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '########'
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
      object qrshp2: TQRShape
        Left = 284
        Top = 29
        Width = 149
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          751.416666666666700000
          76.729166666666670000
          394.229166666666700000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object img2: TQRImage
        Left = 284
        Top = 2
        Width = 150
        Height = 25
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          751.416666666666700000
          5.291666666666667000
          396.875000000000000000)
        XLColumn = 0
      end
      object lbl_note: TQRLabel
        Left = 6
        Top = 119
        Width = 623
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          314.854166666666700000
          1648.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '1. Abbreviations : LOW = L, HIGH = H, WITHIN NORMAL LIMITS = WNL' +
          ', CRITICAL VALUE = **, COLORIMETRIC = C, KINETIC = K, ELISA = En' +
          'zyme Linked Immunosorbent Assay ,'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object lbl_note1: TQRLabel
        Left = 6
        Top = 98
        Width = 39
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          259.291666666666700000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Notes :'
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
      object qrlbl3: TQRLabel
        Left = 6
        Top = 145
        Width = 582
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          383.645833333333300000
          1539.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '2. The laboratory results should be interpreted only in the cont' +
          'ext of other laboratory findings  and the total clinical status ' +
          'of the patient. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl4: TQRLabel
        Left = 6
        Top = 158
        Width = 718
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          15.875000000000000000
          418.041666666666700000
          1899.708333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '3. Biochemical parameters were analyzed by automatic clinical ch' +
          'emistry analyzer using Flexor Junior, Lablife Robochem & Gesan 2' +
          '00 whereas immunological parameters were measured by using '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl5: TQRLabel
        Left = 6
        Top = 186
        Width = 582
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          492.125000000000000000
          1539.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '4. LDL- Cholesterol determination is done by direct method.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl6: TQRLabel
        Left = 6
        Top = 200
        Width = 705
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          529.166666666666700000
          1865.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '5. Glycosylated hemoglobin (HbA1c) assay is NGSP-certi'#64257'ed and st' +
          'andardized to the DCCT assay.  We are only the laboratory in Nep' +
          'al who has been participating in EQAS program for HbA1c.  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl7: TQRLabel
        Left = 6
        Top = 215
        Width = 673
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          568.854166666666700000
          1780.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '6. We have been doing daily Internal Quality Control (IQC) by us' +
          'ing assayed chemistry control & immunoassay plus control from Bi' +
          'o- Rad Laboratories, USA. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl8: TQRLabel
        Left = 6
        Top = 231
        Width = 705
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          15.875000000000000000
          611.187500000000000000
          1865.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '7. We have been participating in External Quality Assurance Surv' +
          'ey (EQAS) program with CMC, Vellore, India and ANCLS, S Korea fo' +
          'r quality control of majority of biochemical parameters. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrshp_lastlne2: TQRShape
        Left = 11
        Top = 248
        Width = 706
        Height = 3
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          29.104166666666670000
          656.166666666666700000
          1867.958333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlbl18: TQRLabel
        Left = 13
        Top = 132
        Width = 701
        Height = 13
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          34.395833333333330000
          349.250000000000000000
          1854.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'CLIA = Chemilluminescence Immuno Assay, IMMUNOFLURESCENE = IF, N' +
          'EPHELOMETRY = N, TURBIDIMETRIC = T, BORONATE AFFINITY CHROMATOGR' +
          'APHY = AC, ELECTROPHORESIS = E'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl20: TQRLabel
        Left = 13
        Top = 172
        Width = 719
        Height = 12
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          34.395833333333330000
          455.083333333333300000
          1902.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'immunological techniques from Diasorin Liaison-CLIA,LabLife ELIS' +
          'A, i-Chroma, Mispa i2, Nycocard.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object GroupHeaderBand1: TQRBand
      Left = 48
      Top = 332
      Width = 720
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupHeader
      object QRLabel37: TQRLabel
        Left = 3
        Top = 4
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          10.583333333333330000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sample No.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel38: TQRLabel
        Left = 105
        Top = 4
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          10.583333333333330000
          259.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sample Source'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 224
        Top = 4
        Width = 135
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          10.583333333333330000
          357.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Collected Date/Time'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 416
        Top = 2
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1100.666666666667000000
          5.291666666666667000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Collected by'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 21
        Width = 721
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          55.562500000000000000
          1907.645833333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object SummaryBand1: TQRBand
      Left = 48
      Top = 447
      Width = 720
      Height = 282
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
        746.125000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel25: TQRLabel
        Left = 4
        Top = 266
        Width = 114
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          10.583333333333330000
          703.791666666666700000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Printed Date/Time :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_dateh: TQRLabel
        Left = 124
        Top = 266
        Width = 186
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          328.083333333333300000
          703.791666666666700000
          492.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2012/04/02 AD-2068/12/20 BS 16:22:12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 316
        Top = 266
        Width = 60
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          836.083333333333300000
          703.791666666666700000
          158.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Printed By'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel34: TQRLabel
        Left = 376
        Top = 266
        Width = 6
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          994.833333333333300000
          703.791666666666700000
          15.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_verifybyh: TQRLabel
        Left = 382
        Top = 266
        Width = 79
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1010.708333333333000000
          703.791666666666700000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_Verifiedby'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 564
        Top = 264
        Width = 29
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1492.250000000000000000
          698.500000000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 592
        Top = 264
        Width = 6
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1566.333333333333000000
          698.500000000000000000
          15.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 598
        Top = 264
        Width = 34
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1582.208333333333000000
          698.500000000000000000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object QRLabel48: TQRLabel
        Left = 635
        Top = 264
        Width = 12
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1680.104166666667000000
          698.500000000000000000
          31.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'of'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object lbl_totpageh: TQRLabel
        Left = 652
        Top = 264
        Width = 64
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1725.083333333333000000
          698.500000000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'lbl_totpage'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 30
        Top = 65
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          79.375000000000000000
          171.979166666666700000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Performed by'
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
      object lbl_Qualification_LT: TQRLabel
        Left = 30
        Top = 98
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          79.375000000000000000
          259.291666666666700000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Technologist'
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
      object lbl_DocName_LT: TQRLabel
        Left = 30
        Top = 82
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          79.375000000000000000
          216.958333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deepak Raj Joshi'
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
      object QRLabel29: TQRLabel
        Left = 540
        Top = 65
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          171.979166666666700000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dispatch By'
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
      object lbl_DocName_RT: TQRLabel
        Left = 540
        Top = 82
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          216.958333333333300000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Anil Regmi'
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
      object lbl_Qualification_RT: TQRLabel
        Left = 540
        Top = 98
        Width = 53
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          259.291666666666700000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Biochemist'
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
      object lbl_Specialization_LT: TQRLabel
        Left = 30
        Top = 115
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          79.375000000000000000
          304.270833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deepak Raj Joshi'
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
      object lbl_Specialization_RT: TQRLabel
        Left = 540
        Top = 115
        Width = 51
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1428.750000000000000000
          304.270833333333300000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Anil Regmi'
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
      object QRShape5: TQRShape
        Left = 102
        Top = 6
        Width = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          269.875000000000000000
          15.875000000000000000
          285.750000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 426
        Top = 63
        Width = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          1127.125000000000000000
          166.687500000000000000
          285.750000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object SignatureRT: TQRImage
        Left = 526
        Top = 29
        Width = 150
        Height = 28
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          1391.708333333333000000
          76.729166666666670000
          396.875000000000000000)
        XLColumn = 0
      end
      object Image_GaneshT: TQRImage
        Left = 683
        Top = 72
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1807.104166666667000000
          190.500000000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676513320000FFD8FFE000104A46494600010201004800
          480000FFE1068A4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A32313A30320000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000055C00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F5549249252964FD6AEA193D37
          EAFE6E6E210DC8AABFD13DC3706B9CE6D41FB0FD3D9BF7ED5ACB1BEB8D19391F
          55BAA538B48C9BECC6B032AD64E9CB36B5EE75AC6FBE967F84B7D891532E8D95
          98DCECFE919963B21F83E8D9464BC35AFB28BDAEF4CDDE98656EBEBC8C7CBA5C
          EAEAABF46CABF3D6BAE63A4E73733EB5FDA58EDCCCBE89897B4C44837653A769
          F737F9D5BE7A860065D61C9A433175C877A8D8AFFE39DBBF45C7E7A4A6C24B17
          2FEB7745C6C86E39B4DB6399EAC54374D65BEAD76D5FF7219655BECFD5FD5FD1
          D767EE21D3D47AD65E4E3E751897D58A18E664F4DBDAC6584591662E65374FA0
          EB9BE9FA7762FDABF44CBBF49FA7AF621614EF24AA1EA782C631D9173319EF68
          77A3739ACB1BB84EC7B377D350FDAF86E1FA216DDFF174D8E1FE76CD9FF491B5
          3792549F9D911FA1C1BAC3FCA35B07FE096077FD15017F56B8EDAEBC6A1CD8DE
          1F63AD736448DD556CA5BFF83A56A741259E7A767DC1C327A8D803810598CC65
          2D83FCA78C9C96BBFA992ACE1E257874368ADF658D6FE75D63EE799FDEBAF759
          63BFCE4949D2492494FF00FFD0F554924925292492494E0319BBEBDE43B5F6F4
          9A41FED6464FFE41357F53FA4E0D348C2C5FB43B1AB763D55655CF7566AB1CD7
          D95DDBC5FEAD2C7B7D5AE97D7E9B2CFE6BD344A5A4FD76CC7761D33141F89BF3
          E3FEA56E214A72EAE9797037DB4634BB7B9B8B4341DC06D63FD4C8F5BDED6FE7
          FA28BFB1B11ED8C975B97265C2EB1EE69FEB50D2CC6FFC055F491A521A30F131
          C463D15D20FF00A3686FFD4846492494A506D55B5EFB1AC6B5F646F70001740D
          ADDEEFCEDAD534925292492494A49249253FFFD1F55492492529249072F2A9C3
          C5BB2EF3B69C7ADD6DAEF06B017BCFF9AD494E57492FBFEB275CCAD3D3ABECB8
          2C23C6AADF9B67FD2EA7B16DAC6FAA38F6D5D071EFC8DA72B3CBB3B25CD11366
          538E56DFFACB2C663FF52A5B29294924924A5249249294924924A52492492949
          24924A7FFFD2F55497CAA924A7EAA41CCFE897FF0037FCDBFF009EFE6BE89FE7
          FF00E07FD27F217CB6924A7EA1E9DFF27E2FF33FCCD7FD1BF98FA2DFE8DFF75F
          FD0FFC1AB2BE5549253F5524BE5549253F5524BE5549253F5524BE5549253F55
          24BE5549253F5524BE5549253FFFD9FFED0B4450686F746F73686F7020332E30
          003842494D042500000000001000000000000000000000000000000000384249
          4D03ED000000000010004800000001000100480000000100013842494D042600
          000000000E000000000000000000003F8000003842494D040D00000000000400
          0000783842494D04190000000000040000001E3842494D03F300000000000900
          0000000000000001003842494D040A00000000000100003842494D2710000000
          00000A000100000000000000013842494D03F5000000000048002F6666000100
          6C66660006000000000001002F6666000100A1999A0006000000000001003200
          000001005A00000006000000000001003500000001002D000000060000000000
          013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E80000384249
          4D040000000000000200013842494D0402000000000004000000003842494D04
          08000000000010000000010000024000000240000000003842494D041E000000
          000004000000003842494D041A00000000034900000006000000000000000000
          00003C000000960000000A0055006E007400690074006C00650064002D003200
          0000010000000000000000000000000000000000000001000000000000000000
          0000960000003C00000000000000000000000000000000010000000000000000
          000000000000000000000010000000010000000000006E756C6C000000020000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000
          0006736C69636573566C4C73000000014F626A6300000001000000000005736C
          6963650000001200000007736C69636549446C6F6E6700000000000000076772
          6F757049446C6F6E6700000000000000066F726967696E656E756D0000000C45
          536C6963654F726967696E0000000D6175746F47656E65726174656400000000
          54797065656E756D0000000A45536C6963655479706500000000496D67200000
          0006626F756E64734F626A630000000100000000000052637431000000040000
          0000546F70206C6F6E6700000000000000004C6566746C6F6E67000000000000
          000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000
          000375726C54455854000000010000000000006E756C6C544558540000000100
          00000000004D7367655445585400000001000000000006616C74546167544558
          540000000100000000000E63656C6C54657874497348544D4C626F6F6C010000
          000863656C6C546578745445585400000001000000000009686F727A416C6967
          6E656E756D0000000F45536C696365486F727A416C69676E0000000764656661
          756C740000000976657274416C69676E656E756D0000000F45536C6963655665
          7274416C69676E0000000764656661756C740000000B6267436F6C6F72547970
          65656E756D0000001145536C6963654247436F6C6F7254797065000000004E6F
          6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566744F
          75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E
          67000000000000000B72696768744F75747365746C6F6E670000000000384249
          4D041100000000000101003842494D0414000000000004000000043842494D04
          0C0000000005780000000100000080000000330000018000004C800000055C00
          180001FFD8FFE000104A46494600010201004800480000FFED000C41646F6265
          5F434D0002FFEE000E41646F626500648000000001FFDB0084000C0808080908
          0C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E
          0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108
          0033008003012200021101031101FFDD00040008FFC4013F0000010501010101
          010100000000000000030001020405060708090A0B0100010501010101010100
          000000000000010002030405060708090A0B1000010401030204020507060805
          030C33010002110304211231054151611322718132061491A1B14223241552C1
          6233347282D14307259253F0E1F163733516A2B283264493546445C2A3743617
          D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F5566676
          8696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404030405
          0607070605350100021103213112044151617122130532819114A1B14223C152
          D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354A317
          644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F556
          66768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311
          003F00F5549249252964FD6AEA193D37EAFE6E6E210DC8AABFD13DC3706B9CE6
          D41FB0FD3D9BF7ED5ACB1BEB8D19391F55BAA538B48C9BECC6B032AD64E9CB36
          B5EE75AC6FBE967F84B7D891532E8D9598DCECFE919963B21F83E8D9464BC35A
          FB28BDAEF4CDDE98656EBEBC8C7CBA5CEAEAABF46CABF3D6BAE63A4E73733EB5
          FDA58EDCCCBE89897B4C44837653A769F737F9D5BE7A860065D61C9A433175C8
          77A8D8AFFE39DBBF45C7E7A4A6C24B172FEB7745C6C86E39B4DB6399EAC54374
          D65BEAD76D5FF7219655BECFD5FD5FD1D767EE21D3D47AD65E4E3E751897D58A
          18E664F4DBDAC6584591662E65374FA0EB9BE9FA7762FDABF44CBBF49FA7AF62
          1614EF24AA1EA782C631D9173319EF6877A3739ACB1BB84EC7B377D350FDAF86
          E1FA216DDFF174D8E1FE76CD9FF491B53792549F9D911FA1C1BAC3FCA35B07FE
          096077FD15017F56B8EDAEBC6A1CD8DE1F63AD736448DD556CA5BFF83A56A741
          259E7A767DC1C327A8D803810598CC652D83FCA78C9C96BBFA992ACE1E257874
          368ADF658D6FE75D63EE799FDEBAF75963BFCE4949D2492494FF00FFD0F55492
          4925292492494E0319BBEBDE43B5F6F49A41FED6464FFE41357F53FA4E0D348C
          2C5FB43B1AB763D55655CF7566AB1CD7D95DDBC5FEAD2C7B7D5AE97D7E9B2CFE
          6BD344A5A4FD76CC7761D33141F89BF3E3FEA56E214A72EAE9797037DB4634BB
          7B9B8B4341DC06D63FD4C8F5BDED6FE7FA28BFB1B11ED8C975B97265C2EB1EE6
          9FEB50D2CC6FFC055F491A521A30F131C463D15D20FF00A3686FFD4846492494
          A506D55B5EFB1AC6B5F646F70001740DADDEEFCEDAD534925292492494A49249
          253FFFD1F55492492529249072F2A9C3C5BB2EF3B69C7ADD6DAEF06B017BCFF9
          AD494E57492FBFEB275CCAD3D3ABECB82C23C6AADF9B67FD2EA7B16DAC6FAA38
          F6D5D071EFC8DA72B3CBB3B25CD11366538E56DFFACB2C663FF52A5B29294924
          924A5249249294924924A5249249294924924A7FFFD2F55497CAA924A7EAA41C
          CFE897FF0037FCDBFF009EFE6BE89FE7FF00E07FD27F217CB6924A7EA1E9DFF2
          7E2FF33FCCD7FD1BF98FA2DFE8DFF75FFD0FFC1AB2BE5549253F5524BE554925
          3F5524BE5549253F5524BE5549253F5524BE5549253F5524BE5549253FFFD938
          42494D042100000000005500000001010000000F00410064006F006200650020
          00500068006F0074006F00730068006F00700000001300410064006F00620065
          002000500068006F0074006F00730068006F007000200037002E003000000001
          003842494D04060000000000070008000000010100FFE11248687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420
          626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A
          4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C7465727320
          6573633D224352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761
          646F62653A6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C
          6B697420322E382E322D33332C206672616D65776F726B20312E35273E0A3C72
          64663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E
          6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323272078
          6D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F
          312E302F273E0A0A203C7264663A4465736372697074696F6E2061626F75743D
          27757569643A65306633313965612D653963372D313165312D393131652D6333
          33323437656632373832270A2020786D6C6E733A7861704D4D3D27687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C
          7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F
          746F73686F703A36316232353761352D653963362D313165312D393131652D63
          33333234376566323738323C2F7861704D4D3A446F63756D656E7449443E0A20
          3C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C
          2F783A7861706D6574613E0A2020202020202020202020202020202020202020
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
          20202020202020202020200A3C3F787061636B657420656E643D2777273F3EFF
          EE000E41646F626500644000000001FFDB008400010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010102
          0202020202020202020203030303030303030303010101010101010101010102
          0201020203030303030303030303030303030303030303030303030303030303
          030303030303030303030303030303030303030303FFC0001108003C00960301
          1100021101031101FFDD00040013FFC401A20000000602030100000000000000
          000000070806050409030A0201000B0100000603010101000000000000000000
          060504030702080109000A0B1000020103040103030203030302060975010203
          0411051206210713220008311441322315095142166124331752718118629125
          43A1B1F02634720A19C1D13527E1533682F192A2445473454637476328555657
          1AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A67
          68696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7
          B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA11
          0002010302040403050404040606056D01020311042112053106002213415107
          3261147108428123911552A162163309B124C1D14372F017E182342592531863
          44F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3
          D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6
          F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9
          C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00
          DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD563FCACEDAF92594F97FD0BF13FE
          3C765EDEE9FAADDDF1E7E447C84CD6EACCEC5C26FC7DD19DEACCF755ECED83D7
          95B479ED50E2364E5337D8B2D567AA287C398929A9A38A8EAA9599E425F7134D
          F531DB42C031427F3CD2B5071514C50E6BD3A8A34176008AD3CFFC9D194F857F
          231FE58FC5FEA2EF8AEDBD16CFDCDBC3015941D85B2A1A992B61D8FDABB2B399
          5D8BDADB2E0AB9963A8ABA5DABD8BB6B274304D222493C10248CAA5EC145ACE2
          E6049479F1FB47FAAA3E5D51D74315E8D27B51D57AF7BF75EEBDEFDD7BAF7BF7
          5EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF
          7BF75EEBDEFDD7BAFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD534FC9BE
          E1D87B07F9D0FF002C8D88D539883B1BB7FA03E6B6C5A9A7FE17924C1D6ECB4C
          475EF6462A64CDC94CB85A8C863F73755CB1CD491CCD5912D6C123C622903FB2
          B9C37EF2B6929D8AB43C305B505F99F3FB3F674AE3A9B5956B826BFB295FB3CB
          EDE971FCA4D9E8B61FCDDDA88D6C6EC8FE68FF003E70985A65663150E3B2FDD1
          5DBE5A96189BFE03C5FC4778544810704C8587EAB7B7ECB0922F98723F653A62
          4E2A7E5D5AF7B5BD37D26B736F3D9FB2A9E82AF796EBDB5B4A972B92A7C3632A
          7736771781A7C965EAC3B52E2A826CAD552C75992A958D8C70465A570A6CA6C7
          DD2496389754B22AAFA9200FE7D7BA279F297E6553754EC3EE593E3CE3766FC9
          5EF6E80C56D6DFBDABF1F768EF6A2ADEC7DB3D592E6E8EA378E5EAB6BEDD8F39
          B8A2DDCDB1A9F2355B770F2D345539CAE8238A10C858841777FE1694B6024972
          4FA2AAFC4491F680071CD6941D2A82D8494699FC386B4D4479FA7467BABFB93A
          A7BAB6FC1BA3A9BB1367F6160E6A4C656BD66D4CFE3B30D411E62862C963E1CC
          525254495B84AF9E8E65734D591C1509C874560405B14D14CA1A3704115F98AF
          A8F2FCFA4EE8C868CB43D095EDDEABD639A6869E379AA258E08631AA4966758A
          345FEAEEE55547FAE7DFB871EBDD039BC3E46F40EC03226F3EE9EAEDB95111D2
          D4193DF3B720CA3390C4471627F88364A795B41B2A44CC48E07B60DD5BAD2B3A
          E7E60FF83ABF8527F01E91F51F2A76155C3149B2367F75767B4F378213B17A5F
          B0A5C648C50C8B20DD3B9F07B63660A79107A6539211B5C59BDE85CAB7C11BB7
          FB5207E45A80FE5D6C464F1651F69E9B64ECDF945BA6529B1BE35E0B6663DD94
          C79AEF9EE0C360AB853B152278B6875160FB7E59E531927C15393C73AB583153
          7D35D776E7B21555F56353FEF207FCFC3AF52203E324FC87F949FF00274A7EA1
          DB5F26B1B9EDC799EF6ED7EA5DDB85C8A3A6D8D8DD5DD41B8B63C3B57FCA2392
          39325BD373F69EF8C8EF0A85A6568D9971D898D8B6B112DB4FBBC69386D52CE1
          87A05A0FF093FCCF5B76888A47111F326A7FC007F2E8C17B7FA6BAF7BF75EEBD
          EFDD7BAFFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD172EF0F8ADD3DF20
          B7BFC78EC9EC2C3E49B7EFC5BED65EE0E9BDD981CACF85CD6DEDC75180C9ED6C
          FE26A6AA9D5FF896D0DE1B7B2B25265B1B283056469131D2F146EAC4B0094A31
          26AA6B834AD08201F95403F97DBD5D2464A81C0FF9411FE027AABFF86D2F7D63
          FA0BF9C6547C64C5ED4C9FC868FF0098D7CEE9BA371FD8B54D49B2ABFB19F03B
          05B69AEE09E9C81161BF8FB2870ED1C6E57F75E356775471B4CB693880566133
          0C648AC86A734150A6A2B8AD2B8EB6502B2D4E08AFF2E97BD714BFCD613132E0
          FBCBB2BAD3A476A6EEE9479F79F7564F27D4DDA1BA7E3EF796369B07F7392EB9
          106C8EAAD85BE3AF377D457E40C143B97053CD817C7A33D6D6C3509046D46BB9
          46CF1CD2016FFC64A9200FC9684F0A7701C4357A799A034748C123CA8457EDA1
          3C0FA115F4E80CDF7F1D7A8FBBF2B2EE5C97CCFF0091BF24B776270180DA46B7
          E377591C9ED9DEF99C3E667A9DCD95EE1A1EB1C249F1EF79566EAC0D7CF81A90
          63DBF05361EA1D63715216A51335B5A4B2994492CC694A2A8CD4F1D540A71515
          AE47A9E3E0EC8ADFA68A1B3E7E5E99247E5FE0E8D0F41FC52DB7D389837E92F8
          2DB4F6767B0598CC6EFA3ED2EE3DE1D6DD6DB9727B9F70961595D5DB7FA1703D
          8264A3A3A690C34545531532504234C688ED248EB20B5312811DAE6A482EC2A3
          CF828381E4053F6F5ED51B1F11E760C4508009C7FB623A34F41D3BDF391CE64F
          78D7EFDE8FEADDDB9EA4A3C4E673BD47D1906537BD6E031D354D663B0B91EC4E
          C1DC9935CDD363ABABEA258166C0A411BCCECB0AB3B9650905C6AF1249231211
          43A533FB5893F974D78880502123E64FF8053A568F8ED2E4E432EF5EF5F909BC
          CB36A6A64EC387ADA83D4852489697A5B07D68EF4EEA4FA25925B7F5BFBBFD20
          26AF3CADFEDA83F62D075A329AA14555A7A006BF6EAD5D4BC5FC53F8F38CAE19
          493AB36F6E2CB0D5FEE5F7DC994EC6CC1D57D41B2BBFB21B9320C0EA3F590FBB
          0B4B7029E1023E79FF000D7AD99E624378AD51E8694FB29C07CBA16F6FEC8D97
          B494AED5DA3B5F6CAB0B32EDFC062B0CA45AD6231D494C08B71EDE5454144500
          7C853A6C92724D7AEB0389DCB8FCAEEBACCE6EC3B871B97CB5355ED8C38C163F
          129B4315163292967C42D75249255E79AAB230CB56D5152448A66F1A80882EDA
          46E1DDE4975569414002FD9F6FA9EB648A00053A54FB7BAAF5EF7EEBDD7BDFBA
          F75EF7EEBDD7BDFBAF75FFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF7555FFCAA9E39B6F7CF5A9572F3547F34DF9D02A6EBA4A4947D934B8D8539
          249028A8A2B1FE9FE1ED1D91AC729232646FF0F4E49C57FD28EACB7746CFDA5B
          DF1A986DE9B5F6EEEEC3C75B49928F15B9F0B8DCFE3532340E65A1AF5A1CAD35
          5D2AD6514A75452E8D71B72A41F6A9911C51D411F3CF54048E07A7F861869E28
          A0A78A382086348A1861458A28A28D42471C51A0548E345000000000E3DDBAD7
          593DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75543FCA14BD7F4D7CABDD4C8CB1EF4FE65BFCC333D4CE47A
          26A7A3F935BE36A24B17A50988B6DA205C7D41FC5BDA0DBC830B81C039FF0000
          3FE5E9D97E25FB3AB5EF6BFA6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7B
          AFFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD233B1F7CE13AC7AF37E765
          6E5AA8A8B6E75EECDDCFBE33F593B88E0A4C2ED4C25767B29533487848A0A1A0
          7663F803DB533F8514B263B549FD83AB22EA655F53D119FE525B3737B3FF0097
          4FC5AAADD346F43BC7B3B61557C80DE94F3A14AC4DDDF23B73677BDF704791D6
          048D90A7C8F61BC5317F56B8CDED6B7B62C6210DB228F3A9FDA7FCD4EB72125D
          BEDEAC67DACEA9D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD5DFE3DF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD55FF00F358AAACDF5D29D5BF0FF055F2E3
          F727CEBF903D6DF1D67A984333D2755415359DB5F222AE54592232534FD09D69
          B871E57500F2E42353C3120BB713A921B7A1A4AE01F3A0FF008BA57E55E9E86A
          18B83F08EACE292969682969A86869A0A3A2A3A7869692929628E0A6A5A5A78D
          61A7A6A7822558A18208902A2280AAA0002DED7AAAAAAAA8A28141F674CF523D
          DBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7AEBDD7BDEFAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD6DFE3DFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD174EEFFF0065BBFBF1F1B7FD38FF00753FD217FA6393
          FD964FE37F7BFDE4FF004C3FDC0DE7F7DFDC9FE1BFE57FC43FD1BFF1BFBED7FE
          49FC37CFF71E8F696E3E9AB17D452BA869E3C6A3D3E74E38E1D391F89DFE1FA1
          AFD9D18BF6ABA6FAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD
          7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBF
          FFD9}
      end
      object Image_JyotiT: TQRImage
        Left = 683
        Top = 72
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1807.104166666667000000
          190.500000000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765AF390000FFD8FFE000104A46494600010201004800
          480000FFE108334578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A31373A34300000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000070500
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A547ACE
          7DB81D3ECBB1D8DB729E5B56254E301F75AE1550C77F23D47FE97FE0B7BD5E58
          9D6AD8EAFD2DAE8F4B186567D93FF0157D95BFFC50DC929D4C2CAAF370E8CCAB
          F9BC8AD96B7BE8F01FFC51D52E8B8C317A46163011E9515B48F30D6CABA92949
          24924A5249249294924924A524924929FFD0F554924925292492494A5CC75EDD
          7FD61A705AEF7E6619C70CEE6BB2EADF9F67FD6F0F19FF00F5DB68AFFC22E9D7
          33899B5647D6CAF3DCE6FD9F2F12EC4E9CF912FF00B3DADB72AC6FEF5795F4F1
          F6FF0039460FDA3FC224A746E73FFE7462344EC183945FA98936E0FA5A7D1FCD
          B91FAA758C3E94DA0E4EF73B2AD14D35D4C363C920D963F633FC0E3D2CB2FC8B
          7FC1D55AE67A9754C5E99F5D1BD5B277ECFD8D93BAB113E95173322A731AF2CD
          D75FB6FDADFF008A57FAF66D2CCCC6CABA9B1EC187636AA8087BAECCB7130F1E
          9DA7F3DDEA6C77FA3494F4A92C6EA9D5B23A3E1E2E3D18AEEA7D46D6C371EB78
          AC1654D69CBCABB22FF6D3452D3F4DFF00CE5F763D1FE19581F587A37A58F71C
          A6B6BCBC67E6505D237515B5965B6FB87B765766FF004DDFA4FE73FD15A929D1
          4964E2FD60AF27A95584317229AEFA9F653937B3D20F351ABD4A998F6EDCBF6B
          6F6BBD4B69AEBFDC59B9FD63AEDDF5AFEC5D229F5F0BA4D06DEA35EE657EADD7
          37F56C46DB6B1FB6CAE9FD66BF7D353DFF00D22DA9253D424B369EA197D41A1B
          8D8D7E13481BEFC960616FEF32AA1C5EEB6EFCDF77EAFF009FFA7FE6ACBF554D
          A9818D92077712492792E739253349249253FFD1F554924925346FCEBACCA7E0
          E031AFBEA0D37DD67F3556ED58D7B5A43EEB9EDFD27A0CFF0007FCEDB4FA94FA
          B26F4E6BC4E55B664BC8832E2C67CA8A7655FE7FA967FC220B30B3B17A9DF918
          CF65B899AE6D99145A4B5F5D8D6328F5B1EC6B5FEA576554D7BF1EDFF09FA565
          FF00E091BA8663B0E8B72AD7D58F89434D96E4584986812FFD13437FF3E24A73
          3EB06161669A7A3B69ABD4CB6BBD7B4B5A5D562336B725EC73BDCCB6EDECC4A1
          FF0098FBBD7FFB4E89D4FA3E55EDC5B7A37D970323061B4BEEC66DBBA90D7567
          087F356E2633FF00E01DEA7FC5A9FD5FC2C822EEAF9E1C33BA916BCD766868C7
          617BB0707D3FA0C7E3B2EB1F91FF0076AEBFFE0D6C24A781EA9F577EB0677D64
          C37F55BAABEA7E316B1F530578E7219EA6457896D0E7E465DF8BECB3ED1EABBD
          2BB7D7FD45A9F587A3F58EA1D4BA7DF4E3D2FB2AD8F6DAF76EAB19D4DD4E73BF
          D1DD73F33ECF562B2CAA9FD157EBFF0036BA6B28AAC7D563DA1CFA1C5F51FDD7
          16BAA2E1FF005BB1ED44494F337F43EB1D5FA9D96F52F4B13A65D4D755F8F4BD
          CFBED6B0D8F7E1BF236D2CA70EFB2DDD93E8FE9B2ABAEBA1FF00A15A987F57BA
          562620C3F446452CB05B58C9FD36C2D3FABB29F565B4D588CFD1625757F315AD
          249253CFFD6376455D57A4598801CBBCE461D124431D6D62F7653EB716FAB4E2
          D786FB2CAF77E93F9BFCF5AF8181474FC66E3D124025CFB1E65F63DC775B7DCF
          FCFB6D7FBDEB9ECB7332FF00C60E254E12FE9B8A2DA24C6DFB40CAAB2EC633F3
          DAF6558957A9F98BAA494A4924925292492494FF00FFD2F55497CAA924A7EAA5
          43AEFF00C9591FD1786FF4FF00E8DF49BFD23F93FBBFF08BE6449253F5524BE5
          549253F5524BE5549253F5524BE5549253F51FFDAD1FCD7F347FE37E90FF00C0
          7FEFE8EBE5549253F5524BE5549253F5524BE5549253FFD9FFED0CEE50686F74
          6F73686F7020332E30003842494D042500000000001000000000000000000000
          0000000000003842494D03ED0000000000100048000000010001004800000001
          00013842494D042600000000000E000000000000000000003F8000003842494D
          040D000000000004000000783842494D04190000000000040000001E3842494D
          03F3000000000009000000000000000001003842494D040A0000000000010000
          3842494D271000000000000A000100000000000000013842494D03F500000000
          0048002F66660001006C66660006000000000001002F6666000100A1999A0006
          000000000001003200000001005A00000006000000000001003500000001002D
          000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800003842494D040000000000000200013842494D0402000000000004
          000000003842494D040800000000001000000001000002400000024000000000
          3842494D041E000000000004000000003842494D041A00000000034900000006
          00000000000000000000003C000000960000000A0055006E007400690074006C
          00650064002D0032000000010000000000000000000000000000000000000001
          0000000000000000000000960000003C00000000000000000000000000000000
          010000000000000000000000000000000000000010000000010000000000006E
          756C6C0000000200000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E670000009600000006736C69636573566C4C73000000014F626A63000000
          01000000000005736C6963650000001200000007736C69636549446C6F6E6700
          0000000000000767726F757049446C6F6E6700000000000000066F726967696E
          656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E65
          72617465640000000054797065656E756D0000000A45536C6963655479706500
          000000496D672000000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E67000000960000000375726C54455854000000010000000000006E756C6C
          54455854000000010000000000004D7367655445585400000001000000000006
          616C74546167544558540000000100000000000E63656C6C5465787449734854
          4D4C626F6F6C010000000863656C6C5465787454455854000000010000000000
          09686F727A416C69676E656E756D0000000F45536C696365486F727A416C6967
          6E0000000764656661756C740000000976657274416C69676E656E756D000000
          0F45536C69636556657274416C69676E0000000764656661756C740000000B62
          67436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254
          797065000000004E6F6E6500000009746F704F75747365746C6F6E6700000000
          0000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D
          4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E
          6700000000003842494D041100000000000101003842494D0414000000000004
          000000023842494D040C00000000072100000001000000800000003300000180
          00004C800000070500180001FFD8FFE000104A46494600010201004800480000
          FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292492494A547ACE7DB81D3ECBB1D8
          DB729E5B56254E301F75AE1550C77F23D47FE97FE0B7BD5E589D6AD8EAFD2DAE
          8F4B186567D93FF0157D95BFFC50DC929D4C2CAAF370E8CCABF9BC8AD96B7BE8
          F01FFC51D52E8B8C317A46163011E9515B48F30D6CABA9294924924A52492492
          94924924A524924929FFD0F554924925292492494A5CC75EDD7FD61A705AEF7E
          6619C70CEE6BB2EADF9F67FD6F0F19FF00F5DB68AFFC22E9D733899B5647D6CA
          F3DCE6FD9F2F12EC4E9CF912FF00B3DADB72AC6FEF5795F4F1F6FF0039460FDA
          3FC224A746E73FFE7462344EC183945FA98936E0FA5A7D1FCDB91FAA758C3E94
          DA0E4EF73B2AD14D35D4C363C920D963F633FC0E3D2CB2FC8B7FC1D55AE67A97
          54C5E99F5D1BD5B277ECFD8D93BAB113E95173322A731AF2CDD75FB6FDADFF00
          8A57FAF66D2CCCC6CABA9B1EC187636AA8087BAECCB7130F1E9DA7F3DDEA6C77
          FA3494F4A92C6EA9D5B23A3E1E2E3D18AEEA7D46D6C371EB78AC1654D69CBCAB
          B22FF6D3452D3F4DFF00CE5F763D1FE19581F587A37A58F71CA6B6BCBC67E650
          5D237515B5965B6FB87B765766FF004DDFA4FE73FD15A929D14964E2FD60AF27
          A95584317229AEFA9F653937B3D20F351ABD4A998F6EDCBF6B6F6BBD4B69AEBF
          DC59B9FD63AEDDF5AFEC5D229F5F0BA4D06DEA35EE657EADD737F56C46DB6B1F
          B6CAE9FD66BF7D353DFF00D22DA9253D424B369EA197D41A1B8D8D7E13481BEF
          C960616FEF32AA1C5EEB6EFCDF77EAFF009FFA7FE6ACBF554DA9818D92077712
          492792E739253349249253FFD1F554924925346FCEBACCA7E0E031AFBEA0D37D
          D67F3556ED58D7B5A43EEB9EDFD27A0CFF0007FCEDB4FA94FAB26F4E6BC4E55B
          664BC8832E2C67CA8A7655FE7FA967FC220B30B3B17A9DF918CF65B899AE6D99
          145A4B5F5D8D6328F5B1EC6B5FEA576554D7BF1EDFF09FA565FF00E091BA8663
          B0E8B72AD7D58F89434D96E4584986812FFD13437FF3E24A733EB06161669A7A
          3B69ABD4CB6BBD7B4B5A5D562336B725EC73BDCCB6EDECC4A1FF0098FBBD7FFB
          4E89D4FA3E55EDC5B7A37D970323061B4BEEC66DBBA90D7567087F356E2633FF
          00E01DEA7FC5A9FD5FC2C822EEAF9E1C33BA916BCD766868C7617BB0707D3FA0
          C7E3B2EB1F91FF0076AEBFFE0D6C24A781EA9F577EB0677D64C37F55BAABEA7E
          316B1F530578E7219EA6457896D0E7E465DF8BECB3ED1EABBD2BB7D7FD45A9F5
          87A3F58EA1D4BA7DF4E3D2FB2AD8F6DAF76EAB19D4DD4E73BFD1DD73F33ECF56
          2B2CAA9FD157EBFF0036BA6B28AAC7D563DA1CFA1C5F51FDD716BAA2E1FF005B
          B1ED44494F337F43EB1D5FA9D96F52F4B13A65D4D755F8F4BDCFBED6B0D8F7E1
          BF236D2CA70EFB2DDD93E8FE9B2ABAEBA1FF00A15A987F57BA562620C3F44645
          2CB05B58C9FD36C2D3FABB29F565B4D588CFD1625757F315AD249253CFFD6376
          455D57A4598801CBBCE461D124431D6D62F7653EB716FAB4E2D786FB2CAF77E9
          3F9BFCF5AF8181474FC66E3D124025CFB1E65F63DC775B7DCFFCFB6D7FBDEB9E
          CB7332FF00C60E254E12FE9B8A2DA24C6DFB40CAAB2EC633F3DAF6558957A9F9
          8BAA494A4924925292492494FF00FFD2F55497CAA924A7EAA543AEFF00C9591F
          D1786FF4FF00E8DF49BFD23F93FBBFF08BE6449253F5524BE5549253F5524BE5
          549253F5524BE5549253F51FFDAD1FCD7F347FE37E90FF00C07FEFE8EBE55492
          53F5524BE5549253F5524BE5549253FFD9003842494D04210000000000550000
          0001010000000F00410064006F00620065002000500068006F0074006F007300
          68006F00700000001300410064006F00620065002000500068006F0074006F00
          730068006F007000200037002E003000000001003842494D0406000000000007
          0008000000010100FFE11248687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF272069
          643D2757354D304D7043656869487A7265537A4E54637A6B633964273F3E0A3C
          3F61646F62652D7861702D66696C74657273206573633D224352223F3E0A3C78
          3A7861706D65746120786D6C6E733A783D2761646F62653A6E733A6D6574612F
          2720783A786170746B3D27584D5020746F6F6C6B697420322E382E322D33332C
          206672616D65776F726B20312E35273E0A3C7264663A52444620786D6C6E733A
          7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30322F32
          322D7264662D73796E7461782D6E73232720786D6C6E733A69583D2768747470
          3A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C726466
          3A4465736372697074696F6E2061626F75743D27757569643A36316232353761
          372D653963362D313165312D393131652D633333323437656632373832270A20
          20786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F
          6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E
          7449443E61646F62653A646F6369643A70686F746F73686F703A363162323537
          61352D653963362D313165312D393131652D6333333234376566323738323C2F
          7861704D4D3A446F63756D656E7449443E0A203C2F7264663A44657363726970
          74696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D6574613E0A20
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
          2020202020202020202020202020202020202020202020202020202020200A3C
          3F787061636B657420656E643D2777273F3EFFEE000E41646F62650064400000
          0001FFDB00840001010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010202020202020202020202030303
          0303030303030301010101010101010101010202010202030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303FFC0001108003C009603011100021101031101FFDD000400
          13FFC401A20000000602030100000000000000000000070806050409030A0201
          000B0100000603010101000000000000000000060504030702080109000A0B10
          0002010304010303020303030206097501020304110512062107132200083114
          4132231509514216612433175271811862912543A1B1F02634720A19C1D13527
          E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3
          B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A8586878889
          8A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6
          D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA1100020103020404030504040406
          06056D010203110421120531060022134151073261147108428123911552A162
          163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A
          7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495
          A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F74858
          68788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAA
          BACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD17AF957DEB3FC6DE81EC5EE0C66CFA9EC7DD3
          B73194541D7DD654396A5C1E4FB3FB3775E5F1FB4BADBADF1395AD8A7A7A1C9E
          F8DEF9BA0C6C32B472089AA3595214FBAB960A4A2D5BFCFD595753015E977D33
          D9341DC9D45D5FDB58CA37C6D076675FED0DF74D8B9A74A99F149BAB01419B6C
          4D54F1AA249578B7AD34F310ABFB91B703E9EEECAC84AB0EE1C7AD11A491E9D0
          95EF5D6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF
          75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD57C7CAF75DEFF0029BE0174CD527936FD176276E7
          CA9DE48260B19C47C6FEB8FE01B4C57446E24A4A4EDAEEFDB9924B8B2D4E3236
          04151EFD5A1209C50FF8475E20900818AFF90F4BCFE5E7B3ABF61FC29F8E7B6F
          25E6151175E5265E38E7666920A0DD190C86E8C552FA99CA25262F330C489721
          11028E07BB39D4CCC05013D7B4E8EDAD69D1CBF75EBDD7BDFBAF75EF7EEBDD7B
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7FFFD1DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD539
          7CBBDFB94DBDF2F7B52BF0C8D3EE4D89FCB824D9FD750AE867FF00491F2FFE4B
          63FAC769C1046EA04B555DBA3A9F14AB186D72842AA0927DD455A429C011C7F6
          F4FC7F080786AAFEC1D1DADDDD8537C7CDDBF093A236F63F115BB67B5378673A
          4AA2AB226BE3CBE2B15D71F1C3B33B230B5D834A20684D4CB51D5D0D3542D4FE
          D8A7A8729FB817DEF3A80AE287A649D4C49E8D9FBDF5AEBDEFDD7BAF7BF75EEB
          DEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF7
          5EEBFFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD52C
          E73686E0EEBFE75BBA76FC793C14BD3DD07F113E27F6CF65E3A9AB92AB70647B
          8A83B6BE5D7FA09D9F94A08E4031FB7F1D0EE3C8EEE94C80CAF91C3E219078D9
          89F6A2405F21FCEBFE6A75620141519AD7A59FCD0F909B57657F332FE50DD079
          BC2E4EB323DA5BDFE5A6EFC367E9AA6946276F66F68FC65DE3B7F0D4398A325A
          ACD56E7A3DE3935A170152F433DB5156D3B5C96038E9FF0028EAA46037957A3A
          5F35FB63757477C4DF901DA3B0842DD89B67ACB71AF5A2D4531AD81FB373B4C3
          6DF5C473510A7AAFBD8A4DEF98A05687C6E2507491CFBD52B8AF1EB44D0134AD
          3A42FC25D99BF7A576A6EEF8E1D99DDBDAFF0024377752576DAC954F77772546
          3EB779EF88BB2B6EC1BA728F355E2E831D4698BC5EF75CCD3E328951FF0085E2
          16928BCB288039B145544D00819F327F3CF5BAD4F0E8EDFBAF5EEBDEFDD7BAF7
          BF75EE818DF1F223A4BADBB5BA73A377CF64EDADB9DBDF20AA378D374CF5ED75
          4CADB9BB01FAFF006F4BBAB7A4D85C7D3413B0A2DB98188CF535139869D352A0
          7323A23519D54AA9393C3FD5E5F9F5BA1A6AF2AD3A19FDDFAD7487DA3BFF000B
          BEA6AF9F6AACF97DB7445A08379D31A77DB39AAF86A65A5ACA4DBB5AB3B499B8
          B1F2C0CB355C2868BC83C71CB23AC8B1E81AF0E1D7BCE94E971EF7D7BAF7BF75
          EEBDEFDD7BAFFFD3DFE3DFBAF75EF7EEBDD7BDFBAF751AB2B28F1D4B515D90AA
          A6A1A2A489EA2AAB2B278A9A969A0894B49354544CC90C3146A2ECCC4003EA7D
          FBAF7415E3BBDFA9F395F0E376DEEFA7DD9515153351C52ECEC6E6F77E38D4C0
          15A689F33B6B1B94C3C2630E2E5E75517FAFBBF86E06A2B8A57F2EACCACB4D42
          9D00DF217E7275FF00C78DA994DC39BEB1F909BAAB572187DAFB530FB63A33B2
          E78B7B7616EEC951EDDD83B130D9FA9DB70E161C9EF4DDB94A3C653544D2AD24
          53540795D224775623904AC555581AD32081FCFCBE7D3FF4AFE178A248C8A568
          1816FD9C7A23DD11D75D8BF1F7E79ED4DEB9DEA6EC9CFEF3F933F1F7783FCD4E
          EEC5ECDA6A7EA8ABEDEC2E7F0FD8BD234586DE6D949EB33306C2C56E6DC1D758
          5C4CB043569410E39D11916A64F77323C71885DC954AD3E649A9D3F69F2E99C4
          87C4A0562AA283FA229FB4F13D13DFE715BCEB3A2BE63FF290EEDDD3B8B1D848
          3677CB1DDBDBDDC3979AAE8E8E2DBBD64FB736DF4B62F69D0E43233414498DC6
          EDEECECB198BCF1256564F5B3449AE758D7C13B279437728069E66A40A0FE7FC
          FAF61E91FE1FF28E8CF3F74F7AEF8FE525D1FDF5F355A831BBDBB27BCFE19F66
          6EDC5EDBD8F57B7ABB17D69BF7E6D7496E8DA7B28EC8C557EE6AC9F7162F64E5
          6971091C52CF559268A39668D2A679624BBC55658E272C71C719C1238F0AF03E
          9D6D07EA11F6F425FF002E4F92DB9B73FC11ED0FE637F29A0976E6ECDFF9AEF9
          DF5BD301160BF80D7EC8EACF8EFD81D91D6BD77D7A36EBD65415DDB8DDAFB219
          EB622E25AACFE46A142AEA441521E345491AA40AF979E7CBAAC8C3869A05AFE7
          9E3D123EA3F9D1D81F1A7F98762B637CA9F93D99DF957F20FACF7A7627CACD83
          9ECB53E33E397F2EFDD91E1C6FAF8BDF1AFA94E3F6E54265FBB779EC36C863B2
          B889B24D9EDD92E3C66A3A51E7A3A566F5AAA2EA1DF5C9A9F3E000F51F2E3D58
          0AC51D57F598938E1A47127CFD3F9F567B8FF90BF3A77AEEA7EA1C2FC70C2756
          EFF7DFBBB33EBDB9D87B77786F0F8F18FF008E631AD96EBBAD9F2D81DC9B372D
          96EFACC54E5E870D96DB30554231B90C7E4AAC938F1472D43857034C9E5934F3
          F214D42BF6D7F2EB5AA112952AEC94FB3F9D08FCA95EB8FC56DC9DCFB0BE50FC
          CDEA5F901F21B23DD18ED95D63F18BBC29F74EE2DB9B4BAEB696C193B2E9BBD3
          6FEF6C06CEC060E15876C75D63D3A7696B614C9E4B2D5F13CD512D557D43BB48
          7D854049C8E24F9FCFE5D6DE8D42AB41E43FD9F3FF0050E884F5D7C0BEC7F9DD
          FCC37BC7F998F6EF65F6B752F4FD1754627E3D7F2EBA6EABDED90D81D914DD5E
          D8EAAABDEFF206BCAE3E693098CEC7DE793A9C8EDCA1AA4D795C43C32E4E91A8
          DE1A796D14A8D6EE40AF887CC52807023CEA78FC87CCE2C5A5B79B4155A20208
          20302C464F98C7F869E9D5AD6D2F8FFF00227294947B7FE42FCACFF4ABB3A8E8
          531F90C2F5F74EE27A4329BFE3899D1A4EC8DC78BDE5BBAAEAA0CA523E8AFA4D
          BB16DAA4AA6B8D0B4EED4C59546EFD721604E314A0F43EBF6E3ECE9B90ABF85A
          534D07766BA8FA8FE11F2CFDBD1C2A0A0A1C5D0D1E331945498EC6E3A969E831
          F8FA0A7868E8682869214A7A4A3A3A4A748E0A5A5A5823548E34554445000000
          1EDCEABD4BF7EEBDD7BDFBAF75EF7EEBDD7FFFD4DFE3DFBAF75EF7EEBDD025DE
          FDB953D49B5F0726036EBEF3EC4EC2DDD8AEB6EABD9A2A9B1D4BB8B7DE7A9325
          90A519BCB253D63E136A6DEC1E16BF3199AE58679297138EA878A19A611C3268
          EAA12AB53D3912AB3779223192464D3E4315E93BB77A023CBE428F78F7BEE297
          B8B7BA086A60C4D7C0F41D45B32B7C7209A0D83D6666A8C5A2C2F3158F27996C
          B6719545EAD17F6D7C31E753FEAE1E9D78C954118550A0D6B4CFE678FF0093A3
          170C3153C51C10451C30431A450C30A2C7145146A15238E340A891A280000000
          07BDF1E3D37D579E272984F941F29327BE6599F727517C37DD799D8FD6180A0D
          53D0EF6F957FC32B705DABD81510BCD1D1D7D0F45EDFCD36D3C5544AA29A9371
          576E02CDF71454AF137A983B2B0ED205053269C4FF00303A740A250713C7E43F
          D9E9E3E657F2FAEAFF009E7B7B6363FBAF7CF77EC1CEF576F04DFF00D51BB7E3
          C76F6E7EA0DDDD67BB463A6C5366F0D9DC0B1A6CD65DA86A248FCF92A3AA5815
          DC534706B90BDF4A92ACC80B0FE5EB4FB7A6D8E34AFEDEA99BE517F248C26D4F
          907FCBC3BD20EDEDF7DE3D71D09DC9D55B77BA6A3E5B766F6377FF006DF6CE47
          7E76F60F69E2A335BBDB3151D7B86DA354BBE649B254B4B8FA2459B118E4829A
          46924962BAB786498C019C1FC433E4DC7E5D6B53680AD427153FEC7CFAB6CEE1
          F855D9155F18F6CF51F51F6D4DBA378F48EF5E8BDEDF1E60EE8A94C3ECBC4274
          0F62EC7DE5B2F6B6FDCA75CED75DC1B8628B11B3C501CB4B4B575BA992631998
          3C8CDAA90ECE5CD0F01E407F97F3AF56D40534AE74D38F1E8AC6CCFE509DC5D7
          BF07683E09EC6F9FDD85B73ADE7A4DB79ECDEEDC9F52ED3DF9D9D8CECE1D8186
          EDAEC6CD6C6DDFB8B3F0E3B17B1B7CF655257E4530995C4E627A01949A15AD7A
          70902B8180756D381FCCFAE6BFE03D528486D46A49FD9F2EACB7A3BE1E741F42
          F576D5EACDB7B2A8776516DADEB276C566F0ECD828F7FF00626F2EEFAEACAACA
          66FBDF7A6F0DC1495392CDF70E73315F3D4CD9BBC7530197C34BF6F4D1C50475
          18C0E1D7800053A33FEFDD6FAA47EDCC7C3DC7FCDEB39F16B1FB836A547596F8
          F833D4FDBFF2DF69C53558DE599C2F4C77DF64637A73AF269E8B5D2C3B4BB4B2
          7DAB5CFB8E92A8ABD760B066900306464BEA450E88A6852A6A3F214FE7E5E7D5
          880D1D1BD7FD5F97576B1C71C31C70C31A451448B1C5146AA91C71A28548E345
          0151114000000003DEFAAF5CFDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75FFD5DFE3DFBAF75EF7EEBDD001F21BA4ABBBA36EED1976BEF7ADEB4ECFEACD
          F78DED0EA6DFF4B8D4CF51EDFDE78DC3E776D54526E6DB12D6E323DD9B2775ED
          2DD393C3E671BF754735463EBE434F534B549054C564215AA6B4F3F2A8EB60D2
          B8E967B12B7B81B66BB766EDFEBC8BB068E09A3116C4DD1B82A36767EAA247FB
          7AB867DC1B5E9735B669EB982EBA778F26D49A881354050ECCD64EFAA8C70CF1
          FB718FE7D556A69AB07E59FF00374463E6C772F73ED7DB7B6BA3B62767ED3EBB
          F933F2A73151D55F1BF6E6CAC7A6E2DCFB7EA6AE0A5977F778672BB73D2D42E4
          F667C7DDA125567F29F6B858239658A928DE78E4AF82DB51233AEA202F981FCF
          27FCC3A508A87511C00AE7FC00746F3E367C75EB7F8B1D3BB3BA63AC31AD4D82
          DAD4127F11CD573BD5EE4DEBBA72B59539ADE1BF778E5E779AB337BC37C6E9C8
          D665B2757348EF3D7564AFC02007598B52BC00A0F90F4E983C49A71E877F75EB
          DD356630786DC3471E3F3D8AC7E62862C8E232F15264A920ADA68F2980CAD1E7
          307918E1A849112B71199C741554D281AE1A885245219411A2A18518547F9BAF
          74EBEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEB5DCFE5875EDDCBFCC7BE7E7C89A
          BDB54B06E05ED4F94DD5591DD924B473676BBAEF6176FF005274274D6DEC978E
          3192A1C4E3A7F8AFBB6AB1F47525444F5953346805433BF8312A8698209FE647
          4E93FA4BF6FF0083AD88FDFBA6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBFFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD177DC3FECBA7FB34
          DD5BFDE6FEEE7FB34FFE85BB7BFD12FF0012FE29FDE3FF00437FDEDEA7FF004C
          9FDD8F27FBF7FC3FDE7FEE9FF10D3FEE47C7E2D3FE4FE6F761AB49A7C3D6B151
          EBD188F75EB7D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          031D61FECBCFF7B7B83FD0CFFA1BFEFD7F7D23FF004F9FE8CFFB97FDEBFF0048
          5F65FB5FE96FFBAFFEE5BFBE1FC3EFA7F8C7F9678F57E2FEF66B415E1D6F3415
          E1D0CFEF5D6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD9}
      end
      object Image_AnilT: TQRImage
        Left = 683
        Top = 74
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1807.104166666667000000
          195.791666666666700000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167651A2D0000FFD8FFE000104A46494600010201004800
          480000FFE105874578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3139203132
          3A31393A30380000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000045900
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492492
          52964F54CBCB1D53A6626338B2A75E5D98F1DD9E9643A9A383FCEDD57A8FFF00
          83A3F9681F593A9BB05F4B6DC9761E239AF73DD4B5AFC8C8B7DB5D1D3B018FDD
          FA7BBD4DFECA7D5FF43E97E92DAF17A6749CD1D73A75F7BF269CAB9F919B92FB
          6D73DDE9B1ACA2BE99556F73FF0050A7ED55B7ED393FAD645B4FF354FADFA216
          97B74924914292492494A4924925292492494FFFD0F554924925292492494A55
          7A8D19D91436BC2C9188F2F69B2DD81EE3583FA5AEADE76556D8DFA373D977A7
          FE895A49253C3578ACCDEBD6D8CB43D9D1EC2CA4515FAD7DD98E6B9B6DB916E5
          5D90EF4FA75777D9F1EECBF428AB2ADBBF9BF42B5A9899D56375EBBF69F51A5F
          6578ED1454E3536C636E7FBAA7FA247AF739D8BEA59B296319F43DFF00CE2D51
          D03A2B7D48C2A62EB0DD6B368DAFB1DF4EDB2BFA0F7B907A66262E3F58EA031A
          8AE860AF1D9B6A6358247AF67E635BFE990A4A61D5C5A6313132727F95E99A5B
          FF006E66FD9B7B7FE2BD5572975CE6075CC15BCFE6076E8FED4351124508DB68
          75CFA835C0B035C5C5A434EEDDED63CFB5EE6ECF7EDFA0889249294924924A52
          4924929FFFD1F554924925292492494A49249252952C268FB6F507773731BF21
          4D07FEFEAEAA98F2CEA196C23478AEE69F1969A1DFE6FD9D2536D2492494A492
          4925292492494A49249253FFD2F55497CAA924A7EAA497CAA924A7EAA497CAA9
          24A7EAA51FCFEDC7CD7CAE924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA
          924A7EAA497CAA924A7FFFD9FFED0A4250686F746F73686F7020332E30003842
          494D0425000000000010000000000000000000000000000000003842494D03ED
          000000000010004800000001000100480000000100013842494D042600000000
          000E000000000000000000003F8000003842494D040D00000000000400000078
          3842494D04190000000000040000001E3842494D03F300000000000900000000
          0000000001003842494D040A00000000000100003842494D271000000000000A
          000100000000000000013842494D03F5000000000048002F66660001006C6666
          0006000000000001002F6666000100A1999A0006000000000001003200000001
          005A00000006000000000001003500000001002D000000060000000000013842
          494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0400
          00000000000200013842494D0402000000000004000000003842494D04080000
          00000010000000010000024000000240000000003842494D041E000000000004
          000000003842494D041A0000000003490000000600000000000000000000003C
          000000960000000A0055006E007400690074006C00650064002D003200000001
          0000000000000000000000000000000000000001000000000000000000000096
          0000003C00000000000000000000000000000000010000000000000000000000
          000000000000000010000000010000000000006E756C6C000000020000000662
          6F756E64734F626A630000000100000000000052637431000000040000000054
          6F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042
          746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000000673
          6C69636573566C4C73000000014F626A6300000001000000000005736C696365
          0000001200000007736C69636549446C6F6E67000000000000000767726F7570
          49446C6F6E6700000000000000066F726967696E656E756D0000000C45536C69
          63654F726967696E0000000D6175746F47656E65726174656400000000547970
          65656E756D0000000A45536C6963655479706500000000496D67200000000662
          6F756E64734F626A630000000100000000000052637431000000040000000054
          6F70206C6F6E6700000000000000004C6566746C6F6E67000000000000000042
          746F6D6C6F6E670000003C00000000526768746C6F6E67000000960000000375
          726C54455854000000010000000000006E756C6C544558540000000100000000
          00004D7367655445585400000001000000000006616C74546167544558540000
          000100000000000E63656C6C54657874497348544D4C626F6F6C010000000863
          656C6C546578745445585400000001000000000009686F727A416C69676E656E
          756D0000000F45536C696365486F727A416C69676E0000000764656661756C74
          0000000976657274416C69676E656E756D0000000F45536C6963655665727441
          6C69676E0000000764656661756C740000000B6267436F6C6F7254797065656E
          756D0000001145536C6963654247436F6C6F7254797065000000004E6F6E6500
          000009746F704F75747365746C6F6E67000000000000000A6C6566744F757473
          65746C6F6E67000000000000000C626F74746F6D4F75747365746C6F6E670000
          00000000000B72696768744F75747365746C6F6E6700000000003842494D0411
          00000000000101003842494D0414000000000004000000033842494D040C0000
          000004750000000100000080000000330000018000004C800000045900180001
          FFD8FFE000104A46494600010201004800480000FFED000C41646F62655F434D
          0002FFEE000E41646F626500648000000001FFDB0084000C08080809080C0909
          0C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E
          0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108003300
          8003012200021101031101FFDD00040008FFC4013F0000010501010101010100
          000000000000030001020405060708090A0B0100010501010101010100000000
          000000010002030405060708090A0B1000010401030204020507060805030C33
          010002110304211231054151611322718132061491A1B14223241552C1623334
          7282D14307259253F0E1F163733516A2B283264493546445C2A3743617D255E2
          65F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6
          B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404030405060707
          0605350100021103213112044151617122130532819114A1B14223C152D1F033
          2462E1728292435315637334F1250616A2B283072635C2D2449354A317644555
          367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F556667686
          96A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002110311003F00
          F554924925292492494A49249252964F54CBCB1D53A6626338B2A75E5D98F1DD
          9E9643A9A383FCEDD57A8FFF0083A3F9681F593A9BB05F4B6DC9761E239AF73D
          D4B5AFC8C8B7DB5D1D3B018FDDFA7BBD4DFECA7D5FF43E97E92DAF17A6749CD1
          D73A75F7BF269CAB9F919B92FB6D73DDE9B1ACA2BE99556F73FF0050A7ED55B7
          ED393FAD645B4FF354FADFA21697B74924914292492494A4924925292492494F
          FFD0F554924925292492494A557A8D19D91436BC2C9188F2F69B2DD81EE3583F
          A5AEADE76556D8DFA373D977A7FE895A49253C3578ACCDEBD6D8CB43D9D1EC2C
          A4515FAD7DD98E6B9B6DB916E55D90EF4FA75777D9F1EECBF428AB2ADBBF9BF4
          2B5A9899D56375EBBF69F51A5F6578ED1454E3536C636E7FBAA7FA247AF739D8
          BEA59B296319F43DFF00CE2D51D03A2B7D48C2A62EB0DD6B368DAFB1DF4EDB2B
          FA0F7B907A66262E3F58EA031A8AE860AF1D9B6A6358247AF67E635BFE990A4A
          61D5C5A6313132727F95E99A5BFF006E66FD9B7B7FE2BD5572975CE6075CC15B
          CFE6076E8FED4351124508DB6875CFA835C0B035C5C5A434EEDDED63CFB5EE6E
          CF7EDFA0889249294924924A524924929FFFD1F554924925292492494A492492
          52952C268FB6F507773731BF214D07FEFEAEAA98F2CEA196C23478AEE69F1969
          A1DFE6FD9D2536D2492494A4924925292492494A49249253FFD2F55497CAA924
          A7EAA497CAA924A7EAA497CAA924A7EAA51FCFEDC7CD7CAE924A7EAA497CAA92
          4A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7FFFD9003842494D0421
          00000000005500000001010000000F00410064006F0062006500200050006800
          6F0074006F00730068006F00700000001300410064006F006200650020005000
          68006F0074006F00730068006F007000200037002E003000000001003842494D
          04060000000000070008000000010100FFE11248687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E
          3D27EFBBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B
          633964273F3E0A3C3F61646F62652D7861702D66696C74657273206573633D22
          4352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761646F62653A
          6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C6B69742032
          2E382E322D33332C206672616D65776F726B20312E35273E0A3C7264663A5244
          4620786D6C6E733A7264663D27687474703A2F2F7777772E77332E6F72672F31
          3939392F30322F32322D7264662D73796E7461782D6E73232720786D6C6E733A
          69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F27
          3E0A0A203C7264663A4465736372697074696F6E2061626F75743D2775756964
          3A65306633313965382D653963372D313165312D393131652D63333332343765
          6632373832270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E
          61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D
          3A446F63756D656E7449443E61646F62653A646F6369643A70686F746F73686F
          703A36316232353761352D653963362D313165312D393131652D633333323437
          6566323738323C2F7861704D4D3A446F63756D656E7449443E0A203C2F726466
          3A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861
          706D6574613E0A20202020202020202020202020202020202020202020202020
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
          2020202020200A3C3F787061636B657420656E643D2777273F3EFFEE000E4164
          6F626500644000000001FFDB0084000101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101020202020202
          0202020202030303030303030303030101010101010101010101020201020203
          0303030303030303030303030303030303030303030303030303030303030303
          03030303030303030303030303030303FFC0001108003C009603011100021101
          031101FFDD00040013FFC401A200000006020301000000000000000000000708
          06050409030A0201000B01000006030101010000000000000000000605040307
          02080109000A0B10000201030401030302030303020609750102030411051206
          21071322000831144132231509514216612433175271811862912543A1B1F026
          34720A19C1D13527E1533682F192A24454734546374763285556571AB2C2D2E2
          F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A6768696A7677
          78797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5
          C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302
          040403050404040606056D010203110421120531060022134151073261147108
          428123911552A162163309B124C1D14372F017E18234259253186344F1A2B226
          351954364564270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A
          94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797
          A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A
          3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD009F
          277B8AABA23A37B0FB1F0D876DCFBC715B7EBE9BAF36846F1C736EFEC3C852CD
          4FB3B6E879648920A3ACCCB46F5D504E8A2C745515325A385C862E2610C4CFF8
          B801EA4F0FF39F974E4481DD549A2F99F41D42F8879BDEBB9FE28FC66DCFD939
          EA8DD1D87B9BA07A7F726FBDC7550D253CF9BDE39FEBFDBF97DCB93920A0A5A1
          A283EEF335933848A189141002802DEED06AF0222CD56D22A7D71D6A5D3E249A
          076D4D3ECE8C47B77AA75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75FFFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF745F7BF7BA33DD574DB136EF5FEC09BB4FB6FB
          6376FF0073FAFB64FF001FA4DAB868FECB19599FDD5BDB7BEE8AAA5C8BEDDD83
          B1F6F63E4A9AFA8A7A2AFAD9EA24A5A2A5A69AA6AE15F6C4D318CC71A0066724
          004D0605493C703A7628C3EA672446BC6993E9402A33F9F5AFD7CE0EFEF941BC
          329DF59EDCFF00253A8FAFFAAFE29F51765D3EDFC1F4CF5166F70EF4EEEF9659
          DDB19AD9D96EACEBFA2DDFBEF3197DE5D69D7183CF260F73EF28F1B88A0A5CC6
          72B31B7A67A0C8CB485133C92EA69AE06A4C284216AC41072DABB4641240F3A7
          4B9123558C451F73B0A96A9A2820F969C9C9A6714F3EB610F8BD89ECDC0FC73E
          90C0F72E076E6D6ED1C1F586CDC2EF6DB7B4AA7EEF6F60B3789C251E3E6C563A
          A16BB2904828A2A748E5F0D555538995C4334B104918E61591628D65D3E2019A
          70FCBA2F90A191CC75D15C743BFB77AA75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD1DFE3DFBAF75EF7EEBDD7BD
          FBAF75EF7EEBDD7BDFBAF75EF7EEBDD17EF921F23F63FC61D8B8BDEFBDF19BB3
          3DFDE4DE5B77AF3696DDD9B85FE2996DC1BD37549511E1315257D6D4E336C6D7
          C7CA292579F299AC8637174C91DA4A8123C51C8CCD2F829AB416CD283FCB5A00
          3FE2854D074EC51891883205500924FA0F90A927D00FF067AA12FE627F327BC7
          B4F2BD29F1EBA477365BAC7E5276B7651A6EAFA2F8FDD1FBF3B97B47A5BA7E2A
          75C577B7C8AADEE0DDFD778ED9F574BB3BAE32B598F7C46CDC755B5566727494
          BFC6DE02F329748F2DC3C66A74A9AD14107CFF00136926BC28A062B9E94AAC51
          A9C8A91F888FE41750A8A799F4C7434EECC27C45EADE9FEBFF00809D39F1D7B6
          FA57707766F1E87DADFC477B758E45F736F2EBEA4F919D6757D8B9FEC8EC59B2
          9B83714C33F455D9373519FA9812BF215550900697CA8B62F0122D56D9A391C8
          3C00E0789A13E98FF8BEB6564FF728DC2BE9C713515F20081F6E3AD817D9AF48
          3AC534F0D346D3544D1410A0BBCB348914683FAB3B95551FEB9F7A2428258803
          AD8049A019EB22B2BAABA30656019594865656170CA45C1041E0FBDF1C8E1D6B
          AEFDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFF
          D2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          45F85EA1F9F537CE1F985F21F73F48E331743B96A76B74CFC73DF9B3BB0FAD33
          9BDA9FE326D2A78EA5315B7727BFF7356617A8AAF7BEFB9ABF70E7A16DA395AB
          9A7A8A58D65FF238892E686E7C479540D4C698A03A45682A6BE54E02B5AF4B35
          DBF851A12750F95454FCB1F671A53CBA50F6CECFF97349BB3E1EECEDA9D53F1C
          BAA0EE3F9434D9ECC6E8EC8EE8EDCF90FD83B8B2DB1BA5BBC37B4399DDD263F6
          77584D9E5A66C53490C2FB8E58E1A99228E348A995B4B7A268A4B70422D5F142
          CEC4E935D4C74F11ABD7CB3D783C444A4973DBFD151C4500F8BAB0497A4BBE77
          4E85EC0F963BBB1D48F1FF0095E1BA3BAE761F575054B96D4C9FC5F775376F6F
          7A38029D00D265E966B73AF573ED598257AF8972DA7D168BFCC777F3E9B59A34
          A95B64FF006C4B53F981FB474AADA1F187A7768E562DC6F84CEEF7DD712909BB
          3B5F7BEF4ED8DC10B3105A4A0ACEC3CF6E28B0B7B0B250474B1AFF0065473EEC
          2D6DC1D5E182DEA6AC7F9D7AD1B99C82A1E895AD0607EC14E8C0000000000000
          0005800380001C0007B51D31D26B6B6DC976CD1E4A967DC7B93744B92DC3B837
          01AEDCF594959574499DCAD4E460C0E3BEC6831D4D49B7F6F53CE94741088CC9
          1D2C29E592594BCAEDC71F86186B662589A935E3E5F203801E9D6D9B55303874
          A6F6E75AEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAFFD3DFE3DFBA
          F75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD15
          6EE481EBFE477C3CA45D45317B97BAB76C8A3569031FD399EDA892B81C591B7C
          6904FD0B8FC9F69A6CDC5A0A79B1FF008C91FE5EAEBF049F97F87A353ED4F54E
          BDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF
          75EEBDEFDD7BAFFFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75E
          F7EEBDD7BDFBAF75EF7EEBDD178DED1A3FC97E827788B187AEBE40BC730761E3
          91AB3A623F194034B8962773726E3471F53ED3B8ADCDB9A7057FF9F7A717FB39
          3ED1FE5E8C3FB51D37D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFD5DFE3DFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD011D96B3E37B63E3DEE454
          D5452EE4DF3B0B23284D46963DDDB13259EA099DC03E3826CCEC4A6A7B9B032C
          F18BDC8053CB5135B3531523ECA827FC207560469704FA743BFB51D57AF7BF75
          EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7
          BF75EEBFFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD35E57F8478E8FF008C7D9F8FF8A63BEC7EF3469FE2FF00
          751FF0BFB7D7FF00299F77A7C7A7D5ABE9EEAFA28BAFD453EDF2EBDD3A7BB75E
          EBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7B
          F75EEBDEFDD7BAFFD9}
      end
      object SignatureLT: TQRImage
        Left = 16
        Top = 29
        Width = 150
        Height = 28
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          42.333333333333330000
          76.729166666666670000
          396.875000000000000000)
        XLColumn = 0
      end
      object Image_DeepakRajT: TQRImage
        Left = 691
        Top = 75
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1828.270833333333000000
          198.437500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167652D470000FFD8FFE000104A46494600010201004800
          480000FFE10A344578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A32300000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000090600
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F55492492529243C8C8A31A97E
          46458DA69A9A5D658F21AD6B47D273DCEF6B5732DEA9F593EB202EE821BD23A4
          9FE6FAAE557EA5D78FCDB70702CDAC650EDBFCEE67F3B55BFA3A9253D524B9A1
          F507A1DD0EEAB665F58B412E16676458F89FCD6D353A9C76D7AFD0F4549DFE2F
          7EA7182CE9CDA5ED3B9965365B53C1E64594D8C77B5253D1A4B91B727AAFD50C
          DA3EDB956F52FAB99760A4E4E49DF91876BFF9A75F91FF006A30ACB3D9EA5DEF
          A7FD27FDC9EB925292492494A4924CE735AD2E7101A049274000494833B3B17A
          7E25D9994FD94E3D6EBAC3C9D8C1B9E437F3956E81D730FAFF004AA7AAE107B6
          8BF700DB000F058E756E6BDAC73DBF499FBEBCC7EB775DC9EBDF5A30ADC1C17F
          D83A654ECBB2F2E839382DB2B7DF90FAFD9FA9EEC77FA0CFF0DFCF7E7AEEBFC5
          D536D7F5470EDB9BB6CCB75B94E68E00BADB2DAF6FFD69CC494F4A924924A7FF
          D0F5549249253CDF5CC76756FAC7D3FA26689E98DA6CCFB6927DB916D2FAAAA3
          1AE67F85A28F5BED3653FCDD9FA2F55748A9754E9187D52B636FDECB6976FC7C
          9A5C6BBAA711B4BE9B99EE6EE6FB5ECFE6ECFF0008B98AABFADB99979F8B89D6
          5F4F4AE9EF2C19F6E352FC8B6D6B66FC5ABF9BA5D4637D1B32BECFEA7DA3F45E
          FF007A3D14DDE93F587AB754FAD59F8F452C7740C32FC419201DFF006BA854FB
          9AE33F43F4B657F43FC1AE9D79CFD4BEA1D57EAE740C2CCEB01B7746EA6E373F
          31A22CC5B2F7FB5F9DFE9B1727D8FF00B57F817BF659FA3F4575DD7BEB037A6F
          A7898AC6E4F53C96975341706B195B7F9CCECDB7FED3E0D1FE12DFCFFE6AA414
          D2FF0018EEAFFE6767D2E6FA96647A54D1508DCFB5F6D6DA5B5B4FD3735FFA4F
          EC2E8AA6B99531AE3B9CD680E77890395E5DD3FEB1DBD4FACD99BF58328E6607
          462DC8E958F4506AFB5E55CE38F88FC4C673ACB72B65ACBAAC2FFB7ADF47F4EB
          772B3BEB1F4AEA58975D63EEEA7D771EFAAAE961DBF169C963A97E1FA7B46E65
          78B8D6DEEEA57EFF00D3FA7BFF00D124A7AAB7AC74DA73ABC0B2F0DC9B5DE9B1
          B0E23D42D37B697DA1BE95773E96FA95D563FD4B18A875DFAC7674DB4E3E1623
          B3F228A5D9998C6BB68AB1987DCEDDB5DEA655FB5EDC4C6FF0DE9DBFE8D53EA3
          F57B2707A360B3A5D6ECECDC0CDAF3AD05EDAECCAB4EF6655B75F71DAC75DEBB
          DEFF00DCABF455FEE2D2E9DD09B8F81955E5586DCEEA7B9FD432D9A39CF7B7D2
          DB4EEDDE9D38D56DA3119F995D7FE93D4494E1F5BFACB9F73337A8F47BCD7D37
          A132BB6F78635E32AD76CBACC3DCFDDB29C7C477E9F67A777AF91FF00B3329DD
          6FA9F5BC4C77D96D789F5A69B5B7E30276E3E163BDAE63ABFDCBB3B11DB2EB1F
          FE13357678DF57FA6637416F406B0BF005271DED71F73DAE116BDEF66CFD2DAE
          739EF733F3D16BE918557521D4D8D2321B8CDC366BED6D2D71BB6B19FCB7FD3F
          F8BAD153C4FD6AFABF674EBBA96562BD9EBFD62189D13A5D2D040A2A7B595655
          6EFF00827D78FBBD9FCDAEF70F169C2C4A30F1C6DA71AB6D5537C18C02B60FF3
          5AB9DDDFB6BEBB881BB0FEADD465D261D9994D036FEE3FECB883FEB575ABA841
          4A49249253FFD1F5549249252961FD5E6BFA8FD5A8B4EC199F6800B396B6CB2D
          1AEEFF000BEE5B8B80EBF91D571FA9E560FD581D5DB73DE5F7D755149C2F51ED
          F51EEAB33399FAABAC71DF67A5FA2F5111D94F4BD42CE83D13EAEB307AD64D6C
          C06630C471B7436B5ACF45CDAE9AFDF63DCCFF0007435713F543EA5F59EA5EB5
          DD66EB6BE8F639AC6576B4D795958F4015E1D393FE13170763777D9FE9DDFF00
          6CDCAD74AFAA3F5C9D903A864FD8E8CE8D33B39CFEA196CD640A776CC1C7D9BB
          FED3B16F33EA8F59BE7F69FD66EA171312310578634D7FC032C73777F21E829B
          D7FD5FE854F59A3EB15F14DD858DF65A3739ACA2B602EDAF63086FA763596595
          7D3F4FD37FF368397F5EFEA662B81BBAAE3BDCDE3D126F3AFEEFD99B72833FC5
          F7D53179C9BF08E664110EB72EDB6F71FEB7DA2C7B3FE82D9C2E99D37A7B3660
          62D388C3CB69ADB583F1F4DAD494E21FAF58B66D381D2BAAE7B1E7DB6D388F6D
          67CFD5CA38ED52775FFAD563C7D93EACD9E9BBFC264E5D1491FD6AAA39562E8D
          2494F39659FE30AD7834D3D27159F9C2DB322F77FE075E2B554EBB77D6FE95D2
          6FEA37F56C469A47E8E9A705CE75963C8AE8C767A996FF00E76D7B19F4175CB3
          BA874D767750E9F65841C5C27BF21D59FCEB837D3C577FD67D4BACFEBEC494F3
          7D13EA5FD67C2C6B05DF58ACA1F9963B2B2ABC6C6A41FB45B0721DF69B05965B
          EEF6FD0ABFB0B41DF53725FA59F58BAC1079D97D6CFF00A8C75D2A4929A5D23A
          5D5D2709B8755F7E4B5A4B8DB9563ADB0976BABDFF00F50C575249253FFFD2F5
          5497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA9
          24A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7FFD9FFED0ED050686F
          746F73686F7020332E30003842494D0425000000000010000000000000000000
          000000000000003842494D03ED00000000001000480000000100010048000000
          0100013842494D042600000000000E000000000000000000003F800000384249
          4D040D000000000004000000783842494D04190000000000040000001E384249
          4D03F3000000000009000000000000000001003842494D040A00000000000100
          003842494D271000000000000A000100000000000000013842494D03F5000000
          000048002F66660001006C66660006000000000001002F6666000100A1999A00
          06000000000001003200000001005A0000000600000000000100350000000100
          2D000000060000000000013842494D03F80000000000700000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF03E800003842494D040800000000001000000001000002400000024000
          0000003842494D041E000000000004000000003842494D041A00000000034900
          00000600000000000000000000003C000000960000000A004400650065007000
          61006B002000520061006A000000010000000000000000000000000000000000
          0000010000000000000000000000960000003C00000000000000000000000000
          0000000100000000000000000000000000000000000000100000000100000000
          00006E756C6C0000000200000006626F756E64734F626A630000000100000000
          0000526374310000000400000000546F70206C6F6E6700000000000000004C65
          66746C6F6E67000000000000000042746F6D6C6F6E670000003C000000005267
          68746C6F6E670000009600000006736C69636573566C4C73000000014F626A63
          00000001000000000005736C6963650000001200000007736C69636549446C6F
          6E67000000000000000767726F757049446C6F6E6700000000000000066F7269
          67696E656E756D0000000C45536C6963654F726967696E0000000D6175746F47
          656E6572617465640000000054797065656E756D0000000A45536C6963655479
          706500000000496D672000000006626F756E64734F626A630000000100000000
          0000526374310000000400000000546F70206C6F6E6700000000000000004C65
          66746C6F6E67000000000000000042746F6D6C6F6E670000003C000000005267
          68746C6F6E67000000960000000375726C54455854000000010000000000006E
          756C6C54455854000000010000000000004D7367655445585400000001000000
          000006616C74546167544558540000000100000000000E63656C6C5465787449
          7348544D4C626F6F6C010000000863656C6C5465787454455854000000010000
          00000009686F727A416C69676E656E756D0000000F45536C696365486F727A41
          6C69676E0000000764656661756C740000000976657274416C69676E656E756D
          0000000F45536C69636556657274416C69676E0000000764656661756C740000
          000B6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C
          6F7254797065000000004E6F6E6500000009746F704F75747365746C6F6E6700
          0000000000000A6C6566744F75747365746C6F6E67000000000000000C626F74
          746F6D4F75747365746C6F6E67000000000000000B72696768744F7574736574
          6C6F6E6700000000003842494D041100000000000101003842494D0414000000
          000004000000063842494D040C00000000092200000001000000800000003300
          00018000004C800000090600180001FFD8FFE000104A46494600010201004800
          480000FFED000C41646F62655F434D0002FFEE000E41646F6265006480000000
          01FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513
          1318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C
          0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008
          FFC4013F0000010501010101010100000000000000030001020405060708090A
          0B0100010501010101010100000000000000010002030405060708090A0B1000
          010401030204020507060805030C330100021103042112310541516113227181
          32061491A1B14223241552C16233347282D14307259253F0E1F163733516A2B2
          83264493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4
          D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7
          F711000202010204040304050607070605350100021103213112044151617122
          130532819114A1B14223C152D1F0332462E1728292435315637334F1250616A2
          B283072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B4
          95C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7
          C7FFDA000C03010002110311003F00F55492492529243C8C8A31A97E46458DA6
          9A9A5D658F21AD6B47D273DCEF6B5732DEA9F593EB202EE821BD23A49FE6FAAE
          557EA5D78FCDB70702CDAC650EDBFCEE67F3B55BFA3A9253D524B9A1F507A1DD
          0EEAB665F58B412E16676458F89FCD6D353A9C76D7AFD0F4549DFE2F7EA7182C
          E9CDA5ED3B9965365B53C1E64594D8C77B5253D1A4B91B727AAFD50CDA3EDB95
          6F52FAB99760A4E4E49DF91876BFF9A75F91FF006A30ACB3D9EA5DEFA7FD27FD
          C9EB925292492494A4924CE735AD2E7101A049274000494833B3B17A7E25D999
          4FD94E3D6EBAC3C9D8C1B9E437F3956E81D730FAFF004AA7AAE107B68BF700DB
          000F058E756E6BDAC73DBF499FBEBCC7EB775DC9EBDF5A30ADC1C17FD83A654E
          CBB2F2E839382DB2B7DF90FAFD9FA9EEC77FA0CFF0DFCF7E7AEEBFC5D536D7F5
          470EDB9BB6CCB75B94E68E00BADB2DAF6FFD69CC494F4A924924A7FFD0F55492
          49253CDF5CC76756FAC7D3FA26689E98DA6CCFB6927DB916D2FAAAA31AE67F85
          A28F5BED3653FCDD9FA2F55748A9754E9187D52B636FDECB6976FC7C9A5C6BBA
          A711B4BE9B99EE6EE6FB5ECFE6ECFF0008B98AABFADB99979F8B89D65F4F4AE9
          EF2C19F6E352FC8B6D6B66FC5ABF9BA5D4637D1B32BECFEA7DA3F45EFF007A3D
          14DDE93F587AB754FAD59F8F452C7740C32FC419201DFF006BA854FB9AE33F43
          F4B657F43FC1AE9D79CFD4BEA1D57EAE740C2CCEB01B7746EA6E373F31A22CC5
          B2F7FB5F9DFE9B1727D8FF00B57F817BF659FA3F4575DD7BEB037A6FA7898AC6
          E4F53C96975341706B195B7F9CCECDB7FED3E0D1FE12DFCFFE6AA414D2FF0018
          EEAFFE6767D2E6FA96647A54D1508DCFB5F6D6DA5B5B4FD3735FFA4FEC2E8AA6
          B99531AE3B9CD680E77890395E5DD3FEB1DBD4FACD99BF58328E6607462DC8E9
          58F4506AFB5E55CE38F88FC4C673ACB72B65ACBAAC2FFB7ADF47F4EB772B3BEB
          1F4AEA58975D63EEEA7D771EFAAAE961DBF169C963A97E1FA7B46E6578B8D6DE
          EEA57EFF00D3FA7BFF00D124A7AAB7AC74DA73ABC0B2F0DC9B5DE9B1B0E23D42
          D37B697DA1BE95773E96FA95D563FD4B18A875DFAC7674DB4E3E1623B3F228A5
          D9998C6BB68AB1987DCEDDB5DEA655FB5EDC4C6FF0DE9DBFE8D53EA3F57B2707
          A360B3A5D6ECECDC0CDAF3AD05EDAECCAB4EF6655B75F71DAC75DEBBDEFF00DC
          ABF455FEE2D2E9DD09B8F81955E5586DCEEA7B9FD432D9A39CF7B7D2DB4EEDDE
          9D38D56DA3119F995D7FE93D4494E1F5BFACB9F73337A8F47BCD7D37A132BB6F
          78635E32AD76CBACC3DCFDDB29C7C477E9F67A777AF91FF00B3329DD6FA9F5BC
          4C77D96D789F5A69B5B7E30276E3E163BDAE63ABFDCBB3B11DB2EB1FFE133576
          78DF57FA6637416F406B0BF005271DED71F73DAE116BDEF66CFD2DAE739EF733
          F3D16BE918557521D4D8D2321B8CDC366BED6D2D71BB6B19FCB7FD3FF8BAD153
          C4FD6AFABF674EBBA96562BD9EBFD62189D13A5D2D040A2A7B5956556EFF0082
          7D78FBBD9FCDAEF70F169C2C4A30F1C6DA71AB6D5537C18C02B60FF35AB9DDDF
          B6BEBB881BB0FEADD465D261D9994D036FEE3FECB883FEB575ABA8414A492492
          53FFD1F5549249252961FD5E6BFA8FD5A8B4EC199F6800B396B6CB2D1AEEFF00
          0BEE5B8B80EBF91D571FA9E560FD581D5DB73DE5F7D755149C2F51EDF51EEAB3
          3399FAABAC71DF67A5FA2F5111D94F4BD42CE83D13EAEB307AD64D6CC06630C4
          71B7436B5ACF45CDAE9AFDF63DCCFF0007435713F543EA5F59EA5EB5DD66EB6B
          E8F639AC6576B4D795958F4015E1D393FE13170763777D9FE9DDFF006CDCAD74
          AFAA3F5C9D903A864FD8E8CE8D33B39CFEA196CD640A776CC1C7D9BBFED3B16F
          33EA8F59BE7F69FD66EA171312310578634D7FC032C73777F21E829BD7FD5FE8
          54F59A3EB15F14DD858DF65A3739ACA2B602EDAF63086FA7635965957D3F4FD3
          7FF368397F5EFEA662B81BBAAE3BDCDE3D126F3AFEEFD99B72833FC5F7D53179
          C9BF08E664110EB72EDB6F71FEB7DA2C7B3FE82D9C2E99D37A7B366062D388C3
          CB69ADB583F1F4DAD494E21FAF58B66D381D2BAAE7B1E7DB6D388F6D67CFD5CA
          38ED52775FFAD563C7D93EACD9E9BBFC264E5D1491FD6AAA39562E8D2494F396
          59FE30AD7834D3D27159F9C2DB322F77FE075E2B554EBB77D6FE95D26FEA37F5
          6C469A47E8E9A705CE75963C8AE8C767A996FF00E76D7B19F4175CB3BA874D76
          7750E9F65841C5C27BF21D59FCEB837D3C577FD67D4BACFEBEC494F37D13EA5F
          D67C2C6B05DF58ACA1F9963B2B2ABC6C6A41FB45B0721DF69B05965BEEF6FD0A
          BFB0B41DF53725FA59F58BAC1079D97D6CFF00A8C75D2A4929A5D23A5D5D2709
          B8755F7E4B5A4B8DB9563ADB0976BABDFF00F50C575249253FFFD2F55497CAA9
          24A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA4
          97CAA924A7EAA497CAA924A7EAA497CAA924A7FFD93842494D04210000000000
          5500000001010000000F00410064006F00620065002000500068006F0074006F
          00730068006F00700000001300410064006F00620065002000500068006F0074
          006F00730068006F007000200037002E003000000001003842494D0406000000
          0000070008000000010100FFE11248687474703A2F2F6E732E61646F62652E63
          6F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EFBBBF
          272069643D2757354D304D7043656869487A7265537A4E54637A6B633964273F
          3E0A3C3F61646F62652D7861702D66696C74657273206573633D224352223F3E
          0A3C783A7861706D65746120786D6C6E733A783D2761646F62653A6E733A6D65
          74612F2720783A786170746B3D27584D5020746F6F6C6B697420322E382E322D
          33332C206672616D65776F726B20312E35273E0A3C7264663A52444620786D6C
          6E733A7264663D27687474703A2F2F7777772E77332E6F72672F313939392F30
          322F32322D7264662D73796E7461782D6E73232720786D6C6E733A69583D2768
          7474703A2F2F6E732E61646F62652E636F6D2F69582F312E302F273E0A0A203C
          7264663A4465736372697074696F6E2061626F75743D27757569643A66636232
          646266612D656462302D313165312D613436352D616264666631376133613537
          270A2020786D6C6E733A7861704D4D3D27687474703A2F2F6E732E61646F6265
          2E636F6D2F7861702F312E302F6D6D2F273E0A20203C7861704D4D3A446F6375
          6D656E7449443E61646F62653A646F6369643A70686F746F73686F703A336362
          35326163382D656462302D313165312D613436352D6162646666313761336135
          373C2F7861704D4D3A446F63756D656E7449443E0A203C2F7264663A44657363
          72697074696F6E3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D657461
          3E0A202020202020202020202020202020202020202020202020202020202020
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
          200A3C3F787061636B657420656E643D2777273F3EFFEE000E41646F62650064
          4000000001FFDB00840001010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010202020202020202020202
          0303030303030303030301010101010101010101010202010202030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303030303FFC0001108003C009603011100021101031101FFDD
          00040013FFC401A2000000060203010000000000000000000007080605040903
          0A0201000B010000060301010100000000000000000006050403070208010900
          0A0B100002010304010303020303030206097501020304110512062107132200
          0831144132231509514216612433175271811862912543A1B1F02634720A19C1
          D13527E1533682F192A24454734546374763285556571AB2C2D2E2F264837493
          8465A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A8586
          8788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CA
          D4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA1100020103020404030504
          04040606056D0102031104211205310600221341510732611471084281239115
          52A162163309B124C1D14372F017E18234259253186344F1A2B2263519543645
          64270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4
          E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7
          F7485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A
          8A9AAABACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF74507E3FFCF3F89FF293
          B77BFBA2FA1FB8305D87D9BF18F398EDBDDC780C45365234DB990C9C95D4B035
          1E4EB2869F199FA18F278AAAA392A2865A8852A69D9756931B3FBCD97CC71EBC
          012A1C0EC3E7E5D1BEF7EEBDD7BDFBAF75EF7EEBDD7FFFD0DFE3DFBAF75EF7EE
          BDD7BDFBAF741277977CF4D7C67EB0DCFDCFDFBD93B4FA9BAB767520ACDC7BD7
          79E561C561E81246F1D3D323C9AAA2BF255D3111D351D347355554A4470C6EE4
          29AB32A0AB1A0EACAACC68A3AA47C47F330FE621F3E32D263FF95D7C29A2D83D
          0B5BA9719F3C3E7CAEE6D81D71B86896A56239CEA7F8FDB7D28BB43B0F135D02
          BBD0D74D57434EE6C66890707C8B2C89E2D5523C53556ADF601EA381C8AE0D08
          A74E3A2C4571A8D3CF03FC3539AD0E2B4E97F8EFE5ABFCCC7B2C55E57E49FF00
          3B2F9038CAFCB46AD3ED0F889D1FD27D05B4B6D3FDCA54AD26DECFE5B03BEB78
          6429E9B4F8D66AD7F3CA9C4DAD495379A1B579237124C680706080FA82A35023
          E7F11C70E9B32481C98C2042B4A15AD0FA824F4E15DFCAC3E6F6DBA49B21D43F
          CEFF00E74E3376FED5546FDCFB2BE3D776EC8AAC8516934695BB4AABAEB68D65
          362AA3405AB828B234C2705981527DDCF80D80AEB53C75034FCB48FD9515F975
          EF124049409C381507FD5F9741D51FF32BF979F003BD3AE7A0FF009BA6C9EACA
          CE9DEE5DC141B23A57F98A7C7AC46E3DAFD355DBD6AE9D5A8B66FC82EBADC795
          DCD59D4BBA33755308E9EB61AE5C4C86291E34681269E04B12CB1898DC4C0C43
          E134CF1E0D40060641A014192727ABB1B6691224969335680E01A790C9FF0009
          F9D075B034724734692C4E92C52A2C91C91B2BC7246EA191D1D495747520820D
          88F6F74D70C1EB9FBF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEB4EBFF00
          85407F3898BE1F63FA37A6FE24FC9BDC1B3BE666C4EDCC37606FCEBED8B257CD
          895EABC8ECEDC9452E2BB46B298C7890F92ADAEA3968F172BCB50D1B34CD12A8
          472EC42170F524CA18514573C6A2A053D3FCDD3B1800EA2B56F21C7F97D9C3A0
          63FE1311B6F6A65BE7B7CD0ECAEB0A29C6D58BE1B7C4AC776867278E549F7177
          CF67FDCF666EDC9647C93D48396324554B302C8C0053A0163ED6EE7E1F8D02C6
          8142C62B4A54960092DE75E1FE4A755921482474477230483C013E43FC23ED3D
          6EF7ECB7AA75EF7EEBDD7BDFBAF75FFFD1DFE3DFBAF75EF7EEBDD2477FEFBDA7
          D5DB1B78F64EFCCD526DCD93B076C67378EEDCFD7B14A3C3EDCDB78DA9CBE632
          550543398E92829247D2A0B35ACA09207BD8152ABE64803ED2683F69C75EEB5F
          3F8C3F1137C7F365ECDDADFCC7BF98FE06B6A3A1F13B827DD3FCBEBE03E7A48E
          6EB4EBFD890545441B4FE40F7A6DCA7AAA9C4765F6E76262D23CA52419013D0E
          3A8EA22510E8F1430AC9EDE4DB66B881CD6E1974BA9CAA8041029904E01AD315
          E35034D890632841C9FB31E55FB6BFEAF2D8C228A8F1B471C30C74B8FC7E3E95
          228A28922A5A3A2A3A5882A471A288E0A6A5A68230000151117F007B45D540E0
          00E8A37C44F9EFF143E76D176BE47E2C76D62FB528FA53B12B7ABFB127C76333
          78C4C46E8A489AA216A5FE378DC71CBE1329046EF4790A5F2D25488A408E5A37
          0B5560C5850D41A6453F67A8F9F4E4B1F84557C4562541ED35A57C8FCC79F470
          FDDBA6FA271FCC17E32F5BFCC1F861F237E3DF6A6128B35B637E7566EC8E99AA
          C059705BA71189A9CCECFDD78DAABA494394DB3B9A8296B2195597988AB5D19D
          4B90A2493428E8194B0143F6FF0084711F3EA8F178DA53510750208A54107E60
          8CF03F224744FF00F9047776FCF903FCA2FE1776076664EB337BDA97AF733B03
          339CC83996B3309D5BBDF7475D626BAA272AA2A6A1B09B6699259416F2CA8CD7
          37F7B962311552A06380E18C7F93A7A450ADA4711C7EDF3EAE1FDB5D53AF7BF7
          5EE9234FD81B0EAF7B643ACE977B6D1A9EC7C4E029775657AFE9F7261A6DED8C
          DAF5D57F6145B9321B523AD6CED1602B2BBF662AC929D69E497D0AE5B8F7EF4E
          BDD116DD9FCCD7A1768FCBBC2FC45A8DBFD9795C956EE4C2F5DEE3EE8C36DCA3
          ACE8CD81DBBBAB0555B9B68F52EF2DECF9685E877B6E3C3D13B470434D50B04E
          C90CED1B97D17D2A11492DE2335000B5049F2AD78FCA87AF6322B91D574EFF00
          FE7C98AA0EE5F945D1FB37A966C855E3B624107C10DEF4D97A7C8C1F2C7B626D
          DD2F5257E336CE19164357B6B13DA752891D5C05926C7D0554A6E0A9550D6170
          8209E49105B48A4819D75069C3853A7182085A415AAF1E1FCBAA34ECDF80B8F9
          BF9E07C0AE92EFBC6526FCABE95F8BBD95F3EFF980772EE2A239BA0ED2DDBB8A
          AB7CE4F744391CC5642C93EDAC0E4F6BE230B8E82A1A348A9033A85D7ED5C2A9
          04167120A44A59831186EE0A18D7C8396F981E55A0E9B5235A9C5471FF0057EC
          EAE2FF00E12E5D2D1613E22FC8AF96E989184A2F9C3F2C7B4FB4761630E3DB1E
          F8FE9AD959CC96C5EB7A2546201A28E4A4C9BD32A811AC32A952437082525922
          67AF88D5624FCCD07F83F9F5EA96EE24927D7AD9B7DB1D7BAF7BF75EEBDEFDD7
          BAFFD2DFE3DFBAF75EF7EEBDD177F96FD1307C9EF8BFDFDF1E2A2B29B1C3B9BA
          977CF5E4190AD591E8686BB72E02B71D8DACAF8E28A7965A0A6C84B13CEAA8EC
          D12B00A49B153672C505DDB4D3C7AA2491588F5A107FD43CF875A6AE96A71A74
          42BE3A7F304E94F8FBD71D5DF1ABE6253C9F0F7B83AA7686CDEA89F19D8382CD
          607A6F73A6D4C7506CFC1EE0EADED67A09361E4B68E7E971D14D4B1CD5D4F514
          88CD1C89688C8CB378B5BA8E5B8DCCC6D2584AEEE25452CB42C4D081A8A915A1
          04608238E3AF4651954788AB27F09600FF003A0FE75E899FF3ADFE797F0CBE38
          7C32F94DD6BD21F2D3AAB75FCC0DC1D675DB13AD364F5B67E0DFB9AC467FB023
          A5C0CF9FA9CA6D98333B6F0936D7DB998A9C929ABAA89926A744B79081EC8CCC
          8E17C23AEA698C8F53523031EBC70054903AD94D60AEAA57FD5FEAAFDBD1BBFE
          491F093E3EFC43F867D61B8FA1B72EDBDF2DDF5D41D23BBBB37B0F6665F1F98D
          A9D91D8D81D9D5345B8B7CD05562EA2BA8A4AECA64B293D3D5BA54CC59E8D43E
          9915C7B5F753433CA25847E1009C77118D58F5EABF4E2DE49155895C7953D780
          F42294FDBD5C77B4FD5BAA21FE6E3FCD0FA67AF3E2A767745FC5AED3EB7F901F
          353E4655547C53E8BE91EA5DED83DFFBE23ECEED5A51B5EB32D9EC36CCC8E532
          5B668763603333E4E69EB053209A08E2D4198E94CD3452AB4714819CE319A7FA
          B80F2D541D78FA0F8BFD5FEAFF008BE84CE9DEE0F8A1FC9BBE34FC0FF821DB7D
          87353EE4A2D93B0BAB0647118A198A3C56E6CDD5D2E3F25BEB7FFF000B7D7B3B
          686F4ED3CFCD49415B3C4C9515951E35D5A25755971E2031C8B133C4485D43FA
          200D54E34247A7A8C91D7A94E8CD778FC8DDED9CF91DB27E177C7A8A65EC6CAE
          DEA7ECCEF7EDA8A8F1D98C1FC76EA2359510620D651D6C7574155D9DDA75D8F9
          A8B018FAA88AC74CB357C88D12231BC488CCC670E20D04D54806BF840A83C4F1
          3434009A1A53A70C656212E32D403FC27FD5E7FCC9B74F7F308ECAEB0F88FDFF
          0097EE0AF3F20FE467517CDAEF7F84BD27B7311B729F69EE6EFF00EC4DB7BD06
          37A7B6DD5D160207C42652A30196A6973594A7A7A4A5868A8E6A895165563233
          34D178B208876872A3D4E7FCDF963A4CB237826691282A7FD5F9FF00ABCFA239
          F2EBE36F6A7C01D9BF09BE5C6C3A5DD7DCDFCC8BB1FE5CB6C1ED5DF9B7F14D98
          5ECDDCFF002A3AD37D61EB7AE774C34EF355FF00A0BEB1CEE1314F8982D25351
          261D6A16289A62AABA4956E0DA5A19C2DB248295206B3420D492A6878D2B4007
          0AD49718AAD0D724D3F6F42B7CC2FE58FDD3B1BF959F58FC79E9ADD1BB3B6FE4
          AD3FCBDE96F909DB7DA14C994ACDCBBF3B4373F632CFDABBE632AF254D161F1C
          370B980CECB0D262E894B850A57DDE3991AEA368D42C51D4819A71A934AF13E8
          380006695EB7434A03FEAAF52A9FF9716CADC9FCDF7E0EC585D9196C2F4A7F2A
          FF0084140DB773F2E364A7C26F8ED8DFFBAB2F89D9343057A5E19323B769F179
          1DC15A2FAA4AC997E8B7D549995A3592A7F1531C3576AA9CF00A84E07123E7D3
          6D29793E9C7C0B9AF9F97E5FEA3D18EFE7EBD8F95D97FCBFB7F758758E268B25
          F217E67EE2D83F0B7A861A75823DC75D53DD1BB28719B95696687C795A8C5E1B
          678C9D5491C6E2386529235BF2952692168CABD1036493850D8634FB3FC95C0E
          AED5D2C071381F6F5685F18BA2F6B7C63F8EBD25F1EF65E3E871BB6BA6FAC366
          75EE3A9F1D08829243B6B07478FAEAF58C01FBB95C8C53554AC797966663C93E
          F73B892691C1A8271F6797F2EAA8BA5141E34E874F6D757EBDEFDD7BAF7BF75E
          EBFFD3DFE3DFBAF75EF7EEBDD7BDFBAF755D1FCD036E6E7ED2F8CF37C70D8236
          BD36FDF949BC76FF004461371EEBC250EE1A0D8B82DDC2AE6EC3DF7498BC8E3F
          234D2E6701D7D8FC90C7BE80D057CF04A0FA2C4C2C04F59A48A564555AB104D0
          819A301C41008FB7AAB46928D2E31EBE63ECEA983F98F7F285F889D65F12FF00
          975FC0EE86EA3D81B7E87757CE6F8E7B4F74EECC96CBC1D6EFCEC4D8FB713756
          E4ECDAEDFDBCE92968733969B70D2C4ED566691E226A3C688AB6B33E3FEA1756
          D106A1FA4383FF000827E4464FCC700051D48CC98519C7ECCF433776F57D77F2
          21EC8DB3F287E2DD065E9FF960F64F60ED4D99F2F7E23E24576536CFC71CF6FD
          CA63B6C507CADE908EB26AA936B60E1CA0A2A7DD584F3458E952513C6633A044
          CDC3CB753FD5315D5401800141CD3550000531803EC19ED72228754463AB30C1
          AD287D47DBE6385385081D17FF00E64DFCDB7AF3BEB33DADD23D75DDBB83A87E
          0E746F9F01F2CFE44F5CD552C9D8FF0029779E730D4CD88F853F0DE5A1AB5CC6
          437BEEEFE271D367737481D68A9EA1A2B2A5E492CB6D14B4334ACB1A37753F16
          3E11EA7D7CB3F2E9A911E291A29168471F5FB3FD9EA867A4B64769FF002CAFE6
          ADF16FE567617C2AD97B237AFCB7E87EE3C67C19F829D6F8AF2E73AE77456D5E
          0B6074DE17B3F702D354CADBEABF1BB866C96E7CCCA5AB2249A76322CA560855
          DDC76EC57E96DE389B490235AD15853E26CD4907B8D05386483D26F140D548CE
          9F2FCF03E7FEAAFCBADB03B33F96CF77CFFCBA3E5BD36EBA9C37C88FE625F276
          9767F67F666E88EAE930585DC1BD3AD37B6DCDF3D7DD31D7B5D9A928A8F6A75D
          75F51E08E330C7FC9D9E677A990EB9142A7842473325BCA41906966274862452
          A698551E55E1C4D3C9F24E920E4FFABFD43AB04FE5F7F197797C7FEA6CCEEDEE
          EC841B8FE557C86DC2BDBDF263754553157C2FBEF254105262F61E16B6292789
          B68F56EDF8E1C363922924A7630CD3C674D47B6DE6678A088FC283F99C93FE0F
          9631C4F5624D02D4951C3A89D59FCBC7AA3AC3E5976BFCB45DD5BDB7667FB0B3
          F98DDBB57AEF71C9837EBCEA6DE5BCB1B88C6F636F4D978DA1C45256C9BBF7BC
          3848629B215734B3C14664810959198B6080080A38FF00C5D3EDF3EAB92A109A
          A8351F6F47F7DEBAF75EF7EEBDD7BDFBAF75ADC8DE7B7BE767F3C4CFEE1DC9B9
          F1589F8C7FC9F76A2E1284E7B71D2D06D7DE5F31BB831150990CBAC5575F4942
          B5BD4DB567683CBFB863AC11836D5A7DA8F0996192667A2290B4FE9382787FA5
          14FB4D3A694C92DC98563A8415E049A9F97577795F981F12B033CB4B9CF947F1
          D30D530ACEF353E57BB7AD31D3C4B4DFF025A586B37343246B4FFDB24009F9B7
          B4B232C4CA92B0573C01C13F603D2A104CD858589FB0F419EDBFE645F0137A77
          26D5F8FBB2FE61FC78DE7DC9BE1276DA3B0F67F696D5DD595DC0F4F4F255494D
          8D9F0191C86327AF6A789DA3A7F389E5D242231047BF3B88DC47202AE4D28411
          9FCC7576B59D22F19D291D699201AFD95AFF002E8EBFBB749FAF7BF75EEBFFD4
          DFE3DFBAF75EF7EEBDD7BDFBAF755BDF3662CC56FC8AFE5CD8C195CAEDDD9F5D
          F237724DB9770513A4142B96C1F5C66371ECCDAD90AB764313EF9CC61DF1B122
          B07984CE8B726C4D76F28B6BB99726BE18D34F36AF9FCB4EAEACAF0AD5653923
          B7FD3797475F7F75075C76865BAE339BF36BD1EE1CB751EF8A5EC7EBBADA89EB
          A9E6DB5BCE8F1793C35366A94D1555309E44C7E5E74314DE481F502C84AAD8A8
          D08A150720FD84798FDA7F6F55F4C9EA923F99CFF349F88BB836DF6AFF002E7E
          ACEBFDC9FCC1BE4CF78EC9DC5D5B91F8DFD030C3B92836DFF7BB1C710992ED5E
          C8852AB68F5D526126AE4AC69269A4A9A6929AEC913056F6E5AF892CC52D9878
          C2BC7005066A4E0000E49E1F2C75B97F440D64063E55CFECFCFEDF9744ABF91F
          7FC26C76D7C2DA6D99F20FE70E4297B77E426DBADACDC1D57D3151964DDBD39F
          1BF2B91AD6A99B7063125862C46F1ED8A98E2A7F2E6169A2A6A27847DB2BB849
          92F2CC9080438D6BF8BC8127C8F99FE91CD78791EBD435CE5FD7FD5FEAFF000F
          57C7F243E437F2DBEA5DE7B3BB5FE527717C4DD9DD91D35067EB7606E8ED0DE5
          D710F616C28F7053262F704BB462C9D749BA71D3656953C328A38BC92286001F
          57B466E224D359054F0A64E718A578FF003EBC2DFC5901D03C4515CD053F6D3A
          AF6DC9FF000A5AFE5769BA27D97D37B9FBEFE57EE786478462FE2EFC78EC7ECE
          3513AA0748692BAA31DB7B1B54D37214A4C53D25890B663E495A472890485AB8
          C015FB2A457ABB24483BEEA30F4AD2A49FE408FE7F6753687F9BB7CDAED8AA8A
          9BE337F242F9BBBA68EADA68E9F72FC8EDD7D5FF0013B0296F3B53544B1EFBAD
          CDE57C6F0C4ACD1BC30BABB88CDAE18A97B6BD58C3F8014839577456A7AAA96A
          907C8FF87A663B8B394D6299A48F812ABC1BCC13C053CF8FD9D3C637B57FE144
          3D913D64543F143F9707C6AC6D4CF2A5157767F7BF6AF74E7B174AD278E19E6C
          7757E2B0B85CA5444A75B2FDCC0AE97002B5AEA96DED7B256BF4D078A6990B8F
          F6DA42F4E87892664681DE3F260428CFC8F75471F21D4CA1F8BBFCF73B05BC7D
          9FFCCFBE3074950BF926783E37FC31A7DDD918A4984EC28D331DCFBC6612D1D1
          39458DC53432CA972FEA0094F2C76956F0AE26D3E555407ECAD5853F2EB7AD6A
          EA621A334353ABE551C3EDEB39FE51BF25F78574959DC9FCE83F98E6E5A7ABAA
          32E4B07D4DB87AD3A0307554CA23F150D3C3B3B67E4B278EA76D2EB3786AD7CF
          1BD880E03FB7627B0104D05C5934A1AB4264A11FEF282BFB73D279C4D29AC730
          43E5451FE4A7451BF982FF002D0F8E5F13BE24766F6755F7E7F322EEDEC9AD82
          8761F4B6CFDE9F3F3E46641F75F73EFBAEFE07B0B15498CDBBBAB0314BAABEA1
          5EAE38E2FDDC7D2485C3302FEDCB310CB12D8B59C663AD413ACB835C00DA89A5
          48E20E3EC1D5669648E30DA899C5006006AFCB87EDE3D3A7C38FF84BCFF2E0EB
          4EA9D8196F931D5FBAFE417C81CD6DCC4E77BA7706FEEDBECCA9DB79FEC4CA46
          729B8D8ED6C3EE5C2E1ABA9292BAB64A40D5715449531441E62D23B12D48D0C4
          D3C09124915705AA6847E25A103278120D453A6D217631CCD33ACC0715A0E3E5
          C3FD5FB7AB09C0FF0022DFE503B6E821C6E33F97AFC6B7A781E1923932FB2177
          157F969A569A09A4CAEE0ABCA65269A276203BCCCC1094BE8257DECDECED1782
          447E1FFCD38EBFB74D7F9F0C74FBA2C8559ABA87A123FC14E8DA74E7C15F85DF
          1E73F16EBE8BF8A5F1EFA9374C0B5AB4FB9BAFFA8F63ED7DC34C9913AABA3A6C
          DE2B0B4D93A68AA896D6A92AA9D6FC7ADAFA92F6EA5896092526153814000FD8
          07ECEB65159FC46157F53D1ACF697AB75EF7EEBDD7FFD5DFE3DFBAF75EF7EEBD
          D7BDFBAF744A3F98864FE3FE03E1FF006FEE6F937B7F7EEE0EA3DB78EC36572D
          1F54E0F3F9DED3C4E6CEE1C563B69EE0EB8876BC52676837861F7257D34B4955
          0155808632DE032A33F6EF2C72A3431177FE1009D5F2A0209F5E3E55EA920888
          5F1A7F092A3BFF0084F911839EB485DFBD45FCD0FE756E16DBBF11B0DFCDAFB4
          3A0E6AFA9C6D3E3FE74FC94A8F8E9B0E0C44F894AC6A1CAAECFA6DA3BC378E22
          6698C4D6AB2D3532850C0B900E371B7B4B8459638E41230EF0E7420C7A6093C3
          CCF975AFADBAB3934CB76B7501E0F1AD18E38765070FE8F0F2EAD53E1E7F262F
          E711D61B29767E1FE68FC57FE5C9B0B3D58ABBC7627C2AF8F589DE9BF72349A4
          BD565AAFB9BB111375E5B72564CDCCF555B51E362CF1F8C81A8AEE16311C36C2
          F83C282BFA719504D08A1D5A581FE967F3E1D790BC6F2BC518FD4249D7DD4AF9
          AF1F9712283A3B3B63FE13C1B173F92C9E53E577F31BFE669F2D973553054663
          6B6F4F943BAF6375F65920795D29321B5763C9453CB441DD58471D6C410A596C
          A4AFB491C567105D16A0B06D5DC415AFD9406BF9D3E5D385A478DA3794D08A63
          1FCB3D1DEEABFE4A3FCA93A7325066F687C12F8FF90CFD3C91CF1EE2EC5DA5FE
          97F3FF00731C663155FC63B5EAB7A57AD4B024B3AB82CFEA3EAE7DAB3792F84F
          024712C24D68234C7FA562A597F26AF4D889069E38F99FF3F5621B23AD7AE7AC
          F1ED88EB8D81B27AFF0012CC59B19B236AE0B6A63D9998BB3351606828298B17
          2493A7EA6FED879A5916349256644AE904920572680F0A9E34E3D6D628D18BA4
          6A18F120004F4B6F6DF57EBDEFDD7BAF7BF75EEBDEFDD7BA29FDCDF1FEB7B93E
          40FC66DED9F6A3A9EB4E82AEDFDD892E02ADA0A88F37DA790C562F6EF5EE464A
          0969DE4126CEA5ABC9D7534E24012A196E09D3ED44722C713157225AFF009307
          E54A9A5335E9878CBCB193FD98FF000F46C3DA7E9FEBDEFDD7BAF7BF75EEBDEF
          DD7BAF7BF75EEBFFD6DFE3DFBAF75EF7EEBDD7BDFBAF75D1B58EAB69B1BDED6B
          5B9BDF8B5BDEC56A29C7AAB69D2DAE9A299AF0A79D7E5D77EF5D587CB875EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD9}
      end
      object Image_MeeraT: TQRImage
        Left = 691
        Top = 75
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1828.270833333333000000
          198.437500000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765F63E0000FFD8FFE000104A46494600010201004800
          480000FFE1076B4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A33390000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000063D00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F5549249252924C9D252C924B1
          7A27D68C6EAB9D9DD39D53B173702EB6BF4DE645B5D6FF0047ED38EF86FA8CFA
          3EB33FED3BDFEF414D8EA3D7F0BA6753E9DD3B2E58EEA86C663DBA6C1633D3DB
          4BE4FD2BFD5DB4FF00C22D35CB7D60E978DF587AEB7A5DC66BC7E9F79B5C049A
          ACC9B31C615A3F35B733EC76DD57FC5ABDF547AAE4F52E8E06740EA58363F0BA
          801FE9E83E9BDFC37F9F67A77FB7FD2A56A76D324924A524133DEC63773DC1AD
          D04930249809D25293A64925293A64E929FFD0F54292749252C9D24C82953DBE
          E5C0E3FD5739FF005EFADBB2065636250DAEEE9F91539F57A77E432B39591856
          FF0037EA3DCCB1B7FB6CAEDFF0EBBED09F824805343A4745C4E914D95D0EB2EB
          6F79B7272AF76FBADB0E9EA5D6437E8B7D8C6318CAD8B15F6D5D0FEBC3DF63C5
          787F58315D6BCB8E8DC9C06FE95FFBB5D6EC07EEB3F9752DBCCEB9D1F09FE964
          E654CBBFD087075A7FAB8F5EFB9DFE62E1FF00C66B2CEBDD3707EC98B7065399
          5B0E4645668AE2FF00D037DD7BABC96D6EB0D5BDFF0067D892556FD7DEBBD67A
          08B7A1FA34F53BF29FB31E8032B26BC261DBF69B30FF0049B6DF57F4767A95FB
          E9FD2D152E8F21BD7BAF57557857DDD1B16997BF36CA8D7917DCCFE8FE9E15C7
          7D3D3FD56FAD935E57A7764B3F56FE65F6DAAC6274DEB75D0DC7A0E1747C7606
          B5B4E256EC8700D1B7DB917FD92AFF003F06C47FF9BF4DA08CECBCBCDDDA9165
          C6B6FF00DB385F65ABFE825AA9E73AF7D5FF00DB59184FFAE19B89878F881DBA
          9C7BDCD6DEE25A7F9BCC633ECBF47E9D2FB723D37FA3EB7F845A9D33271306DB
          9BD28F50EA58B76D35636D73E9A8B46C77D8F3BA87A0CF42CF6FE83ED96D557F
          82F496C61F48E97827762625343E237B18D0E3F1B237B95C4690E51C9FAC77C8
          A70F1F0DBD9F9369B1FF00DAC7C56FA7FF00B38961E175F6F51F5F37A8B2DC36
          D503169A1B5875A499B1EFB1D916FA75B3F9B632DF7FE7AD5599674BCEFDB4CE
          A74F50B851B3D3B7A73E0D047FA4AB686BEBBBF3B77E93FEDB4A94E9A49248A9
          FFD1F554924C9294924920A72BA855F59AFBACAB02FC4C1C681B325EC7E45DC7
          BBF57DD8B457B5FF00F0B90A8D3F542EBDEDB3AEF58CDEAAE021F4070C5C577E
          EEFC3C2F4F76D8FF0009758BA44C9529AF87D3B0302BF4F0B1AAC567EED2C6B0
          7FD00D58DFE30A9F5BEA6F5300ED7555B6E6BBB8752F65EDFF00CF6BA1553ABE
          0B7A8F4ACCC0771974594CF87A8D7573FD9DC929B55BC595B6C6F0F01C27C089
          52585F53BAD51D53A2E3D66C9EA1855574751A5D22CAEF6034DADB98EF735CEB
          69B56EA214A4924925292492494A49327494FF00FFD2F55497CAA924A7EAA497
          CAA924A7EAA4DDD7CAC92054FD5292F9592494FD35D3BFA5F51FE89FCF8FE8DF
          CEFF003557FCA3FF0076FF0077FEEB7A0B417CAA92414FD5492F9552454FD529
          2F9592414FD529D7CAA92414FF00FFD9FFED0C0850686F746F73686F7020332E
          30003842494D0425000000000010000000000000000000000000000000003842
          494D03ED000000000010004800000001000100480000000100013842494D0426
          00000000000E000000000000000000003F8000003842494D040D000000000004
          000000783842494D04190000000000040000001E3842494D03F3000000000009
          000000000000000001003842494D040A00000000000100003842494D27100000
          0000000A000100000000000000013842494D03F5000000000048002F66660001
          006C66660006000000000001002F6666000100A1999A00060000000000010032
          00000001005A00000006000000000001003500000001002D0000000600000000
          00013842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842
          494D0408000000000010000000010000024000000240000000003842494D041E
          000000000004000000003842494D041A00000000034900000006000000000000
          00000000003C000000960000000A004D00650065007200610020004800610064
          0061000000010000000000000000000000000000000000000001000000000000
          0000000000960000003C00000000000000000000000000000000010000000000
          000000000000000000000000000010000000010000000000006E756C6C000000
          0200000006626F756E64734F626A630000000100000000000052637431000000
          0400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000
          000000000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000
          9600000006736C69636573566C4C73000000014F626A63000000010000000000
          05736C6963650000001200000007736C69636549446C6F6E6700000000000000
          0767726F757049446C6F6E6700000000000000066F726967696E656E756D0000
          000C45536C6963654F726967696E0000000D6175746F47656E65726174656400
          00000054797065656E756D0000000A45536C6963655479706500000000496D67
          2000000006626F756E64734F626A630000000100000000000052637431000000
          0400000000546F70206C6F6E6700000000000000004C6566746C6F6E67000000
          000000000042746F6D6C6F6E670000003C00000000526768746C6F6E67000000
          960000000375726C54455854000000010000000000006E756C6C544558540000
          00010000000000004D7367655445585400000001000000000006616C74546167
          544558540000000100000000000E63656C6C54657874497348544D4C626F6F6C
          010000000863656C6C546578745445585400000001000000000009686F727A41
          6C69676E656E756D0000000F45536C696365486F727A416C69676E0000000764
          656661756C740000000976657274416C69676E656E756D0000000F45536C6963
          6556657274416C69676E0000000764656661756C740000000B6267436F6C6F72
          54797065656E756D0000001145536C6963654247436F6C6F7254797065000000
          004E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C65
          66744F75747365746C6F6E67000000000000000C626F74746F6D4F7574736574
          6C6F6E67000000000000000B72696768744F75747365746C6F6E670000000000
          3842494D041100000000000101003842494D0414000000000004000000073842
          494D040C0000000006590000000100000080000000330000018000004C800000
          063D00180001FFD8FFE000104A46494600010201004800480000FFED000C4164
          6F62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C0808
          0809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C
          110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B
          0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C
          0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0
          0011080033008003012200021101031101FFDD00040008FFC4013F0000010501
          010101010100000000000000030001020405060708090A0B0100010501010101
          010100000000000000010002030405060708090A0B1000010401030204020507
          060805030C33010002110304211231054151611322718132061491A1B1422324
          1552C16233347282D14307259253F0E1F163733516A2B283264493546445C2A3
          743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F5
          5666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100020201020404
          0304050607070605350100021103213112044151617122130532819114A1B142
          23C152D1F0332462E1728292435315637334F1250616A2B283072635C2D24493
          54A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5
          E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C03010002
          110311003F00F5549249252924C9D252C924B17A27D68C6EAB9D9DD39D53B173
          702EB6BF4DE645B5D6FF0047ED38EF86FA8CFA3EB33FED3BDFEF414D8EA3D7F0
          BA6753E9DD3B2E58EEA86C663DBA6C1633D3DB4BE4FD2BFD5DB4FF00C22D35CB
          7D60E978DF587AEB7A5DC66BC7E9F79B5C049AACC9B31C615A3F35B733EC76DD
          57FC5ABDF547AAE4F52E8E06740EA58363F0BA801FE9E83E9BDFC37F9F67A77F
          B7FD2A56A76D324924A524133DEC63773DC1ADD04930249809D25293A6492529
          3A64E929FFD0F54292749252C9D24C82953DBEE5C0E3FD5739FF005EFADBB206
          5636250DAEEE9F91539F57A77E432B39591856FF0037EA3DCCB1B7FB6CAEDFF0
          EBBED09F824805343A4745C4E914D95D0EB2EB6F79B7272AF76FBADB0E9EA5D6
          437E8B7D8C6318CAD8B15F6D5D0FEBC3DF63C5787F58315D6BCB8E8DC9C06FE9
          5FFBB5D6EC07EEB3F9752DBCCEB9D1F09FE964E654CBBFD087075A7FAB8F5EFB
          9DFE62E1FF00C66B2CEBDD3707EC98B70653995B0E4645668AE2FF00D037DD7B
          ABC96D6EB0D5BDFF0067D892556FD7DEBBD67A08B7A1FA34F53BF29FB31E8032
          B26BC261DBF69B30FF0049B6DF57F4767A95FBE9FD2D152E8F21BD7BAF575578
          57DDD1B16997BF36CA8D7917DCCFE8FE9E15C77D3D3FD56FAD935E57A7764B3F
          56FE65F6DAAC6274DEB75D0DC7A0E1747C7606B5B4E256EC8700D1B7DB917FD9
          2AFF003F06C47FF9BF4DA08CECBCBCDDDA9165C6B6FF00DB385F65ABFE825AA9
          E73AF7D5FF00DB59184FFAE19B89878F881DBA9C7BDCD6DEE25A7F9BCC633ECB
          F47E9D2FB723D37FA3EB7F845A9D33271306DB9BD28F50EA58B76D35636D73E9
          A8B46C77D8F3BA87A0CF42CF6FE83ED96D557F82F496C61F48E9782776262534
          3E237B18D0E3F1B237B95C4690E51C9FAC77C8A70F1F0DBD9F9369B1FF00DAC7
          C56FA7FF00B38961E175F6F51F5F37A8B2DC36D503169A1B5875A499B1EFB1D9
          16FA75B3F9B632DF7FE7AD5599674BCEFDB4CEA74F50B851B3D3B7A73E0D047F
          A4AB686BEBBBF3B77E93FEDB4A94E9A49248A9FFD1F554924C9294924920A72B
          A855F59AFBACAB02FC4C1C681B325EC7E45DC7BBF57DD8B457B5FF00F0B90A8D
          3F542EBDEDB3AEF58CDEAAE021F4070C5C577EEEFC3C2F4F76D8FF0009758BA4
          4C9529AF87D3B0302BF4F0B1AAC567EED2C6B07FD00D58DFE30A9F5BEA6F5300
          ED7555B6E6BBB8752F65EDFF00CF6BA1553ABE0B7A8F4ACCC0771974594CF87A
          8D7573FD9DC929B55BC595B6C6F0F01C27C08952585F53BAD51D53A2E3D66C9E
          A1855574751A5D22CAEF6034DADB98EF735CEB69B56EA214A492492529249249
          4A49327494FF00FFD2F55497CAA924A7EAA497CAA924A7EAA4DDD7CAC92054FD
          5292F9592494FD35D3BFA5F51FE89FCF8FE8DFCEFF003557FCA3FF0076FF0077
          FEEB7A0B417CAA92414FD5492F9552454FD5292F9592414FD529D7CAA92414FF
          00FFD9003842494D042100000000005500000001010000000F00410064006F00
          620065002000500068006F0074006F00730068006F0070000000130041006400
          6F00620065002000500068006F0074006F00730068006F007000200037002E00
          3000000001003842494D04060000000000070008000000010100FFE112486874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061
          636B657420626567696E3D27EFBBBF272069643D2757354D304D704365686948
          7A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C
          74657273206573633D224352223F3E0A3C783A7861706D65746120786D6C6E73
          3A783D2761646F62653A6E733A6D6574612F2720783A786170746B3D27584D50
          20746F6F6C6B697420322E382E322D33332C206672616D65776F726B20312E35
          273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F
          6D2F69582F312E302F273E0A0A203C7264663A4465736372697074696F6E2061
          626F75743D27757569643A66636232646266652D656462302D313165312D6134
          36352D616264666631376133613537270A2020786D6C6E733A7861704D4D3D27
          687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F27
          3E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A646F6369
          643A70686F746F73686F703A33636235326163362D656462302D313165312D61
          3436352D6162646666313761336135373C2F7861704D4D3A446F63756D656E74
          49443E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A52
          44463E0A3C2F783A7861706D6574613E0A202020202020202020202020202020
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
          202020202020202020202020202020200A3C3F787061636B657420656E643D27
          77273F3EFFEE000E41646F626500644000000001FFDB00840001010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010102020202020202020202020303030303030303030301010101010101
          0101010102020102020303030303030303030303030303030303030303030303
          0303030303030303030303030303030303030303030303030303FFC000110800
          3C009603011100021101031101FFDD00040013FFC401A2000000060203010000
          0000000000000000070806050409030A0201000B010000060301010100000000
          0000000000060504030702080109000A0B100002010304010303020303030206
          0975010203041105120621071322000831144132231509514216612433175271
          811862912543A1B1F02634720A19C1D13527E1533682F192A244547345463747
          63285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A4849
          4A58595A6768696A767778797A85868788898A9495969798999AA4A5A6A7A8A9
          AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6
          F7F8F9FA110002010302040403050404040606056D0102031104211205310600
          22134151073261147108428123911552A162163309B124C1D14372F017E18234
          259253186344F1A2B226351954364564270A7383934674C2D2E2F25565755637
          8485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696
          A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969
          798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C0301000211
          0311003F00DFE3DE86053AF75D7BD30621829A1A60F5EEBC3FE29EEA80A92A72
          0019AF1E3C47AFCFCFF2EB7D77EEE5800589C0EB5D78FBD31A2935EBDD712458
          7F8FD3FA7F8FB4F34881501A166E1E869C7E5F975600F5C016FF005375FF007D
          C5BE9ED12CD70B8FA70D6F4A57FC94E1D5A83D73D167F929F2FBA2BE230E9EAB
          EFBDD726C7C1777F6EEDEE8FDA1BA6AE825976C50760EEDA2C9556DAA2DD9994
          614FB6719999B16F4D1D6545A9D6A5D16464525C3F35D8B7913C4D4518134001
          D34A54B66B400F0009C7EDB470B4B5094A8F534AF4673DAD2C0AB693FE6E99EB
          DFEDBDD14D16AD434FF51FF557ADF5D6A1FD6DFEBF1FEDBFAFBAADC45DAACC14
          F9038FD9EBF975EA1EBDF502DF4FF8A7BD3132468235EDA8E3C6808EB7C09AF5
          D1E14DFF00E35FF1AF749069B690B6452943C38FF2FF00079F5E1C475C23BD80
          FA0B1FE9FD4FE7DA2DB9A508884154D048C03E6735E3D59E99EB2DC7D3FAFB34
          3220658C9258FF002FB7D3AA53CFAF71EED451C7853CFF003EB5D71620017BFF
          0085BDA6B99228D503AB53CA95FF0057EDFF003F56009EB9037FF8A7B7A37D4A
          4835F97FABC8F5A23AF5F9B7FBC7E7DEF58F1346A15A5695CF5EA62BD7FFD0DF
          E3DEA9E7E7D7BAF7BF7CFAF75C0117622E7E9CFE0DAFF4FF005BDA386488B5C4
          CBA8F004D30695E14F4AD0D69F3EAC41C0EB95FF003ED4EB50A18F03FCBFCDD6
          BAF7FBD7BDE055AA34FF00A8FD9D6BA875B5B4D8DA2ACC8D6CA21A3A0A6A8ACA
          A9F4BC822A5A589E79E52B1ABC8C238909B2824DB804FB426748A39A7928516A
          6A0D70013FEA03F9F57A12401C7A083E3F7C8EE8BF953D6B8EEE0F8EFDA3B47B
          77ADF295F94C453EEAD9D925AFA2873384AA6A2CCE13254F224190C367315523
          4D451564305543A94B200CA4BB697293C4195892295A820E4546080781C633EA
          78F5E7428D423AAA2FE75DF1DF6A7CC98FE06FC47DF3453E4765774FCB1AC4DE
          5152C2D2D4D1ED6DADD27D9D90C866A9658CABD1D7612AEB29AA29A60CBE3A84
          46BD87B2CDCA68DDED8ADC5232C54D0F1AE906B4F4AFECFB7A7E0A2ACA4D2B41
          C7F3E9EFF92F7C92ED0DC7D71DC7F047E5065E5CA7CB5FE5D5BF62E89DF79DAF
          7B5776C7521A57A9E88EF0A6F311515D4DBD7644090D4D469F5D65233C875CB6
          F6E58CDA6336EC0E3295E200342BF8A9A1B035312411E9D51D432ACA1AA4FC5F
          26FF002D7E5D5D502793F5FF005AFF00EFAFED5C73395776209A8E15C7FB3EA0
          74D91D726B5B9E7FE2BED4CE6331D1803538FB7CBF3EAA2B5EBCA08F6DDBABA2
          85D240F4F2FDBF6797EDEB673D723FE3F4F6A5829560E015F9E7AAFD9D703A17
          FA0B7D3EBF9FF0F6899AD200B4A295C002A38FC80CD7ECEADDC7AEEC0D8FD7FA
          7F4F6A024729597512388F41F975AA918EBD7E40FF007DFEDBDF9A450EB19CB7
          A8F2FCB2457F67CFAF5315EBD6B5EC393C91F4BDFF00E27DB7A3407312558D49
          0715AFCFD47FABE5BFB7AE23FC38FEA3EA4FFB7F6DC20290D190053201249FDB
          4FF39EBC7E7D73F6B2BE7424FA7A75AEBFFFD1DFDCFD3DD2460A84B03A781A7C
          FCFAD8EBD70471C823DD3524B092946465F5E35F2EBDC0E7AE02FF004E05AD60
          3DA64D75F058AAE9A69038E3FD5F9E7F2B638F5C97E9FEC4FB5102D101E3524F
          553C7AE9BE9F5F6DDDB0F0E9AA809A1FF370F3F9D3ADAF1EA2D4D3C7554F3D34
          C35C3510CB4F32FF00AA8E7468E41F9FAA31F658F0EB8D82BD4641C7F10A5789
          F235F9E6983D5ABD7CFEBF941E73E75FC71FE603F3AFA5FE0CF4AED5EC4DB5F1
          8F78EE5C5FCBCE82DD7DAD55B4B17F2533793EE4DF34DB5BB33A6B72EE45ACD8
          9D51DCDB6365B52D2AD3D5CD4F88CF5142E956D14AB14D1B0CA7C45BC47075A6
          2AA6800C508F8AB5C29071438606856B3AF80237B7D2898A8CE78FF315C79F1C
          75B4EFC58EBEF975F223E4D667E657CD2EA2A4F8EF81EB6C567BAFFE1FFC6797
          76EDEDEFBC765E1373AD343BF3B7FB7B706C8DCFB9362D57616F186896828E8B
          1D2CD0E3718B632BCB21609AE3EA51E565B6FD66A11404E9009A6196A4F99341
          DDE5414E93D54E9504E8F9FAF455FE76993E09FF00364F839F3F718F1E17A83E
          5CA0FE5F3F2E2A3CA29F1299BCF4F36E2F8CFBF333A54835941BB22A8C535438
          21295950B25C5ED592DE259D89F1ABA8853AF501890003152B46258F115F2A75
          550C59D13E16A71F2A703FEAF53EBD5DB6F8F90FD11D61D85D69D4BD8DDBFD71
          B1BB37B9AB32341D51B0F756EEC260F74F61D76260FB8AFA4DA787C855C15999
          A8823360B0AB348FE840CFE9F66B1DCDB475498A86AD7CC83534A934200F9923
          F6755D0EC2AA091D13DF8C5FCD77E207CC3F953DE1F11BA0B3FBDF79EFEE81C4
          5765B78EF24D9590A3EA5CB361372D36CEDCB8DD9FBE2798479FAFDB5B9EA451
          5537DB454CF3238A79A708C46DAE92492088C320D75D06A006D2092695A8040A
          8D43B8790EB66365049A5071FF0057F9B8740C67BF9D1FC74DA3F30B21D07BC3
          179BDA9F1CE82A2BBABA5F9DFB844B87F8C30FCAFC454435B99F8E15FD8590A3
          A7DAF8BCC50EDBA9461979EBD31D2E60498C56FB88D8FB60EE33A49237E9B5B0
          18D21C9240C9140715A804035F8B00F5716E4A820F77A1E3FEAFF571EABF7BAF
          F9917F364EFEFE65349F19FF00967F5EFC63DDBF17FAEF31B1325BB7E4157667
          6FF767596EEDAB95C6C392DF13766763F5EF64B4FD49578AAD8DB1D8ADBD8DC5
          55EE4AC91DAAA47483C4A5B96EEE1A3B9935B0643455508DE78249041A939A10
          0003CEA7A7A18610A7EA015FF0F9F95453F3AF9E3ABC7F8A3DF5F223B4EBFB3F
          61FC9DF8A79EF8E1D93D5B97C75343B8309BC283B4BA17B8B6D66D6B9B0DBC3A
          83B329F19B6B2F55285C6BFF0015C1E5F0F8FC9E11E58564F32CAB27B596B35C
          33C897710D74D40A8201CD299AFE542C08A9C014E93CAB103589C95AF03C7FCD
          FE0E8C86FDED0EB3EABC4FF1DECFEC3D8DD6F83BB8FE33BF776E036862AF1AEB
          70323B87218FA325179235F03DBD25DD9C27C0927547A568597501F204E7E540
          7AA2C72382C8848F903D577F74FF00381F86FD43B5E9374E0AA3BA3E40C398DF
          1B57AD36CD37C76E8FEC3EC4C7EF1DFBBDB28B87DABB4F686FEAAC46DEEA6DC5
          9CCD57311053D36E0791A34692DE356605FF005F6C19DA249A5250F11A785788
          9349AFA10A7D06707651C2A1D383E99A7DB4E1F9D3AB3CC655C991C6E3B212D0
          D76265AEA1A4AC97159314AB92C6C9534F1CCF41905A2A9AEA315D46CE639443
          34D10914E8765B3136446912270EC80A0ED3C45479D7CC703D375E38EA6AAE9B
          F37F7E8201006EE2493FEAFF008A1FE1EBC4D7AE5ED4F5AEBFFFD2DFDC80C0A9
          17045883F420F041FF0061EDB744995A375AA91F31C71FEA1D6C120D471EBA55
          08348E00000038B01EDBB7B74B64F0D3E0F2EBCCC58D4F1EBBFF007DFEFBF1EE
          E471AF9D3E671FC80FF67AF75EBDBFA9FF007DF4F75D6630432B13923CEBF2FF
          00357F6F5EE3D71173F82A3FDEEFFE16F6DA179895684A463E7C6BE54A7EDEB7
          81E753D465337DC4A1D6014DE38BC2559CCC65D52F984C85046B185D1A082492
          4DC0B0B9506717734722442D4D34D356A143F8C11402B81415E151D5FF000835
          3ABAAEBF887FCB4BA8FE1CFC9DF9B9F293626EEDE9B8776FCE1EC2C4760EF3C0
          6E37C41C16C9A9C6FF0015AA9F15B5A4A2A1832353455D97CDD44E4D5CB23449
          A225E14B32A8ED4C7F4EC0065008009E156D5C4F1F4E0303AD993B0A6695AFAF
          953AB1C2BFEA40BFF53C7FC6FDBD241DBFA083C52789A8A7F973FF0017D501F5
          38EAA2FF009EDF4947DE7FCA87E6560E08E05DCBB07ABAABBBF62E4A49929A5C
          16F6E91AEA3ECBC2E5A8AADC5E92B221B7258964166D3330FCFB413DBE968DA5
          24C608AD0FAF6B0A63886A91E7C0F4E23815C791FF0038FE7D6B1FF01A93F982
          FF003CAF993B6FF9B56CBDBDD03D37B17E2975760BE35F46557C96C56FAED7C0
          41DAF4BB696A3B1BB8768ED1DA192D974F9EDDD83CAEE3A8AC5FBCAEA7C74725
          4D2C2C64969DA456A6B6F0EDDE179962EF4666515555514553A8302085CB32E9
          AF1181D3825EEA84D40D6809CE789A8F3F403FE2EE1364FC23FE5D1F12B7E6FF
          00DD59EFE611D9F8AEE2EF6DD54BBAFE4CF567C5ADFD87DA186EE4DF52642A72
          5958683A37A436C760F7A75D6D2DC192CAD4495782C0E7A9E9AA4CEFE4661C2E
          E5FDDB2BA482E18C6B169A21D60AD6BF1200B923F153CB87550F3014D0318A91
          522BC32D5FF57E75B37C176E5152EC38BA8BE347F2EBEE7DD9D690D11A4A4C76
          FAD9DD7BF1D7A8EB68A668A69AA32941DD99DC476164DF212B796695F6A56D45
          54B79642CC4B97612D705FE9ED2416EAA281E81589F35C3D69E64E9A7967AA3A
          E2B23039F5A9FF000F4B9DA5B43E690A16C36D2DA3F0D3E26ECF9944D4F85DAB
          86DF3DEF9CA29DD23592596831149F1AB6552D7911DBD0B908945BD5269E5CFA
          6BC7562EB146878855AB1A7027255BFDE47E5D6818D4D02D7E75A7F2A7F97A7D
          3F117786EF78EAFBABE5D7C99DFEFEB12EDEEBFDDB8AF8DDB2238A46577A6A4A
          4E88C3ECEEC0969CD8ADF23B9B253E86D3E4B7BF1DB1A50C67BC9595A9503B16
          9F35A11F6E07CFAF7894605140A7E7D2C3637C24F899D739983746DAE80EB6A8
          DE74F7F17606EEC1C7D87D9372CCECF2764760C9B9F7D4EEEEC4BB3E41998F24
          9B7B78D8DBA16786D518B0A15AD41F434355C7C857CBAABB195744A6A9E873D2
          33E717CEFF0087FF00CBDFAFB6476D7CC4DF69D73B2333BFA83676CCCFAF5DEF
          8DFE68B78E430F96F1C9153EC3DA9BAABB6EA43B7C56AC95D3253C2207784485
          E6589DEB978A05841B532C82A555156A028AD5751005300006A4D280F5688333
          68594257193419F5F97AF90E2719E8E360F378BDCB84C3EE3C1D64791C2E7F17
          8FCDE1F2112C8915762F2B490D763EB22499239963A9A49D1D432AB00DC8078F
          6AE391258E39636AA32820FA822A0E73D51959199185181A1FB474E64DBDFA47
          08A49AD3AD0EBDF8FF0061EF78D1C714EB5D7FFFD3DFE3DFB875EEBA37F7460E
          70B4A50FFB1D7BAE87FB0FEBC7F5FA7FC47B6D17B8B102BC491EA707CFE5D6FA
          F1BFE0F3F8FA7FBEE3DE9CB951E1C956A9A64678FD9503E47EDEBDF68EB8B0E2
          FC9FCDAD6FF917B4B3A3042E198B52B4A53F9D307AB03E5D705D5FA88B1B5F9B
          DBFDE7DA1805CD0CEF085934D4D6B41F3CD070F5A7CBAB1A70071D12EEE1FE63
          DF04BA1770D16CBED2F959D3385DFF0091AD38DC775A62377D16F6ED2C9E4436
          83418EEB0D89FDE5DFD5D59E4F4F8A2C73BDF8B7B5A6FED14C7134ECEE56BDAA
          581FB594155FB0B0FD873A31B8C94A0F9F49B87E63F6CF6347137C76F84BF207
          7B50544CAB4FBDFBC0EDDF8AFD7F2524C17EDF2694BD995157DD5534122B6BD5
          06C8958C435286254161AE669823595B3641A12405AE7ED07E74604F5E65D3F8
          81FDBFE5A749CEC7E86F9B3F267AF37C75A77376D7C78E95D81D85B5B716CDDC
          FB27A83AB329DE59ACAEDDDCF89ACC464A82BFB07BB6A36EED778A4A4AC28C8B
          B1C16E4AC8A6C43724177206370223DA7B464D78804B5699F30DC69407A70341
          451A5ABE753FEAFF00579F545FFF0009C3FE5A9F13F23F047714FD87B777E760
          EF8DB1F267BF3AB3B6B666EEED7EC993A7EAB7A7536FFC96D8A1AF3D2741B971
          9D6D2D455ED35C7B4E6BF19592CACF76623485F25B457EE6E6E2DE3698500A81
          428C0115E26B5247E5E7D3B2CB344A600D48AB5A63FC3C7F21415AD075B5875F
          F54F57F53623F80755F5BEC3EB4C1B1566C36C0DA1B7B6762D99015467C7EDEC
          7E3A95D941FA9527D9A2C11A2A18E2D2C053000207A6734F5CF48F15269D2F74
          8FF58FF51C1F771047860A049EA050FF00ABE5C3AF54FE5D72F6F000569D6BAF
          7BDF5EEBC3FDF7E3DD54102848FC853FCFD7BA68CF6DFC0EEAC45660373E1311
          B8F059248E3C8E133D8DA2CC622BE38A68EA238EB71B9086A28EA923A8852450
          E8C03A861C807DF9802002B51FEAF5EBDC78F5176AED4DB9B1F018FDADB4B114
          981DBB895A84C6622815D28E862A9AA9EB668696377731426A6A5D9501D280E9
          5014002B1C6904612314415F53F3F3A9EB64926A4D4F4A0F76A1C54F77FABFD5
          F975AEBDFD7DD4162CF55ED14A75BEBFFFD4DFE3DE8914CE3AF75EF7EA70EBDD
          70BDFF003716E7FC08FEBED2AC82551A5814A1078608C1AE7CBE5FCBAB529D77
          C7E2DFE27F3EEDD8DFD991A8F1238FCF39FE7D6BEDEB055C32D4D2D553C15735
          0CF353CD0C35B4E94F24F472CB132475504757054D249353BB07512C72465859
          9585C1B4AA64591637A494A7AD0918FD9D7BAA99ED6FE511D7BF26237A7F97FF
          002D3E71FC90C34E9514F53B12A7BEA7E87EA9ABA59998C70D775AFC60DBFD31
          B7B2924284289AB4554AC072D624142DB75B060F3333B7052DDFA49A654BEBD3
          F953A716575C2E3ECC74607E2BFF002CAF80BF0A64A5AAF8C3F143A6BAAB3F47
          4694037CE3369D2E5FB26A29D56452B5BD91B90E637C569944CFACC95EDAB511
          F4E3DD12197EAB4862C8BE6C4923EC185A0A710B5A9C1EAAD42CD2B13ADB8E71
          FB38747B00E79E7FDF7FAFECC2388AB317604F971C7DA49CFEC1D549F4EB8B5B
          8FA5CFF5FE97FF006DED3DCF84AC82A031F5F3151EA29C69E63FCD65AF546FFC
          9B09DB9DBDFCE1BAAA8E8E4A3C06C5FE67BDA39BC223A491A85EC7EBFEBEDD39
          048525589CC5F78C5C304D0C642559D6C7DA4DA51D25BA123D5F4C7F6FE3E3D3
          D286F02076072CFF00E11C07A75799ECE81AD7A4DD7BDEFAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75D13C7F5F6C4CEAA8C4AEAA797FABEDEB6075EFA0F76
          D42345C71F97AFC875EE3D7B8B7F85BFDE3DDBB3457F053F975AF3EBFFD5DFE3
          DEA9520FA75EEBA1F9F7456D45C2F007E7C7FCDD6FAE3A6DA88FAB5AFF00E3ED
          39B7584CF2C2BFA92115F9F97E5C7ADD6B40780EBB038FA589FE9EEF146445A5
          942B9E3A71FEAFF2F5A273D7638E38F6E251485246AF975EEBA26E38B5B9FF00
          1FA7BA3B9756D214AE7E7C38E3EDEBDD74AB637B9FF5BFDF7F4F6D5BDB04712E
          A6C8382452873C07A7DBD6C9AE3AE57FF78F6FB4AA0914E1FEAC7D9D6A9D70B1
          3CFD45FE96FAFF00ADED26869099186A4AD7491507ECCF963E5F9F56E18F3EA8
          136EF737567C09FE731F2CF697776EDDBDD43D6BFCC1BA9BE3DF7374F6E7DDF9
          56C7E077C779F5CD63745EFAD9185ACA80D48BBBABE9B3185A9FB20EB2C9132C
          9A749520B9278ECB72BA69350898124E92454D187006B4CAD4573F9F4FD1A4B7
          50ABF0B7A7AFCFABFF00F620041F2CF497AF7BB75EEBDEFDD7BAF7BF1FB3AF75
          D1BFE3DB4E64C685CD7D470EB78EBC781FF14F76760A84B034F957FC9D6875C4
          9BFE0FF85C71F8F691DC4C546823D0918F2E3C3F6547ECEAC053AE5707FC6DFE
          F1FF001BF6A55E390D050919FB3FCC7F9F5AC8EBBF6EF5AEBFFFD6DFE3F3EEBD
          BA8D3E2A7FABE55FE7D7BAEBFD6FF7DFF1BF756AD0E8E35CFAFCFF003F4FF375
          BEBC2F617FAFE7DEA2D7E1278BFDA79FDBD78D2B8E1D7BDDBB686BC2BE5FEAFD
          BD6BAF717FC5FDF868D674D35533EBD6F3D78FFBCDFF00DF5FFC3DD1E9F86BAA
          BE5FE5F97DBD7BAE034EA37B5EFC5BFD6FF7BB7B451FD37D549AF478BABB69F6
          7F869C7F2EAC6BA47A75C8FD47D7EA7E9FF136FC7B532FF691D7569A9E1F679D
          334FF62BD68703D7BFAFF4FF007DF4F766AD25AD74797AFE5FEAFB3AD7A744D7
          E587FB237FC73E37FF00B393FE827FBCBFE9C36EFF00B2B7FE993FBB9FC73FD3
          D693FC07FD167F18FF002FFEF669D37FB5F4DBC7E5FF0075FB26B8D1E09F1F5E
          8F0F3C7D7FA3F3F5C57867A7D35FE0F5FF003FF92BD1C9F571F4FA7FBCDBD9AA
          FD55129A74E9FCEB4C7F3E3F9F4CF6E7AE7CFB55DF4F2AD3AAF5EF7E3AA9DB4A
          F5EEBAE6DFE3FE1FF1BF743E2E835A6BF97FB3D6F15F975D0BDF9FF616FF008D
          FBAA6BF10F894AF952BF2AF1FF00275EF2C75E7FA7FBDFFC6BDB777FD8B52B4A
          8AFD9F2F9FA533C3ADAF1EBA37FF001D36FC7D6FFE3EDB93C4A8F8BC0D1F878D
          71C7AF0A7E7D796DC7FB1B7FAD717FF79F7BB4D144D35A51A9F65457F2AD29F2
          EBCD5EB90BDCDFFD87D7E9C7D7FC7DA85F13C4935538E38D34E38F956B5FE5D6
          B141D7FFD9}
      end
      object Image_SanjeetPanditT: TQRImage
        Left = 683
        Top = 74
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1807.104166666667000000
          195.791666666666700000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676503480000FFD8FFE000104A46494600010201004800
          480000FFE109C94578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A30383A3234203131
          3A34353A33310000000003A001000300000001FFFF0000A00200040000000100
          000096A0030004000000010000003C0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          0000010002000002010004000000010000012602020004000000010000089B00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080033008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292547AB75AE97D1
          B17ED5D4B21B8F54C3776AE7BBFD1D35B66CB6CFE456D5CF7EDBFAE7D75A4F43
          E9ECE9184676E7F539F55CDFDFA7019EEAFF0092EBF7D56204A9EB9CE6B1A5CE
          21AD6892E3A00078A4D735C25A411E235E755E334D1D4BAAFD60C01D6B2323AE
          749EA96655586DB2D763D57BB187F4865343B6E3E33EDFE657A2FD4DFAA8CFAB
          98D90E7D85F959CF165ED0E73ABAC3770A71E8F53DEE6535BBD3F55FFA4B52BD
          52F429D32495A1749327454A407E7E0D794CC3B322A6655A26BC773DA2C70D75
          6544FA8FFA2E5CBFD79EB9D4BA7750FABD8B8166C6E767B1B9019AB9EC63AB6B
          A8FF008B7FABFA55D03FA4613FACB3AB3A8ACE55741A45E44D80170780DFFA7E
          EFA7EF42D4AC5EB7D372FA9E674AA2DDD99D3C30E4D70440B06F66D711B5FEDF
          DC57D79D752EB98FF573EBE759EA16D4FC97DB838ECA68A5A4B9F73CB2BAA8DD
          EEDBEA7A6BAAE8B9BF5AADC9D9D6FA7518D45B5BACAECC7BBD435B81686E2E4B
          1C3DF63D8E73FD6C777A5EC4AD34EDA49248A1FFD0F5549249253CBFD67FAB7D
          5737AC74FEBBD22CC676674F6BEB6E367B5CEC7F77B85F57A3FA4AB258EFCFFF
          008AFF0045FA4C9EBBD73EB6F567DDF56707A532BCBF4D8EEA575394D70AE9B2
          7750DB9D531B8D9196C6BBD3F51B659E8FE93D1FF095F4FF005B3AA64748FAB9
          9FD4B15A1D918F517552240712181EE6FE77A7BB7AC1FAABD73EAA745E90D665
          F5BC5BFA8E49391D4323D50E7597BF577BBE939B537F435FF5134A5C4FAC995D
          6B0B37EAB58FE82706AE9F9228C5A2AC9AEEDE5ED6575E256F86B9BB9957D3B1
          6FD9FE315B80F6FEDDE8BD43A5D25C1AFCA7D7EA50D9FA3BAEAFE97FD6DBBD62
          FD7EFAE5F56B371FA7FD832C65E474FEA18F94E1535C5A18DDDBFF004BB7D3FC
          EFDE5D3F50BBAFF5EE9F66160619E975654D76E5E7069736A7696FA780DF51CF
          B9EDF6EDBFD2AD252DD67EBFFD5CE958D45ADB8E75F96C6BF1317146FB2C6BFD
          AC77FC1B777FA44BEAA7D70BBAF5B9D46674EB3A5DF8018E7B2D76EF6D9BCB37
          EE652FAACDACFA0E62E7BA27F8B9FAC9D1EFF4B13A96263E38B379EA0CA3D4CD
          7B40DADA76E57A94515FF22BB3F97FA45BDD1BEA355D17AD5BD470B3EF38F94C
          8CDC5B836C375A0B9EDBDF91ED737E9FF36CAFFF0003FD1A5AAB473F17FC6C74
          6C9A1B90CC1CD7D5582ECDB2AABD466302E732A76458D2DFE776EF4DF5A3EBD6
          0646261F4EFABFD4A96E4F5676C39C1C231A91ADD758DFA75E46DF65553FD3B7
          FB6BACE99D1FA5F49A5F474EC6663576BDD6D8D60FA4F719739EE74B9DFF007C
          FA0AB65FD53FAB398C6B323A5E2B9AC76F6C54D69DC79D6B0CFA5F9E8D153E75
          81F54BACE3F59AFAB7406DBD5BA774AB43EAA73AE151C9B9CD8C9BB0491E9358
          D76C7FAD76CFD27FA6F4D75DF567A77D6EC7FAC5999BD6AC6BF1B3B159639959
          1E9D57EF219894B25CF77D9F1FE9DDFE13F96B672FEB07D5BE90C14E4E762E20
          A84368DEC6B8003E8B286FBFFCD62CA1FE30BA5E4903A36167F5799F7E2E3B85
          623F7AEC9F41A868841D23A29C9FAEDD77AA67D25C28B71DB866C1EDF65236DB
          5CFB5DE9EFFF00B73F96BB05CC9EA9F5EF32061F46C6E9C267D4CFC9F5091FF1
          182D2E63BFEBCACF44C5FAE0327ED1D7B3B15D5069030F0EA3B4B89F6BDD917F
          E97F47FB8D6A297752492450FF00FFD1F554924925317B5AF6963C0735C08734
          89041E410AA0E89D143B70C0C60E1C1F46B9FF00A859BF58BEB0F55E9D954E07
          49E8F7F53CBC8617B2C04578ED83B36DB90EF6B5FF00E67E62CF38BFE337A88F
          D26660745638820515BB22D68FDD77AFBA873BFA885F82997F8CEC76FF00CC6C
          F14B037D134BD8D680008BAADD03FABB96E750FAC5D0BA581FB433F1F19C46E0
          C7D8D0F23C5B54FA8EFF003561D9FE2FAACEADEDEB5D63A8F5236B48B186EF4A
          993F9D5E254DD8CF77BB6FE9169748FA9BF577A5514B29C0C77DF53407653AA6
          9B1CE006EB0D967A8F6EF8DDF4D2534C7D7FE939276F48C5CDEB0492376263BF
          D3047EFDF91F67A9BFE7243AAFD7BCB818DD0F1B01B322CCECA0F91FF15855BD
          D5BBFB6BA688D070124B553CD59D3BEBDE6BB6E4F55C4E99483AFD8287596387
          EE9B739CE6B3FAECA947FE60F4EBDD3D53A8752EA8D3CD59394F15FF00DB78DF
          675D4264A94E5607D53FAB5D38B5D87D331AA7B7E8D9E9873C7FD7ACDF6FFD35
          AB11A0E02749152C9D249252C9D249253FFFD2F55497CAA924A7EA94EBE55492
          0A7EA9497CAC920A7EA94EBE554920A7EAA497CAA922A7EAA497CAA924A7EAA4
          97CAA924A7EAA497CAA924A7FFD9FFED0E6E50686F746F73686F7020332E3000
          3842494D0425000000000010000000000000000000000000000000003842494D
          03ED000000000010004800000001000100480000000100013842494D04260000
          0000000E000000000000000000003F8000003842494D040D0000000000040000
          00783842494D04190000000000040000001E3842494D03F30000000000090000
          00000000000001003842494D040A00000000000100003842494D271000000000
          000A000100000000000000013842494D03F5000000000048002F66660001006C
          66660006000000000001002F6666000100A1999A000600000000000100320000
          0001005A00000006000000000001003500000001002D00000006000000000001
          3842494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E80000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D
          0408000000000010000000010000024000000240000000003842494D041E0000
          00000004000000003842494D041A000000000351000000060000000000000000
          0000003C000000960000000E00530061006E006A006500650074002000500061
          006E006400690074000000010000000000000000000000000000000000000001
          0000000000000000000000960000003C00000000000000000000000000000000
          010000000000000000000000000000000000000010000000010000000000006E
          756C6C0000000200000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E670000009600000006736C69636573566C4C73000000014F626A63000000
          01000000000005736C6963650000001200000007736C69636549446C6F6E6700
          0000000000000767726F757049446C6F6E6700000000000000066F726967696E
          656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E65
          72617465640000000054797065656E756D0000000A45536C6963655479706500
          000000496D672000000006626F756E64734F626A630000000100000000000052
          6374310000000400000000546F70206C6F6E6700000000000000004C6566746C
          6F6E67000000000000000042746F6D6C6F6E670000003C00000000526768746C
          6F6E67000000960000000375726C54455854000000010000000000006E756C6C
          54455854000000010000000000004D7367655445585400000001000000000006
          616C74546167544558540000000100000000000E63656C6C5465787449734854
          4D4C626F6F6C010000000863656C6C5465787454455854000000010000000000
          09686F727A416C69676E656E756D0000000F45536C696365486F727A416C6967
          6E0000000764656661756C740000000976657274416C69676E656E756D000000
          0F45536C69636556657274416C69676E0000000764656661756C740000000B62
          67436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F7254
          797065000000004E6F6E6500000009746F704F75747365746C6F6E6700000000
          0000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F6D
          4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F6E
          6700000000003842494D041100000000000101003842494D0414000000000004
          000000053842494D040C0000000008B700000001000000800000003300000180
          00004C800000089B00180001FFD8FFE000104A46494600010201004800480000
          FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC00011080033008003012200021101031101FFDD00040008FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292547AB75AE97D1B17ED5D4B21B8F
          54C3776AE7BBFD1D35B66CB6CFE456D5CF7EDBFAE7D75A4F43E9ECE9184676E7
          F539F55CDFDFA7019EEAFF0092EBF7D56204A9EB9CE6B1A5CE21AD6892E3A000
          78A4D735C25A411E235E755E334D1D4BAAFD60C01D6B2323AE749EA96655586D
          B2D763D57BB187F4865343B6E3E33EDFE657A2FD4DFAA8CFAB98D90E7D85F959
          CF165ED0E73ABAC3770A71E8F53DEE6535BBD3F55FFA4B52BD52F429D32495A1
          749327454A407E7E0D794CC3B322A6655A26BC773DA2C70D756544FA8FFA2E5C
          BFD79EB9D4BA7750FABD8B8166C6E767B1B9019AB9EC63AB6BA8FF008B7FABFA
          55D03FA4613FACB3AB3A8ACE55741A45E44D80170780DFFA7EEFA7EF42D4AC5E
          B7D372FA9E674AA2DDD99D3C30E4D70440B06F66D711B5FEDFDC57D79D752EB9
          8FF573EBE759EA16D4FC97DB838ECA68A5A4B9F73CB2BAA8DDEEDBEA7A6BAAE8
          B9BF5AADC9D9D6FA7518D45B5BACAECC7BBD435B81686E2E4B1C3DF63D8E73FD
          6C777A5EC4AD34EDA49248A1FFD0F5549249253CBFD67FAB7D5737AC74FEBBD2
          2CC676674F6BEB6E367B5CEC7F77B85F57A3FA4AB258EFCFFF008AFF0045FA4C
          9EBBD73EB6F567DDF56707A532BCBF4D8EEA575394D70AE9B27750DB9D531B8D
          9196C6BBD3F51B659E8FE93D1FF095F4FF005B3AA64748FAB99FD4B15A1D918F
          517552240712181EE6FE77A7BB7AC1FAABD73EAA745E90D665F5BC5BFA8E4939
          1D4323D50E7597BF577BBE939B537F435FF5134A5C4FAC995D6B0B37EAB58FE8
          2706AE9F9228C5A2AC9AEEDE5ED6575E256F86B9BB9957D3B16FD9FE315B80F6
          FEDDE8BD43A5D25C1AFCA7D7EA50D9FA3BAEAFE97FD6DBBD62FD7EFAE5F56B37
          1FA7FD832C65E474FEA18F94E1535C5A18DDDBFF004BB7D3FCEFDE5D3F50BBAF
          F5EE9F66160619E975654D76E5E7069736A7696FA780DF51CFB9EDF6EDBFD2AD
          252DD67EBFFD5CE958D45ADB8E75F96C6BF1317146FB2C6BFDAC77FC1B777FA4
          4BEAA7D70BBAF5B9D46674EB3A5DF8018E7B2D76EF6D9BCB37EE652FAACDACFA
          0E62E7BA27F8B9FAC9D1EFF4B13A96263E38B379EA0CA3D4CD7B40DADA76E57A
          94515FF22BB3F97FA45BDD1BEA355D17AD5BD470B3EF38F94C8CDC5B836C375A
          0B9EDBDF91ED737E9FF36CAFFF0003FD1A5AAB473F17FC6C746C9A1B90CC1CD7
          D5582ECDB2AABD466302E732A76458D2DFE776EF4DF5A3EBD60646261F4EFABF
          D4A96E4F5676C39C1C231A91ADD758DFA75E46DF65553FD3B7FB6BACE99D1FA5
          F49A5F474EC6663576BDD6D8D60FA4F719739EE74B9DFF007CFA0AB65FD53FAB
          398C6B323A5E2B9AC76F6C54D69DC79D6B0CFA5F9E8D153E7581F54BACE3F59A
          FAB7406DBD5BA774AB43EAA73AE151C9B9CD8C9BB0491E9358D76C7FAD76CFD2
          7FA6F4D75DF567A77D6EC7FAC5999BD6AC6BF1B3B1596399591E9D57EF219894
          B25CF77D9F1FE9DDFE13F96B672FEB07D5BE90C14E4E762E20A84368DEC6B800
          3E8B286FBFFCD62CA1FE30BA5E4903A36167F5799F7E2E3B85623F7AEC9F41A8
          68841D23A29C9FAEDD77AA67D25C28B71DB866C1EDF65236DB5CFB5DE9EFFF00
          B73F96BB05CC9EA9F5EF32061F46C6E9C267D4CFC9F5091FF1182D2E63BFEBCA
          CF44C5FAE0327ED1D7B3B15D5069030F0EA3B4B89F6BDD917FE97F47FB8D6A29
          7752492450FF00FFD1F554924925317B5AF6963C0735C0873489041E410AA0E8
          9D143B70C0C60E1C1F46B9FF00A859BF58BEB0F55E9D954E0749E8F7F53CBC86
          17B2C04578ED83B36DB90EF6B5FF00E67E62CF38BFE337A88FD2666074563882
          0515BB22D68FDD77AFBA873BFA885F82997F8CEC76FF00CC6CF14B037D134BD8
          D680008BAADD03FABB96E750FAC5D0BA581FB433F1F19C46E0C7D8D0F23C5B54
          FA8EFF003561D9FE2FAACEADEDEB5D63A8F5236B48B186EF4A993F9D5E254DD8
          CF77BB6FE9169748FA9BF577A5514B29C0C77DF53407653AA69B1CE006EB0D96
          7A8F6EF8DDF4D2534C7D7FE939276F48C5CDEB0492376263BFD3047EFDF91F67
          A9BFE7243AAFD7BCB818DD0F1B01B322CCECA0F91FF15855BDD5BBFB6BA688D0
          70124B553CD59D3BEBDE6BB6E4F55C4E99483AFD8287596387EE9B739CE6B3FA
          ECA947FE60F4EBDD3D53A8752EA8D3CD59394F15FF00DB78DF675D4264A94E56
          07D53FAB5D38B5D87D331AA7B7E8D9E9873C7FD7ACDF6FFD35AB11A0E0274915
          2C9D249252C9D249253FFFD2F55497CAA924A7EA94EBE554920A7EA9497CAC92
          0A7EA94EBE554920A7EAA497CAA922A7EAA497CAA924A7EAA497CAA924A7EAA4
          97CAA924A7FFD9003842494D042100000000005500000001010000000F004100
          64006F00620065002000500068006F0074006F00730068006F00700000001300
          410064006F00620065002000500068006F0074006F00730068006F0070002000
          37002E003000000001003842494D04060000000000070008000000010100FFE1
          1248687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D27EFBBBF272069643D2757354D304D7043
          656869487A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D786170
          2D66696C74657273206573633D224352223F3E0A3C783A7861706D6574612078
          6D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786170746B3D
          27584D5020746F6F6C6B697420322E382E322D33332C206672616D65776F726B
          20312E35273E0A3C7264663A52444620786D6C6E733A7264663D27687474703A
          2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E74
          61782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61646F62
          652E636F6D2F69582F312E302F273E0A0A203C7264663A446573637269707469
          6F6E2061626F75743D27757569643A66636232646266632D656462302D313165
          312D613436352D616264666631376133613537270A2020786D6C6E733A786170
          4D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F
          6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E61646F62653A
          646F6369643A70686F746F73686F703A33636235326163372D656462302D3131
          65312D613436352D6162646666313761336135373C2F7861704D4D3A446F6375
          6D656E7449443E0A203C2F7264663A4465736372697074696F6E3E0A0A3C2F72
          64663A5244463E0A3C2F783A7861706D6574613E0A2020202020202020202020
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
          20202020202020202020202020202020202020200A3C3F787061636B65742065
          6E643D2777273F3EFFEE000E41646F626500644000000001FFDB008400010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101020202020202020202020203030303030303030303010101
          0101010101010101020201020203030303030303030303030303030303030303
          030303030303030303030303030303030303030303030303030303030303FFC0
          001108003C009603011100021101031101FFDD00040013FFC401A20000000602
          030100000000000000000000070806050409030A0201000B0100000603010101
          000000000000000000060504030702080109000A0B1000020103040103030203
          0303020609750102030411051206210713220008311441322315095142166124
          33175271811862912543A1B1F02634720A19C1D13527E1533682F192A2445473
          4546374763285556571AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A
          393A48494A58595A6768696A767778797A85868788898A9495969798999AA4A5
          A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9
          EAF4F5F6F7F8F9FA110002010302040403050404040606056D01020311042112
          0531060022134151073261147108428123911552A162163309B124C1D14372F0
          17E18234259253186344F1A2B226351954364564270A7383934674C2D2E2F255
          657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F528475766
          38768696A6B6C6D6E6F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F8
          39495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03
          010002110311003F00DFE3DE88046475EEBDEFC0D45475EEBDEFD934EBDD75FE
          BFFAFF00EDBDB7E4C5C70CD3ECE07F97F93ADFD9D7873EFD1B2C8A59492B53F2
          FDA0E475E38EBD7E2FFEF1F4E4FF00C54FBF170A85954FC870A927FCA7AF75DF
          B77AD75C49B1E49B1B002DC5FF003ED24932C32EA9246D06800A62BE641A5787
          AFCE9D580A8C0EBB1FF22F6F296D4D56057CBAD75E3EFCE09A2AB107FD5FEAFF
          000F5E1D7ADEEC506A0D9AFDB8EBDD77EEC481C7875AEBAB737FF7D6F7428DA8
          386C8F97979FCFECFF0001EB7F2EBBBFBB6A5A85D4351EB5D0512F7AF4DC3DC7
          4DF1EE5ECBD9C9DDF59B426DFD4DD5C73747FDF39B6753D50A297702E1BC9F73
          F60B39FA9018A02E01452C137D75A7D50B2F17FC6BF8687D3571A538678F4F78
          13184CFA3F47D7F97F87A15FDABE99EBDEFDD7BAF7BD1C823AF75D7F87BAEA5A
          E8D5DD4FCFAF7CFAFFD0DFE3DFBAF75D7D78BF3EE8DDC1955A8E3FD5F98FE5D7
          BAEFDDB80A9EBDD173F92DF2DFE35FC3BD8553D9BF26BB9F6274E6CDA7593C59
          1DE199868EB3293448CE68F03858BCF9ACFD71038868E9E793FC3DA3B8BB86D9
          C091C17230A32E78D283D0E454D057CFABAA33FC23FCDD6BADDFDFF0A37ECADF
          9B377EEE5FE5B1F06BB6BB9BAE764E133393CFFCB0EF8C0E5FA97E3DEDEA2C75
          19A99770D31C9AD0E4B70632952376456A8A596A1FC6891333E8F64F26ED773C
          CB15A44A88456A4EA623EC1DAA466A1893C38746115ADBA4665B890923F08C7E
          D3C7F653EDEA94FE377F30FF00E631FCD1B707C86A5F917F3FB76FC44A8F8F7B
          676E764ECFE9AF8FDD359092A3B6F239AA8F36D7DBD89A6C078F74E4F1F5D2D0
          D3F81EAA6A8477AA0EE522F23027BC8E59650F7370EC9C406A8CD6840009507E
          5C34FCE9D2D736D1DB936AA0487008A70F99393FCF3D6DB3FC963AAFF987F5FF
          00C65DC5BA7F990F6DE63B07B7BB6B7E576FEDADB37700A66CEF52EC6C8417C6
          ED8DC12D228A3A4CFE42490D554E3E06961C682906B320915443B4C12430CB38
          D5A24A1009A54D32D9E15C53CE9EB824AEE9A1D304516748CB7A939A7E5FE1AF
          5708DF4E7817FAFF004FF6FF00D7DAA9FBA3ACCBA54352A4F0A1A7991C7C88C6
          40E930E38EBC5ADF8FE83FA5FF00C6FCFBB4972D0805A2AB1A0F200FA9AE7F21
          FB3AF015F3EBB2DC5FF03EB6E7F3F8FF005BDEE5B8A299750D0A3BA993427CBE
          CF3A79F5A03CBCFAE43DAC53A8034C1151D57AEAFC9163C7FB6E7DB425D53326
          96EDA0AF967FE2BFE2ABD6E98EA93BBC3F9B1E43ADBF9C5FC5FF00E58982EBFA
          3ADC276AF5F6E2DDDD91BF32A6AE3AEA0C8566072B94D8D41B4CC1531D1E8867
          C231C819E39BC8950A881180724B71737F35F42216096493AA30232F9C9AF100
          1E001CD2A6A0E90630DAC66CE7B8909D54EDFB7FD91FB3A1BB737C08DA9BB3F9
          A06DBF99D9BEC1EE7AD9B6D74B514388EB58779E731BD4388DE583CAFF0001C5
          EE08F0D8AAAA1A7AAC8D5E0EBEABCF4753E7A7A86BC8EA45D4DE658E4DE20B75
          43A87EA311F2E19FF4C057EDF23D270F4B7229F2EAA3BE69D250F5B7FC29DBF9
          75F62355A6CDC7EFEF8B1D918FDD5B9AA2BE8B1189CCD3ED8A7DFB4D3C197ADA
          D9929CC5498A9A38E4D7A0F8F459869F749C5A26E33493C559449190DE94033F
          60A1AD7A5F6CA5AC2502A6A1B1F3E8FF00D57FC283BF9698ED1C975C613B0BB2
          37961703B931BB4373775ECAEA3DE7B97A236BEE6CBE53F8363F139EEC6C7D13
          D2D1B556443224E207A46D2584A56C4EDB9817C631C5B74EF18FC4028AD3CC02
          D5A7A569F674C9DAAE442B2EA53515A0391F6E3FCFD5DA47224B1A4B13AC91C8
          8B24722306474750C8E8CA48656537047047B3F4712223AFC2C011F9F45A4104
          83C7AE7EEDD6BAF7BAFF0087AF75FFD1DFE3DFBAF75EF7EEBDD15BF9B7DA3DBB
          D27F11BE4576DF41EC097B47B9BAF3A9B77EEAEB8D850C4F512EE2DD18AC5CD3
          E3E9D29635792BBED8A9A834E80BD4087C6A0961ED15F33081846D49352D0D2B
          4AB0CD3CE993D391805C06E1D6AA7FC9D7ADFF0096DFF31F385F94BF3B7E5061
          7E70FCFCC719F76EEBEA9F9059CC8E076C7C7B59727514B4BB236DF4E6E9A8A0
          DAB97C66DEAB83D134705552A1641E34FC90DBBD8ADEDD5A5CC6C93B229F11C5
          15FCC80C48A9078E413EBD18CC2E0431C91B23402A282955353C4711514F2A7E
          67A3EBFCC0BBABA83E78FC89EA2FE4FBD1BD87D658DE9CC36676EF66FCE8CEED
          DDF1B736BEDEC1F516D3AE832181F8F9B5D31F59450E537576065160353438FF
          0020A4A28EF2840B2694D2C9F5120B6842AC4B29AB7C29E5915F418AF9F95704
          D5219962FA9D25830F2C9FCFEDFE5D162F8FB55D53D0FF00F0A95F905B2B6726
          CFDB5D7DBBFE0C6C1A3C5C58FACC263B6FEDF9B67ED4DABA62A7A86AC10968A8
          704F09D2C644D443AF2C4298AEADC5E46CD2EA8A39641A8914A53192698C50D7
          3F6F576B76369AC03E2B018033C7D3FD5FB33D6DD34592A0C9D3C5558DACA6AF
          A49D4B4355473C3534D2A8768D9A39A1778DC07522E09E411F8F6671EED6B76C
          60B562CE467862A699CE3F3E8B9A19233FA8A41F9F52D8FD2E2E3FA707DBD712
          156895D2A9E6280E7E7E7F338EAA071A7488A2ECBEB6CA6ECAEEBEC7760EC7C8
          6FBC5C22A725B268775E06AF7763A9ECE7EE2BB6DD3E41F31490FA1BD5242ABC
          1E78F6CBCB65710980DDC5424690186AAFE4695AF90E9C314C94768980F520D3
          A587DD522542D0FDCD38AD6A76AA5A369A3FB97A6491627A9106AF31A7595C29
          7B690CC01373EDEAC16CAB6E92A090AD74B50D7D58819A60D4F0F5E9BC9C918E
          A483C5C1041FA5BE9FEC0FB54ACBA43A30311A5294A0FB0FF214EABF23C7AA07
          FE6CFF00CDF3B27E29F63ECCF867F06FA4AAFE4F7CEAEC7C136EA8B6651D2566
          4F6EF59ECF3E55A6CD6ED8B125AA065F2A63D5474D3B410F8CAC9231570012EE
          17770F21B7B370AEB4D4C00620FA282698FC44F0E183C5447180BADC76FA75AB
          E7F2FF00F9FB8CF987FCFCB03F2BBF9823ECEF8A1B9FE32FC74DE38EDD580DF1
          B9A9F038A4EC2D8383C8612B171D165129DA92BA18F235150D8D4696632C4523
          0CF652D2422D5227964D6EF2EA2C01A923BB8628588A0F4F5A74A47EA23242B5
          34FE5FEAFF00567ADAA3F9637F39DD99FCC5FE51FC94E91DB5B3739B776DF5F6
          DCC5763750E7F3D879F0359BD7ADAA338DB70E75A86AA79AA25A6C9CF3D3D552
          CF64492291881A74FB6F6B9E56DCE56B9353229D3F2D3902B814D35E3C4F9F49
          CC4C602F4A1539FB0FFB34EAA13F9C2F45EF3FE613FCED3ACFE296C2A9FE1593
          EB2F85F97A39B3ED3554676FD4F71E66BD6AF70C6F8FA9A3A98E3C1EDB33CE54
          B90FA59585997DBD7311FABB8655A92CA147CF4814FB2BFB3A7E0731C40D6833
          FE1EB695F899F097A13E1F7C5FD85F143AE365E06B7ADF67ED6A2DBF988F3782
          C656BEFDAF42D5398DC3BBE9AA61AA872D5D99CACD2D432D4199620E2353A517
          D9DDA41E0C0A8C6B21F889F33FE6F4FDBC49E934D732CAE1CB9C70A797FABCFA
          372889122471A2C71C6AA91C68A111110055445501555545801C01ED48000000
          A01D2726B93C7AE5EF7D7BAF7BF7F87AF75FFFD2DFE3DEABD7BAF5EDEF4CCA83
          531A0EBDD7116FA707FAFF00C56DCFB651548F0CE924E587DBE74CFF00AB81EB
          7F3EB5AEFE74F5DF027ADE8B677416D7F897F1E7B7BF98AFCB2AD93AFBE366CE
          8BAAB6ACFBA31D92DE795A6C7E5FB5379E4F0D498ECA50ED7C0C8925599AA263
          F77574F6B3AACDEC3F7173149248BE1B76B0A0F24A7A1078B79003867A576702
          0909D2046455E98247F9FE7D0B9F14FF00E1385FCAFBA27A836A6D5ECFF8D3B0
          7BF3B5C45499DEC1ED0EC45CCE6B239CDED51047365E5C242F91A6A6C3EDCA6C
          8B49F654B1C49A23D25BD5F43216E032101BC5D1F09381F214C62A3550E7883C
          7AD78C21964368CC91568284E47CC7F80531D5187CC5FE511F06F1FF00CFD3E2
          57C65A2EA1C9F5E7C7BF929F1DB7CE5371EDDEBDEC2DEBB3E7AADEDB568371AE
          372988CC0CC5556D14D4ED45179A9E093C13D915E2FD4C4B2416D14E96CB6D91
          2A00B8A0D5A6ADFE0C70F3E9DB5B8B80B351AA8ABC4F95063FD478F469BE6EFF
          00224DA3F017A8379FCBCF851FCCD3E48FC37DC5D294155BD7090773F73D56E7
          EA8C85751D03C87684AF5698E95EA77A57C09041054C5908E6A89F4C9148802A
          DAF6DADEDC092544D2680100AB6AAE3495AD5BCC548A0CD3AD4324B3CE81D895
          F318E1F3AF97FA864F554945FCF37F98FF00F30CF8998DD9751F267A1FE13ED0
          D87B7EB36BFC9DF95798AAA2DA3BB7B5370662B5BF81E1BAB76D62A49B374952
          304631947C2D3C0A16591DB427EDFB6AE6D4A787E35CC9246683470269C3C4A0
          AB11F3CD686BD2C9EDE240AF09019B3EA07D9E83A297D2387F89BF033F9A0FC1
          CEEDD87DAFDF3DD5D17076A6DA3DA9F3CB78576E7C6757EF8DC39EA1996BB198
          1A8ABC562E07DBF0D4543094D755CF3D4C7016205997DEEFADD66DBA66874AE9
          22BA4004799E19E038E702A7AF453BAC72F8A71A789A91FB0FFABF975B20FF00
          34CF84DFCD0BE6CFF31EF8F7D9FF000B3B2773753FC63ED1F8EF51D5FBD7BB36
          DEE7AADAF1EC8EBA9F72C999DC95B550257C1969F35BEA83262A30AB4B486468
          1159D8125552A5AC9B831BE96DDCCF29AAD3E10A3B454F0071F6FCFCC97DB5C8
          8641A92B153A1A3647F2A6FE6BBFCBD7B23079AFE5D5F3DA1EFAE8ACB54D3C1B
          D7E3B7CECCAEE7DC98AC43D4A86CB67B6BEE2C1AD55540669E10E052B63EA22D
          7A6D50BAAEBE1DA25425E3915641E6BE78A77AB769F3A507CF8D28A25BB86650
          0A53353519FC88CE715AD3A22FF12BF97D7F3C9EADFE609F27F787676C9EB2FB
          7F9539C32760FCBADBBD9F44F06DDD82F4F5ED45B6B612CD0CBD854B458F9A78
          80C7A52514C1E05BBE83ABDB4FB65C47E143029D7E6698FDBC294C7F2FB58959
          5E3ED9053F9F57E189FE457FCB32A7A7F64754F687C65D89DC75FB4F392EF3CA
          766EF8A5AB97B37796FECA56AE53726E8DCFBC71B5B439CCAAEE1C8EA69E8679
          E5A368ECAD1B30D64D92C2B1AC724C7C51C4A9A1CF97A53CB22A78E387499246
          8DB5A1A37AF477FABBE19FC68E96EDFDD7DEFD5FD4DB6B667676F2EBED9DD579
          8DC185866A644D81B12348F6E6D8C663565FE1D8AC7537863690411234CF1233
          92C092A92CE2495260BDE01FB0122848F3F5CD781A79F5A2EC75F77C5C7A4260
          FE12F586D3F9D3D97F3F9B2F56FD81D81D1FB47A73238AC8C54BFC1F0741B3F2
          55558771E3F232C827A4A9C8635E2A59A3B08F446CD7BB1F69DAD0477A6F5E55
          5800AE4D3B88D392714A70F99A53ABA3128D12292EC47CF03C80E845EC6F999F
          123A88D547D9BF267A276455D1A4524F8BCFF69ECBA2CD859F5183C5826CC1CC
          543CFA4F8D638199CF0A09F779374DBE20C4DD290BC74D5A9F6E907A762B1BB9
          DF4470316F9E3FC34E8C55057D1656828B298EA986B71D92A4A6AFA0ACA7712D
          3D5D156429514B53048B759219E0915D58705483ED6C7224B1C72C6D58D8020F
          A8391D26652AC5585181A1EA5FBBF5AEBDEFDD7BAFFFD3DFE3DFBAF75D5AFEEA
          CAAF4D42BD7BAEFDEC0A57D3AF75A96FCA6E8CF981F1C7F9DC769FF314D8DFCB
          D7B0BE7560B37D1FD7FB23A2333B5FB0F6D62F1FD555949B763C3EF890E1B2B0
          55545367E69E96A22A5FDB852386ACC81CB486401D7B7BC59E59E050CC2566A1
          5241FE1CF9951F0E7049E8C6092031B42CFA4B2815FF000FEDF3F5E8D7627F99
          B7F387DDF5F4949B5FF9226FFC44733786A2AFB03BCB65ED6A6A490C57F334D9
          1FB16681650C2C10DC5B917F744BCDCD943359832A920908E7EDA67F970E93BA
          42A240242581C7A11E5E5FE5EA8CFF0098665BF9B9E6BF9A2FF2A6ED0F913D7B
          D23F17BB37797656E4E97E8DCDF5D6E95ED4C66DB6DCB2D18CDD4EE28A108B50
          D8EC7E5E491226AB98CDE49010174D9204B81AE6B9AF8EA14E469E0428380294
          C531E5EA336B5F164D5186A2375B4E4DFCADB69773D16D88FE75F72F627CCD8F
          6C66A9773D0EC4DE9F6DB4BA69370D254256D3D6D575EE0247977043435F12CB
          4B0653215B4F015F4C7ECCA0DAD45CA4D2CAC64D241143EBFC47C8E7141C788F
          34DC335E9359AFE42FFCA1B3DDABFE992B7E09F4C41BC4E63FBC12D262A973D8
          4D89519A568E44C83F596273945D7714A668848E9163238A690B34AAE5989522
          C515E4EE7094A005C9523C866ADF2A0207A74EF8F2507757AB24DC1D1BD2BBBB
          64E13ADB74F51759EE3EBBDB75D87C9EDED879BD8DB6727B3F0590DBEC5B075B
          88DB55B8C9B0F8EAAC4EA2207861468D5995485620AA8E289A252B10D07C863E
          5F99F5AF1E3E43AA788E189D66BD0A11451C31C70C31A431451AC514512AA451
          471A848E38E350111114000000002C3DBA14803476D1714F871C05387ECA7DBD
          53A02FB5FE517C6BE8AA7A9A9EE8EFEE9BEAB4A51219D37F7646D1DA952A6289
          6691051E632F4B57248913862AB196D241B5BD974D7BB7C2ECB25E47F50D8EDA
          9351FC414B119F90FE5D284B6B99155D207319340698AFA5787F3EAB277D7FC2
          83FF0095B6D7A8A8C56C5EF0DC3F21F7353948D76B7C71EACEC4ED8CA544F269
          11C30D5E1F6FC58176677504FDE69526C4DF8F743BC5BC6856285DA830480AA7
          1E649A8F99D3F91F3DA5ABB96AB014E3EBFEAFCFA037FE1DE7F980F790ACA2F8
          73FC9DBE43E4E397CB1E2B7FFC9BDC18CE92D981CF88C1535B8BC8D34798922D
          25AF1453EA6B8F5A90414B6D7BBADD2B5238E2A915C172B53C4791F9629D3AB6
          F007412CB44D59F2C79D3AC0BD49FF000A28F92CD8A3D85F253E29FC08DB2D23
          D5E5B11D27B04F70EFAB78E54A7A28F37BB6A7258C09EA066093A7A882AC74FB
          7235DC1E42B3DCBD14E38257F25A13FCFA6A59601752082D7FC50F035A91F91A
          FF0083A5C54FF2321DC144949F357F9877CEAF95747510E9CBED3A9ED593AA3A
          FAB9D8B4869DB6AEC186913EC2099C948CCC03003586B5BDD3E8878D3866D6CD
          C49A9208E0493E829427FC03A716E7C3A18D694E85BEA1FE409FCA77A6B7D53F
          64E03E26ED6DCFBC6867C5D662B2DD919CDD1D84988ADC408CD356D06377465E
          BF1A95324D1F9242F1481E424D85EDED7DBDBD4012206461923B470E25283269
          4A8F2EAAD793F8864590ABFCBAB8F8A1869A08A9E9A28E9E0A78D2182086358A
          18618942471451A0548E38D000AA00000B0F6B5B4C10E98942AAF0C600FE4294
          F98E92E58D49A93D65BDBDBACEAA2A4E3FCBD569D7BDF813A9815C0A75EEBFFF
          D4DFE3DFB867AF75EF7EEBDD747E87DB4EDFA6EC0E00FF00567ADF9F5E1F4FF7
          DCFF008FBF464940715FE47E7D78F5DFBB93415A7CBF9F5AEB591FF85066E0D8
          BB57B9FF00939F6B6E3DE7B57078CE9DFE62DB2EA77A55E4F334B1C9B676CEE1
          C5C12D6E6F2D01AAB5061E93F80A1A89E78B428651A9757A83BBC188A37852D6
          431B2E1AB4A1045789E35F9FECE955B349A8E8E1E7D1BFEF1FF85057F2C5E98D
          C33ECDC37716E0F90BBDA00CBFDD3F8C5B0F3FDD15F2D4895A05A38325B7A24D
          B934F24A028295AC9761EAF6B9B748D90C96F03C91834069A457FDB5081FED7A
          A2C04FC722AFDA78FD94FF003F416D27F369F9D3F20A9D13E197F289F90D5D43
          5D54B4945D83F2D371E23E3BED2A65911F4D6556067A5CDEE4AA82295479044E
          B65B598EA04175D5F6E13CC2D92158E165C9EE66F9114D2053E60F5B8FE9A8D5
          76320F2031FE5FF275DD774BFF00C286BBE23AB9376FCB8F85BF0B30792A82AB
          B6FA4FA973BDCDBCB1340EA0388F76F60F8B1AD58839578D57D57FA0B7B756DE
          F5D6482EEE48403B4A958C93C6B44A1F9D08EAC9346ADA96DFD7E2CE3F9F4A9A
          4FE507F253796C83B4FBF7F9CA7F30BDFEF5534FFC5CF5D663ADBA531992C755
          4BE59B1120DB3B4323B95E9403A15CE4C384E05871EE9F4715DC2CB701D9D3B6
          A4C8E18793282C33E64D38F014EB4B349149E244403E5818E846E98FE429FCAF
          3A85AA6BB27F1C71DDEBBC6BAA23AFCAF61FC92CCE57BA77865ABD4AB3D655D7
          6EDA8A9A0FB89668C3B14A64FE9F4E3DEE1DB2C4CA22FA43AD6A4120806A294E
          D2299AD388A57CF86BEA2E40907D43786E412B5C547981D59E75B746F4BF4E63
          9315D47D49D6BD638E8CB15A2D83B1F6D6D1A7BB821CB4782C6D0866706C49B9
          238F66B1DB45E0058E2519AD08AFEDD449E992C75331393D0A607E2DC7B7638B
          49F0F49108E1535FD9F2F975E27CFCFAF117FC91F4FA7F85F8B1B8E6FEEF245A
          FE162BC28471C791AD71F2C7DBD6ABD77F4F6E00545140AFECEB5D776F7BD2B5
          0682A3AF75D1E6C3FDE7DB4E0332A32923D7FCE7E7E9FE6EB7F3EBD6F6E695D2
          4051D6BAEFDDB34F9F5EEBFFD5DFE3DE8D3CF875EEBDEF63AF74037CA0EF28BE
          33FC7CEDCEFC9B606F6ED28BAA3656577849D7DD738F4CA6F4DD498D442D8CC1
          5148E91BCE43EB91CDC43023C966D3A4A4BC678EDA468A0323D29A41A56A687D
          7FC1F2C57AD8A5454D075AE3E0BE78FF00C285FE7B50D467BE1BFC14E9EF859D
          3F968A9A7DB5D97F2D3704B92DF935390AB532D36D670B0E484AC5CC2EB84585
          4A59E4B9F6511B6E93691E280A45291AD169E6433F706CE06385401C7A58F1C1
          1C28DC6422B93FE41F9F4B0A5FE4EBFCD9FE446E37CBFCE0FE73DDA741B3F274
          70D3E77AB3E256DD9BAB709594EFA65ABC745918E7C3D25006626233A504D232
          80C083603526CDF5494998B383F13B1660079015033F6FCFAA7D53ABABC6AAAB
          4E007F87A16A5FF84C0FF2BDACDA79AC7E7B03DD1BFF00B0F29F6D5749DC5DA9
          DBFBA3B137862F314790A7C9D36413179B97FB9D918A4969960A882A71D28A8A
          32D1330D5AC2DB5B248819239434DA695D002D0FA01E838D0F1CFCBAF3DCC8CE
          CE40CF953ABBDEA2F8F3D29D1BB7F0BB7BAB7A9FAD36152E131D163E07D97B13
          6CED42DA114544AA985C75318455CC0C8C818804DBE807B72D2D8A02B242BA0D
          72727D3F2078D3CBA65DB51D44F77433B0BD873C1E45CFD3DBB730F88B1A0248
          0D91A88A8FB78FFB1D541A57AECAEAE3E9FEDBDDE5804EA119881E941FB3F2F9
          1EBC0D3AF7D081FEB9FE9FD3E9EECBD8E918A54D49C53D32079F1F9FDB5EB5C7
          3D78FF008FD3DEE500559CFE98F4AD787A83F9F5E1FCFAF29BF363CFF5FF007D
          C8F7481CB80E10D0FAF1F967CC0C815CF5B229D72F6A78F55EBDEFDD7BAF7BDF
          5EEBAFE9EE84355486C79F5EEBBF7615A50F5EEBDEFC005140001D7BAF7BDF5E
          EBFFD6DFE3DD4F1C71EBDD7BDDBFC1D7BAE3CEA1F5B5B9FE9F5FF7BF698F8BF5
          094AE9D22BFC3C4FAF9FD9E5C7AB629D762D6E3E9F8F6F47A342F87F0797FABD
          3D3AA9F9F5E3F436F7E7AF86FA78D0FEDEB638F5D1B5BFC3FC3FD7F6D49A3C31
          ABE1AFE1FB71FECFE7D7871EBDF837FF00636FF78FF636F7EC784FE2F1A669FC
          BE75A53F3EBDE629D746FAC7D6D63F4FA7FB1F6DBEBFAC87E2F0F41E15A57FA5
          E5F67CFADFE13EBD72FE97FF0061FEFBE9F4F6F2D289AE95A9D3FE4E18E1D6BA
          EFDBB8A8F5EB5D747F3FD2DFEFBFC3DD5F836AA68A1AFF00A8E3F6F5BFF0F5DF
          BB0FF8AEB5D7BDEFAF75D7FBEFF7DFE3EE98D5DBF17F2F2FCAB4E1E7F975EEBB
          F77EBDD7BDD4D7CBAF75EF76EBDD7BDFBAF75D7373FEF1F5FA7FC56FEDA5F135
          3EAA57CB8D298E3E55AD7F2A75BC63AFFFD9}
      end
      object Image_RajendraT: TQRImage
        Left = 691
        Top = 72
        Width = 167
        Height = 61
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          161.395833333333300000
          1828.270833333333000000
          190.500000000000000000
          441.854166666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676502370000FFD8FFE000104A46494600010201004800
          480000FFE1071A4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009C000000C80000004800000001000000480000000141
          646F62652050686F746F73686F7020372E3000323031323A31313A3031203132
          3A35323A34350000000003A001000300000001FFFF0000A00200040000000100
          0000A7A0030004000000010000003F0000000000000006010300030000000100
          060000011A00050000000100000116011B0005000000010000011E0128000300
          000001000200000201000400000001000001260202000400000001000005EC00
          00000000000048000000010000004800000001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080030008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492543
          AD756A7A474EB336C63AE782DAE8C767D3B6EB08AF1F1AA1AFE92EB5DB525378
          900124C01A925653FEB67D5765C297756C216131B7D7AF423B3BDFEDFED2AB4F
          D5876786E47D67BBF69DC5C2C6E1EADC3A4EAEF4ABC66ED6E66CDDB3D7CEF5BD
          4FF474AE2AEE9DF573031BAAF4A1854FED6C5EA4723ED5B1AEAF1B18BD9978D9
          39393631D4D388CC5FD5FF0067FF003D937FEAF5637E977A4A7D552597F56BD7
          3D1A97DD53B1C58EB2CA287E8EAE87D8FB30E97B7F31D5E2BAA6FA5FE07F9A5A
          7CF092974924925292492494A49249253FFFD0F554924925292492494A591F59
          3A465754C6C67615ACAB330326BCDC6F581754FB2A0F6B69BF6FE919559EAFF3
          95FE92B5AE924A790EB591FE31B2B0DD8581D3F1B0EF7101F9F5E58782DFF082
          8AEDA2AB297BFF00D2BBF9BFEBFE917159BD0FAF748CF6E534E1BF23A7FA4731
          AD61B71F19971D98F9D9AFB5B4FAF9545AFB32BDD4E5E455FD2EFBFD3F4D7B22
          E37A8747B306EEA1F6EFACB5E0F4FEAB6D96DB8EFA686DA5B635B4FA0DC9CB7D
          DEA56CA9BE8B3F5646D49E9FA917E600FF00ACBD632FAB3E3F99ADC7131C4F7F
          430DCCDEFF00F84DFF00F5B5D2616162E06255878758A71A8686555B78002F35
          E9195EBE39C0E99D43AD75BCBC32EC7A861B9B8B8AD6573F65F5F2322B6D747E
          89AD6B9EF7DEF7FF002D74FD3313FC62BFA7B31F3F3B0716E6833962A7645E64
          EE66FAC1C2C36BAB6FE8FF00C2FA8829EA96265FD71E8143CD34641EA39427F5
          4C069CABA5BF49AEAF17D4F4BFEBCEA9087D4DC2C978B7AD6565759B041D9936
          6DA0387E7330314518BFF6E576ADAC5C3C4C2A5B8F874D78D437E8D553431A3E
          0C606B525397D2FA9FD62CFEA2EFB4F4AFD9BD2DB592CB322D63F22C73B6FA7F
          A0C7758CC7D8DDFEB32D7FEE2DA492494A49249253FFD1F5549249252942EBAA
          A2A7DD7BDB555534BECB1E435AD6B46E73DEF77B5AD6A9A8BD8C7B1CC7B4398E
          0439A44820F2D70494E1D9F5DFEAF1B5D8F8373FAAE501231FA7D6EC827FEBB5
          0FB2D7FF005EC8A98A2DCFFAE39FB862F4DC7E9554FB2ECFB7D6B1CD22777D8B
          07D8C77FC6672DDAEAAEA6ECA98D637F75A001E1D94D253CF7FCD8EA397B5DD6
          3AE6664ED713E8E2460D25A7FC1BDB8BBB2ACFEDE62C0CDE93F5670FAFBB0FAB
          575748C0606BF0AF2CD872DC5B391F68EB96EFBABF49C3D27E1FDA31AEB3F9DF
          52E65ABD0146CAEBB58EAED687B1C21CC700411E0E6949483A7D7D3EBC5633A6
          8A9B8ADD1828DBB3E5E9FB5595998BF56FA16165B337070AAC2BD80B67187A2D
          7348FA375547A755EDFF008D63D69A4A5249249294924924A524924929FFD9FF
          ED0BD450686F746F73686F7020332E30003842494D0425000000000010000000
          000000000000000000000000003842494D03ED00000000001000480000000100
          0100480000000100013842494D042600000000000E000000000000000000003F
          8000003842494D040D000000000004000000783842494D041900000000000400
          00001E3842494D03F3000000000009000000000000000001003842494D040A00
          000000000100003842494D271000000000000A00010000000000000001384249
          4D03F5000000000048002F66660001006C66660006000000000001002F666600
          0100A1999A0006000000000001003200000001005A0000000600000000000100
          3500000001002D000000060000000000013842494D03F80000000000700000FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF03E800003842494D040000000000000200013842494D04
          02000000000004000000003842494D0408000000000010000000010000024000
          000240000000003842494D041E000000000004000000003842494D041A000000
          0003490000000600000000000000000000003F000000A70000000A0055006E00
          7400690074006C00650064002D00310000000100000000000000000000000000
          000000000000010000000000000000000000A70000003F000000000000000000
          0000000000000001000000000000000000000000000000000000001000000001
          0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
          000000000000526374310000000400000000546F70206C6F6E67000000000000
          00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000003F0000
          0000526768746C6F6E67000000A700000006736C69636573566C4C7300000001
          4F626A6300000001000000000005736C6963650000001200000007736C696365
          49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
          066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
          75746F47656E6572617465640000000054797065656E756D0000000A45536C69
          63655479706500000000496D672000000006626F756E64734F626A6300000001
          000000000000526374310000000400000000546F70206C6F6E67000000000000
          00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000003F0000
          0000526768746C6F6E67000000A70000000375726C5445585400000001000000
          0000006E756C6C54455854000000010000000000004D73676554455854000000
          01000000000006616C74546167544558540000000100000000000E63656C6C54
          657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
          0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
          6F727A416C69676E0000000764656661756C740000000976657274416C69676E
          656E756D0000000F45536C69636556657274416C69676E000000076465666175
          6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
          47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
          6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
          0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
          747365746C6F6E6700000000003842494D041100000000000101003842494D04
          14000000000004000000023842494D040C000000000608000000010000008000
          0000300000018000004800000005EC00180001FFD8FFE000104A464946000102
          01004800480000FFED000C41646F62655F434D0002FFEE000E41646F62650064
          8000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518
          131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080030008003012200021101031101FFDD
          00040008FFC4013F000001050101010101010000000000000003000102040506
          0708090A0B010001050101010101010000000000000001000203040506070809
          0A0B1000010401030204020507060805030C3301000211030421123105415161
          1322718132061491A1B14223241552C16233347282D14307259253F0E1F16373
          3516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3462794A4
          85B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7
          B7C7D7E7F7110002020102040403040506070706053501000211032131120441
          51617122130532819114A1B14223C152D1F0332462E1728292435315637334F1
          250616A2B283072635C2D2449354A317644555367465E2F2B384C3D375E3F346
          94A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6273747576777
          8797A7B7C7FFDA000C03010002110311003F00F554924925292492494A492543
          AD756A7A474EB336C63AE782DAE8C767D3B6EB08AF1F1AA1AFE92EB5DB525378
          900124C01A925653FEB67D5765C297756C216131B7D7AF423B3BDFEDFED2AB4F
          D5876786E47D67BBF69DC5C2C6E1EADC3A4EAEF4ABC66ED6E66CDDB3D7CEF5BD
          4FF474AE2AEE9DF573031BAAF4A1854FED6C5EA4723ED5B1AEAF1B18BD9978D9
          39393631D4D388CC5FD5FF0067FF003D937FEAF5637E977A4A7D552597F56BD7
          3D1A97DD53B1C58EB2CA287E8EAE87D8FB30E97B7F31D5E2BAA6FA5FE07F9A5A
          7CF092974924925292492494A49249253FFFD0F554924925292492494A591F59
          3A465754C6C67615ACAB330326BCDC6F581754FB2A0F6B69BF6FE919559EAFF3
          95FE92B5AE924A790EB591FE31B2B0DD8581D3F1B0EF7101F9F5E58782DFF082
          8AEDA2AB297BFF00D2BBF9BFEBFE917159BD0FAF748CF6E534E1BF23A7FA4731
          AD61B71F19971D98F9D9AFB5B4FAF9545AFB32BDD4E5E455FD2EFBFD3F4D7B22
          E37A8747B306EEA1F6EFACB5E0F4FEAB6D96DB8EFA686DA5B635B4FA0DC9CB7D
          DEA56CA9BE8B3F5646D49E9FA917E600FF00ACBD632FAB3E3F99ADC7131C4F7F
          430DCCDEFF00F84DFF00F5B5D2616162E06255878758A71A8686555B78002F35
          E9195EBE39C0E99D43AD75BCBC32EC7A861B9B8B8AD6573F65F5F2322B6D747E
          89AD6B9EF7DEF7FF002D74FD3313FC62BFA7B31F3F3B0716E6833962A7645E64
          EE66FAC1C2C36BAB6FE8FF00C2FA8829EA96265FD71E8143CD34641EA39427F5
          4C069CABA5BF49AEAF17D4F4BFEBCEA9087D4DC2C978B7AD6565759B041D9936
          6DA0387E7330314518BFF6E576ADAC5C3C4C2A5B8F874D78D437E8D553431A3E
          0C606B525397D2FA9FD62CFEA2EFB4F4AFD9BD2DB592CB322D63F22C73B6FA7F
          A0C7758CC7D8DDFEB32D7FEE2DA492494A49249253FFD1F5549249252942EBAA
          A2A7DD7BDB555534BECB1E435AD6B46E73DEF77B5AD6A9A8BD8C7B1CC7B4398E
          0439A44820F2D70494E1D9F5DFEAF1B5D8F8373FAAE501231FA7D6EC827FEBB5
          0FB2D7FF005EC8A98A2DCFFAE39FB862F4DC7E9554FB2ECFB7D6B1CD22777D8B
          07D8C77FC6672DDAEAAEA6ECA98D637F75A001E1D94D253CF7FCD8EA397B5DD6
          3AE6664ED713E8E2460D25A7FC1BDB8BBB2ACFEDE62C0CDE93F5670FAFBB0FAB
          575748C0606BF0AF2CD872DC5B391F68EB96EFBABF49C3D27E1FDA31AEB3F9DF
          52E65ABD0146CAEBB58EAED687B1C21CC700411E0E6949483A7D7D3EBC5633A6
          8A9B8ADD1828DBB3E5E9FB5595998BF56FA16165B337070AAC2BD80B67187A2D
          7348FA375547A755EDFF008D63D69A4A5249249294924924A524924929FFD938
          42494D042100000000005500000001010000000F00410064006F006200650020
          00500068006F0074006F00730068006F00700000001300410064006F00620065
          002000500068006F0074006F00730068006F007000200037002E003000000001
          003842494D04060000000000070008000000010100FFE11248687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420
          626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265537A
          4E54637A6B633964273F3E0A3C3F61646F62652D7861702D66696C7465727320
          6573633D224352223F3E0A3C783A7861706D65746120786D6C6E733A783D2761
          646F62653A6E733A6D6574612F2720783A786170746B3D27584D5020746F6F6C
          6B697420322E382E322D33332C206672616D65776F726B20312E35273E0A3C72
          64663A52444620786D6C6E733A7264663D27687474703A2F2F7777772E77332E
          6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323272078
          6D6C6E733A69583D27687474703A2F2F6E732E61646F62652E636F6D2F69582F
          312E302F273E0A0A203C7264663A4465736372697074696F6E2061626F75743D
          27757569643A61386639646266312D323366322D313165322D383962612D6234
          33326637643635633631270A2020786D6C6E733A7861704D4D3D27687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F273E0A20203C
          7861704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F
          746F73686F703A61386639646265652D323366322D313165322D383962612D62
          34333266376436356336313C2F7861704D4D3A446F63756D656E7449443E0A20
          3C2F7264663A4465736372697074696F6E3E0A0A3C2F7264663A5244463E0A3C
          2F783A7861706D6574613E0A2020202020202020202020202020202020202020
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
          20202020202020202020200A3C3F787061636B657420656E643D2777273F3EFF
          EE000E41646F626500644000000001FFDB008400010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010102
          0202020202020202020203030303030303030303010101010101010101010102
          0201020203030303030303030303030303030303030303030303030303030303
          030303030303030303030303030303030303030303FFC0001108003F00A70301
          1100021101031101FFDD00040015FFC401A20000000602030100000000000000
          000000070806050409030A0201000B0100000603010101000000000000000000
          060504030702080109000A0B1000020103040103030203030302060975010203
          0411051206210713220008311441322315095142166124331752718118629125
          43A1B1F02634720A19C1D13527E1533682F192A2445473454637476328555657
          1AB2C2D2E2F2648374938465A3B3C3D3E3293866F3752A393A48494A58595A67
          68696A767778797A85868788898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7
          B8B9BAC4C5C6C7C8C9CAD4D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA11
          0002010302040403050404040606056D01020311042112053106002213415107
          3261147108428123911552A162163309B124C1D14372F017E182342592531863
          44F1A2B226351954364564270A7383934674C2D2E2F255657556378485A3B3C3
          D3E3F3291A94A4B4C4D4E4F495A5B5C5D5E5F52847576638768696A6B6C6D6E6
          F667778797A7B7C7D7E7F7485868788898A8B8C8D8E8F839495969798999A9B9
          C9D9E9F92A3A4A5A6A7A8A9AAABACADAEAFAFFDA000C03010002110311003F00
          DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD0DFE3DF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF748AEC5EC5
          D91D49B1F74764F646E6C46CED8FB330F5B9EDC9B8F3B5B050637198DA085A79
          E59679DD15A570BA22896F24D2B2C68ACECAA744800B1E03AD815341D542E1FE
          657CECF9EB85C9557C02E91A7F8CFD5349B860C42FC98F9BDB377361337BCB12
          DF6D34FB8BA57A128E986473B88580C9E1AFCED651D354EA50912F2C1F5891A1
          8A532E9D42B420D7F67F809207F3E93CD25C46C05BC0921E0751200F9E3381E9
          5FB3AD7FD7E107F36FF9D9FCD0FE677C32ED8FE70DF25BAF3ABBE336C8EAEDF7
          91DE5D554F96EB4C7EEDA9EE6C2CD98DA18ADABD6FD7FBB765E0287138D971F3
          8ADF3D6D43A08742B3170C2BF4D6453C7794C84F018E3535A8A900281E99247C
          CF4A755071EAC27F93DF677CA4F8AFBB69FE2BFCA0F93FD9FF002472C7E5D772
          7C49CFD37736406EBCBEDDDDBD7FD7507666C6DEBD55BF2AB255BB92BF636F0D
          99E135789C9B543D055CB2B2C97176B490451B2F824F85A7F9D2B5FB08F2F5FC
          FAB5358635C815EB6A6F6CF4DF5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD1DFE3DFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7547BF30B1D91F999FCCDFE3
          97C0EDC55F538AF8F9D13D518FF9DDDD1B7C448D49DDBB9315D8B2EC6EAAEB3C
          FD3D4ACD4D93D8F8BCAD1D464EBE02A04F2AAAB5CC6967A1490196E0D7C255C7
          A16240F9D695AD3E5D5595D814319F088C9FF27575B94CA60F6BE1AAF2D9AC8E
          2B6EEDFC2D13D4D7E4F29594989C36271D491DE4A8ABADAB929E8A828A9A25E5
          DD923451F503DB0CE141776007993FE7EAE884D1117EC007A7CBAD183F9A3FF3
          56A6EB4F9AF89F959F0D37ABF4474B76875E557C4DF925F2F6A36C6277AE777A
          E331D9A9AAF6B761F46F4557E6713BDF7A5675AD5AD4D063F733D20C4992AE3D
          1E54B31761B78248A705C47E2E0B119E3C5168493C6A7183E7D5341FA9B7249D
          238D387D873FE43D1E5FE5B1D33D59F1F7716D5F995F2E7B176FFC68E90D93B7
          3746F0F8BDB03E4BF73EDEAEF90DDB5BDFB2B0302F68FCCCF90B364F393D4CFD
          8DBEF6A814186DBF4CAF360F160AF8D18A2976EEF6DF6F95ED6DEE0784D104A6
          4B1E04B1F99A53D00A8E3D685B4CD7523853A698FDBFE4FF00579F474EB3FE14
          91FCBAF73F6352F507C6CA7F90FF0030BB2B29B8E836CEDFC1FC74E8ADE3B9B1
          1B8ABAAEA29A1A9A9C4EEECF41B736E4D8BC5475065AAA93388628E3625AC2FE
          DAF02F0C293A58CA6323885C7E6787F3E9F6454758DA64D645680D4FA757EF04
          A678219CC52C0668A394C13AAA4F09910398A6556755963BD98062011F53EDBE
          1D508A123ACBEFDD6BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDE
          FDD7BAF7BF75EEBFFFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF755A1F33FF0097050FC9BECFD9BF243A7BE42F6D7C3EF963
          B136849D6B88EFAEA2187CDCF98EADAACCCFB8EB7AEF7A6C2DD9155ED1DD7819
          73D37DCC4F3C4B514CE5F43D9EC3CC599026B2A33C3E7FE6E23E7F2EAAC64228
          8F4C703C3FD55FF8AEAAAFE64FF284FE705F36FA62BBE37772FF00368EA6CE74
          ED7E5B1592AF9315F10E3D85BE33EB8075A8C553EEAC9ECDEC7A4C5676925AB4
          57AAA634F1D34ECA18ADC001DB65B7B7AF892BCA49AF72AE3ECEE38FB7F97578
          A49A351C03D32475575DF5FF0009F6C574F4BD33F1CB27F24BB1FE507C9AF925
          86DD9B3F636C3C06136D744F5F6D9DB7B631D4D94DF3D8FD99D8F86A6DDBDB75
          BD5DB5A95A158B092D7CF0D554C8208516F606D6D796F70CF15C80230B52694C
          70E20578F957CFECAB733BA47AA25AC95A0FB7FE2BCFA5EFF27DFE401F0F3B07
          3DDD187FE63106E9EFEF983F167B5A6EB6DD5D57BD37AE7936650EC4A0862AFE
          A8EC1C6E3E9334D99DD1B23B036E4AB250B4F54299452BC4F0DD47B48F7F077C
          3141133A9A6A22A69E473FB456B9AD474DF8734D1ABCF21D35E0091F913F3FF2
          75BA2757F4FF0054F49ED4C6EC6EA0EB9D95D65B3F0F01A7C6EDCD8FB6F13B6B
          13491160EE128F154B4D1B3C8E353B302CEDCB127DA49279A51A5E5252B5A570
          0FC8701F90E9C48D23034AFF0094FED39E847F6D757EB8BBA448F2CAEB1C71AB
          3C923B044444059DDDD88555551724F007BD8049000CF5E00920019EABC3E42F
          F360FE5F1F18B3B0ECEED0F931B26A7B12AE09E7C7F5775A419DEE4ECDC87DB4
          ED4D3C306C5EA9C4EF0DC30CD1D429461510C2A847A881EF5472FE1A44ED27A0
          049E9E103D0172154F9B103F971FE5D142AEF9F5FCC9BE52838EF81FFCBBB37D
          6DB1332B50988F945F39F76E27AB76C7F0E9A29050EE2DBBD1583A8CB76AE722
          AA4226A56A88A1889B2CF12027DEC433B11ADD228C1CEAA96FC94027F6FF002E
          B5208A200EA3231E01694FCC9229F2A57A1F3F96B7C75FE637D5151DD1D99FCC
          77E5FE07E42F6376AE4F0106D1EAEEAFDB71EDBE93E98DB7B593254E92ED2A79
          B1588C8CFB83789AD59B23785628BC31A0927606416921B78DD9A199DD8F1245
          07E42A4F127D07CB35EA9E2B4AAA5A208DE829C06070AD49A54E4F56A5EE9D57
          AF7BF75EEBDEFDD7BAF7BF75EEBFFFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7548DF287E14FF325DC
          1F3EF21F2F7E1EFC8AF8AFD73B7F29D0FB67A45311DF7D59BFFB4370ED5A0A0D
          C359B9373576D0C760339B6F074151B8B23240D2CCF525E44816375D3F571046
          D559246407895018F1AF062075E6663A2880E9AD2A48AD7D69D54BFCC0F837F3
          17E31FCB3EA1F993DD3FCE32BBAEF1DDD14B8EE84F93FBD3686CAEB4E91C8E27
          ABB1D5557B9F0926D996BABAB685307B6F253543FDED7435D5D4B1688E37B300
          6CF1D81D2ABE214506A48019BD2A4569FCFAA24776354C48452C284548AFA645
          3F6647F2E810EFBF929BBF6EEDA9307FCA0BF9887F32FF00E661F2DE86B1F178
          F8361516DDEE4F8E98005E29B2151DB59DC875FE37660A714F20D2D4F5D3D4F9
          59086896EE18B7B7B79F5C96911EC34249C0A8AD6A401420F1E94096621BC77F
          10FA9F2F97574DD61DBDFCFCBBFBAA36B5327C72F8A3F0DB7AA6D8C0D06E6DF5
          F20B73E6BB3F3F92DDD490469B8F3F41D4DD51928F0F87C1655E367A6A69B32D
          34524A010A8857DACB8B7803304BAD207A51EBF20787D95EAC1EDB49D319328E
          3AAA17F2A64FEDE9F329FC9C77D7C98871F57FCC73E7E7C9CF92D12CED5F91E9
          CEA4DC0BF183E3B4B3D5DA5ABC4D5ECDEB765DD5B8B0D4B37A699AAB311D4089
          0072D723DA4962B56923915599D69424D33F629F5E193F674D891A846900FCBA
          B28F8F1F08FE24FC4FA5307C76F8F5D55D5157351D1D16433FB5768626977666
          A3A2A64A48E6CF6ED929E5DC79BAD9A14FDE9EAAAA59666F53963EDD69E76528
          AFA54F10315151834A57862A4D0E73D5492D4D46BD1A6F6C915041E1D6BAF7BF
          0140075EEBDEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD4DFE3DFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD32EE0DC9B776962AA73BBAB3D85
          DB384A250D5999DC194A1C362A914DECD5390C8CF4D49029B7D59C7BD1200A93
          41D6C02780EAB07B7FF9D4FF002EFEAAC936DAC0775CBF2337E9A9A9C7D3F5D7
          C4BDA9B83E49EEDA9CBD348616C215EADA3CEE031D997994AAD356D7D34848FA
          01CFBF4656504C4E1A8698CE7F2AF4EA43AABAE544A7F11A7F9FA03B27F3BFF9
          A7FC84A3FB8F84FF00CB1A5EB7DB555552438FECDFE613D8F47D30B578C9B4C7
          499EA5E98D8EFB97B2E2FB6916432D1D7350CCEBA4A12A6E5E303AD0BBAA29F2
          3F10AFAA8A918F51FE1E9334A2399E31034814F104053F99FF0021AF45AFE602
          FCFBDA5B6B66ECCF91FF003FFB3E8FBDFBBA1C9E2BAABE317F2C0E99DB5B4B76
          6E4CCE2CD23653218CED8ED1A6DD3BAF6EED4C3A55C3F7B94C90829E99598EAF
          ECFB69C5A6B8E297C57AD72A4AD3E668694FF4DD3897329A27D12AA9FC42A74F
          DA4FF909FE7D01BD11FF0009B8C1F7BD5EDBECAFE663BA376F60E4B09B846E6C
          5F53D776BEE0EDDDC593A979229679FB73B8B7228FE25539458C2D6E1F6BD1E2
          F0BA85D5DF5302BA19ADAD11963B656241E3DD43F691527D6941F33D3A66661A
          5F23AD9EFA73A3BA73E3D6C7C675AF467586C6EA5D85878D131FB53606DBC5ED
          9C34452348BCF2D2E2E9A9D6AEB1E3401E798C93496BB393ED23BB39AB1FC800
          07E40500FC874CF42A7B6C0A75EEBDEF7D7BAF7BF75EEBDEFDD7BAF7BF75EEBD
          EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFFD5DFE3DFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF7549DBEFAFF00F9FAF6B6F0831981EFDFE5E7F143AB8EE1
          CE51D6EE7D87D6DDA9DEBDB8BB5E9F2350B81CBD06DEECB8313D7F3E63278F8E
          23353CB554F1C0243EA2EB6F6F3AC3A80573A7D40A9FE6467F974AE4365A0889
          5FC4F2269FEAFE5D7A8FF91D742F6AD5516E7F9FDDD3F207F985EFD4321C8CBD
          D1BFF35B2BA92742647A4A0C7742F5664F6C75F5062B1534A64A58E78EB6656F
          F3B34BEE9114819DE24FD461425A8DC0D45011A47EC27A44E824D352401E869F
          E0EAD3BA63E3CF43FC74DB71ED0E85E9CEB3E9DDB494D414AF89EB7D95B7F685
          3D6458CA64A3A17C9B612828E6CB54D3D346104D54D34C47D58924FBF3C8D231
          66393E8001FB0500FC875E550A283A18FDD3AB755F5F387E0F6E0F9415FD57DA
          FD2BDFDBB7E2AFCA7E85A9DC32F51F78ED6DBB87DF18E8B0DBBE9E8E9B77EC4E
          C2EBADC33536137DEC6DCF0E3A0F2D34B341353CD18961901D4AEE46E109A8C1
          F903FE1E3F67F31D6F538A50E01E1E47EDE8B545DCFF00CEBBA3AAA2C3F627C3
          9F8CFF003476C63A38E7A9ECBF8E7DFA7A3F7AE43194F118E75A9EA8EE8C09C3
          D4EEDA8301A83150E661A0669843191A759A4FA9847F4C8BAAB904918F95700F
          DAD4F975B88C659C4EACAA17057353F671FF0007DBD584FC66F91137C88DA196
          CBE6FA6BB83A0F7BED4CBC7B7B7BF587736D6FE099EC0E625C7D2E4E2389CFE3
          2A327B377C60EA292AD4C592C357D652B3064628E34FBA82783535F9806B4FCC
          75E60A0F6312BF314FE5D191F7BEABD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD6DFE3DFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
          BDD7BDFBAF75EF7EEBDD7BDFBAF75FFFD9}
      end
      object qrlbl1: TQRLabel
        Left = 304
        Top = 65
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          171.979166666666700000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Performed by'
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
      object lbl_Qualification_CT: TQRLabel
        Left = 304
        Top = 98
        Width = 62
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          259.291666666666700000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Technologist'
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
      object lbl_DocName_CT: TQRLabel
        Left = 304
        Top = 82
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          216.958333333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deepak Raj Joshi'
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
      object lbl_Specialization_CT: TQRLabel
        Left = 304
        Top = 115
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          804.333333333333300000
          304.270833333333300000
          219.604166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deepak Raj Joshi'
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
      object qrshp1: TQRShape
        Left = 190
        Top = 63
        Width = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          502.708333333333300000
          166.687500000000000000
          285.750000000000000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object img1: TQRImage
        Left = 284
        Top = 29
        Width = 150
        Height = 28
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          751.416666666666700000
          76.729166666666670000
          396.875000000000000000)
        XLColumn = 0
      end
      object qrlbl10: TQRLabel
        Left = 4
        Top = 149
        Width = 623
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          394.229166666666700000
          1648.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          '1. Abbreviations : LOW = L, HIGH = H, WITHIN NORMAL LIMITS = WNL' +
          ', CRITICAL VALUE = **, COLORIMETRIC = C, KINETIC = K, ELISA = En' +
          'zyme Linked Immunosorbent Assay ,'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl11: TQRLabel
        Left = 4
        Top = 132
        Width = 39
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          10.583333333333330000
          349.250000000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Notes :'
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
      object qrlbl12: TQRLabel
        Left = 4
        Top = 175
        Width = 582
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          463.020833333333300000
          1539.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '2. The laboratory result/s should be interpreted only in the con' +
          'text of other laboratory findings  and the total clinical status' +
          ' of the patient. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl13: TQRLabel
        Left = 4
        Top = 188
        Width = 719
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          497.416666666666700000
          1902.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '3. Biochemical parameters were analyzed by automatic clinical ch' +
          'emistry analyzer using Flexor Junior, Lablife Robochem & Gesan 2' +
          '00 whereas immunological parameters were measured by using '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl14: TQRLabel
        Left = 4
        Top = 212
        Width = 582
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          560.916666666666700000
          1539.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '4. LDL- Cholesterol determination is done by direct method.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl15: TQRLabel
        Left = 4
        Top = 223
        Width = 652
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          590.020833333333300000
          1725.083333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '5. Glycosylated hemoglobin (HbA1c) assay is NGSP-certi'#64257'ed and st' +
          'andardized to the DCCT assay.  We are only the laboratory in Nep' +
          'al who has been participating in EQAS program for HbA1c.  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl16: TQRLabel
        Left = 4
        Top = 236
        Width = 673
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          624.416666666666700000
          1780.645833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '6. We have been doing daily Internal Quality Control (IQC) by us' +
          'ing assayed chemistry control & immunoassay plus control from Bi' +
          'o- Rad Laboratories, USA. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrlbl17: TQRLabel
        Left = 4
        Top = 249
        Width = 705
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          10.583333333333330000
          658.812500000000000000
          1865.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '7. We have been participating in External Quality Assurance Surv' +
          'ey (EQAS) program with CMC, Vellore, India and ANCLS, S Korea fo' +
          'r quality control of majority of biochemical parameters. '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object qrshp_lastlne: TQRShape
        Left = 11
        Top = 262
        Width = 706
        Height = 1
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          29.104166666666670000
          693.208333333333300000
          1867.958333333333000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlbl9: TQRLabel
        Left = 11
        Top = 162
        Width = 701
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          29.104166666666670000
          428.625000000000000000
          1854.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'CLIA = Chemilluminescence Immuno Assay, IMMUNOFLURESCENE = IF, N' +
          'EPHELOMETRY = N, TURBIDIMETRIC = T, BORONATE AFFINITY CHROMATOGR' +
          'APHY = AC, ELECTROPHORESIS = E'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel49: TQRLabel
        Left = 13
        Top = 200
        Width = 719
        Height = 11
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          34.395833333333330000
          529.166666666666700000
          1902.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'immunological techniques fro Diasorin Liaison-CLIA,LabLife ELISA' +
          ', i-Chroma, Mispa i2, Nycocard.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object QRSubDetail1: TQRSubDetail
      Left = 48
      Top = 314
      Width = 720
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AfterPrint = QRSubDetail1AfterPrint
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = ENT_QrFinding
      DataSet = Table_Findings
      FooterBand = GroupHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 4
        Top = 0
        Width = 200
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          0.000000000000000000
          529.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'Test'
        Font.Charset = ANSI_CHARSET
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
        Left = 338
        Top = 0
        Width = 38
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          894.291666666666700000
          0.000000000000000000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'Flag'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText4Print
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
        Left = 214
        Top = 0
        Width = 107
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333300000
          0.000000000000000000
          283.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'Finding'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRDBText2Print
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
        Left = 303
        Top = 0
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          801.687500000000000000
          0.000000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'Unit'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText5: TQRDBText
        Left = 391
        Top = 0
        Width = 204
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1034.520833333333000000
          0.000000000000000000
          539.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'Range'
        Font.Charset = ANSI_CHARSET
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
      object QRShape4: TQRShape
        Left = 8
        Top = 0
        Width = 705
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          21.166666666666670000
          0.000000000000000000
          1865.312500000000000000)
        XLColumn = 0
        Pen.Color = 14342874
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRDBText10: TQRDBText
        Left = 611
        Top = 0
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1616.604166666667000000
          0.000000000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = Table_Findings
        DataField = 'CptCode'
        Font.Charset = ANSI_CHARSET
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
    end
    object SubDetail_SampleSource: TQRSubDetail
      Left = 48
      Top = 356
      Width = 720
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = SubDetail_SampleSourceBeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        50.270833333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = ENT_QrFinding
      DataSet = Table_Footer
      FooterBand = GroupFooterBand2
      HeaderBand = GroupHeaderBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText6: TQRDBText
        Left = 3
        Top = 1
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          2.645833333333333000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Footer
        DataField = 'SampleNo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
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
      object QRDBText8: TQRDBText
        Left = 224
        Top = 1
        Width = 202
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          2.645833333333333000
          534.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Footer
        DataField = 'Collected'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
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
      object QRDBText9: TQRDBText
        Left = 432
        Top = 1
        Width = 128
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1143.000000000000000000
          2.645833333333333000
          338.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Footer
        DataField = 'Collectedby'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
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
      object QRDBText12: TQRDBText
        Left = 104
        Top = 1
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          275.166666666666700000
          2.645833333333333000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Table_Footer
        DataField = 'Samplesource'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
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
    object QRSubDetail3: TQRSubDetail
      Left = 48
      Top = 375
      Width = 720
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AfterPrint = QRSubDetail3AfterPrint
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = ENT_QrFinding
      DataSet = Table_Footnote
      FooterBand = GroupFooterBand3
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBRichText1: TQRDBRichText
        Left = 11
        Top = 4
        Width = 705
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          29.104166666666670000
          10.583333333333330000
          1865.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AutoStretch = True
        Color = clWindow
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'Footnote'
        DataSet = Table_Footnote
      end
    end
    object QRSubDetail2: TQRSubDetail
      Left = 48
      Top = 420
      Width = 720
      Height = 27
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        71.437500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = ENT_QrFinding
      PrintBefore = False
      PrintIfEmpty = True
      object Richtext_Comment: TQRLabel
        Left = 83
        Top = 3
        Width = 630
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          219.604166666666700000
          7.937500000000000000
          1666.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'Richtext_Comment'
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
      object QRLabel79: TQRLabel
        Left = 8
        Top = 3
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Comment :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object GroupFooterBand3: TQRBand
      Left = 48
      Top = 399
      Width = 720
      Height = 21
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
        55.562500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel4: TQRLabel
        Left = 4
        Top = 1
        Width = 245
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          2.645833333333333000
          648.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Please Correlate with Clinical Significants.'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object Table_Findings: TTable
    Left = 224
  end
  object Table_Footer: TTable
    AfterScroll = Table_FooterAfterScroll
    Left = 296
  end
  object Table_Footnote: TTable
    Left = 376
  end
  object qry1: TADOQuery
    Parameters = <>
    Left = 65504
    Top = 560
  end
end
