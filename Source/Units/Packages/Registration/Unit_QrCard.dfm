object Form_Card: TForm_Card
  Left = 0
  Top = 0
  Caption = 'Patient Card'
  ClientHeight = 245
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QrCard: TQuickRep
    Left = 8
    Top = 8
    Width = 340
    Height = 219
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
    Page.Orientation = poLandscape
    Page.PaperSize = Custom
    Page.Continuous = True
    Page.Values = (
      0.000000000000000000
      580.000000000000000000
      0.000000000000000000
      900.000000000000000000
      0.000000000000000000
      0.000000000000000000
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
    ReportTitle = 'Patient Card'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PreviewWidth = 600
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object TitleBand1: TQRBand
      Left = 0
      Top = 0
      Width = 340
      Height = 219
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
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
        579.437500000000000000
        899.583333333333300000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object lbl_Gender: TQRLabel
        Left = 60
        Top = 106
        Width = 16
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          158.750000000000000000
          280.458333333333300000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N/A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        OnPrint = lbl_GenderPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_Name: TQRLabel
        Left = 54
        Top = 93
        Width = 16
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          142.875000000000000000
          246.062500000000000000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N/A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel1: TQRLabel
        Left = 15
        Top = 106
        Width = 42
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          39.687500000000000000
          280.458333333333300000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Age/Sex :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_RegisteredDate: TQRLabel
        Left = 73
        Top = 132
        Width = 47
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          193.145833333333300000
          349.250000000000000000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2012/03/18'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object Image_Main: TQRImage
        Left = 103
        Top = 210
        Width = 27
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          272.520833333333300000
          555.625000000000000000
          71.437500000000000000)
        XLColumn = 0
        Stretch = True
      end
      object QrBarcode: TQRAsBarcode
        Left = 15
        Top = 144
        Width = 134
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          39.687500000000000000
          381.000000000000000000
          354.541666666666700000)
        XLColumn = 0
        BarcodeHeight = 17
        BarcodeWidth = 134
        Modul = 1
        Ratio = 2.000000000000000000
        Text = '150200001'
        Typ = bcCode128A
      end
      object QRLabel3: TQRLabel
        Left = 15
        Top = 119
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          39.687500000000000000
          314.854166666666700000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Address :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_Address: TQRLabel
        Left = 63
        Top = 119
        Width = 72
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          166.687500000000000000
          314.854166666666700000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'JORPATI-2, KTM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 121
        Top = 106
        Width = 61
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          320.145833333333300000
          280.458333333333300000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contact No. :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_mobileno: TQRLabel
        Left = 186
        Top = 106
        Width = 16
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          492.125000000000000000
          280.458333333333300000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N/A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        OnPrint = lbl_mobilenoPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel4: TQRLabel
        Left = 15
        Top = 93
        Width = 32
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          39.687500000000000000
          246.062500000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 15
        Top = 79
        Width = 72
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          209.020833333333300000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patient Reg.No:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object lbl_hospitalno: TQRLabel
        Left = 90
        Top = 79
        Width = 16
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          238.125000000000000000
          209.020833333333300000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N/A'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Left = 15
        Top = 132
        Width = 54
        Height = 12
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          31.750000000000000000
          39.687500000000000000
          349.250000000000000000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Issue Date :'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -9
        Font.Name = 'Humnst777 BT'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 165
        Top = 131
        Width = 176
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          436.562500000000000000
          346.604166666666700000
          465.666666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 's[kof csf]{ k6s cfFpbf of] sf8{ clgjfo{ lnP/ cfpg'#39' xf]nf .'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Preeti'
        Font.Style = [fsBold]
        OnPrint = lbl_mobilenoPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 165
        Top = 146
        Width = 185
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          436.562500000000000000
          386.291666666666700000
          489.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'clgjfo{ lnP/ cfpg'#39' xf]nf .'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Preeti'
        Font.Style = [fsBold]
        OnPrint = lbl_mobilenoPrint
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 11
      end
    end
  end
end
