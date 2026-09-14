object FormReportMedicalExamination: TFormReportMedicalExamination
  Left = 180
  Top = 95
  Width = 1036
  Height = 765
  VertScrollBar.Position = 128
  Caption = 'Medical Examination Report'
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
    Top = -40
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
    Page.Values = (
      127
      2970
      127
      2100
      76.2
      76.2
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    object QRBand1: TQRBand
      Left = 29
      Top = 225
      Width = 736
      Height = 665
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1759.47916666667
        1947.33333333333)
      BandType = rbDetail
      object QRShape14: TQRShape
        Left = 116
        Top = 260
        Width = 1
        Height = 316
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          836.083333333333
          306.916666666667
          687.916666666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape28: TQRShape
        Left = 513
        Top = 303
        Width = 2
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.7916666666667
          1357.3125
          801.6875
          5.29166666666667)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape45: TQRShape
        Left = 417
        Top = 260
        Width = 1
        Height = 317
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          838.729166666667
          1103.3125
          687.916666666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 315
        Top = 295
        Width = 1
        Height = 258
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          682.625
          833.4375
          780.520833333333
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 230
        Top = 295
        Width = 1
        Height = 258
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          682.625
          608.541666666667
          780.520833333333
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRDBText35: TQRDBText
        Left = 629
        Top = 531
        Width = 99
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1664.22916666667
          1404.9375
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'AIDSExam'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel70: TQRLabel
        Left = 542
        Top = 531
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1434.04166666667
          1404.9375
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AIDS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel64: TQRLabel
        Left = 417
        Top = 531
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1103.3125
          1404.9375
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AIDS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText31: TQRDBText
        Left = 629
        Top = 448
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1664.22916666667
          1185.33333333333
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'AIDS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel59: TQRLabel
        Left = 465
        Top = 411
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1230.3125
          1087.4375
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AIDS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel67: TQRLabel
        Left = 470
        Top = 411
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1243.54166666667
          1087.4375
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AIDS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText26: TQRDBText
        Left = 262
        Top = 531
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          1404.9375
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'RH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText25: TQRDBText
        Left = 262
        Top = 507
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          1341.4375
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'ABO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText24: TQRDBText
        Left = 262
        Top = 482
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          1275.29166666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'Hematos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText24Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText23: TQRDBText
        Left = 262
        Top = 459
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          693.208333333333
          1214.4375
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'TCholestrol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText23Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText22: TQRDBText
        Left = 262
        Top = 430
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          1137.70833333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'SerumGPT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText22Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText21: TQRDBText
        Left = 262
        Top = 404
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          693.208333333333
          1068.91666666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'SerumGOT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText21Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Left = 262
        Top = 380
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          1005.41666666667
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'UrineBlood'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText19: TQRDBText
        Left = 262
        Top = 355
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          939.270833333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'UrineProtein'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText18: TQRDBText
        Left = 262
        Top = 330
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          693.208333333333
          873.125
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'UrineGlucose'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText17: TQRDBText
        Left = 619
        Top = 259
        Width = 89
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          685.270833333333
          235.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'AudiometryLFT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText16: TQRDBText
        Left = 619
        Top = 234
        Width = 91
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          619.125
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'AudiometryRt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 619
        Top = 206
        Width = 91
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          545.041666666667
          240.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'VisualacuityLFT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 120
        Top = 28
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          74.0833333333333
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FULLNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 14
        Top = 28
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          74.0833333333333
          164.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FULL NAME'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 14
        Top = 53
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          140.229166666667
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NATIONALITY'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 14
        Top = 79
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          209.020833333333
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PASSPORT NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 14
        Top = 126
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          333.375
          132.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ADDRESS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 400
        Top = 28
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          74.0833333333333
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE OF EXAM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 400
        Top = 53
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          140.229166666667
          211.666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE OF BIRTH'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 400
        Top = 79
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          209.020833333333
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPANY NAME'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 401
        Top = 102
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1060.97916666667
          269.875
          55.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SEX'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 146
        Width = 735
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          386.291666666667
          1944.6875)
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRLabel1: TQRLabel
        Left = 296
        Top = 151
        Width = 143
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          783.166666666667
          399.520833333333
          378.354166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'PHYSICAL REPORT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel2: TQRLabel
        Left = 16
        Top = 177
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          468.3125
          103.1875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 14
        Top = 206
        Width = 42
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          37.0416666666667
          545.041666666667
          111.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'WEIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 14
        Top = 234
        Width = 85
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          37.0416666666667
          619.125
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COLOUR VISION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 14
        Top = 259
        Width = 95
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          37.0416666666667
          685.270833333333
          251.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BLOOD PRESSURE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 172
        Width = 736
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          455.083333333333
          1947.33333333333)
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 384
        Top = 26
        Width = 1
        Height = 118
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          312.208333333333
          1016
          68.7916666666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 8
        Top = 195
        Width = 368
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          21.1666666666667
          515.9375
          973.666666666667)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 392
        Top = 179
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          222.25
          1037.16666666667
          473.604166666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 245
        Top = 179
        Width = 1
        Height = 94
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          248.708333333333
          648.229166666667
          473.604166666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRLabel16: TQRLabel
        Left = 400
        Top = 194
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          513.291666666667
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VISUAL ACUITY'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape8: TQRShape
        Left = 596
        Top = 187
        Width = 1
        Height = 63
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          166.6875
          1576.91666666667
          494.770833333333
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRLabel17: TQRLabel
        Left = 512
        Top = 283
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1354.66666666667
          748.770833333333
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Refraction '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel18: TQRLabel
        Left = 400
        Top = 247
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          653.520833333333
          187.854166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AUDIOMETRY'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape9: TQRShape
        Left = 16
        Top = 221
        Width = 352
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          42.3333333333333
          584.729166666667
          931.333333333333)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRLabel19: TQRLabel
        Left = 546
        Top = 177
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          1444.625
          468.3125
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 546
        Top = 206
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          545.041666666667
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LEFT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 546
        Top = 234
        Width = 31
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          619.125
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RIGHT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel22: TQRLabel
        Left = 546
        Top = 259
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          685.270833333333
          66.1458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LEFT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape11: TQRShape
        Left = 0
        Top = 277
        Width = 385
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          732.895833333333
          1018.64583333333)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRLabel31: TQRLabel
        Left = 281
        Top = 283
        Width = 173
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          743.479166666667
          748.770833333333
          457.729166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'LABORATORY REPORT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape12: TQRShape
        Left = -1
        Top = 303
        Width = 737
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          -2.64583333333333
          801.6875
          1949.97916666667)
        Brush.Color = clBlack
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 15
        Top = 326
        Width = 655
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          39.6875
          862.541666666667
          1733.02083333333)
        Pen.Color = clWhite
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRLabel32: TQRLabel
        Left = 14
        Top = 307
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          812.270833333333
          124.354166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SECTION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel33: TQRLabel
        Left = 158
        Top = 307
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          418.041666666667
          812.270833333333
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ITEM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel34: TQRLabel
        Left = 244
        Top = 307
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          645.583333333333
          812.270833333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RESULT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Left = 438
        Top = 307
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1158.875
          812.270833333333
          134.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SECTION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel36: TQRLabel
        Left = 546
        Top = 307
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1444.625
          812.270833333333
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ITEM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 14
        Top = 354
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          936.625
          169.333333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'URINALYSIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Left = 14
        Top = 416
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          1100.66666666667
          232.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LIVER FUNCTION'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel40: TQRLabel
        Left = 14
        Top = 459
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          1214.4375
          238.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T-CHOLESTEROL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel41: TQRLabel
        Left = 14
        Top = 484
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          37.0416666666667
          1280.58333333333
          113.770833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ANEMIA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel42: TQRLabel
        Left = 14
        Top = 518
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          1370.54166666667
          179.916666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BLOOD TYPE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel43: TQRLabel
        Left = 14
        Top = 572
        Width = 72
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          37.0416666666667
          1513.41666666667
          190.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CHEST X-RAY'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape17: TQRShape
        Left = 516
        Top = 416
        Width = 1
        Height = 162
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          428.625
          1365.25
          1100.66666666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRLabel44: TQRLabel
        Left = 128
        Top = 330
        Width = 82
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          873.125
          216.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'URINE GLUCOSE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel45: TQRLabel
        Left = 128
        Top = 355
        Width = 75
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          939.270833333333
          198.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'URINE PROTEIN'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel46: TQRLabel
        Left = 128
        Top = 380
        Width = 69
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1005.41666666667
          182.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'URINE BLOOD'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape18: TQRShape
        Left = 7
        Top = 395
        Width = 386
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          18.5208333333333
          1045.10416666667
          1021.29166666667)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRLabel48: TQRLabel
        Left = 128
        Top = 482
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1275.29166666667
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEMATOCRIT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel49: TQRLabel
        Left = 128
        Top = 404
        Width = 61
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.3333333333333
          338.666666666667
          1068.91666666667
          161.395833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SERUM GOT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel51: TQRLabel
        Left = 128
        Top = 430
        Width = 59
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1137.70833333333
          156.104166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SERUM GPT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel52: TQRLabel
        Left = 128
        Top = 459
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          1214.4375
          224.895833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'T-CHOLESTEROL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel53: TQRLabel
        Left = 128
        Top = 507
        Width = 24
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1341.4375
          63.5)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ABO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel54: TQRLabel
        Left = 130
        Top = 531
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          343.958333333333
          1404.9375
          39.6875)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RH'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel55: TQRLabel
        Left = 128
        Top = 559
        Width = 41
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1479.02083333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FILM NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel56: TQRLabel
        Left = 128
        Top = 585
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          338.666666666667
          1547.8125
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FINDING'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape23: TQRShape
        Left = 116
        Top = 346
        Width = 602
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.5833333333333
          306.916666666667
          915.458333333333
          1592.79166666667)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape24: TQRShape
        Left = 117
        Top = 372
        Width = 300
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          309.5625
          984.25
          793.75)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape25: TQRShape
        Left = 116
        Top = 527
        Width = 302
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          306.916666666667
          1394.35416666667
          799.041666666667)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 552
        Width = 735
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          1460.5
          1944.6875)
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRShape27: TQRShape
        Left = 117
        Top = 578
        Width = 301
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          309.5625
          1529.29166666667
          796.395833333333)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRLabel57: TQRLabel
        Left = 532
        Top = 332
        Width = 123
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1407.58333333333
          878.416666666667
          325.4375)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EPIDEMIC DISEASE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 437
        Top = 355
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1156.22916666667
          939.270833333333
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEPATITIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel60: TQRLabel
        Left = 437
        Top = 380
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1156.22916666667
          1005.41666666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SYPHILIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape29: TQRShape
        Left = 514
        Top = 349
        Width = 1
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.3125
          1359.95833333333
          923.395833333333
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRLabel61: TQRLabel
        Left = 522
        Top = 404
        Width = 143
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1381.125
          1068.91666666667
          378.354166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EXAM FOR POSITIVES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 437
        Top = 459
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1156.22916666667
          1214.4375
          148.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEPATITIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel63: TQRLabel
        Left = 437
        Top = 507
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1156.22916666667
          1341.4375
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SYPHILIS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel65: TQRLabel
        Left = 546
        Top = 355
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          939.270833333333
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HBsAg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel66: TQRLabel
        Left = 546
        Top = 380
        Width = 29
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1005.41666666667
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VDRL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel68: TQRLabel
        Left = 546
        Top = 482
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1275.29166666667
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HBeAb'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel69: TQRLabel
        Left = 546
        Top = 507
        Width = 28
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1341.4375
          74.0833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TPHA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel71: TQRLabel
        Left = 546
        Top = 459
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1214.4375
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HBeAg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 8
        Top = 254
        Width = 336
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          21.1666666666667
          672.041666666667
          889)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape32: TQRShape
        Left = 396
        Top = 182
        Width = 117
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          1047.75
          481.541666666667
          309.5625)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape35: TQRShape
        Left = 612
        Top = 308
        Width = 2
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.1458333333333
          1619.25
          814.916666666667
          5.29166666666667)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape36: TQRShape
        Left = 614
        Top = 362
        Width = 1
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.3125
          1624.54166666667
          957.791666666667
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRShape37: TQRShape
        Left = 598
        Top = 448
        Width = 1
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          209.020833333333
          1582.20833333333
          1185.33333333333
          2.64583333333333)
        Pen.Color = clWhite
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 120
        Top = 53
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          140.229166666667
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'NATIONALITY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = 79
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          209.020833333333
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PASSPORT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 120
        Top = 126
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          333.375
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'ADDRESS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 508
        Top = 28
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          74.0833333333333
          587.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'DATEOFEXAM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 508
        Top = 53
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          140.229166666667
          587.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'DATEOFBIRTH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 508
        Top = 79
        Width = 222
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          209.020833333333
          587.375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'COMPANYNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 510
        Top = 102
        Width = 219
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1349.375
          269.875
          579.4375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'SEX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 263
        Top = 177
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          695.854166666667
          468.3125
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'HEIGHT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 263
        Top = 206
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          695.854166666667
          545.041666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'WEIGHT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 286
        Top = 234
        Width = 90
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          756.708333333333
          619.125
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'COLORVISION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 247
        Top = 259
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          653.520833333333
          685.270833333333
          219.604166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'BLOODPRESSURE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 582
        Top = 280
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1539.875
          740.833333333333
          100.541666666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'REFRACTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText27: TQRDBText
        Left = 192
        Top = 559
        Width = 38
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          508
          1479.02083333333
          100.541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FILMNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Left = 192
        Top = 585
        Width = 240
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.4375
          508
          1547.8125
          635)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FINDING'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel74: TQRLabel
        Left = 644
        Top = 307
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1703.91666666667
          812.270833333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RESULT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText29: TQRDBText
        Left = 619
        Top = 355
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          939.270833333333
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'HepatisisHBsAg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText30: TQRDBText
        Left = 619
        Top = 380
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          1005.41666666667
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'VDRL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText32: TQRDBText
        Left = 619
        Top = 459
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          1214.4375
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'HepatisisHBeAg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText33: TQRDBText
        Left = 619
        Top = 482
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          1275.29166666667
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'HepatisisHBeAb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText34: TQRDBText
        Left = 619
        Top = 507
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1637.77083333333
          1341.4375
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'TPHA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel37: TQRLabel
        Left = 358
        Top = 177
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          947.208333333333
          468.3125
          39.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cm'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel75: TQRLabel
        Left = 362
        Top = 206
        Width = 12
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          957.791666666667
          545.041666666667
          31.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'kg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel76: TQRLabel
        Left = 336
        Top = 259
        Width = 32
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          889
          685.270833333333
          84.6666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'mm/hg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
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
          2.64583333333333
          0
          124.354166666667
          1944.6875)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape39: TQRShape
        Left = 0
        Top = 73
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          193.145833333333
          1944.6875)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRShape40: TQRShape
        Left = 0
        Top = 100
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          0
          264.583333333333
          1944.6875)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRLabel80: TQRLabel
        Left = 109
        Top = 4
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          10.5833333333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel81: TQRLabel
        Left = 109
        Top = 28
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          74.0833333333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel82: TQRLabel
        Left = 109
        Top = 53
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          140.229166666667
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel83: TQRLabel
        Left = 109
        Top = 79
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          209.020833333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel84: TQRLabel
        Left = 499
        Top = 28
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1320.27083333333
          74.0833333333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel85: TQRLabel
        Left = 499
        Top = 53
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1320.27083333333
          140.229166666667
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel86: TQRLabel
        Left = 499
        Top = 79
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1320.27083333333
          209.020833333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel87: TQRLabel
        Left = 499
        Top = 102
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1320.27083333333
          269.875
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel89: TQRLabel
        Left = 671
        Top = 281
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1775.35416666667
          743.479166666667
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel90: TQRLabel
        Left = 503
        Top = 256
        Width = 23
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1330.85416666667
          677.333333333333
          60.8541666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PTA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel99: TQRLabel
        Left = 295
        Top = 482
        Width = 11
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          780.520833333333
          1275.29166666667
          29.1041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
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
          2.64583333333333
          0
          60.8541666666667
          1944.6875)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRDBText37: TQRDBText
        Left = 120
        Top = 4
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          10.5833333333333
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'PATIENTID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText38: TQRDBText
        Left = 508
        Top = 4
        Width = 221
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1344.08333333333
          10.5833333333333
          584.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'EPSREGNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel100: TQRLabel
        Left = 14
        Top = 4
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          10.5833333333333
          193.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel101: TQRLabel
        Left = 109
        Top = 102
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          269.875
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel102: TQRLabel
        Left = 400
        Top = 4
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          10.5833333333333
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EPS REG NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel103: TQRLabel
        Left = 499
        Top = 4
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1320.27083333333
          10.5833333333333
          10.5833333333333)
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
        FontSize = 9
      end
      object QRLabel25: TQRLabel
        Left = 660
        Top = 179
        Width = 8
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1746.25
          473.604166666667
          21.1666666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ' )'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 619
        Top = 177
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1637.77083333333
          468.3125
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'VisualacuityRt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel23: TQRLabel
        Left = 309
        Top = 307
        Width = 93
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          817.5625
          812.270833333333
          246.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NORMAL RANGE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Left = 437
        Top = 572
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1156.22916666667
          1513.41666666667
          142.875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CHEST PA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel26: TQRLabel
        Left = 546
        Top = 559
        Width = 41
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1479.02083333333
          108.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FILM NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel27: TQRLabel
        Left = 546
        Top = 585
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1444.625
          1547.8125
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FINDING'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText39: TQRDBText
        Left = 606
        Top = 559
        Width = 52
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          1603.375
          1479.02083333333
          137.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = True
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FILMNOPA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText40: TQRDBText
        Left = 606
        Top = 585
        Width = 127
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.4375
          1603.375
          1547.8125
          336.020833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'FINDINGPA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape46: TQRShape
        Left = 516
        Top = 578
        Width = 220
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.64583333333333
          1365.25
          1529.29166666667
          582.083333333333)
        Pen.Color = clWhite
        Shape = qrsHorLine
      end
      object QRDBText41: TQRDBText
        Left = 284
        Top = 404
        Width = 148
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          751.416666666667
          1068.91666666667
          391.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'NRSGOT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText42: TQRDBText
        Left = 284
        Top = 430
        Width = 148
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          751.416666666667
          1137.70833333333
          391.583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'NRSGPT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText43: TQRDBText
        Left = 286
        Top = 459
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          756.708333333333
          1214.4375
          291.041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'NRTCholesterol'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape10: TQRShape
        Left = -1
        Top = 278
        Width = 737
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          -2.64583333333333
          735.541666666667
          1949.97916666667)
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRLabel30: TQRLabel
        Left = 14
        Top = 102
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          37.0416666666667
          269.875
          222.25)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CITIZENSHIP NO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel47: TQRLabel
        Left = 109
        Top = 126
        Width = 4
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          288.395833333333
          333.375
          10.5833333333333)
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
        FontSize = 9
      end
      object QRDBText44: TQRDBText
        Left = 120
        Top = 102
        Width = 268
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          317.5
          269.875
          709.083333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'CITIZENSHIPNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel50: TQRLabel
        Left = 319
        Top = 482
        Width = 99
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.6875
          844.020833333333
          1275.29166666667
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M (40-54), F (37-47)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText45: TQRDBText
        Left = 490
        Top = 194
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1296.45833333333
          513.291666666667
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'Visualaid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        OnPrint = QRDBText45Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel77: TQRLabel
        Left = 485
        Top = 194
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1283.22916666667
          513.291666666667
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '('
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel78: TQRLabel
        Left = 538
        Top = 194
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1423.45833333333
          513.291666666667
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ')'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
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
      AfterPrint = TitleBand1AfterPrint
      AlignToBottom = True
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        468.3125
        1947.33333333333)
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
          44.9791666666667
          2047.875
          21.1666666666667
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Print Date :'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 248
        Top = 121
        Width = 240
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          656.166666666667
          320.145833333333
          635)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'MEDICAL CHECK UP REPORT '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel73: TQRLabel
        Left = 613
        Top = 153
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1621.89583333333
          404.8125
          87.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
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
          44.9791666666667
          1735.66666666667
          404.8125
          71.4375)
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
          320.145833333333
          21.1666666666667
          26.4583333333333
          306.916666666667)
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
          50.2708333333333
          767.291666666667
          15.875
          410.104166666667)
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
          60.8541666666667
          436.5625
          66.1458333333333
          1071.5625)
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
          60.8541666666667
          653.520833333333
          124.354166666667
          637.645833333333)
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
          52.9166666666667
          685.270833333333
          238.125
          576.791666666667)
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
        FontSize = 10
      end
      object QRShape42: TQRShape
        Left = 607
        Top = 20
        Width = 123
        Height = 123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          325.4375
          1606.02083333333
          52.9166666666667
          325.4375)
        Pen.Width = 3
        Shape = qrsRectangle
      end
      object QRLabel97: TQRLabel
        Left = 647
        Top = 75
        Width = 50
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1711.85416666667
          198.4375
          132.291666666667)
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
        FontSize = 9
      end
      object QRLabel98: TQRLabel
        Left = 656
        Top = 93
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1735.66666666667
          246.0625
          89.9583333333333)
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
        FontSize = 9
      end
      object QRLabel28: TQRLabel
        Left = 209
        Top = 145
        Width = 317
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          552.979166666667
          383.645833333333
          838.729166666667)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'FOR THE CANDIDATES OF KOREA (EPS)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
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
          52.9166666666667
          706.4375
          185.208333333333
          531.8125)
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
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 29
      Top = 890
      Width = 736
      Height = 183
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        484.1875
        1947.33333333333)
      BandType = rbSummary
      object QRLabel72: TQRLabel
        Left = 251
        Top = 2
        Width = 245
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          664.104166666667
          5.29166666666667
          648.229166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SUMMARY & RECOMMENDATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape30: TQRShape
        Left = 0
        Top = 23
        Width = 736
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.29166666666667
          0
          60.8541666666667
          1947.33333333333)
        Pen.Width = 3
        Shape = qrsHorLine
      end
      object QRDBText36: TQRDBText
        Left = 7
        Top = 29
        Width = 722
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.9583333333333
          18.5208333333333
          76.7291666666667
          1910.29166666667)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = QueryMain
        DataField = 'Summary'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel88: TQRLabel
        Left = 512
        Top = 239
        Width = 141
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.5625
          1354.66666666667
          632.354166666667
          373.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----------------------------'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabelFooter1: TQRLabel
        Left = 564
        Top = 257
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1492.25
          679.979166666667
          113.770833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Footer1'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabelFooter2: TQRLabel
        Left = 564
        Top = 275
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1492.25
          727.604166666667
          113.770833333333)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Footer2'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel29: TQRLabel
        Left = 24
        Top = 141
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          373.0625
          346.604166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HOSPITAL SIGNATURE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape31: TQRShape
        Left = 533
        Top = 148
        Width = 190
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Frame.Width = 2
        Size.Values = (
          2.64583333333333
          1410.22916666667
          391.583333333333
          502.708333333333)
        Pen.Style = psDot
        Pen.Width = 2
        Shape = qrsHorLine
      end
    end
  end
    object QueryMain: TOraQuery
    SQL.Strings = (
            'Select * From MedicalExamination Where PatientID =:PatientID')
    Left = 64
    Top = 24
    ParamData = <
            item
              DataType = ftInteger
              Name = 'PatientID'
              ParamType = ptUnknown
            end>
  end
  object QueryFooter: TOraQuery
    SQL.Strings = (
            'Select * From PathologyFooterSetUP Where DepID=104')
    Left = 64
    Top = 56
  end
end
