object FormMonitorRegister: TFormMonitorRegister
  Left = 470
  Top = 130
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Register Monitor- Service(s)'
  ClientHeight = 481
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 790
    Height = 41
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 461
      Top = 16
      Width = 29
      Height = 13
      Caption = 'From :'
    end
    object Label2: TLabel
      Left = 563
      Top = 16
      Width = 19
      Height = 13
      Caption = 'To :'
    end
    object Shape3: TShape
      Left = 9
      Top = 8
      Width = 12
      Height = 7
      Brush.Color = clRed
      Pen.Style = psClear
    end
    object Label37: TLabel
      Left = 28
      Top = 4
      Width = 93
      Height = 13
      Caption = '--> Report Prepared'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 284
      Top = 4
      Width = 83
      Height = 13
      Caption = '--> Report Printed'
    end
    object Shape1: TShape
      Left = 265
      Top = 8
      Width = 12
      Height = 7
      Brush.Color = clGreen
      Pen.Style = psClear
    end
    object Label5: TLabel
      Left = 156
      Top = 4
      Width = 100
      Height = 13
      Caption = '--> Report Remaining'
    end
    object Shape2: TShape
      Left = 137
      Top = 8
      Width = 12
      Height = 7
      Brush.Color = clBlack
      Pen.Style = psClear
    end
    object Label6: TLabel
      Left = 9
      Top = 25
      Width = 136
      Height = 13
      Caption = 'Summary List Test Wise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object DateEditXFromDate: TDateEditX
      Left = 488
      Top = 13
      Width = 69
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C65667403E80103546F70020D0577
        6964746802450B4461746541442E5965617203DA070C4461746541442E4D6F6E
        746802070A4461746541442E44617902070B4461746556532E59656172031308
        0C4461746556532E4D6F6E746802030A4461746556532E44617902170000}
    end
    object DateEditXToDate: TDateEditX
      Left = 586
      Top = 13
      Width = 70
      Height = 21
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C656674034A0203546F70020D0577
        6964746802460B4461746541442E5965617203DA070C4461746541442E4D6F6E
        746802070A4461746541442E44617902070B4461746556532E59656172031308
        0C4461746556532E4D6F6E746802030A4461746556532E44617902170000}
    end
    object BitBtnRefresh: TBitBtn
      Left = 662
      Top = 3
      Width = 103
      Height = 33
      Caption = '&Refresh(F5)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F3F1E0D2CCB79483AA7E68A171599D6C
        53A87A62AE8671D0BDB2EEE6E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6ACA0A87D64B78C75DAB9A2
        F3CFB2FFE1C5FFE8CEFBD6B7E7C6AEC29B85AE826AB18D7CF5F0EDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB8372AC8269F4
        DDCBFFDBBDFED5B2FCCFAAFACBA4F8C9A2FBCDA8FDD2AFFFDBBBFCE1CAD5AF95
        9C7159E7DCD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F5F4A071
        5BBB9177FFF0D7FBCAA2F8C9A2F8CAA3F8CAA4F8CAA4F8CAA3F8CAA4F8CAA3F8
        C9A3F9C8A0FFDEBDF9E3D099684CDCCAC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFAD8774BA9077FFE3C9F9C79FF8CAA4F9CBA5F8CAA3F8C8A0FACDA7FFD6
        B3F8C8A1F8C8A1F9CBA5F9CBA5F8C8A1FFD7B5F1D5C09E7259F9F6F5FFFFFFFF
        FFFFFFFFFFFFFFFFE7DBD69F7256FFE3CAFACDA6F8CBA5F8CBA4F9C9A1FED5B1
        FFF1DCFFDEC5DEBBA0FFF4E0FFE4C9F9C89FF9CAA3F9CBA5F9C9A2FFE3C7D6B1
        97A9816FFFFFFFFFFFFFFFFFFFFFFFFF916048FFE1C7FAD0ACF3C59FF3C6A0F5
        C9A3FBDDC5DBBCAA9B6B529B6F5AB28E7E93634AC69C80F6DCC8FCD2AFF4C69F
        F5C7A0F3C29AFFEED7AA7D62DDCBC4FFFFFFFFFFFFDBC9C2AE856BFFE5C9ECBF
        97EEC19BEEC19AFFE5CAB18368B49282E9DDD9FFFFFFFFFFFFF9F7F6C5AA9FA6
        7C63EFD2B9F3C6A2EFC19AEFC09AF6CAA5E2C0A7B59585FFFFFFFFFFFFBE9F92
        DDBBA4ECC29BE7BB94E7BA94EFC5A1E0BFA59F725AFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC9B0A6C09377FAD6B7E7B891E8BA94E8B890EDCEB6AB846FF8
        F6F4FFFFFFAE8C7AE9C5ABDDAF88DEB28CDCB08AEDC5A2BA896EE2D5D0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F8A9836EEACBB3DEAE87DFB18BDEAF
        88EAC7A8B0846BEFE8E5FDFBFBAC8875E5C4ABD5A67FD6A983D5A881E5BC98BD
        8E72E2D5D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8998AE6C1A8
        D6A67FD7A983D6A680E5C0A1B4866CECE4E0FDFBFBAD8976E1C1A8CC9D75CEA2
        7CCDA07ADFB693BD8C70E3D6D1FFFFFFFFFFFFBA9887BA9888FFFFFFFFFFFFFF
        FFFFB9998BE6C1A6CB9C75CFA07ACD9D76DFBA9AB2866CECE3E1FFFFFFB2907E
        E0BEA4CC9F77CDA17BCCA079DBB490BB9074D6C5BCFFFFFFFFFFFF96644CAF86
        6BDBCCC5FFFFFFF4EFEDAA826BE4C6ADC1916AC59670C3926BD9BA9EAD836BF2
        ECE9FFFFFFC0A497D2AC92CEA681CDA17ACDA17AD2A985D3B4999F6F57FFFFFF
        FFFFFF93614BFFE4CAA88067E1D5CFCFB6ABA77F63CCA989BB8C65BE8E68B988
        60DCBDA4AB8570FAF6F6FFFFFFDECEC7A57C62E4C6A9CB9D76CCA07AD4A780E3
        C2A4AB8166996954F5EFEE92634CFFE4CAF8DAC09B745BA07B62A68D72B48862
        B78862B5855FBC926EDBB79CB69585FFFFFFFFFFFFFFFFFF9F705DDBBDA1D0AA
        87D6A983D5A982D6A981E5C5A8E7C9AE976548AA7F66F9D7B9EFC6A0FFF3D894
        7F64855B35936540AE805AAF8059E6C9AF96674EEAE0DCFFFFFFFFFFFFFFFFFF
        EEE4E2915D3FDCBEA3DDB28CDBAF89DFB38DE2B48DE3BC98EAC9AAF6D4B6EFC2
        9BEEC099F6C8A2FFDEBF8A603D82542D8E6139B59373BD9A7EB48F7FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB89686A9795EDABFA3E5B68EE2B68FE2B690E0B38D
        E6B993EEC19BEFC29CEFC39DEDC09AF8CBA4FFE5C9885B377C5735A3876C9562
        49FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA9B8AA87D61DEC4A9E2
        B994E0B38DE8BB94F1C59EEFC39DEFC39DEEC09AF0C39CFFE2C2CFAB8C8B6B4A
        B0937AA06F57F2ECE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFD
        FDBE9F929C6B4EC9AB90E7C7A7E8C4A3EDC19BEFC19AEEC29BF1C49DFFE4C3D5
        BFA6947B5D967154AE8671EDE4E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDDCEC6A2745C905D40BC9A7FEDCFB2FAE0C4E9BE
        98FFE6C6E0C9AF81593C8C583CCAAEA1FBF9F9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EEEBBC9B8D
        9D6F5A79472BFFEED7C0997F89563BE0D0C9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF986953D1A88C95654DF6F2F0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B6B549A6850FEFDFDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtnRefreshClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 42
    Width = 789
    Height = 214
    DataSource = DSSample
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnMouseWheelDown = DBGrid1MouseWheelDown
    OnMouseWheelUp = DBGrid1MouseWheelUp
    Columns = <
      item
        Expanded = False
        FieldName = 'Sno'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestName'
        Title.Alignment = taCenter
        Width = 260
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'No'
        Title.Alignment = taCenter
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SampleNo'
        Title.Alignment = taCenter
        Title.Caption = 'Sample'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Report'
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Remaining'
        Title.Alignment = taCenter
        Title.Caption = 'Remain'
        Width = 98
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 275
    Width = 789
    Height = 206
    DataSource = DSNameList
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Sno'
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SampleID'
        Title.Alignment = taCenter
        Title.Caption = 'Sample No.'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SampleDateTime'
        Title.Alignment = taCenter
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PatientID'
        Title.Alignment = taCenter
        Title.Caption = 'Patient No.'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PatientName'
        Title.Alignment = taCenter
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Age'
        Title.Alignment = taCenter
        Title.Caption = 'Age/Gen/Address'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PhoneNo'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Title.Alignment = taCenter
        Title.Caption = 'Sample By'
        Width = 60
        Visible = True
      end>
  end
  object Panel_middle: TPanel
    Left = 0
    Top = 256
    Width = 789
    Height = 20
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    object Label4: TLabel
      Left = 9
      Top = 4
      Width = 125
      Height = 13
      Caption = 'Details List Test Wise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
  end
  object DSSample: TDataSource
    DataSet = QrySample
    Left = 256
    Top = 120
  end
  object QrySample: TQuery
    SQL.Strings = (
      'Select * From MonitorService.db'
      'Order By TestName Asc')
    Left = 136
    Top = 208
    object QrySampleSno: TIntegerField
      FieldName = 'Sno'
    end
    object QrySampleTestNameCode: TStringField
      FieldName = 'TestNameCode'
      Size = 15
    end
    object QrySampleTestName: TStringField
      FieldName = 'TestName'
      Size = 255
    end
    object QrySampleNo: TIntegerField
      FieldName = 'No'
    end
    object QrySampleSampleNo: TIntegerField
      FieldName = 'SampleNo'
    end
    object QrySampleReport: TIntegerField
      FieldName = 'Report'
    end
    object QrySampleRemaining: TIntegerField
      FieldName = 'Remaining'
    end
  end
  object TableSampleList: TTable
    Left = 40
    Top = 152
  end
  object DSNameList: TDataSource
    DataSet = QryNameList
    Left = 80
    Top = 392
  end
  object QryNameList: TQuery
    DatabaseName = 'C:\Hospital\Bins\Data\TempLAB'
    SQL.Strings = (
      'Select * From NameList.db'
      'Order By Sno ')
    Left = 120
    Top = 392
  end
  object Table1: TTable
    Left = 144
    Top = 144
  end
  object QryProcess: TOraQuery
    Left = 400
    Top = 112
  end
  object QryAniD: TOraQuery
    Left = 480
    Top = 200
  end
end
