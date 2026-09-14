object Frame_OutdoorPatientList: TFrame_OutdoorPatientList
  Left = 0
  Top = 0
  Width = 1025
  Height = 471
  TabOrder = 0
  object Panel_list: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 471
    Align = alClient
    TabOrder = 0
    DesignSize = (
      1025
      471)
    object Label2: TLabel
      Left = 13
      Top = 14
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
    object DBGrid1: TDBGrid
      Left = 0
      Top = 104
      Width = 1025
      Height = 339
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
          FieldName = 'PATIENTID'
          Title.Caption = 'Hospital No.'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FNAME'
          Title.Caption = 'First Name'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LNAME'
          Title.Caption = 'Last Name'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGEGENDER'
          Title.Caption = 'Age/Sex'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOB'
          Title.Caption = 'Dob'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PADDRESS'
          Title.Caption = 'Address'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PHONENO'
          Title.Caption = 'Phone No.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Bill No.'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Bill Date'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Bill Time'
          Visible = True
        end>
    end
    object Edit_PatientID: TEdit
      Left = 15
      Top = 82
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit_Fname: TEdit
      Left = 91
      Top = 82
      Width = 72
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 165
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 230
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 296
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 360
      Top = 82
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 427
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object Edit8: TEdit
      Left = 493
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object Edit9: TEdit
      Left = 558
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object Edit10: TEdit
      Left = 624
      Top = 82
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object Edit1: TEdit
      Left = 131
      Top = 14
      Width = 163
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 11
    end
    object GroupBox1: TGroupBox
      Left = 306
      Top = 2
      Width = 185
      Height = 77
      TabOrder = 12
      object Label4: TLabel
        Left = 8
        Top = 28
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SpeedButton1: TSpeedButton
        Left = 106
        Top = 24
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object Label5: TLabel
        Left = 23
        Top = 52
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SpeedButton2: TSpeedButton
        Left = 106
        Top = 48
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object CheckBox1: TCheckBox
        Left = 16
        Top = 4
        Width = 97
        Height = 17
        Caption = 'Search by date'
        TabOrder = 0
      end
      object DateEditX1: TDateEditX
        Left = 41
        Top = 25
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002190B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
      object DateEditX2: TDateEditX
        Left = 41
        Top = 49
        Width = 65
        Height = 21
        TabOrder = 2
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002310B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
    end
    object GroupBox2: TGroupBox
      Left = 500
      Top = 2
      Width = 213
      Height = 77
      TabOrder = 13
      object Label6: TLabel
        Left = 11
        Top = 20
        Width = 87
        Height = 13
        Caption = 'Include more than'
      end
      object Label7: TLabel
        Left = 163
        Top = 20
        Width = 24
        Height = 13
        Caption = 'Days'
      end
      object SpeedButton4: TSpeedButton
        Left = 96
        Top = 44
        Width = 97
        Height = 22
        Caption = '&Refresh'
      end
      object SpinEdit1: TSpinEdit
        Left = 101
        Top = 16
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
    end
  end
end
