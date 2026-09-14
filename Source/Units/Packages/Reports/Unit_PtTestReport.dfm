object Form_PtTestReport: TForm_PtTestReport
  Left = 359
  Top = 191
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Patient Test Report'
  ClientHeight = 666
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 49
    Width = 886
    Height = 61
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 15
      Width = 71
      Height = 13
      Caption = 'Hospital No.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 17
      Top = 37
      Width = 76
      Height = 13
      Caption = 'InPatient No.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 633
      Top = 16
      Width = 61
      Height = 13
      Caption = 'Department :'
    end
    object Edit_PatientNo: TEdit
      Left = 96
      Top = 11
      Width = 113
      Height = 21
      TabOrder = 0
      OnKeyDown = Edit_PatientNoKeyDown
      OnKeyPress = Edit_PatientNoKeyPress
    end
    object BitBtnRefresh: TBitBtn
      Left = 790
      Top = 9
      Width = 90
      Height = 30
      Caption = '&Search'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        BA090000424DBA09000000000000360000002800000026000000150000000100
        18000000000084090000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6FFFFFFCED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D600000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000CED3D6CED3D6FFFFFFCED3D6CED3D60000000000000000000000000000
        00000000000000000000000000000000000000000000000000CED3D6CED3D6FF
        FFFFFFFFFFFFFFFF0000CED3D6CED3D6848684CECFCECECFCECECFCECECFCECE
        CFCECECFCECECFCECECFCECECFCECECFCECECFCE000000CED3D6CED3D6FFFFFF
        CED3D6CED3D6848684CECFCECECFCECECFCECECFCECECFCECECFCECECFCECECF
        CECECFCECECFCECECFCE000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3
        D6CED3D6848684FFFBFFFFFBFF9CFFFFFFFBFF9CFFFF009A319CFFFFFFFBFF9C
        FFFFFFFBFFCECFCE000000CED3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFF
        FFFBFF9CFFFFFFFBFF9CFFFF009A319CFFFFFFFBFF9CFFFFFFFBFFCECFCE0000
        00CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FFFBFF9CFF
        FFFFFBFF9CFFFF009A31009A31FFFBFF9CFFFFFFFBFF9CFFFFCECFCE000000CE
        D3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFF9CFFFFFFFBFF9CFFFF009A31
        009A31FFFBFF9CFFFFFFFBFF9CFFFFCECFCE000000CED3D6CED3D6FFFFFFFFFF
        FFFFFFFF0000CED3D6CED3D6848684FFFBFFFFFBFF9CFFFF009A31009A31009A
        31009A31009A319CFFFFFFFBFFCECFCE000000CED3D6CED3D6FFFFFFCED3D6CE
        D3D6848684FFFBFFFFFBFF9CFFFF009A31009A31009A31009A31009A319CFFFF
        FFFBFFCECFCE000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6
        848684FFFBFF9CFFFFFFFBFF9CFFFF009A31009A31FFFBFF639A006365009CFF
        FFCECFCE000000CED3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFF9CFFFFFF
        FBFF9CFFFF009A31009A31FFFBFF639A006365009CFFFFCECFCE000000CED3D6
        CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FFFBFFFFFBFF9CFFFF
        FFFBFF9CFFFF009A319CFFFFFFFBFF636500FFFBFFCECFCE000000CED3D6CED3
        D6FFFFFFCED3D6CED3D6848684FFFBFFFFFBFF9CFFFFFFFBFF9CFFFF009A319C
        FFFFFFFBFF636500FFFBFFCECFCE000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF
        0000CED3D6CED3D6848684FFFBFF9CFFFF6365009CFFFFFFFBFF9CFFFFFFFBFF
        9CFFFF6365009CFFFFCECFCE000000CED3D6CED3D6FFFFFFCED3D6CED3D68486
        84FFFBFF9CFFFF6365009CFFFFFFFBFF9CFFFFFFFBFF9CFFFF6365009CFFFFCE
        CFCE000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FF
        FBFFFFFBFF636500FFFBFF9CFFFF009A319CFFFFFFFBFF9CFFFFFFFBFFCECFCE
        000000CED3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFFFFFBFF636500FFFB
        FF9CFFFF009A319CFFFFFFFBFF9CFFFFFFFBFFCECFCE000000CED3D6CED3D6FF
        FFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FFFBFF9CFFFF636500639A00FF
        FBFF009A31009A319CFFFFFFFBFF9CFFFFCECFCE000000CED3D6CED3D6FFFFFF
        CED3D6CED3D6848684FFFBFF9CFFFF636500639A00FFFBFF009A31009A319CFF
        FFFFFBFF9CFFFFCECFCE000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3
        D6CED3D6848684FFFBFFFFFBFF9CFFFF009A31009A31009A31009A31009A319C
        FFFFFFFBFFCECFCE000000CED3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFF
        FFFBFF9CFFFF009A31009A31009A31009A31009A319CFFFFFFFBFFCECFCE0000
        00CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FFFBFFFFFB
        FFFFFBFFFFFBFFFFFBFF009A31009A319CFFFFFFFBFFCECFCECECFCE000000CE
        D3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF
        009A31009A319CFFFFFFFBFFCECFCECECFCE000000CED3D6CED3D6FFFFFFFFFF
        FFFFFFFF0000CED3D6CED3D6848684FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF009A
        319CFFFFFFFBFF000000000000000000000000CED3D6CED3D6FFFFFFCED3D6CE
        D3D6848684FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF009A319CFFFFFFFBFF000000
        000000000000000000CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6
        848684FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF9CFFFFFFFBFF9CFFFF848684FFFF
        FF000000CED3D6CED3D6CED3D6FFFFFFCED3D6CED3D6848684FFFBFFFFFBFFFF
        FBFFFFFBFFFFFBFF9CFFFFFFFBFF9CFFFF848684FFFFFF000000CED3D6CED3D6
        CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6848684FFFBFFFFFBFFFFFBFF
        FFFBFFFFFBFFFFFBFFFFFBFFFFFBFF848684000000CED3D6CED3D6CED3D6CED3
        D6FFFFFFCED3D6CED3D6848684FFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFFFBFFFF
        FBFFFFFBFF848684000000CED3D6CED3D6CED3D6CED3D6FFFFFFFFFFFFFFFFFF
        0000CED3D6CED3D6848684848684848684848684848684848684848684848684
        848684848684CED3D6CED3D6CED3D6CED3D6CED3D6FFFFFFCED3D6CED3D68486
        84848684848684848684848684848684848684848684848684848684CED3D6CE
        D3D6CED3D6CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6
        CED3D6CED3D6CED3D6FFFFFFCED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6FF
        FFFFFFFFFFFFFFFF0000CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CE
        D3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6FFFFFF
        CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3
        D6CED3D6CED3D6CED3D6CED3D6CED3D6CED3D6FFFFFFFFFFFFFFFFFF0000}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnRefreshClick
    end
    object RadioGroup1: TRadioGroup
      Left = 463
      Top = 6
      Width = 166
      Height = 50
      Caption = 'Order By'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Desc Date'
        'Asc Date')
      TabOrder = 2
    end
    object Edit_InpatientNo: TEdit
      Left = 96
      Top = 35
      Width = 113
      Height = 21
      TabOrder = 3
      OnKeyDown = Edit_InpatientNoKeyDown
      OnKeyPress = Edit_InpatientNoKeyPress
    end
    object GroupBox2: TGroupBox
      Left = 234
      Top = 6
      Width = 223
      Height = 50
      Caption = '      Search By Date'
      TabOrder = 4
      object Label2: TLabel
        Left = 11
        Top = 25
        Width = 28
        Height = 13
        Caption = 'From'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 119
        Top = 25
        Width = 16
        Height = 13
        Caption = 'To'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DateEditXFrom: TDateEditX
        Left = 44
        Top = 21
        Width = 67
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674022C03546F700215057769
          64746802430B4461746541442E5965617203DB070C4461746541442E4D6F6E74
          6802020A4461746541442E44617902070B4461746556532E596561720313080C
          4461746556532E4D6F6E7468020A0A4461746556532E44617902180000}
      end
      object DateEditXTo: TDateEditX
        Left = 140
        Top = 21
        Width = 67
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C656674038C0003546F7002150577
          6964746802430B4461746541442E5965617203DB070C4461746541442E4D6F6E
          746802020A4461746541442E44617902070B4461746556532E59656172031308
          0C4461746556532E4D6F6E7468020A0A4461746556532E44617902180000}
      end
      object Chk_SearchByDate: TCheckBox
        Left = 10
        Top = -1
        Width = 15
        Height = 17
        TabOrder = 2
        OnClick = Chk_SearchByDateClick
      end
    end
    object DBLCB_Department: TDBLookupComboBox
      Left = 633
      Top = 32
      Width = 145
      Height = 21
      DropDownWidth = 200
      KeyField = 'DEPID'
      ListField = 'DEPNAME'
      ListSource = DSDept
      TabOrder = 5
      OnClick = DBLCB_DepartmentClick
      OnKeyDown = DBLCB_DepartmentKeyDown
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 886
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 154
      Top = 5
      Width = 70
      Height = 13
      Caption = 'Patient Name :'
    end
    object LblPatientName: TLabel
      Left = 232
      Top = 5
      Width = 57
      Height = 13
      Caption = '#######'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 584
      Top = 5
      Width = 51
      Height = 13
      Caption = 'Age/ Sex :'
    end
    object LblAgeSex: TLabel
      Left = 647
      Top = 5
      Width = 57
      Height = 13
      Caption = '#######'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 584
      Top = 29
      Width = 60
      Height = 13
      Caption = 'Contact No :'
    end
    object Label7: TLabel
      Left = 154
      Top = 29
      Width = 44
      Height = 13
      Caption = 'Address :'
    end
    object LblContact: TLabel
      Left = 647
      Top = 29
      Width = 57
      Height = 13
      Caption = '#######'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblAddress: TLabel
      Left = 233
      Top = 29
      Width = 57
      Height = 13
      Caption = '#######'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtnPrint: TBitBtn
      Left = 13
      Top = 9
      Width = 90
      Height = 30
      Hint = 'Print Report [F9]'
      Caption = ' To Excel'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        080000000000400200000000000000000000000100000000000048884100417A
        5A0022483300194131001A3829000D261E00195D170046A9650041A45C003DA2
        55003C9B540038964F0035934900328E47002D8941001E7D3E00147537000D6E
        3200468B3E005BB07100689B79004E726300446059003C5D52001A611700E9F2
        E900E2EEE200DCEADC00D8E8D800D4E5D4001A661900468E40004A815D001B68
        1C004A8D43006CB57300216E1E0051954C0072BB7B006E9B81002C7C2D00529A
        51007BBC8100F0F6F000B3DABA006496600034863800589C56007DC28B00106A
        1200298433002F8835001A6E3B00256942002F6249003B9142005CAA61005490
        6A0074A0860009640900217824008DC9930072B67700308C42002D873D003B8B
        400066B06B0056A45B0098CFA300A4C6A100F5FAF5009FD4A900194D1600A7B9
        A7001D7F28007BA58A0010561A007FBE8400A9D7B2004A7647005E885D00659A
        6D00237C2B002588300081AB910095BC94004C924600CEDBCE00338A3B00FCFD
        FC00BCE1C2005B9B5A0056855A0022832C00C5E5CB006AA57C0088AD8F008BAD
        95006A936800ABCAA8008AB59300639C6100298E320066A1670061945B0077AA
        7D003085350073AD8300CDE9D30030813200258331002A853900000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000595959595959
        5959595959595959595959595959595959595959595959595959595959595959
        595959595959595959590001010808080A0A0B0B0C0E0E0E0E0F0F1010110505
        59590001010808080A0A0B0B0C0E0E0E0E0F0F101011050559591F2020191919
        1A1A1A1B1B1B1B1C1C1D1D1D1D1D050559592220201919191A1A1A1A1B1B1B1B
        1C1C1C1D1D1D0505595925202019191919191A1A1A1B1B1B1B1C1C1D1D1D0505
        59593839392B251035353636173C3C3D3E40400F1C1D050559593839392B2510
        35353636173C3C3D3E40400F1C1D050559594139392B1B3E2626423843444423
        0B0E0E3B1C1C04045959413939462B2526264243312323290A0D0D481C1C0404
        59594D393946462B252531374E434343434F4F501B1B040459594D393946462B
        252531374E434343434F4F501B1B040459593D515146464655552C3D42434320
        3B1A1A1A1B1B030359592E14145959555E5E262623232323433B3B1A1A1B0303
        59592E5F5F5959383D3D2A2642262626235C5C571A1A030359592E5F5F59455E
        30303026623E3E262643433B1A1A020259592E5F5F59455E30303026623E3E26
        2643433B1A1A020259592E696959595959594646462B2B2B2B19191919190202
        59596A6B6B595959595959464646462B2B2B2B191919020259596A6B6B595959
        59595959464646462B2B2B191919020259596D6B6B6B6B5F5F5F141414393939
        392020202001010159596D6B6B6B6B5F5F5F1414143939393920202020010101
        59596D6A6A58584133335252526E6E6E6E6E6E6E32326F6F5959}
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitBtnPrintClick
    end
    object CB_SearchPatient: TCheckBox
      Left = 438
      Top = 5
      Width = 97
      Height = 17
      Caption = 'Search Patient'
      TabOrder = 1
      OnClick = CB_SearchPatientClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 110
    Width = 886
    Height = 556
    Align = alTop
    DataSource = DataSourceGrid
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'TestName'
        Title.Alignment = taCenter
        Title.Caption = 'Test'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -8
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Finding'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -8
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -8
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RefRange'
        Title.Alignment = taCenter
        Title.Caption = 'Range'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -8
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestDate'
        Title.Alignment = taCenter
        Title.Caption = 'Test Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -8
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TestTime'
        Title.Caption = 'Test Time'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Color = clInactiveCaption
        Expanded = False
        FieldName = 'ReportDate'
        Title.Caption = 'Report Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ReportTime'
        Title.Caption = 'Report Time'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end>
  end
  object Table_Test: TTable
    Left = 144
    Top = 192
  end
  object TableInvestigationMaster: TTable
    Left = 288
    Top = 168
  end
  object TableInvestigationDetail: TTable
    DatabaseName = 'C:\Hospital\BIN\Data\Temp'
    TableName = 'InvestigationDetailprint.db'
    Left = 360
    Top = 272
  end
  object DataSourceGrid: TDataSource
    DataSet = TableInvestigationDetail
    Left = 536
    Top = 192
  end
  object Query_Blank: TQuery
    Left = 320
    Top = 328
  end
  object Query_Test: TQuery
    Left = 456
    Top = 320
  end
  object DSDept: TDataSource
    DataSet = QueryDept
    Left = 776
    Top = 97
  end
  object Query_Patienttest: TOraQuery
    Left = 760
    Top = 328
  end
  object Query_Void: TOraQuery
    Session = DM_Hospital.DB
    Left = 584
    Top = 320
  end
  object QueryDept: TOraQuery
    Session = DM_Hospital.DB
    SQL.Strings = (
      
        'Select dept_DepId as depid,dept_DepName as depname from hs_dept_' +
        'Department where DEPT_DEPTYPE='#39'P'#39' and dept_depid<>47'
      'Order by dept_DepName')
    Left = 752
    Top = 8
  end
  object Query_Process: TOraQuery
    Session = DM_Hospital.DB
    Left = 640
    Top = 216
  end
end
