object Form_DateRange: TForm_DateRange
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form_DateRange'
  ClientHeight = 175
  ClientWidth = 330
  Color = 16771818
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 2
    Width = 328
    Height = 171
    Brush.Style = bsClear
    Pen.Color = 12615680
    Pen.Width = 2
    Shape = stRoundRect
  end
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 249
    Height = 13
    Caption = 'Please enter Date Range OR  Daily No. range'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 31
    Height = 13
    Caption = 'From :'
  end
  object Label3: TLabel
    Left = 176
    Top = 48
    Width = 19
    Height = 13
    Caption = 'To :'
  end
  object SpeedButton1: TSpeedButton
    Left = 116
    Top = 44
    Width = 23
    Height = 22
    Caption = 'BS'
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 263
    Top = 44
    Width = 23
    Height = 22
    Caption = 'BS'
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 106
    Top = 145
    Width = 89
    Height = 22
    Caption = 'OK'
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 197
    Top = 145
    Width = 89
    Height = 22
    Caption = 'Cancel'
    OnClick = SpeedButton4Click
  end
  object Label4: TLabel
    Left = 10
    Top = 71
    Width = 68
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Daily No.'
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
  object Label5: TLabel
    Left = 176
    Top = 75
    Width = 12
    Height = 13
    Caption = 'To'
  end
  object Label6: TLabel
    Left = 12
    Top = 102
    Width = 66
    Height = 13
    Caption = 'Test Name :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Dex_From: TDateEditX
    Left = 51
    Top = 45
    Width = 65
    Height = 21
    TabOrder = 0
    OnExit = Dex_FromExit
    ControlData = {
      545046300A5444617465456469745200044C656674023303546F70022D0B4461
      746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A44617465
      41442E44617902010B4461746556532E596561720314080C4461746556532E4D
      6F6E746802070A4461746556532E446179020F0000}
  end
  object Dex_To: TDateEditX
    Left = 197
    Top = 45
    Width = 65
    Height = 21
    TabOrder = 1
    ControlData = {
      545046300A5444617465456469745200044C65667403C50003546F70022D0B44
      61746541442E5965617203DB070C4461746541442E4D6F6E7468020B0A446174
      6541442E44617902010B4461746556532E596561720314080C4461746556532E
      4D6F6E746802070A4461746556532E446179020F0000}
  end
  object Edit_from: TEdit
    Left = 82
    Top = 72
    Width = 79
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object Edit_to: TEdit
    Left = 199
    Top = 72
    Width = 87
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object DBLCB_TestName: TDBLookupComboBox
    Left = 82
    Top = 99
    Width = 202
    Height = 21
    DropDownWidth = 260
    KeyField = 'TESTNAMEID'
    ListField = 'TESTNAME'
    ListSource = DS_TestName
    TabOrder = 4
    OnKeyDown = DBLCB_TestNameKeyDown
  end
  object CB_HideAllTest: TCheckBox
    Left = 83
    Top = 125
    Width = 118
    Height = 17
    Caption = 'Alternative Work List'
    TabOrder = 5
    OnClick = CB_HideAllTestClick
  end
  object Query_TestName: TOraQuery
    Session = DM_Hospital.DB
    SQL.Strings = (
      
        'SELECT tena_TESTNAMEID as testnameid,tena_TestNameCode as testna' +
        'mecode,tena_TestName as testname FROM hs_tena_TESTNAME'
      
        'where tena_IsActive='#39'Y'#39' and tena_depid in ( select dept_depid fr' +
        'om hs_dept_department where dept_deptype in ('#39'P'#39','#39'H'#39','#39'R'#39')) Order' +
        ' by TestName')
    Left = 280
    Top = 96
  end
  object DS_TestName: TDataSource
    DataSet = Query_TestName
    Left = 296
    Top = 23
  end
end
