object Form_QueueList: TForm_QueueList
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Queue List'
  ClientHeight = 462
  ClientWidth = 1304
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Head: TLabel
    Left = 0
    Top = 0
    Width = 1304
    Height = 37
    Align = alTop
    Alignment = taCenter
    AutoSize = False
    Color = -1
    Font.Charset = ANSI_CHARSET
    Font.Color = clAqua
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
    OnMouseMove = lbl_HeadMouseMove
    ExplicitTop = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 1304
    Height = 33
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
    ExplicitWidth = 1288
    object LabelDep: TLabel
      Left = 9
      Top = 9
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Department :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 250
      Top = 5
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object BB_Close: TBitBtn
      Left = 1226
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Close'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6569BA717FE06B6EBEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFFFFFFB9BADD7A83E6
        6A80FF273CD9EBECF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7677
        C58788D9FFFFFFFFFFFFA0A1D34D54DE2536EB0B20D9E3E3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDCDCEE0E16C0B1B2DEFFFFFFFFFFFFE9E9F41519BF
        060EDB0412D87B7DC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C34BA1822
        C1FFFFFFFFFFFFFFFFFFFFFFFF5A5BBA0002CF0309D8080FC1DADAECFFFFFFFF
        FFFFFFFFFFFFFFFF7A7CC50C21DF9C9DD2FFFFFFFFFFFFFFFFFFFFFFFFFDFDFE
        1E1FB00001D00106D52326B1FFFFFFFFFFFFFFFFFFA9AAD30C28E52733BEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9F41112B50000D10103CE5A5CB9FF
        FFFFB1B2D90B1FD40C26DFD2D1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2E3F21516B50000D20101C44D4EB8070EC30514E16F70BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FA2D2DB00001CC00
        00CC0103D13639B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2E2F23236B70207CF0103D20001C97777C2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7174CA0F1ED10717E40510DE0E
        13BA0507C10608CC6162BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9BD2
        4F58D23D57F71D3CFA0D26F01921BFEBEBF6C4C4E5191BBE2325D44A4ABBF9F9
        FCFFFFFFFFFFFFFFFFFF8487D0A2ABF78D9DFF6A7FFF3A55F9313BC1EFEFF7FF
        FFFFFFFFFFFDFDFE5B5CBF4041D1494AC4A2A2D5FFFFFFFFFFFF8788CCB6BBF5
        A3ACFB6973E17678C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8E65555
        C16061CC5A5ABDADAED9DFDFEF9192D29A9DE29596D2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF77C7DC96162C58383CB}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BB_CloseClick
      ExplicitLeft = 1210
    end
    object DBLCB_Department: TDBLookupComboBox
      Left = 78
      Top = 6
      Width = 171
      Height = 21
      DropDownAlign = daRight
      DropDownWidth = 250
      KeyField = 'DEPID'
      ListField = 'DEPCODE;DEPNAME'
      ListFieldIndex = 1
      ListSource = DS_Department
      TabOrder = 1
      OnClick = DBLCB_DepartmentClick
    end
    object RB_ReadyToIn: TRadioButton
      Left = 280
      Top = 7
      Width = 74
      Height = 17
      Caption = 'On W&aiting'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = RB_ReadyToInClick
    end
    object RB_InsideOPD: TRadioButton
      Left = 363
      Top = 7
      Width = 75
      Height = 17
      Caption = 'I&nside OPD'
      TabOrder = 3
      OnClick = RB_InsideOPDClick
    end
    object RB_CheckupComplete: TRadioButton
      Left = 447
      Top = 7
      Width = 117
      Height = 17
      Caption = '&Checkup Completed'
      TabOrder = 4
      OnClick = RB_CheckupCompleteClick
    end
    object CB_ShowInOutTime: TCheckBox
      Left = 576
      Top = 7
      Width = 141
      Height = 17
      Caption = '&Show In && Out Time (F1)'
      TabOrder = 5
      OnClick = CB_ShowInOutTimeClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 70
    Width = 1304
    Height = 392
    Align = alClient
    DataSource = DS_List
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -20
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseMove = SMDBGrid1MouseMove
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsMaple
    GridStyle.OddColor = 11065579
    GridStyle.EvenColor = 4761800
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoRowSizing, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 44
    ScrollBars = ssHorizontal
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PatientID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = '   Hospital No.'
        Width = 188
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'QueueTime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = '        Time'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INTIME'
        Title.Alignment = taCenter
        Title.Caption = 'In Time'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'OUTTIME'
        Title.Alignment = taCenter
        Title.Caption = 'Out Time'
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RoomNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = '   Room No'
        Width = 131
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DocName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = '                            Doctor'#39' s Name'
        Width = 456
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DepName'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = '        Department'
        Visible = False
      end>
  end
    object Table_List: TOraTable
    Left = 312
    Top = 168
  end
object DS_List: TDataSource
    DataSet = Table_List
    Left = 536
    Top = 152
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 728
    Top = 136
  end
    object Query_Department: TOraQuery
    SQL.Strings = (
            'SELECT *'
            'From Department WHERE IsClinicalDep='#39'Y'#39
            'and 1=1'
            'Order By DepName ')
    Left = 181
    Top = 160
  end
object DS_Department: TDataSource
    DataSet = Query_Department
    Left = 248
    Top = 184
  end
end
