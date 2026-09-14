object Form_RepDepositCollection: TForm_RepDepositCollection
  Left = 0
  Top = 165
  Caption = 'Deposit Collection'
  ClientHeight = 742
  ClientWidth = 1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep_Depositcollection: TQuickRep
    Left = 118
    Top = 112
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AfterPrint = QuickRep_DepositcollectionAfterPrint
    BeforePrint = QuickRep_DepositcollectionBeforePrint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1'
      'QRSTRINGSBAND2')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39
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
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 144
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
        381.000000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel15: TQRLabel
        Left = 41
        Top = 105
        Width = 44
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          108.479166666666700000
          277.812500000000000000
          116.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bill No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel16: TQRLabel
        Left = 157
        Top = 106
        Width = 51
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          415.395833333333300000
          280.458333333333300000
          134.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lab. No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 346
        Top = 106
        Width = 90
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          915.458333333333300000
          280.458333333333300000
          238.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patient Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel21: TQRLabel
        Left = 526
        Top = 106
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1391.708333333333000000
          280.458333333333300000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deposit. Amt.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 122
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
          322.791666666666700000
          1905.000000000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel3: TQRLabel
        Left = 8
        Top = 32
        Width = 89
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          84.666666666666670000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User Name :-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabelUser: TQRLabel
        Left = 91
        Top = 33
        Width = 82
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          240.770833333333300000
          87.312500000000000000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabelUser'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 563
        Top = 33
        Width = 67
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1489.604166666667000000
          87.312500000000000000
          177.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Print Date :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabelDate: TQRLabel
        Left = 631
        Top = 33
        Width = 75
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1669.520833333333000000
          87.312500000000000000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabelDate'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabel17: TQRLabel
        Left = 8
        Top = 50
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          132.291666666666700000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'From Date :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 8
        Top = 68
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          179.916666666666700000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'To Date :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object Date1: TQRLabel
        Left = 91
        Top = 51
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          134.937500000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object Date2: TQRLabel
        Left = 91
        Top = 68
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          179.916666666666700000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel27: TQRLabel
        Left = 575
        Top = 65
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1521.354166666667000000
          171.979166666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Page No :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
        Left = 632
        Top = 65
        Width = 48
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1672.166666666667000000
          171.979166666666700000
          127.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
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
        Left = 7
        Top = 85
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          224.895833333333300000
          232.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time Range :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabelTimeRange: TQRLabel
        Left = 91
        Top = 85
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          240.770833333333300000
          224.895833333333300000
          105.833333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 238
        Top = 80
        Width = 243
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          629.708333333333300000
          211.666666666666700000
          642.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Outstanding Deposit Details'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object QRLabel_HosName: TQRLabel
        Left = 208
        Top = 1
        Width = 304
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666670000
          550.333333333333300000
          2.645833333333333000
          804.333333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'NOBEL MEDICAL COLLEGE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        OnPrint = QRLabel_HosNamePrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 16
      end
      object lbl_address: TQRLabel
        Left = 296
        Top = 31
        Width = 127
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          783.166666666666700000
          82.020833333333330000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'Kamaladi, Kathmandu'
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
      object QRShape4: TQRShape
        Left = 1
        Top = 102
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          269.875000000000000000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 8
        Top = 124
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          21.166666666666670000
          328.083333333333300000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deposit :-'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabel41: TQRLabel
        Left = 0
        Top = 105
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          277.812500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sno'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabelTime: TQRLabel
        Left = 632
        Top = 48
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1672.166666666667000000
          127.000000000000000000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabelTime'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRLabel1: TQRLabel
        Left = 224
        Top = 105
        Width = 86
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          592.666666666666700000
          277.812500000000000000
          227.541666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Deposit Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 642
        Top = 105
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1698.625000000000000000
          277.812500000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'User'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 9
      end
    end
    object QRSubDetailIPDeposit: TQRSubDetail
      Left = 48
      Top = 192
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
      Master = QuickRep_Depositcollection
      DataSet = QueryDeposit
      FooterBand = QRBand5
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText59: TQRDBText
        Left = 32
        Top = 2
        Width = 70
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          84.666666666666670000
          5.291666666666667000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'DEPOSITNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText61: TQRDBText
        Left = 346
        Top = 2
        Width = 140
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          915.458333333333300000
          5.291666666666667000
          370.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'PatientName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText62: TQRDBText
        Left = 541
        Top = -1
        Width = 38
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1431.395833333333000000
          -2.645833333333333000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Mask = '#,0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText64: TQRDBText
        Left = 157
        Top = 2
        Width = 62
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          415.395833333333300000
          5.291666666666667000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'PATIENTID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = QRDBText64Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 3
        Top = 1
        Width = 27
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
          71.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = 'SN'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 225
        Top = 0
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          0.000000000000000000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'DEPOSITDATE'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 636
        Top = 0
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1682.750000000000000000
          0.000000000000000000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryDeposit
        DataField = 'username'
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
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object QRBand5: TQRBand
      Left = 48
      Top = 213
      Width = 720
      Height = 52
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        137.583333333333300000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRExpr17: TQRExpr
        Left = 523
        Top = 3
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1383.770833333333000000
          7.937500000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetailIPDeposit
        OnPrint = QRExpr17Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QueryDeposit.Total)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 423
        Top = 3
        Width = 95
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1119.187500000000000000
          7.937500000000000000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Deposit :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRShape9: TQRShape
        Left = 1
        Top = 31
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          82.020833333333330000
          1899.708333333333000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
    end
    object QRSubDetail3: TQRSubDetail
      Left = 48
      Top = 265
      Width = 720
      Height = 1
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
        2.645833333333333000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = QuickRep_Depositcollection
      DataSet = QueryAdvanceRefund
      FooterBand = QRBand3
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText69: TQRDBText
        Left = 21
        Top = 2
        Width = 43
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          55.562500000000000000
          5.291666666666667000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryAdvanceRefund
        DataField = 'BILLNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText71: TQRDBText
        Left = 346
        Top = 2
        Width = 140
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          915.458333333333300000
          5.291666666666667000
          370.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryAdvanceRefund
        DataField = 'PATIENTName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText72: TQRDBText
        Left = 612
        Top = 3
        Width = 18
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1619.250000000000000000
          7.937500000000000000
          47.625000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = QueryAdvanceRefund
        DataField = 'CR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Mask = '#,0.00'
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText74: TQRDBText
        Left = 152
        Top = 2
        Width = 62
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          402.166666666666700000
          5.291666666666667000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryAdvanceRefund
        DataField = 'PATIENTID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = QRDBText74Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 9
      end
      object QRLabel61: TQRLabel
        Left = 0
        Top = 2
        Width = 20
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          0.000000000000000000
          5.291666666666670000
          52.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sno'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
    end
    object QRBand3: TQRBand
      Left = 48
      Top = 266
      Width = 720
      Height = 0
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
        0.000000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRLabel26: TQRLabel
        Left = 355
        Top = 37
        Width = 183
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          939.270833333333300000
          97.895833333333330000
          484.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Collected Amount  :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 1
        Top = 57
        Width = 719
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          150.812500000000000000
          1902.354166666667000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr32: TQRExpr
        Left = 561
        Top = 3
        Width = 70
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1484.312500000000000000
          7.937500000000000000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail3
        OnPrint = QRExpr32Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'SUM(QueryAdvanceRefund.CR)'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel62: TQRLabel
        Left = 431
        Top = 4
        Width = 124
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1140.354166666667000000
          10.583333333333330000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total Dep. Refund :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      object QRExpr28: TQRExpr
        Left = 546
        Top = 37
        Width = 87
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          97.895833333333330000
          230.187500000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = QRExpr28Print
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
    end
  end
    object QueryCollection: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,PatientName,RateType,BillDate,BillTime,S' +
              'um(Amount) as Amount,ServiceType as Service,QTy'
            ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(NetAmount) as NetAmount '
            
              'from VW_User_Wise_Coll_Detail where PayType='#39'CASH'#39'  And (BillNo ' +
              'Not Like '#39'RF%'#39')'
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(BillBy=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,PatientName,RateType,BillDate,BillTime' +
              ',ServiceType,QTY Order By BillNo')
    Left = 184
    Top = 11
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserID'
              ParamType = ptUnknown
              Value = '2'
            end>
  end
  object QueryDoctor: TOraQuery
    Left = 288
    Top = 3
  end
  object QueryCreditRefund: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,RateType,BillDate,BillTime,Sum(Amount*Qt' +
              'y) as Amount'
            ',Sum(Qty*Amount*dis/100) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(((Amount*Qty)+VatAmt)-(Amount*Qty*Dis/100)) as NetAmount '
            
              'from BillDetail where PayType='#39'REFUND'#39' and CancelStatus='#39'Y'#39' and ' +
              'PrevBillNo Like '#39'CR%'#39
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(ModifyBy=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime Order By Bi' +
              'llNo')
    Left = 736
    Top = 12
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = QueryName
      LookupKeyFields = 'PATIENTID'
      LookupResultField = 'NAME'
      KeyFields = 'PATIENTID'
      Size = 75
      Lookup = True
    end
    object StringField2: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object FloatField1: TFloatField
      FieldName = 'PATIENTID'
    end
    object StringField3: TStringField
      FieldName = 'RATETYPE'
      Size = 3
    end
    object StringField4: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object FloatField2: TFloatField
      FieldName = 'AMOUNT'
    end
    object FloatField3: TFloatField
      FieldName = 'DISCOUNT'
    end
    object FloatField4: TFloatField
      FieldName = 'VATAMT'
    end
    object FloatField5: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object StringField6: TStringField
      FieldName = 'BILLTIME'
      Size = 12
    end
  end
  object QueryName: TOraQuery
    SQL.Strings = (
            'Select PatientID,Fname||'#39' '#39'||LName As Name,PATIENTTYPE '
            'From Patientmain where PatientId In (Select Distinct PatientId'
            'From BillDetail where BillDate>=:FromDate and BillDate<=:ToDate '
            'and BillBy=:UserId)')
    Left = 536
    Top = 60
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryTimeRange: TOraQuery
    SQL.Strings = (
            'Select '
            'Min(BillTime) as StartTime'
            
              'From BillDetail where BillDate>=:FromDate and BillDate<=:ToDate ' +
              'and '
            'ModifyBy=:UserId')
    Left = 368
    Top = 4
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryRefund: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,RateType,ServiceType,BillDate,BillTime, ' +
              'Sum(Amount)as Amount'
            
              ',Sum(Discount)as Discount, Sum(VatAmt)as VatAmt,Sum(NetAmount)as' +
              ' NetAmount '
            
              'from VW_User_Wise_Coll_Detail where PayType='#39'REFUND'#39' and CancelS' +
              'tatus='#39'Y'#39' and ReferenceNo Not Like '#39'CR%'#39
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(Billby=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime,SErviceType' +
              ' Order By BillNo')
    Left = 56
    Top = 12
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryCredit: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,PatientName,RateType,BillDate,BillTime,S' +
              'um(Amount) as Amount'
            ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(NetAmount) as NetAmount '
            'from VW_User_Wise_Coll_Detail where PayType='#39'CREDIT'#39' '
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(Billby=:UserId)'
            '           AND(39=39)'
            'Group By BillNo,PatientId,RateType,BillDate,BillTime,PatientName'
            ' Order By BillNo')
    Left = 632
    Top = 68
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryDeposit: TOraQuery
    SQL.Strings = (
            'select * from '
            
              '(select  depositdate,depositno,patientname,patientid,sum(dr-cr) ' +
              'total from('
            
              'select patientid,(select patientname from patientmain where pati' +
              'entid=deposit.patientid)patientname,'
            
              '0 as cr,sum(dramount) as dr,depositdate,depositno,REFERENCENO fr' +
              'om deposit where dramount>0'
            'group by patientid,depositdate,depositno,REFERENCENO'
            'union'
            
              'Select a.patientid,patientname,cr,dr,(select depositdate from de' +
              'posit where refbillno=a.refbillno and REMARKS='#39'ADVANCE BILL'#39')dep' +
              'ositdate,'
            
              '(select depositno from deposit where refbillno=a.refbillno and R' +
              'EMARKS='#39'ADVANCE BILL'#39')depositno,REFERENCENO from  '
            
              '(select patientid,refbillno,REFERENCENO,(select patientname from' +
              ' patientmain where patientid=deposit.patientid)patientname,sum(c' +
              'ramount) as cr, 0 as dr'
            'from deposit where cramount>0'
            'group by patientid,refbillno,REFERENCENO)a'
            ')'
            
              'group by patientname,patientid,depositdate,depositno)where total' +
              '>0')
    Left = 736
    Top = 69
  end
  object QueryIPCashCollection: TOraQuery
    SQL.Strings = (
            'Select * From  InpatientBill.db Order By BillDate,BillNo,PayType')
    Left = 404
    Top = 68
  end
  object QueryIPTPBill: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,InpatientId,RateType,BillDate,BillTime,S' +
              'um(Amount*Qty) as Amount'
            
              ',Sum(Qty*Amount*dis/100) As Discount, Sum(VatAmt) as VatAmt,(Sel' +
              'ect ExtraCharge From BillMaster where BillNo=BillDetail.BillNo) ' +
              'as AdvAmt,'
            'Sum(((Amount*Qty)+VatAmt)-(Amount*Qty*Dis/100)) as NetAmount '
            'from BillDetail where (BillType='#39'IP'#39'  )  And BillNo Like '#39'TP%'#39' '
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(ModifyBy=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,InpatientId,RateType,BillDate,BillTime' +
              ' Order By BillNo')
    Left = 316
    Top = 60
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserID'
              ParamType = ptUnknown
              Value = '2'
            end>
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = QueryName
      LookupKeyFields = 'PATIENTID'
      LookupResultField = 'NAME'
      KeyFields = 'PATIENTID'
      Size = 30
      Lookup = True
    end
    object StringField8: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object FloatField6: TFloatField
      FieldName = 'PATIENTID'
    end
    object StringField9: TStringField
      FieldName = 'RATETYPE'
      Size = 3
    end
    object StringField10: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object FloatField7: TFloatField
      FieldName = 'AMOUNT'
    end
    object FloatField8: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryIPTPBillADVAMT: TFloatField
      FieldName = 'ADVAMT'
    end
    object FloatField9: TFloatField
      FieldName = 'VATAMT'
    end
    object FloatField10: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object StringField11: TStringField
      FieldName = 'BILLTIME'
      Size = 12
    end
    object QueryIPTPBillINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
  end
  object QueryIPRefund: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,RateType,BillDate,BillTime,Sum(Amount*Qt' +
              'y) as Amount'
            ',Sum(Qty*Amount*dis/100) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(((Amount*Qty)+VatAmt)-(Amount*Qty*Dis/100)) as NetAmount '
            'from BillDetail where (BillNo Like '#39'RF%'#39') And (BillType='#39'IP'#39')'
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(ModifyBy=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime Order By Bi' +
              'llNo')
    Left = 525
    Top = 12
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
            end>
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'Name'
      LookupDataSet = QueryName
      LookupKeyFields = 'PATIENTID'
      LookupResultField = 'NAME'
      KeyFields = 'PATIENTID'
      Size = 75
      Lookup = True
    end
    object StringField13: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object FloatField11: TFloatField
      FieldName = 'PATIENTID'
    end
    object StringField14: TStringField
      FieldName = 'RATETYPE'
      Size = 3
    end
    object StringField15: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object FloatField12: TFloatField
      FieldName = 'AMOUNT'
    end
    object FloatField13: TFloatField
      FieldName = 'DISCOUNT'
    end
    object FloatField14: TFloatField
      FieldName = 'VATAMT'
    end
    object FloatField15: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object StringField16: TStringField
      FieldName = 'BILLTIME'
      Size = 12
    end
  end
  object QueryAdvanceRefund: TOraQuery
    SQL.Strings = (
            
              'Select PatientId,Sum(CRAmount) as Cr,BillDate as ModifyDate,Bill' +
              'Time as ModifyTime,BillNo'
            
              'From VW_User_Wise_Coll_Detail Where((BillDAte>=:FromDate) AND(Bi' +
              'llDate<=:ToDate)) and CRAmount > 0'
            'And(BillBy=:UserId) '
            'group by patientid, billdate, billtime,billno')
    Left = 424
    Top = 5
    ParamData = <
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftInteger
              Name = 'UserId'
              ParamType = ptUnknown
              Value = '2'
            end>
  end
  object QueryRefundNew: TOraQuery
    SQL.Strings = (
            'Select BillNo,PatientId,RateType,BillDate,BillTime, Sum(Amount)'
            
              ',Sum(Discount)as Discount, Sum(VatAmt)as VatAmt,Sum(NetAmount)as' +
              ' NetAmount '
            
              'from VW_User_Wise_Coll_Detail where PayType='#39'REFUND'#39' and CancelS' +
              'tatus='#39'Y'#39' and ReferenceNo Not Like '#39'CR%'#39
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(Billby=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime Order By Bi' +
              'llNo')
    Left = 593
    Top = 9
    ParamData = <
            item
              DataType = ftUnknown
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryCreditNew: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,RateType,BillDate,BillTime,Sum(Amount) a' +
              's Amount'
            ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(NetAmount) as NetAmount '
            'from VW_User_Wise_Coll_Detail where PayType='#39'CREDIT'#39' '
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(Billby=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime Order By Bi' +
              'llNo')
    Left = 672
    ParamData = <
            item
              DataType = ftUnknown
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryDepositNew: TOraQuery
    SQL.Strings = (
            'Select PatientId,Sum(Amount)as CR,BillDAte,BillTime,BillNo'
            
              'From VW_User_Wise_Coll_Detail Where((BillDate>=:FromDate) AND(Bi' +
              'llDate<=:ToDate)) and Amount >0 and BillNo like '#39'DP%'#39
            'And(BillBy=:UserId)'
            'group by PatientId,BillDate,BillTime,BillNo')
    Left = 912
    Top = 8
    ParamData = <
            item
              DataType = ftUnknown
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
  object QueryCollectionNew: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,PatientId,RateType,BillDate,BillTime,Sum(Amount) a' +
              's Amount'
            ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,'
            'Sum(NetAmount) as NetAmount '
            
              'from VW_User_Wise_Coll_Detail where PayType='#39'CASH'#39'  And (BillNo ' +
              'Not Like '#39'RF%'#39')'
            '           And BillDate>=:FromDate And BillDate<=:ToDate'
            '           AND(BillBy=:UserId)'
            '           AND(39=39)'
            
              'Group By BillNo,PatientId,RateType,BillDate,BillTime Order By Bi' +
              'llNo'
            ' ')
    Left = 832
    ParamData = <
            item
              DataType = ftUnknown
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftUnknown
              Name = 'UserId'
              ParamType = ptUnknown
            end>
  end
end
