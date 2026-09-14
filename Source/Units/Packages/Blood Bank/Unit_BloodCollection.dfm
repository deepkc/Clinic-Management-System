object Form_BloodCollection: TForm_BloodCollection
  Left = 0
  Top = 0
  Caption = 'Blood Collection'
  ClientHeight = 574
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 574
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 0
      Top = 35
      Width = 794
      Height = 535
      ActivePage = ts_New
      TabOrder = 1
      object ts_BloodCollection: TTabSheet
        Caption = 'Blood Collection'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Shape1: TShape
          Left = 0
          Top = 2
          Width = 574
          Height = 69
          Brush.Color = clBtnFace
          Pen.Color = clAppWorkSpace
          Shape = stRoundRect
        end
        object Btn_view: TSpeedButton
          Left = 172
          Top = 40
          Width = 75
          Height = 22
          Caption = '&View (F4)'
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
            3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
            33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
            333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
          OnClick = Btn_viewClick
        end
        object SPButtonRefresh: TSpeedButton
          Left = 704
          Top = 41
          Width = 57
          Height = 22
          Caption = '&Refresh'
          Flat = True
        end
        object Shape5: TShape
          Left = 579
          Top = 3
          Width = 206
          Height = 69
          Brush.Color = clBtnFace
          Pen.Color = clActiveBorder
          Shape = stRoundRect
        end
        object Label24: TLabel
          Left = 600
          Top = 44
          Width = 62
          Height = 13
          Caption = 'Include Days'
        end
        object Label23: TLabel
          Left = 600
          Top = 10
          Width = 46
          Height = 16
          Caption = 'Today'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label78: TLabel
          Left = 5
          Top = 16
          Width = 54
          Height = 13
          Caption = 'Patient No:'
        end
        object Btn_Refresh: TSpeedButton
          Left = 712
          Top = 37
          Width = 61
          Height = 25
          Caption = '&Refresh'
          OnClick = Btn_RefreshClick
        end
        object btn_Todays: TSpeedButton
          Left = 726
          Top = 9
          Width = 21
          Height = 21
          Caption = 'BS'
          OnClick = btn_TodaysClick
        end
        object EditSearch: TEdit
          Left = 63
          Top = 14
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 0
        end
        object CheckBoxExtended: TCheckBox
          Left = 64
          Top = 43
          Width = 106
          Height = 17
          Caption = '&Extended Search'
          TabOrder = 1
        end
        object EditDay: TEdit
          Left = 666
          Top = 39
          Width = 27
          Height = 21
          Color = clInactiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = '7'
        end
        object UpDown1: TUpDown
          Left = 693
          Top = 39
          Width = 16
          Height = 21
          Associate = EditDay
          Position = 7
          TabOrder = 3
        end
        object DateEditX1: TDateEditX
          Left = 661
          Top = 9
          Width = 64
          Height = 21
          TabOrder = 4
          ControlData = {
            545046300A5444617465456469745200044C65667403950203546F7002090577
            6964746802400B4461746541442E5965617203DE070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902170B4461746556532E59656172031708
            0C4461746556532E4D6F6E746802080A4461746556532E446179020705436F6C
            6F720708636C53696C7665720000}
        end
        object EditPatientNo: TEdit
          Left = 1
          Top = 76
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 5
          OnKeyPress = EditPatientNoKeyPress
        end
        object EditPatientName: TEdit
          Left = 70
          Top = 76
          Width = 137
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 6
          OnKeyPress = EditPatientNameKeyPress
        end
        object EditSBagNo: TEdit
          Left = 208
          Top = 76
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 7
          OnKeyPress = EditSBagNoKeyPress
        end
        object EditSBagQty: TEdit
          Left = 265
          Top = 76
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 8
          OnKeyPress = EditSBagQtyKeyPress
        end
        object EditCollnDate: TEdit
          Left = 311
          Top = 76
          Width = 77
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 9
          OnKeyPress = EditCollnDateKeyPress
        end
        object EditExpDate: TEdit
          Left = 389
          Top = 76
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 10
          OnKeyPress = EditExpDateKeyPress
        end
        object EditGroup: TEdit
          Left = 459
          Top = 76
          Width = 37
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 11
          OnKeyPress = EditGroupKeyPress
        end
        object EditType: TEdit
          Left = 495
          Top = 76
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 12
          OnKeyPress = EditTypeKeyPress
        end
        object EditStatus: TEdit
          Left = 582
          Top = 76
          Width = 35
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 13
          OnKeyPress = EditStatusKeyPress
        end
        object EditRefBagNo: TEdit
          Left = 618
          Top = 76
          Width = 61
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 14
          OnKeyPress = EditRefBagNoKeyPress
        end
        object EditBloodSource: TEdit
          Left = 679
          Top = 76
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          Color = clInactiveBorder
          TabOrder = 15
          OnKeyPress = EditBloodSourceKeyPress
        end
        object GridLedger: TDBGrid
          Left = 0
          Top = 98
          Width = 1090
          Height = 378
          DataSource = ds_BloodCollection
          FixedColor = clWhite
          Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 16
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = GridLedgerDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'BLCO_PATIENTID'
              Title.Alignment = taCenter
              Title.Caption = 'Patient No'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PATIENTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Pt. Name'
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODBAGNO'
              Title.Alignment = taCenter
              Title.Caption = 'Bag No'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BAGQTY'
              Title.Alignment = taCenter
              Title.Caption = 'Bag Qty.'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_COLLNDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Colln Date'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_EXPDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Exp. Date'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODGROUP'
              Title.Alignment = taCenter
              Title.Caption = 'Group '
              Width = 36
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODTYPE'
              Title.Alignment = taCenter
              Title.Caption = 'Type'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_REFBAGNO'
              Title.Alignment = taCenter
              Title.Caption = 'Ref. Bag No'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODSOURCE'
              Title.Alignment = taCenter
              Title.Caption = 'Blood Source'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODBAGNO1'
              Title.Alignment = taCenter
              Title.Caption = 'Bag No 1'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODBAGNO2'
              Title.Alignment = taCenter
              Title.Caption = 'Bag No 2'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_BLOODBAGNO3'
              Title.Alignment = taCenter
              Title.Caption = 'Bag No 3'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_ORGID'
              Title.Alignment = taCenter
              Title.Caption = 'User Name'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BLCO_DATAPOSTBY'
              Title.Alignment = taCenter
              Title.Caption = 'Modify By'
              Visible = True
            end>
        end
      end
      object ts_New: TTabSheet
        Caption = 'New Blood Collection'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 366
          Height = 509
          Color = clWhite
          ParentBackground = False
          ParentColor = False
          TabOrder = 0
          object Label5: TLabel
            Left = 11
            Top = 24
            Width = 50
            Height = 13
            Caption = 'Patient No'
          end
          object Label6: TLabel
            Left = 11
            Top = 51
            Width = 27
            Height = 13
            Caption = 'Name'
          end
          object Label8: TLabel
            Left = 12
            Top = 101
            Width = 38
            Height = 13
            Caption = 'Bag No.'
          end
          object Label21: TLabel
            Left = 11
            Top = 123
            Width = 49
            Height = 13
            Caption = 'Colln.Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label9: TLabel
            Left = 11
            Top = 151
            Width = 47
            Height = 13
            Caption = 'Exp. Date'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label106: TLabel
            Left = 11
            Top = 177
            Width = 26
            Height = 13
            Caption = 'Ward'
          end
          object Label10: TLabel
            Left = 11
            Top = 200
            Width = 33
            Height = 13
            Caption = 'Source'
          end
          object Label12: TLabel
            Left = 245
            Top = 24
            Width = 10
            Height = 13
            Caption = 'or'
          end
          object Label16: TLabel
            Left = 11
            Top = 266
            Width = 58
            Height = 13
            Caption = 'Blood Group'
          end
          object Label44: TLabel
            Left = 11
            Top = 292
            Width = 53
            Height = 13
            Caption = 'Blood Type'
          end
          object Label22: TLabel
            Left = 11
            Top = 316
            Width = 41
            Height = 13
            Caption = 'Remarks'
          end
          object Label3: TLabel
            Left = 12
            Top = 76
            Width = 39
            Height = 13
            Caption = 'Bag Qty'
          end
          object LabelName: TLabel
            Left = 71
            Top = 50
            Width = 33
            Height = 13
            Caption = 'Name'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Btn_Coll: TSpeedButton
            Left = 137
            Top = 121
            Width = 23
            Height = 21
            Caption = 'BS'
            OnClick = Btn_CollClick
          end
          object btn_Exp: TSpeedButton
            Left = 137
            Top = 145
            Width = 23
            Height = 21
            Caption = 'BS'
            OnClick = btn_ExpClick
          end
          object Label11: TLabel
            Left = 71
            Top = 222
            Width = 10
            Height = 13
            Caption = 'or'
          end
          object EditHosNo: TEdit
            Left = 261
            Top = 20
            Width = 101
            Height = 21
            TabOrder = 1
            OnExit = EditHosNoExit
            OnKeyPress = EditHosNoKeyPress
          end
          object DBLCB_Inpatient: TDBLookupComboBox
            Left = 70
            Top = 20
            Width = 169
            Height = 21
            DropDownWidth = 250
            KeyField = 'BLCO_PATIENTID'
            ListField = 'PATIENTNAME'
            ListSource = ds_patient
            TabOrder = 0
            OnClick = DBLCB_InpatientClick
            OnKeyPress = DBLCB_InpatientKeyPress
          end
          object EditBagQty: TEdit
            Left = 69
            Top = 70
            Width = 97
            Height = 21
            TabOrder = 2
            Text = '0'
            OnKeyPress = EditBagQtyKeyPress
          end
          object EditBagNo: TEdit
            Left = 70
            Top = 97
            Width = 96
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 3
            OnExit = EditBagNoExit
            OnKeyPress = EditBagNoKeyPress
          end
          object EditBagNo1: TEdit
            Left = 168
            Top = 97
            Width = 68
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 4
            Visible = False
            OnKeyPress = EditBagNo1KeyPress
          end
          object EditBagNo2: TEdit
            Left = 237
            Top = 97
            Width = 63
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 5
            Visible = False
            OnKeyPress = EditBagNo2KeyPress
          end
          object EditBagNo3: TEdit
            Left = 302
            Top = 97
            Width = 60
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 6
            Visible = False
            OnKeyPress = EditBagNo3KeyPress
          end
          object dex_Collection: TDateEditX
            Left = 69
            Top = 121
            Width = 65
            Height = 21
            TabOrder = 7
            ControlData = {
              545046300A5444617465456469745200044C656674024503546F7002790B4461
              746541442E5965617203DE070C4461746541442E4D6F6E7468020B0A44617465
              41442E44617902130B4461746556532E596561720317080C4461746556532E4D
              6F6E746802080A4461746556532E44617902030000}
          end
          object dex_Expire: TDateEditX
            Left = 69
            Top = 145
            Width = 65
            Height = 21
            TabOrder = 8
            ControlData = {
              545046300A5444617465456469745200044C656674024503546F700391000B44
              61746541442E5965617203DE070C4461746541442E4D6F6E7468020B0A446174
              6541442E44617902130B4461746556532E596561720317080C4461746556532E
              4D6F6E746802080A4461746556532E44617902030000}
          end
          object CMBWard: TDBLookupComboBox
            Left = 69
            Top = 173
            Width = 293
            Height = 21
            KeyField = 'WardCode'
            ListField = 'WardName'
            ListFieldIndex = 1
            ListSource = ds_ward
            TabOrder = 9
            OnKeyPress = CMBWardKeyPress
          end
          object EditSource: TEdit
            Left = 69
            Top = 200
            Width = 293
            Height = 21
            TabOrder = 10
          end
          object DBLCB_Source: TDBLookupComboBox
            Left = 70
            Top = 237
            Width = 293
            Height = 21
            KeyField = 'BLCO_BLOODCOLLECTIONID'
            ListField = 'PATIENTNAME'
            ListFieldIndex = 1
            ListSource = ds_Source
            TabOrder = 11
            OnKeyPress = DBLCB_SourceKeyPress
          end
          object ComboBoxGroup: TComboBox
            Left = 70
            Top = 262
            Width = 98
            Height = 21
            TabOrder = 12
            OnKeyPress = ComboBoxGroupKeyPress
            Items.Strings = (
              'A +ve'
              'A -ve'
              'B +ve'
              'B -ve'
              'AB +ve'
              'AB -ve'
              'O +ve'
              'O -ve')
          end
          object ComboBoxType: TComboBox
            Left = 70
            Top = 289
            Width = 98
            Height = 21
            TabOrder = 13
            OnKeyPress = ComboBoxTypeKeyPress
            Items.Strings = (
              'Whole'
              'Packed Cell'
              'Platelates'
              'Plazma')
          end
          object MemoRemark: TMemo
            Left = 71
            Top = 316
            Width = 231
            Height = 83
            Lines.Strings = (
              '')
            TabOrder = 14
          end
          object GroupBox2: TGroupBox
            Left = 71
            Top = 408
            Width = 185
            Height = 92
            Caption = 'Status'
            TabOrder = 15
            object RB_Return: TRadioButton
              Left = 8
              Top = 33
              Width = 53
              Height = 17
              Caption = 'Return'
              TabOrder = 0
            end
            object RB_Used: TRadioButton
              Left = 8
              Top = 51
              Width = 103
              Height = 17
              Caption = 'Used for Patient'
              TabOrder = 1
            end
            object RB_Collection: TRadioButton
              Left = 8
              Top = 16
              Width = 74
              Height = 17
              Caption = 'Collection'
              Checked = True
              TabOrder = 2
              TabStop = True
            end
            object RB_Transfer: TRadioButton
              Left = 8
              Top = 68
              Width = 90
              Height = 17
              Caption = 'Transfer To'
              TabOrder = 3
            end
          end
        end
      end
    end
    object pnl2: TPanel
      Left = 0
      Top = -4
      Width = 794
      Height = 33
      Color = clActiveBorder
      ParentBackground = False
      TabOrder = 0
      object btn_Save: TBitBtn
        Left = 627
        Top = 3
        Width = 86
        Height = 31
        Caption = 'Save'
        DoubleBuffered = True
        Glyph.Data = {
          96010000424D9601000000000000760000002800000018000000180000000100
          0400000000002001000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD88888888888888888DDDDDD0
          000800000008000088DDDD03333087708880333308DDDD033330877088803333
          08DDDD03333087708880333308DDDD03333087708880333308DDDD0333308770
          8880333308DDDD03333088808880333308DDDD03333000000007333308DDDD03
          333333333333333308DDDD03333333333333333308DDDD033330000000033333
          08DDDD03330FFFFFFFF0333308DDDD03330FFFFFFFF0333308DDDD03330FFFFF
          FFF0333308DDDD03330FFFFFFFF0333308DDDD03330FFFFFFFF0333308DDDD03
          330FFFFFFFF0308308DDDD03330FFFFFFFF0308308DDDD000000000000000800
          0DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = btn_SaveClick
      end
      object btn_exit: TBitBtn
        Left = 711
        Top = 3
        Width = 83
        Height = 31
        Caption = 'Exit'
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
        OnClick = btn_exitClick
      end
      object btn_new: TBitBtn
        Left = 527
        Top = 3
        Width = 101
        Height = 31
        Caption = 'New Collection'
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
        OnClick = btn_newClick
      end
    end
  end
  object oraquery_PatientNo: TOraQuery
    SQL.Strings = (
      
        'Select BLCO_PatientID,(select patientname from patientmain where' +
        ' patientid=BB_BLCO_BLOODCOLLECTION.BLCO_PatientID) Patientname f' +
        'rom BB_BLCO_BLOODCOLLECTION')
    Left = 526
    Top = 153
  end
  object ds_patient: TDataSource
    DataSet = oraquery_PatientNo
    Left = 416
    Top = 24
  end
  object OraQuery_Ward: TOraQuery
    SQL.Strings = (
      'Select * From Ward'
      'Order by wardcode')
    Left = 302
    Top = 169
  end
  object ds_ward: TDataSource
    DataSet = OraQuery_Ward
    Left = 448
    Top = 168
  end
  object OraQuery_Source: TOraQuery
    SQL.Strings = (
      
        'Select BLCO_BloodCollectionId,BLCO_PatientID,BLCO_BloodBagNo,(se' +
        'lect patientname from patientmain where patientid=BB_BLCO_BLOODC' +
        'OLLECTION.BLCO_PatientID) Patientname From'
      
        ' BB_BLCO_BLOODCOLLECTION where BLCO_Status='#39'C'#39' Order By BLCO_Pat' +
        'ientID')
    Left = 406
    Top = 228
  end
  object ds_Source: TDataSource
    DataSet = OraQuery_Source
    Left = 485
    Top = 212
  end
  object OraQuery_Save: TOraQuery
    Left = 566
    Top = 73
  end
  object OraQuery_update: TOraQuery
    Left = 550
    Top = 217
  end
  object Oraquery_HosNo: TOraQuery
    Left = 678
    Top = 217
  end
  object OraQuery_BloodCollection: TOraQuery
    SQL.Strings = (
      
        'Select BLCO_BLOODCOLLECTIONID,BLCO_PATIENTID,(select patientname' +
        ' from patientmain where patientid=BB_BLCO_BLOODCOLLECTION.blco_p' +
        'atientid)patientname,BLCO_BLOODBAGNO,BLCO_BLOODBAGNO1,BLCO_BLOOD' +
        'BAGNO2,BLCO_BLOODBAGNO3,BLCO_REFBAGNO,BLCO_BAGQTY,BLCO_COLLNDATE' +
        ','
      
        'BLCO_COLLNTIME,BLCO_DATAPOSTBY,BLCO_EXPDATE,BLCO_WARDCODE,BLCO_B' +
        'LOODSOURCE,BLCO_BLOODGROUP,BLCO_BLOODTYPE,BLCO_REMARKS,'
      
        '(Select UserName From UserMain where UserId=BB_BLCO_BLOODCOLLECT' +
        'ION.BLCO_DATAPOSTBY) as UserName,'
      
        '(Select UserName From UserMain where UserId=BB_BLCO_BLOODCOLLECT' +
        'ION.BLCO_DATAPOSTBY) as ModifyBy,'
      'BLCO_DATAPOSTDATE,BLCO_STATUS From BB_BLCO_BLOODCOLLECTION '
      'Where BLCO_COLLNDATE>=:FromDate'
      'and BLCO_COLLNDATE <=:ToDate'
      'and 1=1'
      'and 1=1')
    Left = 350
    Top = 89
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FromDate'
      end
      item
        DataType = ftUnknown
        Name = 'ToDate'
      end>
  end
  object ds_BloodCollection: TDataSource
    DataSet = OraQuery_BloodCollection
    Left = 461
    Top = 60
  end
end
