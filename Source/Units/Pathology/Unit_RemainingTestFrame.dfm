object Frame_RemainingTest: TFrame_RemainingTest
  Left = 0
  Top = 0
  Width = 856
  Height = 502
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BB_Save: TBitBtn
      Left = 524
      Top = 0
      Width = 78
      Height = 32
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Export to XL'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      ExplicitLeft = 246
      ExplicitHeight = 33
    end
    object GroupBox1: TGroupBox
      Left = 185
      Top = 0
      Width = 261
      Height = 32
      Align = alLeft
      TabOrder = 1
      object Label4: TLabel
        Left = 18
        Top = 9
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SpeedButton1: TSpeedButton
        Left = 122
        Top = 5
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object Label5: TLabel
        Left = 151
        Top = 9
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SpeedButton2: TSpeedButton
        Left = 234
        Top = 5
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object DateEditX1: TDateEditX
        Left = 49
        Top = 8
        Width = 65
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674023103546F7002080B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
      object DateEditX2: TDateEditX
        Left = 169
        Top = 6
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C65667403A90003546F7002060B44
          61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
          6541442E44617902160B4461746556532E596561720314080C4461746556532E
          4D6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 0
      Top = 0
      Width = 185
      Height = 32
      Align = alLeft
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'All'
        'Remaining')
      TabOrder = 2
      ExplicitLeft = 360
      ExplicitTop = 1
      ExplicitHeight = 24
    end
    object BitBtn1: TBitBtn
      Left = 446
      Top = 0
      Width = 78
      Height = 32
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Refresh'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      ExplicitLeft = 246
      ExplicitHeight = 33
    end
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 32
    Width = 856
    Height = 470
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
        Title.Caption = 'Sn'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Sample No.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Hospital No.'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Patient Name'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'No.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Sample'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Report'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Remain'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Test Name'
        Width = 347
        Visible = True
      end>
  end
end
