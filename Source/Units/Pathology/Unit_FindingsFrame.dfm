object Frame_Findings: TFrame_Findings
  Left = 0
  Top = 0
  Width = 831
  Height = 467
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 831
    Height = 96
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label14: TLabel
      Left = 39
      Top = 12
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Name :'
    end
    object Label15: TLabel
      Left = 79
      Top = 12
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
    object Label18: TLabel
      Left = 632
      Top = 13
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Doctor :'
    end
    object SpeedButton2: TSpeedButton
      Left = 740
      Top = 32
      Width = 84
      Height = 22
      Caption = 'Change Date'
    end
    object SpeedButton1: TSpeedButton
      Left = 334
      Top = 72
      Width = 92
      Height = 22
      Caption = '<- Previous'
    end
    object SpeedButton3: TSpeedButton
      Left = 425
      Top = 72
      Width = 92
      Height = 22
      Caption = 'Next ->'
    end
    object Label1: TLabel
      Left = 8
      Top = 28
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hospital No. :'
    end
    object Label2: TLabel
      Left = 79
      Top = 28
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
      Left = 15
      Top = 52
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Test Name :'
    end
    object Label4: TLabel
      Left = 79
      Top = 52
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
      Left = 605
      Top = 37
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Report Date :'
    end
    object Label6: TLabel
      Left = 553
      Top = 61
      Width = 118
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sample Rec. Date/Time :'
    end
    object DBLCB_Religion: TDBLookupComboBox
      Left = 673
      Top = 8
      Width = 152
      Height = 21
      KeyField = 'RELIGIONID'
      ListField = 'RELIGION'
      TabOrder = 0
    end
    object le_Age: TLabeledEdit
      Left = 77
      Top = 73
      Width = 74
      Height = 21
      EditLabel.Width = 66
      EditLabel.Height = 13
      EditLabel.Caption = 'Running No. :'
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object DateEditX1: TDateEditX
      Left = 673
      Top = 32
      Width = 65
      Height = 21
      TabOrder = 2
      ControlData = {
        545046300A5444617465456469745200044C65667403A10203546F7002200B44
        61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
        6541442E44617902020B4461746556532E596561720314080C4461746556532E
        4D6F6E746802080A4461746556532E44617902100000}
    end
    object DateEditX2: TDateEditX
      Left = 673
      Top = 56
      Width = 65
      Height = 21
      TabOrder = 3
      ControlData = {
        545046300A5444617465456469745200044C65667403A10203546F7002380B44
        61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
        6541442E44617902020B4461746556532E596561720314080C4461746556532E
        4D6F6E746802080A4461746556532E44617902100000}
    end
    object Me_Time: TMaskEdit
      Left = 740
      Top = 56
      Width = 84
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 4
      Text = '  :  '
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 96
    Width = 831
    Height = 371
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Title.Caption = 'Tests'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Findings'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Ref. Range [M]'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Ref. Range [F]'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Unit'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Extra'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Extra Findings'
        Width = 97
        Visible = True
      end>
  end
  object Table_Findings: TTable
    Left = 280
    Top = 280
  end
  object DS_Findings: TDataSource
    Left = 336
    Top = 280
  end
end
