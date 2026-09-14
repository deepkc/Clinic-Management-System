object FormRegRefundReprint: TFormRegRefundReprint
  Left = 360
  Top = 167
  BorderIcons = [biSystemMenu]
  Caption = 'Registration Refund & Bill Reprint'
  ClientHeight = 561
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlBillRefund: TPageControl
    Left = 0
    Top = 57
    Width = 818
    Height = 487
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Bill New/Refund'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 11
        Top = 103
        Width = 58
        Height = 13
        Caption = 'Hospital No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 11
        Top = 345
        Width = 42
        Height = 13
        Caption = 'Remarks'
      end
      object TLabel
        Left = 11
        Top = 201
        Width = 57
        Height = 13
        Caption = 'Department'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label98: TLabel
        Left = 11
        Top = 274
        Width = 41
        Height = 13
        Caption = 'Discount'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label99: TLabel
        Left = 182
        Top = 273
        Width = 14
        Height = 16
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 11
        Top = 296
        Width = 35
        Height = 13
        Caption = 'Charge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label53: TLabel
        Left = 11
        Top = 320
        Width = 45
        Height = 13
        Caption = 'Pay Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 138
        Width = 33
        Height = 16
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelName: TLabel
        Left = 75
        Top = 138
        Width = 55
        Height = 23
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 11
        Top = 79
        Width = 23
        Height = 13
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelMedCap: TLabel
        Left = 206
        Top = 105
        Width = 64
        Height = 13
        Caption = 'Medicare No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object LabelMedNo: TLabel
        Left = 276
        Top = 101
        Width = 50
        Height = 23
        Caption = 'None'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label9: TLabel
        Left = 10
        Top = 248
        Width = 42
        Height = 13
        Caption = 'Schemes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SPB_ListOfBills: TSpeedButton
        Left = 665
        Top = 0
        Width = 137
        Height = 25
        BiDiMode = bdLeftToRight
        Caption = '&List Of Bills (F1)'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333FF3333333333333003333333333333F77F33333333333009033
          333333333F7737F333333333009990333333333F773337FFFFFF330099999000
          00003F773333377777770099999999999990773FF33333FFFFF7330099999000
          000033773FF33777777733330099903333333333773FF7F33333333333009033
          33333333337737F3333333333333003333333333333377333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphRight
        NumGlyphs = 2
        ParentFont = False
        ParentBiDiMode = False
        OnClick = SPB_ListOfBillsClick
      end
      object TLabel
        Left = 10
        Top = 225
        Width = 61
        Height = 13
        Caption = 'Unit / Doctor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label_DollarRs: TLabel
        Left = 202
        Top = 271
        Width = 82
        Height = 13
        Caption = 'Dollor Rs 0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelExRate: TLabel
        Left = 200
        Top = 297
        Width = 68
        Height = 13
        Caption = '$ Ex.Rate->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 7
        Top = 176
        Width = 65
        Height = 13
        Caption = 'Patient Type:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label_BookCharge: TLabel
        Left = 207
        Top = 315
        Width = 38
        Height = 22
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object EditHospitalNo: TEdit
        Left = 75
        Top = 99
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnKeyDown = EditHospitalNoKeyDown
        OnKeyPress = EditHospitalNoKeyPress
      end
      object EditRemarks: TEdit
        Left = 75
        Top = 341
        Width = 374
        Height = 21
        MaxLength = 30
        TabOrder = 14
        OnKeyDown = EditRemarksKeyDown
      end
      object CmbDdepartment: TDBLookupComboBox
        Left = 75
        Top = 198
        Width = 185
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DEPCODE'
        ListField = 'DEPCODE;DEPNAME'
        ListFieldIndex = 1
        ListSource = DS_Department
        ParentFont = False
        TabOrder = 7
        OnClick = CmbDdepartmentClick
        OnKeyDown = CmbDdepartmentKeyDown
      end
      object EditRegDis: TEdit
        Left = 75
        Top = 269
        Width = 104
        Height = 21
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        Text = '0'
        OnKeyDown = EditRegDisKeyDown
        OnKeyPress = EditRegDisKeyPress
      end
      object EditCharge: TEdit
        Left = 75
        Top = 293
        Width = 121
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        Text = '0'
        OnKeyDown = EditChargeKeyDown
      end
      object CombPayType: TComboBox
        Left = 75
        Top = 316
        Width = 121
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnKeyDown = CombPayTypeKeyDown
        Items.Strings = (
          'CASH'
          'CREDIT')
      end
      object DateEditXRefundDate: TDateEditX
        Left = 75
        Top = 75
        Width = 93
        Height = 21
        TabOrder = 3
        ControlData = {
          545046300A5444617465456469745200044C656674024B03546F70024B057769
          647468025D0B4461746541442E5965617203D7070C4461746541442E4D6F6E74
          6802040A4461746541442E44617902060B4461746556532E59656172030F080C
          4461746556532E4D6F6E7468020C0A4461746556532E44617902170C466F6E74
          2E43686172736574070C414E53495F434841525345540A466F6E742E436F6C6F
          7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D650606
          5461686F6D610A466F6E742E5374796C650B000A506172656E74466F6E740808
          526561644F6E6C79090000}
      end
      object BitBtnRefundDate: TBitBtn
        Left = 140
        Top = 77
        Width = 26
        Height = 18
        Caption = 'AD'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtnRefundDateClick
      end
      object CB_NewBill: TCheckBox
        Left = 75
        Top = 46
        Width = 189
        Height = 17
        Caption = 'Generate New Bill Only ? (F4)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = CB_NewBillClick
        OnKeyDown = CB_NewBillKeyDown
      end
      object DBLC_Schemes: TDBLookupComboBox
        Left = 75
        Top = 246
        Width = 185
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SCHE_SCHEMEID'
        ListField = 'SCHE_SCHEME'
        ListSource = DS_Schemes
        ParentFont = False
        TabOrder = 9
        OnClick = DBLC_SchemesClick
        OnKeyDown = DBLC_SchemesKeyDown
      end
      object DBLookupComboBoxDoctor: TDBLookupComboBox
        Left = 75
        Top = 222
        Width = 185
        Height = 21
        DropDownAlign = daRight
        DropDownWidth = 257
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'DOCCODE'
        ListField = 'DocCode;DOCNAME'
        ListFieldIndex = 1
        ListSource = DataSourceQueryDocRoutine
        ParentFont = False
        TabOrder = 8
      end
      object Edit_ExchangeRate: TEdit
        Left = 266
        Top = 291
        Width = 49
        Height = 21
        TabOrder = 11
        OnExit = Edit_ExchangeRateExit
        OnKeyDown = Edit_ExchangeRateKeyDown
        OnKeyPress = Edit_ExchangeRateKeyPress
      end
      object CB_OPDBookCharge: TCheckBox
        Left = 75
        Top = 1
        Width = 292
        Height = 17
        Caption = 'Generate New  Bill For OPD Book Charge  (F2)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CB_ChargCardClick
      end
      object CB_BlueBookCard: TCheckBox
        Left = 75
        Top = 23
        Width = 296
        Height = 17
        Caption = 'Generate New  Bill For Blue Book Charge       (F3)'
        Color = clAqua
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = CB_BlueBookCardClick
      end
      object DBLCB_PatientType: TDBLookupComboBox
        Left = 75
        Top = 174
        Width = 185
        Height = 21
        DropDownAlign = daRight
        DropDownWidth = 350
        KeyField = 'PATY_PATIENTTYPECODE'
        ListField = 'PATY_PATIENTTYPE'
        ListFieldIndex = 1
        ListSource = DS_PatientType
        TabOrder = 6
        OnClick = DBLCB_PatientTypeClick
        OnKeyPress = DBLCB_PatientTypeKeyPress
      end
      object CB_PrintPreview: TCheckBox
        Left = 680
        Top = 36
        Width = 97
        Height = 17
        Caption = 'Previe&w'
        TabOrder = 15
      end
    end
  end
  object PageControlBillReprint: TPageControl
    Left = 0
    Top = 57
    Width = 818
    Height = 487
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'Bill Reprint'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        810
        459)
      object Label4: TLabel
        Left = 11
        Top = 13
        Width = 58
        Height = 13
        Caption = 'Hospital No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 11
        Top = 36
        Width = 32
        Height = 13
        Caption = 'Bill No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 62
        Width = 27
        Height = 13
        Caption = 'Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelName2nd: TLabel
        Left = 72
        Top = 62
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SPB_NewCharge: TSpeedButton
        Left = 307
        Top = 0
        Width = 245
        Height = 25
        Caption = '&OPD Book, Blue Book && New Bill (F1)'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333FF3333333333333003333
          3333333333773FF3333333333309003333333333337F773FF333333333099900
          33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
          99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
          33333333337F3F77333333333309003333333333337F77333333333333003333
          3333333333773333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SPB_NewChargeClick
      end
      object SPB_Refund: TSpeedButton
        Left = 658
        Top = 52
        Width = 93
        Height = 25
        Caption = 'R&efund (F2)'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
          00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
          00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
          F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
          F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
          FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
          0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
          0033333337FFFFFF773333333000000003333333377777777333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = SPB_RefundClick
      end
      object Label10: TLabel
        Left = 403
        Top = 82
        Width = 81
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Refund Reason :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton4: TSpeedButton
        Left = 588
        Top = 22
        Width = 23
        Height = 22
        Enabled = False
        Visible = False
        OnClick = SpeedButton4Click
      end
      object Label18: TLabel
        Left = 278
        Top = 33
        Width = 28
        Height = 13
        Caption = 'From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 422
        Top = 32
        Width = 16
        Height = 13
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditHosNo: TEdit
        Left = 72
        Top = 9
        Width = 121
        Height = 21
        TabOrder = 2
        OnExit = EditHosNoExit
        OnKeyDown = EditHosNoKeyDown
        OnKeyPress = EditHosNoKeyPress
      end
      object EditBillNo: TEdit
        Left = 72
        Top = 32
        Width = 121
        Height = 21
        TabOrder = 4
        OnKeyDown = EditBillNoKeyDown
      end
      object DBGridBillList: TDBGrid
        Left = -1
        Top = 101
        Width = 809
        Height = 358
        Anchors = [akTop, akRight]
        DataSource = DataSourceBillList
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridBillListCellClick
        OnColEnter = DBGridBillListColEnter
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BILLDATE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BILLNO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMOUNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VATAMT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'SVR Tax'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCOUNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Free Con.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NETAMOUNT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Net Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'depname'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Department'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'docname'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Doctor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 154
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefBillNo'
            Title.Alignment = taCenter
            Title.Caption = 'Ref. Bill No.'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundDate'
            Title.Alignment = taCenter
            Width = 70
            Visible = True
          end>
      end
      object Edit_Remarks: TEdit
        Left = 488
        Top = 77
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        MaxLength = 40
        TabOrder = 5
        OnKeyDown = EditBillNoKeyDown
      end
      object CheckBoxPreview: TCheckBox
        Left = 588
        Top = -1
        Width = 59
        Height = 17
        Caption = 'Previe&w'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn_BarCode: TBitBtn
        Left = 658
        Top = 25
        Width = 149
        Height = 23
        Caption = 'Re-Print Sticker (F4)'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn_BarCodeClick
      end
      object BB_RePrintBill: TBitBtn
        Left = 658
        Top = 0
        Width = 149
        Height = 24
        Caption = 'Re-Print Bill (F3)        '
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 1
        OnClick = BB_RePrintBillClick
      end
      object DEX_From: TDateEditX
        Left = 310
        Top = 29
        Width = 100
        Height = 21
        TabOrder = 7
        ControlData = {
          545046300A5444617465456469745200044C65667403360103546F70021D0577
          6964746802640B4461746541442E5965617203D3070C4461746541442E4D6F6E
          7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
          0C4461746556532E4D6F6E746802070A4461746556532E44617902110C466F6E
          742E43686172736574070C414E53495F434841525345540A466F6E742E436F6C
          6F7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D6506
          0D4D532053616E732053657269660A466F6E742E5374796C650B066673426F6C
          64000A506172656E74466F6E74080000}
      end
      object Btn_From: TButton
        Left = 387
        Top = 30
        Width = 22
        Height = 19
        Caption = 'AD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = False
        OnClick = Btn_FromClick
      end
      object DEX_To: TDateEditX
        Left = 442
        Top = 29
        Width = 100
        Height = 21
        TabOrder = 9
        ControlData = {
          545046300A5444617465456469745200044C65667403BA0103546F70021D0577
          6964746802640B4461746541442E5965617203D3070C4461746541442E4D6F6E
          7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
          0C4461746556532E4D6F6E746802070A4461746556532E44617902110C466F6E
          742E43686172736574070C414E53495F434841525345540A466F6E742E436F6C
          6F7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D6506
          0D4D532053616E732053657269660A466F6E742E5374796C650B066673426F6C
          64000A506172656E74466F6E74080000}
      end
      object Btn_To: TButton
        Left = 519
        Top = 30
        Width = 22
        Height = 19
        Caption = 'AD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = False
        OnClick = Btn_ToClick
      end
      object BB_Refresh: TBitBtn
        Left = 309
        Top = 51
        Width = 102
        Height = 25
        Caption = '&Refresh (F5)'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        TabOrder = 11
        OnClick = BB_RefreshClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 544
    Width = 818
    Height = 17
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 57
    Align = alTop
    Anchors = []
    TabOrder = 0
    object BitBtnCancel: TBitBtn
      Left = 726
      Top = 1
      Width = 91
      Height = 55
      Align = alRight
      Caption = '&Cancel (Esc)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnCancelClick
    end
    object BtnSave: TBitBtn
      Left = 607
      Top = 1
      Width = 119
      Height = 55
      Align = alRight
      Anchors = []
      Caption = '&Refund Save (F12)'
      DoubleBuffered = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object CB_ChargeWithCard: TCheckBox
      Left = 208
      Top = 11
      Width = 172
      Height = 17
      Caption = 'Refund With Card Charge  (F6)'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 2
      Visible = False
    end
  end
  object QueryBillMaster: TOraQuery
    Left = 572
    Top = 230
  end
  object Query_Community: TOraQuery
    SQL.Strings = (
      'select  *  from HS_COMM_Community order by COMM_Community')
    Left = 487
    Top = 350
  end
  object DataSource_Community: TDataSource
    DataSet = Query_Community
    Left = 510
    Top = 366
  end
  object QueryRegBillList: TOraQuery
    SQL.Strings = (
      
        'Select PatientId,BillDate,BillTime,BillNo,ServiceType,Amount,Vat' +
        'Amt,(Amount*Dis/100) as Discount,'
      '((Amount+VatAmt)-(Amount*Dis/100)) as NetAmount From BillDetail '
      
        'where BillType='#39'O'#39' and PatientId=:PatientId Order By BillDate De' +
        'sc')
    Left = 460
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientId'
      end>
  end
  object DataSourceBillList: TDataSource
    DataSet = QueryRegBillList
    Left = 484
    Top = 208
  end
  object QueryDetail: TOraQuery
    SQL.Strings = (
      
        'SELECT BillNo,Service,ServiceType, BillType,CancelRemarks, Qty, ' +
        'Amount,PayType,'
      
        'BillDate,BillTime,ModifyBy,CommunityID,MemberNo,SchemeId,Qty*Amo' +
        'unt As TotalAmount, '
      
        '(Select SchemeName From Scheme where SchemeId=BillDetail.SchemeI' +
        'd) as Scheme,'
      
        '(((Qty*Amount)+VatAmt)-(Qty*Amount*Dis/100))as NetAmount, Dis,Va' +
        'tAmt, '
      '(Qty*Amount*Dis/100) as Discount,DepId,RateType'
      
        ',Qty*DollarAmount as DollarAmount ,(Qty*DollarAmount*Dis/100) as' +
        ' DollarDiscount,'
      
        'DCurVatAmt as DollarVatAmt,DollarExRate From BillDetail  Where B' +
        'illNo=:BillNo  ')
    Left = 453
    Top = 263
    ParamData = <
      item
        DataType = ftString
        Name = 'BILLNO'
      end>
    object QueryDetailBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryDetailSERVICE: TStringField
      FieldName = 'SERVICE'
      Size = 10
    end
    object QueryDetailSERVICETYPE: TStringField
      FieldName = 'SERVICETYPE'
      Size = 75
    end
    object QueryDetailTOTALAMOUNT: TFloatField
      FieldName = 'TOTALAMOUNT'
    end
    object QueryDetailDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryDetailVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryDetailBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryDetailBILLTIME: TStringField
      FieldName = 'BILLTIME'
      Size = 12
    end
    object QueryDetailMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryDetailUserName: TStringField
      FieldKind = fkLookup
      FieldName = 'UserName'
      LookupKeyFields = 'USERID'
      LookupResultField = 'USERNAME'
      KeyFields = 'MODIFYBY'
      Size = 30
      Lookup = True
    end
    object QueryDetailNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object QueryDetailCOMMUNITYID: TFloatField
      FieldName = 'COMMUNITYID'
    end
    object QueryDetailCommunity: TStringField
      FieldKind = fkLookup
      FieldName = 'Community'
      LookupDataSet = Query_Community
      LookupKeyFields = 'COMMUNITYID'
      LookupResultField = 'COMMUNITY'
      KeyFields = 'COMMUNITYID'
      Size = 40
      Lookup = True
    end
    object QueryDetailPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 50
    end
    object QueryDetailCANCELREMARKS: TStringField
      FieldName = 'CANCELREMARKS'
      Size = 30
    end
    object QueryDetailBILLTYPE: TStringField
      FieldName = 'BILLTYPE'
      Size = 2
    end
    object QueryDetailQTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryDetailAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryDetailMEMBERNO: TStringField
      FieldName = 'MEMBERNO'
      Size = 8
    end
    object QueryDetailSCHEMEID: TFloatField
      FieldName = 'SCHEMEID'
    end
    object QueryDetailDIS: TFloatField
      FieldName = 'DIS'
    end
    object QueryDetailDEPID: TFloatField
      FieldName = 'DEPID'
    end
    object QueryDetailRATETYPE: TStringField
      FieldName = 'RATETYPE'
      Size = 5
    end
    object QueryDetailDOLLARAMOUNT: TFloatField
      FieldName = 'DOLLARAMOUNT'
    end
    object QueryDetailDOLLARDISCOUNT: TFloatField
      FieldName = 'DOLLARDISCOUNT'
    end
    object QueryDetailDOLLARVATAMT: TFloatField
      FieldName = 'DOLLARVATAMT'
    end
    object QueryDetailDOLLAREXRATE: TFloatField
      FieldName = 'DOLLAREXRATE'
    end
    object QueryDetailSCHEME: TStringField
      FieldName = 'SCHEME'
      Size = 100
    end
  end
  object DS_Schemes: TDataSource
    DataSet = Query_Schemes
    Left = 772
    Top = 199
  end
  object Query_Schemes: TOraQuery
    SQL.Strings = (
      'Select * From HS_SCHE_Scheme'
      'where SCHE_IsActive='#39'Y'#39
      'Order by SCHE_Scheme')
    Left = 764
    Top = 183
  end
  object QueryDocRoutine: TOraQuery
    SQL.Strings = (
      'Select DocCode,DepCode,DActive,'
      'F_Name||'#39' '#39'||L_Name as DocName from Doctor order By F_Name')
    Left = 677
    Top = 336
  end
  object DataSourceQueryDocRoutine: TDataSource
    DataSet = QueryDocRoutine
    Left = 700
    Top = 352
  end
  object Query_Process: TOraQuery
    SQL.Strings = (
      'Select DocCode,DepCode,DActive,'
      'F_Name||'#39' '#39'||L_Name as DocName from Doctor order By F_Name')
    Left = 445
    Top = 65533
  end
  object QueryQueNo: TOraQuery
    SQL.Strings = (
      'Select max(queno) as Count from Patientvisit'
      'where (LASTVISITDATE=:Date1)'
      'And(NOOFVISIT>=2) '
      'and ModifyTime>=:Ftime'
      'and ModifyTime<=:Ttime'
      'and (DepCode=:DepCode)')
    Left = 715
    Top = 430
    ParamData = <
      item
        DataType = ftString
        Name = 'Date1'
      end
      item
        DataType = ftString
        Name = 'Ftime'
      end
      item
        DataType = ftString
        Name = 'Ttime'
      end
      item
        DataType = ftString
        Name = 'DepCode'
      end>
    object QueryQueNoCOUNT: TFloatField
      FieldName = 'COUNT'
    end
  end
  object Query_DocShareDivision: TOraQuery
    Left = 572
    Top = 301
  end
  object Query_Fraction: TOraQuery
    SQL.Strings = (
      'Select DocCode,DepCode,DActive,'
      'F_Name||'#39' '#39'||L_Name as DocName from Doctor order By F_Name')
    Left = 605
    Top = 293
  end
  object Query_BlueBookCharge: TOraQuery
    SQL.Strings = (
      
        'Select  *  From VW_HS_SETUP_TESTNAMEPRICE where TestNameCode='#39'BL' +
        'UBC01'#39' and PatientTypeCode='#39'GEN'#39
      '')
    Left = 532
    Top = 12
  end
  object Query_OPDCardCharge: TOraQuery
    SQL.Strings = (
      
        'Select  *  From VW_HS_SETUP_TESTNAMEPRICE where TestNameCode='#39'OP' +
        'DBC01'#39' and PatientTypeCode='#39'GEN'#39
      '')
    Left = 508
    Top = 13
  end
  object Query_OPDVisitCharge: TOraQuery
    SQL.Strings = (
      
        'Select DEPT_DEPID DepId,DEPT_DEPCODE DepCode,DEPT_DEPNAME DepNam' +
        'e,DEPT_REPORTTITLE REPORTTITLE '
      'From HS_DEPT_Department'
      'Where DEPT_DEPTYPE='#39'C'#39
      'Order by DEPT_DEPNAME  ')
    Left = 693
    Top = 240
  end
  object Query_Department: TOraQuery
    SQL.Strings = (
      
        'Select DEPT_DEPID DepId,DEPT_DEPCODE DepCode,DEPT_DEPNAME DepNam' +
        'e,DEPT_REPORTTITLE REPORTTITLE ,Dept_DepType DepType'
      'From HS_DEPT_Department'
      'Where DEPT_DEPTYPE In ('#39'C'#39','#39'E'#39')'
      'Order by DEPT_DEPNAME  ')
    Left = 741
    Top = 288
  end
  object DS_Department: TDataSource
    DataSet = Query_Department
    Left = 752
    Top = 296
  end
  object Query_PatientType: TOraQuery
    SQL.Strings = (
      'Select * From HS_PATY_PatientType'
      'Order by PATY_DisplayOrder')
    Left = 349
    Top = 248
  end
  object DS_PatientType: TDataSource
    DataSet = Query_PatientType
    Left = 392
    Top = 248
  end
end
