object Form_DoctorRoutine: TForm_DoctorRoutine
  Left = 425
  Top = 200
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Doctor Routine'
  ClientHeight = 482
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlDocRoutine: TPageControl
    Left = 0
    Top = 33
    Width = 760
    Height = 449
    ActivePage = TabSheetNewRoutine
    Align = alClient
    TabOrder = 0
    OnChange = PageControlDocRoutineChange
    object TabSheetDocRoutine: TTabSheet
      Caption = 'Doc Schedule'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SpeedButton1: TSpeedButton
        Left = 726
        Top = 0
        Width = 25
        Height = 25
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
      object DBGrid1: TDBGrid
        Left = 0
        Top = 27
        Width = 753
        Height = 396
        DataSource = DS_DoctorRoutine
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'RID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DEPNAME'
            Title.Alignment = taCenter
            Title.Caption = 'DepName'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIT'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCNAME'
            Title.Alignment = taCenter
            Title.Caption = 'DocName'
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DAY'
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SHIFT'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SUNSHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Sun. Sft'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MONSHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Mon. Sft.'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TUESHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Tue. Sft'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'WEDSHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Wed. Sft'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'THUSHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Thu. Sft'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRISHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Fri. Sft'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SATSHIFT'
            Title.Alignment = taCenter
            Title.Caption = 'Sat. Sft'
            Visible = True
          end>
      end
      object DBLCB_DepName: TDBLookupComboBox
        Left = 0
        Top = 0
        Width = 178
        Height = 21
        KeyField = 'DEPID'
        ListField = 'DEPNAME'
        ListSource = DS_DEPNAME
        TabOrder = 1
        OnClick = DBLCB_DepNameClick
        OnKeyDown = DBLCB_DepNameKeyDown
        OnKeyPress = DBLCB_DepNameKeyPress
      end
      object DBLCB_DocName: TDBLookupComboBox
        Left = 237
        Top = 0
        Width = 225
        Height = 21
        KeyField = 'DOCID'
        ListField = 'DOCNAME'
        ListSource = DS_DOCName
        TabOrder = 3
        OnClick = DBLCB_DocNameClick
        OnKeyDown = DBLCB_DocNameKeyDown
        OnKeyPress = DBLCB_DocNameKeyPress
      end
      object DBLookupComboBoxUnit: TDBLookupComboBox
        Left = 179
        Top = 0
        Width = 58
        Height = 21
        KeyField = 'UNIT'
        ListField = 'UNIT'
        ListSource = DataSourceQueryUnit
        TabOrder = 2
        OnClick = DBLookupComboBoxUnitClick
        OnKeyDown = DBLookupComboBoxUnitKeyDown
        OnKeyPress = DBLookupComboBoxUnitKeyPress
      end
    end
    object TabSheetNewRoutine: TTabSheet
      Caption = 'New Doc Schedule'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Shape1: TShape
        Left = 59
        Top = 26
        Width = 549
        Height = 369
        Brush.Color = clScrollBar
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 135
        Top = 102
        Width = 32
        Height = 13
        Caption = 'Doctor'
      end
      object Label2: TLabel
        Left = 136
        Top = 54
        Width = 55
        Height = 13
        Caption = 'Department'
      end
      object Label3: TLabel
        Left = 136
        Top = 78
        Width = 19
        Height = 13
        Caption = 'Unit'
      end
      object SpeedButton4: TSpeedButton
        Left = 419
        Top = 102
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
          F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
          F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
          F000}
        OnClick = SpeedButton4Click
      end
      object DBLCB_Dep: TDBLookupComboBox
        Left = 206
        Top = 50
        Width = 234
        Height = 21
        KeyField = 'DEPID'
        ListField = 'DEPNAME'
        ListSource = DataSourceQueryDep
        TabOrder = 0
        OnClick = DBLCB_DepClick
        OnKeyPress = DBLCB_DepKeyPress
      end
      object CB_IsRoutineActive: TCheckBox
        Left = 207
        Top = 133
        Width = 119
        Height = 17
        Caption = 'Is Routine Active'
        Checked = True
        State = cbChecked
        TabOrder = 1
        Visible = False
      end
      object ComboBoxUnit: TComboBox
        Left = 207
        Top = 74
        Width = 49
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        OnKeyPress = ComboBoxUnitKeyPress
        Items.Strings = (
          'I'
          'II'
          'III'
          'IV'
          'V'
          'VI'
          'VII'
          'VIII'
          'IX'
          'X')
      end
      object DBLCB_Doctor: TDBLookupComboBox
        Left = 207
        Top = 101
        Width = 212
        Height = 21
        KeyField = 'DOCID'
        ListField = 'DOCNAME'
        ListSource = DS_QueryDoc
        TabOrder = 3
        OnKeyDown = DBLCB_DoctorKeyDown
      end
      object GroupBox1: TGroupBox
        Left = 112
        Top = 166
        Width = 425
        Height = 214
        Caption = 'Routine'
        TabOrder = 4
        object Label4: TLabel
          Left = 196
          Top = -1
          Width = 21
          Height = 13
          Caption = 'Shift'
          Visible = False
        end
        object Label5: TLabel
          Left = 74
          Top = -1
          Width = 19
          Height = 13
          Caption = 'Day'
          Visible = False
        end
        object lbl_Time: TLabel
          Left = 293
          Top = 0
          Width = 23
          Height = 13
          Caption = 'Time'
          Visible = False
        end
        object CheckSun: TCheckBox
          Left = 73
          Top = 44
          Width = 84
          Height = 17
          Caption = 'Sunday'
          TabOrder = 1
          OnClick = CheckSunClick
        end
        object CheckMon: TCheckBox
          Left = 73
          Top = 67
          Width = 84
          Height = 17
          Caption = 'Monday'
          TabOrder = 3
          OnClick = CheckMonClick
        end
        object CheckTues: TCheckBox
          Left = 73
          Top = 90
          Width = 84
          Height = 17
          Caption = 'Tuesday'
          TabOrder = 5
          OnClick = CheckTuesClick
        end
        object CheckWed: TCheckBox
          Left = 73
          Top = 114
          Width = 84
          Height = 14
          Caption = 'Wednesday'
          TabOrder = 7
          OnClick = CheckWedClick
        end
        object CheckThus: TCheckBox
          Left = 73
          Top = 137
          Width = 84
          Height = 17
          Caption = 'Thursday'
          TabOrder = 9
          OnClick = CheckThusClick
        end
        object CheckFri: TCheckBox
          Left = 73
          Top = 160
          Width = 84
          Height = 17
          Caption = 'Friday'
          TabOrder = 11
          OnClick = CheckFriClick
        end
        object CheckSat: TCheckBox
          Left = 73
          Top = 183
          Width = 84
          Height = 17
          Caption = 'Saturday'
          TabOrder = 13
          OnClick = CheckSatClick
        end
        object CmbBoxSunday: TComboBox
          Left = 155
          Top = 42
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 2
          TabStop = False
          OnKeyDown = CmbBoxSundayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxMonday: TComboBox
          Left = 155
          Top = 65
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 4
          TabStop = False
          OnKeyDown = CmbBoxMondayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxTuesday: TComboBox
          Left = 155
          Top = 88
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 6
          TabStop = False
          OnKeyDown = CmbBoxTuesdayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxWednesday: TComboBox
          Left = 155
          Top = 111
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 8
          TabStop = False
          OnKeyDown = CmbBoxWednesdayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxThursday: TComboBox
          Left = 155
          Top = 135
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 10
          TabStop = False
          OnKeyDown = CmbBoxThursdayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxFriday: TComboBox
          Left = 155
          Top = 158
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 12
          TabStop = False
          OnKeyDown = CmbBoxFridayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CmbBoxSaturday: TComboBox
          Left = 155
          Top = 181
          Width = 106
          Height = 21
          Style = csDropDownList
          Color = clMenu
          Enabled = False
          TabOrder = 14
          TabStop = False
          OnKeyDown = CmbBoxSaturdayKeyDown
          Items.Strings = (
            'MORNING'
            'AFTERNOON'
            'EVENING'
            'NIGHT'
            'FULL DAY'
            'FULL NIGHT')
        end
        object CB_ShiftSystem: TCheckBox
          Left = 157
          Top = 17
          Width = 97
          Height = 17
          Caption = 'Is Shift System'
          TabOrder = 0
          OnClick = CB_ShiftSystemClick
        end
        object medt_Sunday: TMaskEdit
          Left = 283
          Top = 42
          Width = 122
          Height = 21
          TabOrder = 15
        end
        object medt_Monday: TMaskEdit
          Left = 283
          Top = 65
          Width = 122
          Height = 21
          TabOrder = 16
        end
        object medt_Tuesday: TMaskEdit
          Left = 283
          Top = 88
          Width = 122
          Height = 21
          TabOrder = 17
        end
        object medt_Wednesday: TMaskEdit
          Left = 283
          Top = 111
          Width = 122
          Height = 21
          TabOrder = 18
        end
        object medt_thursday: TMaskEdit
          Left = 283
          Top = 135
          Width = 122
          Height = 21
          TabOrder = 19
        end
        object medt_Friday: TMaskEdit
          Left = 283
          Top = 158
          Width = 122
          Height = 21
          TabOrder = 20
        end
        object medt_saturday: TMaskEdit
          Left = 283
          Top = 181
          Width = 122
          Height = 21
          TabOrder = 21
        end
      end
      object CB_ShowDeptWiseDoctor: TCheckBox
        Left = 445
        Top = 53
        Width = 142
        Height = 17
        Caption = 'Show Dept. Wise Doctor'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = CB_ShowDeptWiseDoctorClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BB_Save: TBitBtn
      Left = 604
      Top = 0
      Width = 78
      Height = 33
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
      TabOrder = 0
      OnClick = BB_SaveClick
    end
    object BB_Close: TBitBtn
      Left = 682
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
      TabOrder = 1
      OnClick = BB_CloseClick
    end
    object BB_New: TBitBtn
      Left = 526
      Top = 0
      Width = 78
      Height = 33
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
      TabOrder = 2
      OnClick = BB_NewClick
    end
  end
  object QueryDep: TOraQuery
    SQL.Strings = (
      
        'Select DEPT_DEPID DEPID,DEPT_DEPCODE DEPCODE,DEPT_DEPNAME DEPNAM' +
        'E'
      'From HS_DEPT_Department where DEPT_DEPTYPE='#39'C'#39
      'Order by DEPT_DepName'
      '')
    Left = 532
    Top = 160
  end
  object QueryDoc: TOraQuery
    SQL.Strings = (
      
        'Select DOCT_DOCID DOCID,DOCT_DOCCODE DOCCODE,DOCT_DOCNAME DOCNam' +
        'e,DOCT_ISACTIVE ISACTIVE From HS_DOCT_DOCTOR'
      'Where DOCT_ISACTIVE='#39'Y'#39' '
      ''
      'Order by DOCT_DOCNAME')
    Left = 500
    Top = 360
  end
  object DataSourceQueryDep: TDataSource
    DataSet = QueryDep
    Left = 548
    Top = 176
  end
  object DS_QueryDoc: TDataSource
    DataSet = QueryDoc
    Left = 548
    Top = 376
  end
  object Query_DoctorRoutine: TOraQuery
    SQL.Strings = (
      'Select * From VW_HS_SETUP_DOCTORROUTINE'
      ''
      ''
      ''
      '')
    Left = 101
    Top = 112
  end
  object DS_DoctorRoutine: TDataSource
    DataSet = Query_DoctorRoutine
    Left = 117
    Top = 112
  end
  object Query_DepName: TOraQuery
    SQL.Strings = (
      
        'Select DEPT_DEPID DEPID,DEPT_DEPCODE DEPCODE,DEPT_DEPNAME DEPNAM' +
        'E'
      'From HS_DEPT_Department where DEPT_DEPTYPE='#39'C'#39
      'Order by DEPT_DepName'
      '')
    Left = 125
    Top = 326
  end
  object DS_DOCName: TDataSource
    DataSet = Query_DocName
    Left = 149
    Top = 246
  end
  object Query_DocName: TOraQuery
    SQL.Strings = (
      
        'Select DORO_DOCID DOCID,(Select DOCT_DOCNAME From HS_DOCT_DOCTOR' +
        ' where DOCT_DOCID=DORO_DOCID) DOCName '
      'From HS_DORO_DOCTORROUTINE'
      'Order by DOCNAME')
    Left = 124
    Top = 222
  end
  object QueryUnit: TOraQuery
    SQL.Strings = (
      'Select Distinct DORO_Unit UNIT from HS_DORO_DOCTORROUTINE')
    Left = 460
    Top = 150
  end
  object DS_DEPNAME: TDataSource
    DataSet = Query_DepName
    Left = 156
    Top = 358
  end
  object DataSourceQueryUnit: TDataSource
    DataSet = QueryUnit
    Left = 468
    Top = 142
  end
  object Query_Blank: TOraQuery
    Left = 60
    Top = 248
  end
end
