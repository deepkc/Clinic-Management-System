object Frame_ClinicalPathFinding: TFrame_ClinicalPathFinding
  Left = 0
  Top = 0
  Width = 1010
  Height = 595
  TabOrder = 0
  object Memo_Remarks: TMemo
    Left = 79
    Top = 132
    Width = 330
    Height = 133
    Color = 13565951
    TabOrder = 1
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 111
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label14: TLabel
      Left = 8
      Top = 28
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Name'
    end
    object lbl_Name: TLabel
      Left = 79
      Top = 28
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 721
      Top = 30
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Doctor :'
    end
    object SpeedButton2: TSpeedButton
      Left = 829
      Top = 47
      Width = 87
      Height = 22
      Caption = 'Change Date'
    end
    object Label1: TLabel
      Left = 8
      Top = 44
      Width = 65
      Height = 13
      Caption = 'Hospital No. :'
    end
    object Lbl_Hosno: TLabel
      Left = 79
      Top = 44
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 60
      Width = 65
      Height = 13
      Caption = 'Age/Gender :'
    end
    object Lbl_AgeGender: TLabel
      Left = 79
      Top = 60
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 694
      Top = 50
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Report Date :'
    end
    object Label6: TLabel
      Left = 643
      Top = 8
      Width = 118
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sample Rec. Date/Time :'
    end
    object Label2: TLabel
      Left = 8
      Top = 76
      Width = 64
      Height = 13
      Caption = 'Sample No.  :'
    end
    object lbl_SampleNo: TLabel
      Left = 79
      Top = 76
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 69
      Top = 28
      Width = 4
      Height = 13
      Alignment = taRightJustify
      Caption = ':'
    end
    object Label7: TLabel
      Left = 69
      Top = 42
      Width = 4
      Height = 13
      Alignment = taRightJustify
      Caption = ':'
    end
    object SpeedButton17: TSpeedButton
      Left = 5
      Top = 92
      Width = 70
      Height = 16
      Caption = 'Remarks      :'
      Flat = True
      OnMouseEnter = SpeedButton17MouseEnter
      OnMouseLeave = SpeedButton17MouseLeave
    end
    object Label9: TLabel
      Left = 706
      Top = 94
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPT Code :'
    end
    object Label8: TLabel
      Left = 756
      Top = 72
      Width = 4
      Height = 13
      Caption = ':'
    end
    object SpeedButtonD: TSpeedButton
      Left = 421
      Top = 95
      Width = 42
      Height = 16
      Caption = 'Line'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
        555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
        05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
        FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
        FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
        FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
        05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
        555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
        9055575757575757775505050505055505557575757575557555}
      NumGlyphs = 2
      OnClick = SpeedButtonDClick
    end
    object DBLCB_RefDoc: TDBLookupComboBox
      Left = 763
      Top = 25
      Width = 152
      Height = 21
      KeyField = 'Doccode'
      ListField = 'DocName'
      ListSource = DS_RefDoccode
      TabOrder = 0
      OnKeyDown = DBLCB_RefDocKeyDown
    end
    object Dex_RptDate: TDateEditX
      Left = 763
      Top = 47
      Width = 65
      Height = 21
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C65667403FB0203546F70022F0B44
        61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
        6541442E44617902020B4461746556532E596561720314080C4461746556532E
        4D6F6E746802080A4461746556532E44617902100000}
    end
    object Dex_SampleDate: TDateEditX
      Left = 763
      Top = 3
      Width = 65
      Height = 21
      TabOrder = 2
      ControlData = {
        545046300A5444617465456469745200044C65667403FB0203546F7002030B44
        61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
        6541442E44617902020B4461746556532E596561720314080C4461746556532E
        4D6F6E746802080A4461746556532E44617902100000}
    end
    object Me_Time: TMaskEdit
      Left = 830
      Top = 3
      Width = 85
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
    object Clb_ReportFooter: TCheckListBox
      Left = 406
      Top = 5
      Width = 147
      Height = 88
      ItemHeight = 13
      TabOrder = 4
    end
    object Edit_RefNo: TEdit
      Left = 763
      Top = 69
      Width = 152
      Height = 21
      TabOrder = 5
      OnExit = Edit_FindingTitleExit
    end
    object Edit_CptCode: TEdit
      Left = 763
      Top = 91
      Width = 152
      Height = 21
      TabOrder = 6
      OnExit = Edit_FindingTitleExit
    end
    object ComboBox_ReferenceNo: TComboBox
      Left = 577
      Top = 69
      Width = 176
      Height = 21
      Color = clActiveBorder
      TabOrder = 7
      Items.Strings = (
        'CYTOLOGY NO.'
        'FN-NO.'
        'PAP SMEAR NO.'
        'PBS NO.'
        'H.S NO.'
        'BMA NO.')
    end
    object BB_Save: TBitBtn
      Left = 0
      Top = 0
      Width = 100
      Height = 29
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
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
      TabOrder = 8
      OnClick = BB_SaveClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 111
    Width = 696
    Height = 484
    Align = alLeft
    TabOrder = 2
    object Label12: TLabel
      Left = 17
      Top = 58
      Width = 56
      Height = 13
      Caption = 'Report Title'
    end
    object Label13: TLabel
      Left = 425
      Top = 89
      Width = 65
      Height = 13
      Caption = 'Display Order'
      Visible = False
    end
    object Label15: TLabel
      Left = 17
      Top = 96
      Width = 57
      Height = 13
      Caption = 'Finding Title'
    end
    object Label16: TLabel
      Left = 17
      Top = 117
      Width = 34
      Height = 13
      Caption = 'Finding'
    end
    object Label20: TLabel
      Left = 106
      Top = 96
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label21: TLabel
      Left = 514
      Top = 89
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
      Visible = False
    end
    object Label22: TLabel
      Left = 106
      Top = 58
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label10: TLabel
      Left = 19
      Top = 33
      Width = 70
      Height = 13
      Caption = 'Report Format'
    end
    object Label11: TLabel
      Left = 106
      Top = 33
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object SpeedButton1: TSpeedButton
      Left = 353
      Top = 27
      Width = 67
      Height = 22
      Caption = 'OK'
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 286
      Top = 27
      Width = 67
      Height = 22
      Caption = 'Change'
      NumGlyphs = 2
      OnClick = SpeedButton3Click
    end
    object RichEdit_Title: TRichEdit
      Left = 121
      Top = 50
      Width = 552
      Height = 40
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        '')
      ParentFont = False
      TabOrder = 0
      OnEnter = RichEdit_TitleEnter
      OnSelectionChange = RichEdit_TitleSelectionChange
    end
    object SpinEdit1: TSpinEdit
      Left = 530
      Top = 86
      Width = 121
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
      Visible = False
    end
    object RichEdit_DefaultFinding: TRichEdit
      Left = 6
      Top = 132
      Width = 667
      Height = 347
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      WantTabs = True
      OnEnter = RichEdit_DefaultFindingEnter
      OnSelectionChange = RichEdit_DefaultFindingSelectionChange
    end
    object Memo1: TMemo
      Left = 579
      Top = 30
      Width = 72
      Height = 30
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 12
      Top = 481
      Width = 661
      Height = 55
      DataSource = DS_Listing
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyDown = DBGrid1KeyDown
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
          FieldName = 'FindingTitle'
          Width = 203
          Visible = True
        end>
    end
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 688
      Height = 21
      AutoSize = True
      ButtonHeight = 19
      ButtonWidth = 45
      Caption = 'ToolBar1'
      DrawingStyle = dsGradient
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
      TabOrder = 5
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
      object ToolButton10: TToolButton
        Left = 174
        Top = 0
        AutoSize = True
        Caption = 'Left'
        ImageIndex = 9
        OnClick = ToolButton10Click
      end
      object ToolButton8: TToolButton
        Left = 209
        Top = 0
        AutoSize = True
        Caption = 'Center'
        ImageIndex = 8
        OnClick = ToolButton8Click
      end
      object ToolButton11: TToolButton
        Left = 258
        Top = 0
        AutoSize = True
        Caption = 'Right'
        ImageIndex = 10
        OnClick = ToolButton11Click
      end
      object ComboBox2: TComboBox
        Left = 299
        Top = 0
        Width = 120
        Height = 21
        TabOrder = 2
        OnChange = ComboBox2Change
      end
      object ComboBox1: TComboBox
        Left = 419
        Top = 0
        Width = 39
        Height = 21
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ButtonColor1: TButtonColor
        Left = 458
        Top = 0
        Height = 19
        Caption = 'Color'
        TabOrder = 1
        OnClick = ButtonColor1Click
      end
    end
    object Edit_FindingTitle: TEdit
      Left = 121
      Top = 93
      Width = 552
      Height = 21
      TabOrder = 6
      OnExit = Edit_FindingTitleExit
    end
    object DBLC_ReportType: TDBLookupComboBox
      Left = 121
      Top = 27
      Width = 163
      Height = 21
      DropDownWidth = 250
      KeyField = 'REPORTTYPEID'
      ListField = 'REPORTTYPE'
      ListSource = Ds_ReportType
      TabOrder = 7
      OnClick = DBLC_ReportTypeClick
    end
  end
  object Panel4: TPanel
    Left = 675
    Top = 147
    Width = 686
    Height = 508
    TabOrder = 3
    object MyRichEdit: TRichEdit
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 709
      Height = 500
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object memo2: TMemo
      Left = 248
      Top = 90
      Width = 573
      Height = 89
      Lines.Strings = (
        'memo2')
      TabOrder = 1
      Visible = False
    end
  end
  object DS_RefDoccode: TDataSource
    DataSet = Query_RefDoccode
    Left = 696
    Top = 272
  end
  object Query_RefDoccode: TOraQuery
    SQL.Strings = (
      
        'select doccode,TRIM(REPLACE(REPLACE(REPLACE((F_name||'#39' '#39'||L_name' +
        '),'#39'PROF'#39'),'#39'.'#39'),'#39'(MRS)'#39'))/*||'#39' - '#39'||Nvl(referralcount,0)*/DOCNAME' +
        ' from doctor'
      'order by Nvl(referralcount,0) desc')
    Left = 744
    Top = 272
  end
  object Ds_ReportType: TDataSource
    DataSet = Query_ReportType
    Left = 680
    Top = 184
  end
  object Query_ReportType: TOraQuery
    SQL.Strings = (
      'select * from clinical_reporttype'
      'where testnameid=:id')
    Left = 648
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
  end
  object Query_Listing: TOraQuery
    SQL.Strings = (
      
        'select ts.*,td.* from clinical_testSetup ts,clinical_testSetupDe' +
        'tail td'
      'where TS.CLINICAL_TESTSETUPID=TD.CLINICAL_TESTSETUPID'
      'and 1=1')
    Left = 592
    Top = 280
  end
  object DS_Listing: TDataSource
    DataSet = Query_List
    Left = 744
    Top = 424
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 304
    Top = 96
  end
  object ColorDialog1: TColorDialog
    Left = 344
    Top = 96
  end
  object Table_ClinicalFinding: TTable
    Left = 264
    Top = 48
  end
  object Query_List: TQuery
    SQL.Strings = (
      'Select * from ClinicalFindings')
    Left = 608
    Top = 360
  end
  object orqry_blank: TOraQuery
    Left = 166
    Top = 22
  end
end
