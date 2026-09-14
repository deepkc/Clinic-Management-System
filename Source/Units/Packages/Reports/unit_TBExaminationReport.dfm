object Form_TBExaminationReport: TForm_TBExaminationReport
  Left = 188
  Top = 209
  Caption = 'Health Examination Report'
  ClientHeight = 727
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 152
    Top = 160
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QueryMain
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
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      127.000000000000000000
      2970.000000000000000000
      127.000000000000000000
      2100.000000000000000000
      76.200000000000000000
      76.200000000000000000
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
    SnapToGrid = True
    Units = Native
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 29
      Top = 225
      Width = 736
      Height = 789
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        2087.562500000000000000
        1947.333333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText5: TQRDBText
        Left = 119
        Top = 26
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          314.854166666667000000
          68.791666666666700000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FULLNAME'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 14
        Top = 26
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          68.791666666666670000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FULL NAME'
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
      object QRLabel7: TQRLabel
        Left = 14
        Top = 46
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          121.708333333333300000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PASSPORT NO'
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
      object QRLabel8: TQRLabel
        Left = 402
        Top = 66
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1063.625000000000000000
          174.625000000000000000
          148.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ADDRESS'
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
      object QRLabel9: TQRLabel
        Left = 400
        Top = 26
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          68.791666666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE OF EXAM'
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
      object QRLabel10: TQRLabel
        Left = 400
        Top = 46
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1058.333333333333000000
          121.708333333333300000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE OF BIRTH'
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
      object QRLabel14: TQRLabel
        Left = 401
        Top = 6
        Width = 24
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1060.979166666667000000
          15.875000000000000000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SEX'
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
      object QRShape1: TQRShape
        Left = 0
        Top = 87
        Width = 735
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          230.187500000000000000
          1944.687500000000000000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 217
        Top = 112
        Width = 302
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          574.145833333333300000
          296.333333333333300000
          799.041666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'PHYSICAL EXAMINATION & CHEST X-RAY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 141
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          373.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRLabel11: TQRLabel
        Left = 267
        Top = 140
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          706.437500000000000000
          370.416666666667000000
          232.833333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'WEIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRLabel15: TQRLabel
        Left = 510
        Top = 141
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1349.375000000000000000
          373.062500000000000000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BLOOD PRESSURE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
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
      object QRShape2: TQRShape
        Left = 0
        Top = 135
        Width = 736
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          357.187500000000000000
          1947.333333333330000000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 773
        Top = 26
        Width = 19
        Height = 118
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          312.208333333333000000
          2045.229166666670000000
          68.791666666666700000
          50.270833333333300000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 8
        Top = 160
        Width = 368
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          21.166666666666700000
          423.333333333333000000
          973.666666666667000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 16
        Top = 184
        Width = 352
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          42.333333333333300000
          486.833333333333000000
          931.333333333333000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel31: TQRLabel
        Left = 7
        Top = 198
        Width = 134
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          18.520833333333330000
          523.875000000000000000
          354.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(Date of Chest X-ray):'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRDBText2: TQRDBText
        Left = 119
        Top = 46
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          314.854166666667000000
          121.708333333333000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PASSPORT'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 508
        Top = 66
        Width = 220
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1344.083333333330000000
          174.625000000000000000
          582.083333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'ADDRESS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 508
        Top = 26
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1344.083333333330000000
          68.791666666666700000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'DATEOFEXAM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 508
        Top = 46
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1344.083333333330000000
          121.708333333333000000
          587.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'DATEOFBIRTH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText9: TQRDBText
        Left = 47
        Top = 156
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          124.354166666667000000
          412.750000000000000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'HEIGHT'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 285
        Top = 161
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          754.062500000000000000
          425.979166666667000000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'WEIGHT'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 551
        Top = 160
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1457.854166666670000000
          423.333333333333000000
          219.604166666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'BLOODPRESSURE'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 142
        Top = 156
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          375.708333333333300000
          412.750000000000000000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cm'
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
      object QRLabel75: TQRLabel
        Left = 378
        Top = 161
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1000.125000000000000000
          425.979166666666700000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'kg'
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
      object QRLabel76: TQRLabel
        Left = 640
        Top = 160
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1693.333333333333000000
          423.333333333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'mm/hg'
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
      object QRShape38: TQRShape
        Left = 0
        Top = 47
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          124.354166666667000000
          1944.687500000000000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 0
        Top = 41
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          108.479166666667000000
          1944.687500000000000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 0
        Top = 4
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          10.583333333333300000
          1944.687500000000000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel80: TQRLabel
        Left = 109
        Top = 6
        Width = 4
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          288.395833333333300000
          15.875000000000000000
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
      object QRLabel81: TQRLabel
        Left = 109
        Top = 26
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          288.395833333333300000
          68.791666666666670000
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
      object QRLabel83: TQRLabel
        Left = 109
        Top = 46
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          288.395833333333300000
          121.708333333333300000
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
      object QRLabel84: TQRLabel
        Left = 499
        Top = 26
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          68.791666666666670000
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
      object QRLabel85: TQRLabel
        Left = 499
        Top = 46
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          121.708333333333300000
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
      object QRLabel87: TQRLabel
        Left = 499
        Top = 6
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          15.875000000000000000
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
      object QRShape43: TQRShape
        Left = 0
        Top = 23
        Width = 735
        Height = 1
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          60.854166666666700000
          1944.687500000000000000)
        XLColumn = 0
        Pen.Color = clWhite
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRDBText37: TQRDBText
        Left = 119
        Top = 6
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          314.854166666667000000
          15.875000000000000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PATIENTID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel100: TQRLabel
        Left = 14
        Top = 6
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          15.875000000000000000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL NO'
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
      object QRLabel101: TQRLabel
        Left = 109
        Top = 66
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          288.395833333333300000
          174.625000000000000000
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
      object QRShape10: TQRShape
        Left = -1
        Top = 180
        Width = 737
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          -2.645833333333330000
          476.250000000000000000
          1949.979166666670000000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 14
        Top = 66
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          37.041666666666670000
          174.625000000000000000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CITIZENSHIP NO'
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
      object QRLabel47: TQRLabel
        Left = 500
        Top = 66
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1322.916666666667000000
          174.625000000000000000
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
      object QRDBText44: TQRDBText
        Left = 119
        Top = 66
        Width = 269
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          314.854166666667000000
          174.625000000000000000
          711.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'CITIZENSHIPNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 7
        Top = 227
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          600.604166666666700000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'I. (1) Result:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object img_Nonspecific: TQRImage
        Left = 106
        Top = 254
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Style = psInsideFrame
        Size.Values = (
          39.687500000000000000
          280.458333333333000000
          672.041666666667000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel16: TQRLabel
        Left = 13
        Top = 254
        Width = 89
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          34.395833333333330000
          672.041666666666700000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1. Non-Specific'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel17: TQRLabel
        Left = 167
        Top = 254
        Width = 79
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          441.854166666666700000
          672.041666666666700000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Inactive TB'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object img_Inactive: TQRImage
        Left = 250
        Top = 255
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          661.458333333333000000
          674.687500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel18: TQRLabel
        Left = 319
        Top = 254
        Width = 71
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          844.020833333333300000
          672.041666666666700000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3. Active TB'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object img_active: TQRImage
        Left = 395
        Top = 255
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1045.104166666670000000
          674.687500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel19: TQRLabel
        Left = 349
        Top = 279
        Width = 69
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          923.395833333333300000
          738.187500000000000000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.1 Infective'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel20: TQRLabel
        Left = 349
        Top = 304
        Width = 106
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          923.395833333333300000
          804.333333333333300000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.2 Drug-Sensitive'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel21: TQRLabel
        Left = 484
        Top = 279
        Width = 70
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1280.583333333333000000
          738.187500000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NonInfective'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel22: TQRLabel
        Left = 507
        Top = 304
        Width = 50
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1341.437500000000000000
          804.333333333333300000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MRD TB'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object img_infective: TQRImage
        Left = 423
        Top = 280
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1119.187500000000000000
          740.833333333333000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_noninfective: TQRImage
        Left = 560
        Top = 282
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1481.666666666670000000
          746.125000000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Drugsensitive: TQRImage
        Left = 458
        Top = 306
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1211.791666666670000000
          809.625000000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_MDR: TQRImage
        Left = 562
        Top = 303
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1486.958333333330000000
          801.687500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel23: TQRLabel
        Left = 7
        Top = 331
        Width = 363
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          875.770833333333000000
          960.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'II. (2) Treatment Outcome -For Person who has TB history'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel24: TQRLabel
        Left = 14
        Top = 356
        Width = 112
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          37.041666666666700000
          941.916666666667000000
          296.333333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1. Under-Treatment'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel25: TQRLabel
        Left = 195
        Top = 356
        Width = 50
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          515.937500000000000000
          941.916666666667000000
          132.291666666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Cured'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel26: TQRLabel
        Left = 297
        Top = 356
        Width = 150
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          785.812500000000000000
          941.916666666667000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3. Complicated Treatment'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel27: TQRLabel
        Left = 497
        Top = 356
        Width = 51
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1314.979166666670000000
          941.916666666667000000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4. Failed'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel28: TQRLabel
        Left = 599
        Top = 356
        Width = 70
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1584.854166666670000000
          941.916666666667000000
          185.208333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5. Defaulted'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object img_Undertreatment: TQRImage
        Left = 130
        Top = 357
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          343.958333333333000000
          944.562500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Cured: TQRImage
        Left = 249
        Top = 357
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          658.812500000000000000
          944.562500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_complicated: TQRImage
        Left = 451
        Top = 357
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1193.270833333330000000
          944.562500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Failed: TQRImage
        Left = 552
        Top = 357
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1460.500000000000000000
          944.562500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Defaulted: TQRImage
        Left = 673
        Top = 357
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1780.645833333330000000
          944.562500000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel33: TQRLabel
        Left = 7
        Top = 428
        Width = 108
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1132.416666666670000000
          285.750000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'License Number:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel34: TQRLabel
        Left = 219
        Top = 428
        Width = 123
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          579.437500000000000000
          1132.416666666670000000
          325.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name of Physician:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel35: TQRLabel
        Left = 533
        Top = 631
        Width = 175
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1410.229166666670000000
          1669.520833333330000000
          463.020833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Chief of Hospital(Signature)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRShape6: TQRShape
        Left = 0
        Top = 486
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          1285.875000000000000000
          1944.687500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 0
        Top = 510
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          1349.375000000000000000
          1944.687500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 534
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          1412.875000000000000000
          1944.687500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 376
        Top = 462
        Width = 1
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          193.145833333333000000
          994.833333333333000000
          1222.375000000000000000
          2.645833333333330000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel38: TQRLabel
        Left = 7
        Top = 490
        Width = 263
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1296.458333333330000000
          695.854166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Remarks about examinee'#39's domestic stay'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel39: TQRLabel
        Left = 7
        Top = 514
        Width = 187
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1359.958333333330000000
          494.770833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Additional close examination'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel40: TQRLabel
        Left = 7
        Top = 550
        Width = 461
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1455.208333333330000000
          1219.729166666670000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'We hereby certify that the examinee'#39's health status is assessed ' +
          'as above'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel29: TQRLabel
        Left = 7
        Top = 654
        Width = 157
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          1730.375000000000000000
          415.395833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'III. (3) Smear Microscopy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel41: TQRLabel
        Left = 244
        Top = 655
        Width = 66
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          645.583333333333000000
          1733.020833333330000000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1. Positive'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel42: TQRLabel
        Left = 382
        Top = 655
        Width = 72
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1010.708333333330000000
          1733.020833333330000000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2. Negative'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object img_Positive: TQRImage
        Left = 325
        Top = 656
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          859.895833333333000000
          1735.666666666670000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Negetive: TQRImage
        Left = 461
        Top = 656
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          39.687500000000000000
          1219.729166666670000000
          1735.666666666670000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRLabel43: TQRLabel
        Left = 592
        Top = 428
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1566.333333333330000000
          1132.416666666670000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Signature'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel44: TQRLabel
        Left = 7
        Top = 754
        Width = 108
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1994.958333333330000000
          285.750000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'License Number:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel45: TQRLabel
        Left = 219
        Top = 754
        Width = 160
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          579.437500000000000000
          1994.958333333330000000
          423.333333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name of Lab Technician:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel46: TQRLabel
        Left = 592
        Top = 754
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1566.333333333330000000
          1994.958333333330000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Signature'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRLabel48: TQRLabel
        Left = 7
        Top = 684
        Width = 271
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          18.520833333333300000
          1809.750000000000000000
          717.020833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'The examination was performed as above III (3)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRDBText11: TQRDBText
        Left = 119
        Top = 429
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          314.854166666667000000
          1135.062500000000000000
          254.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PHYSICIANLICENSE'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 347
        Top = 429
        Width = 239
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          918.104166666667000000
          1135.062500000000000000
          632.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PHYSICIANNAME'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText14: TQRDBText
        Left = 118
        Top = 755
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          312.208333333333000000
          1997.604166666670000000
          254.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'TECHNICIANLICENSE'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText15: TQRDBText
        Left = 383
        Top = 755
        Width = 205
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1013.354166666670000000
          1997.604166666670000000
          542.395833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'TECHNICIANNAME'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object img_male: TQRImage
        Left = 538
        Top = 6
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Style = psInsideFrame
        Size.Values = (
          39.687500000000000000
          1423.458333333330000000
          15.875000000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object img_Female: TQRImage
        Left = 648
        Top = 6
        Width = 27
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Frame.Style = psInsideFrame
        Size.Values = (
          39.687500000000000000
          1714.500000000000000000
          15.875000000000000000
          71.437500000000000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676514030000FFD8FFE000104A46494600010101006000
          600000FFDB00430007050506050407060606080707080B120B0B0A0A0B160F10
          0D121A161B1A191619181C2028221C1E261E1819233024262A2B2D2E2D1B2232
          35312C35282C2D2CFFDB0043010708080B090B150B0B152C1D191D2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C
          2C2C2C2C2C2C2C2C2C2C2C2C2CFFC0001108000F001C03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F74D
          0BC5569AD497F07105D69F3343710B1E5083D7E84739AE57C47F19345D32FC69
          7A2A3F8835376DA21B321941F42DD2B8DF897F0F358D63E29C09A25DFD921D66
          DCFDA583ED1F211B891DF218715E93E06F86FA1F8234E55B2B712DE32FEF6EA5
          00C8E7DBFBA3D850064E9DA678FBC5045D7883548BC3F66C7E5B1D3C6652BE8F
          212707FDDAED74CD22DF4BB4F221F35C16DCCD2CAD2331F5249CF6AD00314B8A
          00FFD9}
      end
      object QRShape12: TQRShape
        Left = 248
        Top = 135
        Width = 8
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          119.062500000000000000
          656.166666666667000000
          357.187500000000000000
          21.166666666666700000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape13: TQRShape
        Left = 496
        Top = 135
        Width = 8
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          119.062500000000000000
          1312.333333333330000000
          357.187500000000000000
          21.166666666666700000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 383
        Top = 491
        Width = 116
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1013.354166666670000000
          1299.104166666670000000
          306.916666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'REMARKSRESULT'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 383
        Top = 515
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1013.354166666670000000
          1362.604166666670000000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'EXAMINATION'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 508
        Top = 6
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1344.083333333333000000
          15.875000000000000000
          74.083333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Male'
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
      object QRLabel13: TQRLabel
        Left = 603
        Top = 6
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1595.437500000000000000
          15.875000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Female'
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
      object QRDBText8: TQRDBText
        Left = 147
        Top = 199
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          388.937500000000000000
          526.520833333333000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'XRAYDATE'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 462
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          1222.375000000000000000
          1944.687500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel36: TQRLabel
        Left = 7
        Top = 466
        Width = 162
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          18.520833333333300000
          1232.958333333330000000
          428.625000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Summary of Examination'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
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
      object QRDBText16: TQRDBText
        Left = 383
        Top = 467
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1013.354166666670000000
          1235.604166666670000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'Summary'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 9
        Top = 396
        Width = 298
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          23.812500000000000000
          1047.750000000000000000
          788.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'The-examinaion was performed as above I(1) and II(2)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object TitleBand1: TQRBand
      Left = 29
      Top = 48
      Width = 736
      Height = 177
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = True
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        468.312500000000000000
        1947.333333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel4: TQRLabel
        Left = 774
        Top = 8
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2047.875000000000000000
          21.166666666666700000
          177.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Print Date :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 269
        Top = 115
        Width = 198
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          711.729166666666700000
          304.270833333333300000
          523.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Certificate of Health'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 16
      end
      object QRLabel73: TQRLabel
        Left = 590
        Top = 153
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1561.041666666667000000
          404.812500000000000000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Print Date :'
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
      object QRLabelPDate: TQRLabel
        Left = 656
        Top = 153
        Width = 27
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1735.666666666667000000
          404.812500000000000000
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date'
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
      object QRImage1: TQRImage
        Left = 8
        Top = 10
        Width = 116
        Height = 121
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          320.145833333333000000
          21.166666666666700000
          26.458333333333300000
          306.916666666667000000)
        XLColumn = 0
        Picture.Data = {
          07544269746D617066B10000424D66B100000000000036000000280000007800
          00007E000000010018000000000030B100000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F1F1F1EAEAEAC6D6EFCC99CC9999CC9999CC9999CC9999FF807CFF807CFF807C
          FF807CFF807CFF807CFF807CFF807CFF807CFF807CFF807CFF807CFF807CFF99
          99FF9999FF9999CCCC99CCC6D6EFDDDDDDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF8F8F8F1F1F1E3E3E3C0C0C09999CC9999CC9999CC6666CC6666CC
          6666CC6666CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC5050
          FF5050FF6666CC6666CC807CFF9999CC9999CCCC99CCC6D6EFF1F1F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFD6E7E7C6D6EF9999CC9999CC807CFF6666CC6666CC6666CC6666CC33
          33CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC
          3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC3333CC5050
          FF6666CC807CFF9999CCC6D6EFE3E3E3F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
          C6D6EFCCCCFFCCCCFF9999FF6666CC6633CC3333CC3333CC3300CC3333CC6666
          CC6666CC6666CC3333CC3333CC3300CC3333CC3333CC6633CC3333CC3333CC33
          33CC6666CC3300CC0000CC3333CC6666CC3333CC3333CC3333CC3333CC3300CC
          3300CC0000CC3300CC3333CC3333CC3333CC6633CC6666CC9999CCC6D6EFCCCC
          FFC6D6EFEAEAEAF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1
          F1F1C6D6EF9966CC6666CC5050FF3333CC3333CC0000CC0000CC3300CC3333CC
          3333CC6633CC9999CC9999CC9999CC6666CC9999CC6666CC9999CC6666CCB2B2
          B29999CC9999CC9999CC9999CC3300CC0000CC6666CCC0C0C09999CC6666CC99
          66CC6666CC3333CC6666CC3333CC3333CC6666CC6633CC3300CC3300CC3333CC
          3300CC3333CC5050FF6666CC9966CC9999CCD6E7E7F8F8F8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFEAEAEAC6D6EF6666CC3333CC3300CC3300CC3300CC3300CC0000CC3333CC33
          33CC3333CC9999CC6666CC9999CC9999CC9999CC9999CC6666CCC0C0C0C0C0C0
          C0C0C09999CCB2B2B2C0C0C0B2B2B290A9AD9999CC3300CC0000CC3333CC9999
          CC9999CC9999CC9999CC9999CC6666CC9999CC9966CC9999CC6666CC9966CC66
          66CC6666CC6666CC3333CC3333CC3300CC3300CC3333CC3333CC6666CC9999CC
          D6E7E7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EAEAEA9999CC807CFF6666CC3333CC3300CC3300CC3300CC3333CC3333CC6633
          CC6633CC6666CC9999CC9999CC9999CC9999CCCCCCCC9999CC9999CC9999CC66
          66CC9999CCC0C0C0CBCBCB9966CC9966CC6666CC6666CC6666CC6666CC3300CC
          0000CC3333CC6666CC6666CC6666CC9999CC9999CC6666CC9999CCC0C0C0C0C0
          C09999CC9966CC9999CC9999CC6666CC6666CC6666CC6666CC6633CC0000CC00
          00CC3300CC3333CC6666CC807CFF9999CCC6D6EFF8F8F8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEAEAEAC6D6EF6666CC3333CC3300CC0000CC0000CC0000CC3333CC6666CC
          9999CC6666CC6666CC9999CC9999CCC0C0C0CBCBCB9999CC9999CC9999CC6666
          CC6666CC9999CC9999CC6666CC9999CC9966CC3333CC3333CC3333CC3333CC33
          33CC3333CC3300CC0000CC3300CC3333CC3333CC3333CC3333CC6633CC6633CC
          6666CC9966CC9999CC9999CC6666CCB2B2B2C0C0C06666CC9999CC6666CC9999
          CC6666CC3300CC0000FF3300CC3300CC0000CC3333CC3333CC6633CC9999CCDD
          DDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF8F8F8C6D6EF9999CC3333CC0000CC0000CC3300CC0000CC0000CC33
          00CC6666CC9999CCCBCBCB6666CC6666CC9999CC9966CC9999CC9999CC6666CC
          6633CC3333CC3300CC3300CC6666CC9966CC6666CC6666CC3333CC0000CC0000
          CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FF0000CC00
          00CC0000CC3300CC3300CC3333CC3333CC9999CC6666CC6666CC9999CC9999CC
          C0C0C06666CC9999CC6633CC3300CC3300CC6633CC6633CC3333CC3333CC3300
          CC3300CC3333CC6666CCC6D6EFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD6E7E79999FF6633CC3300CC0000CC3300CC3333CC6666
          CC3333CC0000CC3300CC6666CC9999CCC0C0C09999CC6666CC6666CC6666CC33
          33CC3333CC3300CC3300CC0000CC0000CC0000CC3333CC3366CC3366CC3333CC
          0033CC0033CC0033CC0033CC0033CC0033CC0033CC0033CC0033CC0033CC0033
          CC0033CC0033CC0033CC0033CC0033CC0000CC0000CC3300CC6666CC3333CC33
          33CC3333CCC0C0C0C0C0C09999CC9999CC3333CC0000CC3300CC6666CC9999CC
          6666CC6666CC3333CC3333CC3333CC3333CC3333CC9966CCC6D6EFEAEAEAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEAEAEA9999CC5050FF3333CC3300CC0000CC3333CC
          6666CC9999CC9999CC6666CC3300CC3300CC6666CC6666CC6666CC3333CC3333
          CC3333CC3333CC0000CC0000CC0000CC0000CC0033CC0033CC0066CC0066CC00
          66CC0099CC0066CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC
          0099CC0099CC0099CC0099CC0099CC0099CC0066CC0066CC0066CC0066CC0033
          CC3333CC0033CC0000CC0000CC6666CC6666CC6666CC3333CC3300CC0000CC33
          33CC9999CCC0C0C09999CC6666CC9966CC6666CC6666CC3333CC0000CC3300CC
          3333CC6666CCC6D6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1C6D6EF6666CC3333CC0000CC0000CC33
          33CC5050FF6666CCB2B2B2CBCBCB9999CC9999CC3333CC0000CC3333CC3333CC
          0000CC0000CC0000CC0000CC0000CC0033CC0033CC0066CC0066CC0099CC0099
          CC0099CC3399CC0099CC0099CC0099CC0099CC0099CC0099CC00CCCC00CCCC00
          99CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC
          0099CC0099CC0099CC0066CC0066CC0066CC0033CC3333CC3333CC3333CC0000
          CC0000CC0000CC3333CC6666CC9999CC9999CC6633CC9999CC9966CC6666CC66
          66CC3333CC3300CC3300CC3300CC3333CC9999CCD6E7E7FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D6EF9999CC6633CC3300CC3300
          CC3333CC6666CC9999CC9999CC6666CC9999CCC0C0C09999CCC0C0C06633CC00
          00CC0000CC0000CC0000CC0033CC0033CC0033CC0066CC0066CC0099CC0099CC
          0099CC0099CC0066990066993366993366CC3366CC0066CC0066990066990099
          990099CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC00999900669900
          66990066CC3366CC0066CC3366990066990099990099CC0099CC0099CC0066CC
          0066CC0033CC0033CC0033CC0000CC0000CC3300CC3333CC6666CC6666CC9999
          CC9999CC6666CC6666CC6666CC6666CC6666CC3333CC3300CC3333CC6666CC99
          99CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F16666CC3300CC
          3300CC3300CC3333CC9999CC9999CCB2B2B2C0C0C09999CC6666CC6666CC9999
          CC9999CC3333CC0000CC0000CC0033CC0033CC0066CC0099CC0099CC0099CC00
          99990099990080800080803366990066990033663333993366CC3366CC0066CC
          0066CC0066CC0066990066990099990099CC0099CC0099CC0099CC0066990066
          990066CC0066CC0066CC3366CC3366CC3366CC33339900336600669900999900
          99993399990099CC0099CC0099CC0099CC0066CC0066CC0033CC0000CC0000CC
          3300CC6666CC9999CC9999CC9966CC9999CC9999CC9999CC6666CC6666CC6666
          CC3333CC3300CC3333CC9966CCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6
          D6EF3300CC0000CC3300CC6666CC9999CC9999CCB2B2B290A9AD9999CC6666CC
          3333CC3300CC3333CC3333CC0033CC0033CC0066CC0066CC0099CC0099CC0099
          CC0099990066990066990066990066990066CC33669900339900339900339900
          33990033CC0066CC0066CC0033CC0033CC0033CC0066990099990099CC0099CC
          0066990066990066CC0033CC0033CC0066CC0066CC0033CC0033990033990033
          990066990066CC0066CC3366990066990099CC0099CC0099CC0099CC0099CC00
          99CC0066CC0033CC0000CC3333CC6666CC6666CC3333CC9999CC9999CC9999CC
          6666CC9999CC9999CC6666CC3333CC3300CC3333CCC6D6EFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFCC99FF3300CC0000FF3333CC9999CC9999CC9999CC6666CC66
          33CC3333CC3333CC0000CC0000CC0033CC0033CC0066CC0066CC0099CC00CCCC
          0099CC0099CC0066990033990033993333993333CC3333CC3333CC3333CC3333
          CC0033990033990033660033660066990066990033CC0033CC0033CC00339900
          33990066990066990033990033990033CC0033CC0033CC006699006699003366
          0033660033990033CC0033CC0033CC0033CC3333CC3333CC0066CC0066990066
          9900999900CCCC00CCCC0099CC0066CC0066CC0033CC3333CC3300CC3300CC33
          33CC6633CC6666CC6666CC9999CC9999CC6666CC6666CC6666CC3300CC807CFF
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF8F8F89999CC3300CC0000FF3333CC6666CC6666
          CC9999CC3333CC3300CC0000CC0000CC0000CC0033CC0066CC0099CC0099CC00
          99CC0099CC0099CC009999339999006699003366003399333399336699333399
          3333993333993333990066990066990033660033990066990033990033990033
          6600339900669900339900336600336600339900669900339900339900339900
          3399006699003366003366006699003399003399333399336699336699336699
          3333990033990033990066990099CC0099CC0099CC0099CC0099CC0099CC0066
          CC0033CC0000CC0000CC0000CC0000CC6633CC9999CC9999CC6666CC9999CC66
          66CC0000CC6666CCF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F19999CC6633CC3300CC0000CC
          0000CC3333CC6666CC3333CC0000CC0000FF0000CC0033CC0066CC0099CC0099
          CC0099CC0099CC0099CC00999900669900669933669900339900339900339933
          33660066990066990066993333663333660080800066990033990033CC0033CC
          0033CC3333990033990066990099990099990099990099990099990099990066
          990033990033990033CC0033CC00339900339900669900669900336633336600
          66990066990066990033660033993333990066990066990066990099990099CC
          0099CC0099CC0099CC0099CC0033CC0000CC0000CC0000CC3300CC9966CCC0C0
          C09999CC9999CC3333CC0000CC6666CCC6D6EFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8C6D6EF9999CC6666CC3333CC00
          00CC0000CC0000CC0000CC3300CC3333CC0000CC0000FF0033CC0033CC0066CC
          0099CC0099CC0099CC0099CC0066990066990066990033CC0033CC0033CC0033
          CC0033990066990033660033990066CC0066CC0033990033660066990066CC33
          66CC0033CC0033CC0066CC0066CC0099990099CC0099CC0099CC0099CC0099CC
          0099CC0099CC0099CC0066990066990033CC0033CC0033CC0066CC0066CC0066
          990033660033990066CC0066990033660033660033990033CC0033CC0033CC00
          33CC0066CC3366990066990099CC3399CC3399CC0099CC0066CC0033CC0033CC
          0000CC6666CC9999CC9966CC3333CC0000CC0000CC3333CC6666CC9999CCC6D6
          EFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9999CC6666CC3333
          CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000FF0000CC0033CC00
          66CC0099CC0099CC0099CC0099CC0099CC009999006666003399003399003399
          0033990033990033990033990066990033990033CC0033CC0033CC0033990033
          990033CC0033CC0033CC0066CC0066990099990099990099CC33999933999900
          99CC0099CC0099CC0099CC0099CC0099CC0099CC0099CC0066990066990033CC
          0033CC0033CC0033CC0033990033990033CC0066CC0033CC0033990033990033
          990033993333990033CC0033CC3333990033660066990099CC0099CC0099CC00
          99CC0099CC0066CC0033CC3333CC3333CC3333CC3300CC0000CC3300CC0000CC
          0000CC3333CC6666CC9999CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1C6D6EF9999CC
          3333CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000
          CC0000CC0066990099CC0099CC0099CC0099CC0099CC0099CC00999900669900
          33990033990033660033660033990033990033990066990033CC0033FF0066CC
          0033990033990033993366CC0066CC0066990066990099993399CC3366993399
          996699993366993399993399CC3399CC0099990099CC0099CC0099CC0099CC00
          99CC0099990066990033993366CC0066CC0033990033990033CC0066CC0033CC
          0033990066990033660033993333990033660033993333993333660066990099
          CC0099CC0099CC0099CC0099CC0099CC0066CC0000CC0000CC0000CC0000CC00
          00CC0000CC3300CC0000CC0000CC0000CC3333CC9999CCC6D6EFEAEAEAFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA99
          66CC3333CC3333CC3300CC0000CC0000CC3300CC0000CC0000CC0000CC0000CC
          0000CC0000CC2100A50000800033660066990099CC0099CC0099CC0099990066
          990066CC0066CC0033CC0033990033660033990033CC0033CC0033990033CC00
          33CC0033CC006699009999006699006699009999009999009999336699336699
          6699CC6666996699CC99CCCC3366996666CC6699CC3366993366993366993399
          990066990099CC0099CC0099CC0099990099990066990066CC00669900669900
          66990066990033CC0033CC0066990033990033CC0066CC0033990033990033CC
          3366CC0066990066990099990099CC0099CC0099CC0099990066990000990000
          CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC3333CC33
          33CC6666CCC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF9999CC3333CC0000CC0000CC3300CC3300CC3300CC0000CC0000CC00
          00CC0000CC0000CC0000CC2100A50000800000800000800033990099CC0099CC
          0099CC0066990033CC0033CC0033CC0033990066990033990066CC0033CC0033
          990033990033990033990066990099990099CC0099CC0099CC0099CC0099CC00
          99996699996666999999CC9999CC9999CC9999CC6666999999CC9999CC669999
          6699996699CC6699993366993366993399990099990099CC0099CC0099CC0099
          CC0099CC3399CC0099CC0099990066990033CC0033990066990033CC0066FF00
          33CC0033990033993366CC0066CC0033CC0066990099990099CC0099CC006699
          0033660000800000800000CC0000CC0000CC0000CC0000CC0000CC3300CC0000
          CC0000CC0000CC0000CC3300CC3333CCC6D6EFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF1F1F16666CC0000CC0000CC3300CC3300CC0000CC0000
          CC0000CC0000CC0000CC0000CC0000CC0000CC00009900008000008000339900
          66990099CC0099CC0066990033990066CC0066CC0033990033990033990033CC
          0033CC0033CC0066990066990066990066990099990099CC0099CC00CCCC00CC
          CC00CCCC0099993366999999CC9999CC6699CC99CCCC6666CC6666996666CC99
          CCFF99CCCC9999CC9999CC9999CC9999CC6666996666993366993366993399CC
          0099990099CC0099CC3399CC3399CC0099CC0099CC0099990066990033990066
          990066990033CC0066CC0033990033660033990066CC0066CC00339900669900
          99CC0099CC0066990033990000800000802100A50000CC0000CC0000CC0000CC
          0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC6666CCFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F19999CC3333CC0000CC0000CC0000CC
          0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000990000
          800000660066990099CC0099CC00669900336600339900669900669900336600
          33990033990033CC0033CC0066993399990099990099993399CC0099CC0099CC
          0099CC0099CC0099CC0099CC3366999999CC99CCCCC6D6EF3366996666996666
          996666999999CC99CCFFCCCCFF99CCFF9999CC9999CC9999CC6699CC66669966
          99CC6699CC6699CC3399993366990099CC0099CC0099CC0099CC0099CC0099CC
          0099CC0099990099990099990033990033CC0033990033990033990066990066
          990033990033990066993399CC3366990033990000990000800000800000CC00
          00CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC
          3333CCDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D6EF9999CC3333CC0000CC00
          00CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC
          0000CC0000CC2100A50033330066663399CC0099CC0066990033660033660033
          660033660033990033CC0033990033990066990099993399CC0099CC0099CC00
          99CC0099CC0099CC0099CC0099CC0066CC0066CC666699C6D6EF6699CC9999CC
          6666993333666666996699CC99CCFF99CCFF99CCFF99CCFFCCCCFF9999CC6666
          996699CC9999CC99CCFF99CCFF99CCFF9999CC6666993366990099CC0099CC00
          99CC0099CC0099CC0099CC0099CC0099CC3399CC006699003399003399003399
          0033CC0033990066990033660033660033660080800066660066663333CC2100
          A52100A50000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00
          00CC0000CC0000CC3300CC6666CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CCCCFF9999FF6666CC3333
          CC0000CC0000CC3300CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00
          00CC0000CC3300CC3333CC6666CC9999CC393939222222006666006699006699
          0033990033990033660033660066CC0033CC0033990066990080800099CC0099
          CC0099CC0099CC0099CC0099CC0099CC0099CC0033CC0033CC0033CC33669999
          99CC6666996666996699996666996699CC99CCFF99CCFF99CCFF99CCFF99CCFF
          CCCCFF9999CC9999CC99CCFF99CCFF99CCFF9999CC9999CC9999CC6666993333
          660066990099CC0099CC0099CC0099CC0099CC0099CC0099993399CC0099CC00
          66990033660033990066FF0033CC0066660033660033990033990033331C1C1C
          33666699CCCC6666CC3333CC3333CC0000CC0000CC0000CC0000CC0000CC0000
          CC0000CC0000CC0000CC0000CC0000CC0000CC3333CC6666CCCC99CCE3E3E3F8
          F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E36666CC
          3333CC0000CC0000CC0000CC3300CC3300CC3300CC3300CC0000CC0000CC0000
          CC0000CC0000CC3333CC6666CC9999CC9999CCC6D6EFE3E3E342424200330000
          33330066CC3366CC0033CC0033990033330033990066FF003399336699336666
          0066660099990099990099990099990099993366993366993366CC3333CC3333
          CC3333CC3366996666996699CC6699CC9999CC9999CC99CCCC99CCFF99CCFF99
          CCFF99CCFF99CCFFCCCCFFCCCCFFCCCCFF9999CC6699CC6699CC9999CC9999CC
          9999CC90A9AD3366993366993399990099990099990099990099990099990066
          6600808033CCCC0099990033330033330033CC0033CC00339900669900339933
          66CC003399003333777777F8F8F8EAEAEA9999CC9999CC6633CC3333CC0000CC
          0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000
          CC3333CC6666CC9999CCC6D6EFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEAEAEA9999CC6633CC3333CC3300CC3300CC3300CC0000CC3300CC3300CC
          0000CC0000CC3300CC3333CC6666CC9999CCD7D7D7F8F8F8FFFFFFFFFFFFF1F1
          F14D4D4D1616160033990033CC0033CC0033990033660033330033990033CC00
          33663366660033331C1C1C3366993366993366993366993366996666996666CC
          3333CC3333CC3333CC5050FF6699CC6699CC9999CC99CCFF99CCFFCCCCFF9999
          CC9999CC9999CC99CCFF99CCFF99CCFFCCCCFFCCCCFF9999CC66669966669966
          669999CCCCC6D6EFC6D6EFC6D6EF9999CC9999CC6699CC669999339999339999
          3399993366990033330033333399990080802222220033330033990033CC0066
          990066990033990033CC0066CC003399868686F1F1F1FFFFFFFFFFFFF0FBFFC6
          D6EF9999CC3333CC3333CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC
          0000CC0000CC0000CC0000CC0000CC3333CC9999CCC6D6EFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1E3E3E39999CC9966CC5050FF3300CC00
          00CC3300CC3300CC3300CC3333CC6666CCCC99CCEAEAEAF8F8F8FFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F88080800033660033990033990033660033990033660033
          330033660033990033330033330033002222226666996699CC6699CC9999CC99
          99CC99CCFF99CCFF5050FF3333CC3333CC3333CC99CCFF99CCFF99CCFF99CCFF
          99CCFFCCCCFF6699CC6666996699CC9999CC99CCFFCCCCFFCCCCFF9999CC9999
          CC9999CC9999CC9999CC9999CCC6D6EFCCCCFFCCCCFFC6D6EFC6D6EFCCCCFFC6
          D6EF99CCCC9999CC9999CC669999333333003300336633393939222222003333
          0033660033CC0066990066990033660033660033CC0033CC666699DDDDDDFFFF
          FFFFFFFFFFFFFFFFFFFFF1F1F1C6D6EF9999CC6666CC3333CC3300CC0000CC00
          00CC0000CC0000CC0000CC3300CC3333CC5050FF6666CC9999CCC6D6EFD6E7E7
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EAEA
          EA9999CC3300CC0000CC3300CC3300CC3300CC9999CCE3E3E3F8F8F8FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2333366003366003366003333
          0033990033990033330033330033330033000033000033004D4D4D9999CC99CC
          FF99CCFF99CCFFCCCCFFCCCCFFCCCCFF5050FF3333CC0000CC3333CC9999FFCC
          CCFF99CCFF99CCFF99CCFFCCCCFF6699CC6666999999CC6699CC99CCFF99CCFF
          9999CC9999CC99CCCCC6D6EFCCCCFFC6D6EF99CCCCC6D6EFCCCCFFC6D6EFCCCC
          FFCCCCFFCCCCFFCCCCFFC6D6EFCCCCFFC6D6EFC6D6EF5F5F5F00330000333322
          2222222222292929003333003366006699003366003399003366003333333399
          3333999999CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1DDDDDDC6D6
          EF6666CC3300CC0000CC3300CC3300CC3300CC6666CCC6D6EFCCCCFFD6E7E7F1
          F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC6D6EF3300CC0000CC0000CC0000CC2100A59999CCFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA66666600
          33660033660033660033CC003399292929222222222222222222003333222222
          666699CCCCFFCCCCFF99CCFF99CCFF99CCFF99CCFF99CCFF6666CC3333CC3300
          CC3333CC807CFFCCCCFF99CCFF99CCFF99CCFFCCCCFF9999CC6699CCC6D6EF66
          99CC9999CC9999CC6666999999CCC6D6EFC6D6EFCCCCFFCCCCFFCCCCFFCCCCFF
          CCCCFFCCCCFFCCCCFFCCCCFFC6D6EFC6D6EFC6D6EFCCCCFFD6E7E7C6D6EF6666
          660033000033001C1C1C1C1C1C0033003333000033330066660033330033CC00
          33660033333333666666999999CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC0C0C03300CC0000CC3300FF3300CC3300CCC0C0C0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF807CFF0000CC0000CC0000CC3300CC
          3333CCC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3C0C0C0C0C0C0D7D7
          D7E3E3E36666990033990033CC0000800033CC00336622222200330000333300
          0080003399003366666699CCCCFFCCCCFF99CCFF99CCFF99CCFF99CCFF99CCFF
          9999FF3333CC3333CC3333CC6666CC99CCFFCCCCFF99CCFFCCCCFFCCCCFF99CC
          FF9999CCCCCCFF99CCCC9999CC6699CC66669999CCCCCCCCFFCCCCFFCCCCFFCC
          CCFFCCCCFFC6D6EFCCCCFFCCCCFFCCCCFFC6D6EFC6D6EF90A9AD9696969999CC
          C0C0C090A9AD5F5F5F2222222222222929291C1C1C1616162222220033330033
          660033660033CC3333993333663366CC666699C0C0C0EAEAEAF1F1F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C03333CC0000CC0000FF3300FF
          3300CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F15050FF0000CC33
          00CC3333CC9966CCC6D6EFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
          4242423939395555558080803366990066CC0033CC2100A50033CC0000800033
          330033000033660000CC0000CC2100A53333999999CCCCCCFF99CCFF99CCFF99
          CCFF99CCFF99CCFF99CCFF5050FF3333CC3333CC3333CC6666CC9999CC99CCFF
          CCCCFFCCCCFFCCCCFF9999CC99CCCCCCCCFFC6D6EFC6D6EF99CCCCC6D6EFCCCC
          FFCCCCFFCCCCFFCCCCFF9999CC90A9AD9999CCCBCBCB9999CC90A9AD80808077
          77777777776666665F5F5F868686969696777777808080555555424242393939
          1C1C1C0033662100A50000CC0033CC3333993333993366CC3366CC8686869696
          96CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9966CC33
          33CC0000CC3300CC0000CC5050FFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D6
          EF3333CC3333CC6666CCC6D6EFF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFD7D7D74D4D4D0033000033003333333333993366CC2100A52100A5
          0033990000990033660033330000800000CC0000CC0000CC2100A56666999999
          CC99CCFF99CCFF99CCFFCCCCFF99CCFFCCCCFF807CFF3333CC3333CC3333CC33
          33CC3366CC6666996699CC9999CC99CCFF9999CC6699999999CCCCCCFFCCCCFF
          CCCCFFCCCCFFC6D6EFC6D6EF9999CC6699995555555555555F5F5F7777776666
          66777777969696C0C0C0C0C0C0969696555555C0C0C0E3E3E3D7D7D7DDDDDDCC
          CCCCC0C0C08080802222222100A50000CC0000CC0033CC3333993333990033CC
          0033CC393939424242C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEA9999CC6666CC3333CC0000CC3333CCD6E7E7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC6D6EF6666CC9999CCEAEAEAFFFFFFDDDDDDE3E3E3FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77777742424229292900333300339900
          33CC0000992100A52100A52100A50000990000802100A50000CC2100A50000CC
          0000CC000099666699CCCCFFCCCCFF9999FF9999CC6699CC6699CC6666993333
          9933339900339900339900336639393933666633666666669966999933666666
          669990A9AD9999CC9999CC90A9AD96969690A9AD969696424242292929868686
          868686868686969696A4A0A0DDDDDDFFFFFFFFFFFFEAEAEAB2B2B2F1F1F1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB3333662100A53300CC0000CC33339921
          00A50000990033990033CC0033335F5F5FE3E3E3FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8C6D6EF9999CC6666FF5050FFC0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDEAEAEAFFFFFFFFFFFFF8F8F8868686
          969696EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD5555559696967777
          770000660000802100A52100A50000CC0000CC0000992100A50000CC0000CC00
          00CC2100A52100A50000CC00009966669999CCCC9999CC666699336666336666
          3366663366333366333333663333663939393366333366330066330066333366
          333366333366333366333366333366664D4D4D555555666666B2B2B2B2B2B25F
          5F5F666666EAEAEAF8F8F8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFE3E3E33333662100A53300
          CC0000CC2100A52100A52100A5000080003399333366808080F1F1F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACCCCCCF1F1F1FFFFFFFFFFFFFFFFFF
          EAEAEA9999FF9999CCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1F1F1666666333333A4A0A0F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF969696
          292929A4A0A0C0C0C03333990000992100A50000CC0000CC0000CC0000800000
          990000CC0000CC2100A52100A52100A52100A500009933339966669933666639
          3939003333006633336633336633336633336633336633336633336633336633
          336633336633336633336633336633336633336633222222292929808080C0C0
          C0F1F1F1F1F1F1D7D7D7D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFFFFFFFFC0C0C0
          3333330000803300CC3300CC0000CC2100A53300CC2100A53333995555554242
          42CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E39696965F5F5FD7D7D7FF
          FFFFFFFFFFFFFFFFFFFFFFF8F8F8E3E3E3F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1F1F1666666333300336633969696F1F1F1FFFFFFFF
          FFFFC0C0C0393939003300666666E3E3E39999CC2100A50000990000CC0000CC
          0000CC2100A50000990000CC0000CC2100A52100A52100A52100A52100A50033
          6633663300333300333300663300663333663333663333663333663333663333
          6633336633336633336633336633336633336633336633336633333300424242
          969696DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF8F8F8F8F8F8FFFFFFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFF
          FFFFE3E3E36666663300662100A52100A53300CC3300CC2100A53300CC6633CC
          9999CC777777333300666666EAEAEAFFFFFFFFFFFFFFFFFFC0C0C07777773939
          39393939D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F86666663333000033003333
          33B2B2B2FFFFFFFFFFFF808080003300003300393939EAEAEAB2B2B200336600
          00992100A50000CC0000CC0000CC0000CC0000CC0000CC0000CC2100A52100A5
          0000CC0000CC0033660033333366333366333366333366333366333366333366
          3300663300330000330033663333663300663300663333663333663300330000
          3300003300777777F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C03333662100A52100A52100A53300CC2100A521
          00A52100A5A4A0A0FFFFFF808080003300333300B2B2B2FFFFFFFFFFFFDDDDDD
          5F5F5F333300333300336633DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080
          333300333300003300555555EAEAEAFFFFFF555555003300003300333333B2B2
          B25F5F5F0000660000992100A50000CC0000CC0000CC0000CC0000CC0000CC00
          00CC0000CC0000CC0000CC0000CC003366336633336633336633336633336633
          3366333366333366333366332929292222222929293366332929292929293366
          33336633292929292929393939B2B2B2FFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFF
          F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFC0C0C03333993300CC3300CC3300
          CC3300CC2100A52100A5003366808080E3E3E3666666333300333300666666F1
          F1F1FFFFFF868686003300333300333300424242DDDDDDFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC0C0C0336633333300333300333300A4A0A0EAEAEA336633003300
          0033002929294D4D4D2929290000802100A52100A52100A52100A50000CC0000
          CC2100A52100A50000CC0000CC0000CC0000CC00009900336633663333663333
          66333366333366333366333366335555556666667777776666665555555F5F5F
          7777776666665F5F5F4D4D4D777777969696B2B2B2EAEAEAF8F8F8F8F8F8F8F8
          F8FFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFF8F8F8FFFFFFF8F8F8FFFFFFF8
          F8F8F8F8F8FFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFCBCBCB333366
          3300CC3300CC3300CC2100A52100A52100A50000803333337777774D4D4D3333
          00333300393939DDDDDDE3E3E3424242003300333300333300666666EAEAEAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1868686333300336600333300666633CC
          CCCC3366330033002222220033000033000033000033330000802100A50000CC
          0000CC0000CC0000990000992100A52100A50000CC0000CC0000990033663366
          33336633336633336633003300003300003300666666C0C0C0D7D7D7D7D7D7D7
          D7D7CBCBCBCCCCCCD7D7D7D7D7D7CBCBCBC0C0C0D7D7D7EAEAEAF8F8F8FFFFFF
          F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCCCCCC3333662100A52100A52100A53300CC0000CC2100A50000661C1C1C
          333300333300222222333300333300C0C0C0B2B2B23333330033000033003333
          33C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFFD7D7D73366332222
          2200333339393996969633663300330033330000333300333300333322222200
          33330033660033992100A50000CC2100A52100A50000CC0000CC000099000099
          0033663366333366000033000033003333003366335F5F5F555555B2B2B2FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFF1F1F1EAEA
          EAF1F1F1EAEAEAF8F8F8F1F1F15555550000803300CC2100A52100A500339900
          3366003333003333222222003300222222292929333300868686808080292929
          003300336633868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA4A0A0A4A0A0B2B2B2CCCCCC
          CCCCCC5F5F5F0033660033992100A53333993333330033000033330000802100
          A50000990033333366333333330033330033660000CC2100A52100A50000CC21
          00A50033660033330066333366333333333333333333335F5F5F999999CCCCCC
          C0C0C0E3E3E3FFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
          F8F8FFFFFFF8F8F8C0C0C0CCCCCCEAEAEADDDDDDEAEAEAFFFFFFFFFFFFEAEAEA
          C0C0C0999999969696999999999999B2B2B2D7D7D76666660000803300CC3333
          9933336639393933663300333300336600336600336633330033330029292955
          5555333366003366222222666666E3E3E3FFFFFFEAEAEAE3E3E3E3E3E3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD4D4D4D29
          29293366335555556666663333CC0000CC0000CC0000CC2100A5003366003300
          0033330000CC0000FF0000CC0000800033333366333366333939390033660000
          80000080000080003366336633336633333300222222666666868686868686CC
          CCCCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFF8F8F8F8F8
          F8F8F8F8F8F8F8F8F8F8FFFFFFDDDDDD4D4D4D555555999999666666A4A0A0F1
          F1F1D7D7D78686864D4D4D3333333333333939393939393939395F5F5F424242
          0000660000993939393366333366333333330000800000CC0000CC2100A50033
          330033000033330000990000CC2100A5000080666699CCCCCCC0C0C096969666
          6666868686EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF1F1F18686863333330033000033000033330000CC0000CC0000CC0000CC00
          00CC2100A50033660000800000CC0000CC0000CC0000CC003399003366336633
          336633336633003333003366003333336633336633333300424242808080CCCC
          CCE3E3E3E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F18686861C1C1C1616163939
          392222224D4D4D86868666666633333322222200333300333300663333663300
          33002222220033330033330033663366333366333366330033662100A50000CC
          0000CC0000CC0033330033330000800000CC0000CC0000CC3300CC2100A55F5F
          5F555555292929222222777777EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFEAEAEAA4A0A05555550033330000800000CC0000
          CC2100A50000CC0000CC0000CC0000992100A50000CC0000CC2100A50000CC00
          00CC003366336633336633336633336633336633336633336633333333666666
          B2B2B2E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFF8F8F8FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFEAEAEAC0C0C0B2B2B2B2B2B2B2B2B2969696424242
          3333001C1C1C0033000033002929293939390033330033333366333366333366
          3333663333663333663300333300333333663333663333663333663300336600
          00CC0000CC2100A52100A50000CC0000800033990000CC3300CC0000CC2100A5
          3300CC0000CC0033660033000033005F5F5FC0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2333366
          0000CC3300CC2100A53300CC0000CC0000CC2100A50000CC0000CC0000CC2100
          A52100A50000CC0000CC00336633663333663333663333663333663333660033
          3300555555D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C04242424242424D4D4D42
          4242222222003300336633336633336633336633336633336633336633336633
          3366333366333366333366333366333366333366333366333366333366333366
          333366330033660000CC0000CC0000992100A50000CC0000CC0000CC0000CC00
          00CC0000CC2100A50000CC3300CC2100A5003333666666CCCCCCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEAEAEA6666993300CC3300CC3300CC3300CC3300CC2100A52100A52100A5
          0000CC2100A52100A52100A52100A50000CC0033663366333366333366333366
          33336633292929393939A4A0A0FFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFFF8
          F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEA9696961C1C
          1C33330029292933330000330033663333663333663333663333663333663333
          6633336633336633336633336633336633336633336633336633336633336633
          3366333366333366333366330033660000CC2100A52100A52100A50000CC0000
          CC2100A50000802100A50000CC0000CC0000CC0000CC0000CC333399C0C0C0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFC6D6EF6666CC2100A50000CC3300CC3300CC21
          00A52100A50000CC0000CC2100A52100A50000CC2100A50000CC000080336633
          0033000033001C1C1C555555969696B2B2B2EAEAEAFFFFFFF8F8F8F8F8F8FFFF
          FFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFFFFFFFFD7D7D7868686
          7777775555551C1C1C3366333366333366333366333366333366333366333366
          3333663333663333663333663333663333663333663333663333663333663333
          66333366333366333366333366333366333366330033662100A52100A50000CC
          2100A52100A50000CC2100A50000992100A50000CC0000CC2100A50000CC3333
          CC9966CCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C02100A52100
          A50000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC00
          00CC0000802222222929292929295F5F5FC0C0C0EAEAEAFFFFFFFFFFFFFFFFFF
          F8F8F8FFFFFFFFFFFFFFFFFFF8F8F8FFFFFFF8F8F8F8F8F8F8F8F8FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8FFFFFFF8F8F8C0
          C0C0777777333333333333333333333333336633336633336633336633336633
          3366333366333366333366333366333366333366333366333366333366333366
          3333663333663333663333663333663333663333663333663333663300339900
          00CC2100A50000CC0000CC2100A50000CC0000CC0000CC3300CC0000CC0000CC
          2100A52100A59999CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0CBCBCBEAEAEA
          9999CC2100A50000CC0000CC0000CC0000CC0000CC0000CC2100A50000CC0000
          CC0000CC0000CC0000CC330066424242808080969696CCCCCCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFF
          FFF1F1F1B2B2B24D4D4D22222200333333663333663333663333663333663333
          6633336633336633336633336633336633336633336633336633336633336633
          3366333366333366333366333366333366333366333366333366333366333366
          333366330033990000CC0000CC0000CC0000CC0000CC0000CC0000CC3300CC33
          00CC3300CC2100A52100A5333399B2B2B2FFFFFFEAEAEAEAEAEAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F177
          77774242428686866666992100A50000CC0000CC0000CC0000CC2100A52100A5
          2100A52100A52100A50000CC0000CC000080393939B2B2B2F1F1F1F1F1F1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC0C0C03366330033003366333366333366333366333366
          3333663333663333663333663333663333663333663333663333663333663333
          6633336633336633336633336633336633336633336633336633336633336633
          3366333366333366333366330033660000CC0000CC0000CC0000CC2100A52100
          A52100A53300CC0000CC0000CC0000CC0000CC2100A5666699E3E3E3969696B2
          B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF1F1F15F5F5F0033003333337777779999CC3333990000CC3300CC33
          00CC2100A52100A50000CC2100A52100A50000CC2100A5333333292929B2B2B2
          FFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFF
          FFFFFFFFFFF1F1F1F8F8F8FFFFFFFFFFFF868686003300006600336633336633
          3366333366333366333366333366333366333366333366333366333366333366
          3333663333663333663333663333663333663333663333663333663333663333
          66333366333366333366333366333366333366333333330033660000CC0000CC
          2100A52100A52100A52100A52100A50000CC0000CC0000CC0000993333996666
          99777777393939A4A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1777777003300003300555555C0C0C09999
          CC6666CC3333662100A50000CC2100A53300CC3300CC00008000336633336633
          66333333005F5F5FC0C0C0F8F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8
          F8F8F8F8FFFFFFFFFFFFC0C0C0868686999999C0C0C0B2B2B24D4D4D33330033
          6600336633336633336633336633336633336633336633336633336633336633
          3366330066330066330066330066330066000066333366333366333366333366
          3333663333663333663333663333663333663333663333663333663333663300
          33330033660033990000990000CC2100A52100A50000CC2100A52100A53333CC
          6666CC999999666666292929003300999999FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696003300003300
          333300777777F1F1F1CBCBCB3333330033660000992100A50000CC2100A50033
          66336633336633336633336633333300808080F8F8F8FFFFFFF8F8F8F8F8F8FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFEAEAEA6666662929293366334D4D4D4242
          4229292933663333663333330033663333663333663333663333663333663333
          6633336633336633336633336633336633336633336633336633336633336633
          0066333366333366333366333366333366333366333366333366333366333366
          333366333366333366333333333333330033660000CC0000CC2100A50000CC00
          0080333366C0C0C0F1F1F1969696333333003300333300A4A0A0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0
          C0C0393939003300003300292929CCCCCCCBCBCB292929003333003333000066
          003366003333222222336633336633336633336633333300777777F1F1F1F8F8
          F8F8F8F8F8F8F8FFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFA4A0A0393939006633
          3366333333000033003366333366333366333366333333003333003366333366
          3333663333663333663333663333663333663366666686868680808086868696
          9696777777555555336633336633336633336633336633336633336633336633
          3366333366333366333366333366333366333366333366330033330000802100
          A5000099000099003366424242EAEAEAE3E3E3424242003300003300333333C0
          C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF1F1F1969696336633003300003300868686A4A0A033330000
          3300222222003333222222003300333300336633336633336633336633333300
          666666EAEAEAFFFFFFF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FFFFFFFFFF
          FFFFFFFFFFFFFFF8F8F8F8F8F8F8F8F8FFFFFFF8F8F8E3E3E3C0C0C0A4A0A042
          4242333333336633336633336633336633336633336633336633336633333300
          663300336600336633336633336633336633666633969696C0C0C0D7D7D7E3E3
          E3DDDDDDE3E3E3EAEAEADDDDDDCBCBCB99999966666633663333663333663333
          6633336633336633336633006633336633336633336633336633336633336633
          003333222222003333003333003333003333336633E3E3E39696960033000033
          00003300666666EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1F1F1EAEAEAF1F1F1FFFFFFF1F1F19696963333330033333333
          665F5F5F33330000330000333300336600336600333300333333663333663333
          6633336633336633424242D7D7D7FFFFFFFFFFFFF8F8F8F8F8F8FFFFFFFFFFFF
          F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFFFFFFFFFFFFFFFFFB2B2B26666
          665F5F5F33663300330033663333663333663333663333663333663333663300
          6633333300663300996600666600663300663300663300663300999966EAEAEA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CBCBCBB2B2
          B266666666330066330066660099996699996666663333330000663333663333
          6633336633006633333300003300222222222222003300003300333333A4A0A0
          4D4D4D003300333300336633CBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7969696A4A0A0CCCCCCDDDDDD999999
          3333662100A52100A50000800033330033000033663300CC3300CC0000990033
          33336633336633336633006633006633333333999999EAEAEAFFFFFFF8F8F8FF
          FFFFFFFFFFFFFFFFF8F8F8F8F8F8FFFFFFF8F8F8FFFFFFFFFFFFFFFFFFF1F1F1
          D7D7D75555553333000033000066003366333366333366333366333366333366
          33336633336633336600663300996600CC6633CC6633996600996600CC6633CC
          6633CC9933F0CAA6FFECCCF0CAA6F0CAA6D7D7D7F1F1F1FFFFFFF8F8F8F0CAA6
          FFECCCFFFFFFFFFFFFCC9999996600993300CC6600CCCC99F1F1F1CC99666633
          0033330033663333663333663333660033330000333300008000336600333300
          33002929295F5F5F333366003333003333808080EAEAEAF1F1F1EAEAEAE3E3E3
          F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC42424233333333
          66336666663333993300CC3300CC0000CC0000CC0033660033330000993300FF
          3300CC0000CC0000804242425F5F5F3366333366330066003333004242428686
          86DDDDDDFFFFFFFFFFFFE3E3E3F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FFFFFFF8
          F8F8D7D7D7B2B2B2777777663333663300333300336600336633336633336633
          336633336633336633336633336633333300993300CC6600CC6633CC6633CC66
          33CC9966CC9999CC9966CC6633CC6633CC9933CC6633CC6633CC6633CCCC99F8
          F8F8F8F8F8CC9966CC9966EAEAEAFFFFFFF0CAA6CC9933CC6600CC6633CC9966
          F8F8F8FFECCCCC66336633006666003366333333003333003333332100A50000
          CC0000CC0033660033000033330000802100A52100A50000806666CCB2B2B296
          9696868686868686CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEA
          EA7777770033000033000033330000990000CC0000CC3300CC0000CC0000CC00
          00802100A50000CC2100A50000CC0000CC333399C0C0C0C0C0C0969696666666
          393939333300333333666666D6E7E7D7D7D7666666B2B2B2FFFFFFFFFFFFF8F8
          F8FFFFFFF8F8F899999955555566663399663399660099663399663366330033
          6600006633336633336633336633336633336633333300993300CC6600CC6600
          CC6633CC9966CCCC99F1F1F1F0CAA6CC9966CC66339966009966009966009966
          00996600CC6633F0CAA6F1F1F1CC6633CC6600CCCC99FFFFFFF1F1F1FFECCCCC
          9933996600CC6633FFECCCFFFFFFF0CAA6CC6633993300996600663333393939
          3300992100A50000CC3300CC0000800033330000800000CC0000CC3300CC3300
          CC3333CC4242423366332222224D4D4DD7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD7D7D77777770033330000800000CC0000CC0000CC3300
          CC0000CC0000CC0000CC2100A52100A50000992100A50000CC3333CCD7D7D7FF
          ECCCDDDDDDC0C0C09999669966336633336633008080808080803333335F5F5F
          D7D7D7FFFFFFFFFFFFFFFFFFCBCBCB424242663300993300CC6600CC6633CC66
          33CC6633996600663300336633336633006633336633336633333300993300CC
          6633CC6633996600CC6633CC9966FFECCCFFECCCCC9966CC6633CC6633996633
          996633CC6633CC6633996600996600CC6633F0CAA6CC9966CC6633CC9966F8F8
          F8FFFFFFFFFFFFCCCC99CC6633CC6633F0CAA6FFFFFFF1F1F1CC6633CC3300CC
          66009933333300663300CC2100A52100A53300CC2100A50000992100A53300CC
          3300CC2100A53300CC0000CC003333003300393939969696F1F1F1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD6666990000CC3300CC
          3300CC3300CC3300CC2100A52100A50000CC2100A50000992100A52100A50000
          CC333399CCCC99F0CAA6F0CAA6F0CAA6F0CAA6F0CAA6F0CAA699663366333366
          3333993300663333808080CCCCCCDDDDDDC0C0C0777777663300996633CC6633
          CC6600CC6633CC6633CC6633CC66339966006633003333003366003366006633
          00993300CC6633CC6633996633996600CC6633F0CAA6F0CAA6CC996699663399
          6633996633CC6633CC6633CC6633996633CC6633CC6633996600CC6633CC9966
          CC9966CC9966EAEAEAFFFFFFFFFFFFFFECCCF0CAA6F0CAA6F0CAA6F8F8F8F0CA
          A6CC9966CC6633CC66339933333300993300CC2100A52100A52100A53300CC21
          00A52100A53300CC3300CC2100A53300CC3300CC0000805F5F5FB2B2B2F1F1F1
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC
          CCCC6666CC3300CC3300CC3300CC0000CC2100A52100A50000CC2100A5000099
          2100A52100A50000CC333399C0C0C0FFECCCCCCC99CC9966CC9999F0CAA6F1F1
          F1F0CAA6CC6633996600CC663399330039393955555566666666663366333399
          3300CC6633CC6633CC6600996600CC6633CC6633CC6633CC6633CC6633996600
          996600996600996600CC6633CC6633996633996600CC6633F0CAA6FFECCCCC99
          33CC6600996600996633996633CC6633CC6633CC6633CC6633CC663399663399
          6600996600CC6633CC6633CC6633CCCC99F1F1F1FFFFFFF1F1F1FFECCCF8F8F8
          F8F8F8F1F1F1CC9966CC9999F0CAA6CC66339933333300992100A52100A52100
          A52100A50000CC0000CC2100A52100A53300CC3300CC3300CC3300CC2100A599
          99CCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C03333992100A53300CC2100A53300CC3300CC00
          00CC0000CC0000CC3300CC2100A50000CC333399CC9966F0CAA6F0CAA6CC9966
          CC9966CC9966CCCC99F0CAA6F0CAA6CC9966CC66339966009933006633336633
          33993300993300CC6633CC6633CC9966CC9966CC6633CC6633CC6633CC6633CC
          6600CC6633CC6633CC6633CC6633CC6633CC6633996633996633996600CC6633
          FFECCCCCCC99CC6633993300993300993300CC9933CC9966CC6633CC66339966
          33996633996633996633996633996600CC6633CC6633CC6633CC9999FFECCCF1
          F1F1F1F1F1FFFFFFFFFFFFF1F1F1CC9966CC9966EAEAEACCCC99993333330099
          0000CC2100A52100A52100A50000CC0000CC2100A52100A53300CC3300CC2100
          A53300CC6666CCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B23333990000CC0000CC3300
          CC3300CC0000CC0000CC0000CC0000CC3300CC0000CC0000CC330099996633CC
          9966CC9999CC9966CC9966CC6633CC6633CC9966CC9966CC9966CC9966CC6633
          CC6600993300996600CC6633CC6633CC6633CC6633CC9966FFCCCCCC9999CC66
          33CC6633996600CC6633CC6633CC6633CC6633CC6633CC663399663399663399
          6633CC6633CC9966CC9999CC6633CC6600CC6633CC6633CC9966F0CAA6CC9999
          996633996633996633996633996633996633CC6633CC66339966339966339933
          00CC6633CC9966CC9999F0CAA6EAEAEAFFFFFFFFFFFFF0CAA6F0CAA6F8F8F8FF
          ECCC9999663300990000CC3300CC3300CC0000CC0000CC3300CC0000CC0000CC
          2100A52100A52100A5333399C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666992100A5
          0000CC0000CC3300CC0000CC0000CC2100A52100A50000CC0000CC0000CC3300
          CC333366993333CC3300CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC
          6633CCCC99CCCC99CC6633CC6633CC6633CC6633CC6633996633996633CC6633
          EAEAEAF8F8F8CC9966CC6633CC6633CC9966CC6633993300996600996633CC66
          33CC6633996633996633CC9966CC9966CC6633996600CC6633CC6633CC9966F0
          CAA6F8F8F8F0CAA6CC9966CC6633996633996633996633996633CC6633996633
          996633CC6633CC6633996600CC6633CC6633CC6633CC9966F0CAA6EAEAEAFFFF
          FFF8F8F8FFFFFFFFFFFFCCCCCC3333993300CC3300CC3300CC3300CC2100A521
          00A53300CC3300CC3300CC3300CC3300CC2100A5C0C0C0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFC0C0C03333990000800000CC0000CC2100A52100A52100A52100A52100A5
          2100A53300CC333399663333CC6633CC6633996633996633CC6633CC66339966
          33996633996633996633CC9966F0CAA6CCCC99CC6633CC6633CC6633CC6633CC
          6633CC6633CC6633F0CAA6FFFFFFCCCC99CC6633CC9966FFECCCCC9966CC6633
          CC6633996633CC6633CC6633CC6633CC6633CC9966CC6633996600CC6633CC66
          33CC6633CC9999CC9999FFECCCF1F1F1CCCC99CC663399663399663399663399
          6633996633996633CC6633CC6633CC6633996633CC6633CC6633CC6633CC6633
          CC6633CC9966FFCCCCEAEAEAF1F1F1FFFFFFEAEAEA6666993333CC0000CC2100
          A52100A52100A52100A52100A52100A53300CC3300CC3300CC2100A59999CCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1F1F17777770033330033660000802100A50000CC21
          00A53300CC2100A53333999966CC5F5F5F663300996633CC6633996633996633
          996633996633996633CC6633CC6633996600CC6633CC6633CC9966CC9966CC99
          66CC6633CC6633CC6633CC6633996600CC9966F8F8F8EAEAEAFFCCCCFFECCCF8
          F8F8F0CAA6CC9999CC9966CC9966CC6633996600CC6633CC6633CC6633996600
          996633CC6633CC6633CC6633CC6633CC6633CC6633CC9999CC9966CC66339966
          33996633996633996633996633996633996633CC6633CC6633996633CC6633CC
          6633996633996600996600CC6633CC6633F0CAA6F0CAA6F0CAA6F1F1F1969696
          6666993333992100A52100A50000CC2100A52100A52100A52100A52100A50033
          66333366CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696960033000033002222
          222100A52100A52100A50000CC000066666666A4A0A0393939333300993300CC
          6633CC6633CC6633CC6633996633CC6633CC6633996633CC6633996633993300
          996633CC9966CC9999CC6633CC6633CC6633CC6633996600CC9966EAEAEAFFFF
          FFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8FFECCCF0CAA6CC6633CC6633CC6633CC
          6633996633996633996633996633CC6633996633993300993300993300CC6633
          CC6633996633996633996633996633996633996633996633996633CC6633CC66
          33CC6633CC6633CC6633CC6633CC6633993300993300CC6633FFECCCF0CAA6CC
          9999F0CAA66666335F5F5F8686863333662100A53300CC2100A52100A5000080
          3333332929290033005F5F5FF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
          3939390033000033003333336666993333660033662222224D4D4D3366330033
          00663333CC6633996600996633CC6633CC6633CC6633CC6633996633996633CC
          6633CC6633CC6633996633996600CC6633CC9966CC6633CC6633CC6633CC6633
          CC9933F0CAA6FFECCCEAEAEAF1F1F1F8F8F8FFFFFFF1F1F1EAEAEAFFECCCF0CA
          A6CC9966CC6633CC6633996633996633996633996633996633996633CC663399
          6633996633993300996633996633996633996633996633996633996633996633
          996633996633CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC9966F0CA
          A6FFFFFFFFFFFFF0CAA6CC99996666332929298080804242420033662100A533
          3399333399333366222222003300003300808080F1F1F1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF1F1F18686860033000033002929299999994D4D4D003300003300
          222222003300333300868686CC9999CC6633996600996600CC66339966339966
          33996633996633996633996633996633996633996633996633CC6633CC6633CC
          6633CC6633996633CC6633CC9966CC9966CC9966F0CAA6F1F1F1F8F8F8CCCC99
          F0CAA6EAEAEAF1F1F1CC9966CC6633CC6633CC66339966339966339966339966
          33CC6633996633CC6633996633996633CC6633CC9966CC663399660099663399
          6633996633CC6633996633996633CC6633CC6633996633CC6633CC6633CC6633
          F0CAA6EAEAEAFFFFFFFFFFFFFFFFFFF8F8F8EAEAEA8080803333003333332929
          29292929003333333366868686393939003300003300336633CBCBCBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD33663300333329292966666639
          3939003300003300003333003333292929B2B2B2F1F1F1F0CAA6CC6633996600
          9933009966339966339966339966339966339966339966339966339966339966
          00996633CC6633CC6633CC6633996633CC6633CC6633CC6633996633CC9933E3
          E3E3F0CAA6CC6633CC9966F1F1F1FFECCCCC6633996633CC6633CC6633996633
          996633996633CC6633CC6633CC6633996633996633996633CC6633F0CAA6CC99
          66CC6633996600993300993300CC6633996633CC6633CC6633CC6633CC663399
          6600CC6633F0CAA6F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0
          3333330033003333003333000033003366338686863366330033003333339999
          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD7D7D7A4A0A0B2B2B2CBCBCBCBCBCB3333660000
          800000993333993333330033000033332100A52100A5000080A4A0A0FFFFFFFF
          FFFFF0CAA6CC9966CC6633996600996600996633996633996633996633996633
          996633996633996633996633996633CC6633CC66339966339966339933009966
          00993300CC6633F0CAA6CCCC99CC9966CC9966CCCC99CC9966CC6633996633CC
          6633CC6633996633996633CC6633CC6633CC6633CC6633996633996633996633
          CC6633F0CAA6FFECCCCCCC99CC9966CC6633CC6633CC6633CC6633CC6633CC66
          33996600CC6633CC6633CCCC99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFCBCBCB333366003366333333292929333300393939666666333366
          2222225F5F5FDDDDDDF1F1F1E3E3E3D7D7D7F1F1F1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C04D4D4D3939395F5F5F
          6666663333CC3300CC3300CC0000CC2100A50033330033663300CC3300CC0000
          CC333399C0C0C0FFFFFFFFFFFFEAEAEAF0CAA6CC9966CC663399330099660099
          6600996600996633996633996633996633996633996633996633996633996633
          996633996633996633996633CC6633CC9966CC9966CCCC99CC9999CC9966CC66
          33996633996633CC6633CC6633996633996633996633996633996633CC663399
          6633996633996633996600CC9966FFECCCEAEAEAFFECCCCCCC99CC9966CC6633
          CC6633996633996600CC6633CC9966F0CAA6F1F1F1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAEAEA9966993333993300CC2100A533333300330033
          33662100A52100A5000080663399A4A0A0969696777777868686DDDDDDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA80
          80802222220033000033663300CC3300CC3300CC0000CC3300CC0000802100A5
          3300CC2100A52100A52100A5666699EAEAEAFFFFFFFFFFFFFFFFFFDDDDDDCC99
          66CC6633CC6633996633996633996633996633996633996633CC663399663399
          6633996633996633996633996633996633996633CC6633996633CC6633CC9966
          F0CAA6F0CAA6CC9966996633996633996633CC66339966339966339966339966
          33996633996633996633996633996633996633CC6633CC9966F0CAA6F0CAA6F0
          CAA6F0CAA6CC6633996633996633CC6633CC9966EAEAEAFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD6666993333993300CC3300CC3300
          CC0033660033332100A50000CC3300CC3300CC3300CC39393933330033330066
          6666E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFDDDDDD8686863333330000803300CC2100A53300CC0000CC00
          00CC2100A50000CC2100A52100A52100A50000CC663399EAEAEAFFFFFFFFFFFF
          FFFFFFFFFFFFDDDDDDF0CAA6CCCC99CC9966CC6666CC66339966339933009966
          33CC663399663399663399663399663399663399663399663399663399663399
          3300996600CC6633CC6633CC9966CC6633996600996633996633996633CC6633
          CC6633996633996633996633996633996633996633996633CC6633CC6633CC66
          33CC6633CC9966CCCC99CC9966CC6633996600CC6633CCCC99EAEAEAFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC3333990000CC
          3300CC2100A53300CC2100A52100A50000CC3300CC3300CC3300CC0000CC0033
          66222222555555C0C0C0F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA6666993300CC2100A50000
          CC3300CC0000CC2100A50000CC0000CC2100A52100A52100A52100A5663399EA
          EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8DDDDDDF0CAA6F0CAA6
          CC9966CC6633CC6633996600996600996633CC66339966339966339966339966
          33996633996633996633CC6633993300993300CC6633CC6633CC663399663399
          3300996600CC6633996633996633996633996633996633CC6633996633CC6633
          CC6633996633993300CC6633CC6633CC9966CC6633CC6600CC6633F0CAA6F8F8
          F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCB
          CBCB3333993300CC2100A52100A52100A53300CC2100A52100A53300CC3300CC
          2100A52100A52100A5333366C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7
          6666CC2100A50000CC3300CC2100A52100A53300CC3300CC2100A52100A52100
          A52100A5333399D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFEAEAEAF0CAA6CC9966CC6633CC6633996600996633996633
          996633CC6633CC6633996633996633996633CC6633CC6633996633CC6633CC99
          66CC9966CC6633CC6633CC6633CC6633996633996633CC6633996633CC6633CC
          6633996633CC6633CC6633CC6633CC6633996633CC6633CC6633CC6633CC6633
          CC9999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFC0C0C03333992100A52100A52100A52100A53300CC2100A500
          00802100A53300CC2100A52100A53300CC6666CCF8F8F8FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9999CC2100A52100A53300CC2100A50000CC3300CC3300CC
          3300CC2100A52100A50000CC333366B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEAF0CAA6CC9966CC
          6633CC6633996633996633CC6633CC6633CC6633CC6633CC6633996633CC6633
          996633CC6633F0CAA6F0CAA6CCCC99CC9999CC9999CC9966CC6633CC6633CC66
          33CC6633CC6633996633996633CC6633CC6633CC6633CC6633CC6633CC6633CC
          6633CC6633CC9966EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686862100A53300CC3300CC2100A52100
          A53300CC3300CC2100A53300CC3300CC2100A52100A56666CCDDDDDDFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6666CC2100A52100A52100A52100A533
          00CC3300CC2100A53300CC3300CC3300CC3300CC003366808080FFFFFFFFFFFF
          DDDDDDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF8F8F8DDDDDDF0CAA6CC9966CC6633993300996633CC6633CC6633CC6633CC
          6633CC6633CC6633CC6633CC6633CC9966CC9966CC9966CC9966F0CAA6FFCCCC
          F0CAA6CCCC99CC6633CC6633996600993300CC6633CC6633CC6633CC6633CC66
          33CC6633CC6633CC6600CC9966E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F15F5F5F2100A53300CC
          3300CC3300CC3300CC3300CC3300CC3300CC3300CC2100A50000CC2100A59999
          99F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F89999CC3333992100
          A52100A52100A53300CC2100A52100A52100A50000CC0000CC2100A500333355
          5555EAEAEAC0C0C0868686EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEACCCC99CC9966CC66339966
          00996600CC6633996633CC6633CC6633CC6633996633993300996600CC6633CC
          6633CC9966CCCC99CCCC99CC9999CC9966CC9999CC9966CC9966CC6633CC6633
          CC6633996633996633996633996633CC9966FFECCCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAB2B2B2E3E3E3DDDDDD33
          66330033663300CC0000CC0000CC2100A52100A52100A53300CC0000CC2100A5
          2100A5000099666699F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DDDDDD90A9AD6633CC3333CC2100A50000CC2100A50000CC2100A53333993333
          CC333366003300336633A4A0A0555555555555EAEAEAFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DDDDDDCC9966CC6633CC6633996600CC6633CC6633CC6633CC6633CC6633CC66
          33CC6633996633CC6633CC6633CC6633CC6633CC9933F0CAA6F8F8F8F0CAA6CC
          9999CC6633996633CC6633CC6633996633CC6633CC9966FFCCCCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E35555
          55868686A4A0A03333330033333333993300CC2100A52100A52100A52100A521
          00A52100A52100A53333996666CC9999CCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF1F1F1DDDDDDC6D6EF6666992100A52100A50000CC
          2100A5555555868686292929003300292929336633003300666666F1F1F1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF1F1F1F0CAA6CC9966CC6633CC6633CC6633CC6633
          CC6633CC6633CC6633CC6633CC6633CC6633CC9966CC9966CC9966CC9966FFCC
          CCFFECCCCC9999CC9966CC6633CC6633CC6633CC6633CC6633CC9966FFECCCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF1F1F15555553333004242423333333333002929296666993333993300
          CC3300CC2100A50000CC3333996666CC9999CCDDDDDDF1F1F1FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB66
          66993333993333660033664D4D4D868686292929003300292929222222003300
          868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECCCCC9999CC
          9966CC9966CC9966CC6633CC6600CC6633CC6633CC6633CC6633CC6633CC9966
          CC9966CC6633CC9966CC9966CC6633CC6633CC6633CC9933CC6633CC6633CC99
          66DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF808080333300333300292929333300333300
          8686865F5F5F2100A52100A52100A52100A59999CCDDDDDDF1F1F1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDD
          DDA4A0A0A4A0A096969666669933336600336633336633339929292929292933
          3366333399333366969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEAEAEAF0CAA6CCCC99CC9966CC9999CC6633CC6600CC6633CC6633CC
          6633993300CC6633CC6633CC6633996600CC6633CC6633CC6633CC9966CC9966
          CC6633CC9966DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99999933336600336633
          33333333003333006666663333663333663333999966CC9999CCCCCCCCF8F8F8
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCCCCCC4242423939395F5F5F3366992100A53300CC0000CC2100
          A53333663333332100A53300CC2100A56666CCDDDDDDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F0CAA6CC9966F0CAA6F0CAA6CC66
          33CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC6633CC
          6633CC6633CC9933CC9999EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F16666
          992100A53300CC3333663333003333333333992100A5000080336699C0C0C0C0
          C0C0999999B2B2B2F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA7777770033000033000033663300CC
          3300CC3300CC3300CC2100A53333663300CC3300CC3300CC3333CC9999CCF1F1
          F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1CC9966
          CC9966F0CAA6CC9966CC6633996633CC6633CC9966CC9966CC6633CC9966CC66
          33CC6633CC6633CC6633CC6633CC9966EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F1F1F1B2B2B23333993300CC3300CC2100A53333333333660000CC3300CC3300
          CC3333CC666666336633292929808080F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDD80808033
          33330000803300CC3300CC3300CC3300CC2100A52100A53300CC2100A52100A5
          0000CC666699F1F1F1FFFFFFFFFFFFD7D7D7E3E3E3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECCCCCCC99CC9966CC9999CC9966CC6633CC9966CC9966CC9933
          CC6633CC6633CC9933CC9966CC9966CC9966F0CAA6EAEAEAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAE3
          E3E3FFFFFFFFFFFFCCCCCC3333992100A53300CC3300CC2100A53333992100A5
          3300CC3300CC3300CC3300CC333366292929336633C0C0C0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE3E3E36666992100A52100A50000CC0000CC2100A52100A53300CC21
          00A52100A52100A50000CC333399F1F1F1FFFFFFEAEAEA777777B2B2B2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAF0CAA6CC9966CC9966CCCC99CC
          9999CC9933CC9966CC9966CC9999F0CAA6F0CAA6FFECCCEAEAEAFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFB2B2B2969696F1F1F1FFFFFFC0C0C03333993300CC2100A52100A533
          00CC3300CC2100A52100A53300CC3300CC3300CC000099333366B2B2B2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6D6EF3333CC2100A50000CC0000CC0000
          CC2100A53300CC2100A52100A52100A52100A5333399F1F1F1FFFFFFB2B2B233
          3333999999EAEAEACCCCCCDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8CCCC
          99CC9999F0CAA6CC9999CC9966F0CAA6FFECCCF1F1F1FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE3E3E3F1F1F1FFFFFF808080393939C0C0C0FFFFFFC0C0C03333992100
          A52100A52100A53300CC3300CC2100A52100A53300CC2100A52100A53333CC99
          99CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F86666CC2100A5
          2100A50000CC0000CC0000CC0000CC0000CC0000CC0000CC0000CC333399DDDD
          DDEAEAEA555555003300808080A4A0A05F5F5FB2B2B2FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF8F8F8FFECCCF0CAA6F0CAA6F1F1F1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF999999A4A0A0DDDDDD5F5F5F003300808080F1F1F1
          B2B2B23333CC0000CC2100A52100A50000CC0000CC0000CC0000CC3300CC0000
          CC2100A59999CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8
          F8F86633990000990000CC2100A50000CC0000CC2100A52100A50000CC0000CC
          0000CC333366999999CBCBCB333333003300336633336633333300A4A0A0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAF8F8F8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77777733663377777733663300
          3300555555EAEAEA8080802100A50000CC0000CC3300CC0000CC0000CC3300CC
          0000CC0000CC0000CC2100A59999CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF1F1F19999CC3333993333CC2100A52100A52100A50000CC00
          00CC2100A53333CC3333990033335F5F5F868686292929003300003333003300
          333333CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696963333
          00333300292929003300336633B2B2B24242420033662100A50000CC0000CC21
          00A52100A53300CC3300CC2100A52100A53333999999CCFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAC0C0C09999CC6666CC2100
          A52100A50000CC0000CC3333996666CC66669900336633336633336600333300
          3300003366000080333366DDDDDDE3E3E3EAEAEAFFFFFFFFFFFFFFFFFFFFFFFF
          CCCCCCDDDDDDFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1F1F1F1F1F1F1F1F1
          F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F8F8F8F8F8F8F8F8F8F8F8F8F1
          F1F1F8F8F8FFFFFFFFFFFFE3E3E3DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F1F1F1B2B2B23939390033663333333333003366336666663333330033333333
          993333CC3333CC3300CC2100A52100A52100A53333996666CC9999CCCCCCCCFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F8F8F8EAEAEA6666992100A52100A50000993333668080803333990000CC0000
          CC2100A50033330033332100A50000CC333399C0C0C0868686868686F1F1F1FF
          FFFFFFFFFFF1F1F1808080B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFCCCCCCCC9999
          CC9999CC9999CC9999CC9999CC9999CC9999CCCC99CCCC99C0C0C0C0C0C0C0C0
          C0C0C0C0CCCC99C0C0C0DDDDDDFFFFFFFFFFFFB2B2B2868686EAEAEAFFFFFFFF
          FFFFFFFFFFC0C0C0B2B2B290A9AD2100A50000CC333399292929333333333399
          2100A53333666666999696963333990000CC2100A52100A5333399B2B2B2DDDD
          DDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB9966CC666699333366003333393939
          2100A53300CC0000CC0000CC0033990033660000CC3300CC2100A56633994242
          42393939B2B2B2FFFFFFFFFFFFC0C0C0336633B2B2B2F1F1F1CCCCCCEAEAEAFF
          FFFFCC9999663399663399663399663399663399663399663399663399663399
          663399663399663399663366996633CC9999CCCCCCEAEAEAFFFFFF8686863939
          39C0C0C0FFFFFFFFFFFFB2B2B25555555F5F5F6633CC3300CC3300FF2100A533
          33333333660000CC3300CC3300CC3333995F5F5F333366333399333399333399
          6666CCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3D7D7D7A4
          A0A05555550000660000CC3300CC3300CC3300CC2100A52100A53300CC2100A5
          3300CC2100A5333333003300336633CBCBCBF1F1F17777770033008686869999
          99666666DDDDDDFFFFFF9966992100A53333CC6666CC6666CC3333CC3300CC33
          00CC3300CC3300CC3300CC330099663366996699CC9999CCCCCCC0C0C0868686
          C0C0C0666666003300868686F1F1F1B2B2B23366330033000033332100A53300
          CC3300CC3300CC2100A52100A53300CC3300CC3300CC0000CC0033664D4D4D90
          A9AD9999CCB2B2B2D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB2B2B23333CC0000CC0000CC0000CC2100A52100A500
          00CC0000CC2100A52100A50000CC333366292929003300777777C0C0C0393939
          003300336633336633336633E3E3E3FFFFFF9966993333CC9999CCD6E7E7C6D6
          EF6666CC3300CC0000FF0000FF0000CC3300CC663399A4A0A0DDDDDDFFFFFFFF
          FFFFCBCBCB3333335555553366330033005F5F5FCBCBCB555555003300333300
          3333662100A52100A52100A53300CC3300CC0000CC3300CC3300CC3300CC0000
          CC2100A5999999F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F16666CC2100A50000CC0000
          CC0000CC0000CC0000CC2100A52100A50000CC0000CC66339966666600333339
          3939808080333333292929003333003333666666F1F1F1FFFFFF996699663399
          D7D7D7FFFFFFFFFFFFCC99CC3300CC0000CC3300CC3300CC663399CC9999F1F1
          F1FFFFFFFFFFFFFFFFFFD7D7D733663300333300333329292933663380808029
          29290033005555553333992100A50000CC2100A52100A53300CC2100A53300CC
          3300CC3300CC3300CC3333CCC6D6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999CC
          2100A50000CC0000CC3300CC3300CC3300CC0000CC0000CC0000CC0000CC6666
          99868686333366000099333399333333336633003366000099666699F8F8F8FF
          FFFF996699333399C0C0C0F8F8F8F1F1F19999CC3300CC2100A5663399A4A0A0
          CCCCCCF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFE3E3E33333990000800033663366
          33393939333399003366333366A4A0A06666990000CC0000CC3300CC3300CC33
          00CC3300CC3300CC3300CC2100A5333399C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFC0C0C03333992100A52100A53300CC3300CC2100A50000CC0000CC
          0000CC0000994242423333993300CC0000CC0000CC0033660033330000CC0000
          CC3333CC9999CCF1F1F19966992100A56633CC9999CC9999CC6633CC33339977
          7777CCCC99FFFFCCFFFFFFFFFFFFFFFFFFF1F1F1FFFFFFFFFFFFC0C0C03333CC
          0000CC2100A50033330033660000CC3300CC3333998686865F5F5F0000990000
          CC0000CC3300CC3300CC3300CC3300CC2100A52100A5333399CBCBCBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D79999CC3333CC3333CC2100A52100A500
          00CC2100A53333CC3333CC3366990033330000993300CC3300CC0000CC2100A5
          0033990000CC0000CC0000CC3333CCDDDDDDCC99993300CC0000CC3300CC3300
          CC330099663366CC9966CBCBCBD7D7D7CBCBCBC0C0C0CBCBCBE3E3E3FFFFFFEA
          EAEA6666CC3300CC0000CC3300CC0033662100A50000CC3300CC3300CC333399
          0033333333993300CC2100A50000CC2100A52100A52100A52100A53333CC6666
          CCC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1D7D7D79999
          CC3333992100A50000CC3333999999CCD7D7D7CCCCCC3366990000CC0000CC33
          00CC0000CC2100A50000CC0000CC2100A50000CC3333CCCCCCCCCC99993300CC
          0000CC3300CC2100A5330099663399663399663399663399663399996666CC99
          99DDDDDDFFFFFFDDDDDD3333CC0000CC2100A53300CC3300CC0000CC0000CC00
          00CC3300CC0000CC3333669696966666CC3333990000CC0000CC2100A5333399
          6666CC9999CCDDDDDDF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1F1F190A9AD3333993333999999CCEAEAEAFFFFFFFFFFFF9999
          CC3333CC0000CC0000CC0000CC0000CC0000CC2100A50000CC0000CC2100A5C0
          C0C09966993300CC6666CC9999CC9999CC3333CC3300CC3300CC3300CC330099
          663366CC9999D7D7D7F1F1F1FFFFFFCBCBCB3333CC0000CC2100A52100A53300
          CC2100A53300CC0000CC0000CC3300CC9999CCEAEAEAEAEAEA9999CC33339921
          00A53333999999CCEAEAEAF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3C0C0C0B2B2B2E3E3E3FFFFFF
          FFFFFFFFFFFFF1F1F16633990000CC0000CC0000CC0000CC0000CC0000CC0000
          CC0000CC2100A5CBCBCB9966993333CC9999CCE3E3E3CBCBCB3333CC0000CC33
          00CC3333CC666699A4A0A0EAEAEAFFFFFFFFFFFFFFFFFFCBCBCB3333990000CC
          0000CC2100A53300CC3300CC3300CC3300CC0000CC333399D7D7D7FFFFFFFFFF
          FFEAEAEA9999CC6666CC90A9ADEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F86666990000CC0000CC0000CC0000CC
          0000CC0000CC0000CC0000CC663399E3E3E39696963333CC6666CC807CFF6666
          CC3333CC663399996699B2B2B2D7D7D7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFE3
          E3E33333990000CC0000CC3300CC3300CC3300CC0000CC0000CC2100A5666699
          F1F1F1FFFFFFFFFFFFFFFFFFF8F8F8E3E3E3F1F1F1FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999CC33339921
          00A50000CC0000CC2100A52100A52100A5333399C0C0C0F8F8F89999993300CC
          0000CC3300CC3300CC663399CC9999DDDDDDF8F8F8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF8F8F89999CC3300CC2100A50000CC2100A52100A53300CC33
          00CC33339990A9ADF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF1F1F1C0C0C09999CC3333992100A52100A53333999999CCC0C0C0F1F1F1FF
          FFFF9966993300CC2100A5333399666699CC9999FFECCCF8F8F8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA9999CC6666992100A52100
          A52100A56666CC9999CCC0C0C0EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1C0C0C06666CC6666999999CCEAEA
          EAFFFFFFFFFFFFFFFFFFCC6699663366666699B2B2B2D7D7D7F1F1F1FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
          CBCBCB6666CC3333996666CCCCCCCCEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3
          D7D7D7F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFCC9999996666CCCC99F8F8F8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE3E3E3C0C0C0D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3EAEAEA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Stretch = True
      end
      object QRLabel91: TQRLabel
        Left = 290
        Top = 6
        Width = 155
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          767.291666666666700000
          15.875000000000000000
          410.104166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Government of Nepal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial Rounded MT Bold'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel92: TQRLabel
        Left = 165
        Top = 25
        Width = 405
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          436.562500000000000000
          66.145833333333330000
          1071.562500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Ministry of Federal Affairs and General Administration'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel93: TQRLabel
        Left = 247
        Top = 47
        Width = 241
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          653.520833333333300000
          124.354166666666700000
          637.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'CIVIL SERVICE HOSPITAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel93Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 14
      end
      object QRLabel96: TQRLabel
        Left = 259
        Top = 90
        Width = 218
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          685.270833333333300000
          238.125000000000000000
          576.791666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Ph No : 4107000   Fax No : 4107003'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel96Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape42: TQRShape
        Left = 615
        Top = 20
        Width = 104
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          325.437500000000000000
          1627.187500000000000000
          52.916666666666700000
          275.166666666667000000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel97: TQRLabel
        Left = 645
        Top = 75
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1706.562500000000000000
          198.437500000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P.P. Size'
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
      object QRLabel98: TQRLabel
        Left = 653
        Top = 93
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          246.062500000000000000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Photo'
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
      object QRLabel95: TQRLabel
        Left = 267
        Top = 70
        Width = 201
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          706.437500000000000000
          185.208333333333300000
          531.812500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Minbhawan, Kathmandu, Nepal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel95Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object QueryMain: TOraQuery
    SQL.Strings = (
      'Select * From TuberClosisExamination Where PatientID =:PatientID')
    Left = 80
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
      end>
  end
  object QueryFooter: TOraQuery
    SQL.Strings = (
      'Select * From PathologyFooterSetUP Where DepID=104')
    Left = 48
    Top = 216
  end
end
