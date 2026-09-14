object Frame_TempBilling: TFrame_TempBilling
  Left = 0
  Top = 0
  Width = 603
  Height = 516
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 597
    object SpeedButton2: TSpeedButton
      Left = 195
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = 'Doctor Involved'
      ExplicitLeft = 376
      ExplicitTop = -6
    end
    object BitBtn_BringPending: TSpeedButton
      Left = 305
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = '<- Bring On Pending'
      ExplicitLeft = 376
      ExplicitTop = -6
    end
    object BitBtnPending: TSpeedButton
      Left = 415
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = 'Keep On Pending ->'
      ExplicitLeft = 409
      ExplicitTop = -8
    end
    object BB_Save: TBitBtn
      Left = 525
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Save'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000001000000010000000000000000000000000000975233
        9A55359954349652339652339652339652339652339652339652339A55359B55
        359853349451320000009451369D5534BD5A22BB5A24B75926C7B0A4C8B5ACC8
        B5ACC8B5ACC8B5ACC8B5ACC9B5ABBF6532B759269B55358040408F5030A05633
        C46127C46127C46127D3CDCBD4D4D5D4D4D5D4D4D5CB9373C7784AD3CFCDC66F
        3BC461279D56348F50308F5030A15734CB672CCB672CCB672CDED8D5DFDFE0DF
        DFE0DFDFE0D18A61CB672CDED8D5CD7541CB672C9E56348F50308F5030A15834
        D26E30D26E30D26E30EAE5E1ECECECECECECECECECDA9367D26E30EAE5E1D57D
        46D26E309E56358F50308F5030A25835D67233D67233D67233F3E7E0F7F7F7F7
        F7F7F7F7F7F2E4DBF0DCD0F7F5F5DA824AD672339E57358F50308F5030A35935
        DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB76
        36DB76369F57358F50308F5030A35935DF7A39F2ECE8FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDCBBFDF7A399F57358F50308F5030A45A36
        E4803EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DB
        D3E4803E9F58368F50308F5030A45B37E98746FCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFCFCFCFCFCFCFCFCFCE5D9D1E98746A058368F50308F5030A55C38
        EE9150F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3DED3
        CCEE9150A059378F5030945231A55D3AF49C5DE5E5E5E5E5E5E5E5E5E5E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5DAD4CFF49C5DA059378F5030945231A65F3B
        F8A668D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7
        C3F8A668A05A389955339F5535A45D3BF9AC6FD0CECDD3D3D3D3D3D3D3D3D3D3
        D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7C4F9AC6F9E58378E55390000009C5534
        9B55359B55359B55359B55359B55359B55359B55359B55359B55359B55359B55
        359B55359C553400000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BB_SaveClick
      ExplicitLeft = 519
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 603
    Height = 483
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 597
    ExplicitHeight = 477
    object SpeedButton1: TSpeedButton
      Left = 524
      Top = 86
      Width = 65
      Height = 22
      Caption = '&Add'
      OnClick = SpeedButton1Click
    end
    object Label27: TLabel
      Left = 379
      Top = 298
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object lbl_Total: TLabel
      Left = 487
      Top = 298
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label13: TLabel
      Left = 379
      Top = 317
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Discount :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_Dis: TLabel
      Left = 487
      Top = 317
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label15: TLabel
      Left = 379
      Top = 355
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sub Total :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_SubTotal: TLabel
      Left = 487
      Top = 355
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label17: TLabel
      Left = 379
      Top = 374
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Svr. Tax@5% :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_SvrTax: TLabel
      Left = 487
      Top = 374
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label1: TLabel
      Left = 199
      Top = 305
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grand Total :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_GrandTotal: TLabel
      Left = 144
      Top = 326
      Width = 229
      Height = 65
      Alignment = taCenter
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -32
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label8: TLabel
      Left = 379
      Top = 336
      Width = 108
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Discount (%):'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_Disper: TLabel
      Left = 487
      Top = 336
      Width = 102
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 6
      Top = 49
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ref. Doc.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 311
      Top = 49
      Width = 70
      Height = 13
      Caption = 'Credit Balace :'
    end
    object LabelCB: TLabel
      Left = 383
      Top = 49
      Width = 28
      Height = 13
      Caption = '00.00'
    end
    object Label11: TLabel
      Left = 463
      Top = 49
      Width = 43
      Height = 13
      Caption = 'Deposit :'
    end
    object LabelDepTotal: TLabel
      Left = 511
      Top = 49
      Width = 28
      Height = 13
      Caption = '00.00'
    end
    object Label19: TLabel
      Left = 143
      Top = 404
      Width = 72
      Height = 13
      Caption = 'Total Items :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_TotalItems: TLabel
      Left = 231
      Top = 404
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 144
      Top = 428
      Width = 42
      Height = 13
      Caption = 'Bill No. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_BillNo: TLabel
      Left = 192
      Top = 428
      Width = 126
      Height = 13
      Caption = '##############'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 574
      Top = 400
      Width = 13
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 374
      Top = 428
      Width = 52
      Height = 13
      Caption = 'Pay Type :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object CheckBox1: TCheckBox
      Left = 95
      Top = 69
      Width = 97
      Height = 17
      Caption = 'Extended Search'
      TabOrder = 3
    end
    object CheckBox3: TCheckBox
      Left = 199
      Top = 69
      Width = 129
      Height = 17
      Caption = 'Search by Local Name'
      TabOrder = 4
    end
    object Edit_TestName: TEdit
      Left = 77
      Top = 87
      Width = 266
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit_TestNameChange
      OnExit = Edit_TestNameExit
      OnKeyDown = Edit_TestNameKeyDown
    end
    object Edit_Qty: TEdit
      Left = 406
      Top = 87
      Width = 44
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 2
      OnKeyPress = Edit_QtyKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 109
      Width = 584
      Height = 183
      DataSource = DS_Tempbilling
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DocCode'
          Title.Caption = 'Doc Code'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestNameCode'
          Title.Caption = 'Test Code'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestName'
          Width = 203
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestPriceWithTax'
          Title.Caption = 'Unit Price'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalPrice'
          Title.Caption = 'Total Price'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Dis %'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Discount'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NetTotal'
          Title.Caption = 'Net Total'
          Width = 57
          Visible = True
        end>
    end
    object Edit_Doccode: TEdit
      Left = 19
      Top = 87
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit6: TEdit
      Left = 344
      Top = 87
      Width = 61
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      Enabled = False
      TabOrder = 6
    end
    object Edit7: TEdit
      Left = 451
      Top = 87
      Width = 73
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      Enabled = False
      TabOrder = 7
    end
    object DBGrid_Search: TDBGrid
      Left = -295
      Top = 298
      Width = 433
      Height = 172
      Color = 11599871
      Ctl3D = False
      DataSource = DS_Testname
      DrawingStyle = gdsGradient
      FixedColor = 11599871
      Options = [dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnKeyDown = DBGrid_SearchKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'TESTNAMECODE'
          Title.Caption = 'Test Code'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TESTNAME'
          Title.Caption = 'TestName'
          Width = 190
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALPRICE'
          Title.Caption = 'Unit Price'
          Width = 62
          Visible = True
        end>
    end
    object Le_Remarks: TLabeledEdit
      Left = 430
      Top = 453
      Width = 159
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Remarks :'
      LabelPosition = lpLeft
      TabOrder = 9
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 5
      Width = 593
      Height = 37
      TabOrder = 10
      object SP_PatientSearch: TSpeedButton
        Left = 107
        Top = 7
        Width = 27
        Height = 24
        Caption = 'GO'
      end
      object Label2: TLabel
        Left = 244
        Top = 12
        Width = 46
        Height = 13
        Caption = 'Bill Type :'
      end
      object Label9: TLabel
        Left = 402
        Top = 12
        Width = 29
        Height = 13
        Caption = 'Com.:'
      end
      object Label10: TLabel
        Left = 504
        Top = 12
        Width = 25
        Height = 13
        Caption = 'Sch.:'
      end
      object EditPsearch: TLabeledEdit
        Left = 53
        Top = 8
        Width = 54
        Height = 21
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Hos. No.:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 0
      end
      object CB_Scheme: TCheckBox
        Left = 358
        Top = 10
        Width = 42
        Height = 17
        Caption = '->F7'
        TabOrder = 1
        OnClick = CB_SchemeClick
      end
      object CB_BillType: TComboBox
        Left = 291
        Top = 9
        Width = 65
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 2
        Items.Strings = (
          'GENERAL'
          'FOREIGNER')
      end
      object DBLCB_Community: TDBLookupComboBox
        Left = 432
        Top = 8
        Width = 67
        Height = 21
        DropDownWidth = 200
        Enabled = False
        KeyField = 'Communityid'
        ListField = 'Community'
        ListSource = DS_Community
        TabOrder = 3
        OnClick = DBLCB_CommunityClick
      end
      object DBLCB_Scheme: TDBLookupComboBox
        Left = 531
        Top = 8
        Width = 58
        Height = 21
        DropDownWidth = 200
        Enabled = False
        KeyField = 'schemeid'
        ListField = 'schemename'
        ListSource = DS_Scheme
        TabOrder = 4
      end
      object LabeledEdit9: TLabeledEdit
        Left = 193
        Top = 8
        Width = 48
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Mem. No.:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 5
      end
    end
    object DBLCB_RefDocCode: TDBLookupComboBox
      Left = 62
      Top = 45
      Width = 73
      Height = 21
      DropDownWidth = 200
      KeyField = 'doccode'
      ListField = 'docname'
      ListSource = DS_RefDoc
      TabOrder = 11
    end
    object CB_DirectDiscountSet: TCheckBox
      Left = 316
      Top = 398
      Width = 55
      Height = 17
      Caption = 'Set Dis'
      TabOrder = 12
    end
    object LabeledEdit2: TLabeledEdit
      Left = 428
      Top = 396
      Width = 85
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Discount :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 13
    end
    object Edit3: TEdit
      Left = 519
      Top = 396
      Width = 51
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
    end
    object CB_Paytype: TComboBox
      Left = 432
      Top = 424
      Width = 82
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 15
      Items.Strings = (
        'CASH'
        'CREDIT')
    end
    object Edit4: TEdit
      Left = 519
      Top = 424
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 16
    end
  end
  object Query_TestName: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select * from vw_testname'
      'Where 99=99')
    Left = 384
    Top = 248
  end
  object DS_Testname: TDataSource
    DataSet = Query_TestName
    Left = 360
    Top = 248
  end
  object Table_TempBilling: TTable
    Left = 168
    Top = 232
  end
  object DS_Tempbilling: TDataSource
    DataSet = Table_TempBilling
    Left = 184
    Top = 232
  end
  object DS_Community: TDataSource
    DataSet = QueryCommunity
    Left = 440
    Top = 208
  end
  object QueryCommunity: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select * from Community'
      'order by community')
    Left = 464
    Top = 208
  end
  object DS_Scheme: TDataSource
    DataSet = QueryScheme
    Left = 376
    Top = 208
  end
  object QueryScheme: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select * from Scheme'
      'Where 99=99'
      'order by schemename')
    Left = 400
    Top = 208
  end
  object DS_RefDoc: TDataSource
    DataSet = QueryRefDoc
    Left = 288
    Top = 208
  end
  object QueryRefDoc: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'select doccode,docname from doctor'
      'order by docname')
    Left = 312
    Top = 208
  end
end
