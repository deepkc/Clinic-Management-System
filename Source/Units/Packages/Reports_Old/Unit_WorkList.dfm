object Form_WorkList: TForm_WorkList
  Left = 518
  Top = 332
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Work List'
  ClientHeight = 176
  ClientWidth = 317
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 317
    Height = 176
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 4
      Top = 15
      Width = 55
      Height = 13
      Caption = 'Department'
    end
    object Label2: TLabel
      Left = 8
      Top = 42
      Width = 55
      Height = 13
      Caption = 'From Date :'
    end
    object Label3: TLabel
      Left = 176
      Top = 42
      Width = 45
      Height = 13
      Caption = 'To Date :'
    end
    object DBLCB_Department: TDBLookupComboBox
      Left = 72
      Top = 12
      Width = 169
      Height = 21
      KeyField = 'DEPID'
      ListField = 'DEPNAME'
      ListSource = Ds_department
      TabOrder = 0
    end
    object DateEditX_From: TDateEditX
      Left = 65
      Top = 38
      Width = 88
      Height = 21
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C656674024103546F700226057769
        64746802580B4461746541442E5965617203D7070C4461746541442E4D6F6E74
        6802010A4461746541442E44617902010B4461746556532E59656172030F080C
        4461746556532E4D6F6E746802090A4461746556532E44617902110000}
    end
    object DateEditX_To: TDateEditX
      Left = 225
      Top = 38
      Width = 88
      Height = 21
      TabOrder = 2
      ControlData = {
        545046300A5444617465456469745200044C65667403E10003546F7002260577
        6964746802580B4461746541442E5965617203D7070C4461746541442E4D6F6E
        746802010A4461746541442E44617902010B4461746556532E59656172030F08
        0C4461746556532E4D6F6E746802090A4461746556532E44617902110000}
    end
    object BitBtn_From: TBitBtn
      Left = 130
      Top = 40
      Width = 21
      Height = 17
      Caption = 'BS'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn_FromClick
    end
    object BitBtnCancel: TBitBtn
      Left = 221
      Top = 142
      Width = 92
      Height = 26
      Cancel = True
      Caption = '&Cancel'
      DoubleBuffered = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 4
      OnClick = BitBtnCancelClick
    end
    object BitBtn1: TBitBtn
      Left = 125
      Top = 142
      Width = 92
      Height = 26
      Caption = '&Ok'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 290
      Top = 40
      Width = 23
      Height = 17
      Caption = 'BS'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object CheckBoxAll: TCheckBox
      Left = 248
      Top = 16
      Width = 33
      Height = 17
      Caption = 'All'
      Checked = True
      State = cbChecked
      TabOrder = 7
      OnClick = CheckBoxAllClick
    end
    object BitBtnExcel: TBitBtn
      Left = 8
      Top = 141
      Width = 113
      Height = 27
      Caption = 'Send To Excel '
      DoubleBuffered = True
      Glyph.Data = {
        5A010000424D5A01000000000000760000002800000016000000130000000100
        040000000000E4000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF4000000000006666FF00FFFF
        408888888806EEF0FF00FFFF440E6666606EEF04FF00FFFF4440E66606EEF060
        FF00FFFF44440E606EEF0000FF00FFFF44444006EEF04444FF00FFFF4444406E
        EF004444FF00FFFF444406EEF0680444FF00FFFF44406EEF0E668044FF00FFFF
        4406EEF040E66804FF00FFFF40FFFF04440EEEE0FF00FFFF4000004444400000
        FF00FFFF4044444444444444FF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00}
      ParentDoubleBuffered = False
      TabOrder = 8
      OnClick = BitBtnExcelClick
    end
    object Panel_Time: TPanel
      Left = 8
      Top = 93
      Width = 305
      Height = 47
      TabOrder = 9
      Visible = False
      object Label5: TLabel
        Left = 0
        Top = 18
        Width = 49
        Height = 13
        Caption = 'From Time'
      end
      object Label6: TLabel
        Left = 128
        Top = 18
        Width = 39
        Height = 13
        Caption = 'To Time'
      end
      object MaskEdit1: TMaskEdit
        Left = 56
        Top = 15
        Width = 57
        Height = 21
        EditMask = '!90:00:00>;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '  :  :  '
      end
      object MaskEdit2: TMaskEdit
        Left = 172
        Top = 14
        Width = 53
        Height = 21
        EditMask = '!90:00:00>;1;_'
        MaxLength = 8
        TabOrder = 1
        Text = '  :  :  '
      end
    end
    object CheckBox_timewise: TCheckBox
      Left = 8
      Top = 77
      Width = 97
      Height = 15
      Caption = 'Time Wise'
      TabOrder = 10
      OnClick = CheckBox_timewiseClick
    end
  end
  object qry_department: TOraQuery
    SQL.Strings = (
      
        'select dept_depid as depid,dept_depname as depname from hs_dept_' +
        'department where dept_depid in(select depid from lab_useraccessi' +
        'bledepartment) '
      'order by depname')
    Left = 152
    Top = 56
  end
  object Ds_department: TOraDataSource
    DataSet = qry_department
    Left = 232
    Top = 72
  end
end
