object Form_BroadcastStatus: TForm_BroadcastStatus
  Left = 0
  Top = 0
  Caption = 'Broadcast Status'
  ClientHeight = 552
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 994
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
      Left = 916
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
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 994
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label26: TLabel
      Left = 4
      Top = 6
      Width = 115
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Patient Search'
      Color = 2922059
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Edit_SearchCollectedList: TEdit
      Left = 121
      Top = 6
      Width = 128
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit_SearchCollectedListChange
    end
    object GB_Searchbydate: TGroupBox
      AlignWithMargins = True
      Left = 259
      Top = 3
      Width = 132
      Height = 87
      TabOrder = 1
      object Label11: TLabel
        Left = 8
        Top = 28
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SPB_From: TSpeedButton
        Left = 106
        Top = 24
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object Label13: TLabel
        Left = 23
        Top = 52
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SPB_To: TSpeedButton
        Left = 106
        Top = 48
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object CB_Date: TCheckBox
        Left = 16
        Top = 4
        Width = 97
        Height = 17
        Caption = 'Search by date'
        TabOrder = 0
      end
      object Dex_CLFrom: TDateEditX
        Left = 41
        Top = 25
        Width = 65
        Height = 21
        TabOrder = 1
        OnEnter = Dex_CLFromEnter
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002190B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E44617902050000}
      end
      object Dex_CLTo: TDateEditX
        Left = 41
        Top = 49
        Width = 65
        Height = 21
        TabOrder = 2
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002310B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E44617902050000}
      end
    end
    object GroupBox6: TGroupBox
      AlignWithMargins = True
      Left = 397
      Top = 3
      Width = 106
      Height = 87
      TabOrder = 2
      object Label31: TLabel
        Left = 11
        Top = 4
        Width = 87
        Height = 13
        Caption = 'Include more than'
      end
      object Label32: TLabel
        Left = 75
        Top = 20
        Width = 24
        Height = 13
        Caption = 'Days'
      end
      object BB_Refresh: TSpeedButton
        Left = 7
        Top = 51
        Width = 91
        Height = 29
        Caption = '&Refresh'
        OnClick = BB_RefreshClick
      end
      object Se_CLDays: TSpinEdit
        Left = 13
        Top = 17
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 130
    Width = 994
    Height = 422
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 994
      Height = 422
      Align = alClient
      Color = clWhite
      DataSource = DS_List
      DrawingStyle = gdsGradient
      FixedColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'PatientId'
          Title.Caption = 'Lab No'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PatientName'
          Title.Caption = 'Patient Name'
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SampleNo'
          Title.Caption = 'Sample No'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestDateTime'
          Title.Caption = 'Collected Date Time'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FindingPostDateTime'
          Title.Caption = 'Result Date Time'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Report'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SMS'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Title.Caption = 'E-mail'
          Width = 66
          Visible = True
        end>
    end
  end
  object DS_List: TDataSource
    Left = 616
    Top = 232
  end
  object Table_List: TTable
    Left = 560
    Top = 152
  end
end
