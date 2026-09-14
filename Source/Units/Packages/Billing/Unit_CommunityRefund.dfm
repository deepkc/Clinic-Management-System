object Form_CommunityRefund: TForm_CommunityRefund
  Left = 416
  Top = 198
  BorderIcons = [biSystemMenu]
  Caption = 'Community Refund'
  ClientHeight = 490
  ClientWidth = 911
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PC_CommunityRefundList: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 905
    Height = 426
    ActivePage = TS_CommunityRefundEntry
    Align = alClient
    TabOrder = 2
    object TS_CommunityRefundDisplay: TTabSheet
      Caption = 'Community Refund List'
      DesignSize = (
        897
        398)
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 894
        Height = 67
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        DesignSize = (
          894
          67)
        object Label2: TLabel
          Left = 4
          Top = 36
          Width = 55
          Height = 13
          Caption = 'Hospital No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 7
          Top = 50
          Width = 41
          Height = 13
          Caption = 'Or BillNo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 139
          Top = 43
          Width = 15
          Height = 13
          Caption = '     '
          Color = clRed
          ParentColor = False
          Visible = False
        end
        object Shape1: TShape
          AlignWithMargins = True
          Left = 731
          Top = 0
          Width = 161
          Height = 67
          Anchors = [akTop, akRight]
          Brush.Color = clBtnFace
          Shape = stRoundRect
        end
        object LabelScheme1: TLabel
          Left = 243
          Top = 38
          Width = 39
          Height = 14
          Caption = 'Scheme'
          Color = clInactiveBorder
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Visible = False
        end
        object Shape5: TShape
          AlignWithMargins = True
          Left = 588
          Top = 0
          Width = 138
          Height = 67
          Anchors = [akTop, akRight]
          Brush.Color = clBtnFace
          Shape = stRoundRect
          ExplicitLeft = 608
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 610
          Top = 48
          Width = 13
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'To'
          Color = 11319485
          ParentColor = False
          ExplicitLeft = 708
        end
        object Label13: TLabel
          AlignWithMargins = True
          Left = 598
          Top = 25
          Width = 23
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'From'
          Color = 11319485
          ParentColor = False
          ExplicitLeft = 696
        end
        object Label29: TLabel
          AlignWithMargins = True
          Left = 738
          Top = 16
          Width = 36
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Today'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DEX_Today: TDateEditX
          AlignWithMargins = True
          Left = 781
          Top = 11
          Width = 90
          Height = 21
          TabOrder = 9
          ControlData = {
            545046300A5444617465456469745200044C656674030D0303546F70020B0577
            69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
            0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
        end
        object EditPatientID: TEdit
          Left = 64
          Top = 36
          Width = 163
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPatientIDKeyPress
        end
        object Btn_Today: TButton
          AlignWithMargins = True
          Left = 846
          Top = 12
          Width = 27
          Height = 18
          Anchors = [akTop, akRight]
          Caption = 'BS'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Btn_TodayClick
        end
        object CmbScheme: TDBLookupComboBox
          Left = 290
          Top = 35
          Width = 279
          Height = 21
          DropDownWidth = 230
          KeyField = 'SCHEMEID'
          ListField = 'SCHEMENAME'
          ListFieldIndex = 1
          TabOrder = 2
          TabStop = False
          Visible = False
          OnKeyDown = CmbSchemeKeyDown
        end
        object DateEditX_To: TDateEditX
          AlignWithMargins = True
          Left = 625
          Top = 44
          Width = 90
          Height = 21
          TabOrder = 3
          ControlData = {
            545046300A5444617465456469745200044C65667403710203546F70022C0577
            69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
            0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
        end
        object DateEditX_From: TDateEditX
          AlignWithMargins = True
          Left = 625
          Top = 22
          Width = 90
          Height = 21
          TabOrder = 4
          ControlData = {
            545046300A5444617465456469745200044C65667403710203546F7002160577
            69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
            0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
        end
        object Btn_From: TButton
          AlignWithMargins = True
          Left = 693
          Top = 24
          Width = 22
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'AD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Btn_FromClick
        end
        object Btn_To: TButton
          AlignWithMargins = True
          Left = 691
          Top = 46
          Width = 22
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'AD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Btn_ToClick
        end
        object CheckBox_Search: TCheckBox
          AlignWithMargins = True
          Left = 625
          Top = 3
          Width = 96
          Height = 15
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'Search By Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
        end
        object BB_Refresh: TBitBtn
          AlignWithMargins = True
          Left = 781
          Top = 36
          Width = 91
          Height = 26
          Anchors = [akTop, akRight]
          Caption = '&Refresh (F5)'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFC59D7E
            FFFEFEFFFFFFFFFFFFFDFCFBE1CDBDBD906CAE7649A66939B07A4FC49C7CF2E9
            E2FFFFFFFFFFFFFFFFFFFFFFFFA46534CBA78BFFFFFFE1CCBCAC7144B8865DCE
            A684D8B697DBB999D3AC8AC3956FA96D3FDFC8B7FFFFFFFFFFFFFFFFFFA56838
            B98860B48158B48056E3CAB4ECDAC9E7D1BCE3C9B0DEBEA0D2AB88CEA582D3AE
            8EA96E40F0E6DEFFFFFFFFFFFFA7693AF1E4D8D4B295F4E9E0F3E8DDEDDCCCD2
            AD8FB37D53A66838A66939A66A3AA96D3DB0784CC59D7DFFFFFFFFFFFFA66839
            F6EEE6F5ECE3F5EDE4E6D2C1B37E54B88861ECDED4FFFFFFD9BFABAF754AB67C
            4FA76B3BA76B3BFFFFFFFFFFFFA56837F6EEE6EBD7C4EAD9C9A46635D9BFABFF
            FFFFFFFFFFFFFFFFFBF8F6AD7346E1C4AEC89E7CA46534FDFCFBFFFFFFA56736
            F5EDE5F6EDE5F5ECE4D7B89DB17A4FF9F5F2FFFFFFFFFFFFFFFFFFFFFFFFFBF6
            F2F4E8DFA56736FBF8F5FFFFFFA66939A46635A46635A56636A56736A56737BD
            8F6CF5EDE8F6F1ECF6F1ECF6F1ECF6F1ECF6F1ECF5EEE9FFFFFFFFFFFFFAF7F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC69E80A46534AF784CB27B52B27B
            52B27C52A46534FCFAF9FFFFFFA56736D9BDA7F7EEE8FAF6F2FEFEFDFFFFFFFF
            FFFFFEFDFCBB8B66D1AE91F6EEE7F2E6DBF6EEE6A76C3DFCFAF8FFFFFFA46636
            A86C3DDDBBA2AE764BF3EAE3FFFFFFFFFFFFFFFFFFDDC5B3A46635E9D7C7EBD8
            C6F5ECE3A86D3EFBF9F7FFFFFFAA6F41AB7041A96D3DAA7042D5B8A2F6F0EBE6
            D5C8B7865FBC8D67EBDBCDF5EBE2F6EEE6F6EEE6A96D3EFBF8F6FFFFFFCAA487
            C0916AC59872A86B3CA46635A86C3CBA8B65D9BBA1F1E4D8F2E6DBF3E8DDCEA8
            89EAD8C8A96E3FFAF7F5FFFFFFF0E6DEA96F41D3AD8CDCBD9DDDBEA1E5CBB4E9
            D3BFEEDDCCF0E2D5E7D2BFB27C52BB8D68AE7549A56837FAF7F4FFFFFFFFFFFF
            E2CFC0A96D3FC1926BD3B08FDFC2A8DEC1A8D4B193BC8C66AA7043E0CAB9FFFF
            FFDBC2AEA46534FAF6F3FFFFFFFFFFFFFFFFFFF5EDE8C8A184B27D53A86C3DB0
            784DBE916EE1CDBDFDFCFBFFFFFFFFFFFFFFFFFFD4B69FF9F5F2}
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 8
          OnClick = BB_RefreshClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 1
        Top = 68
        Width = 994
        Height = 331
        DataSource = DS_List
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'PatientId'
            Title.Alignment = taCenter
            Title.Caption = 'Hospital No.'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InpatientId'
            Title.Alignment = taCenter
            Title.Caption = 'Inpatient No.'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundReceiptNo'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Receipt No'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundDate'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Date'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundTime'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Time'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundType'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Type'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Scheme'
            Title.Alignment = taCenter
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserName'
            Title.Alignment = taCenter
            Title.Caption = 'User Name'
            Width = 86
            Visible = True
          end>
      end
    end
    object TS_CommunityRefundEntry: TTabSheet
      Caption = 'Community Refund Entry'
      ImageIndex = 1
      object Label_HosNoCap: TLabel
        Left = 236
        Top = 72
        Width = 61
        Height = 13
        Caption = 'Hospital No :'
      end
      object Label6: TLabel
        Left = 62
        Top = 99
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'Name :'
      end
      object LabelName: TLabel
        Left = 105
        Top = 99
        Width = 38
        Height = 16
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 29
        Top = 43
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Refund Date :'
      end
      object LabelDisStatus: TLabel
        Left = 209
        Top = 41
        Width = 233
        Height = 16
        Alignment = taCenter
        Caption = 'Patient is already discharge on date '
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Label14: TLabel
        Left = 29
        Top = 72
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inpatient No : '
      end
      object Label7: TLabel
        Left = 56
        Top = 139
        Width = 40
        Height = 14
        Alignment = taRightJustify
        Caption = 'Bill Info :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 376
        Top = 99
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Age/Sex :'
      end
      object Label_AgeSex: TLabel
        Left = 432
        Top = 99
        Width = 38
        Height = 16
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 52
        Top = 120
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = 'Address :'
      end
      object Label_Address: TLabel
        Left = 104
        Top = 120
        Width = 38
        Height = 16
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 533
        Top = 96
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Admn. Date:'
      end
      object Label_AdmnDate: TLabel
        Left = 600
        Top = 96
        Width = 38
        Height = 16
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 542
        Top = 119
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dis. Date :'
      end
      object Label_DisDate: TLabel
        Left = 600
        Top = 119
        Width = 38
        Height = 16
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 48
        Top = 364
        Width = 48
        Height = 13
        Alignment = taRightJustify
        Caption = 'Remarks :'
      end
      object Comunity: TLabel
        Left = 51
        Top = 312
        Width = 45
        Height = 14
        Alignment = taRightJustify
        Caption = 'Scheme :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 31
        Top = 340
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Refund Amt. :'
      end
      object Label8: TLabel
        Left = 4
        Top = 285
        Width = 92
        Height = 13
        Alignment = taRightJustify
        Caption = 'Reference Bill No. :'
      end
      object Label16: TLabel
        Left = 509
        Top = 282
        Width = 178
        Height = 13
        Alignment = taRightJustify
        Caption = 'Prev. Community Refund  Info :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 287
        Top = 285
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bill Amount :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label_BillAmount: TLabel
        Left = 364
        Top = 285
        Width = 26
        Height = 13
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label_BillingStatus: TLabel
        Left = 858
        Top = 96
        Width = 32
        Height = 41
        Alignment = taCenter
        Caption = 'IP'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clFuchsia
        Font.Height = -35
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object Edit_InpatientNo: TEdit
        Left = 303
        Top = 65
        Width = 118
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        OnKeyDown = Edit_InpatientNoKeyDown
      end
      object RadioButton_OPBilling: TRadioButton
        Left = 301
        Top = 10
        Width = 111
        Height = 16
        Caption = '&OP Billing ( F2 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton_OPBillingClick
      end
      object RadioButton_IPBilling: TRadioButton
        Left = 101
        Top = 10
        Width = 106
        Height = 16
        Caption = '&IP Billing ( F1 )'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = RadioButton_IPBillingClick
      end
      object DateEditXRefundDate: TDateEditX
        Left = 104
        Top = 39
        Width = 89
        Height = 21
        TabOrder = 3
        ControlData = {
          545046300A5444617465456469745200044C656674026803546F700227057769
          64746802590B4461746541442E5965617203D7070C4461746541442E4D6F6E74
          6802030A4461746541442E44617902160B4461746556532E59656172030F080C
          4461746556532E4D6F6E7468020C0A4461746556532E44617902080852656164
          4F6E6C79090000}
      end
      object BitBtnDate: TBitBtn
        Left = 170
        Top = 40
        Width = 22
        Height = 18
        Caption = 'AD'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 4
        OnClick = BitBtnDateClick
      end
      object Edit_HospitalNo: TEdit
        Left = 104
        Top = 65
        Width = 118
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnExit = Edit_HospitalNoExit
        OnKeyDown = Edit_HospitalNoKeyDown
        OnKeyPress = Edit_HospitalNoKeyPress
      end
      object DBGrid2: TDBGrid
        Left = 99
        Top = 139
        Width = 798
        Height = 136
        DataSource = DS_ReferenceBillNo
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'BILLNO'
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BILLDATE'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BILLTIME'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Time'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETTOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Net Total'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCHEME'
            Title.Alignment = taCenter
            Title.Caption = 'Scheme'
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USERNAME'
            Title.Alignment = taCenter
            Title.Caption = 'User Name'
            Width = 75
            Visible = True
          end>
      end
      object EditRemarks: TEdit
        Left = 104
        Top = 360
        Width = 382
        Height = 21
        MaxLength = 30
        TabOrder = 7
        OnKeyDown = EditRemarksKeyDown
      end
      object Cmb_Scheme: TDBLookupComboBox
        Left = 104
        Top = 309
        Width = 382
        Height = 21
        KeyField = 'SCHEMEID'
        ListField = 'SCHEMENAME'
        ListFieldIndex = 1
        ListSource = DS_Scheme
        TabOrder = 8
        OnKeyDown = Cmb_SchemeKeyDown
        OnKeyPress = Cmb_SchemeKeyPress
      end
      object EditRefAmount: TEdit
        Left = 104
        Top = 336
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
        OnExit = EditRefAmountExit
        OnKeyDown = EditRefAmountKeyDown
        OnKeyPress = EditRefAmountKeyPress
      end
      object Edit_ReferenceNo: TEdit
        Left = 103
        Top = 282
        Width = 174
        Height = 21
        Color = clSilver
        MaxLength = 17
        ReadOnly = True
        TabOrder = 10
        OnKeyDown = Edit_ReferenceNoKeyDown
        OnKeyPress = Edit_ReferenceNoKeyPress
      end
      object DBGrid3: TDBGrid
        Left = 504
        Top = 297
        Width = 393
        Height = 101
        DataSource = DS_CommRefundBillList
        TabOrder = 11
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'BILLNO'
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BILLDATE'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BILLTIME'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Time'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BILLTYPE'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Type'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMOUNT'
            Title.Alignment = taCenter
            Title.Caption = 'Amount '
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USERNAME'
            Title.Alignment = taCenter
            Title.Caption = 'User Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCHEMENAME'
            Title.Alignment = taCenter
            Title.Caption = 'Scheme'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMARKS'
            Title.Alignment = taCenter
            Title.Caption = 'Remarks'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFBILLNO'
            Title.Alignment = taCenter
            Title.Caption = 'Ref. Bill No'
            Width = 98
            Visible = True
          end>
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 471
    Width = 911
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 911
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label_DisplayInfo: TLabel
      Left = 5
      Top = 4
      Width = 184
      Height = 23
      Caption = 'Community Refund'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BB_Close: TBitBtn
      AlignWithMargins = True
      Left = 832
      Top = 3
      Width = 79
      Height = 33
      Margins.Left = 0
      Margins.Right = 0
      Align = alRight
      Caption = 'Close'
      DoubleBuffered = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6569BA717FE06B
        6EBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8484849A9A9A8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9BADD7A83E66A80FF273CD9EBECF6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7677C58788D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAA1A1A1A7A7A7797979F0F0F0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CAFAFAFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A1D34D54DE2536EB0B
        20D9E3E3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCEE0E16C0B1B2DE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB8B8B88484847F7F7F727272EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE5E5E5656565C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE9E9F41519BF060EDB0412D87B7DC3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF2C34BA1822C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE6363637070706E6E6E9E9E9E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171716B6B6BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5BBA0002CF03
        09D8080FC1DADAECFFFFFFFFFFFFFFFFFFFFFFFF7A7CC50C21DF9C9DD2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8989896969696F6F6F636363E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF9D
        9D9D747474B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFE1E1FB00001D00106D52326B1FFFFFFFFFFFFFFFF
        FFA9AAD30C28E52733BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6666666A6A6A6C6C6C
        696969FFFFFFFFFFFFFFFFFFBDBDBD797979717171FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9F411
        12B50000D10103CE5A5CB9FFFFFFB1B2D90B1FD40C26DFD2D1E7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEEEEEE626262696969696969888888FFFFFFC4C4C46F6F6F77
        7777DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3F21516B50000D20101C44D4EB8070E
        C30514E16F70BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA646464
        6B6B6B636363818181646464747474949494FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5F5FA2D2DB00001CC0000CC0103D13639B3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F86C6C6C6666666868686A6A6A737373FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2F23236B70207CF0103D20001
        C97777C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
        7373736868686A6A6A6565659B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71
        74CA0F1ED10717E40510DE0E13BA0507C10608CC6162BEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9C6F6F6F7575757171716464646262626767678E
        8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9B9BD24F58D23D57F71D3CFA0D26F01921BFEBEBF6C4C4
        E5191BBE2325D44A4ABBF9F9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2838383909090888888
        7E7E7E6A6A6AF0F0F0D4D4D46868686F6F6F7C7C7CFAFAFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8487D0A2ABF78D9DFF6A
        7FFF3A55F9313BC1EFEFF7FFFFFFFFFFFFFDFDFE5B5CBF4041D1494AC4A2A2D5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9C9C9CBFBFBFB9B9B9A6A6A68F8F8F767676F3F3F3FFFFFFFFFFFFFEFEFE88
        8888787878767676B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8788CCB6BBF5A3ACFB6973E17678C8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC8C8E65555C16061CC5A5ABDADAED9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CCACACAC0C0C09595959A9A9A
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D67F7F7F8383837E7E7EC2C2
        C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEF9192D29A9DE295
        96D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF77C7DC9
        6162C58383CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE5E5E5A4A4A4B0B0B0ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF2F2F29B9B9B848484A3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BB_CloseClick
    end
    object BB_Save: TBitBtn
      AlignWithMargins = True
      Left = 743
      Top = 3
      Width = 89
      Height = 33
      Margins.Left = 0
      Margins.Right = 0
      Align = alRight
      Caption = '&Save (F12)'
      DoubleBuffered = True
      Enabled = False
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA793CC1782CAE733EBD8F65BE
        8F62BD8E62BD8E62BD8E62BD8E62BD8E62BD8E62BC8E62BC8E62BD8E62BC8F64
        AF7641BE7325B87134FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676767373
        737070708B8B8B8A8A8A8A8A8A8A8A8A8989898989898A8A8A89898989898989
        89898989898C8C8C737373707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88B47F1B941A29179D2DCECDEE3E8DEE4E8DFE4E9E0E5EAE1E6EBE1E6
        EBE2E7EDE3E8EDE4E8EEE5E9EED4DDEDA49682EAA218BF7727FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF858585ABABAB8D8D8DDFDFDFE4E4E4E5E5E5E5E5E5
        E6E6E6E7E7E7E7E7E7E9E9E9E9E9E9E9E9E9E9E9E9E1E1E19393939898987474
        74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD9754EDB649AF997FD0D4DCB8
        AEAFABA0A3A4999D9D9394948A8E8D8488867D8180787B786E737C7477C7C9D2
        B4A18AE8A122C88132FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090A9A9
        A9949494D5D5D5AFAFAFA2A2A29A9A9A9494948C8C8C8686867F7F7F79797970
        7070747474CBCBCB9D9D9D9797977D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD09858EFBB52B19C83DCE0E8E2E2DFDFDEDDDEDDDCDDDCDBDCDCDADBDA
        D9DAD9D8D9D9D8D8D8D7DADAD8DBE0E8B4A28CEAA62CCB8437FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF919191AEAEAE999999E2E2E2E2E2E2DEDEDEDDDDDD
        DCDCDCDBDBDBDADADAD9D9D9DADADAD9D9D9DADADAE1E1E19F9F9F9B9B9B8080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD39C5CEFBF5BBAA58DDCDDE5BC
        B4B5B0A6A9AAA0A4A49A9D9C9396958D918F868A8A8285817A7E867F83D2D4DD
        BEAD97EAAC36CB883CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595B2B2
        B2A1A1A1DEDEDEB4B4B4A8A8A8A2A2A29C9C9C9494948E8E8E8888888383837C
        7C7C818181D6D6D6A9A9A9A0A0A0838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD5A05FF0C262BDAA92E4E8F0E0DDDCDBD7D8D8D5D6D7D3D4D4D0D1D1CF
        D0D0CDCDCECBCDCBC8C9CCCACBE2E5EDBFAF9BEDB13ECE8D3FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9A9A9AB6B6B6A6A6A6EAEAEADDDDDDD8D8D8D5D5D5
        D4D4D4D2D2D2CFCFCFCDCDCDCBCBCBC8C8C8CACACAE7E7E7ADADADA6A6A68787
        87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A362F2C569C2AF98ECEEF7EA
        E8E7E6E3E3E4E2E2E2E0E0E1DEDFDFDCDDDDDBDBDCD8DAD9D6D7DCDADAEAEDF5
        C3B3A1EEB645D29144FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DB9B9
        B9ACACACF0F0F0E8E8E8E4E4E4E3E3E3DFDFDFDEDEDEDCDCDCDBDBDBD8D8D8D6
        D6D6DADADAEEEEEEB0B0B0AAAAAA8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDAA664F4C870C9B8A2EDF0F9DAD6D7D2CCCECECACBCAC6C7C7C1C4C2BD
        C1BEBABDBCB5B9B4B0B3B9B6B8E8ECF4CBBDABF0B94DD59747FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9F9F9FBDBDBDB5B5B5F3F3F3D7D7D7CECECECBCBCB
        C7C7C7C2C2C2BEBEBEBCBCBCB6B6B6B0B0B0B7B7B7EEEEEEB9B9B9AEAEAE9090
        90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBAB69F5CD78BDAD98E9ECF6FA
        F9F7FAF9F8FBFAF9FCFBFAFDFCFAFEFDFBFFFEFCFFFEFDFFFFFDFFFFFDEAEDF7
        BDAF9FF2BF56D89D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3C1C1
        C1A9A9A9EEEEEEF8F8F8F8F8F8F9F9F9FAFAFAFCFCFCFCFCFCFDFDFDFEFEFEFF
        FFFFFFFFFFEFEFEFACACACB2B2B2949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDDAD6CF6D388CFA463AD9072A18771A38972A38972A38972A38972A389
        72A38972A38871A38972A18671AD9071CFA76AF4C668DA9F4FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA5A5A5C8C8C89C9C9C8D8D8D858585868686868686
        8787878686868787878686868585858686868383838D8D8D9E9E9EBABABA9797
        97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B16FF3D38FF8C65EE2B76AB0
        A4A0C8BCB0C4B8ADC4B8ADC4B8ADC4B8ACC7BBAFC8BEB3CBC1B5B1A5A1E1B769
        F9C965F2C76FDDA553FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAC8C8
        C8B9B9B9ADADADA4A4A4BBBBBBB7B7B7B7B7B7B6B6B6B5B5B5BABABABCBCBCBF
        BFBFA6A6A6ADADADBCBCBCBBBBBB9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3B572F5D794F5C764DFBD7BBFC1CEDEDEE0D9D9DBD9D9DBD9D9DBDDDD
        DECCCBCEB8B6BBC5C3C7BCBECBE0BF7CF5C96BF2CC76E0AA55FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFADADADCCCCCCBABABAB4B4B4C3C3C3DEDEDED9D9D9
        D9D9D9DADADADDDDDDCCCCCCB6B6B6C5C5C5C1C1C1B6B6B6BCBCBCC1C1C1A0A0
        A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B975F6D999F5CA6AE2C281C7
        C6D1E2E1DFDEDCDBDEDCDBDDDCDAE8E9EAACA096A5814EB4966EA3A3B3EACA87
        F5CB70F3CF7CE2AE5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0CECE
        CEBDBDBDB8B8B8C8C8C8E1E1E1DCDCDCDCDCDCDBDBDBE8E8E89F9F9F7B7B7B91
        9191A8A8A8C1C1C1BFBFBFC3C3C3A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8BD78F7DB9DF6CD70E5C686CDCCD6E7E6E4E3E2E1E3E2E1E3E1E0EAEC
        F0C2B19EECC065E9C882A1A3B7EECE8EF7CE75F5D381E6B35DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5B5B5D1D1D1C0C0C0BCBCBCCECECEE6E6E6E2E2E2
        E2E2E2E1E1E1EEEEEEAEAEAEB5B5B5BDBDBDA8A8A8C4C4C4C1C1C1C6C6C6A9A9
        A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAC07AF9DEA0F8D075E8CA8CD3
        D3DDECECEAE8E8E7E8E8E7E8E7E6F0F4F7C1B2A1E7BD64E8C882A7A7BCF0D294
        F8D27BF8D88AE7B259FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6D4D4
        D4C3C3C3C1C1C1D5D5D5ECECECE8E8E8E8E8E8E8E8E8F4F4F4B0B0B0B2B2B2BD
        BDBDABABABC9C9C9C7C7C7CCCCCCA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFECC480F8E1A5F8D272E9CC8ADADAE2F1F1EFEDEDECEDEDECEDECEBF8FA
        FBB9B1A7B09261C0A980B6B6C5F0D493FAD984EDC36AE9BB78FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBCBCBCD7D7D7C4C4C4C3C3C3DCDCDCF0F0F0EEEEEE
        EDEDEDECECECFAFAFAAEAEAE8B8B8BA2A2A2BABABACACACACCCCCCB8B8B8B4B4
        B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC47BFDEFCEFCE2A2EFDBAFE3
        E8F6FAFEFFF6FAFFF6FAFFF6FBFFFBFFFFE5E9EFC7CBD7D4D6E0E1E5F3F2E0B6
        F2C86FEABB6FFDF8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9EAEA
        EAD8D8D8D5D5D5EAEAEAFEFEFEFBFBFBFAFAFAFBFBFBFFFFFFEBEBEBCDCDCDD8
        D8D8E9E9E9D9D9D9BCBCBCB4B4B4F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE9B861EFCA80F2CC83EECB85E9CC96EFD298EFD298EFD298EFD298EFD1
        97F4D59BF8DA9EF7D99DE9CA93EBC57EEEC67FFDF9F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAEAEAEBFBFBFC2C2C2C1C1C1C4C4C4C9C9C9CACACA
        C9C9C9CACACAC9C9C9CBCBCBD0D0D0D0D0D0C2C2C2BCBCBCBEBEBEF8F8F8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BB_SaveClick
    end
    object BB_New: TBitBtn
      AlignWithMargins = True
      Left = 655
      Top = 3
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Right = 0
      Align = alRight
      Caption = '&New (F1)'
      DoubleBuffered = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF896228A080519E7D489E
        7D499E7D499E7D499E7D499E7D499E7D499E7D499E7D499E7D499D7A489E7C4F
        845B24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E5E
        5E7B7B7B76767677777776767677777776767676767677777777777777777777
        7777757575777777575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF926C36FFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFF916B36FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D7945FDFDFDFBFBF8F6
        F4EDF6F5EDF6F5EEF6F5EEF6F5EEF3EEE7F2EDE6F4EFE8F4EFE8F7F3EEFAFAF6
        946C33FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7272
        72FDFDFDFAFAFAF2F2F2F4F4F4F4F4F4F4F4F4F4F4F4EDEDEDEDEDEDEEEEEEED
        EDEDF2F2F2F9F9F9666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA48350FDFDFDF9F9F5F3F0EAF4F1EBF4F1ECF4F1ECF4F1ECF5F1
        E9F1F0E5F1EEE7F3EFEAF8F5F0F7F5F0946C30FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7D7DFCFCFCF8F8F8F0F0F0EFEFEFF1F1F1
        F0F0F0F0F0F0F0F0F0EDEDEDECECECEDEDEDF4F4F4F4F4F4676767FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC8F5EFCFCFBFAF9F6F4
        F1ECF5F2EDF5F2EDF5F2EDF5F2EDF5F2EDF5F3EBF6F3EBF4F2ECFAF9F3F7F4F0
        946C30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
        88FBFBFBF9F9F9F1F1F1F1F1F1F1F1F1F0F0F0F1F1F1F2F2F2F2F2F2F1F1F1F0
        F0F0F8F8F8F3F3F3666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAB8E5DFCFCFBFAF9F6F4F1ECF5F2EDF5F2EDF5F2EDF6F4EFF3F2
        ECF8F3F1F8F5F3F8F4EFFBFAF7F7F4EF946C30FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FCFCFCF9F9F9F1F1F1F1F1F1F2F2F2
        F1F1F1F3F3F3F1F1F1F4F4F4F5F5F5F2F2F2F9F9F9F3F3F3666666FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB8E5DFCFCFBFAF9F6F4
        F1ECF5F2EDF5F2EDF5F1ECF7F6F0F7F3EFFAF6F2FAF5F2FBF5F2FBF7F6F7F4EF
        946C30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8888
        88FCFCFCF8F8F8EFEFEFF2F2F2F1F1F1F0F0F0F4F4F4F3F3F3F5F5F5F4F4F4F4
        F4F4F7F7F7F3F3F3656565FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAB8E5CFCFCFBFAF9F6F4F2ECF5F2ECF4F1EBF5F1EDF8F3F3FBF8
        F1FBFBF3FBF8F6F8F2EFF8F3ECF8F6F4946C32FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF878787FBFBFBF9F9F9F1F1F1F0F0F0F1F1F1
        F0F0F0F3F3F3F7F7F7F9F9F9F8F8F8F2F2F2F1F1F1F5F5F5666666FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9064FCFBFBFBFAF5F6
        F2EDF5F2EDF7F4F0FAF3F3FAF8F4FAFCF6FCFAF8F9F7F2F2EBE5F3EFE8F8F3F0
        956D32FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A
        8AFBFBFBF9F9F9F1F1F1F2F2F2F4F4F4F3F3F3F7F7F7FBFBFBFAFAFAF6F6F6EB
        EBEBEEEEEEF3F3F3676767FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAD9872FBFAF9FEFFFCF9F9F3F8F9F1FBF8FAFAF9FAFAFBF8FBFA
        FCF6F6F3F2EEE5EAE5DDECE5DEEEE4DB956D31FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF929292F9F9F9FFFFFFF8F8F8F7F7F7F9F9F9
        F9F9F9FBFBFBFCFCFCF6F6F6EBEBEBE4E4E4E4E4E4E3E3E3686868FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6A07EFAF9F7FFFFFFFA
        FBF6FAFBF8FAFAFBFAFAFDFBFBFCF8F5F0F0F1E8EDE6E0E5DFD4E3D9CEDED3C1
        946C30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C
        9CF8F8F8FFFFFFFBFBFBFAFAFAFAFAFAFAFAFAFBFBFBF5F5F5F0F0F0E5E5E5DD
        DDDDD7D7D7CFCFCF666666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC0A986FAF8F6FFFFFFFAFAF9FAFAFBFAFAFCFAFCFAF9FAF5F5F2
        E6EEEAE1E4DCD0DDCEC0D9C8B4CFC0A5946D31FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3F7F7F7FFFFFFFAFAFAFAFAFAFBFBFB
        FCFCFCF8F8F8F1F1F1E9E9E9DADADACBCBCBC5C5C5BCBCBC666666FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4B08FF9F8F5FDFFFFFA
        FAFAFAFAFBFAFCFBF9FAF1F4F1EAF1EEE7D4C5AED0C1A8D3BEA8CFBEA0BAA078
        936C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABAB
        ABF7F7F7FFFFFFF9F9F9FAFAFAFBFBFBF9F9F9F1F1F1EDEDEDC1C1C1BDBDBDBB
        BBBBB9B9B99B9B9B676767FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC4B193FAF8F5FCFFFFF9FAFBFBFCFCF8F9F4F3EFE6F1E8E0EAE2
        D9C2A984EFE8DDF9F8F5E3D9CBB79E77C0A986FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFADADADF7F7F7FFFFFFFBFBFBFCFCFCF7F7F7
        EEEEEEE6E6E6E1E1E1A4A4A4E6E6E6F7F7F7D6D6D6979797A6A6A6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6B295F9F7F5FEFFFFF9
        FAFBFCF9F5F0EEEAE9E3DCE9DAD0E1D1C1B79D75E5DECFEBE3D7B09162CAB696
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADAD
        ADF7F7F7FFFFFFFBFBFBF8F8F8EEEEEEE1E1E1D9D9D9CFCFCF989898DBDBDBE1
        E1E18A8A8AB2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC6B598F9F7F4FFFFFFFAFEFAFBF3EDF0E8E0E5DDD5DFD2C0DAC8
        B0B19768C8BA9FB3976CCDBB9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B1F7F7F7FFFFFFFCFCFCF2F2F2E7E7E7
        DCDCDCCFCFCFC4C4C4909090B5B5B5909090B8B8B8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8B89BF7F5F2FBFAF9F8
        F5F3EEE9E3E8DFD1DBD1BFD3C1A6CAB497A38953A3814DD2C1A6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3
        B3F4F4F4F9F9F9F5F5F5E8E8E8DCDCDCCECECEBDBDBDB0B0B08181817A7A7ABE
        BEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC7B699CFBEA5CCBCA1CCBA9FCAB89DCAB79CC6B08FC4AC88B8A2
        779E804BD5C4ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2BBBBBBB7B7B7B6B6B6B3B3B3B3B3B3
        ACACACA7A7A79C9C9C797979C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BB_NewClick
    end
    object BB_RePrintBill: TBitBtn
      AlignWithMargins = True
      Left = 536
      Top = 3
      Width = 116
      Height = 33
      Align = alRight
      Caption = '&Re-Print Receipt'
      DoubleBuffered = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEF2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE0E0E0A7A3A1A69489858382
        8181829E9E9FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE0
        E0E0A3A3A39393938383838181819E9E9EE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2C4C1C1AAA7A7CECECEE3E3
        E3B1B0B0B49B8EFFEBDFFFF7F3F5E0D08D72646953556F6B6CAFAFB0F8F8F8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2
        C1C1C1A7A7A7CECECEE3E3E3B0B0B09A9A9AE9E9E9F6F6F6DDDDDD7171715656
        566C6C6CB0B0B0F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBC
        B7B7B09897ECB4A8EB99848D7370957A70F0C8B7FFF8F1FDDBCBFDE4DAFCD5C7
        FFF4ECDDC4B18D6E668B7375CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEFEFEFB8B8B89A9A9AB5B5B59B9B9B7474747A7A7AC6C6C6F7
        F7F7DADADAE2E2E2D4D4D4F2F2F2C2C2C26F6F6F757575CDCDCDFFFFFFFFFFFF
        FFFFFFFEFEFEEDEDEDB7B0B0BAA1A1EED9D8FFF5F2FDCBBCFCA78BBE8371EBD5
        C9FFD6C0FCCFB8FDD6C3FBCFBCFDDED1FEEFE7FFFFFEFFF8EFC5AB99868381E9
        E9E9FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEDEDEDB0B0B0A3A3A3DADADAF6F6F6
        CBCBCBA8A8A8848484D4D4D4D4D4D4CDCDCDD4D4D4CECECEDDDDDDEEEEEEFFFF
        FFF7F7F7A9A9A9838383FFFFFFFFFFFFEDEDEDB3ABABC3A9A9F2E0DFFFFAF7FF
        F2F0FEEAE6FDD2C6FDB19AB99581A27E6CBE9A86F3BEA4FFD2BBFCCFB7FDD7C5
        FBD0BDFCE0D4FFFCFAFFFFFEF9D6BDF1F1F1FFFFFFFFFFFFFFFFFFEDEDEDABAB
        ABABABABE1E1E1F9F9F9F3F3F3EAEAEAD2D2D2B3B3B39393937D7D7D999999BC
        BCBCD0D0D0CDCDCDD6D6D6CECECEDFDFDFFBFBFBFFFFFFD3D3D3FFFFFFF6F5F5
        CAABAAF6E8E7FFFAF8FFF3F1FFEDEAFFEBE7FDE6E0FED9CFFDBCA9D5A28DA58C
        77A58471A48B7BCEA691FAC3A8FED3BDFDDCCAFFF7EFFBD8C7D7CAC3FFFFFFFF
        FFFFFFFFFFFFFFFFF5F5F5ACACACE9E9E9F9F9F9F3F3F3EEEEEEEBEBEBE7E7E7
        D9D9D9BDBDBDA1A1A18A8A8A838383898989A5A5A5C1C1C1D1D1D1DADADAF6F6
        F6D7D7D7C9C9C9FFFFFFFFFFFFF1E7E7FFFAF9FFF3F1FFEEEBFFECE8FFE8E2FF
        E3DFFFDFD9FDDFD9FCC7B9FEBEADF2B3A0BC9682A58B77A68E7DAC9685E1C2B0
        F8D3C5BB9C91F0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8FAFAFAF4F4
        F4EEEEEEEDEDEDE9E9E9E4E4E4E0E0E0DFDFDFC7C7C7BFBFBFB4B4B494949488
        88888D8D8D939393C1C1C1D3D3D39C9C9CF0F0F0FFFFFFFFFFFFFFFFFFF0E7E7
        FFF1EFFFEDE8FFE9E5FFE4E0FFE0DAFFDDD6FFDDD5FFE1DBFFCBC0FEC9BCFDC3
        B4FFBDACE5AB97AF927DA28B81705650E78D709C8F90F5F5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE8E8E8F1F1F1ECECECE9E9E9E5E5E5E1E1E1DEDEDEDEDEDE
        E2E2E2CCCCCCCBCBCBC3C3C3BFBFBFABABAB9090908C8C8C5656569090909090
        90F5F5F5FFFFFFFFFFFFFFFFFFF0E7E7FFEBE7FFE5E0FFE1DDFFDFD8FFDBD2FF
        D6CEFFE1DBFFDED7FFD1C7FFD1C7FECDC2FEC8BBFDC1B2FEBCA9C9887C6E5356
        F0A1889C8E8FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7ECECECE5E5
        E5E3E3E3E0E0E0DCDCDCD7D7D7E2E2E2DEDEDED2D2D2D2D2D2CECECEC8C8C8C2
        C2C2BCBCBC8A8A8A555555A3A3A38F8F8FF3F3F3FFFFFFFFFFFFFFFFFFF0E7E7
        FFE4DFFFE0D8FFDCD5FFD7CFFFD3CBFFD8D0FFECE7FFDDD5EAA894C96645EDAD
        9DFFD1C8FECBC0FEC6B8FEC0B0FAB7A4FFB69F9C8E8EF3F3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE8E8E8E5E5E5E0E0E0DDDDDDD9D9D9D5D5D5D9D9D9EDEDED
        DEDEDEAAAAAA6A6A6AAEAEAED2D2D2CDCDCDC7C7C7C2C2C2B9B9B9B8B8B88F8F
        8FF3F3F3FFFFFFFFFFFFFFFFFFF3EBEBFBD8D1FFD9D1FFD4CCFFD0C6FFD7CDFF
        F5F1FFECE7FEDBD1E67C57D2623ABD471ECA6D4DF6C1B3FFD0C6FECABEFDC4B6
        FFC2B09C8D8EF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD9D9D9DADA
        DAD5D5D5D1D1D1D8D8D8F4F4F4ECECECDBDBDB808080676767505050717171C2
        C2C2D2D2D2CCCCCCC4C4C4C3C3C38F8F8FF3F3F3FFFFFFFFFFFFFFFFFFF9F8F8
        E1B9B5FFD7CFFFD3CAFFE3DDFFFEFED2C9E7E3D2E3FBB292F99974F28965E074
        4FCC5B34B9451CD6846AFFCFC5FFCDC2FFCEC09E9090F5F5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF8F8F8BCBCBCD8D8D8D4D4D4E3E3E3FEFEFED2D2D2D7D7D7
        B2B2B29A9A9A8B8B8B7878786060604C4C4C858585D0D0D0CECECECFCFCF9191
        91F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFCDA19EDFB9B6FFE9E4F8E7E3C4E5C8FC
        F0ECF1C2A7FDBB95FAAE8AFAA37EF79671ED845FDB6D47C7542BBB4B24EEB0A0
        FBC9C0ACA2A2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A4BCBC
        BCE9E9E9E7E7E7DDDDDDEFEFEFC1C1C1B8B8B8ADADADA4A4A497979788888872
        72725B5B5B525252B0B0B0CBCBCBA3A3A3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        D8ADA6F5CCBFD5ACA9E9AFA2EDB596FEC09AFEC9A2FECDA6FDC59EFCB993FBAB
        87FAA07BF7926DE97F59D4643DE8A08AE6B7B3CBCACAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAFAFAFCBCBCBAEAEAEB1B1B1B2B2B2BDBDBDC6C6C6
        C9C9C9C1C1C1B7B7B7ABABABA0A0A09494948282826A6A6AA1A1A1B9B9B9CACA
        CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BAB9FAECE7F2B99FEDD2C6D59886F1
        A080FDB790FDC39DFECCA4FECCA5FDC29BFCB590FBA984F99B77F49979FFE1DA
        AD9796F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBECEC
        ECB8B8B8D1D1D1999999A1A1A1B6B6B6BFBFBFC8C8C8C7C7C7BEBEBEB2B2B2A8
        A8A89C9C9C9A9A9AE1E1E1989898F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCBB4ADF7C5ADFFEDDDFFE3C9E2BBAAD79281F7A784FCBB94FDC59FFECD
        A6FEC9A2FDBD97FBB591FFE7DFDBB4B2D7D5D5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3C3C3C3EBEBEBDFDFDFBBBBBB959595
        A6A6A6B8B8B8C1C1C1C9C9C9C4C4C4BBBBBBB4B4B4E7E7E7B6B6B6D5D5D5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC5C1FBD0B7FFF3E9FFE8D6FF
        E5CEFCDEC5D9AB9DDF947CFDAF88FDBE96FEC79FFED3B1FFF9F3E5C8C7C3BEBE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
        C5CECECEF1F1F1E5E5E5E2E2E2DBDBDBABABAB969696AEAEAEBBBBBBC4C4C4CF
        CFCFF8F8F8CACACABEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCFC8C3FFD9C0FFFAF8FFF1E7FFEDDDFFE8D5FFE4CCF5DAC9D39E95ECA7
        8FFFD6C3F3D8D5D3B3B4D5D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7D6D6D6FAFAFAEFEFEFEBEBEBE6E6E6
        E1E1E1D8D8D8A0A0A0A7A7A7D5D5D5D9D9D9B5B5B5D2D2D2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CAC5FFE3C9FDEFE4FFFCFCFF
        F6F0FFF1E4FFEADBFFF2E3AC9D96D7D2D2BFB6B6D9D3D3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CAE0E0E0EEEEEEFDFDFDF5F5F5EEEEEEE9E9E9F0F0F09D9D9DD3D3D3B6B6B6D3
        D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3D5CAFFE3C8FEE2CCFDF5EEFFFBF9FFF5EDFFF7EEAFA199F4F4
        F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4DFDFDFE0E0E0F4F4F4FBFBFB
        F5F5F5F6F6F6A0A0A0F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F3FFEAD4FF
        E1C7FEE5D3FDF9F6FFFFFFB0A39CF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F3F3E7E7E7DDDDDDE3E3E3F8F8F8FFFFFFA3A3A3F3F3F3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E5E2FFE7CEFFE1C9FFEFDEB9AEA6F8F8
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4E4E4E4
        DDDDDDECECECADADADF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8DDD3E0CEC0EBEAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCCDCDCDEAEAEAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BB_RePrintBillClick
    end
    object CheckBox_Preview: TCheckBox
      AlignWithMargins = True
      Left = 450
      Top = 3
      Width = 80
      Height = 33
      Align = alRight
      Caption = 'Pre&view (F3)'
      TabOrder = 4
    end
  end
    object Query_PatientInfo: TOraQuery
    SQL.Strings = (
            
              'Select PatientId,InpatientId,AdmnDate,DisDate,IsDischarged,RoomT' +
              'ype,IsDisInDeposit,SchemeId,SchemeName'
            'From VW_HS_ADMNPATIENTCURRENTINFO '
            'where AdmnDate>='#39'2014/07/30'#39'  '
            ' ')
    Left = 626
    Top = 72
  end
  object QueryProcess: TOraQuery
    SQL.Strings = (
            '')
    Left = 771
    Top = 62
  end
  object Query_Scheme: TOraQuery
    SQL.Strings = (
            
              'Select Sche_SchemeId SchemeId,SCHE_Scheme SchemeName,SCHE_Commun' +
              'ityId CommunityId '
            'From HS_SCHE_Scheme '
            'Where SCHE_ISDISPLAYFORCOMMREFUND='#39'Y'#39
            'Order by Sche_Scheme')
    Left = 495
    Top = 84
  end
object DS_Scheme: TDataSource
    DataSet = Query_Scheme
    Left = 534
    Top = 84
  end
    object QueryDetail: TOraQuery
    SQL.Strings = (
            
              'SELECT UserMain.UserName,BillNo,BillDetail.Service,ServiceType, ' +
              'Qty, Amount,'
            
              'CommunityID,BillDate,BillTime,MemberNo,SchemeId,Qty*Amount As To' +
              'talAmount, '
            
              '((Qty*Amount)-(Qty*Amount*Dis/100)) as NetAmount, Dis, (Qty*Amou' +
              'nt*Dis/100) as Discount,'
            
              'VatAmt,DepId,CancelStatus,RateType,Qty*DollarAmount as DollarAmo' +
              'unt ,'
            
              '(Qty*DollarAmount*Dis/100) as DollarDiscount,DollarVatAmt,Dollar' +
              'ExRate From BillDetail, '
            
              'UserMain  Where BillDetail.ModifyBy=UserMain.UserId and (BillNo=' +
              ':BillNo)  '
            'Order By DepID'
            '')
    Left = 296
    Top = 231
    ParamData = <
            item
              DataType = ftString
              Name = 'BILLNO'
              ParamType = ptUnknown
            end>
  end
  object QueryCurrIPDep: TOraQuery
    SQL.Strings = (
            
              'Select DepCode,RoomTypeCode From InpatientDetail where Inpatient' +
              'DID In '
            '(Select Max(InpatientDID) as InpatientDID From InpatientDetail'
            'where InpatientId=:IPID)')
    Left = 968
    Top = 86
    ParamData = <
            item
              DataType = ftInteger
              Name = 'IPID'
              ParamType = ptUnknown
            end>
  end
object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 692
    Top = 232
  end
    object Table_BedCharge: TOraTable
    TableName = 'BedCharge.db'
    Left = 353
    Top = 245
  end
  object Query_GetBedCharge: TOraQuery
    SQL.Strings = (
            'Select IPD.InpatientDId,IPD.BedCharge,IPD.INPTDate,'
            'IPD.OUTDate,IPD.DisPer,RT.RoomType'
            
              'From InpatientDetail IPD,RoomType RT Where IPD.RoomTypeCode=RT.R' +
              'oomTypeCode'
            'and IPD.InPatientId=:InptId Order By IPD.InpatientDID Desc')
    Left = 443
    Top = 194
    ParamData = <
            item
              DataType = ftInteger
              Name = 'InptId'
              ParamType = ptUnknown
            end>
  end
  object Query_TempProcess: TOraQuery
    Left = 952
    Top = 72
  end
  object Query_RefundList: TOraQuery
    SQL.Strings = (
            
              'Select PatientId,InpatientId,BillNo as RefundReceiptNo,BillDate ' +
              'RefundDate,BillTime RefundTime,'
            
              'Case when BillType='#39'B'#39' Then '#39'OP Refund'#39' Else '#39'IP Refund'#39' End Ref' +
              'undType,'
            
              'SchemeId,(Select SCHE_Scheme From HS_Sche_Scheme where SCHE_Sche' +
              'meId=CR.SchemeId) as Scheme,'
            
              '(Select USMA_UserName from HS_USMA_UserMain where USMA_UserId=CR' +
              '.RefundBy) UserName '
            'From CommunityRefund CR'
            'Order by BillNo')
    Left = 795
    Top = 262
  end
object DS_List: TDataSource
    DataSet = Query_RefundList
    Left = 830
    Top = 268
  end
    object Query_ReferenceBillNo: TOraQuery
    SQL.Strings = (
            'Select R.*,S.Sche_Scheme as Scheme From ('
            
              'Select BIDE_BillDate BillDate,BIDE_BillTime BillTime,BIDE_BIllNo' +
              ' BillNo,Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE' +
              '_Qty*BIDE_DisPer/100)) as NetTotal,'
            
              'BIDE_BIllBy,(Select USMA_UserName From HS_USMA_UserMain where US' +
              'MA_UserId=BIDE_BillBy) as UserName,'
            
              '(Select Case when Max(BIDE_CrSchemeId) > 0 Then Max(BIDE_CrSchem' +
              'eId) Else Max(BIDE_DisSchemeId) End SchemeId From HS_BIDE_BillDe' +
              'tail where BIDE_BillNo=BD.BIDE_BillNo) as SchemeID'
            'From HS_BIDE_BillDetail BD'
            'Where BIDE_PatientId=71002345'
            
              'Group By BIDE_BillDate,BIDE_BillTime,BIDE_BIllBy,BIDE_BIllNo) R,' +
              'HS_SCHE_Scheme S'
            'Where R.SchemeId=S.SCHE_SchemeID(+)'
            'Order by BillDate Desc,BillNo Desc ')
    Left = 611
    Top = 206
  end
object DS_ReferenceBillNo: TDataSource
    DataSet = Query_ReferenceBillNo
    Left = 638
    Top = 228
  end
    object Query_CommRefundBillList: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,BillDate,BillTime,Amount,RefundBy,(Select USMA_Use' +
              'rName From HS_USMA_UserMain where USMA_UserId=CR.RefundBy) as Us' +
              'erName'
            
              ',Remarks,RefBillNo,BillType,(Select SCHE_Scheme From HS_SCHE_Sch' +
              'eme Where SCHE_SchemeId=CR.SchemeID) as SchemeName'
            'From CommunityRefund CR')
    Left = 675
    Top = 350
  end
object DS_CommRefundBillList: TDataSource
    DataSet = Query_CommRefundBillList
    Left = 694
    Top = 364
  end
end
