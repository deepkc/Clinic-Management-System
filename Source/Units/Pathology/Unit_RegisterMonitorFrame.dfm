object Frame_RegisterMonitor: TFrame_RegisterMonitor
  Left = 0
  Top = 0
  Width = 735
  Height = 530
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 782
    object BB_Save: TBitBtn
      Left = 246
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = '&Refresh'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      ExplicitLeft = 197
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 246
      Height = 33
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 454
      ExplicitTop = 3
      ExplicitHeight = 29
      object Label4: TLabel
        Left = 8
        Top = 9
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SpeedButton1: TSpeedButton
        Left = 106
        Top = 5
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object Label5: TLabel
        Left = 135
        Top = 9
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SpeedButton2: TSpeedButton
        Left = 218
        Top = 5
        Width = 22
        Height = 22
        Caption = 'AD'
      end
      object DateEditX1: TDateEditX
        Left = 41
        Top = 6
        Width = 65
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002060B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
      object DateEditX2: TDateEditX
        Left = 153
        Top = 6
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C65667403990003546F7002060B44
          61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
          6541442E44617902160B4461746556532E596561720314080C4461746556532E
          4D6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 43
    Width = 718
    Height = 234
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
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Test Name'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'No.'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Sample'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Report'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Remain'
        Width = 65
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 3
    Top = 283
    Width = 718
    Height = 234
    TabOrder = 2
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
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Sample Date/Time'
        Width = 102
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
        Title.Caption = 'Age'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Phone No.'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Status'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Sample By'
        Visible = True
      end>
  end
end
