object Form_ClinicalTest: TForm_ClinicalTest
  Left = 0
  Top = 0
  Caption = 'Clinical Test'
  ClientHeight = 538
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 38
    Align = alTop
    TabOrder = 0
    object Btn_close: TBitBtn
      Left = 925
      Top = 1
      Width = 84
      Height = 36
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
      Left = 763
      Top = 1
      Width = 82
      Height = 36
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
      Left = 845
      Top = 1
      Width = 80
      Height = 36
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
  object Panel2: TPanel
    Left = 0
    Top = 38
    Width = 553
    Height = 500
    Align = alLeft
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 315
      Top = 5
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
      Left = 38
      Top = 34
      Width = 60
      Height = 13
      Caption = 'Report Type'
    end
    object Label2: TLabel
      Left = 38
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Test Name'
    end
    object Label3: TLabel
      Left = 38
      Top = 65
      Width = 56
      Height = 13
      Caption = 'Report Title'
    end
    object Label4: TLabel
      Left = 38
      Top = 98
      Width = 65
      Height = 13
      Caption = 'Display Order'
    end
    object Label5: TLabel
      Left = 38
      Top = 124
      Width = 57
      Height = 13
      Caption = 'Finding Title'
    end
    object Label6: TLabel
      Left = 38
      Top = 156
      Width = 34
      Height = 13
      Caption = 'Finding'
    end
    object SpeedButton2: TSpeedButton
      Left = 315
      Top = 29
      Width = 22
      Height = 22
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 315
      Top = 120
      Width = 22
      Height = 22
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object Label7: TLabel
      Left = 127
      Top = 9
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label8: TLabel
      Left = 127
      Top = 34
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label9: TLabel
      Left = 127
      Top = 124
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label10: TLabel
      Left = 127
      Top = 99
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label12: TLabel
      Left = 127
      Top = 65
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label11: TLabel
      Left = 127
      Top = 156
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object CheckBox_Active: TCheckBox
      Left = 344
      Top = 9
      Width = 50
      Height = 13
      Caption = 'Active'
      TabOrder = 0
    end
    object DBLC_TestName: TDBLookupComboBox
      Left = 142
      Top = 5
      Width = 170
      Height = 21
      KeyField = 'TESTNAMEID'
      ListField = 'TESTNAME'
      ListSource = DS_TestName
      TabOrder = 1
      OnClick = DBLC_TestNameClick
    end
    object DBLC_ReportType: TDBLookupComboBox
      Left = 142
      Top = 29
      Width = 170
      Height = 21
      KeyField = 'REPORTTYPEID'
      ListField = 'REPORTTYPE'
      ListSource = Ds_ReportType
      TabOrder = 2
      OnClick = DBLC_ReportTypeClick
    end
    object RichEdit_Title: TRichEdit
      Left = 142
      Top = 53
      Width = 401
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 3
    end
    object SpinEdit1: TSpinEdit
      Left = 142
      Top = 96
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 0
      OnChange = SpinEdit1Change
    end
    object DBLC_FindingTitle: TDBLookupComboBox
      Left = 143
      Top = 121
      Width = 170
      Height = 21
      KeyField = 'FINDINGSETUPID'
      ListField = 'FINDINGTITLE'
      ListSource = Ds_FindingTitle
      TabOrder = 5
      OnClick = DBLC_FindingTitleClick
    end
    object RichEdit_DefaultFinding: TRichEdit
      Left = 142
      Top = 188
      Width = 401
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 6
    end
    object RichEdit_Finding: TRichEdit
      Left = 142
      Top = 145
      Width = 401
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 7
    end
    object Memo1: TMemo
      Left = 460
      Top = 6
      Width = 72
      Height = 30
      Lines.Strings = (
        'Memo1')
      TabOrder = 8
      Visible = False
    end
    object CheckBox_Default: TCheckBox
      Left = 399
      Top = 9
      Width = 50
      Height = 13
      Caption = 'Default'
      TabOrder = 9
    end
    object DBGrid1: TDBGrid
      Left = 4
      Top = 230
      Width = 539
      Height = 271
      DataSource = DS_Listing
      TabOrder = 10
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
          FieldName = 'DisplayOrder'
          Title.Caption = 'Order No'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'reporttitleMain'
          Title.Caption = 'Report Title'
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'finding_title'
          Title.Caption = 'Finding Title'
          Width = 161
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 553
    Top = 38
    Width = 457
    Height = 500
    Align = alClient
    TabOrder = 2
    object MyRichEdit: TRichEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 449
      Height = 492
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Query_TestName: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * From TestName'
      'Where DepId in'
      '(Select DepId From Department Where Extended_Report='#39'Y'#39')'
      'Order by TestName')
    Left = 448
    Top = 136
  end
  object DS_TestName: TDataSource
    DataSet = Query_TestName
    Left = 416
    Top = 136
  end
  object Ds_ReportType: TDataSource
    DataSet = Query_Report
    Left = 432
    Top = 360
  end
  object Ds_FindingTitle: TDataSource
    DataSet = Query_FindingTitle
    Left = 392
    Top = 360
  end
  object DS_Listing: TDataSource
    DataSet = Query_Listing
    Left = 296
    Top = 304
  end
  object Query_Report: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select * from clinical_reporttype'
      'where testnameid=:id')
    Left = 160
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object Query_FindingTitle: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select * from clinical_findingsetup')
    Left = 184
    Top = 360
  end
  object Query_Listing: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      
        'select Trim(Ct.ReportTitle)ReportTitleMain,Ct.* from clinical_te' +
        'st Ct')
    Left = 384
    Top = 312
  end
  object Query_blank: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select clinicaltestid,DisplayOrder,reporttitle,finding_title '
      'from clinical_test')
    Left = 264
    Top = 304
  end
end
