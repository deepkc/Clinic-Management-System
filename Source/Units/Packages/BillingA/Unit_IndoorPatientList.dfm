object Frame_IndoorPatientList: TFrame_IndoorPatientList
  Left = 0
  Top = 0
  Width = 985
  Height = 486
  TabOrder = 0
  object Panel_list: TPanel
    Left = 0
    Top = 0
    Width = 985
    Height = 486
    Align = alClient
    TabOrder = 0
    DesignSize = (
      985
      486)
    object DBGrid1: TDBGrid
      Left = 0
      Top = 128
      Width = 985
      Height = 330
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'First Name'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Last Name'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Age/Sex'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Hospital No.'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Inpt. No.'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'A.T.'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Dis. Date'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Ward/Room Type'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Doctor'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Address'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Guardian'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Phone'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Bill No.'
          Visible = True
        end>
    end
    object Edit_PatientID: TEdit
      Left = 15
      Top = 106
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit_Fname: TEdit
      Left = 116
      Top = 106
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 213
      Top = 106
      Width = 68
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 282
      Top = 106
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 348
      Top = 106
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 412
      Top = 106
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 479
      Top = 106
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 542
      Top = 106
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 630
      Top = 106
      Width = 63
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit10: TEdit
      Left = 694
      Top = 106
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object Edit11: TEdit
      Left = 759
      Top = 106
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object GroupBox2: TGroupBox
      Left = 407
      Top = 4
      Width = 146
      Height = 84
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 13
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
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 14
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
      end
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 4
      Width = 395
      Height = 84
      Color = clWhite
      ParentBackground = False
      ParentColor = False
      TabOrder = 12
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
      end
      object CheckBoxToday: TCheckBox
        Left = 93
        Top = 58
        Width = 139
        Height = 17
        Caption = 'Out Standing Patient [F1]'
        TabOrder = 2
      end
      object RadioButtonAdmit: TRadioButton
        Left = 259
        Top = 12
        Width = 89
        Height = 17
        Caption = 'Admitted Only'
        TabOrder = 3
      end
      object RadioButtonDischargedOnly: TRadioButton
        Left = 259
        Top = 35
        Width = 102
        Height = 17
        Caption = 'Discharged Only'
        TabOrder = 4
      end
      object RadioButtonDischarge: TRadioButton
        Left = 259
        Top = 59
        Width = 129
        Height = 17
        Caption = 'Admitted+Discharged'
        TabOrder = 5
      end
    end
  end
end
