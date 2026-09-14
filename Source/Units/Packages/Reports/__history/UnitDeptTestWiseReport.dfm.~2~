object FormDeptTestWiseReport: TFormDeptTestWiseReport
  Left = 440
  Top = 225
  Caption = 'Department/Test Wise Report'
  ClientHeight = 262
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 30
    Align = alTop
    TabOrder = 0
    object BitBtnPreview: TBitBtn
      Left = 2
      Top = 2
      Width = 122
      Height = 25
      Caption = '&Preview (F1)'
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
      OnClick = BitBtnPreviewClick
    end
    object BitBtnExcel: TBitBtn
      Left = 124
      Top = 2
      Width = 149
      Height = 25
      Caption = 'Send To Excel (F2)'
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
      TabOrder = 1
      OnClick = BitBtnExcelClick
    end
    object BitBtnCancel: TBitBtn
      Left = 273
      Top = 2
      Width = 122
      Height = 25
      Caption = '&Cancel (Esc)'
      DoubleBuffered = True
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
      TabOrder = 2
      OnClick = BitBtnCancelClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 30
    Width = 388
    Height = 213
    Align = alClient
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 398
      Height = 20
    end
    object Label1: TLabel
      Left = 42
      Top = 167
      Width = 26
      Height = 13
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 193
      Top = 167
      Width = 16
      Height = 13
      Caption = 'To:'
    end
    object Label_Identification: TLabel
      Left = 10
      Top = 90
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Department '
    end
    object Label3: TLabel
      Left = 16
      Top = 116
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Test Name'
      Visible = False
    end
    object BtnFrom: TSpeedButton
      Left = 145
      Top = 164
      Width = 23
      Height = 21
      Caption = 'BS'
      OnClick = BtnFromClick
    end
    object BtnTo: TSpeedButton
      Left = 278
      Top = 161
      Width = 23
      Height = 24
      Caption = 'BS'
      OnClick = BtnToClick
    end
    object DateEditX_FromDate: TDateEditX
      Left = 77
      Top = 163
      Width = 69
      Height = 21
      TabOrder = 4
      ControlData = {
        545046300A5444617465456469745200044C656674024D03546F7003A3000577
        6964746802450B4461746541442E5965617203D2070C4461746541442E4D6F6E
        746802040A4461746541442E44617902160B4461746556532E59656172030B08
        0C4461746556532E4D6F6E746802010A4461746556532E44617902090000}
    end
    object DateEditX_ToDate: TDateEditX
      Left = 214
      Top = 163
      Width = 64
      Height = 21
      TabOrder = 5
      ControlData = {
        545046300A5444617465456469745200044C65667403D60003546F7003A30005
        776964746802400B4461746541442E5965617203D2070C4461746541442E4D6F
        6E746802040A4461746541442E44617902160B4461746556532E59656172030B
        080C4461746556532E4D6F6E746802010A4461746556532E44617902090000}
    end
    object CMBDepartment: TDBLookupComboBox
      Left = 77
      Top = 85
      Width = 270
      Height = 21
      KeyField = 'DEPT_DEPID'
      ListField = 'DEPT_DEPNAME'
      ListSource = DataSource_Department
      TabOrder = 2
      OnClick = CMBDepartmentClick
      OnKeyDown = CMBDepartmentKeyDown
    end
    object DBLCBTestName: TDBLookupComboBox
      Left = 77
      Top = 113
      Width = 270
      Height = 21
      KeyField = 'TENA_TESTNAMECODE'
      ListField = 'TENA_TESTNAME'
      ListSource = DataSource_TestName
      TabOrder = 3
      Visible = False
      OnKeyDown = DBLCBTestNameKeyDown
    end
    object GroupBox1: TGroupBox
      Left = 125
      Top = 32
      Width = 139
      Height = 64
      TabOrder = 0
      Visible = False
      object RB_DepartmentWise: TRadioButton
        Left = 6
        Top = 12
        Width = 130
        Height = 17
        Caption = '&Department Wise (F3)'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RB_TestWise: TRadioButton
        Left = 6
        Top = 37
        Width = 106
        Height = 17
        Caption = '&Test Wise (F4)'
        TabOrder = 1
      end
    end
    object CheckBox_WithQty: TCheckBox
      Left = 279
      Top = 26
      Width = 98
      Height = 17
      Caption = 'With &Quantity'
      Checked = True
      State = cbChecked
      TabOrder = 1
      Visible = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 243
    Width = 388
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Query_SubProcess: TOraQuery
    SQL.Strings = (
      'update billmaster'
      'set freeby='#39'OTHER'#39
      'where freeby is NULL'
      'and dis > 0')
    FetchRows = 5000
    Left = 31
    Top = 33
  end
  object Query_Process: TOraQuery
    SQL.Strings = (
      'update billmaster'
      'set freeby='#39'OTHER'#39
      'where freeby is NULL'
      'and dis > 0')
    FetchRows = 5000
    Left = 315
    Top = 185
  end
  object Query_Department: TOraQuery
    SQL.Strings = (
      
        'Select D.DEPT_DepId,D.DEPT_DepCode,D.DEPT_DepName From HS_DEPT_D' +
        'epartment D'
      'Order By D.DEPT_DepName')
    FetchRows = 5000
    Left = 274
    Top = 70
  end
  object DataSource_Department: TDataSource
    DataSet = Query_Department
    Left = 286
    Top = 71
  end
  object Query_TestName: TOraQuery
    SQL.Strings = (
      'Select TENA_TestNameCode,TENA_TestName From HS_TENA_TestName '
      'Where 39=39'
      'Order By TENA_TestNameCode')
    FetchRows = 5000
    Left = 321
    Top = 110
  end
  object DataSource_TestName: TDataSource
    DataSet = Query_TestName
    Left = 336
    Top = 110
  end
  object Table_TestWiseDeptWise: TOraTable
    TableName = 'TestWiseDeptWise.db'
    FetchRows = 5000
    Left = 8
    Top = 86
  end
  object Query_Master: TOraQuery
    SQL.Strings = (
      'Select Distinct BD.DEPID From BillDetail BD'
      'Where (BD.BillDate>=:FromDate and BD.BillDate<=:ToDate) '
      'and (BD.BillType='#39'B'#39')')
    FetchRows = 5000
    Left = 216
    Top = 78
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FromDate'
      end
      item
        DataType = ftUnknown
        Name = 'ToDate'
      end>
  end
  object DS_Master: TDataSource
    DataSet = Query_Master
    Left = 216
    Top = 38
  end
  object Query_Detail: TOraQuery
    SQL.Strings = (
      
        'Select DepName,PayType,BillNo,BillDate,UserName,ServiceType,Amou' +
        'nt,'
      'Discount,SubTotal,VatAmt,NetAmount From  TestWiseDeptWise.db')
    MasterSource = DS_Master
    FetchRows = 5000
    Left = 136
    Top = 38
  end
  object Query_Void: TOraQuery
    SQL.Strings = (
      'update billmaster'
      'set freeby='#39'OTHER'#39
      'where freeby is NULL'
      'and dis > 0')
    FetchRows = 5000
    Left = 71
    Top = 33
  end
  object qry_refdetail: TOraQuery
    SQL.Strings = (
      '')
    MasterSource = DS_Master
    FetchRows = 5000
    Left = 136
    Top = 86
  end
end
