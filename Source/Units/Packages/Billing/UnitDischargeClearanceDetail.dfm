object FormDischargeClearanceDetail: TFormDischargeClearanceDetail
  Left = 250
  Top = 135
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Discharge Clearance Detail'
  ClientHeight = 612
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    803
    612)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlBedCharge: TPageControl
    Left = 0
    Top = 37
    Width = 803
    Height = 556
    ActivePage = TabSheet3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object TabSheet3: TTabSheet
      Caption = 'Bed Charges'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 782
      ExplicitHeight = 460
      object Label34: TLabel
        Left = 4
        Top = 92
        Width = 35
        Height = 13
        Caption = 'TESTS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 66
        Width = 795
        Height = 462
        TabOrder = 0
      end
      object DBGridBedCharge: TDBGrid
        Left = 3
        Top = 72
        Width = 791
        Height = 325
        Hint = 'After add Investigation Press Ctrl+Enter;'
        Color = clBtnFace
        DataSource = DataSource_TempBedCharge
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridBedChargeCellClick
        OnColEnter = DBGridBedChargeColEnter
        OnColExit = DBGridBedChargeColExit
        OnKeyDown = DBGridBedChargeKeyDown
        OnKeyPress = DBGridBedChargeKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'RoomType'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Room Type'
            Width = 133
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FromDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'From Date'
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ToDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'To Date'
            Width = 71
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'TotalDays'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total Days'
            Width = 59
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'Rate'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Color = 14079702
            Expanded = False
            FieldName = 'Total'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 71
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DisPer'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Dis. Per.'
            Width = 45
            Visible = True
          end
          item
            Color = clCaptionText
            Expanded = False
            FieldName = 'Discount'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 47
            Visible = True
          end
          item
            Color = 14079702
            Expanded = False
            FieldName = 'NetTotal'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Net Total'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VatAmt'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OldDisPer'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OldDiscount'
            Visible = False
          end
          item
            Color = clHighlightText
            Expanded = False
            FieldName = 'User'
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object GroupBox6: TGroupBox
        Left = 547
        Top = 397
        Width = 247
        Height = 127
        Caption = 'Account'
        TabOrder = 2
        object Label35: TLabel
          Left = 319
          Top = 40
          Width = 77
          Height = 16
          Caption = 'Extra Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label36: TLabel
          Left = 50
          Top = 14
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 29
          Top = 60
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Discount :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 26
          Top = 85
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pay Type :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label39: TLabel
          Left = 226
          Top = 106
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label40: TLabel
          Left = 31
          Top = 39
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ex. Duty :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelBCVTot: TLabel
          Left = 89
          Top = 35
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 12
          Top = 108
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grand Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelBCTotal: TLabel
          Left = 89
          Top = 104
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit6: TEdit
          Left = 401
          Top = 50
          Width = 154
          Height = 21
          Enabled = False
          TabOrder = 5
          Text = '0'
          Visible = False
        end
        object EditBCDisAmt: TEdit
          Left = 89
          Top = 58
          Width = 154
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object EditBCTotal: TEdit
          Left = 89
          Top = 12
          Width = 154
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
        end
        object ComboBox2: TComboBox
          Left = 89
          Top = 81
          Width = 65
          Height = 21
          TabOrder = 3
          Text = 'CREDIT'
          Items.Strings = (
            'CREDIT')
        end
        object Edit9: TEdit
          Left = 179
          Top = 104
          Width = 46
          Height = 21
          MaxLength = 3
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          Visible = False
        end
        object Edit10: TEdit
          Left = 155
          Top = 81
          Width = 88
          Height = 21
          TabOrder = 4
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 795
        Height = 70
        TabOrder = 3
        object Shape6: TShape
          Left = 4
          Top = 3
          Width = 609
          Height = 66
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label45: TLabel
          Left = 15
          Top = 8
          Width = 70
          Height = 13
          Caption = 'Hospital No    :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 15
          Top = 27
          Width = 70
          Height = 13
          Caption = 'Name             :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelBCNo: TLabel
          Left = 87
          Top = 8
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelBCName: TLabel
          Left = 87
          Top = 27
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape7: TShape
          Left = 616
          Top = 4
          Width = 162
          Height = 65
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label49: TLabel
          Left = 619
          Top = 27
          Width = 46
          Height = 16
          Caption = 'Today'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label50: TLabel
          Left = 15
          Top = 51
          Width = 74
          Height = 13
          Caption = 'In Patient No  : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelBCIPNO: TLabel
          Left = 87
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label52: TLabel
          Left = 428
          Top = 12
          Width = 87
          Height = 13
          Caption = 'IP Date                :'
        end
        object Label53: TLabel
          Left = 428
          Top = 32
          Width = 89
          Height = 13
          Caption = 'Discharged Date  :'
        end
        object LabelBCTotDay: TLabel
          Left = 517
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 171
          Top = 50
          Width = 45
          Height = 13
          Caption = 'Scheme :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 428
          Top = 51
          Width = 89
          Height = 13
          Caption = 'Total No. of Days :'
        end
        object LabelCommunityBC: TLabel
          Left = 221
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateEditXBCDate: TDateEditX
          Left = 670
          Top = 25
          Width = 106
          Height = 21
          TabOrder = 0
          ControlData = {
            545046300A5444617465456469745200044C656674039E0203546F7002190577
            69647468026A0B4461746541442E5965617203D2070C4461746541442E4D6F6E
            746802020A4461746541442E44617902060B4461746556532E59656172030A08
            0C4461746556532E4D6F6E7468020A0A4461746556532E446179021805436F6C
            6F720709636C42746E466163650C466F6E742E43686172736574070C414E5349
            5F434841525345540A466F6E742E436F6C6F72070C636C57696E646F77546578
            740B466F6E742E48656967687402F509466F6E742E4E616D65060D4D53205361
            6E732053657269660A466F6E742E5374796C650B066673426F6C64000A506172
            656E74466F6E74080000}
        end
        object Button6: TButton
          Left = 744
          Top = 27
          Width = 30
          Height = 17
          Caption = 'AD'
          TabOrder = 1
          OnClick = Button6Click
        end
        object DateEditXBCIPDate: TDateEditX
          Left = 517
          Top = 8
          Width = 94
          Height = 21
          TabOrder = 2
          ControlData = {
            545046300A5444617465456469745200044C65667403050203546F7002080577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object DateEditXBCDisDate: TDateEditX
          Left = 517
          Top = 28
          Width = 94
          Height = 21
          TabOrder = 3
          ControlData = {
            545046300A5444617465456469745200044C65667403050203546F70021C0577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object Button7: TButton
          Left = 582
          Top = 10
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 4
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 582
          Top = 31
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 5
          OnClick = Button8Click
        end
      end
    end
  end
  object PageControlServiceCharge: TPageControl
    Left = 0
    Top = 37
    Width = 803
    Height = 556
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Services Charges'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 782
      ExplicitHeight = 460
      DesignSize = (
        795
        528)
      object GroupBox4: TGroupBox
        Left = 1
        Top = 386
        Width = 523
        Height = 140
        TabOrder = 0
        OnClick = DBGridBedChargeColEnter
        object Label21: TLabel
          Left = 23
          Top = 23
          Width = 85
          Height = 13
          Caption = 'For (Test Name)  :'
          Color = clGrayText
          Enabled = False
          ParentColor = False
        end
        object LabelTestName: TLabel
          Left = 117
          Top = 23
          Width = 72
          Height = 13
          Caption = '........................'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 43
          Top = 71
          Width = 65
          Height = 13
          Caption = 'Discount (%) :'
          Color = clGrayText
          Enabled = False
          ParentColor = False
        end
        object Label31: TLabel
          Left = 6
          Top = 48
          Width = 102
          Height = 13
          Hint = 'Actual DR./Tech.:'
          Alignment = taRightJustify
          Caption = 'Dis. From DR./Tech.:'
          Color = clGrayText
          Enabled = False
          ParentColor = False
          ParentShowHint = False
          ShowHint = True
        end
        object Label41: TLabel
          Left = 320
          Top = 46
          Width = 90
          Height = 13
          Caption = 'Fraction Amt. (Rs) :'
          Enabled = False
        end
        object Label_FractionAmt: TLabel
          Left = 416
          Top = 46
          Width = 26
          Height = 13
          Caption = '0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 304
          Top = 71
          Width = 106
          Height = 13
          Caption = 'Discounted Amt. (Rs) :'
          Enabled = False
        end
        object Label_DisAmount: TLabel
          Left = 416
          Top = 71
          Width = 26
          Height = 13
          Caption = '0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit_DisPer: TEdit
          Left = 117
          Top = 67
          Width = 90
          Height = 21
          Enabled = False
          TabOrder = 2
          OnExit = Edit_DisPerExit
          OnKeyDown = Edit_DisPerKeyDown
          OnKeyPress = Edit_DisPerKeyPress
        end
        object BitBtn_SetDiscount: TBitBtn
          Left = 117
          Top = 90
          Width = 90
          Height = 25
          Caption = 'Set &Discount (F2)'
          DoubleBuffered = True
          Enabled = False
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = BitBtn_SetDiscountClick
          OnKeyDown = BitBtn_SetDiscountKeyDown
        end
        object DBLCB_ActualDrTech: TDBLookupComboBox
          Left = 117
          Top = 44
          Width = 191
          Height = 21
          Color = clScrollBar
          DropDownAlign = daRight
          DropDownWidth = 273
          Enabled = False
          KeyField = 'POSITIONWISECOMMID'
          ListField = 'POSITIONNAME'
          ListFieldIndex = 1
          ListSource = DS_ActulaDoctor
          TabOrder = 1
          OnClick = DBLCB_ActualDrTechClick
          OnKeyDown = DBLCB_ActualDrTechKeyDown
          OnKeyPress = DBLCB_ActualDrTechKeyPress
        end
        object CB_SPDiscount: TCheckBox
          Left = 117
          Top = 3
          Width = 198
          Height = 17
          Caption = 'Special Discount (on doctor part) (F1)'
          Color = clGrayText
          ParentColor = False
          TabOrder = 0
          OnClick = CB_SPDiscountClick
        end
      end
      object DBGridPatientTest: TDBGrid
        Left = 3
        Top = 72
        Width = 791
        Height = 308
        Hint = 'After add Investigation Press Ctrl+Enter;'
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataSource = DataSourceTablePTTestTemp
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridPatientTestCellClick
        OnColEnter = DBGridPatientTestColEnter
        OnColExit = DBGridPatientTestColExit
        OnDrawColumnCell = DBGridPatientTestDrawColumnCell
        OnKeyDown = FormKeyDown
        OnKeyPress = DBGridPatientTestKeyPress
        Columns = <
          item
            Color = clHighlightText
            Expanded = False
            FieldName = 'CrModifyDate'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'CrBillNo'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Width = 92
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'TestNameCode'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'TestCode'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestName'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Test Name'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocCode'
            Title.Alignment = taCenter
            Width = 48
            Visible = True
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'CostPrice'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Unit Cost'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 21
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VatAmt'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Vat Amt'
            Visible = False
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'Total'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total Price'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DisPer'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 46
            Visible = True
          end
          item
            Color = clWindow
            Expanded = False
            FieldName = 'Discount'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 46
            Visible = True
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'NetTotal'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Net Total'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OldDisPer'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'OldDiscount'
            Visible = False
          end
          item
            Color = clHighlightText
            Expanded = False
            FieldName = 'User'
            Title.Alignment = taCenter
            Width = 48
            Visible = True
          end
          item
            Color = clHighlightText
            Expanded = False
            FieldName = 'TNCategoryCode'
            Title.Caption = 'Test Category'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BillDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Visible = False
          end
          item
            Alignment = taCenter
            Color = 14672870
            Expanded = False
            FieldName = 'Category'
            Title.Alignment = taCenter
            Title.Caption = 'Rate'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Payment'
            Title.Alignment = taRightJustify
            Title.Caption = 'Adv. Amt. At Billing'
            Width = 96
            Visible = True
          end>
      end
      object GroupBox_Account: TGroupBox
        Left = 530
        Top = 380
        Width = 262
        Height = 146
        Caption = 'Account'
        TabOrder = 2
        object Label16: TLabel
          Left = 319
          Top = 40
          Width = 77
          Height = 16
          Caption = 'Extra Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label32: TLabel
          Left = 47
          Top = 11
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 26
          Top = 53
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Discount :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 23
          Top = 76
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pay Type :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 226
          Top = 96
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label67: TLabel
          Left = 28
          Top = 34
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ex. Duty :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelVTot: TLabel
          Left = 89
          Top = 30
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label69: TLabel
          Left = 9
          Top = 98
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grand Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelTotal: TLabel
          Left = 89
          Top = 94
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object EditECharge: TEdit
          Left = 401
          Top = 50
          Width = 154
          Height = 21
          Enabled = False
          TabOrder = 5
          Text = '0'
          Visible = False
        end
        object EditDisAmt: TEdit
          Left = 89
          Top = 49
          Width = 154
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object EditTotal: TEdit
          Left = 89
          Top = 9
          Width = 154
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
        end
        object CMBPayType: TComboBox
          Left = 89
          Top = 72
          Width = 65
          Height = 21
          TabOrder = 3
          Text = 'CREDIT'
          Items.Strings = (
            'CREDIT')
        end
        object EditDisPer: TEdit
          Left = 179
          Top = 94
          Width = 46
          Height = 21
          MaxLength = 3
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          Visible = False
        end
        object EditCheckNo: TEdit
          Left = 155
          Top = 72
          Width = 88
          Height = 21
          TabOrder = 4
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 795
        Height = 70
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        object Shape3: TShape
          Left = 0
          Top = 3
          Width = 614
          Height = 66
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label25: TLabel
          Left = 14
          Top = 7
          Width = 70
          Height = 13
          Caption = 'Hospital No    :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 14
          Top = 27
          Width = 67
          Height = 13
          Caption = 'Name            :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelNo: TLabel
          Left = 85
          Top = 7
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Labelname: TLabel
          Left = 85
          Top = 27
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape4: TShape
          Left = 616
          Top = 4
          Width = 162
          Height = 65
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label22: TLabel
          Left = 619
          Top = 26
          Width = 46
          Height = 16
          Caption = 'Today'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 13
          Top = 51
          Width = 71
          Height = 13
          Caption = 'InPatient No  : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelIpNo: TLabel
          Left = 84
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label84: TLabel
          Left = 426
          Top = 12
          Width = 90
          Height = 13
          Caption = 'IP Date                 :'
        end
        object Label85: TLabel
          Left = 426
          Top = 32
          Width = 89
          Height = 13
          Caption = 'Discharged Date  :'
        end
        object LabelTotalDay: TLabel
          Left = 517
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 162
          Top = 51
          Width = 45
          Height = 13
          Caption = 'Scheme :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 426
          Top = 51
          Width = 89
          Height = 13
          Caption = 'Total No. of Days :'
        end
        object LabelCommunity: TLabel
          Left = 219
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Sbtn_ChangeRateType: TSpeedButton
          Left = 669
          Top = 45
          Width = 103
          Height = 21
          Caption = 'Change Bill Type'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = Sbtn_ChangeRateTypeClick
        end
        object DateEditXSCDate: TDateEditX
          Left = 670
          Top = 24
          Width = 106
          Height = 21
          TabOrder = 0
          ControlData = {
            545046300A5444617465456469745200044C656674039E0203546F7002180577
            69647468026A0B4461746541442E5965617203D2070C4461746541442E4D6F6E
            746802020A4461746541442E44617902060B4461746556532E59656172030A08
            0C4461746556532E4D6F6E7468020A0A4461746556532E446179021805436F6C
            6F720709636C42746E466163650C466F6E742E43686172736574070C414E5349
            5F434841525345540A466F6E742E436F6C6F72070C636C57696E646F77546578
            740B466F6E742E48656967687402F509466F6E742E4E616D65060D4D53205361
            6E732053657269660A466F6E742E5374796C650B066673426F6C64000A506172
            656E74466F6E74080000}
        end
        object ButtonADVSregInvestigation: TButton
          Left = 747
          Top = 26
          Width = 26
          Height = 17
          Caption = 'AD'
          TabOrder = 1
          OnClick = ButtonADVSregInvestigationClick
        end
        object DateEditXIPDate: TDateEditX
          Left = 517
          Top = 8
          Width = 94
          Height = 21
          TabOrder = 2
          ControlData = {
            545046300A5444617465456469745200044C65667403050203546F7002080577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object DateEditXDisDate: TDateEditX
          Left = 517
          Top = 28
          Width = 94
          Height = 21
          TabOrder = 3
          ControlData = {
            545046300A5444617465456469745200044C65667403050203546F70021C0577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object Button2: TButton
          Left = 582
          Top = 10
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 4
          OnClick = Button2Click
        end
        object Button4: TButton
          Left = 582
          Top = 31
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 5
          OnClick = Button4Click
        end
      end
    end
  end
  object PageControlMedicineCharge: TPageControl
    Left = 0
    Top = 37
    Width = 803
    Height = 556
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Medicine Charges'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 22
      DesignSize = (
        795
        528)
      object Label2: TLabel
        Left = 4
        Top = 92
        Width = 35
        Height = 13
        Caption = 'TESTS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 65
        Width = 795
        Height = 464
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object DBGridMedicineCharge: TDBGrid
        Left = 3
        Top = 72
        Width = 791
        Height = 324
        Hint = 'After add Investigation Press Ctrl+Enter;'
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        DataSource = DataSource_TempMedicineCharge
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGridMedicineChargeCellClick
        OnColEnter = DBGridMedicineChargeColEnter
        OnColExit = DBGridMedicineChargeColExit
        OnKeyDown = DBGridMedicineChargeKeyDown
        OnKeyPress = DBGridMedicineChargeKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'BillDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'BillNo'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Width = 101
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'TestNameCode'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Name Code'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ItemsName'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Test Name'
            Width = 217
            Visible = True
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'UnitRate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Unit Rate'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VatAmt'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Vat Amt'
            Visible = False
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'Total'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total Price'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DisPer'
            Title.Alignment = taCenter
            Width = 40
            Visible = True
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'Discount'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 48
            Visible = True
          end
          item
            Color = 14672870
            Expanded = False
            FieldName = 'NetTotal'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayStatus'
            PickList.Strings = (
              'YES'
              'NO'
              'FREE')
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Payment'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Special'
            PickList.Strings = (
              'TRUE'
              'FALSE'
              'CANCEL')
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Authorize'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ActualDisPer'
            Visible = False
          end
          item
            Color = clHighlightText
            Expanded = False
            FieldName = 'User'
            Title.Alignment = taCenter
            Width = 52
            Visible = True
          end>
      end
      object GroupBox2: TGroupBox
        Left = 547
        Top = 396
        Width = 247
        Height = 134
        Caption = 'Account'
        TabOrder = 2
        object Label3: TLabel
          Left = 319
          Top = 40
          Width = 77
          Height = 16
          Caption = 'Extra Charge'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label4: TLabel
          Left = 46
          Top = 14
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 25
          Top = 63
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Discount :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 22
          Top = 86
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Pay Type :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 226
          Top = 111
          Width = 14
          Height = 16
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label11: TLabel
          Left = 27
          Top = 40
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ex. Duty :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelMCVTot: TLabel
          Left = 89
          Top = 36
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 113
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grand Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelMCTotal: TLabel
          Left = 89
          Top = 109
          Width = 11
          Height = 20
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 401
          Top = 50
          Width = 154
          Height = 21
          Enabled = False
          TabOrder = 5
          Text = '0'
          Visible = False
        end
        object EditMCDisAmt: TEdit
          Left = 89
          Top = 61
          Width = 154
          Height = 21
          ReadOnly = True
          TabOrder = 1
          Text = '0'
        end
        object EditMCTotal: TEdit
          Left = 89
          Top = 12
          Width = 154
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0'
        end
        object ComboBox1: TComboBox
          Left = 89
          Top = 84
          Width = 65
          Height = 21
          TabOrder = 3
          Text = 'CREDIT'
          Items.Strings = (
            'CREDIT')
        end
        object Edit4: TEdit
          Left = 179
          Top = 109
          Width = 46
          Height = 21
          MaxLength = 3
          ReadOnly = True
          TabOrder = 2
          Text = '0'
          Visible = False
        end
        object Edit5: TEdit
          Left = 155
          Top = 84
          Width = 88
          Height = 21
          TabOrder = 4
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 795
        Height = 70
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
        object Shape1: TShape
          Left = 3
          Top = 3
          Width = 609
          Height = 66
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label17: TLabel
          Left = 14
          Top = 8
          Width = 67
          Height = 13
          Caption = 'Hospital No   :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 14
          Top = 27
          Width = 67
          Height = 13
          Caption = 'Name            :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelMCNo: TLabel
          Left = 83
          Top = 8
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LabelMCName: TLabel
          Left = 83
          Top = 27
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape5: TShape
          Left = 616
          Top = 4
          Width = 174
          Height = 62
          Brush.Color = clBtnFace
          Pen.Mode = pmMask
          Shape = stRoundRect
        end
        object Label23: TLabel
          Left = 619
          Top = 22
          Width = 46
          Height = 16
          Caption = 'Today'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 14
          Top = 51
          Width = 68
          Height = 13
          Caption = 'InPatient No : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelMCIPNo: TLabel
          Left = 83
          Top = 50
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 425
          Top = 12
          Width = 90
          Height = 13
          Caption = 'IP Date                 :'
        end
        object Label29: TLabel
          Left = 425
          Top = 32
          Width = 89
          Height = 13
          Caption = 'Discharged Date  :'
        end
        object LabelMCTotDay: TLabel
          Left = 516
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 425
          Top = 51
          Width = 89
          Height = 13
          Caption = 'Total No. of Days :'
        end
        object Label15: TLabel
          Left = 160
          Top = 51
          Width = 45
          Height = 13
          Caption = 'Scheme :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LabelCommunityMC: TLabel
          Left = 218
          Top = 51
          Width = 31
          Height = 13
          Caption = 'None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DateEditXMCDate: TDateEditX
          Left = 670
          Top = 20
          Width = 106
          Height = 21
          TabOrder = 0
          ControlData = {
            545046300A5444617465456469745200044C656674039E0203546F7002140577
            69647468026A0B4461746541442E5965617203D2070C4461746541442E4D6F6E
            746802020A4461746541442E44617902060B4461746556532E59656172030A08
            0C4461746556532E4D6F6E7468020A0A4461746556532E446179021805436F6C
            6F720709636C42746E466163650C466F6E742E43686172736574070C414E5349
            5F434841525345540A466F6E742E436F6C6F72070C636C57696E646F77546578
            740B466F6E742E48656967687402F509466F6E742E4E616D65060D4D53205361
            6E732053657269660A466F6E742E5374796C650B066673426F6C64000A506172
            656E74466F6E74080000}
        end
        object Button1: TButton
          Left = 747
          Top = 22
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 1
          OnClick = Button1Click
        end
        object DateEditX2: TDateEditX
          Left = 516
          Top = 8
          Width = 94
          Height = 21
          TabOrder = 2
          ControlData = {
            545046300A5444617465456469745200044C65667403040203546F7002080577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object DateEditXMCDisDate: TDateEditX
          Left = 516
          Top = 28
          Width = 94
          Height = 21
          TabOrder = 3
          ControlData = {
            545046300A5444617465456469745200044C65667403040203546F70021C0577
            69647468025E0B4461746541442E5965617203D4070C4461746541442E4D6F6E
            746802070A4461746541442E446179021E0B4461746556532E59656172030D08
            0C4461746556532E4D6F6E746802040A4461746556532E446179020F08526561
            644F6E6C79090000}
        end
        object Button3: TButton
          Left = 581
          Top = 10
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 4
          OnClick = Button3Click
        end
        object Button5: TButton
          Left = 581
          Top = 31
          Width = 27
          Height = 17
          Caption = 'AD'
          TabOrder = 5
          OnClick = Button5Click
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 37
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object Shape2: TShape
      Left = 4
      Top = 3
      Width = 796
      Height = 30
      Brush.Color = clBtnFace
      Shape = stRoundRect
    end
    object Label27: TLabel
      Left = 5
      Top = 16
      Width = 295
      Height = 14
      Caption = 'Discount is not Valid for Non Vatable and Non Discountable'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object BitBtnPrint: TBitBtn
      Left = 537
      Top = 6
      Width = 88
      Height = 25
      Caption = '&Print'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      Visible = False
      OnClick = BitBtnPrintClick
    end
    object BtnSave: TBitBtn
      Left = 625
      Top = 6
      Width = 84
      Height = 25
      Caption = '&Save (F12)'
      DoubleBuffered = True
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
      TabOrder = 1
      OnClick = BtnSaveClick
    end
    object BtnCancel: TBitBtn
      Left = 709
      Top = 6
      Width = 89
      Height = 25
      Caption = '&Cancel (ESC)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
      TabOrder = 2
      OnClick = BtnCancelClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 593
    Width = 803
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
    ExplicitTop = 514
    ExplicitWidth = 790
  end
    object Query_Process: TOraQuery
    Left = 134
    Top = 43
  end
  object Query_GetReturnMedicine: TOraQuery
    Left = 465
    Top = 304
  end
  object Query_TempProcess: TOraQuery
    Left = 141
    Top = 51
  end
  object Table_TempDetailPTest: TOraTable
    TableName = 'DetailPatientTest.db'
    Left = 17
    Top = 4
  end
object DataSourceTablePTTestTemp: TDataSource
    DataSet = Table_TempDetailPTest
    Left = 29
    Top = 4
  end
    object QueryPatientTest: TOraQuery
    SQL.Strings = (
            
              'Select CrModifyDate,CrModifyBy,BillDetailId,BillNo,CrBillNo,Rate' +
              'Type,BillDate,(Select TNCategoryCode From TestName Where'
            
              'TestNameCode=BillDetail.Service) as TNCategoryCode,(Select Extra' +
              'Charge From BillMaster where BillNo=BillDetail.CrBillNo) as Paym' +
              'ent,'
            
              'PatientId,InPatientId,PatientTestId,ModifyBy,(Select UserName Fr' +
              'om UserMain where UserId=billDetail.CrModifyBy) as UserName,'
            
              'CommunityId,SchemeId,DocCode,Service,ServiceType,Qty,Amount,Qty*' +
              'Amount as TotalAmt,Dis,VatAmt,'
            '(Qty*Amount*Dis/100) as Discount,'
            '((Qty*Amount)-(Qty*Amount*Dis/100)) as NetTotal'
            'From BillDetail where InPatientId=:IPID and CancelStatus='#39'N'#39
            'and (BillType='#39'IP'#39' or BillType='#39'A'#39'  )'
            'and PayType='#39'CREDIT'#39
            'and (BillDate >=:FromDate and BillDate<=:ToDate)'
            'Order By  CrModifyDate,BillDate,BillNo,CrBillNo,BillType'
            ''
            ' '
            ' ')
    Left = 155
    Top = 3
    ParamData = <
            item
              DataType = ftInteger
              Name = 'IPId'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end>
    object QueryPatientTestBILLDETAILID: TFloatField
      FieldName = 'BILLDETAILID'
    end
    object QueryPatientTestBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryPatientTestCRBILLNO: TStringField
      FieldName = 'CRBILLNO'
      Size = 15
    end
    object QueryPatientTestBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryPatientTestCRMODIFYDATE: TStringField
      FieldName = 'CRMODIFYDATE'
      Size = 10
    end
    object QueryPatientTestPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryPatientTestINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryPatientTestPATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object QueryPatientTestMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryPatientTestSERVICE: TStringField
      FieldName = 'SERVICE'
      Size = 10
    end
    object QueryPatientTestSERVICETYPE: TStringField
      FieldName = 'SERVICETYPE'
      Size = 75
    end
    object QueryPatientTestQTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryPatientTestAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryPatientTestTOTALAMT: TFloatField
      FieldName = 'TOTALAMT'
    end
    object QueryPatientTestDIS: TFloatField
      FieldName = 'DIS'
    end
    object QueryPatientTestVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryPatientTestDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryPatientTestNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
    end
    object QueryPatientTestRATETYPE: TStringField
      FieldName = 'RATETYPE'
      Size = 3
    end
    object QueryPatientTestPAYMENT: TFloatField
      FieldName = 'PAYMENT'
    end
    object QueryPatientTestCOMMUNITYID: TFloatField
      FieldName = 'COMMUNITYID'
    end
    object QueryPatientTestUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 100
    end
    object QueryPatientTestSCHEMEID: TFloatField
      FieldName = 'SCHEMEID'
    end
    object QueryPatientTestTNCATEGORYCODE: TStringField
      FieldName = 'TNCATEGORYCODE'
      Size = 6
    end
    object QueryPatientTestDOCCODE: TStringField
      FieldName = 'DOCCODE'
      Size = 10
    end
  end
  object Query_Community: TOraQuery
    SQL.Strings = (
            'Select Community From Community '
            'where CommunityId=:CommunityId'
            'Order By Priority')
    Left = 379
    Top = 306
    ParamData = <
            item
              DataType = ftInteger
              Name = 'CommunityId'
              ParamType = ptUnknown
            end>
  end
object DataSource_Community: TDataSource
    DataSet = Query_Community
    Left = 411
    Top = 306
  end
    object Table_TempBedCharge: TOraTable
    TableName = 'BedChargeDetail.db'
    Left = 64
    Top = 4
  end
object DataSource_TempBedCharge: TDataSource
    DataSet = Table_TempBedCharge
    Left = 74
    Top = 3
  end
    object QueryBedCharge: TOraQuery
    SQL.Strings = (
            
              'Select IPD.InPatientDId,IPD.InPatientId,IPD.BedCharge,IPD.OUTTim' +
              'e,IPD.DisBillDate,'
            'IPD.INPTDate,IPD.OUTDate,IPD.VatAmt,IPD.DisPer,RT.RoomType From '
            'InpatientDetail IPD,RoomType RT Where '
            'IPD.RoomTypeCode=RT.RoomTypeCode'
            'and IPD.InPatientId=:InptId Order By IPD.InpatientDID Desc ')
    Left = 187
    Top = 3
    ParamData = <
            item
              DataType = ftInteger
              Name = 'InptId'
              ParamType = ptUnknown
            end>
  end
  object Table_TempMedicineCharge: TOraTable
    TableName = 'MedicineChargeDetail.db'
    Left = 112
    Top = 4
  end
object DataSource_TempMedicineCharge: TDataSource
    DataSet = Table_TempMedicineCharge
    Left = 122
    Top = 3
  end
    object QueryMedicineCharge: TOraQuery
    Left = 218
    Top = 3
  end
  object Query_User: TOraQuery
    SQL.Strings = (
            'Select UserId,UserName From UserMain')
    Left = 266
    Top = 3
  end
  object QueryPatientTestOLd: TOraQuery
    SQL.Strings = (
            
              'Select A.CrModifyDate,A.BillDetailId,A.BillNo,A.RateType,A.BillD' +
              'ate,A.PatientId,B.InPatientId,A.PatientTestId,B.ModifyBy,'
            
              'A.Service,A.ServiceType,A.Qty,A.Amount,A.Qty*A.Amount as TotalAm' +
              't,A.Dis,A.VatAmt,'
            '(A.Qty*A.Amount*A.Dis/100) as Discount,'
            '((A.Qty*A.Amount)-(A.Qty*A.Amount*A.Dis/100)) as NetTotal'
            'from BillDetail A,PatientReceive B'
            'Where (A.BillNo=B.BillNo) And'
            '           (B.PatientID=:PatientID) And'
            '           (A.SERVICETYPE<>'#39'CANCEL'#39') AND'
            '           (B.Paytype='#39'CREDIT'#39') And'
            '           (B.RecDate>=:FromDate) AND'
            '           (B.RecDate<=:ToDate)'
            'Order By  A.BillDate,A.BillNo,A.BillType ')
    Left = 501
    Top = 304
    ParamData = <
            item
              DataType = ftInteger
              Name = 'PatientID'
              ParamType = ptUnknown
              Value = '93300'
            end
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
              Value = '2059/08/16'
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
              Value = '2058/08/16'
            end>
    object QueryPatientTestOLdCRMODIFYDATE: TStringField
      FieldName = 'CRMODIFYDATE'
      Size = 10
    end
    object QueryPatientTestOLdBILLDETAILID: TFloatField
      FieldName = 'BILLDETAILID'
    end
    object QueryPatientTestOLdBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryPatientTestOLdRATETYPE: TStringField
      FieldName = 'RATETYPE'
      Size = 8
    end
    object QueryPatientTestOLdBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryPatientTestOLdPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryPatientTestOLdINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryPatientTestOLdPATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object QueryPatientTestOLdMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryPatientTestOLdSERVICE: TStringField
      FieldName = 'SERVICE'
      Size = 10
    end
    object QueryPatientTestOLdSERVICETYPE: TStringField
      FieldName = 'SERVICETYPE'
      Size = 75
    end
    object QueryPatientTestOLdQTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryPatientTestOLdAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryPatientTestOLdTOTALAMT: TFloatField
      FieldName = 'TOTALAMT'
    end
    object QueryPatientTestOLdDIS: TFloatField
      FieldName = 'DIS'
    end
    object QueryPatientTestOLdVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryPatientTestOLdDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryPatientTestOLdNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
    end
    object QueryPatientTestOLdUser: TStringField
      FieldKind = fkLookup
      FieldName = 'User'
      LookupDataSet = Query_User
      LookupKeyFields = 'USERID'
      LookupResultField = 'USERNAME'
      KeyFields = 'MODIFYBY'
      Lookup = True
    end
  end
  object Query_Subprocess: TOraQuery
    Left = 260
    Top = 285
  end
  object Query_ActDoctor: TOraQuery
    SQL.Strings = (
            
              'Select BD.BillDetailId,BD.Service,TN.TestName,TN.TestNameId,BD.A' +
              'MOUNT,BD.QTY,BD.DIS,'
            
              'PWC.COMMAMTA,PWC.COMMRATEA,(BD.AMOUNT-PWC.COMMAMTA) as ActualAmt' +
              ','
            'DC.DRCOMMID,PWC.POSITIONWISECOMMID, PWC.PositionName,PWC.Name'
            
              'From BillDetail BD,TestName TN,DoctorCommession DC,PositionWiseC' +
              'ommession PWC'
            'where BD.SERVICE=TN.TESTNAMECODE '
            '      and TN.TESTNAMEID=DC.TESTNAMEID '
            '      and DC.DRCOMMID=PWC.DRCOMMID'
            '      and TN.IsDiscountable='#39'Y'#39' '
            '      and BD.INPATIENTID=:InpatientId'
            '      and BD.service=:TestNameCode'
            '      and PWC.ISHOSPITALPART='#39'N'#39'            ')
    Left = 73
    Top = 304
    ParamData = <
            item
              DataType = ftInteger
              Name = 'InpatientId'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'TestNameCode'
              ParamType = ptUnknown
            end>
  end
object DS_ActulaDoctor: TDataSource
    DataSet = Query_ActDoctor
    Left = 93
    Top = 336
  end
end
