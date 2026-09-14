object Form_QRDepWiseSumaryLandScape: TForm_QRDepWiseSumaryLandScape
  Left = 150
  Top = 24
  Caption = 'Form_QRDepWiseSumaryLandScape'
  ClientHeight = 699
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -8
    Top = -3
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
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
    OnEndPage = QuickRep1EndPage
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      70.000000000000000000
      2100.000000000000000000
      70.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      80.000000000000000000
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
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 173
      Width = 1055
      Height = 20
      Frame.Color = clSilver
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        2791.354166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep1
      DataSet = Query_RevenueCollection
      FooterBand = QRBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText1: TQRDBText
        Left = 20
        Top = 1
        Width = 232
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          52.916666666666700000
          2.645833333333330000
          613.833333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'DEPNAME'
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
      object QRDBText21: TQRDBText
        Left = 256
        Top = 1
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          677.333333333333000000
          2.645833333333330000
          227.541666666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'CASHTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 347
        Top = 1
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          918.104166666667000000
          2.645833333333330000
          227.541666666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'CREDITTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 617
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1632.479166666670000000
          2.645833333333330000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'CASHSVRTAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 692
        Top = 1
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1830.916666666670000000
          2.645833333333330000
          171.979166666667000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'CREDITSVRTAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 892
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2360.083333333330000000
          2.645833333333330000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'REFUNDSVRTAX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabelSno: TQRLabel
        Left = 3
        Top = 1
        Width = 15
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          7.937500000000000000
          2.645833333333330000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = 'Sno'
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
      object QRDBText4: TQRDBText
        Left = 828
        Top = 0
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          2190.750000000000000000
          0.000000000000000000
          161.395833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'REFUNDDISCOUNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 435
        Top = 1
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1150.937500000000000000
          2.645833333333333000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
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
        Left = 535
        Top = 1
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          2.645833333333333000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'DISCOUNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
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
        Left = 759
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2008.187500000000000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'REFUNDTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 950
        Top = 1
        Width = 102
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2513.541666666667000000
          2.645833333333333000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Query_RevenueCollection
        DataField = 'NETTOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Mask = '0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
    end
    object SummaryBand2: TQRBand
      Left = 38
      Top = 284
      Width = 1055
      Height = 174
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        460.375000000000000000
        2791.354166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel11: TQRLabel
        Left = 16
        Top = 0
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          0.000000000000000000
          343.958333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total Refund Amount :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRExpr3: TQRExpr
        Left = 151
        Top = 0
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          399.520833333333000000
          0.000000000000000000
          224.895833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'SUM(Query_RevenueCollection.RefundTotal-Query_RevenueCollection.' +
          'REFUNDDISCOUNT)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 36
        Top = 137
        Width = 111
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          95.250000000000000000
          362.479166666666700000
          293.687500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total Free & Con. :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel24: TQRLabel
        Left = 32
        Top = 17
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          84.666666666666670000
          44.979166666666670000
          301.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total RF SVR Tax :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        Left = 20
        Top = 51
        Width = 126
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          52.916666666666670000
          134.937500000000000000
          333.375000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Net Total Revenue :'
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
      object QRExpr27: TQRExpr
        Left = 151
        Top = 34
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          89.958333333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        OnPrint = QRExpr27Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Query_CommunityRefund.REFUNDTOTAL'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr23: TQRExpr
        Left = 151
        Top = 51
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          134.937500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        OnPrint = QRExpr23Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'Sum(Query_RevenueCollection.TOTAL+Query_RevenueCollection.CASHSV' +
          'RTAX+Query_RevenueCollection.CREDITSVRTAX)-SUM(Query_RevenueColl' +
          'ection.RefundTotal-Query_RevenueCollection.REFUNDDISCOUNT)-SUM(Q' +
          'uery_RevenueCollection.REFUNDSVRTAX)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr30: TQRExpr
        Left = 151
        Top = 68
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          179.916666666666700000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        OnPrint = QRExpr30Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QueryDeposit.Deposit'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr33: TQRExpr
        Left = 155
        Top = 85
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          410.104166666666700000
          224.895833333333300000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        OnPrint = QRExpr33Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QueryDeposit.AdjustedDeposit'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr31: TQRExpr
        Left = 151
        Top = 111
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          293.687500000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        OnPrint = QRExpr31Print
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Query_TotalSummary.NetCreditAmount'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr24: TQRExpr
        Left = 150
        Top = 137
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          362.479166666666700000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        OnPrint = QRExpr24Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(Query_RevenueCollection.DISCOUNT)'
        Mask = '0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr26: TQRExpr
        Left = 151
        Top = 17
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          44.979166666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.REFUNDSVRTAX)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 246
        Top = 2
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          5.291666666666667000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
      object QRLabel27: TQRLabel
        Left = 246
        Top = 17
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          44.979166666666670000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
      object QRLabel31: TQRLabel
        Left = 27
        Top = 34
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          71.437500000000000000
          89.958333333333330000
          314.854166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Community Refund :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel32: TQRLabel
        Left = 246
        Top = 34
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          89.958333333333330000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
      object QRLabel2: TQRLabel
        Left = 13
        Top = 154
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          34.395833333333330000
          407.458333333333300000
          354.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Net Total Cash Coln.:'
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
      object QRLabel55: TQRLabel
        Left = 246
        Top = 106
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          280.458333333333300000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
      object QRLabel57: TQRLabel
        Left = 15
        Top = 103
        Width = 132
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          39.687500000000000000
          272.520833333333300000
          349.250000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Net Credit Amt. (After Credit Refund)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRExpr32: TQRExpr
        Left = 151
        Top = 154
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          407.458333333333300000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = QRExpr32Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 246
        Top = 137
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          362.479166666666700000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
      object QRLabel60: TQRLabel
        Left = 70
        Top = 68
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          185.208333333333300000
          179.916666666666700000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'OP Deposit :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel61: TQRLabel
        Left = 15
        Top = 85
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          224.895833333333300000
          346.604166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'OP Deposit Adjusted :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel62: TQRLabel
        Left = 246
        Top = 85
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          224.895833333333300000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = '( Less )'
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
    end
    object TitleBand1: TQRBand
      Left = 38
      Top = 26
      Width = 1055
      Height = 147
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        388.937500000000000000
        2791.354166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabelTo: TQRLabel
        Left = 50
        Top = 60
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          132.291666666666700000
          158.750000000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'To'
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
      object QRLabel4: TQRLabel
        Left = 21
        Top = 60
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          55.562500000000000000
          158.750000000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'To :'
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
      object QRLabelFrom: TQRLabel
        Left = 50
        Top = 42
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          132.291666666666700000
          111.125000000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'From'
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
      object QRLabel7: TQRLabel
        Left = 4
        Top = 42
        Width = 42
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          111.125000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'From :'
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
      object QRLabel20: TQRLabel
        Left = 448
        Top = 72
        Width = 158
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1185.333333333333000000
          190.500000000000000000
          418.041666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Department Wise Summary'
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
      object QuickRep3: TQuickRep
        Left = -816
        Top = -224
        Width = 816
        Height = 1056
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
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
          70.000000000000000000
          2794.000000000000000000
          70.000000000000000000
          2159.000000000000000000
          127.000000000000000000
          127.000000000000000000
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
        object QRBand5: TQRBand
          Left = 48
          Top = 26
          Width = 720
          Height = 83
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            219.604166666666700000
            1905.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel35: TQRLabel
            Left = 576
            Top = 38
            Width = 86
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1524.000000000000000000
              100.541666666666700000
              227.541666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRLabelToday'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel36: TQRLabel
            Left = 222
            Top = 56
            Width = 17
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              587.375000000000000000
              148.166666666666700000
              44.979166666666670000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'To'
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
          object QRLabel37: TQRLabel
            Left = 190
            Top = 56
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              502.708333333333300000
              148.166666666666700000
              66.145833333333330000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'To :'
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
          object QRLabel38: TQRLabel
            Left = 54
            Top = 56
            Width = 34
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              142.875000000000000000
              148.166666666666700000
              89.958333333333330000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'From'
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
          object QRLabel39: TQRLabel
            Left = 6
            Top = 56
            Width = 42
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              148.166666666666700000
              111.125000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'From :'
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
          object QRLabel40: TQRLabel
            Left = 281
            Top = 36
            Width = 158
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              743.479166666666700000
              95.250000000000000000
              418.041666666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'Department Wise Summary'
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
          object QRLabel41: TQRLabel
            Left = 496
            Top = 37
            Width = 72
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1312.333333333333000000
              97.895833333333330000
              190.500000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Print Date :'
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
          object QRLabel42: TQRLabel
            Left = 275
            Top = 3
            Width = 169
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              727.604166666666700000
              7.937500000000000000
              447.145833333333300000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'Stupa Community Hospital'
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
          object QRLabel43: TQRLabel
            Left = 255
            Top = 21
            Width = 209
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              674.687500000000000000
              55.562500000000000000
              552.979166666666700000)
            XLColumn = 0
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'Kathmandu-6, Boudha, Phone: 4466287'
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
        object QRBand6: TQRBand
          Left = 48
          Top = 158
          Width = 720
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            60.854166666666670000
            1905.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRExpr11: TQRExpr
            Left = 754
            Top = 1
            Width = 100
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1994.958333333330000000
              2.645833333333330000
              264.583333333333000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QuickRep3
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(TableDepartment.RefTotal)'
            Mask = '#.00'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRExpr12: TQRExpr
            Left = 860
            Top = 1
            Width = 87
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              2275.416666666670000000
              2.645833333333330000
              230.187500000000000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QuickRep3
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'Sum(TableDepartment.Total -TableDepartment.RefTotal)'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel44: TQRLabel
            Left = 493
            Top = 2
            Width = 33
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1304.395833333333000000
              5.291666666666667000
              87.312500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total'
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
          object QRExpr13: TQRExpr
            Left = 638
            Top = 2
            Width = 74
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1688.041666666670000000
              5.291666666666670000
              195.791666666667000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail3
            ResetAfterPrint = True
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QueryDetail.TOT)'
            Mask = '#0.00'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRBand7: TQRBand
          Left = 48
          Top = 114
          Width = 720
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
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
          object QRLabel45: TQRLabel
            Left = 638
            Top = 2
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1688.041666666667000000
              5.291666666666667000
              198.437500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Net Amount'
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
          object QRLabel46: TQRLabel
            Left = 6
            Top = 2
            Width = 116
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              15.875000000000000000
              5.291666666666667000
              306.916666666666700000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Department Name'
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
        end
        object QRSubDetail3: TQRSubDetail
          Left = 48
          Top = 138
          Width = 720
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            52.916666666666670000
            1905.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QuickRep3
          FooterBand = QRBand6
          HeaderBand = QRBand7
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText12: TQRDBText
            Left = 7
            Top = 1
            Width = 66
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              18.520833333333330000
              2.645833333333333000
              174.625000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'DEPNAME'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 687
            Top = 1
            Width = 25
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1817.687500000000000000
              2.645833333333333000
              66.145833333333330000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'TOT'
            Mask = '#0.00'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
        object QRBand8: TQRBand
          Left = 48
          Top = 181
          Width = 720
          Height = 120
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            317.500000000000000000
            1905.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel47: TQRLabel
            Left = 494
            Top = 99
            Width = 76
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              261.937500000000000000
              201.083333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Grand Total'
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
          object QRExpr14: TQRExpr
            Left = 625
            Top = 99
            Width = 85
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1653.645833333330000000
              261.937500000000000000
              224.895833333333000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail3
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 
              'SUM(QueryDetail.TOT)-QueryDiscount.DIS+QueryDeposit.TOTAL - Quer' +
              'yRefund.ETOTAL-QueryCancel.TOTAL'
            Mask = '#0.00'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel48: TQRLabel
            Left = 494
            Top = 4
            Width = 91
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              10.583333333333330000
              240.770833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Discount'
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
          object QRDBText14: TQRDBText
            Left = 689
            Top = 4
            Width = 22
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1822.979166666667000000
              10.583333333333330000
              58.208333333333330000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'DIS'
            Mask = '#0.00'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRLabel49: TQRLabel
            Left = 8
            Top = 6
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
              15.875000000000000000
              177.270833333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Page No :-'
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
          object QRSysData3: TQRSysData
            Left = 81
            Top = 6
            Width = 46
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              214.312500000000000000
              15.875000000000000000
              121.708333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            Color = clWhite
            Data = qrsPageNumber
            Transparent = False
            ExportAs = exptText
            FontSize = 10
          end
          object QRLabel50: TQRLabel
            Left = 494
            Top = 40
            Width = 84
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              105.833333333333300000
              222.250000000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Deposit'
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
          object QRLabel51: TQRLabel
            Left = 494
            Top = 59
            Width = 82
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              156.104166666666700000
              216.958333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Refund'
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
          object QRDBText15: TQRDBText
            Left = 661
            Top = 60
            Width = 50
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1748.895833333333000000
              158.750000000000000000
              132.291666666666700000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'ETOTAL'
            Mask = '#0.00'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRDBText16: TQRDBText
            Left = 670
            Top = 41
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1772.708333333333000000
              108.479166666666700000
              108.479166666666700000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'TOTAL'
            Mask = '#0.00'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
          object QRLabel52: TQRLabel
            Left = 494
            Top = 21
            Width = 75
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              55.562500000000000000
              198.437500000000000000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Net Amount'
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
          object QRExpr15: TQRExpr
            Left = 626
            Top = 22
            Width = 85
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666700000
              1656.291666666670000000
              58.208333333333300000
              224.895833333333000000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            Master = QRSubDetail3
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = 'SUM(QueryDetail.TOT)-QueryDiscount.DIS'
            Mask = '#0.00'
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
          object QRLabel53: TQRLabel
            Left = 494
            Top = 80
            Width = 106
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1307.041666666667000000
              211.666666666666700000
              280.458333333333300000)
            XLColumn = 0
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Total Bill Cancel'
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
          object QRDBText17: TQRDBText
            Left = 685
            Top = 80
            Width = 41
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              44.979166666666670000
              1812.395833333333000000
              211.666666666666700000
              108.479166666666700000)
            XLColumn = 0
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            DataField = 'TOTAL'
            Mask = '#0.00'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            FontSize = 10
          end
        end
        object QRGroup3: TQRGroup
          Left = 48
          Top = 109
          Width = 720
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            13.229166666666670000
            1905.000000000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Expression = 'QueryMaster.DEPID'
          Master = QuickRep3
          ReprintOnNewPage = False
        end
      end
      object QRLabel8: TQRLabel
        Left = 471
        Top = 2
        Width = 112
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1246.187500000000000000
          5.291666666666667000
          296.333333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Hospital Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRLabel8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel_HosSloganTitle: TQRLabel
        Left = 410
        Top = 24
        Width = 234
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1084.791666666667000000
          63.500000000000000000
          619.125000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Kathmandu University Teaching Hospital'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel_HosSloganTitlePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel_HosAddress: TQRLabel
        Left = 503
        Top = 44
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          116.416666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Address'
        Color = clWhite
        OnPrint = QRLabel_HosAddressPrint
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 1
        Top = 119
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          314.854166666666700000
          60.854166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Sno'
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
      object QRLabel6: TQRLabel
        Left = 41
        Top = 119
        Width = 104
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          314.854166666666700000
          275.166666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Department Name'
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
      object QRLabel58: TQRLabel
        Left = 294
        Top = 111
        Width = 47
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          777.875000000000000000
          293.687500000000000000
          124.354166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Cash Amount'
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
      object QRLabel17: TQRLabel
        Left = 384
        Top = 111
        Width = 48
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1016.000000000000000000
          293.687500000000000000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Credit Amount'
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
      object QRLabel3: TQRLabel
        Left = 497
        Top = 119
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1314.979166666670000000
          314.854166666667000000
          89.958333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Total'
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
        Left = 562
        Top = 111
        Width = 52
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1486.958333333330000000
          293.687500000000000000
          137.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Free Con. Amt'
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
      object QRLabel19: TQRLabel
        Left = 655
        Top = 129
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1733.020833333333000000
          341.312500000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'CASH'
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
      object QRLabel_SvrTaxCap: TQRLabel
        Left = 671
        Top = 111
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1775.354166666667000000
          293.687500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'SVR Tax'
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
      object QRLabel21: TQRLabel
        Left = 717
        Top = 129
        Width = 39
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1897.062500000000000000
          341.312500000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'CREDIT'
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
        Left = 777
        Top = 111
        Width = 46
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          2055.812500000000000000
          293.687500000000000000
          121.708333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Refund Amount'
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
      object QRLabel_RefundTaxCap: TQRLabel
        Left = 898
        Top = 113
        Width = 45
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          84.666666666666700000
          2375.958333333330000000
          298.979166666667000000
          119.062500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'RF SVR Tax'
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
      object QRLabel34: TQRLabel
        Left = 836
        Top = 111
        Width = 52
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          2211.916666666670000000
          293.687500000000000000
          137.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Refund Con. Amt'
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
      object QRLabel15: TQRLabel
        Left = 973
        Top = 119
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2574.395833333333000000
          314.854166666666700000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Net Amount'
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
        Top = 104
        Width = 1054
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875000000000000000
          0.000000000000000000
          275.166666666667000000
          2788.708333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 142
        Width = 1054
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          0.000000000000000000
          375.708333333333000000
          2788.708333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel9: TQRLabel
        Left = 895
        Top = 61
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2368.020833333333000000
          161.395833333333300000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Print Date :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel16Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel_PrintDate: TQRLabel
        Left = 966
        Top = 61
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2555.875000000000000000
          161.395833333333300000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Print Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRLabel16Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 458
      Width = 1055
      Height = 22
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
        58.208333333333330000
        2791.354166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 923
        Top = 1
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2442.104166666667000000
          2.645833333333333000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Caption = 'Page No :-'
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
      object QRSysData1: TQRSysData
        Left = 998
        Top = 1
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2640.541666666667000000
          2.645833333333333000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        Data = qrsPageNumber
        Transparent = False
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 193
      Width = 1055
      Height = 91
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        240.770833333333300000
        2791.354166666667000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel56: TQRLabel
        Left = 131
        Top = 1
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          346.604166666666700000
          2.645833333333333000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total:'
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
      object QRExpr2: TQRExpr
        Left = 257
        Top = 1
        Width = 86
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          679.979166666666700000
          2.645833333333333000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.CASHTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 348
        Top = 1
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          920.750000000000000000
          2.645833333333333000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.CREDITTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr17: TQRExpr
        Left = 437
        Top = 1
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          2.645833333333333000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.TOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr6: TQRExpr
        Left = 618
        Top = 1
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1635.125000000000000000
          2.645833333333333000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'Sum(Query_RevenueCollection.CASHSVRTAX)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr5: TQRExpr
        Left = 761
        Top = 1
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2013.479166666667000000
          2.645833333333333000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.REFUNDTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr20: TQRExpr
        Left = 695
        Top = 1
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1838.854166666667000000
          2.645833333333333000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.CREDITSVRTAX)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr29: TQRExpr
        Left = 894
        Top = 1
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2365.375000000000000000
          2.645833333333333000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.REFUNDSVRTAX)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr21: TQRExpr
        Left = 828
        Top = 1
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2190.750000000000000000
          2.645833333333333000
          166.687500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.REFUNDDISCOUNT)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr19: TQRExpr
        Left = 951
        Top = 1
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2516.187500000000000000
          2.645833333333333000
          264.583333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.NETTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRExpr9: TQRExpr
        Left = 537
        Top = 1
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1420.812500000000000000
          2.645833333333333000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'Sum(Query_RevenueCollection.DISCOUNT)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 19
        Width = 1054
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          50.270833333333330000
          2788.708333333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 61
        Top = 54
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          142.875000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total SVR Tax'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel12: TQRLabel
        Left = 22
        Top = 37
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          58.208333333333330000
          97.895833333333330000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total Credit Amount :'
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
      object QRExpr1: TQRExpr
        Left = 151
        Top = 37
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          97.895833333333330000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.CREDITTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 26
        Top = 20
        Width = 120
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          68.791666666666670000
          52.916666666666670000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total Cash Amount :'
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
      object QRExpr7: TQRExpr
        Left = 151
        Top = 20
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          52.916666666666670000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(Query_RevenueCollection.CASHTOTAL)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 41
        Top = 72
        Width = 105
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          108.479166666666700000
          190.500000000000000000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = 'Total  Revenue :'
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
      object QRExpr22: TQRExpr
        Left = 153
        Top = 72
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          404.812500000000000000
          190.500000000000000000
          211.666666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'Sum(Query_RevenueCollection.TOTAL+Query_RevenueCollection.CASHSV' +
          'RTAX+Query_RevenueCollection.CREDITSVRTAX)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRExpr25: TQRExpr
        Left = 151
        Top = 54
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          399.520833333333300000
          142.875000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        Master = QRSubDetail1
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'SUM(Query_RevenueCollection.CASHSVRTAX+Query_RevenueCollection.C' +
          'REDITSVRTAX)'
        Mask = '#,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
  object QueryDeposit: TOraQuery
    SQL.Strings = (
      
        'Select NVL(Sum(DEPO_DrAmount),0) as Deposit,NVL(Sum(DEPO_CrAmoun' +
        't),0) as AdjustedDeposit'
      
        'From HS_DEPO_Deposit where DEPO_DepositDate>=:FromDate and DEPO_' +
        'DepositDate <=:ToDate'
      'and DEPO_InpatientId=0'
      ''
      ''
      ' ')
    Left = 271
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'FromDate'
      end
      item
        DataType = ftString
        Name = 'ToDate'
      end>
  end
  object Query_RevenueCollection: TOraQuery
    SQL.Strings = (
      
        'Select  DepName,Round(Sum(CashTotal),2) as CashTotal,Round(Sum(C' +
        'reditTotal),2) as CreditTotal,Round(Sum(CashTotal+CreditTotal),2' +
        ') as Total,'
      
        'Round(Sum(CashDiscount),2) as CashDiscount,Round(Sum(Discount),2' +
        ') as Discount,Round(Sum(CashVatAmt),2) as CashSvrTax,Round(Sum(C' +
        'reditVatAmt),2) as CreditSvrTax,Round(Sum(RefundTotal),2) as Ref' +
        'undTotal,'
      
        'Sum(RefundDiscount) as RefundDiscount,Sum(RefundVatAmt) as Refun' +
        'dSvrTax,'
      
        'Round(Sum((CashTotal+CreditTotal+CashVatAmt+CreditVatAmt+RefundD' +
        'iscount)-(Discount+RefundTotal+RefundVatAmt)),2) as NetTotal'
      'From VW_HS_DEPT_WISE_REVENUE'
      'where BillDate='#39'2014/07/17'#39
      'and BillType In ('#39'R'#39','#39'B'#39')'
      'Group By DepName'
      'Order by DepName'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    BeforeScroll = Query_RevenueCollectionBeforeScroll
    AfterScroll = Query_RevenueCollectionAfterScroll
    Left = 104
  end
  object Query_CommunityRefund: TOraQuery
    SQL.Strings = (
      'Select NVL(Sum(Amount),0) as RefundTotal'
      'From CommunityRefund '
      'where BillDate>=:FromDate and BillDate>=:ToDate'
      'and BillType='#39'B'#39
      ''
      ' '
      ' '
      ' '
      ' ')
    Left = 134
    Top = 73
    ParamData = <
      item
        DataType = ftString
        Name = 'FromDate'
      end
      item
        DataType = ftString
        Name = 'ToDate'
      end>
    object Query_CommunityRefundREFUNDTOTAL: TFloatField
      FieldName = 'REFUNDTOTAL'
    end
  end
  object Query_TotalSummary: TOraQuery
    SQL.Strings = (
      'Select Round(Sum(CashDiscount),2) as CashDiscount,'
      
        'Sum((CreditTotal+CreditVatAmt+CreditRefundDiscount)-(CreditRefun' +
        'dTotal+CreditRefundVatAmt+CreditDiscount)) as NetCreditAmount'
      'From VW_HS_DEPT_WISE_REVENUE'
      'where BillDate='#39'2014/07/17'#39
      'and BillType In ('#39'R'#39','#39'B'#39')')
    Left = 224
    Top = 51
  end
end
