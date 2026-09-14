object Form_DepositDayClose: TForm_DepositDayClose
  Left = 0
  Top = 0
  Caption = 'Deposit Day Close'
  ClientHeight = 443
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 0
    Top = 71
    Width = 912
    Height = 26
    Align = alTop
    Progress = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 912
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
    object BB_Close: TBitBtn
      Left = 834
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
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 97
    Width = 912
    Height = 346
    Align = alClient
    DataSource = Ds_List
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsPriceList
    GridStyle.OddColor = cl3DLight
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'PatientID'
        Title.Caption = 'Hospital No'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PatientName'
        Title.Caption = 'Patient Name'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DepositBalance'
        Title.Caption = 'Deposit Balance'
        Width = 110
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 912
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 249
      Top = 8
      Width = 77
      Height = 27
      Caption = 'Day Close'
      OnClick = SpeedButton1Click
    end
    object Label2: TLabel
      Left = 8
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Date :'
    end
    object SpeedButton2: TSpeedButton
      Left = 108
      Top = 12
      Width = 23
      Height = 22
      Caption = 'AD'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 183
      Top = 8
      Width = 66
      Height = 27
      Caption = 'Load'
      OnClick = SpeedButton3Click
    end
    object Dex_From: TDateEditX
      Left = 43
      Top = 13
      Width = 65
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C656674022B03546F70020D0B4461
        746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A44617465
        41442E44617902010B4461746556532E596561720314080C4461746556532E4D
        6F6E746802070A4461746556532E446179020F0000}
    end
    object Cb_All: TCheckBox
      Left = 134
      Top = 15
      Width = 35
      Height = 17
      Caption = 'All'
      Checked = True
      Enabled = False
      State = cbChecked
      TabOrder = 1
    end
  end
    object Query_List: TOraQuery
    SQL.Strings = (
            
              'select PatientID,(Select PatientName from PatientMain Where Pati' +
              'entID=D.PatientID)PatientName'
            ',Sum(DrAmount-CrAmount)DepositBalance from Deposit D'
            'Where 1=1'
            'Group by PatientId'
            'Having Sum(DrAmount-CrAmount)>0')
    Left = 360
    Top = 176
  end
object Ds_List: TDataSource
    DataSet = Query_List
    Left = 392
    Top = 176
  end
end
