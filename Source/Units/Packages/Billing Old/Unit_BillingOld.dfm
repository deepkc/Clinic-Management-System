object FormInpMain: TFormInpMain
  Left = 0
  Top = 0
  Caption = 'Inpatient'
  ClientHeight = 722
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BtnCancel: TBitBtn
      Left = 906
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Cancel'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnCancelClick
    end
    object BtnSave: TBitBtn
      Left = 828
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
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BtnSaveClick
    end
    object BitBtnDischargeBill: TBitBtn
      Left = 720
      Top = 0
      Width = 108
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Discharge Bill [F2]'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnDischargeBillClick
    end
    object BitBtnBillBreakup: TBitBtn
      Left = 640
      Top = 0
      Width = 80
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Bill BreakUp'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtnBillBreakupClick
    end
    object BitBtn_ReferralDoc: TBitBtn
      Left = 552
      Top = 0
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Referral Doctor'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtn_ReferralDocClick
    end
    object BitBtnUndo: TBitBtn
      Left = 464
      Top = 0
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Undo Discharge'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtnUndoClick
    end
    object BitBtnCrBilling: TBitBtn
      Left = 384
      Top = 0
      Width = 80
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Credit Billing'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtnCrBillingClick
    end
    object BitBtnDeposit: TBitBtn
      Left = 296
      Top = 0
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Deposit'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtnDepositClick
    end
    object BitBtnBedExchange: TBitBtn
      Left = 112
      Top = 0
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Bed Exchange'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtnBedExchangeClick
      ExplicitLeft = 240
      ExplicitTop = 1
    end
    object BitBtn_PathoDueClear: TBitBtn
      Left = 200
      Top = 0
      Width = 96
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Patho Deu Clear'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
      OnClick = BitBtn_PathoDueClearClick
      ExplicitTop = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 984
    Height = 689
    Align = alClient
    TabOrder = 1
    object BitBtn_BringPending: TSpeedButton
      Left = 758
      Top = 3
      Width = 110
      Height = 24
      Caption = '<- Bring On Pending'
      OnClick = BitBtn_BringPendingClick
    end
    object BitBtnPending: TSpeedButton
      Left = 867
      Top = 3
      Width = 110
      Height = 24
      Caption = 'Keep On Pending ->'
      OnClick = BitBtnPendingClick
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 26
      Width = 976
      Height = 659
      Margins.Top = 25
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Find'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 968
          Height = 91
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox1: TGroupBox
            Left = 6
            Top = 4
            Width = 395
            Height = 84
            TabOrder = 0
            object BitBtnGo: TSpeedButton
              Left = 196
              Top = 8
              Width = 37
              Height = 24
              Caption = 'GO'
            end
            object EditHospitalNo: TLabeledEdit
              Left = 93
              Top = 8
              Width = 97
              Height = 21
              EditLabel.Width = 72
              EditLabel.Height = 13
              EditLabel.Caption = 'Hospital No. :'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWindowText
              EditLabel.Font.Height = -11
              EditLabel.Font.Name = 'Tahoma'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              LabelPosition = lpLeft
              TabOrder = 0
              OnChange = EditHospitalNoChange
              OnKeyDown = EditHospitalNoKeyDown
              OnKeyPress = EditHospitalNoKeyPress
            end
            object EditXsearch: TLabeledEdit
              Left = 93
              Top = 32
              Width = 97
              Height = 21
              EditLabel.Width = 79
              EditLabel.Height = 13
              EditLabel.Caption = 'Inpatient No. :'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWindowText
              EditLabel.Font.Height = -11
              EditLabel.Font.Name = 'Tahoma'
              EditLabel.Font.Style = [fsBold]
              EditLabel.ParentFont = False
              LabelPosition = lpLeft
              TabOrder = 1
              OnChange = EditXsearchChange
              OnKeyDown = EditXsearchKeyDown
              OnKeyPress = EditXsearchKeyPress
            end
            object CheckBoxToday: TCheckBox
              Left = 93
              Top = 58
              Width = 139
              Height = 17
              Caption = 'Out Standing Patient [F1]'
              TabOrder = 2
              OnClick = CheckBoxTodayClick
              OnKeyDown = CheckBoxTodayKeyDown
            end
            object RadioButtonAdmit: TRadioButton
              Left = 259
              Top = 12
              Width = 89
              Height = 17
              Caption = 'Admitted Only'
              TabOrder = 3
              OnClick = RadioButtonAdmitClick
            end
            object RadioButtonDischargedOnly: TRadioButton
              Left = 259
              Top = 35
              Width = 102
              Height = 17
              Caption = 'Discharged Only'
              TabOrder = 4
              OnClick = RadioButtonDischargedOnlyClick
            end
            object RadioButtonDischarge: TRadioButton
              Left = 259
              Top = 59
              Width = 129
              Height = 17
              Caption = 'Admitted+Discharged'
              TabOrder = 5
              OnClick = RadioButtonDischargeClick
            end
          end
          object GroupBox2: TGroupBox
            Left = 407
            Top = 4
            Width = 146
            Height = 84
            TabOrder = 1
            object Label1: TLabel
              Left = 8
              Top = 32
              Width = 31
              Height = 13
              Caption = 'From :'
            end
            object Label2: TLabel
              Left = 20
              Top = 58
              Width = 19
              Height = 13
              Caption = 'To :'
            end
            object SpeedButton4: TSpeedButton
              Left = 108
              Top = 29
              Width = 24
              Height = 24
              Caption = 'AD'
            end
            object SpeedButton5: TSpeedButton
              Left = 108
              Top = 53
              Width = 24
              Height = 24
              Caption = 'AD'
            end
            object CheckBox_Search: TCheckBox
              Left = 7
              Top = 4
              Width = 139
              Height = 17
              Caption = 'Search By Date'
              TabOrder = 0
              OnClick = CheckBox_SearchClick
            end
            object DateEditX_From: TDateEditX
              Left = 42
              Top = 30
              Width = 65
              Height = 21
              TabOrder = 1
              ControlData = {
                545046300A5444617465456469745200044C656674022A03546F70021E0B4461
                746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A44617465
                41442E44617902140B4461746556532E596561720314080C4461746556532E4D
                6F6E746802080A4461746556532E44617902040000}
            end
            object DateEditX_To: TDateEditX
              Left = 42
              Top = 54
              Width = 65
              Height = 21
              TabOrder = 2
              ControlData = {
                545046300A5444617465456469745200044C656674022A03546F7002360B4461
                746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A44617465
                41442E44617902140B4461746556532E596561720314080C4461746556532E4D
                6F6E746802080A4461746556532E44617902040000}
            end
          end
          object GroupBox3: TGroupBox
            Left = 559
            Top = 4
            Width = 346
            Height = 84
            TabOrder = 2
            object LabelIncreasedDate1: TLabel
              Left = 12
              Top = 58
              Width = 56
              Height = 13
              Caption = '2068/08/04'
            end
            object SpeedButton6: TSpeedButton
              Left = 74
              Top = 29
              Width = 25
              Height = 24
              Caption = 'AD'
            end
            object Label5: TLabel
              Left = 8
              Top = 8
              Width = 30
              Height = 13
              Caption = 'Today'
            end
            object Shape1: TShape
              Left = 141
              Top = 9
              Width = 14
              Height = 13
              Brush.Color = clRed
              Pen.Style = psClear
            end
            object Label3: TLabel
              Left = 160
              Top = 8
              Width = 147
              Height = 13
              Caption = '-> Dis. in Deposit [Bill Pending]'
            end
            object Shape2: TShape
              Left = 141
              Top = 25
              Width = 14
              Height = 13
              Brush.Color = clGreen
              Pen.Style = psClear
            end
            object Label6: TLabel
              Left = 160
              Top = 24
              Width = 146
              Height = 13
              Caption = '-> Dis. in Deposit [Bill Cleared]'
            end
            object Label7: TLabel
              Left = 144
              Top = 39
              Width = 113
              Height = 13
              Caption = 'Include more than days'
            end
            object Shape3: TShape
              Left = 8
              Top = 57
              Width = 91
              Height = 18
              Brush.Style = bsClear
            end
            object BitBtnRefresh: TSpeedButton
              Left = 196
              Top = 53
              Width = 109
              Height = 24
              Caption = 'Refresh [F5]'
              OnClick = BitBtnRefreshClick
            end
            object DateEditX_TodayIPView: TDateEditX
              Left = 8
              Top = 30
              Width = 66
              Height = 21
              TabOrder = 0
              ControlData = {
                545046300A5444617465456469745200044C656674020803546F70021E057769
                64746802420B4461746541442E5965617203DB070C4461746541442E4D6F6E74
                68020B0A4461746541442E44617902140B4461746556532E596561720314080C
                4461746556532E4D6F6E746802080A4461746556532E44617902040000}
            end
            object EditDay: TSpinEdit
              Left = 144
              Top = 54
              Width = 49
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 0
              OnExit = EditDayExit
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 91
          Width = 968
          Height = 540
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object DBGridMain: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 25
            Width = 962
            Height = 512
            Margins.Top = 25
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridMainDrawColumnCell
            OnKeyDown = DBGridMainKeyDown
            Columns = <
              item
                Expanded = False
                Title.Caption = 'First Name'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Last Name'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Age/Sex'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Hospital No.'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Inpt. No.'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'IP-Date'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'A.T.'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Dis-Date'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'War/Room Type'
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Doctor'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Addres'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Guardian'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Phone No.'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                Title.Caption = 'Bill No.'
                Width = 65
                Visible = True
              end>
          end
          object EditLName: TEdit
            Left = 85
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 1
            OnChange = EditLNameChange
            OnKeyDown = EditLNameKeyDown
            OnKeyPress = EditLNameKeyPress
          end
          object Edit3: TEdit
            Left = 150
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 2
            OnChange = Edit3Change
            OnKeyDown = Edit3KeyDown
            OnKeyPress = Edit3KeyPress
          end
          object EditPatientId: TEdit
            Left = 215
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 3
            OnChange = EditPatientIdChange
            OnKeyDown = EditPatientIdKeyDown
            OnKeyPress = EditPatientIdKeyPress
          end
          object EditInpatientId: TEdit
            Left = 282
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 4
            OnChange = EditInpatientIdChange
            OnKeyDown = EditInpatientIdKeyDown
          end
          object EditIPDate: TEdit
            Left = 348
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 5
            OnChange = EditIPDateChange
            OnKeyDown = EditIPDateKeyDown
            OnKeyPress = EditIPDateKeyPress
          end
          object Edit7: TEdit
            Left = 414
            Top = 1
            Width = 60
            Height = 21
            TabOrder = 6
          end
          object EditDisDate: TEdit
            Left = 476
            Top = 1
            Width = 62
            Height = 21
            TabOrder = 7
            OnChange = EditDisDateChange
            OnKeyDown = EditDisDateKeyDown
            OnKeyPress = EditDisDateKeyPress
          end
          object EditWardRoom: TEdit
            Left = 542
            Top = 1
            Width = 77
            Height = 21
            TabOrder = 8
            OnChange = EditWardRoomChange
            OnKeyDown = EditWardRoomKeyDown
            OnKeyPress = EditWardRoomKeyPress
          end
          object EditDoctor: TEdit
            Left = 621
            Top = 1
            Width = 63
            Height = 21
            TabOrder = 9
            OnChange = EditDoctorChange
            OnKeyPress = EditDoctorKeyPress
            OnKeyUp = EditDoctorKeyUp
          end
          object EditAddress: TEdit
            Left = 687
            Top = 1
            Width = 64
            Height = 21
            TabOrder = 10
            OnChange = EditAddressChange
            OnKeyDown = EditAddressKeyDown
          end
          object Edit12: TEdit
            Left = 755
            Top = 1
            Width = 62
            Height = 21
            TabOrder = 11
          end
          object Edit13: TEdit
            Left = 819
            Top = 1
            Width = 64
            Height = 21
            TabOrder = 12
          end
          object Edit14: TEdit
            Left = 885
            Top = 1
            Width = 66
            Height = 21
            TabOrder = 13
          end
          object EditFName: TEdit
            Left = 6
            Top = 1
            Width = 75
            Height = 21
            TabOrder = 14
            OnChange = EditFNameChange
            OnKeyDown = EditFNameKeyDown
            OnKeyPress = EditFNameKeyPress
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Billing'
        ImageIndex = 1
        object GroupBox4: TGroupBox
          Left = 6
          Top = 4
          Width = 952
          Height = 40
          TabOrder = 0
          object SP_PatientSearch: TSpeedButton
            Left = 196
            Top = 8
            Width = 37
            Height = 24
            Caption = 'GO'
          end
          object Label8: TLabel
            Left = 256
            Top = 12
            Width = 46
            Height = 13
            Caption = 'Bill Type :'
          end
          object SPB_MedicareNo: TSpeedButton
            Left = 404
            Top = 8
            Width = 87
            Height = 24
            Caption = 'Medicare No. :'
          end
          object Label9: TLabel
            Left = 628
            Top = 12
            Width = 60
            Height = 13
            Caption = 'Community :'
          end
          object Label10: TLabel
            Left = 796
            Top = 12
            Width = 44
            Height = 13
            Caption = 'Scheme :'
          end
          object EditPsearch: TLabeledEdit
            Left = 93
            Top = 8
            Width = 97
            Height = 21
            EditLabel.Width = 79
            EditLabel.Height = 13
            EditLabel.Caption = 'Inpatient No. :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 0
            OnKeyDown = EditPsearchKeyDown
            OnKeyPress = EditPsearchKeyPress
          end
          object CheckBox_Schemes: TCheckBox
            Left = 574
            Top = 10
            Width = 48
            Height = 17
            Caption = '->F7'
            TabOrder = 1
          end
          object CMBBillType: TComboBox
            Left = 311
            Top = 9
            Width = 82
            Height = 21
            TabOrder = 2
            Text = 'CMBBillType'
            OnChange = CMBBillTypeChange
            OnExit = CMBBillTypeExit
            OnKeyDown = CMBBillTypeKeyDown
          end
          object Edit_MemberNo: TEdit
            Left = 497
            Top = 9
            Width = 63
            Height = 21
            TabOrder = 3
            OnExit = Edit_MemberNoExit
            OnKeyDown = Edit_MemberNoKeyDown
            OnKeyPress = Edit_MemberNoKeyPress
          end
          object DBLookupComboBox_Community: TDBLookupComboBox
            Left = 692
            Top = 8
            Width = 97
            Height = 21
            TabOrder = 4
            OnClick = DBLookupComboBox_CommunityClick
            OnKeyDown = DBLookupComboBox_CommunityKeyDown
            OnKeyPress = DBLookupComboBox_CommunityKeyPress
          end
          object DBLookupComboBox_Scheme: TDBLookupComboBox
            Left = 844
            Top = 8
            Width = 97
            Height = 21
            TabOrder = 5
            OnClick = DBLookupComboBox_SchemeClick
            OnKeyPress = DBLookupComboBox_SchemeKeyPress
          end
        end
        object GroupBox5: TGroupBox
          Left = 6
          Top = 45
          Width = 952
          Height = 100
          TabOrder = 1
          object Label14: TLabel
            Left = 13
            Top = 7
            Width = 61
            Height = 13
            Caption = 'Hospital No. '
          end
          object LabelNo: TLabel
            Left = 101
            Top = 7
            Width = 25
            Height = 13
            Caption = 'None'
          end
          object Label17: TLabel
            Left = 85
            Top = 7
            Width = 4
            Height = 13
            Caption = ':'
          end
          object Label16: TLabel
            Left = 13
            Top = 31
            Width = 27
            Height = 13
            Caption = 'Name'
          end
          object Labelname: TLabel
            Left = 101
            Top = 31
            Width = 25
            Height = 13
            Caption = 'None'
          end
          object Label19: TLabel
            Left = 85
            Top = 31
            Width = 4
            Height = 13
            Caption = ':'
          end
          object Label20: TLabel
            Left = 13
            Top = 55
            Width = 64
            Height = 13
            Caption = 'Inpatient No.'
          end
          object LabelIpNo: TLabel
            Left = 101
            Top = 55
            Width = 25
            Height = 13
            Caption = 'None'
          end
          object Label22: TLabel
            Left = 85
            Top = 55
            Width = 4
            Height = 13
            Caption = ':'
          end
          object Label11: TLabel
            Left = 260
            Top = 56
            Width = 43
            Height = 13
            Caption = 'Deposit :'
          end
          object LabelDepTotal: TLabel
            Left = 308
            Top = 56
            Width = 28
            Height = 13
            Caption = '00.00'
          end
          object Label12: TLabel
            Left = 260
            Top = 72
            Width = 70
            Height = 13
            Caption = 'Credit Balace :'
          end
          object LabelCB: TLabel
            Left = 332
            Top = 72
            Width = 28
            Height = 13
            Caption = '00.00'
          end
          object Label24: TLabel
            Left = 356
            Top = 34
            Width = 81
            Height = 13
            Caption = 'Referral Doctor :'
          end
          object Label25: TLabel
            Left = 430
            Top = 70
            Width = 43
            Height = 13
            Caption = 'IP Date :'
          end
          object Button2: TSpeedButton
            Left = 540
            Top = 67
            Width = 24
            Height = 24
            Caption = 'AD'
          end
          object Label26: TLabel
            Left = 570
            Top = 70
            Width = 51
            Height = 13
            Caption = 'Dis. Date :'
          end
          object Button4: TSpeedButton
            Left = 688
            Top = 67
            Width = 24
            Height = 24
            Caption = 'AD'
          end
          object Label27: TLabel
            Left = 745
            Top = 14
            Width = 37
            Height = 13
            Caption = 'Today :'
          end
          object Button_TodayBilling: TSpeedButton
            Left = 855
            Top = 11
            Width = 24
            Height = 24
            Caption = 'AD'
          end
          object Label28: TLabel
            Left = 745
            Top = 38
            Width = 39
            Height = 13
            Caption = 'No. Of :'
          end
          object Sp_DocInvolve: TSpeedButton
            Left = 12
            Top = 74
            Width = 47
            Height = 22
            Caption = 'DI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 14365700
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object CheckBoxIPTransfer: TCheckBox
            Left = 260
            Top = 28
            Width = 61
            Height = 17
            Caption = 'Transfer'
            TabOrder = 0
          end
          object CheckBoxIPDischarge: TCheckBox
            Left = 260
            Top = 5
            Width = 77
            Height = 17
            Caption = 'IP Discharge'
            TabOrder = 1
          end
          object Edit_PreviousBillNo: TLabeledEdit
            Left = 440
            Top = 3
            Width = 120
            Height = 21
            EditLabel.Width = 83
            EditLabel.Height = 13
            EditLabel.Caption = 'Previous Bill No. :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 2
            OnExit = Edit_PreviousBillNoExit
            OnKeyDown = Edit_PreviousBillNoKeyDown
            OnKeyPress = Edit_PreviousBillNoKeyPress
          end
          object DBLC_Doctor: TDBLookupComboBox
            Left = 441
            Top = 30
            Width = 119
            Height = 21
            TabOrder = 3
            OnClick = DBLC_DoctorClick
            OnKeyDown = DBLC_DoctorKeyDown
            OnKeyPress = DBLC_DoctorKeyPress
          end
          object CheckBox9: TCheckBox
            Left = 566
            Top = 5
            Width = 88
            Height = 17
            Caption = 'Chrg Old Test'
            TabOrder = 4
          end
          object DateEditXIPDate: TDateEditX
            Left = 474
            Top = 68
            Width = 65
            Height = 21
            TabOrder = 5
            ControlData = {
              545046300A5444617465456469745200044C65667403DA0103546F7002440B44
              61746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A446174
              6541442E44617902140B4461746556532E596561720314080C4461746556532E
              4D6F6E746802080A4461746556532E44617902040000}
          end
          object DateEditXDisDate: TDateEditX
            Left = 622
            Top = 68
            Width = 65
            Height = 21
            TabOrder = 6
            ControlData = {
              545046300A5444617465456469745200044C656674036E0203546F7002440B44
              61746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A446174
              6541442E44617902140B4461746556532E596561720314080C4461746556532E
              4D6F6E746802080A4461746556532E44617902040000}
          end
          object CB_AddedChrgForIP: TCheckBox
            Left = 566
            Top = 23
            Width = 155
            Height = 17
            Caption = 'IP Bill [Extra Day Stay F10]'
            TabOrder = 7
            OnClick = CB_AddedChrgForIPClick
          end
          object DateEditX6: TDateEditX
            Left = 789
            Top = 12
            Width = 65
            Height = 21
            TabOrder = 8
            OnKeyPress = DateEditX6KeyPress
            ControlData = {
              545046300A5444617465456469745200044C65667403150303546F70020C0B44
              61746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A446174
              6541442E44617902140B4461746556532E596561720314080C4461746556532E
              4D6F6E746802080A4461746556532E44617902040000}
          end
          object Edit_NoOFCopy: TEdit
            Left = 790
            Top = 36
            Width = 63
            Height = 21
            TabOrder = 9
            OnExit = Edit_NoOFCopyExit
            OnKeyPress = Edit_NoOFCopyKeyPress
          end
          object CheckBox_Preview: TCheckBox
            Left = 744
            Top = 63
            Width = 57
            Height = 17
            Caption = 'Preivew'
            TabOrder = 10
          end
          object ChkBoxAllDis: TCheckBox
            Left = 859
            Top = 41
            Width = 90
            Height = 17
            Caption = 'View Old Test'
            TabOrder = 11
            OnClick = ChkBoxAllDisClick
          end
          object ChkBoxOldbill: TCheckBox
            Left = 859
            Top = 57
            Width = 90
            Height = 17
            Caption = 'View Old Bill'
            TabOrder = 12
            OnClick = ChkBoxOldbillClick
          end
          object CB_NonRefundBillFromRefund: TCheckBox
            Left = 859
            Top = 74
            Width = 13
            Height = 15
            Hint = 'Cash and Credit Bill View'
            Caption = 'LP'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 13
            Visible = False
          end
        end
        object DBGridPatientTest: TDBGrid
          Left = 6
          Top = 151
          Width = 952
          Height = 258
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGridPatientTestCellClick
          OnColEnter = DBGridPatientTestColEnter
          OnColExit = DBGridPatientTestColExit
          OnDrawColumnCell = DBGridPatientTestDrawColumnCell
          OnExit = DBGridPatientTestExit
          OnKeyDown = DBGridPatientTestKeyDown
          OnKeyPress = DBGridPatientTestKeyPress
          OnKeyUp = DBGridPatientTestKeyUp
          Columns = <
            item
              Expanded = False
              Title.Caption = 'Dep Code'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Name Code'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Test Name'
              Width = 257
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Unit Cost'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Qty'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Total Price'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Dis Per'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Discount'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Net Total'
              Width = 65
              Visible = True
            end>
        end
        object aa: TGroupBox
          Left = 5
          Top = 412
          Width = 619
          Height = 209
          Caption = 'Old Test '
          TabOrder = 3
          object GroupBoxOldTest: TPanel
            Left = 2
            Top = 15
            Width = 615
            Height = 192
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 14
            ExplicitTop = 83
            ExplicitWidth = 605
            ExplicitHeight = 198
            object ButtonCash: TSpeedButton
              Left = 321
              Top = 162
              Width = 81
              Height = 24
              Caption = 'Cash'
            end
            object BitBtnBillCancel: TSpeedButton
              Left = 401
              Top = 162
              Width = 81
              Height = 24
              Caption = 'Bill Cancel'
              OnClick = BitBtnBillCancelClick
            end
            object BitbtnCommon: TSpeedButton
              Left = 481
              Top = 162
              Width = 81
              Height = 24
              Caption = 'Cancel Test'
              OnClick = BitbtnCommonClick
            end
            object DBGridOldTest: TDBGrid
              Left = 12
              Top = 5
              Width = 593
              Height = 154
              Color = clBtnFace
              DataSource = DataSourceQueryOldPatientTest
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'TESTDATE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Test Date'
                  Width = 61
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'BILLNO'
                  Title.Alignment = taCenter
                  Title.Caption = 'BillNo'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SERVICETYPE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Test Name'
                  Width = 136
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AMOUNT'
                  Title.Alignment = taCenter
                  Title.Caption = 'Amount'
                  Width = 41
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTY'
                  Title.Alignment = taCenter
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VATAMT'
                  Title.Alignment = taCenter
                  Title.Caption = 'Vat'
                  Width = 27
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TOTALAMOUNT'
                  Title.Alignment = taCenter
                  Title.Caption = 'T.Amount'
                  Width = 50
                  Visible = True
                end
                item
                  Color = clWindow
                  Expanded = False
                  FieldName = 'USERNAME'
                  Title.Alignment = taCenter
                  Title.Caption = 'User'
                  Width = 45
                  Visible = True
                end
                item
                  Color = 16766975
                  Expanded = False
                  FieldName = 'EXTRACHARGE'
                  Title.Caption = 'Adv. Amt. At Billing'
                  Width = 93
                  Visible = True
                end
                item
                  Color = 16766975
                  Expanded = False
                  FieldName = 'CANCELSTATUS'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cancel St.'
                  Width = 50
                  Visible = True
                end
                item
                  Color = 16766975
                  Expanded = False
                  FieldName = 'CANCELDATE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cancel Date'
                  Width = 65
                  Visible = True
                end
                item
                  Color = 16766975
                  Expanded = False
                  FieldName = 'CANCELTIME'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cancel Time'
                  Width = 65
                  Visible = True
                end
                item
                  Color = 16766975
                  Expanded = False
                  FieldName = 'CANCELUSER'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cancel By'
                  Width = 80
                  Visible = True
                end>
            end
            object DBGridOldBill: TDBGrid
              AlignWithMargins = True
              Left = 11
              Top = 4
              Width = 593
              Height = 155
              Margins.Left = 10
              Margins.Right = 10
              Align = alTop
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = DBGridOldBillDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  Title.Caption = 'Bill No. '
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Bill Date'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Total'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Discount'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Vat'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Grand Total'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Adv. Amount'
                  Width = 65
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'User'
                  Width = 65
                  Visible = True
                end>
            end
            object Edit_TestCancelRemarks: TLabeledEdit
              Left = 116
              Top = 165
              Width = 201
              Height = 21
              EditLabel.Width = 107
              EditLabel.Height = 13
              EditLabel.Caption = 'Test Cancel Remarks :'
              EditLabel.Font.Charset = DEFAULT_CHARSET
              EditLabel.Font.Color = clWindowText
              EditLabel.Font.Height = -11
              EditLabel.Font.Name = 'Tahoma'
              EditLabel.Font.Style = []
              EditLabel.ParentFont = False
              LabelPosition = lpLeft
              TabOrder = 1
            end
          end
          object GroupBox_CashInfo: TPanel
            Left = 2
            Top = 15
            Width = 615
            Height = 192
            Align = alClient
            TabOrder = 1
            ExplicitLeft = 104
            ExplicitTop = 27
            ExplicitWidth = 605
            ExplicitHeight = 198
            object Label_BillingStatus: TLabel
              Left = 13
              Top = 15
              Width = 88
              Height = 23
              Caption = 'IP Billing'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 51
              Top = 63
              Width = 98
              Height = 23
              Caption = 'Total Rs. :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_TotBillAmt: TLabel
              Left = 157
              Top = 63
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 70
              Top = 87
              Width = 79
              Height = 23
              Caption = 'Tender :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_ReceivedAmt: TLabel
              Left = 157
              Top = 87
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label23: TLabel
              Left = 6
              Top = 111
              Width = 143
              Height = 23
              Caption = 'Total Amount :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_ToalAmt: TLabel
              Left = 157
              Top = 111
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label33: TLabel
              Left = 71
              Top = 143
              Width = 78
              Height = 23
              Caption = 'Return :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label_ReAmt: TLabel
              Left = 157
              Top = 143
              Width = 92
              Height = 23
              AutoSize = False
              Caption = '00.00'
              Color = -1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clAqua
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Transparent = False
            end
            object Label_Fraction: TLabel
              Left = 262
              Top = 63
              Width = 78
              Height = 23
              Caption = 'Fraction'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label36: TLabel
              Left = 395
              Top = 63
              Width = 124
              Height = 23
              Caption = 'Total Items :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelItem: TLabel
              Left = 525
              Top = 63
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label38: TLabel
              Left = 436
              Top = 87
              Width = 83
              Height = 23
              Caption = 'Bill No. :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelBillNo: TLabel
              Left = 525
              Top = 87
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label40: TLabel
              Left = 436
              Top = 111
              Width = 83
              Height = 23
              Caption = 'Bill No. :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelDepBillNo: TLabel
              Left = 525
              Top = 111
              Width = 54
              Height = 23
              Caption = '00.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object LabelUserName: TLabel
              Left = 496
              Top = 159
              Width = 103
              Height = 26
              Alignment = taCenter
              AutoSize = False
              Caption = 'User'
              Color = -1
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
          end
        end
        object GroupBox7: TGroupBox
          Left = 628
          Top = 416
          Width = 330
          Height = 209
          Caption = 'Account'
          TabOrder = 4
          object Label29: TLabel
            Left = 302
            Top = 38
            Width = 11
            Height = 13
            Caption = '%'
          end
          object Label30: TLabel
            Left = 117
            Top = 138
            Width = 48
            Height = 13
            Caption = 'Remarks :'
          end
          object Label31: TLabel
            Left = 117
            Top = 162
            Width = 47
            Height = 13
            Caption = 'Paytype :'
          end
          object CB_DirectDiscountSet: TCheckBox
            Left = 10
            Top = 21
            Width = 55
            Height = 17
            Caption = 'Set Dis'
            TabOrder = 0
            OnClick = CB_DirectDiscountSetClick
          end
          object CB_DisForAllItems: TCheckBox
            Left = 10
            Top = 37
            Width = 55
            Height = 17
            Caption = 'All'
            TabOrder = 1
          end
          object EditTotal: TLabeledEdit
            Left = 168
            Top = 11
            Width = 146
            Height = 21
            EditLabel.Width = 31
            EditLabel.Height = 13
            EditLabel.Caption = 'Total :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 2
            OnKeyDown = EditTotalKeyDown
          end
          object EditDisAmt: TLabeledEdit
            Left = 168
            Top = 35
            Width = 73
            Height = 21
            EditLabel.Width = 48
            EditLabel.Height = 13
            EditLabel.Caption = 'Discount :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 3
            OnExit = EditDisAmtExit
            OnKeyDown = EditDisAmtKeyDown
            OnKeyPress = EditDisAmtKeyPress
          end
          object EditDisPer: TEdit
            Left = 245
            Top = 35
            Width = 53
            Height = 21
            TabOrder = 4
            OnExit = EditDisPerExit
            OnKeyDown = EditDisPerKeyDown
            OnKeyPress = EditDisPerKeyPress
          end
          object Edit_SubTotal: TLabeledEdit
            Left = 168
            Top = 59
            Width = 146
            Height = 21
            EditLabel.Width = 52
            EditLabel.Height = 13
            EditLabel.Caption = 'Sub Total :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 5
            OnKeyDown = Edit_SubTotalKeyDown
          end
          object Edit_ExDuty: TLabeledEdit
            Left = 168
            Top = 83
            Width = 146
            Height = 21
            EditLabel.Width = 84
            EditLabel.Height = 13
            EditLabel.Caption = 'Svr. Tax @ 5 % :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 6
            OnKeyDown = Edit_ExDutyKeyDown
          end
          object Edit_GrandTotal: TLabeledEdit
            Left = 168
            Top = 107
            Width = 146
            Height = 21
            EditLabel.Width = 63
            EditLabel.Height = 13
            EditLabel.Caption = 'Grand Total :'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'Tahoma'
            EditLabel.Font.Style = []
            EditLabel.ParentFont = False
            LabelPosition = lpLeft
            TabOrder = 7
            OnKeyDown = Edit_GrandTotalKeyDown
          end
          object DBLookupComboBox_DepositType: TDBLookupComboBox
            Left = 168
            Top = 133
            Width = 146
            Height = 21
            TabOrder = 8
            OnKeyDown = DBLookupComboBox_DepositTypeKeyDown
          end
          object CMBPayType: TComboBox
            Left = 168
            Top = 160
            Width = 76
            Height = 21
            TabOrder = 9
            Text = 'ComboBox1'
            OnChange = CMBPayTypeChange
            OnKeyDown = CMBPayTypeKeyDown
            OnKeyPress = CMBPayTypeKeyPress
          end
          object EditCheckNo: TEdit
            Left = 252
            Top = 160
            Width = 62
            Height = 21
            TabOrder = 10
            OnKeyDown = EditCheckNoKeyDown
          end
          object EditRemarks: TEdit
            Left = 10
            Top = 184
            Width = 156
            Height = 21
            TabOrder = 11
            OnKeyDown = EditRemarksKeyDown
            OnKeyPress = EditRemarksKeyPress
          end
          object EditPayment: TEdit
            Left = 170
            Top = 184
            Width = 144
            Height = 21
            TabOrder = 12
            OnExit = EditPaymentExit
            OnKeyDown = EditPaymentKeyDown
            OnKeyPress = EditPaymentKeyPress
          end
        end
        object DBGridListOfBill: TDBGrid
          Left = 45
          Top = 258
          Width = 194
          Height = 84
          DataSource = DataSourceListOfBill
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
          Columns = <
            item
              Expanded = False
              FieldName = 'BILLNO'
              Title.Alignment = taCenter
              Title.Caption = 'Bill No'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BILLDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Bill Date'
              Width = 62
              Visible = True
            end>
        end
        object DBGrid_DocInvolved: TDBGrid
          Left = 696
          Top = 295
          Width = 202
          Height = 81
          DataSource = DS_GetFrctInvoPerson
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
          Columns = <
            item
              Expanded = False
              FieldName = 'DrCode'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Code'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Description'
              Title.Alignment = taCenter
              Width = 108
              Visible = True
            end>
        end
      end
    end
    object RadioButton_OPBilling: TRadioButton
      Left = 72
      Top = 8
      Width = 86
      Height = 17
      Caption = 'OP Billing [F1]'
      TabOrder = 1
      OnClick = RadioButton_OPBillingClick
    end
    object RadioButton_OPRefundBilling: TRadioButton
      Left = 164
      Top = 8
      Width = 126
      Height = 17
      Caption = 'OP Refund Billing  [F3]'
      TabOrder = 2
      OnClick = RadioButton_OPRefundBillingClick
    end
    object RB_OPAdvanceBilling: TRadioButton
      Left = 293
      Top = 8
      Width = 129
      Height = 17
      Caption = 'OP Advance Billing [F3]'
      TabOrder = 3
      OnClick = RB_OPAdvanceBillingClick
    end
    object RadioButton_IPBilling: TRadioButton
      Left = 425
      Top = 8
      Width = 80
      Height = 17
      Caption = 'IP Billing [F2]'
      TabOrder = 4
      OnClick = RadioButton_IPBillingClick
    end
    object CheckBoxOPRef: TCheckBox
      Left = 505
      Top = 8
      Width = 109
      Height = 17
      Caption = 'OP Refund Bill [F8]'
      TabOrder = 5
      OnClick = CheckBoxOPRefClick
    end
    object CheckBoxIPRefund: TCheckBox
      Left = 615
      Top = 8
      Width = 91
      Height = 17
      Caption = 'IP Refund [F9]'
      TabOrder = 6
      OnClick = CheckBoxIPRefundClick
    end
    object Chk_photo: TCheckBox
      Left = 708
      Top = 8
      Width = 48
      Height = 17
      Caption = 'Photo'
      TabOrder = 7
      OnClick = Chk_photoClick
    end
  end
  object Query_Ward: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Ward Order By WardCode')
    Left = 196
    Top = 227
  end
  object DataSource_Ward: TDataSource
    DataSet = Query_Ward
    Left = 222
    Top = 227
  end
  object Query_Bed: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Room ')
    Left = 262
    Top = 227
  end
  object TablePTTestTemp: TTable
    DatabaseName = 'C:\Hospital\Bin\Data\Temp'
    TableName = 'PatientTestTemp.db'
    Left = 297
    Top = 227
  end
  object TablePTTestTempPending: TTable
    DatabaseName = 'C:\Hospital\Bin\Data\Temp'
    TableName = 'PatientTestTemp.db'
    Left = 289
    Top = 211
  end
  object DataSourceTablePTTestTemp: TDataSource
    DataSet = TablePTTestTemp
    Left = 309
    Top = 227
  end
  object QueryOldPatientTest: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select BD.BillDetailId,BD.PatientTestId,BD.PatientId,BD.ServiceT' +
        'ype,BD.BillType,BD.PayType,BD.InpatientId,'
      
        'BD.BillNo,BD.BillDate as TestDate,(Select ExtraCharge From BillM' +
        'aster where BillNo=BD.BillNo) as ExtraCharge,'
      
        'BD.CancelStatus,BD.CancelDate,BD.CancelTime,(Select UserName Fro' +
        'm UserMain Where UserId=CancelBy) as CancelUser,'
      
        'BD.Amount,BD.Qty,BD.VatAmt,BD.DollarExRate,(((BD.Amount*BD.Qty)+' +
        'BD.VatAmt)-(BD.Amount*BD.Qty*Dis/100))'
      
        'as TotalAmount, (((BD.DollarAmount*BD.Qty)+BD.VatAmt)-(BD.Dollar' +
        'Amount*BD.Qty*Dis/100)) as DollarAmt,U.UserName From BillDetail ' +
        'BD,UserMain U where'
      'BD.PatientId=:PatientId'
      ''
      ''
      'Order By BD.BillDate,BillNo'
      ' ')
    Left = 337
    Top = 213
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
        Value = '1'
      end>
  end
  object QueryOldPatientTest1: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select B.BillDetailId,A.*, B.Qty,B.Amount,B.VatAmt,UM.UserName,'
      
        'B.TotalAmount,B.BillNo From PatientTest  A,BillDetail B,UserMain' +
        ' UM'
      ' Where (A.PatientID=:PatientID)AND'
      '             (A.Special<>'#39'FALSE'#39')  AND'
      '             (A.PatientTestID=B.PatientTestID) AND'
      '             (B.ModifyBy=UM.UserId) AND'
      '             (B.PayType='#39'CREDIT'#39')'
      '             Order By A.PatientID')
    Left = 337
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
        Value = '1'
      end>
    object QueryOldPatientTest1NTestName: TStringField
      FieldKind = fkLookup
      FieldName = 'NTestName'
      LookupKeyFields = 'TestNameCode'
      LookupResultField = 'TestName'
      KeyFields = 'TestNameCode'
      Size = 100
      Lookup = True
    end
    object QueryOldPatientTest1TESTNAMECODE: TStringField
      FieldName = 'TESTNAMECODE'
      Size = 25
    end
    object QueryOldPatientTest1PATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object QueryOldPatientTest1DEPCODE: TStringField
      FieldName = 'DEPCODE'
      Size = 25
    end
    object QueryOldPatientTest1DOCCODE: TStringField
      FieldName = 'DOCCODE'
      Size = 5
    end
    object QueryOldPatientTest1PATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryOldPatientTest1TESTDATE: TStringField
      FieldName = 'TESTDATE'
      Size = 10
    end
    object QueryOldPatientTest1MODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryOldPatientTest1WORKINGSTATUS: TStringField
      FieldName = 'WORKINGSTATUS'
      Size = 30
    end
    object QueryOldPatientTest1PAYSTATUS: TStringField
      FieldName = 'PAYSTATUS'
      Size = 7
    end
    object QueryOldPatientTest1SPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 10
    end
    object QueryOldPatientTest1TESTTIME: TStringField
      FieldName = 'TESTTIME'
      Size = 12
    end
    object QueryOldPatientTest1MODIFYDATE: TStringField
      FieldName = 'MODIFYDATE'
      Size = 10
    end
    object QueryOldPatientTest1REMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 200
    end
    object QueryOldPatientTest1DEPID: TFloatField
      FieldName = 'DEPID'
    end
    object QueryOldPatientTest1TESTNAMEID: TFloatField
      FieldName = 'TESTNAMEID'
    end
    object QueryOldPatientTest1QTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryOldPatientTest1AMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryOldPatientTest1VATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryOldPatientTest1TOTALAMOUNT: TFloatField
      FieldName = 'TOTALAMOUNT'
    end
    object QueryOldPatientTest1BILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryOldPatientTest1TESTAMOUNT: TFloatField
      FieldName = 'TESTAMOUNT'
    end
    object QueryOldPatientTest1INPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryOldPatientTest1USERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object QueryOldPatientTest1BILLDETAILID: TFloatField
      FieldName = 'BILLDETAILID'
    end
  end
  object DataSourceQueryOldPatientTest: TDataSource
    DataSet = QueryOldPatientTest
    Left = 347
    Top = 227
  end
  object QuerySearch: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select PM.*,D.DistrictName from PatientMain PM,District D'
      'Where PM.DistrictId=D.DistrictId(+) and'
      '(PM.RegDate<=:SDate AND PM.RegDate>=:PDate)'
      'AND(39=39)')
    Left = 377
    Top = 227
    ParamData = <
      item
        DataType = ftString
        Name = 'SDate'
        ParamType = ptUnknown
        Value = '2059/03/01'
      end
      item
        DataType = ftString
        Name = 'PDate'
        ParamType = ptUnknown
        Value = '2059/03/01'
      end>
  end
  object QuerySum: TQuery
    DatabaseName = 'C:\Hospital\Bin\data\temp'
    SQL.Strings = (
      'Select Sum(QTY*CostPrice) AS Total'
      'From PatientTestTemp'
      'Where(PayStatus<>'#39'NO'#39')')
    Left = 405
    Top = 227
    object QuerySumTotal: TFloatField
      FieldName = 'Total'
    end
  end
  object QueryMaxIPNo: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select  Max(InPatientId) as MaxIP from Inpatientreg'
      'where PatientId=:PatientId')
    Left = 434
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientId'
        ParamType = ptUnknown
      end>
  end
  object QueryIPAllDetail: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from Inpatientreg'
      'where InPatientId=:InPatientId')
    Left = 456
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'InPatientId'
        ParamType = ptUnknown
      end>
  end
  object QueryDisScheme: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from Scheme'
      'where SchemeID=:Scheme')
    Left = 511
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Scheme'
        ParamType = ptUnknown
      end>
  end
  object QueryBillMaster: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select PatientId,BillType,ModifyBy,SchemeID,Sum(CurQty*Amount) a' +
        's Total,Sum(CurVatAmt) as Tax,'
      
        'BillNo, BillDate,(Select ExtraCharge From BillMaster where BillN' +
        'o=BillDetail.BillNo) as ExtraCharge,(Select UserName From UserMa' +
        'in where UserId=BillDetail.ModifyBy) UserName,'
      'Round(Sum(CurQty*Amount*Dis/100),2) as Discount,'
      
        'Round(Sum(((CurQty*Amount)+CurVatAmt)-(CurQty*Amount*Dis/100)),2' +
        ') as GrandTotal'
      'From BillDetail where'
      'PatientId=:PatientId and Service<>'#39'BED'#39
      ''
      
        'Group By BillNo, BillDate,BillType,ModifyBy,PatientId,SchemeID O' +
        'rder By BillNo, BillDate'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ''
      ' ')
    Left = 542
    Top = 227
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientId'
        ParamType = ptUnknown
      end>
    object QueryBillMasterBILLNO: TStringField
      DisplayLabel = 'Bill No'
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryBillMasterBILLDATE: TStringField
      DisplayLabel = 'Bill Date'
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryBillMasterMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryBillMasterTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QueryBillMasterTAX: TFloatField
      FieldName = 'TAX'
    end
    object QueryBillMasterDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryBillMasterGRANDTOTAL: TFloatField
      FieldName = 'GRANDTOTAL'
    end
    object QueryBillMasterBILLTYPE: TStringField
      FieldName = 'BILLTYPE'
      Size = 2
    end
    object QueryBillMasterEXTRACHARGE: TFloatField
      FieldName = 'EXTRACHARGE'
    end
    object QueryBillMasterSCHEMEID: TFloatField
      FieldName = 'SCHEMEID'
    end
    object QueryBillMasterPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryBillMasterUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 100
    end
  end
  object DataSourceBillMaster: TDataSource
    DataSet = QueryBillMaster
    Left = 555
    Top = 227
  end
  object QueryUser: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select UserId,UserName From UserMain')
    Left = 588
    Top = 228
  end
  object QueryAllOverManage: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from InpatientDetail'
      '    Where (InPatientID=:PatientID) ')
    Left = 572
    Top = 262
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
      end>
  end
  object QueryDoctor: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'SELECT * FROM Doctor where DActive='#39'Y'#39)
    Left = 613
    Top = 262
  end
  object QueryRoom: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from room')
    Left = 532
    Top = 262
  end
  object QueryFoodCharge: TQuery
    DatabaseName = 'C:\Hospital\Bin\data\temp'
    SQL.Strings = (
      'Select Sum(TestPrice) As TotCharge from PatientTestTemp.db'
      'Where TestName='#39'FOOD CHARGE'#39)
    Left = 506
    Top = 262
  end
  object QuerySno: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select Max(Sno) as MaxNo from billMaster'
      'where BillType=:BillType'
      'and BillDate>=:Date1'
      'and BillDate<=:Date2')
    Left = 476
    Top = 262
    ParamData = <
      item
        DataType = ftString
        Name = 'BillType'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Date2'
        ParamType = ptUnknown
      end>
  end
  object QueryDepartment: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'SELECT * FROM'
      'DEPARTMENT'
      'order by depname')
    Left = 446
    Top = 262
  end
  object QueryPatientTest: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From PatientTest '
      ' Where (PatientID in (SELECT PatientID'
      '       FROM PatientMain )) AND'
      '             (PatientID=:PatientID)AND'
      '             (PayStatus='#39'UNPAID'#39')'
      '             Order By PatientID')
    Left = 414
    Top = 262
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
        Value = '1'
      end>
    object QueryPatientTestNTestName: TStringField
      FieldKind = fkLookup
      FieldName = 'NTestName'
      LookupDataSet = QueryTestName
      LookupKeyFields = 'TestNameCode'
      LookupResultField = 'TestName'
      KeyFields = 'TestNameCode'
      Size = 100
      Lookup = True
    end
    object QueryPatientTestNUnitCost: TFloatField
      FieldKind = fkLookup
      FieldName = 'NUnitCost'
      LookupDataSet = QueryTestName
      LookupKeyFields = 'TestNameCode'
      LookupResultField = 'TestPrice'
      KeyFields = 'TestNameCode'
      Lookup = True
    end
    object QueryPatientTestVat: TFloatField
      FieldKind = fkLookup
      FieldName = 'Vat'
      LookupDataSet = QueryTestName
      LookupKeyFields = 'TestNameCode'
      LookupResultField = 'Vat'
      KeyFields = 'TestNameCode'
      Lookup = True
    end
    object QueryPatientTestTESTNAMECODE: TStringField
      FieldName = 'TESTNAMECODE'
      Size = 25
    end
    object QueryPatientTestPATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object QueryPatientTestDEPCODE: TStringField
      FieldName = 'DEPCODE'
      Size = 25
    end
    object QueryPatientTestDOCCODE: TStringField
      FieldName = 'DOCCODE'
      Size = 5
    end
    object QueryPatientTestPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryPatientTestTESTDATE: TStringField
      FieldName = 'TESTDATE'
      Size = 10
    end
    object QueryPatientTestMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryPatientTestWORKINGSTATUS: TStringField
      FieldName = 'WORKINGSTATUS'
      Size = 30
    end
    object QueryPatientTestPAYSTATUS: TStringField
      FieldName = 'PAYSTATUS'
      Size = 7
    end
    object QueryPatientTestSPECIAL: TStringField
      FieldName = 'SPECIAL'
      Size = 10
    end
    object QueryPatientTestTESTTIME: TStringField
      FieldName = 'TESTTIME'
      Size = 12
    end
    object QueryPatientTestMODIFYDATE: TStringField
      FieldName = 'MODIFYDATE'
      Size = 10
    end
    object QueryPatientTestREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 200
    end
    object QueryPatientTestDEPID: TFloatField
      FieldName = 'DEPID'
    end
    object QueryPatientTestTESTNAMEID: TFloatField
      FieldName = 'TESTNAMEID'
    end
  end
  object QueryCancelTest: TQuery
    DatabaseName = 'Hospital'
    Left = 384
    Top = 262
  end
  object QueryUpdateBedAssign: TQuery
    DatabaseName = 'Hospital'
    Left = 354
    Top = 262
  end
  object QueryUpDatePatientData: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Upadate Into values ('#39'Ram'#39','#39'PD'#39','#39'Sharma'#39')     '
      'Where (PatientID=1)')
    Left = 325
    Top = 262
  end
  object QueryTestName: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From TestName Order By TestNameCode')
    Left = 295
    Top = 262
  end
  object QueryGetNonVatAmount: TQuery
    DatabaseName = 'C:\Hospital\Bin\data\temp'
    SQL.Strings = (
      'Select Sum(TestPrice) AS TotalNonVatableAmt'
      'From PatientTestTemp'
      'Where(PayStatus<>'#39'NO'#39')'
      'AND(VatAmt<=0)')
    Left = 265
    Top = 262
    object QueryGetNonVatAmountTotalNonVatableAmt: TFloatField
      FieldName = 'TotalNonVatableAmt'
    end
  end
  object QueryGetVatAmount: TQuery
    DatabaseName = 'C:\Hospital\Bin\data\temp'
    SQL.Strings = (
      'Select Sum(CostPrice*Qty) AS TotalVatableAmt'
      'From PatientTestTemp'
      'Where(PayStatus<>'#39'NO'#39')'
      'AND(VatAmt>0)')
    Left = 236
    Top = 262
    object QueryGetVatAmountTotalVatableAmt: TFloatField
      FieldName = 'TotalVatableAmt'
    end
  end
  object QueryBillMasterBill: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from BillMaster'
      'where Billno=:Billno')
    Left = 207
    Top = 262
    ParamData = <
      item
        DataType = ftString
        Name = 'Billno'
        ParamType = ptUnknown
      end>
  end
  object Query_Department: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select DepId,DepCode,DepName From Department Order By DepCode')
    Left = 184
    Top = 262
  end
  object DataSource_Department: TDataSource
    DataSet = Query_Department
    Left = 168
    Top = 261
  end
  object Table_PackageTest: TTable
    DatabaseName = 'C:\Hospital\Bin\Data\Temp'
    TableName = 'PackageTest.db'
    Left = 300
    Top = 303
  end
  object Query_PatientInfo: TQuery
    DatabaseName = 'Hospital'
    Left = 188
    Top = 295
  end
  object DataSourceListOfBill: TDataSource
    DataSet = QueryListOfBill
    Left = 536
    Top = 312
  end
  object QueryCurrIPDep: TQuery
    DatabaseName = 'Hospital'
    Left = 490
    Top = 295
  end
  object QueryListOfBill: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select Distinct BillNo,BillDate From BillDetail where PatientId=' +
        '1234 and '
      'BillType='#39'B'#39
      ' ')
    Left = 508
    Top = 311
  end
  object Query_PackageTestList: TQuery
    DatabaseName = 'Hospital'
    Left = 598
    Top = 401
  end
  object Query_Doctor: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'select F_Name||'#39' '#39'||L_Name as DocName,DocCode  from Doctor'
      'Where DActive='#39'Y'#39' order by DocName')
    Left = 596
    Top = 365
  end
  object DataSource_Community: TDataSource
    DataSet = Query_Community
    Left = 606
    Top = 336
  end
  object QueryRegistration2: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'SELECT Distinct patientmain.FName,patientmain.LName,patientmain.' +
        'MaritalStatus,'
      
        'patientmain.Age,patientmain.Gender,patientmain.AgeType,patientma' +
        'in.DistrictId,Department.DepCode as depdepcode,'
      'Department.DepName as DepDepName, patientmain.PAddress,'
      
        'Inpatientreg.InPatientId as InpatientID,InpatientDetail.WardCode' +
        ','
      
        '(InpatientDetail.WardCode||'#39' '#39'||InpatientDetail.RoomTypeCode||'#39' ' +
        #39'||InpatientDetail.BedCode) as DetWardCode,'
      
        'InpatientDetail.RoomNo,Inpatientreg.PatientId,Inpatientreg.FileN' +
        'o, Inpatientreg.InPTDate,'
      'Inpatientreg.DepCode as RegDepCode,Inpatientreg.ReferBy,'
      'Inpatientreg.doccode as regdoccode,Inpatientreg.Remarks,'
      'Inpatientreg.Discharged, Inpatientreg.DisDate,'
      '(Doctor.F_Name||Doctor.L_Name) as DoctorFullName'
      'FROM PatientMain,Department,InpatientReg,Inpatientdetail,doctor'
      'Where (Inpatientdetail.InPatientId=Inpatientreg.InPatientId)'
      'AND(Inpatientreg.PatientId=Patientmain.PatientID)')
    Left = 641
    Top = 315
    object QueryRegistration2RoomName: TStringField
      FieldKind = fkLookup
      FieldName = 'RoomName'
      LookupDataSet = QueryRoomNo
      LookupKeyFields = 'ROOMID'
      LookupResultField = 'ROOMNO'
      KeyFields = 'ROOMNO'
      Size = 30
      Lookup = True
    end
    object QueryRegistration2FNAME: TStringField
      FieldName = 'FNAME'
      Size = 25
    end
    object QueryRegistration2LNAME: TStringField
      FieldName = 'LNAME'
      Size = 25
    end
    object QueryRegistration2MARITALSTATUS: TStringField
      FieldName = 'MARITALSTATUS'
      Size = 10
    end
    object QueryRegistration2AGE: TStringField
      FieldName = 'AGE'
      Size = 3
    end
    object QueryRegistration2GENDER: TStringField
      FieldName = 'GENDER'
      Size = 6
    end
    object QueryRegistration2AGETYPE: TStringField
      FieldName = 'AGETYPE'
      Size = 6
    end
    object QueryRegistration2DEPDEPCODE: TStringField
      FieldName = 'DEPDEPCODE'
      Size = 5
    end
    object QueryRegistration2DEPDEPNAME: TStringField
      FieldName = 'DEPDEPNAME'
      Size = 100
    end
    object QueryRegistration2PADDRESS: TStringField
      FieldName = 'PADDRESS'
      Size = 100
    end
    object QueryRegistration2INPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryRegistration2DETWARDCODE: TStringField
      FieldName = 'DETWARDCODE'
      Size = 17
    end
    object QueryRegistration2ROOMNO: TFloatField
      FieldName = 'ROOMNO'
    end
    object QueryRegistration2PATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryRegistration2FILENO: TFloatField
      FieldName = 'FILENO'
    end
    object QueryRegistration2INPTDATE: TStringField
      FieldName = 'INPTDATE'
      Size = 10
    end
    object QueryRegistration2REGDEPCODE: TStringField
      FieldName = 'REGDEPCODE'
      Size = 5
    end
    object QueryRegistration2REFERBY: TStringField
      FieldName = 'REFERBY'
      Size = 50
    end
    object QueryRegistration2REGDOCCODE: TStringField
      FieldName = 'REGDOCCODE'
      Size = 5
    end
    object QueryRegistration2REMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 100
    end
    object QueryRegistration2DISCHARGED: TStringField
      FieldName = 'DISCHARGED'
      Size = 8
    end
    object QueryRegistration2DISDATE: TStringField
      FieldName = 'DISDATE'
      Size = 10
    end
    object QueryRegistration2DOCTORFULLNAME: TStringField
      FieldName = 'DOCTORFULLNAME'
      Size = 50
    end
    object QueryRegistration2DISTRICTID: TFloatField
      FieldName = 'DISTRICTID'
    end
    object QueryRegistration2District: TStringField
      FieldKind = fkLookup
      FieldName = 'District'
      LookupDataSet = QueryDisName
      LookupKeyFields = 'DISTRICTID'
      LookupResultField = 'DISTRICTNAME'
      KeyFields = 'DISTRICTID'
      Size = 30
      Lookup = True
    end
  end
  object QueryInpatientSearch: TQuery
    DatabaseName = 'Hospital'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      
        ' SELECT Distinct PM.FName,PM.LName,PM.Title,PM.MaritalStatus,IPR' +
        '.MemberNo,PM.HealthCareNo,PM.IsInpatient,PM.AgeType,PM.DistrictI' +
        'd,PM.PAddress,PM.HealthExamNo,'
      
        ' (Select InTime From InpatientDetail where InpatientDID In (Sele' +
        'ct Min(InpatientDID) From InpatientDetail where InpatientId=IPR.' +
        'INPATIENTID)) as InTime, Case when (To_Date(:DateStr,'#39'YYYY/MM/DD' +
        #39') -To_Date(DOB,'#39'YYYY/MM/DD'#39'))>=365 Then  Floor((To_Date(:DateSt' +
        'r,'#39'YYYY/MM/DD'#39')-To_Date(DOB,'#39'YYYY/MM/DD'#39'))/365)||'#39' Y'#39'||'#39' / '#39'||Su' +
        'bStr(Gender,1,1) when (To_Date(:DateStr,'#39'YYYY/MM/DD'#39') -To_Date(D' +
        'OB,'#39'YYYY/MM/DD'#39'))>=30 Then Floor((To_Date(:DateStr,'#39'YYYY/MM/DD'#39')' +
        '-To_Date(DOB,'#39'YYYY/MM/DD'#39'))/30)||'#39' M'#39'||'#39'/'#39'||SubStr(Gender,1,1) E' +
        'lse (To_Date(:DateStr,'#39'YYYY/MM/DD'#39'))-(To_Date(DOB,'#39'YYYY/MM/DD'#39'))' +
        '||'#39' D'#39'||'#39'/'#39'||SubStr(Gender,1,1) End as AgeSex,'
      
        ' PM.ISEmergency,PM.CommunityId as PMCommunityId,IPR.DisInDeposit' +
        ',IPR.DepCode as depdepcode,(Select DepName From Department where' +
        ' DepCode=IPR.DepCode) as DepName,IPR.InPatientId as InpatientID,'
      
        ' IPR.PatientId,IPR.Guardian,IPR.Relation,Telno||Case when Trim(g' +
        'uardianphone) is not null and Trim(guardianphone)<>'#39'-'#39' Then '#39'/'#39'|' +
        '|guardianphone '
      
        ' Else '#39' '#39' End as Phone,IPR.Purpose,Cast(IPR.InPatientId as Varch' +
        'ar(8)) as InpatientIdStr,Cast(IPR.PatientId as Varchar(8)) '
      
        ' as PatientIdStr, (IPD.WardCode||'#39'/ '#39'||IPD.RoomTypeCode||'#39' /  '#39'|' +
        '|IPD.BedCode) as DetWardCode,IPD.RoomNo,IPR.FileNo,'
      
        ' IPD.RoomTypeCode,IPR.InPTDate, IPR.DepCode as RegDepCode,IPR.Re' +
        'ferBy,IPR.doccode as regdoccode,'
      
        ' IPD.BillNo,IPR.Remarks, IPR.Discharged, IPR.DisDate,(Select F_N' +
        'ame||L_Name From Doctor where '
      
        ' DocCode=IPR.DocCode) as DoctorFullName,IPR.CommunityId,IPR.Sche' +
        'meId,IPR.PatientType '
      
        ' FROM PatientMain PM,InpatientReg IPR,Inpatientdetail IPD Where ' +
        '(IPR.PatientId=PM.PatientID) AND '
      
        ' (IPR.InPatientId=IPD.InPatientId(+)) and IPD.InpatientDID In (S' +
        'elect Max(InpatientDID)'
      
        ' as InpatientDID From InpatientDetail where InpatientId=IPR.Inpa' +
        'tientId)'
      ' And (IPR.InPTDate Between '#39'2067/04/07'#39' And '#39'2067/04/08'#39')'
      'AND IPR.Discharged='#39'NO'#39
      ' Order By IPR.InpatientId Desc'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 656
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'DateStr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DateStr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DateStr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DateStr'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DateStr'
        ParamType = ptUnknown
      end>
  end
  object DataSourceInpatientSearch: TDataSource
    DataSet = QueryInpatientSearch
    Left = 667
    Top = 264
  end
  object Query_Scheme: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Scheme Order By SchemeName')
    Left = 702
    Top = 221
  end
  object DataSource_Scheme: TDataSource
    DataSet = Query_Scheme
    Left = 715
    Top = 222
  end
  object QueryDepart: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select DepID,DepName,DepCode From Department'
      'Where DepCode='#39'REF01'#39)
    Left = 782
    Top = 216
  end
  object Query_BillDetailUpdate: TQuery
    DatabaseName = 'Hospital'
    Left = 805
    Top = 232
  end
  object Query_BillMasterUpdate: TQuery
    DatabaseName = 'Hospital'
    Left = 835
    Top = 224
  end
  object Query_PatientTestUpdate: TQuery
    DatabaseName = 'Hospital'
    Left = 867
    Top = 224
  end
  object Query_GetRefDoc: TQuery
    DatabaseName = 'Hospital'
    Left = 878
    Top = 262
  end
  object Timer1: TTimer
    Left = 880
    Top = 280
  end
  object QueryVoid: TQuery
    DatabaseName = 'Hospital'
    Left = 846
    Top = 262
  end
  object QueryMemberSearch: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'select memberNo from patientmain'
      'where patientid=:PID')
    Left = 815
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptUnknown
      end>
  end
  object DataSourceQueryDisName: TDataSource
    DataSet = QueryDisName
    Left = 784
    Top = 264
  end
  object QueryR: TQuery
    Left = 760
    Top = 264
  end
  object QueryDisName: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from District'
      'Where(39=39)'
      'order by districtname ')
    Left = 730
    Top = 264
  end
  object QueryRoomNo: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select RoomId,(WardCode||'#39'/'#39'||RoomTypeCode||'#39'/'#39'||RoomNo)as RoomN' +
        'o from room')
    Left = 701
    Top = 264
    object QueryRoomNoROOMID: TFloatField
      FieldName = 'ROOMID'
    end
    object QueryRoomNoROOMNO: TStringField
      FieldName = 'ROOMNO'
      Size = 19
    end
  end
  object Query_DepositType: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From DepositType where IsAdvance='#39'Y'#39
      'Order By DepositType')
    Left = 725
    Top = 314
  end
  object DataSource_DepositType: TDataSource
    DataSet = Query_DepositType
    Left = 736
    Top = 314
  end
  object Query_GetReturnMedicine: TQuery
    DatabaseName = 'Hospital'
    Left = 772
    Top = 314
  end
  object Query_GetMedicineCharge: TQuery
    DatabaseName = 'Hospital'
    Left = 797
    Top = 314
  end
  object Query_Process: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Community Order By Community')
    Left = 837
    Top = 296
  end
  object Query_TempProcess: TQuery
    DatabaseName = 'C:\Hospital\Bin\data\temp'
    SQL.Strings = (
      '')
    Left = 855
    Top = 328
  end
  object Query_Community: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Community Order By Priority')
    Left = 646
    Top = 344
  end
  object Query_IsTestDeptInCommSetup: TQuery
    DatabaseName = 'Hospital'
    Left = 593
    Top = 475
  end
  object Query_TNCategoryCP: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select TN.TestNameCode,TN.TNCategoryCode,TNC.TestNameCategory'
      'From TestName TN,TestNameCategory TNC where '
      'TN.TNCategoryCode=TNC.TNCategoryCode')
    Left = 560
    Top = 475
  end
  object Query_PrevBillNo: TQuery
    DatabaseName = 'Hospital'
    Left = 516
    Top = 351
  end
  object QuerySchemeCP: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from scheme')
    Left = 472
    Top = 351
  end
  object QueryCommunityCP: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * from community')
    Left = 440
    Top = 350
  end
  object QuerySumDepCP: TQuery
    DatabaseName = 'Hospital'
    DataSource = DataSourceMaster
    SQL.Strings = (
      'SELECT  Sum(Qty*Amount) AS AMT,DEPID From Billdetail'
      'Where (BillNo=:BillNo) '
      'Group By DepID')
    Left = 407
    Top = 350
    ParamData = <
      item
        DataType = ftString
        Name = 'BILLNO'
        ParamType = ptUnknown
      end>
    object QuerySumDepCPAMT: TFloatField
      FieldName = 'AMT'
    end
    object QuerySumDepCPDEPID: TFloatField
      FieldName = 'DEPID'
    end
    object QuerySumDepCPLDepCode: TStringField
      FieldKind = fkLookup
      FieldName = 'LDepCode'
      LookupKeyFields = 'DEPID'
      LookupResultField = 'DEPCODE'
      KeyFields = 'DEPID'
      Size = 10
      Lookup = True
    end
  end
  object QuerySumAmtCP: TQuery
    AutoCalcFields = False
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select Sum(Amount*CurQty) as TotalAmt, Round(Sum(Amount*CurQty*D' +
        'is/100),2) as DisTot,'
      
        'Sum(CurVatAmt) as VatAmt,Sum((Amount*CurQty+CurVatAmt)-(Amount*C' +
        'urQty*Dis/100)) as'
      
        'NetAmount,Sum(DollarAmount*CurQty) as DollarTotalAmount, Sum(DCu' +
        'rVatAmt) as DollarVatAmt,Sum(DollarAmount*CurQty*Dis/100) as Dol' +
        'larDisTot,'
      
        'Sum((DollarAmount*CurQty+DCurVatAmt)-(DollarAmount*CurQty*Dis/10' +
        '0)) as DollarNetAmount  from BillDetail Where  (PatientId=:Patie' +
        'ntID)AND'
      '            (CancelStatus='#39'N'#39') AND'
      '            (BillNo=:BillNo) '
      '           '
      ' '
      ' '
      ' ')
    Left = 378
    Top = 350
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
        Value = '94603'
      end
      item
        DataType = ftString
        Name = 'BillNo'
        ParamType = ptUnknown
        Value = 'JAN03D4311'
      end>
    object QuerySumAmtCPTOTALAMT: TFloatField
      FieldName = 'TOTALAMT'
    end
    object QuerySumAmtCPDISTOT: TFloatField
      FieldName = 'DISTOT'
    end
    object QuerySumAmtCPVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QuerySumAmtCPNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object QuerySumAmtCPDOLLARTOTALAMOUNT: TFloatField
      FieldName = 'DOLLARTOTALAMOUNT'
    end
    object QuerySumAmtCPDOLLARVATAMT: TFloatField
      FieldName = 'DOLLARVATAMT'
    end
    object QuerySumAmtCPDOLLARDISTOT: TFloatField
      FieldName = 'DOLLARDISTOT'
    end
    object QuerySumAmtCPDOLLARNETAMOUNT: TFloatField
      FieldName = 'DOLLARNETAMOUNT'
    end
  end
  object QueryDetailCP: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'SELECT BillNo,Service,ServiceType, BillType,CurQty as Qty, Amoun' +
        't,CommunityID,MemberNo,SchemeId,RfBillNo,IsRefund,CancelStatus,'
      
        'DocCode,(Select Desig||'#39' '#39'||F_Name From Doctor where DocCode=Bil' +
        'lDetail.DocCode and rownum=1) as Doctor,LabNo,CurQty*Amount As T' +
        'otalAmount, ((CurQty*Amount)-(CurQty*Amount*Dis/100)) as NetAmou' +
        'nt'
      
        ',Dis, Round(CurQty*Amount*Dis/100) as Discount,CurVatAmt as VatA' +
        'mt,DepId,RateType,IsPackageTest'
      
        ',CurQty*DollarAmount as DollarAmount ,(CurQty*DollarAmount*Dis/1' +
        '00) as DollarDiscount,'
      'DCurVatAmt as DollarVatAmt,DollarExRate From BillDetail  Where'
      'CurQty > 0 and CancelStatus='#39'N'#39
      'and (BillNo=:BillNo)'
      'Order By DepID'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 341
    Top = 350
    ParamData = <
      item
        DataType = ftString
        Name = 'BILLNO'
        ParamType = ptUnknown
      end>
    object QueryDetailCPCummunity: TStringField
      FieldKind = fkLookup
      FieldName = 'Community'
      LookupDataSet = QueryCommunityCP
      LookupKeyFields = 'COMMUNITYID'
      LookupResultField = 'COMMUNITY'
      KeyFields = 'COMMUNITYID'
      Size = 30
      Lookup = True
    end
    object QueryDetailCPScheme: TStringField
      FieldKind = fkLookup
      FieldName = 'Scheme'
      LookupDataSet = QuerySchemeCP
      LookupKeyFields = 'SCHEMEID'
      LookupResultField = 'SCHEMENAME'
      KeyFields = 'SCHEMEID'
      Size = 30
      Lookup = True
    end
    object QueryDetailCPTNCategory: TStringField
      FieldKind = fkLookup
      FieldName = 'TNCategory'
      LookupDataSet = Query_TNCategoryCP
      LookupKeyFields = 'TESTNAMECODE'
      LookupResultField = 'TESTNAMECATEGORY'
      KeyFields = 'SERVICE'
      Lookup = True
    end
    object QueryDetailCPBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryDetailCPSERVICE: TStringField
      FieldName = 'SERVICE'
      Size = 10
    end
    object QueryDetailCPSERVICETYPE: TStringField
      FieldName = 'SERVICETYPE'
      Size = 75
    end
    object QueryDetailCPQTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryDetailCPAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryDetailCPCOMMUNITYID: TFloatField
      FieldName = 'COMMUNITYID'
    end
    object QueryDetailCPMEMBERNO: TStringField
      FieldName = 'MEMBERNO'
      Size = 8
    end
    object QueryDetailCPSCHEMEID: TFloatField
      FieldName = 'SCHEMEID'
    end
    object QueryDetailCPTOTALAMOUNT: TFloatField
      FieldName = 'TOTALAMOUNT'
    end
    object QueryDetailCPNETAMOUNT: TFloatField
      FieldName = 'NETAMOUNT'
    end
    object QueryDetailCPDIS: TFloatField
      FieldName = 'DIS'
    end
    object QueryDetailCPDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryDetailCPVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryDetailCPDEPID: TFloatField
      FieldName = 'DEPID'
    end
    object QueryDetailCPDepCode: TStringField
      FieldKind = fkLookup
      FieldName = 'DepCode'
      LookupDataSet = QueryDepartment
      LookupKeyFields = 'DEPID'
      LookupResultField = 'DEPCODE'
      KeyFields = 'DEPID'
      Lookup = True
    end
    object QueryDetailCPCANCELSTATUS: TStringField
      FieldName = 'CANCELSTATUS'
      Size = 1
    end
    object QueryDetailCPRATETYPE: TStringField
      FieldName = 'RATETYPE'
      Size = 3
    end
    object QueryDetailCPDOLLARAMOUNT: TFloatField
      FieldName = 'DOLLARAMOUNT'
    end
    object QueryDetailCPDOLLARDISCOUNT: TFloatField
      FieldName = 'DOLLARDISCOUNT'
    end
    object QueryDetailCPDOLLARVATAMT: TFloatField
      FieldName = 'DOLLARVATAMT'
    end
    object QueryDetailCPDOLLAREXRATE: TFloatField
      FieldName = 'DOLLAREXRATE'
    end
    object QueryDetailCPRFBILLNO: TStringField
      FieldName = 'RFBILLNO'
      Size = 16
    end
    object QueryDetailCPISREFUND: TStringField
      FieldName = 'ISREFUND'
      Size = 2
    end
    object QueryDetailCPBILLTYPE: TStringField
      FieldName = 'BILLTYPE'
      Size = 2
    end
    object QueryDetailCPLABNO: TStringField
      FieldName = 'LABNO'
      Size = 10
    end
    object QueryDetailCPDOCCODE: TStringField
      FieldName = 'DOCCODE'
      Size = 10
    end
    object QueryDetailCPDOCTOR: TStringField
      FieldName = 'DOCTOR'
      Size = 61
    end
    object QueryDetailCPISPACKAGETEST: TStringField
      FieldName = 'ISPACKAGETEST'
      FixedChar = True
      Size = 1
    end
  end
  object DataSourceMaster: TDataSource
    DataSet = QueryBillMasterCP
    Left = 310
    Top = 350
  end
  object QueryBillMasterCP: TQuery
    AutoCalcFields = False
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select BM.BillNo,BM.BillDate,BM.ModifyTime as BillTime,BM.ExtraC' +
        'harge,'
      'BM.PayType,BM.Remarks,UM.UserName From BillMaster BM,Usermain UM'
      'Where (BM.ModifyBY=UM.UserID) AND  (BM.PatientId=:PatientID) AND'
      '            (BM.BillNo=:BillNo) '
      ' '
      ' '
      ' ')
    Left = 279
    Top = 350
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        ParamType = ptUnknown
        Value = '94603'
      end
      item
        DataType = ftString
        Name = 'BillNo'
        ParamType = ptUnknown
        Value = 'JAN03D4311'
      end>
    object QueryBillMasterCPBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryBillMasterCPBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryBillMasterCPBILLTIME: TStringField
      FieldName = 'BILLTIME'
      Size = 12
    end
    object QueryBillMasterCPPAYTYPE: TStringField
      FieldName = 'PAYTYPE'
      Size = 10
    end
    object QueryBillMasterCPUSERNAME: TStringField
      FieldName = 'USERNAME'
      Size = 50
    end
    object QueryBillMasterCPEXTRACHARGE: TFloatField
      FieldName = 'EXTRACHARGE'
    end
    object QueryBillMasterCPREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 50
    end
  end
  object QueryNameCP: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select (FName || '#39' '#39'|| LName) as Name ,PatientId,InPatientId,Mem' +
        'berNo,'
      
        'Age||'#39'-'#39'||SubStr(AgeType,1,1)||'#39' / '#39'||SubStr(Gender,1,1) as AgeS' +
        'ex,'
      'DistrictName,VdcName,Paddress,WardNo,DepCode From PatientMain'
      'Where (patientID=:patientID) order by Patientid'
      ' ')
    Left = 248
    Top = 350
    ParamData = <
      item
        DataType = ftInteger
        Name = 'patientID'
        ParamType = ptUnknown
      end>
    object QueryNameCPNAME: TStringField
      FieldName = 'NAME'
      Size = 83
    end
    object QueryNameCPPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryNameCPINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryNameCPDISTRICTNAME: TStringField
      FieldName = 'DISTRICTNAME'
      Size = 25
    end
    object QueryNameCPVDCNAME: TStringField
      FieldName = 'VDCNAME'
      Size = 35
    end
    object QueryNameCPPADDRESS: TStringField
      FieldName = 'PADDRESS'
      Size = 100
    end
    object QueryNameCPWARDNO: TFloatField
      FieldName = 'WARDNO'
    end
    object QueryNameCPMEMBERNO: TStringField
      FieldName = 'MEMBERNO'
      Size = 8
    end
    object QueryNameCPDEPCODE: TStringField
      FieldName = 'DEPCODE'
      Size = 8
    end
    object QueryNameCPAGESEX: TStringField
      FieldName = 'AGESEX'
      Size = 11
    end
  end
  object Query_CheckeIVFDep: TQuery
    DatabaseName = 'Hospital'
    Left = 172
    Top = 479
  end
  object QryProcedureDep: TQuery
    DatabaseName = 'Hospital'
    Left = 204
    Top = 479
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1500
    Left = 214
    Top = 440
  end
  object Table_OperationCase: TTable
    Left = 273
    Top = 474
  end
  object Table_OperationPending: TTable
    TableName = 'DrOperation.DB'
    Left = 332
    Top = 444
  end
  object Table_XRayPlateSize: TTable
    TableName = 'XRayPlateSize.DB'
    Left = 340
    Top = 476
  end
  object Table_TestWiseCommession: TTable
    TableName = 'DrOperation.DB'
    Left = 372
    Top = 476
  end
  object Query_TempSubProcess: TQuery
    SQL.Strings = (
      '')
    Left = 407
    Top = 476
  end
  object QueryForDoctor: TQuery
    DatabaseName = 'Hospital'
    Left = 444
    Top = 479
  end
  object Query_GetFrctInvoPerson: TQuery
    SQL.Strings = (
      'Select * From DrOperation.DB '
      'Where IsFixedPersonForComm='#39'N'#39
      'and TestNameCode=:TestNameCode'
      'Order By DrName')
    Left = 384
    Top = 407
    ParamData = <
      item
        DataType = ftString
        Name = 'TestNameCode'
        ParamType = ptUnknown
      end>
  end
  object DS_GetFrctInvoPerson: TDataSource
    DataSet = Query_GetFrctInvoPerson
    Left = 414
    Top = 414
  end
  object Query_SubProcess: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Community Order By Community')
    Left = 500
    Top = 96
  end
end
