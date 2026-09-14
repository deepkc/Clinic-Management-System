object Form_FindingSetup: TForm_FindingSetup
  Left = 0
  Top = 0
  Caption = 'Finding Setup'
  ClientHeight = 538
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 33
    Align = alTop
    TabOrder = 0
    object Btn_close: TBitBtn
      Left = 596
      Top = 1
      Width = 67
      Height = 31
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Close'
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
      OnClick = Btn_closeClick
    end
    object BB_New: TBitBtn
      Left = 468
      Top = 1
      Width = 65
      Height = 31
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&New'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFCFCFC
        F6F6F6F0F0F0E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E9E9E9EFEFEFF4F4F4FFFFFFFBFBFBF2F2F2BBBBBBB1B1B1AEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEB1B1B1B7B7B7EFEFEFFFFFFFFAFAFA
        F1A964F1AB67F1AC69F2AE6CF2AE6CF2AE6DF2AE6DF2AE6DF2AE6CF1AC69F1AB
        67F1A964B1B1B1E9E9E9FFFFFFF9F9F9F1A861ECECECECECECECECECECECECEC
        ECECECECECECECECECECECECECECECECECF1A861AEAEAEE7E7E7FFFFFFF9F9F9
        F0A65EEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDF0A65EAEAEAEE7E7E7FFFFFFF9F9F9F0A359EBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBF0A359AEAEAEE7E7E7FFFFFFF9F9F9
        F0A154EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEA
        EAF0A154AEAEAEE7E7E7FFFFFFF9F9F9F0A154EBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAF0A154AEAEAEE7E7E7FFFFFFF9F9F9
        F0A359EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECEC
        ECF0A359AEAEAEE7E7E7FFFFFFF9F9F9F0A760F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0EDEDEDF0A760AEAEAEE7E7E7FFFFFFF9F9F9
        F0A760F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EDED
        EDF0A760AFAFAFE8E8E8FFFFFFF9F9F9F0AB68F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0F0F0F0AB68B5B5B5EEEEEEFFFFFFF9F9F9
        F1B172F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1B172F1B172F1B1
        72F1B172EBEBEBF4F4F4FFFFFFFAFAFAF2B77DF6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F3B77EF7E0CEF2B77DEBEBEBF4F4F4FAFAFAFFFFFFFBFBFB
        F4BD89F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4BE89F4BE89EBEB
        EBF4F4F4FBFBFBFEFEFEFFFFFFFCFCFCF5C596F5C596F5C596F5C596F5C596F5
        C596F5C596F5C596F5C596EEEEEEF4F4F4FAFAFAFEFEFEFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BB_NewClick
    end
    object btn_save: TBitBtn
      Left = 533
      Top = 1
      Width = 63
      Height = 31
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Save'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000001000000010000000000000000000000000000975233
        9A55359954349652339652339652339652339652339652339652339A55359B55
        359853349451320000009451369D5534BD5A22BB5A24B75926C7B0A4C8B5ACC8
        B5ACC8B5ACC8B5ACC8B5ACC9B5ABBF6532B759269B55358040408F5030A05633
        C46127C46127C46127D3CDCBD4D4D5D4D4D5D4D4D5CB9373C7784AD3CFCDC66F
        3BC461279D56348F50308F5030A15734CB672CCB672CCB672CDED8D5DFDFE0DF
        DFE0DFDFE0D18A61CB672CDED8D5CD7541CB672C9E56348F50308F5030A15834
        D26E30D26E30D26E30EAE5E1ECECECECECECECECECDA9367D26E30EAE5E1D57D
        46D26E309E56358F50308F5030A25835D67233D67233D67233F3E7E0F7F7F7F7
        F7F7F7F7F7F2E4DBF0DCD0F7F5F5DA824AD672339E57358F50308F5030A35935
        DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB76
        36DB76369F57358F50308F5030A35935DF7A39F2ECE8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDCBBFDF7A399F57358F50308F5030A45A36
        E4803EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DB
        D3E4803E9F58368F50308F5030A45B37E98746FCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCE5D9D1E98746A058368F50308F5030A55C38
        EE9150F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3DED3
        CCEE9150A059378F5030945231A55D3AF49C5DE5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5DAD4CFF49C5DA059378F5030945231A65F3B
        F8A668D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7
        C3F8A668A05A389955339F5535A45D3BF9AC6FD0CECDD3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7C4F9AC6F9E58378E55390000009C5534
        9B55359B55359B55359B55359B55359B55359B55359B55359B55359B55359B55
        359B55359C553400000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btn_saveClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 261
    Width = 664
    Height = 271
    Align = alTop
    DataSource = Ds_Listing
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'FINDINGTITLE'
        Title.Caption = 'Title'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEFAULT_FINDING'
        Title.Caption = 'Finding'
        Width = 426
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 664
    Height = 228
    Align = alTop
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 388
      Top = 42
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 14
      Top = 38
      Width = 20
      Height = 13
      Caption = 'Title'
    end
    object Label2: TLabel
      Left = 14
      Top = 75
      Width = 34
      Height = 13
      Caption = 'Finding'
    end
    object Label7: TLabel
      Left = 127
      Top = 41
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label8: TLabel
      Left = 127
      Top = 67
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label3: TLabel
      Left = 64
      Top = 38
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label4: TLabel
      Left = 64
      Top = 75
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object CheckBox_Active: TCheckBox
      Left = 415
      Top = 45
      Width = 50
      Height = 13
      Caption = 'Active'
      TabOrder = 0
    end
    object RichEdit_Title: TRichEdit
      Left = 76
      Top = 35
      Width = 306
      Height = 39
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 1
      OnEnter = RichEdit_TitleEnter
      OnSelectionChange = RichEdit_TitleSelectionChange
    end
    object RichEdit_Finding: TRichEdit
      Left = 76
      Top = 75
      Width = 306
      Height = 149
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnEnter = RichEdit_FindingEnter
      OnSelectionChange = RichEdit_FindingSelectionChange
    end
    object Memo1: TMemo
      Left = 510
      Top = 31
      Width = 73
      Height = 30
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
      Visible = False
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 656
      Height = 21
      AutoSize = True
      ButtonHeight = 19
      ButtonWidth = 34
      Caption = 'ToolBar1'
      EdgeInner = esNone
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      List = True
      ParentFont = False
      ShowCaptions = True
      TabOrder = 4
      Wrapable = False
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'B'
        ImageIndex = 0
        Style = tbsCheck
        OnClick = ToolButton1Click
      end
      object ToolButton6: TToolButton
        Left = 22
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 30
        Top = 0
        AutoSize = True
        Caption = 'I'
        ImageIndex = 1
        Style = tbsCheck
        OnClick = ToolButton2Click
      end
      object ToolButton4: TToolButton
        Left = 50
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 58
        Top = 0
        AutoSize = True
        Caption = 'U'
        ImageIndex = 4
        Style = tbsCheck
        OnClick = ToolButton3Click
      end
      object ToolButton5: TToolButton
        Left = 81
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 89
        Top = 0
        AutoSize = True
        Caption = 'ST'
        ImageIndex = 3
        Style = tbsCheck
        OnClick = ToolButton7Click
      end
      object ToolButton12: TToolButton
        Left = 117
        Top = 0
        Width = 3
        Caption = 'ToolButton12'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton9: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object Tbtn_Font: TToolButton
        Left = 128
        Top = 0
        AutoSize = True
        Caption = 'Font'
        ImageIndex = 4
        Style = tbsCheck
        OnClick = Tbtn_FontClick
      end
      object ToolButton16: TToolButton
        Left = 166
        Top = 0
        Width = 8
        Caption = 'ToolButton16'
        ImageIndex = 8
        Style = tbsSeparator
      end
      object ComboBox2: TComboBox
        Left = 174
        Top = 0
        Width = 158
        Height = 21
        TabOrder = 2
        OnChange = ComboBox2Change
      end
      object ComboBox1: TComboBox
        Left = 332
        Top = 0
        Width = 39
        Height = 19
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ButtonColor1: TButtonColor
        Left = 371
        Top = 0
        Height = 19
        Caption = 'Color'
        TabOrder = 1
        OnClick = ButtonColor1Click
      end
    end
  end
  object Query_Blank: TOraQuery
    Left = 344
    Top = 176
  end
  object Query_Listing: TOraQuery
    SQL.Strings = (
      'select * from clinical_findingsetup')
    Left = 256
    Top = 184
  end
  object Ds_Listing: TDataSource
    DataSet = Query_Listing
    Left = 304
    Top = 200
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 272
  end
  object ColorDialog1: TColorDialog
    Left = 376
    Top = 65528
  end
end
