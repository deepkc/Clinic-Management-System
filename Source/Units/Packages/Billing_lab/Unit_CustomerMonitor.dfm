object Form_CustomerMonitor: TForm_CustomerMonitor
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Midas Dr. Homs V 3.0'
  ClientHeight = 555
  ClientWidth = 1014
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Lbl_GrandTotal: TLabel
    Left = 161
    Top = 403
    Width = 611
    Height = 142
    Alignment = taCenter
    AutoSize = False
    Caption = '00.00'
    Color = -1
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -64
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Label15: TLabel
    Left = 776
    Top = 403
    Width = 114
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Grand Total :'
    Color = 16742263
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Lbl_TotalAmt: TLabel
    Left = 890
    Top = 403
    Width = 120
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '00.00'
    Color = -1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Label13: TLabel
    Left = 776
    Top = 427
    Width = 114
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tender Amt :'
    Color = 16742263
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object lbl_TenderAmt: TLabel
    Left = 890
    Top = 427
    Width = 120
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '00.00'
    Color = -1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Label17: TLabel
    Left = 776
    Top = 459
    Width = 114
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Return Amt :'
    Color = 16742263
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Lbl_ReturnAmt: TLabel
    Left = 890
    Top = 459
    Width = 120
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = '00.00'
    Color = -1
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Shape1: TShape
    Left = 8
    Top = 403
    Width = 145
    Height = 142
  end
  object Image_Main: TImage
    Left = 10
    Top = 405
    Width = 141
    Height = 138
    Stretch = True
  end
  object Label19: TLabel
    Left = 7
    Top = 387
    Width = 72
    Height = 13
    Caption = 'Total Items :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Lbl_TotalItems: TLabel
    Left = 95
    Top = 387
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = '00.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 1014
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 0
    ExplicitWidth = 861
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 46
      Height = 13
      Caption = 'Lab No. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_patientid: TLabel
      Left = 56
      Top = 20
      Width = 126
      Height = 13
      Caption = '##############'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_PatientName: TLabel
      Left = 352
      Top = 12
      Width = 224
      Height = 23
      Caption = '##############'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 98
    Width = 1014
    Height = 280
    Align = alTop
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DepCode'
        Title.Caption = 'Dep Code'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Doccode'
        Title.Caption = 'Doc Code'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestNameCode'
        Title.Caption = 'Test Code'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestName'
        Title.Caption = 'Test Name'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestPrice'
        Title.Caption = 'Unit Price'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalPrice'
        Title.Caption = 'Total Price'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Disper'
        Title.Caption = 'Dis %'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Discount'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NetTotal'
        Title.Caption = 'Net Total'
        Width = 65
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = -14
    ExplicitWidth = 861
    object Label3: TLabel
      Left = 355
      Top = 15
      Width = 289
      Height = 29
      Caption = 'SIDDHI POLY PATH LAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 12
      Width = 289
      Height = 29
      Caption = 'SIDDHI POLY PATH LAB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
