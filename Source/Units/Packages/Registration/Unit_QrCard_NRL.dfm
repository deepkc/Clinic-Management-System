object Form_QRCard_NRL: TForm_QRCard_NRL
  Left = 0
  Top = 0
  Caption = 'Patient Card'
  ClientHeight = 548
  ClientWidth = 774
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
    object qrim: TQRBand
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
      BeforePrint = qrimBeforePrint
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
      object QRLabel10: TQRLabel
        Left = 12
        Top = 90
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          238.125000000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel12: TQRLabel
        Left = 12
        Top = 10
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
          31.750000000000000000
          26.458333333333330000
          124.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Patient Id.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel16: TQRLabel
        Left = 12
        Top = 159
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          420.687500000000000000
          137.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Issue Date'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object lbl_Name: TQRLabel
        Left = 97
        Top = 90
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          238.125000000000000000
          84.666666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 81
        Top = 90
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          238.125000000000000000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel21: TQRLabel
        Left = 81
        Top = 159
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          214.312500000000000000
          420.687500000000000000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object lbl_RegisteredDate: TQRLabel
        Left = 97
        Top = 157
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          415.395833333333300000
          34.395833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '87'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 199
        Top = 150
        Width = 31
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          526.520833333333300000
          396.875000000000000000
          82.020833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tel No'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel_ContactNo: TQRLabel
        Left = 246
        Top = 150
        Width = 61
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          650.875000000000000000
          396.875000000000000000
          161.395833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '9849081073'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object qrlbl_CurrentAddress: TQRLabel
        Left = 97
        Top = 112
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          296.333333333333300000
          251.354166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Current Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 12
        Top = 112
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          296.333333333333300000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel13: TQRLabel
        Left = 82
        Top = 112
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          216.958333333333300000
          296.333333333333300000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QrBarcode: TQRAsBarcode
        Left = 195
        Top = 180
        Width = 102
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          515.937500000000000000
          476.250000000000000000
          269.875000000000000000)
        XLColumn = 0
        BarcodeHeight = 20
        BarcodeWidth = 101
        Modul = 1
        Ratio = 2.000000000000000000
        Text = '000000'
        Typ = bcCode128A
      end
      object Lbl_HosNo: TQRLabel
        Left = 255
        Top = 165
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          674.687500000000000000
          436.562500000000000000
          174.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Caption = '123456'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 194
        Top = 165
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          513.291666666666700000
          436.562500000000000000
          156.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Patient ID'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 82
        Top = 136
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          216.958333333333300000
          359.833333333333300000
          10.583333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object qrlbl_dob: TQRLabel
        Left = 97
        Top = 136
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          359.833333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'dob'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 13
        Top = 136
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          34.395833333333330000
          359.833333333333300000
          164.041666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DOB'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
      object QRLabel5: TQRLabel
        Left = 230
        Top = 152
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
          608.541666666666700000
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
        Font.Color = clBlack
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
      object QRLabel6: TQRLabel
        Left = 115
        Top = 10
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          304.270833333333300000
          26.458333333333330000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hospital Name'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 130
        Top = 27
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          343.958333333333300000
          71.437500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Address'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 143
        Top = 45
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          378.354166666666700000
          119.062500000000000000
          140.229166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Phoneno.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRImage1: TQRImage
        Left = 10
        Top = 27
        Width = 49
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          26.458333333333330000
          71.437500000000000000
          129.645833333333300000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676519390000FFD8FFE000104A46494600010101012C01
          2C0000FFE106384578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          0000010002000001310002000000140000007201320002000000140000008687
          690004000000010000009A000000C60000012C000000010000012C0000000141
          646F62652050686F746F73686F7020372E3000323031393A30353A3037203132
          3A31333A3534000003A001000300000001FFFF0000A002000400000001000003
          ECA0030004000000010000028A00000000000000060103000300000001000600
          00011A00050000000100000114011B0005000000010000011C01280003000000
          010002000002010004000000010000012402020004000000010000050C000000
          0000000048000000010000004800000001FFD8FFDB0043000806060706050807
          07070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E272022
          2C231C1C2837292C30313434341F27393D38323C2E333432FFDB004301090909
          0C0B0C180D0D1832211C21323232323232323232323232323232323232323232
          3232323232323232323232323232323232323232323232323232323232FFC000
          11080028002B03012100021101031101FFC4001F000001050101010101010000
          0000000000000102030405060708090A0BFFC400B51000020103030204030505
          04040000017D01020300041105122131410613516107227114328191A1082342
          B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A83
          8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
          B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
          F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102
          030405060708090A0BFFC400B511000201020404030407050404000102770001
          02031104052131061241510761711322328108144291A1B1C109233352F01562
          72D10A162434E125F11718191A262728292A35363738393A434445464748494A
          535455565758595A636465666768696A737475767778797A8283848586878889
          8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
          C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
          FFDA000C03010002110311003F00F7FAAF7B7D6DA75B35C5DCA238C1033824B1
          3D00039624F000C93DA9A577640670D5F519D43DAE8375E51E435CCA90961ECB
          92C3E8C14FAE2A5B7D6E36B88EDAF6D6E34FB890E234B90BB643E8AEA4A93D4E
          DCEEC0271C55722E8C0D4A2A002B8593C4705B6BBA66ABAB59B8B1D41FC9D3AF
          0C80C56EA41DA4AF50D2019DD8E158038C3674A71E6BD80DFF0013EBD2F86F48
          9354FB17DAADA05DD30597632F200C02307AFA8ACAD7FC42FA75A22F89F4155D
          1EE596296E21B813AC249E0C8BB54819FE25CE081DF14E14EF669EA06EE912DC
          21B8D3AEE432CF6846C9988DD344D9D8E7DF8653EA509E0102B4EB396E0676BD
          2BC1E1DD4E68C90F1DA4ACA47A8424564F8A749B1D5068DA3DD421ACE79E484A
          0E36816F2E31E846011E9815706D59AF3038ED6352BB8BC01E23F0AEAECC752D
          2EDD7CA9DB8FB5DB6F01251EFC00DD707BE4D745A8CE7C7D69A878752D65B186
          0B848B506B96512AAAB071B1149CEEC0C31C0C1246718ADDA51F7D7477FC80DD
          90795E32B409C09F4F9BCC1EBE5C916CFCBCC7FCEB66B9A5D008AE604BAB59AD
          E4198E5428C3D88C1AE45EE357BEBBD1264D364B8934A96417FB248D0997CA68
          F0A1981E770719C655948EB550B75028FC59D120D47C1B2EACDBE0BCB04DC873
          C94720346D83820F1F88F4273A3AEE937B1EB769E29F0D4515CDF2AFD9EF2D84
          8AAB7701FF0068F01D4E0827E9DB0748CFDC8A96DAAFC80D5D2E4FED2D5EE752
          31BA2C312DA2AB1076B825A5C11C1C36D4247F146C2B6EB196F600ACBBED3EE0
          5E7F68E9B22A5DED092C529222B851D036012AC3270C01EBC86180145D9EA055
          BAD4E3B8B67B4D5BC3F7AC8E30F09B65B98E4FFBE490467A6E00FB0AA167A146
          6777D2342B6F0F2489E5CB7690C4970E848255153217381F331C8C7DDEE344F9
          56FA76EE07516B6D0D95AC56D6D1AC70C4A11117A002A5AC9BB81FFFD9FFED19
          5850686F746F73686F7020332E30003842494D04250000000000100000000000
          00000000000000000000003842494D03ED000000000010012C00000001000101
          2C0000000100013842494D042600000000000E000000000000000000003F8000
          003842494D040D000000000004000000783842494D0419000000000004000000
          1E3842494D03F3000000000009000000000000000001003842494D040A000000
          00000100003842494D271000000000000A000100000000000000013842494D03
          F5000000000048002F66660001006C66660006000000000001002F6666000100
          A1999A0006000000000001003200000001005A00000006000000000001003500
          000001002D000000060000000000013842494D03F80000000000700000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800003842494D040000000000000200043842494D040200
          000000001C000000000000000000000000000000000000000000000000000000
          003842494D040800000000002E00000001000002400000024000000006000003
          4000000003E00100004E000100007A6000000031000100003EA0003842494D04
          1E000000000004000000003842494D041A00000000034F000000060000000000
          0000000000028A000003EC0000000D005600490047004900540049004E004700
          2000430041005200440000000100000000000000000000000000000000000000
          010000000000000000000003EC0000028A000000000000000000000000000000
          0001000000000000000000000000000000000000001000000001000000000000
          6E756C6C0000000200000006626F756E64734F626A6300000001000000000000
          526374310000000400000000546F70206C6F6E6700000000000000004C656674
          6C6F6E67000000000000000042746F6D6C6F6E670000028A0000000052676874
          6C6F6E67000003EC00000006736C69636573566C4C73000000014F626A630000
          0001000000000005736C6963650000001200000007736C69636549446C6F6E67
          000000000000000767726F757049446C6F6E6700000000000000066F72696769
          6E656E756D0000000C45536C6963654F726967696E0000000D6175746F47656E
          6572617465640000000054797065656E756D0000000A45536C69636554797065
          00000000496D672000000006626F756E64734F626A6300000001000000000000
          526374310000000400000000546F70206C6F6E6700000000000000004C656674
          6C6F6E67000000000000000042746F6D6C6F6E670000028A0000000052676874
          6C6F6E67000003EC0000000375726C54455854000000010000000000006E756C
          6C54455854000000010000000000004D73676554455854000000010000000000
          06616C74546167544558540000000100000000000E63656C6C54657874497348
          544D4C626F6F6C010000000863656C6C54657874544558540000000100000000
          0009686F727A416C69676E656E756D0000000F45536C696365486F727A416C69
          676E0000000764656661756C740000000976657274416C69676E656E756D0000
          000F45536C69636556657274416C69676E0000000764656661756C740000000B
          6267436F6C6F7254797065656E756D0000001145536C6963654247436F6C6F72
          54797065000000004E6F6E6500000009746F704F75747365746C6F6E67000000
          000000000A6C6566744F75747365746C6F6E67000000000000000C626F74746F
          6D4F75747365746C6F6E67000000000000000B72696768744F75747365746C6F
          6E6700000000003842494D041100000000000101003842494D04140000000000
          04000000213842494D040C00000000134F000000010000008000000053000001
          8000007C800000133300180001FFD8FFE000104A464946000102010048004800
          00FFED000C41646F62655F434D0002FFEE000E41646F626500648000000001FF
          DB0084000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C
          11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0CFFC00011080053008003012200021101031101FFDD00040008FFC4
          013F0000010501010101010100000000000000030001020405060708090A0B01
          00010501010101010100000000000000010002030405060708090A0B10000104
          01030204020507060805030C3301000211030421123105415161132271813206
          1491A1B14223241552C16233347282D14307259253F0E1F163733516A2B28326
          4493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4
          F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711
          0002020102040403040506070706053501000211032131120441516171221305
          32819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283
          072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4
          D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FF
          DA000C03010002110311003F00F43EAFD6E8E966AF51BBC3F73AC21C01631ACB
          2EDEE66AFF00D27A3632AFF03EAFF39756A9B7EB874FB2DAE8A6BB7D6C82D6E3
          8786B43B7EC6B6CFA65FE8B6DB9B55966CFE73D4567AD5FD571EDC7B3A763B72
          20586E9692E021BB769D3D8EFCF657FA7F53D1F4EB7D7EB2CEB72FEB1595B5D7
          60EEB71BD278616CEE73687599173363DF4BBF5DB29AABABF477FA6CBFD0FD37
          D04A4993F5BA9A5F1E9FB05CEADE04BAC6B2B75AC2FB693E8B6AFB43B1FF0041
          FA6DFB2CF5AEAFFC1243EB9E16E2C38F7EFAF5B0068870FA3BA897FBFDDB1FEF
          F4FF0041FA442A6FFAC355790FAF0FD2B80F589F4C1FB43D95CBFD570B1EE67A
          DEA62575575FE92AF472AAAFD4F495BC5CFEBF6E55355B8AEA2873EA639F6303
          9DB7D2BF232DEE7D167A5537D51898F56E67EFFF00D6925D5C2CB666E255975B
          5CCAEF687B1AF80EDAED58E3B4BFE9B7DC8E9249214924B32CEA6EBB2AEC6C5B
          6BABECAD2FBCBDAE7D85BEE66EA2869AF755EA32CAFD7F7FE96AB69F4911127E
          8A74D258F85D7A9B721943AFAF2197B5B6536D6D756763CECAAC355BBBD5A2CB
          3F46CCAA1FE97A965752D84A5131DD4A58B67D69C3A32B2E9C963A8AF0ACAEAB
          6D71046EB87E836ECDDF4BDFBFDFFA35B482EC3C4758DB5D4D66C66EDAF2D123
          746F877F2F6FB90538ECFAE9D0DFBC35F66FAF7CD5E99DE7631F738D75FD37FF
          0035B1BB7FC2A9E7FD69C7C1CC762DB4B839B4B6D05CF6366C7BABAEAC4FA5B7
          D477ABB9FEEF66CFF8AF505D43A9F58C7EA36578FD3C5F435F50AED630971691
          BB27DD2D6FA8DFEC7B3FC25CFF00D1563C7EA5D47D3AE7A78AC4D2E7B3ECF6FB
          5CF7E564750D9B47BBF57A297E3D9EC7BF26FAFED2CAEEBBECE92558FF005D30
          ED75353831B6BDE45DEE76DAAB1EB39D6B9CEAD9BBD98977E6FF00A15A3D33AF
          E1F54C834E2B5F0DA9B717BC6D043E368AF9DFF9CDB3FE13F47FE93D3C96E6F5
          ACBA8559BD2EB736DF437D62B246F75953AC64BECAFDF4D1F6CB7D47FA75D3E9
          62D9FA4FB57D9ABD3E8D9DD432EEB3ED588312B6D4D735858E6BC17DB93B2A73
          DDFA276CC4AF19F6B2BFA175DFE0D243FFD0F554966755EB6CE9B75753EA2FF5
          6BB1EC703037D6373297E9ECF5FF00C13BFD27B157C8FACD5D7F6815D1EA3F1F
          21B8E439EDADA43DA5DEAFA8FF006358DB196D3FD7AD4672C01209D46ECD1E5B
          3484488E92171371AAE2E0FF00A4EDA4B09DF5AF19BB9C687B6BAD98F6DAE790
          0B2BBE37BDECF77F44F529F5D9FF000A9DFF005A1B5D77976259EBE3D345CEA1
          A4171F58B5B654CFDEB28F52BFEBFA897BD8FF007BF90FFD1577DD33E9E8DEBA
          C7F4B83FF56E3FF1DDC49656275D665DB732AAA595D26FAEC0F05AF66FBA9AF6
          E9FE13D0DEAA637D6C1907198DC5D8FC9716C3EE601A371EDFD13FE8DF67A797
          FCD7FA4AADAD2F7A1A6BBEDA140E5731321C3AC3E6F54470FA78FF00E8BD02E6
          460665F707E20F433BA6535D7464BA3D37D8C36FDAF0F2434FAFF66CDA6CC6BB
          F9BFF439557E9E846A7EB59B8E3EDC56019563ABAC9C8AC7B9BB7756EFDDBFDD
          ECA156BFEB0E35C4DA714D391EA0A1967DA1B48703F68731B65EDF6EEDD8967E
          AF7FD0F5E9FF004C9D0E6B18BD77FEAC92791E63F736FEBC3BF0FEF7F55A5F57
          F7DBD3B12A70390E761D18B85901CD9C62E650FCBE9F7D0DD9636EA3ECCCCB6E
          47A7FA5AA9F4FF0044FA7F59ED9736DEB9898775E4E358FCAA49A89B2CDF610E
          2C147A4EB25ADAB2325DE83FD377A6CB695729EBB73FA8B3A75B8A2ABCB1AFB1
          A6E69700EDFEEA6B21AFBD8CF4FDEEFE5A764E671CE5A77ADA5F3496FDD33463
          663A01C5F343E41FA5F37F59D849645FF586AA3A7E4E7594BB6E2E43B1CB0104
          BB659E93EC6FF559BEEFEA3106EFAD54D395978CFA097E203B435ED25CE9A1B5
          35CCD3D16DEECCA9B5D8FF00F86FF46A339A0373E298F299E57C30BA246F1DE1
          C3C5FF00A520EEA4B04FD680CBA9A6CC521EE79AAF687826B78B1B8D0C6B831D
          90DFD232EDCCFF0000A7FF00394D82A763629B85B92FC427D46B21EDF754EF78
          F7372286FAEC4BDEC7DFF092BEE99FF74577E2870E97FA5C5FD476D25CFF00FC
          EB9A85A31086DC1AFC42EB1AD1656EB1B8DEABDC5BB68D8FB2A7EC77F83B7FEB
          6ACF49FAC0DEA77FA2CC67D2E0CF52C0F2258D70AECC7DED1FE9EBB1DFD4F492
          19A04800EA7C0AA5CA668C653946A31F98F1474FF9DFE07F7FD0FF00FFD1F46E
          A3D231BA8BA6F73B6ECD9B4181A3EBBD967F5D9652C54DFF00553A7BF707B9CE
          6DA41BDA76C5843EDB43EDF6FF0039FACDBEF5A63289FCDFC7FD8A42F27F37F1
          4C38E04D900B2C73E688118CE5103500172DDF55F0DCDB37DB63ECB9965575C7
          6FA8F6582A1163F6FBBD3FB3D7E9A9FF00CDBC4179C96D8F6DEEB1D63ECD0974
          BE9C86B1F23DD5D566355E8FFA3ABF46B485A7C3F1520F24F097B70FDD09FBC6
          6DB8CE9FB5C9E99D3FA3D591954F4FC96BDF5B1D45F8F5BD8E3487D9764358E6
          33DD4BBD4BAFD9EA7FE8B5570FA674465F5D183D5036EC77BE914D56D6487EDA
          FED547A7EE7B5EFF00B2B6EBAB6FBD967AD6FB37A87D5EE99D7713A85FF6B2DA
          B14BAF7BB6EC70B2CBAEB2E6BF19DADD8F8ED63F7FD9DFFF006A7D57FF00C650
          C0E93D7B05BD2583A654F7F472FA9D657731A2F6BAB7D2CC9F737733E9FA9B1F
          FA5F7DBFF5C9BEEF87500C7D23D3AD78FF00D25BF79CD64994AE7F3DEBC5FA3E
          AFF05D5AF17A19AB1C637546B0E183B2CAEDA892DBDDE9B7D5FA5F4EC6FA353B
          FEDBFD22853D2FA27AF55387D4F6645FFADD2CAADA8BDF22EABED755643FD4DD
          4DD6D2FB9ACFD27A75FF00A258F85F553ACD37E2E41A9B5D98AEC665837B4FA9
          436FB727269FEB556FD8F268DDFF0008AEFD5CE97D47A4DF4D799835D95DB563
          39D97EA377D16518CCC0B29D905D637755FA17D6EFE6722CFF008B465CB60166
          241311E9D5039ACDFBC68FCDE3C5EAF57F8539373EC3F5732DC6BFDA15DD68F5
          6A25B730D80BB6E458DDCD3BFD5C7B31BED4CFF45FA453C1AFA5DD9ED76375A1
          95965AD36D6CBAA7BAC6D45CF6B9F5D7EFF6FAFF00E0B6316359F55334E0DF99
          4B857D54E43FD2617336369B2ECCDFB6C67D27D987D4EF7FE93FC27E896A6174
          EBB07AD5F75184CB71DFF65AF1DE1ED696318CB2ACABDA2377B3D467E8FF00C3
          A4797C02CC4D91B74D63FF00A32BEF3988E132347A6FF37ABFE92F9585F57586
          D39BD4EB18EFC8B4BF1EEBAA158B9C1EEBEB876DFD2D6DBFD4D8FF00E67F4696
          3F45E87977DD4D7D43ED76B5AE16D4CB58E7B1CE6D547ACEF4BF48CB7F55A3E9
          FF0084AFFAEA9DDD1BAB3EECBA8E031F53FA9D79D5641B1849AC5B8AEB6B6D4E
          F7377538CFDFEEF7FE8D0F0FA3759C0EAD6F50188CF4B172332EAB6DAD6BAEAF
          2ACA9B5D3A37F455E3D35FDA3659FE17D3AEB43EEB8083A8BF38EBFBA91CDE70
          749C8793B27EABE312CB5D7DA7258E73C640DA1FEA39FEABAD10DDAD73BF9A7B
          3F9AF47F45E9A9D1F56B0B18D7E83DEC6D76D5786080DF52AACE36EDBFF0951F
          D2FF002D68B726A7E8D224F63A152F50F87E2A1F6A00FCB453F79CC411EE1A3A
          6FDDC8FF009AB827731F658FC7D0558EF82C633D4FB43F1DA36FF33659FBDFA4
          D9E9B3D4FD1D6AEF4FE955E0D8FB5B6BED7BEBAEA73AC20922A05B5BB77EFED3
          FA4FDF564DC7F77F15139247E6FE290840104002952CF9660894CC84B707F97F
          55FFD2F466A23567E6F59E95D3A466E55753C7F82077D9FF006CD5BEC5919BF5
          DAAAC3861623EC31A5B79D8D9F1F4EBDF63BFCFA93E18324FE589AEFB47ED5B3
          CB08EE7E8F56D58D666756B32EEA2BA5F6D2CB1CC61AC160807F3AD3FA377F9C
          A9E0FD6D7FA75FDB680F2E009B2831C8FF004361FF00D1AB0AECFCDAFA9E5656
          1655945775EEB181AE30438C8DF43E6BFF00398ACE1E5A7132E288DBD265AC7F
          E6B5337338E623C13235F508E92FF9CFA060B1F5E2B196376BC492D90624977D
          2087977DACBB6030CDA0E9A1933DD7263EB0F55BA868B7220705D581592418F7
          16FF00DF362587975B5A5CDB5CDB0B8925C4C9F8BDDF4911CA4ACCA446BD06AB
          25CF445421195474E29111D9E8F799DCD907C660A4FC9B74DE4103C743F7ACFC
          7CCC8734EE21ED9804013FE7354EDCBA585A2D3B4BE768771A73EE43DA37445A
          473008B06BF06FD59F431C4BDA4C88D3508D45CDB6D966D63434925A78FF003B
          FF0022B1AE79D81EC80C9D5C08238FDEFA2B3B332B1FD39DFEA3C3811B353FE7
          FD147EEE25B58BFAA3EF463BD1AFF05EA2CC8A03A3D5F53B4804C7CFFF00228D
          59AAE616FABBC11AB663F2FB9727D23A86565F52AB09CE2CA6C0F97BA1CF1B58
          E7B487387EF046EA2EC5C678F573EBC9DBAEC6C970FEC57BEB6FF9EC4D972FEA
          10E2F555E838990730784CF87D375BF0BD21C8C2A4863482E240868DC64E9AB9
          18E8B8E6755BA5BF6621C01046FF007707F73FF325BD85D5B23260598960F1BA
          BD6BF8FE97D3FF00A0EB14797979445EFDECB261E6633241D3B50740A1B9468C
          CC5C920536B5F3F9B30EFF0031DB5CB32AEB4E92DC8A676B88DF5F918D6B7FFE
          4D44314CDD0F9771B16639602ACEFB11ABFFD3AB4E0D7683B5EDD7915EAEF9CC
          2D315E3D6756EBE2ED7FE8AE74DE5DC92CF02DFEFF00A4ADB7A85ADFA2FF0056
          3F7F5FFA5F4D6DB99930CE55EAFA3B75B2B73FD49B1CC76C66E886BDC3DF6E30
          3B7E962B3F9ADCFF00D2D767D0A7D2B9F956DF8EC6DEE1F6818DBDB2CC5731AE
          0D806C7FAAC7BB63AAF6D96DBFB94FF85ABF456D98D5F50B1B6D34380AEBB1B4
          D86B04FF0038006D17D953DBE9BBD96FD9D9732CF52DA6BA597FABE93169DD16
          7B2C072BD57064B2A2F6BCCEDE3D566CF4FD3AFF009C6D7FCD33F9DFB2FE8E8E
          404435318FAE47533FFB8678C6426349487B508FA463FF00BB53D8FE4648FD03
          03EDB0E3575B4878DD4BACDA37D789ECFF0047FA6FD3FABFA2FE65DAE0C0E612
          D76AEAFDADAEA7B5DB5CE73FF464D9F6CABD8ED9BAAF4B67F35EA5F5A05872C3
          FD461733D373456D143F7097398D2CD96B1BE97A943ADFFADD591FF71EC4CE6E
          532CADFEF75953366E148DC056D1B994DBEBBBD9B2CF6DBFF6A1FF0068F4BD6F
          D328B8AB5E389FF0B3B28C60800C243FC1C0D91D4A8ADAEADD739B73DFB9FA39
          A1ED3CB37D36D7B2B77B2DAFD0BABFF0957F4751BB3326185D95758D0047AB4D
          560807759B8BDDF49FFE0ECFA74D5FA2FD27D359D6E1E55AE05A63734B9A455F
          9A3F7D9EAECA7DBF46AFFB67D4DF57A95ECE98F6C9BF22C2C6C001AC21A5C46F
          F66F73AAFA3FC8FA7FA3FF004BE9CDFD1A81333607433FC18C433D9D8449D8C6
          126EBBA961804DD90E764492C732A6318D27E8C7A6EFF05FF096FBFF00EB6A4F
          EA2D2CD3716C92D3E95761127D8C75B7596D96555B77B3E9FADFCD7EB1FA3544
          F47C821FEF31512D79356AD708DD539ACB5CEF559BB659E9B7F4693BA15C5AD2
          CBDCC6B809F519B0974B03BF45EA7D06FABFE13FE16CFE6EAB13AF96D3F592D3
          FAD9177B793F763FE2C1B5FB5308022CB5ED792ED2BA2A1B41FE6FD17B5CF731
          F4FEF5DEA7A9FF005BFD244755A86ED8090E9DA5B5555960D3E83985FBAC76DD
          8FDDFA3FD25BFA3FE6EBAF333706EC1656FB1DB85A486873763A203F76DDEFFD
          EFCFF4DEA9FABE647C3452470E390E2065207FAD341121A5447F831772DEA78C
          76EF7B9A5A0493456F73881F4B77ABB9AEFE5FE93F49FE91131BEB775AA2C71A
          320E452E713E964FE94007F3777B6F6FB7FE1573DEAC79FC54770F8278C101D3
          8BFBE78FECE256BDEBFBA387FE8BD81EAB537DB7B0B00D25A67FE8E8F57A9CAC
          7BC45160B0C6ADE0FF0098EF72E24665A0921DEA7F5B5FFA5F4D5A7674C6F1E9
          F1047F7FD244E307C1878271F17FFFD4C01F3F9A7113AC7CE571092DC6A97BBB
          7E7C7E7FF0FE4A88FA3F9BC0E3F8AE192496BE8D7C7A34C7ADF45DFCFCC73FE0
          7FE0FF007D557F96DEDFC7C570692016F57B3BBE93A76F3F9DFF007E856BA747
          A964FDA3E87FDA49DDCFF858FF0006B824913B7F1641FCA9EE7363D6AFF9DFE6
          DBFD2277FF00D6BFE07FD1AAEDE4FD1EDC2E392486C97B1677FA3FD94E171A92
          2A7B23F3F9288FF595C7A4929EC4CF9FCA254F59FCEFED44AE2D2494FF00FFD9
          003842494D042100000000005500000001010000000F00410064006F00620065
          002000500068006F0074006F00730068006F00700000001300410064006F0062
          0065002000500068006F0074006F00730068006F007000200037002E00300000
          0001003842494D04060000000000070008000000010100FFE11248687474703A
          2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B65
          7420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A7265
          537A4E54637A6B633964273F3E0D0A3C3F61646F62652D7861702D66696C7465
          7273206573633D224352223F3E0D0A3C783A7861706D65746120786D6C6E733A
          783D2261646F62653A6E733A6D6574612F2220783A786170746B3D22584D5020
          746F6F6C6B697420322E382E322D33332C206672616D65776F726B20312E3522
          3E0D0A093C7264663A52444620786D6C6E733A7264663D22687474703A2F2F77
          77772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D
          6E73232220786D6C6E733A69583D22687474703A2F2F6E732E61646F62652E63
          6F6D2F69582F312E302F223E0D0A09093C7264663A4465736372697074696F6E
          2061626F75743D222220786D6C6E733A7861704D4D3D22687474703A2F2F6E73
          2E61646F62652E636F6D2F7861702F312E302F6D6D2F223E0D0A0909093C7861
          704D4D3A446F63756D656E7449443E61646F62653A646F6369643A70686F746F
          73686F703A33393034646566312D373038642D313165392D623133612D636431
          3665336135626632383C2F7861704D4D3A446F63756D656E7449443E0D0A0909
          3C2F7264663A4465736372697074696F6E3E0D0A093C2F7264663A5244463E0D
          0A3C2F783A7861706D6574613E0D0A2020202020202020202020202020202020
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
          20202020202020202020202020203C3F787061636B657420656E643D2777273F
          3EFFDB0043000201010201010202020202020202030503030303030604040305
          070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D
          0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080028002B03012200021101031101FFC4
          001F0000010501010101010100000000000000000102030405060708090A0BFF
          C400B5100002010303020403050504040000017D010203000411051221314106
          13516107227114328191A1082342B1C11552D1F02433627282090A161718191A
          25262728292A3435363738393A434445464748494A535455565758595A636465
          666768696A737475767778797A838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F010003010101
          0101010101010000000000000102030405060708090A0BFFC400B51100020102
          0404030407050404000102770001020311040521310612415107617113223281
          08144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A
          35363738393A434445464748494A535455565758595A636465666768696A7374
          75767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9
          AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5
          E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCAE7F
          E277C54F0FFC1BF08CDAE7897528B4CD36174883146925B895CED8E186240D24
          D348C42A451AB3BB10AAAC4815D013815F0CEB5FB6968BE08FDA47E1AFC4AF89
          9E17BD87C13F14AEDB43F877E2C96FE27D27C3104D1CDE44B340C43C575A8A28
          97ED01404B79E289CC7E4CE64EBC2616559BB2BDBA2DDEEECBCF47DF6D9BB261
          F415B7ED17E3CF16DBA5E7873E0BF8B0E9B22F9B1CFE21D4EC7459AEA33CAB47
          6C649678D88C1D972903A9E1954835A9E0FF00DA8F4FBFF1558F87BC59E1DF12
          7C39F10EA92793A7DAEBF143F66D524C13E55B5EDBCB2DACB3155761079A2E0A
          46EFE505562317F6EDFDACB51FD89FE056A5F118784078B3C39E1D84CFAC243A
          AAD9DE5B2B4B1451F951B46CB2E5A43BB2E85428C6ECF1E55FB5C7ED8F75F05B
          C0F6B0FED11F05ED6D3E10F8B2E60D2753D7749D7D75EB7D0E595C792F7D0341
          6F2C481C022783CDD8EA9B4EF299E9A38595649C69AB49B4ACF56D5AE926F57A
          AD2CAF7D2D719F5FD15E63FB3978835CD2DF5EF0278A2F64D575AF04CB12DAEA
          B348AD71AEE95386365793050009BF773DBCA4002496CE59555124545F4EAF3E
          A5370972FF005E423CF7F6B7F105D784FF00653F89DAA58B325EE9BE13D56EED
          D97EF2C91D9CACA47BE40AF24FDBDFF679F07FC774F835F0B3C45A4C33F843C4
          9ADEA1A3CB6B180A6DE15F0E6AA6368B208478DA38DD1B1F2B46A7B57D15E35F
          0A5A78F3C1BAB687A82F9963AD594D6172BFDE8E546461FF007CB1AF91350F19
          FC52F8ADE38F825AA5B780753F126A5F06754BE4F1F7D9B52B0B369754FEC8BB
          D3DA2B68AE2E11C8737315DA34A2357B6B981D59B7E077606FF141D9C799DEF6
          D5C74FC57DED0CF9BFF693F8DDE25D07FE098BFB467ECDBF14AE2E1BE247C1DF
          0FDA9D33589F0BFF0009B786FEDB0C763AB20DCCCCEAA8915C005C2CB805CBBB
          2AFD0BF197C532FF00C15D7C13F10BE03D9F87755F00E8FE1DF1159E93F10A6F
          115C5AA6B1690413C37A8B656904B2EE176B1208AEA5648BCB679104C53CBAE4
          FF00E0E15FD97F47F8D1FB036A5F13A6FB7787FC63F0CEC4DD5A48AEBE64D6B7
          4F0C575A74FE5B94747CA1E19807886095670DE8FF00B58FECF5E2ED13F685F0
          9FED23FB3FE9BA4F8ABC6F670AF877C61E1E4D460B4B7F1C686CC0E04EEC225B
          CB6708D1C8EC32A36B1654589BD98D6A33A54EAC2D19B94DA7B28CD287CAD2B5
          D5F48B76D908F5CD6A3FEC1FDBE7C24B6BFBB4F117C3DD645FAA9FF5BFD9FA8E
          93F64CFF00B9FDA5798FFAE8D5EC55E27F01756FF85DDF1D3C47F1024B0BCD3E
          1D0F4B83C1D6D6F70F1C8B6F7A9235C6ACB1CB1B3472849CDB5A3B231513E9B3
          A8FBB93ED95F3988D1C60F74B5FCFF0004EDF21B0AF30F8A5F0775EB7F1E2F8E
          FE1FEA16963E2AFB3C769A9697A8CCE9A4789EDA32C638EE0A2BBDBCC9BDC477
          51233286DAF1CE81114A2B3A751C1DD7FC388E57C7BF1CEC7C61E11BCF0CFC4C
          F81FE3CBAB3D4144579A5CBE1D83C4FA5EA5B486C86B66991A2DEA197ED09139
          C2931A1042F09F0DFF00652B39FC477575F0BFE0C785FF00669B3D4ED5AC353F
          13D9E91A5D9F89EFED19D1DEDED2DECC490C21CA237DA2E64678CC7816A59849
          19457A12A8E8D252A7A7374BBB7DD7B3F9DCAE87D3DE04F03693F0CBC19A5F87
          B41B0834BD1745B64B4B2B5841D9044830AA3392781C92492724924935AD4515
          E63936EEC93FFFD9}
      end
      object QRLabel9: TQRLabel
        Left = 78
        Top = 46
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          206.375000000000000000
          121.708333333333300000
          179.916666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Phone No. :  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 84
        Width = 340
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          222.250000000000000000
          899.583333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 67
        Width = 340
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          177.270833333333300000
          899.583333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 97
        Top = 68
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          256.645833333333300000
          179.916666666666700000
          296.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REGISTRATION CARD'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
  end
end
