object Frame_SampleCollection: TFrame_SampleCollection
  Left = 0
  Top = 0
  Width = 1118
  Height = 710
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1118
    Height = 710
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Sample To be Collected'
      OnShow = TabSheet1Show
      DesignSize = (
        1110
        682)
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object Label33: TLabel
          Left = 11
          Top = 35
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
          Left = 91
          Top = 35
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
          Top = 11
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
          Top = 11
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
          AlignWithMargins = True
          Left = 687
          Top = 0
          Width = 92
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = '<- &Previous'
          OnClick = SpeedButton8Click
          ExplicitLeft = 575
          ExplicitHeight = 40
        end
        object SpeedButton9: TSpeedButton
          AlignWithMargins = True
          Left = 779
          Top = 0
          Width = 92
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = '&Next ->'
          OnClick = SpeedButton9Click
          ExplicitLeft = 592
          ExplicitTop = 6
          ExplicitHeight = 34
        end
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 874
          Top = 3
          Width = 1
          Height = 27
          Align = alRight
          Shape = bsLeftLine
          ExplicitLeft = 769
          ExplicitTop = 0
          ExplicitHeight = 40
        end
        object SpeedButton10: TSpeedButton
          AlignWithMargins = True
          Left = 498
          Top = 0
          Width = 93
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Queue list [OFF]'
          Enabled = False
          Visible = False
          OnClick = SpeedButton10Click
          ExplicitLeft = 407
          ExplicitTop = 6
          ExplicitHeight = 34
        end
        object BB_CollectSample: TBitBtn
          AlignWithMargins = True
          Left = 878
          Top = 0
          Width = 116
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = '&View Sample'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BB_CollectSampleClick
        end
        object BB_CollectedList: TBitBtn
          AlignWithMargins = True
          Left = 994
          Top = 0
          Width = 116
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Collected &List'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = BB_CollectedListClick
        end
        object Button3: TButton
          AlignWithMargins = True
          Left = 402
          Top = 0
          Width = 96
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Sample Receive'
          Enabled = False
          TabOrder = 2
          Visible = False
          OnClick = Button3Click
        end
        object Button4: TButton
          AlignWithMargins = True
          Left = 591
          Top = 0
          Width = 96
          Height = 33
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Service &Detail'
          TabOrder = 3
          OnClick = Button4Click
        end
      end
      object Dbgrid5: TDBGrid
        Left = 290
        Top = 151
        Width = 818
        Height = 531
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_TobeCollected
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = Dbgrid5CellClick
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
        Top = 128
        Width = 71
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit3Change
      end
      object Edit4: TEdit
        Left = 77
        Top = 128
        Width = 208
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 289
        Top = 128
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 434
        Top = 128
        Width = 98
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 533
        Top = 128
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object DBGrid4: TDBGrid
        Left = 3
        Top = 151
        Width = 284
        Height = 531
        Anchors = [akLeft, akTop, akBottom]
        DataSource = DS_tobecolletedr
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid4CellClick
        OnKeyDown = DBGrid4KeyDown
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
            FieldName = 'TITLE'
            Title.Caption = 'Title'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Width = 166
            Visible = True
          end>
      end
      object pnl_mid: TPanel
        Left = 0
        Top = 33
        Width = 1110
        Height = 93
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 8
        object lbl_TestCaption: TLabel
          Left = 570
          Top = 5
          Width = 355
          Height = 84
          AutoSize = False
          Color = 12630470
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 185
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object GroupBox2: TGroupBox
          Left = 294
          Top = 5
          Width = 147
          Height = 84
          TabOrder = 0
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
            Left = 8
            Top = 4
            Width = 97
            Height = 17
            Caption = ' Search by date'
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
          Top = 5
          Width = 285
          Height = 84
          TabOrder = 1
          object Label19: TLabel
            Left = 4
            Top = 7
            Width = 115
            Height = 21
            Alignment = taCenter
            AutoSize = False
            Caption = 'Patient Search'
            Color = 8421631
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
            Left = 5
            Top = 34
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fiscal Year :'
            Visible = False
          end
          object Label45: TLabel
            Left = 27
            Top = 58
            Width = 91
            Height = 13
            Caption = 'Department Type :'
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
          object CB_DeptypeCheck: TComboBox
            Left = 125
            Top = 56
            Width = 88
            Height = 21
            TabOrder = 5
            OnClick = CB_DeptypeCheckClick
            Items.Strings = (
              'PATHOLOGY'
              'HISTOLOGY'
              'RADIOLOGY')
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 446
          Top = 5
          Width = 106
          Height = 84
          TabOrder = 2
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
            Left = 10
            Top = 47
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
          Left = 931
          Top = 3
          Width = 54
          Height = 44
          ColCount = 4
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goRowSelect]
          TabOrder = 3
          Visible = False
          ColWidths = (
            102
            186
            151
            99)
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Sample Collected List'
      ImageIndex = 1
      OnShow = TabSheet2Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        1110
        682)
      object DBGrid2: TDBGrid
        Left = 271
        Top = 156
        Width = 840
        Height = 526
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
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LABNO'
            Title.Caption = 'Lab No'
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
            FieldName = 'REFHOSNAME'
            Title.Caption = 'Ref. Hospital'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFDOCNAME'
            Title.Caption = 'Ref. Doc'
            Width = 43
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
        Top = 134
        Width = 78
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = Edit8Change
      end
      object Edit9: TEdit
        Left = 88
        Top = 134
        Width = 177
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit9Change
      end
      object Edit10: TEdit
        Left = 271
        Top = 134
        Width = 110
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        OnChange = Edit10Change
      end
      object Edit11: TEdit
        Left = 382
        Top = 134
        Width = 74
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = Edit11Change
      end
      object Edit12: TEdit
        Left = 460
        Top = 134
        Width = 54
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        OnChange = Edit12Change
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 30
        Align = alTop
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 6
        object Shape1: TShape
          AlignWithMargins = True
          Left = 374
          Top = 5
          Width = 12
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Brush.Color = 4227200
          Pen.Style = psClear
          ExplicitLeft = 10
          ExplicitTop = 10
          ExplicitHeight = 12
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 392
          Top = 5
          Width = 112
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = '--> Findings Completed'
          ExplicitHeight = 13
        end
        object Shape2: TShape
          AlignWithMargins = True
          Left = 589
          Top = 5
          Width = 12
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Brush.Color = 4227200
          Pen.Style = psClear
          ExplicitLeft = 517
          ExplicitTop = 2
        end
        object Label9: TLabel
          AlignWithMargins = True
          Left = 607
          Top = 5
          Width = 89
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = '--> Report Printed'
          ExplicitHeight = 13
        end
        object Shape3: TShape
          AlignWithMargins = True
          Left = 510
          Top = 5
          Width = 12
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Brush.Color = 4227200
          Pen.Style = psClear
          ExplicitLeft = 274
          ExplicitTop = 10
          ExplicitHeight = 12
        end
        object Label37: TLabel
          AlignWithMargins = True
          Left = 528
          Top = 5
          Width = 55
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = '--> Verified'
          ExplicitHeight = 13
        end
        object Shape4: TShape
          AlignWithMargins = True
          Left = 702
          Top = 5
          Width = 12
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Brush.Color = 4227200
          Pen.Style = psClear
          Visible = False
          ExplicitLeft = 626
          ExplicitTop = 2
        end
        object Label39: TLabel
          AlignWithMargins = True
          Left = 720
          Top = 5
          Width = 127
          Height = 15
          Margins.Top = 5
          Margins.Bottom = 10
          Align = alRight
          Caption = '--> Verified + Report Print'
          Visible = False
          ExplicitHeight = 13
        end
        object Label41: TLabel
          Left = 7
          Top = 12
          Width = 91
          Height = 13
          Caption = 'Department Type :'
        end
        object BB_Modify: TBitBtn
          AlignWithMargins = True
          Left = 994
          Top = 0
          Width = 116
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = '&Modify'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 0
          OnClick = BB_ModifyClick
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 922
          Top = 0
          Width = 72
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Upload'
          TabOrder = 1
          Visible = False
          OnClick = Button1Click
        end
        object Button2: TButton
          AlignWithMargins = True
          Left = 850
          Top = 0
          Width = 72
          Height = 30
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Download'
          TabOrder = 2
          Visible = False
          OnClick = Button2Click
        end
        object cb_deptype: TComboBox
          Left = 99
          Top = 7
          Width = 132
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 3
          OnChange = cb_deptypeChange
          Items.Strings = (
            'PATHOLOGY'
            'HISTOLOGY'
            'RADIOLOGY')
        end
      end
      object Edit14: TEdit
        Left = 517
        Top = 134
        Width = 74
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        OnChange = Edit14Change
      end
      object Edit15: TEdit
        Left = 594
        Top = 134
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        OnChange = Edit15Change
      end
      object Panel_Head: TPanel
        Left = 0
        Top = 30
        Width = 1110
        Height = 98
        Align = alTop
        BevelOuter = bvSpace
        ParentBackground = False
        TabOrder = 9
        object GB_PatientSearch: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 257
          Height = 90
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
            Color = 8421631
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
            Top = 105
            Width = 29
            Height = 13
            Caption = 'Year :'
            Visible = False
          end
          object Label28: TLabel
            Left = 180
            Top = 49
            Width = 37
            Height = 13
            Caption = 'Month :'
            Visible = False
          end
          object Label29: TLabel
            Left = 129
            Top = 108
            Width = 34
            Height = 13
            Caption = 'Week :'
            Visible = False
          end
          object Label30: TLabel
            Left = 5
            Top = 98
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fiscal Year :'
            Visible = False
          end
          object Edit_SearchCollectedList: TEdit
            Left = 125
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
            Top = 103
            Width = 77
            Height = 21
            TabOrder = 1
            Text = 'ComboBox1'
            Visible = False
          end
          object ComboBox5: TComboBox
            Left = 236
            Top = 33
            Width = 77
            Height = 21
            TabOrder = 2
            Text = 'ComboBox1'
            Visible = False
          end
          object ComboBox6: TComboBox
            Left = 172
            Top = 104
            Width = 77
            Height = 21
            TabOrder = 3
            Text = 'ComboBox1'
            Visible = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 65
            Top = 95
            Width = 55
            Height = 21
            KeyField = 'RELIGIONID'
            ListField = 'RELIGION'
            TabOrder = 4
            Visible = False
          end
          object rb_underanalysis: TRadioButton
            Left = 14
            Top = 48
            Width = 113
            Height = 17
            Caption = 'Under Analysis'
            TabOrder = 5
          end
          object rb_All: TRadioButton
            Left = 152
            Top = 48
            Width = 113
            Height = 17
            Caption = 'All'
            Checked = True
            TabOrder = 6
            TabStop = True
          end
          object CB_LAbNo: TCheckBox
            Left = 120
            Top = 29
            Width = 127
            Height = 17
            Caption = 'Search By Lab No (F1)'
            Checked = True
            State = cbChecked
            TabOrder = 7
            OnClick = CB_LAbNoClick
          end
        end
        object GB_Option: TGroupBox
          AlignWithMargins = True
          Left = 267
          Top = 4
          Width = 120
          Height = 90
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
          Left = 393
          Top = 4
          Width = 134
          Height = 90
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
          Left = 533
          Top = 4
          Width = 132
          Height = 90
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
            OnClick = SpeedButton6Click
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
            OnClick = SpeedButton7Click
          end
          object CB_Date: TCheckBox
            Left = 8
            Top = 4
            Width = 97
            Height = 17
            Caption = ' Search by date'
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
          Left = 671
          Top = 4
          Width = 106
          Height = 90
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
        object grp_sampletracking: TGroupBox
          AlignWithMargins = True
          Left = 783
          Top = 4
          Width = 131
          Height = 90
          Align = alLeft
          TabOrder = 5
          object btn_RegisterMonitor: TSpeedButton
            AlignWithMargins = True
            Left = 13
            Top = 5
            Width = 109
            Height = 26
            Margins.Bottom = 60
            Caption = '&Register Monitor'
            OnClick = btn_RegisterMonitorClick
          end
          object btn_ReportRemaining: TSpeedButton
            Left = 13
            Top = 33
            Width = 109
            Height = 26
            Margins.Bottom = 60
            Caption = 'Report R&emaining'
            OnClick = btn_ReportRemainingClick
          end
          object btn_SampleRegister: TSpeedButton
            Left = 13
            Top = 61
            Width = 109
            Height = 26
            Margins.Top = 35
            Margins.Right = 84
            Margins.Bottom = 28
            Caption = 'Service &Detail'
            OnClick = btn_SampleRegisterClick
          end
        end
      end
      object DBGrid3: TDBGrid
        Left = 6
        Top = 158
        Width = 259
        Height = 524
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
        OnKeyDown = DBGrid3KeyDown
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
            FieldName = 'TITLE'
            Title.Caption = 'Title'
            Width = 35
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
        Left = 764
        Top = 136
        Width = 147
        Height = 17
        Caption = 'Only Result Not Entered'
        TabOrder = 11
        OnClick = Cb_NoResultClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sample Collection'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label2: TLabel
        Left = 3
        Top = 43
        Width = 115
        Height = 22
        Alignment = taCenter
        AutoSize = False
        Caption = 'Patient Search'
        Color = 8421631
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
      object Label7: TLabel
        Left = 199
        Top = 46
        Width = 24
        Height = 13
        Caption = 'Days'
      end
      object SpeedButton4: TSpeedButton
        Left = 229
        Top = 39
        Width = 92
        Height = 26
        Caption = '&Refresh'
        OnClick = SpeedButton4Click
      end
      object Label1: TLabel
        Left = 3
        Top = 201
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Bill List'
        Color = 8421631
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
        Top = 390
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Test Name'
        Color = 8421631
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
        Left = 325
        Top = 39
        Width = 128
        Height = 26
        Caption = '&Undo Sample Collection'
        OnClick = SpeedButton1Click
      end
      object Label14: TLabel
        Left = 387
        Top = 390
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Collected Sample'
        Color = 8421631
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
        Top = 457
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '->'
      end
      object Label18: TLabel
        Left = 370
        Top = 469
        Width = 12
        Height = 13
        Alignment = taRightJustify
        Caption = '<-'
      end
      object SpeedButton5: TSpeedButton
        Left = 701
        Top = 353
        Width = 92
        Height = 26
        Caption = '&Print Sticker'
        OnClick = SpeedButton5Click
      end
      object Label4: TLabel
        Left = 764
        Top = 385
        Width = 25
        Height = 13
        Caption = 'Copy'
      end
      object Label38: TLabel
        Left = 388
        Top = 204
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
      object lbl_REMARKS: TLabel
        Left = 3
        Top = 588
        Width = 85
        Height = 13
        Caption = 'Sample Remarks :'
      end
      object labelsample: TLabel
        Left = 5
        Top = 368
        Width = 54
        Height = 13
        Caption = 'Sample No.'
      end
      object Label_Labno: TLabel
        Left = 472
        Top = 345
        Width = 40
        Height = 13
        Caption = 'Lab No. '
        Enabled = False
        Visible = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1110
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object Edit_SC_HosNo: TEdit
        Left = 3
        Top = 15
        Width = 88
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Visible = False
      end
      object SpinEdit1: TSpinEdit
        Left = 136
        Top = 43
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
      object CB_PreSampleNO: TCheckBox
        Left = 414
        Top = 364
        Width = 97
        Height = 17
        Caption = 'Sample colln No.'
        Enabled = False
        TabOrder = 3
        OnClick = CB_PreSampleNOClick
      end
      object CLB_TestName: TCheckListBox
        Left = 3
        Top = 411
        Width = 365
        Height = 169
        ItemHeight = 13
        TabOrder = 4
      end
      object CLB_CollectedSample: TCheckListBox
        Left = 387
        Top = 411
        Width = 406
        Height = 170
        ItemHeight = 13
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 72
        Width = 334
        Height = 121
        TabOrder = 6
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
          Left = 11
          Top = 55
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Age/Sex :'
        end
        object Lbl_AgeSex: TLabel
          Left = 65
          Top = 55
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
          Left = 156
          Top = 57
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Address :'
        end
        object Lbl_Address: TLabel
          Left = 208
          Top = 57
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
          Left = 9
          Top = 33
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contact No.:'
        end
        object Lbl_ContactNo: TLabel
          Left = 80
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
          Left = 11
          Top = 81
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bill No. :'
        end
        object Lbl_BillNo: TLabel
          Left = 56
          Top = 81
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
        object lbl_mobileno: TLabel
          Left = 246
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
        object Label42: TLabel
          Left = 185
          Top = 33
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mobile No.:'
        end
        object lbl_patienttype: TLabel
          Left = 179
          Top = 81
          Width = 68
          Height = 13
          Alignment = taRightJustify
          Caption = 'Patient Type :'
          Visible = False
        end
        object lbl_type: TLabel
          Left = 250
          Top = 81
          Width = 72
          Height = 13
          Caption = '########'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
      end
      object Cb_TestNameAll: TCheckBox
        Left = 122
        Top = 392
        Width = 33
        Height = 17
        Caption = 'All'
        TabOrder = 7
        OnClick = Cb_TestNameAllClick
      end
      object CB_CollectedSampleAll: TCheckBox
        Left = 506
        Top = 392
        Width = 33
        Height = 17
        Caption = 'All'
        TabOrder = 8
        OnClick = CB_CollectedSampleAllClick
      end
      object Edit_PreviousSampleNo: TEdit
        Left = 534
        Top = 362
        Width = 123
        Height = 21
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 9
      end
      object BB_Save: TBitBtn
        Left = 274
        Top = 378
        Width = 94
        Height = 33
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = '&Collect [F12]'
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
        TabOrder = 10
        OnClick = BB_SaveClick
      end
      object se_printcount: TSpinEdit
        Left = 702
        Top = 382
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 11
        Value = 1
      end
      object cb_preview: TCheckBox
        Left = 639
        Top = 385
        Width = 56
        Height = 17
        Caption = 'Preview'
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
      object DBGrid6: TDBGrid
        Left = 387
        Top = 223
        Width = 270
        Height = 117
        DataSource = DS_SampleNoList
        TabOrder = 13
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
          end>
      end
      object edt_remarks: TEdit
        Left = 97
        Top = 586
        Width = 268
        Height = 21
        TabOrder = 14
      end
      object Edit_sampleno: TEdit
        Left = 65
        Top = 365
        Width = 104
        Height = 21
        TabOrder = 15
      end
      object CheckBox_ismanual: TCheckBox
        Left = 174
        Top = 366
        Width = 91
        Height = 17
        Caption = 'Manual Collect'
        TabOrder = 16
      end
      object Edit_LabNo: TEdit
        Left = 534
        Top = 338
        Width = 123
        Height = 21
        Enabled = False
        MaxLength = 5
        TabOrder = 17
        Visible = False
      end
      object BitBtn_Sample: TBitBtn
        Left = 742
        Top = 215
        Width = 75
        Height = 25
        Caption = 'Print'
        DoubleBuffered = True
        Enabled = False
        ParentDoubleBuffered = False
        TabOrder = 18
        Visible = False
        OnClick = BitBtn_SampleClick
      end
      object Preview: TCheckBox
        Left = 682
        Top = 219
        Width = 60
        Height = 17
        Caption = 'Preview'
        Enabled = False
        TabOrder = 19
        Visible = False
        OnClick = PreviewClick
      end
      object CB_CPreview: TCheckBox
        Left = 663
        Top = 200
        Width = 83
        Height = 17
        Caption = 'Custom Print'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 20
        Visible = False
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 228
        Width = 365
        Height = 127
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 21
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
      object Panel_updateinfo: TPanel
        Left = 665
        Top = 249
        Width = 245
        Height = 103
        TabOrder = 22
        Visible = False
        object Label40: TLabel
          Left = 8
          Top = 55
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mobile No.:'
        end
        object Label43: TLabel
          Left = 0
          Top = 28
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Contact No.:'
        end
        object Label44: TLabel
          Left = 30
          Top = 82
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Caption = 'Email.:'
        end
        object Edit_mobileno: TEdit
          Left = 67
          Top = 52
          Width = 143
          Height = 21
          TabOrder = 0
        end
        object Edit_Email: TEdit
          Left = 67
          Top = 79
          Width = 143
          Height = 21
          TabOrder = 1
        end
        object Edit_contactno: TEdit
          Left = 67
          Top = 25
          Width = 143
          Height = 21
          TabOrder = 2
        end
        object btn_Save: TBitBtn
          Left = 170
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Save'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btn_SaveClick
        end
      end
      object CheckBox_UpdateInfo: TCheckBox
        Left = 833
        Top = 149
        Width = 97
        Height = 17
        Caption = 'Update Info'
        TabOrder = 23
        OnClick = CheckBox_UpdateInfoClick
      end
    end
  end
  object cb_tick: TCheckListBox
    Left = 988
    Top = 157
    Width = 13
    Height = 14
    BorderStyle = bsNone
    Color = clBtnFace
    ItemHeight = 18
    Items.Strings = (
      '')
    Style = lbOwnerDrawVariable
    TabOrder = 1
    Visible = False
    OnClick = cb_tickClick
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
    Left = 960
    Top = 120
  end
  object DS_TobeCollected: TDataSource
    DataSet = Query_TobeCollected
    Left = 624
    Top = 224
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
      'And 99=99'
      'and 1=1'
      'and 1=1')
    AfterScroll = Query_SampleCollectedAfterScroll
    Left = 344
    Top = 328
  end
  object Timer: TTimer
    Interval = 1
    Left = 632
    Top = 24
  end
  object DS_samplecollectedright: TDataSource
    DataSet = Query_samplecollectedright
    Left = 240
    Top = 344
  end
  object Query_samplecollectedright: TOraQuery
    SQL.Strings = (
      
        'SELECT Distinct PATIENTID,PATIENTNAME,billno,sampleno,title FROM' +
        ' VW_SAMPLE_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'AND 99=99'
      'And 99=99'
      'and 1=1'
      'order by patientname')
    AfterScroll = Query_samplecollectedrightAfterScroll
    Left = 632
    Top = 104
  end
  object Query_tobecollectedr: TOraQuery
    SQL.Strings = (
      
        'SELECT DISTINCT PATIENTID,PATIENTNAME,TITLE  FROM VW_SAMPLE_TO_B' +
        'E_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'order by patientname')
    AfterScroll = Query_tobecollectedrAfterScroll
    Left = 648
    Top = 352
  end
  object DS_tobecolletedr: TDataSource
    DataSet = Query_tobecollectedr
    Left = 800
    Top = 368
  end
  object TwilightColorMap1: TTwilightColorMap
    HighlightColor = clBlack
    BtnFrameColor = clBlack
    DisabledColor = cl3DDkShadow
    Left = 960
    Top = 72
  end
  object DS_SampleNoList: TDataSource
    DataSet = Query_SampleNoList
    Left = 552
    Top = 224
  end
  object Query_SampleNoList: TOraQuery
    SQL.Strings = (
      
        'select Distinct sampleNo from samplecollection Where PatientID=1' +
        '3000123 and SampleTakenDate='#39'2013/04/26'#39
      'Order by SampleNo Desc')
    Left = 424
    Top = 232
  end
  object Table_Patienttestlist: TTable
    Left = 716
    Top = 74
  end
  object Qry_master: TOraQuery
    Left = 528
    Top = 32
  end
  object OraQuery_SensitiveMedicine: TOraQuery
    SQL.Strings = (
      
        'SELECT Distinct PATIENTID,PATIENTNAME,billno,sampleno,title FROM' +
        ' VW_SAMPLE_COLLECTED'
      'WHERE 99=99'
      'AND 99=99'
      'And 99=99'
      'AND 99=99'
      'And 99=99'
      'and 1=1'
      'order by patientname')
    AfterScroll = Query_samplecollectedrightAfterScroll
    Left = 824
    Top = 80
  end
  object OraQuery_updateinfo: TOraQuery
    Left = 824
    Top = 256
  end
end
