object Frame_SampleCollection_manipal: TFrame_SampleCollection_manipal
  Left = 0
  Top = 0
  Width = 1292
  Height = 513
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1292
    Height = 513
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'To be Collected'
      OnShow = TabSheet1Show
      DesignSize = (
        1284
        485)
      object lbl_TestCaption: TLabel
        Left = 570
        Top = 62
        Width = 711
        Height = 84
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Color = 10485759
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 185
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExplicitWidth = 425
      end
      object Shape5: TShape
        Left = 5
        Top = 53
        Width = 1276
        Height = 1
        Anchors = [akLeft, akTop, akRight]
        Pen.Style = psDot
        ExplicitWidth = 990
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 46
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1284
          46)
        object Label33: TLabel
          Left = 3
          Top = 15
          Width = 74
          Height = 16
          Caption = 'Queue No. :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbl_QueueNo: TLabel
          Left = 83
          Top = 15
          Width = 32
          Height = 16
          Caption = '0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 185
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label35: TLabel
          Left = 140
          Top = 15
          Width = 95
          Height = 16
          Caption = 'Patient Name :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object lbl_PatientName: TLabel
          Left = 242
          Top = 15
          Width = 135
          Height = 16
          Caption = '###############'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 185
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object SpeedButton8: TSpeedButton
          Left = 846
          Top = 6
          Width = 92
          Height = 34
          Anchors = [akTop, akRight]
          Caption = '<- Previous'
          Visible = False
          OnClick = SpeedButton8Click
          ExplicitLeft = 500
        end
        object SpeedButton9: TSpeedButton
          Left = 938
          Top = 6
          Width = 92
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Next ->'
          Visible = False
          OnClick = SpeedButton9Click
          ExplicitLeft = 592
        end
        object Bevel1: TBevel
          Left = 1042
          Top = 5
          Width = 1
          Height = 37
          Anchors = [akTop, akRight]
          Shape = bsLeftLine
          ExplicitLeft = 696
        end
        object SpeedButton10: TSpeedButton
          Left = 753
          Top = 6
          Width = 93
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Queue list [OFF]'
          Visible = False
          OnClick = SpeedButton10Click
          ExplicitLeft = 407
        end
        object BB_CollectSample: TBitBtn
          AlignWithMargins = True
          Left = 1052
          Top = 6
          Width = 116
          Height = 34
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Margins.Bottom = 6
          Align = alRight
          Caption = 'Test Request'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BB_CollectSampleClick
        end
        object BB_CollectedList: TBitBtn
          AlignWithMargins = True
          Left = 1168
          Top = 6
          Width = 116
          Height = 34
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Margins.Bottom = 6
          Align = alRight
          Caption = 'Collected List'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = BB_CollectedListClick
        end
        object Button3: TButton
          Left = 542
          Top = 6
          Width = 115
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Sample Receive [F1]'
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 657
          Top = 6
          Width = 96
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Sample Status'
          TabOrder = 3
          OnClick = Button4Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 292
        Top = 60
        Width = 147
        Height = 84
        TabOrder = 1
        object Label20: TLabel
          Left = 8
          Top = 28
          Width = 31
          Height = 13
          Caption = 'From :'
        end
        object SpeedButton2: TSpeedButton
          Left = 106
          Top = 24
          Width = 22
          Height = 22
          Caption = 'AD'
        end
        object Label21: TLabel
          Left = 23
          Top = 52
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = 'To:'
        end
        object SpeedButton3: TSpeedButton
          Left = 106
          Top = 48
          Width = 22
          Height = 22
          Caption = 'AD'
        end
        object CB_Searchbydate: TCheckBox
          Left = 16
          Top = 4
          Width = 97
          Height = 17
          Caption = 'Search by date'
          TabOrder = 0
        end
        object Dex_From: TDateEditX
          Left = 41
          Top = 25
          Width = 65
          Height = 21
          TabOrder = 1
          OnEnter = Dex_FromEnter
          ControlData = {
            545046300A5444617465456469745200044C656674022903546F7002190B4461
            746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
            41442E44617902160B4461746556532E596561720314080C4461746556532E4D
            6F6E746802060A4461746556532E44617902050000}
        end
        object Dex_To: TDateEditX
          Left = 41
          Top = 49
          Width = 65
          Height = 21
          TabOrder = 2
          OnEnter = Dex_FromEnter
          ControlData = {
            545046300A5444617465456469745200044C656674022903546F7002310B4461
            746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
            41442E44617902160B4461746556532E596561720314080C4461746556532E4D
            6F6E746802060A4461746556532E44617902050000}
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 62
        Width = 285
        Height = 84
        TabOrder = 2
        object Label19: TLabel
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
        object Label22: TLabel
          Left = 8
          Top = 57
          Width = 29
          Height = 13
          Caption = 'Year :'
          Visible = False
        end
        object Label23: TLabel
          Left = 153
          Top = 36
          Width = 37
          Height = 13
          Caption = 'Month :'
          Visible = False
        end
        object Label24: TLabel
          Left = 153
          Top = 60
          Width = 34
          Height = 13
          Caption = 'Week :'
          Visible = False
        end
        object Label25: TLabel
          Left = 9
          Top = 38
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fiscal Year :'
          Visible = False
        end
        object Edit_SearchTBC: TEdit
          Left = 125
          Top = 6
          Width = 152
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = Edit_SearchTBCChange
          OnKeyPress = Edit_SearchTBCKeyPress
        end
        object ComboBox1: TComboBox
          Left = 42
          Top = 55
          Width = 77
          Height = 21
          TabOrder = 1
          Text = 'ComboBox1'
          Visible = False
        end
        object ComboBox2: TComboBox
          Left = 196
          Top = 33
          Width = 77
          Height = 21
          TabOrder = 2
          Text = 'ComboBox1'
          Visible = False
        end
        object ComboBox3: TComboBox
          Left = 196
          Top = 57
          Width = 77
          Height = 21
          TabOrder = 3
          Text = 'ComboBox1'
          Visible = False
        end
        object DBLCB_Religion: TDBLookupComboBox
          Left = 65
          Top = 31
          Width = 55
          Height = 21
          KeyField = 'RELIGIONID'
          ListField = 'RELIGION'
          TabOrder = 4
          Visible = False
        end
      end
      object Dbgrid5: TDBGrid
        Left = 289
        Top = 181
        Width = 982
        Height = 299
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_TobeCollected
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = Dbgrid5DblClick
        OnKeyDown = Dbgrid5KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Caption = 'Hospital No'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BILLNO'
            Title.Caption = 'Bill No'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TESTDATE'
            Title.Caption = 'Bill Date'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TESTTIME'
            Title.Caption = 'Bill Time'
            Width = 74
            Visible = True
          end>
      end
      object Edit3: TEdit
        Left = 3
        Top = 158
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object Edit4: TEdit
        Left = 77
        Top = 158
        Width = 208
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 289
        Top = 158
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object Edit6: TEdit
        Left = 434
        Top = 158
        Width = 98
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object Edit7: TEdit
        Left = 533
        Top = 158
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 181
        Width = 284
        Height = 299
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DS_tobecolletedr
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        OnKeyPress = DBGrid4KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Caption = 'Hospital No'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Width = 181
            Visible = True
          end>
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 445
        Top = 60
        Width = 106
        Height = 84
        TabOrder = 11
        object Label34: TLabel
          Left = 11
          Top = 4
          Width = 87
          Height = 13
          Caption = 'Include more than'
        end
        object Label36: TLabel
          Left = 75
          Top = 20
          Width = 24
          Height = 13
          Caption = 'Days'
        end
        object Se_DaysTBC: TSpinEdit
          Left = 13
          Top = 17
          Width = 56
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
        object bb_RefreshTobecoll: TBitBtn
          Left = 8
          Top = 48
          Width = 92
          Height = 30
          Caption = '&Refresh'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = bb_RefreshTobecollClick
        end
      end
      object StringGrid1: TStringGrid
        Left = 871
        Top = 60
        Width = 54
        Height = 44
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
        TabOrder = 10
        Visible = False
        ColWidths = (
          102
          186
          151
          99)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Collected List'
      ImageIndex = 1
      OnShow = TabSheet2Show
      DesignSize = (
        1284
        485)
      object DBGrid2: TDBGrid
        Left = 271
        Top = 164
        Width = 1010
        Height = 318
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_SampleCollected
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Caption = 'Hospital No'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'BILLNO'
            Title.Caption = 'Bill No'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestDate'
            Title.Caption = 'Collected Date'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestTime'
            Title.Caption = 'Time'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sampleno'
            Title.Caption = 'Sample No'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestName'
            Title.Caption = 'Test Name'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Collectedby'
            Title.Caption = 'Collected by'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FindingPostBy'
            Title.Caption = 'Result by'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VerifiedBy'
            Title.Caption = 'Verified by'
            Width = 54
            Visible = True
          end>
      end
      object Edit8: TEdit
        Left = 9
        Top = 140
        Width = 78
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object Edit9: TEdit
        Left = 88
        Top = 140
        Width = 179
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit9Change
      end
      object Edit10: TEdit
        Left = 271
        Top = 140
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object Edit11: TEdit
        Left = 382
        Top = 140
        Width = 74
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object Edit12: TEdit
        Left = 460
        Top = 140
        Width = 54
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 42
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        DesignSize = (
          1284
          42)
        object Label6: TLabel
          Left = 32
          Top = 1
          Width = 112
          Height = 13
          Caption = '--> Findings Completed'
        end
        object Shape1: TShape
          Left = 18
          Top = 2
          Width = 12
          Height = 12
          Brush.Color = 4227200
          Pen.Style = psClear
        end
        object Shape2: TShape
          Left = 18
          Top = 16
          Width = 12
          Height = 12
          Brush.Color = 4227200
          Pen.Style = psClear
        end
        object Label9: TLabel
          Left = 32
          Top = 15
          Width = 89
          Height = 13
          Caption = '--> Report Printed'
        end
        object Shape3: TShape
          Left = 154
          Top = 2
          Width = 12
          Height = 12
          Brush.Color = 4227200
          Pen.Style = psClear
        end
        object Label37: TLabel
          Left = 168
          Top = 1
          Width = 55
          Height = 13
          Caption = '--> Verified'
        end
        object Shape4: TShape
          Left = 154
          Top = 15
          Width = 12
          Height = 12
          Brush.Color = 4227200
          Pen.Style = psClear
        end
        object Label39: TLabel
          Left = 168
          Top = 14
          Width = 127
          Height = 13
          Caption = '--> Verified + Report Print'
        end
        object Shape6: TShape
          Left = 5
          Top = 39
          Width = 1276
          Height = 1
          Anchors = [akLeft, akTop, akRight]
          Pen.Style = psDot
          ExplicitWidth = 990
        end
        object BB_Modify: TBitBtn
          AlignWithMargins = True
          Left = 733
          Top = 2
          Width = 116
          Height = 34
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Margins.Bottom = 6
          Caption = '&Modify'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          Visible = False
          OnClick = BB_ModifyClick
        end
        object Button1: TButton
          Left = 1210
          Top = 2
          Width = 72
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Upload'
          TabOrder = 1
          Visible = False
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 1138
          Top = 2
          Width = 72
          Height = 34
          Anchors = [akTop, akRight]
          Caption = 'Download'
          TabOrder = 2
          Visible = False
        end
      end
      object Edit14: TEdit
        Left = 517
        Top = 140
        Width = 63
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object Edit15: TEdit
        Left = 584
        Top = 140
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
      end
      object Panel_Head: TPanel
        Left = 7
        Top = 46
        Width = 988
        Height = 90
        BevelOuter = bvNone
        TabOrder = 9
        object BB_ValidTestCancel: TSpeedButton
          Left = 780
          Top = 2
          Width = 100
          Height = 22
          Caption = '&Valid Test Cancel'
          Visible = False
          OnClick = bb_RefreshTobecollClick
        end
        object BB_RegisterMonitor: TSpeedButton
          Left = 780
          Top = 23
          Width = 100
          Height = 22
          Caption = '&Register Monitor'
          Visible = False
        end
        object BB_ReportRemaining: TSpeedButton
          Left = 780
          Top = 65
          Width = 100
          Height = 22
          Caption = '&Report Remaining'
          Visible = False
        end
        object BB_SampleRegister: TSpeedButton
          Left = 780
          Top = 44
          Width = 100
          Height = 22
          Caption = '&Sample Register'
          Visible = False
        end
        object GB_PatientSearch: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 257
          Height = 84
          Align = alLeft
          TabOrder = 0
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
          object Label27: TLabel
            Left = 8
            Top = 57
            Width = 29
            Height = 13
            Caption = 'Year :'
            Visible = False
          end
          object Label28: TLabel
            Left = 129
            Top = 36
            Width = 37
            Height = 13
            Caption = 'Month :'
            Visible = False
          end
          object Label29: TLabel
            Left = 129
            Top = 60
            Width = 34
            Height = 13
            Caption = 'Week :'
            Visible = False
          end
          object Label30: TLabel
            Left = 5
            Top = 34
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fiscal Year :'
            Visible = False
          end
          object Edit_SearchCollectedList: TEdit
            Left = 121
            Top = 6
            Width = 128
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = Edit_SearchCollectedListChange
            OnKeyPress = Edit_SearchCollectedListKeyPress
          end
          object ComboBox4: TComboBox
            Left = 42
            Top = 55
            Width = 77
            Height = 21
            TabOrder = 1
            Text = 'ComboBox1'
            Visible = False
          end
          object ComboBox5: TComboBox
            Left = 172
            Top = 33
            Width = 77
            Height = 21
            TabOrder = 2
            Text = 'ComboBox1'
            Visible = False
          end
          object ComboBox6: TComboBox
            Left = 172
            Top = 56
            Width = 77
            Height = 21
            TabOrder = 3
            Text = 'ComboBox1'
            Visible = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 65
            Top = 31
            Width = 55
            Height = 21
            KeyField = 'RELIGIONID'
            ListField = 'RELIGION'
            TabOrder = 4
            Visible = False
          end
        end
        object GB_Option: TGroupBox
          AlignWithMargins = True
          Left = 266
          Top = 3
          Width = 120
          Height = 84
          Align = alLeft
          TabOrder = 1
          Visible = False
          object Cb_Halfpage: TCheckBox
            Left = 8
            Top = 3
            Width = 97
            Height = 17
            Caption = 'Half Page'
            TabOrder = 0
            OnClick = Cb_HalfpageClick
          end
          object Cb_HideIndication: TCheckBox
            Left = 8
            Top = 18
            Width = 97
            Height = 17
            Caption = 'Hide Indication'
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = Cb_HideIndicationClick
          end
          object Cb_SampleSource: TCheckBox
            Left = 8
            Top = 34
            Width = 97
            Height = 17
            Caption = 'Hide Source'
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = Cb_SampleSourceClick
          end
          object Cb_HideRange: TCheckBox
            Left = 8
            Top = 50
            Width = 104
            Height = 17
            Caption = 'Hide Units/Range'
            TabOrder = 3
            OnClick = Cb_HideRangeClick
          end
          object Cb_SingleDep: TCheckBox
            Left = 8
            Top = 65
            Width = 104
            Height = 17
            Caption = 'Single Department'
            TabOrder = 4
            OnClick = Cb_SingleDepClick
          end
        end
        object CLB_Department: TCheckListBox
          AlignWithMargins = True
          Left = 392
          Top = 3
          Width = 134
          Height = 84
          Align = alLeft
          ItemHeight = 13
          Items.Strings = (
            'BIOCHEMISTRY'
            'BACTERIOLOGY'
            'HEMATOLOGY'
            'HEPATOLOGY'
            'CT SCAN')
          TabOrder = 2
        end
        object GB_Searchbydate: TGroupBox
          AlignWithMargins = True
          Left = 532
          Top = 3
          Width = 132
          Height = 84
          Align = alLeft
          TabOrder = 3
          object Label11: TLabel
            Left = 8
            Top = 28
            Width = 31
            Height = 13
            Caption = 'From :'
          end
          object SpeedButton6: TSpeedButton
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
          object SpeedButton7: TSpeedButton
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
            Width = 63
            Height = 21
            TabOrder = 1
            OnEnter = Dex_CLFromEnter
            ControlData = {
              545046300A5444617465456469745200044C656674022903546F700219057769
              647468023F0B4461746541442E5965617203DB070C4461746541442E4D6F6E74
              6802090A4461746541442E44617902160B4461746556532E596561720314080C
              4461746556532E4D6F6E746802060A4461746556532E44617902050000}
          end
          object Dex_CLTo: TDateEditX
            Left = 41
            Top = 49
            Width = 65
            Height = 21
            TabOrder = 2
            OnExit = Dex_CLToExit
            ControlData = {
              545046300A5444617465456469745200044C656674022903546F7002310B4461
              746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
              41442E44617902160B4461746556532E596561720314080C4461746556532E4D
              6F6E746802060A4461746556532E44617902050000}
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 670
          Top = 3
          Width = 106
          Height = 84
          Align = alLeft
          TabOrder = 4
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
          object Se_CLDays: TSpinEdit
            Left = 13
            Top = 17
            Width = 56
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
            OnChange = Se_CLDaysChange
          end
          object BB_Refresh: TBitBtn
            Left = 8
            Top = 48
            Width = 92
            Height = 30
            Caption = '&Refresh'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 1
            OnClick = BB_RefreshClick
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 9
        Top = 164
        Width = 259
        Height = 318
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DS_samplecollectedright
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Caption = 'Hospital No'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Width = 159
            Visible = True
          end>
      end
      object Cb_NoResult: TCheckBox
        Left = 756
        Top = 142
        Width = 147
        Height = 17
        Caption = 'Only Result Not Entered'
        TabOrder = 11
        OnClick = Cb_NoResultClick
      end
      object cb_tick: TCheckListBox
        Left = 964
        Top = 145
        Width = 13
        Height = 14
        BorderStyle = bsNone
        Color = clBtnFace
        ItemHeight = 18
        Items.Strings = (
          '')
        Style = lbOwnerDrawVariable
        TabOrder = 12
        Visible = False
        OnClick = cb_tickClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sample Collection'
      ImageIndex = 2
      DesignSize = (
        1284
        485)
      object Label2: TLabel
        Left = 3
        Top = 43
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
        Visible = False
      end
      object Label7: TLabel
        Left = 271
        Top = 46
        Width = 24
        Height = 13
        Caption = 'Days'
        Visible = False
      end
      object SpeedButton4: TSpeedButton
        Left = 301
        Top = 39
        Width = 92
        Height = 26
        Caption = '&Refresh'
        Visible = False
      end
      object Label1: TLabel
        Left = 3
        Top = 141
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Bill List'
        Color = 16744576
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
      object Label17: TLabel
        Left = 3
        Top = 320
        Width = 167
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Sample To Be Collected'
        Color = 16744576
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
      object SpeedButton1: TSpeedButton
        Left = 393
        Top = 39
        Width = 128
        Height = 26
        Caption = 'Undo Sample Colln.'
        Visible = False
        OnClick = SpeedButton1Click
      end
      object Label14: TLabel
        Left = 387
        Top = 320
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Collected Sample'
        Color = 16744576
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
      object Label15: TLabel
        Left = 370
        Top = 387
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '->'
      end
      object Label18: TLabel
        Left = 370
        Top = 399
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '<-'
      end
      object SpeedButton5: TSpeedButton
        Left = 701
        Top = 284
        Width = 92
        Height = 26
        Caption = 'Reprint Sticker'
        Visible = False
        OnClick = SpeedButton5Click
      end
      object Label4: TLabel
        Left = 764
        Top = 315
        Width = 25
        Height = 13
        Caption = 'Copy'
        Visible = False
      end
      object Label38: TLabel
        Left = 388
        Top = 144
        Width = 82
        Height = 13
        Caption = 'Sample No List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Edit_SC_HosNo: TEdit
        Left = 121
        Top = 43
        Width = 88
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Visible = False
      end
      object SpinEdit1: TSpinEdit
        Left = 210
        Top = 42
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
        Visible = False
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 162
        Width = 365
        Height = 143
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            Title.Caption = 'Date'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Bill No.'
            Width = 180
            Visible = True
          end>
      end
      object CB_PreSampleNO: TCheckBox
        Left = 387
        Top = 288
        Width = 141
        Height = 17
        Caption = 'Include previous colln No.'
        TabOrder = 4
        Visible = False
        OnClick = CB_PreSampleNOClick
      end
      object CLB_TestName: TCheckListBox
        Left = 3
        Top = 341
        Width = 365
        Height = 124
        ItemHeight = 13
        TabOrder = 5
      end
      object CLB_CollectedSample: TCheckListBox
        Left = 388
        Top = 340
        Width = 406
        Height = 124
        ItemHeight = 13
        TabOrder = 6
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 72
        Width = 795
        Height = 57
        TabOrder = 7
        object Label16: TLabel
          Left = 9
          Top = 7
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Hospital No. :'
        end
        object lbl_Hosno: TLabel
          Left = 80
          Top = 7
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
          Left = 184
          Top = 7
          Width = 34
          Height = 13
          Alignment = taRightJustify
          Caption = 'Name :'
        end
        object Lbl_Name: TLabel
          Left = 224
          Top = 7
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
          Left = 491
          Top = 7
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Age/Sex :'
        end
        object Lbl_AgeSex: TLabel
          Left = 545
          Top = 7
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
        object Label8: TLabel
          Left = 636
          Top = 9
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address :'
        end
        object Lbl_Address: TLabel
          Left = 688
          Top = 9
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
        object Label10: TLabel
          Left = 184
          Top = 33
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contact No.:'
        end
        object Lbl_ContactNo: TLabel
          Left = 252
          Top = 33
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
        object Label12: TLabel
          Left = 491
          Top = 33
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bill No. :'
        end
        object Lbl_BillNo: TLabel
          Left = 536
          Top = 33
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
      end
      object Cb_TestNameAll: TCheckBox
        Left = 178
        Top = 322
        Width = 33
        Height = 17
        Caption = 'All'
        TabOrder = 8
        Visible = False
        OnClick = Cb_TestNameAllClick
      end
      object CB_CollectedSampleAll: TCheckBox
        Left = 506
        Top = 322
        Width = 33
        Height = 17
        Caption = 'All'
        TabOrder = 9
        Visible = False
        OnClick = CB_CollectedSampleAllClick
      end
      object Edit_PreviousSampleNo: TEdit
        Left = 534
        Top = 286
        Width = 123
        Height = 21
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 10
        Visible = False
      end
      object BB_Save: TBitBtn
        Left = 274
        Top = 308
        Width = 94
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = '&Save [F12]'
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
        TabOrder = 11
        Visible = False
        OnClick = BB_SaveClick
      end
      object se_printcount: TSpinEdit
        Left = 702
        Top = 312
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 12
        Value = 1
        Visible = False
      end
      object cb_preview: TCheckBox
        Left = 639
        Top = 315
        Width = 56
        Height = 17
        Caption = 'Preview'
        Checked = True
        State = cbChecked
        TabOrder = 13
        Visible = False
      end
      object DBGrid6: TDBGrid
        Left = 389
        Top = 162
        Width = 406
        Height = 118
        DataSource = DS_SampleNoList
        TabOrder = 14
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid6DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'sampleNo'
            Title.Alignment = taCenter
            Title.Caption = 'Sample No'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SampleTakenTime'
            Title.Alignment = taCenter
            Title.Caption = 'Sample Taken Time'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserName'
            Title.Caption = 'Received By'
            Visible = False
          end>
      end
      object GroupBox5: TGroupBox
        Left = 800
        Top = 66
        Width = 478
        Height = 399
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Sample Receive'
        TabOrder = 15
        DesignSize = (
          478
          399)
        object lbl_msg: TLabel
          Left = 0
          Top = 142
          Width = 477
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object lbl_PatientNameSR: TLabel
          Left = 1
          Top = 174
          Width = 477
          Height = 31
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object lbl_RunNo: TLabel
          Left = 380
          Top = 11
          Width = 95
          Height = 99
          Alignment = taCenter
          Anchors = [akTop, akRight]
          AutoSize = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clAqua
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label41: TLabel
          Left = 30
          Top = 101
          Width = 50
          Height = 13
          Caption = 'Daily No. :'
        end
        object BB_Receive: TButton
          Left = 211
          Top = 65
          Width = 90
          Height = 25
          Caption = 'Receive'
          TabOrder = 0
          OnClick = BB_ReceiveClick
        end
        object Le_SampleNo: TLabeledEdit
          Left = 84
          Top = 69
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'Sample No. :'
          LabelPosition = lpLeft
          TabOrder = 1
          OnKeyPress = Le_SampleNoKeyPress
        end
        object Rb_Receive: TRadioButton
          Left = 40
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Receive'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object Rb_UndoReceive: TRadioButton
          Left = 40
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Undo Receive'
          TabOrder = 3
          Visible = False
        end
        object Cb_Manual: TCheckBox
          Left = 209
          Top = 31
          Width = 152
          Height = 17
          Caption = 'Enter Sample No Manually'
          Checked = True
          State = cbChecked
          TabOrder = 4
          OnClick = Cb_ManualClick
        end
        object edit_dailyno: TEdit
          Left = 84
          Top = 96
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          OnKeyPress = edit_dailynoKeyPress
        end
        object Edit_CheckDailyNo: TLabeledEdit
          Left = 84
          Top = 211
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'Sample No. :'
          LabelPosition = lpLeft
          TabOrder = 6
          OnKeyPress = Edit_CheckDailyNoKeyPress
        end
        object Button5: TButton
          Left = 211
          Top = 209
          Width = 90
          Height = 25
          Caption = 'Check Daily No'
          TabOrder = 7
          OnClick = Button5Click
        end
        object Cb_AutoDailyNo: TCheckBox
          Left = 209
          Top = 11
          Width = 152
          Height = 17
          Caption = 'Use Daily No. Automatic'
          TabOrder = 8
          OnClick = Cb_AutoDailyNoClick
        end
        object le_UndoSample: TLabeledEdit
          Left = 84
          Top = 235
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 61
          EditLabel.Height = 13
          EditLabel.Caption = 'Sample No. :'
          LabelPosition = lpLeft
          TabOrder = 9
          OnKeyPress = le_UndoSampleKeyPress
        end
        object BB_UndoSample: TButton
          Left = 211
          Top = 233
          Width = 90
          Height = 25
          Caption = 'Undo Receive'
          TabOrder = 10
          OnClick = BB_UndoSampleClick
        end
      end
    end
  end
  object Query_TobeCollected: TOraQuery
    SQL.Strings = (
      
        'SELECT distinct PatientID,PatientName,BillNo,TestDate,TestTime  ' +
        'FROM VW_SAMPLE_TO_BE_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'AND 99=99'
      'and 99=99'
      'And 99=99')
    AfterScroll = Query_TobeCollectedAfterScroll
    Left = 448
    Top = 376
  end
  object DS_TobeCollected: TDataSource
    DataSet = Query_TobeCollected
    Left = 536
    Top = 392
  end
  object DS_SampleCollected: TDataSource
    DataSet = Query_SampleCollected
    Left = 352
    Top = 424
  end
  object Query_SampleCollected: TOraQuery
    SQL.Strings = (
      'SELECT * FROM VW_SAMPLE_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'AND 99=99'
      'And 99=99'
      'And 99=99')
    AfterScroll = Query_SampleCollectedAfterScroll
    Left = 296
    Top = 416
  end
  object Timer: TTimer
    Enabled = False
    Interval = 1
    Left = 320
    Top = 264
  end
  object DS_samplecollectedright: TDataSource
    DataSet = Query_samplecollectedright
    Left = 232
    Top = 192
  end
  object Query_samplecollectedright: TOraQuery
    SQL.Strings = (
      'SELECT Distinct PATIENTID,PATIENTNAME FROM VW_SAMPLE_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'AND 99=99'
      'And 99=99'
      'order by patientname')
    Left = 112
    Top = 272
  end
  object Query_tobecollectedr: TOraQuery
    SQL.Strings = (
      
        'SELECT DISTINCT PATIENTID,PATIENTNAME  FROM VW_SAMPLE_TO_BE_COLL' +
        'ECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'order by patientname')
    Left = 640
    Top = 352
  end
  object DS_tobecolletedr: TDataSource
    DataSet = Query_tobecollectedr
    Left = 736
    Top = 376
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 560
    Top = 65528
  end
  object DS_SampleNoList: TDataSource
    DataSet = Query_SampleNoList
    Left = 488
    Top = 240
  end
  object Query_SampleNoList: TOraQuery
    SQL.Strings = (
      
        'select Distinct sampleNo from samplecollection Where PatientID=1' +
        '3000123 and SampleTakenDate='#39'2013/04/26'#39
      'Order by SampleNo Desc')
    Left = 456
    Top = 240
  end
end
