object Frame_Billing: TFrame_Billing
  Left = 0
  Top = 0
  Width = 855
  Height = 596
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 855
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BitBtn_BringPending: TSpeedButton
      Left = 557
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = '<- Bring On Pending'
      Visible = False
      ExplicitLeft = 376
      ExplicitTop = -6
    end
    object BitBtnPending: TSpeedButton
      Left = 667
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = 'Keep On Pending ->'
      Visible = False
      ExplicitLeft = 703
      ExplicitTop = 3
      ExplicitHeight = 24
    end
    object SpeedButton2: TSpeedButton
      Left = 447
      Top = 0
      Width = 110
      Height = 33
      Align = alRight
      Caption = 'Doctor Involved'
      Visible = False
      OnClick = SpeedButton2Click
      ExplicitLeft = 320
      ExplicitTop = 5
    end
    object bb_CustomerView: TSpeedButton
      Left = 309
      Top = 0
      Width = 138
      Height = 33
      Align = alRight
      Caption = 'Customer Preview [OFF]'
      OnClick = bb_CustomerViewClick
      ExplicitLeft = 310
    end
    object Shape2: TShape
      Left = 13
      Top = 15
      Width = 12
      Height = 12
      Brush.Color = clOlive
      Pen.Style = psClear
      Visible = False
    end
    object Label16: TLabel
      Left = 26
      Top = 14
      Width = 90
      Height = 13
      Caption = '--> Refunded Test'
      Visible = False
    end
    object BB_Save: TBitBtn
      Left = 221
      Top = 0
      Width = 88
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Save [F12]'
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
      TabOrder = 1
      TabStop = False
      OnClick = BB_SaveClick
    end
    object BB_Close: TBitBtn
      Left = 777
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Close'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF6569BA717FE06B6EBEFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEFFFFFFFFFFFFB9BADD7A83E6
        6A80FF273CD9EBECF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7677
        C58788D9FFFFFFFFFFFFA0A1D34D54DE2536EB0B20D9E3E3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDCDCEE0E16C0B1B2DEFFFFFFFFFFFFE9E9F41519BF
        060EDB0412D87B7DC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2C34BA1822
        C1FFFFFFFFFFFFFFFFFFFFFFFF5A5BBA0002CF0309D8080FC1DADAECFFFFFFFF
        FFFFFFFFFFFFFFFF7A7CC50C21DF9C9DD2FFFFFFFFFFFFFFFFFFFFFFFFFDFDFE
        1E1FB00001D00106D52326B1FFFFFFFFFFFFFFFFFFA9AAD30C28E52733BEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9F41112B50000D10103CE5A5CB9FF
        FFFFB1B2D90B1FD40C26DFD2D1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2E3F21516B50000D20101C44D4EB8070EC30514E16F70BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FA2D2DB00001CC00
        00CC0103D13639B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE2E2F23236B70207CF0103D20001C97777C2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7174CA0F1ED10717E40510DE0E
        13BA0507C10608CC6162BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9BD2
        4F58D23D57F71D3CFA0D26F01921BFEBEBF6C4C4E5191BBE2325D44A4ABBF9F9
        FCFFFFFFFFFFFFFFFFFF8487D0A2ABF78D9DFF6A7FFF3A55F9313BC1EFEFF7FF
        FFFFFFFFFFFDFDFE5B5CBF4041D1494AC4A2A2D5FFFFFFFFFFFF8788CCB6BBF5
        A3ACFB6973E17678C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8E65555
        C16061CC5A5ABDADAED9DFDFEF9192D29A9DE29596D2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF77C7DC96162C58383CB}
      ParentDoubleBuffered = False
      TabOrder = 0
      Visible = False
      OnClick = BB_CloseClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 855
    Height = 563
    Align = alClient
    TabOrder = 1
    object Label4: TLabel
      Left = 7
      Top = 50
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ref. Doc :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 650
      Top = 50
      Width = 58
      Height = 13
      Caption = 'No of Print :'
    end
    object Label13: TLabel
      Left = 7
      Top = 462
      Width = 136
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tender Amt :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object lbl_TenderAmt: TLabel
      Left = 143
      Top = 462
      Width = 154
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label15: TLabel
      Left = 7
      Top = 438
      Width = 136
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Grand Total :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_TotalAmt: TLabel
      Left = 143
      Top = 438
      Width = 154
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label17: TLabel
      Left = 7
      Top = 494
      Width = 136
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Return Amt :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Lbl_ReturnAmt: TLabel
      Left = 143
      Top = 494
      Width = 154
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label7: TLabel
      Left = 833
      Top = 363
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
    object Label8: TLabel
      Left = 632
      Top = 494
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
    object Shape1: TShape
      Left = 333
      Top = 392
      Width = 145
      Height = 142
    end
    object Image_Main: TImage
      Left = 335
      Top = 394
      Width = 141
      Height = 138
      Stretch = True
    end
    object Label11: TLabel
      Left = 437
      Top = 43
      Width = 43
      Height = 13
      Caption = 'Deposit :'
    end
    object lbl_deposit: TLabel
      Left = 485
      Top = 43
      Width = 28
      Height = 13
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 410
      Top = 58
      Width = 70
      Height = 13
      Caption = 'Credit Balace :'
    end
    object lbl_balance: TLabel
      Left = 485
      Top = 58
      Width = 28
      Height = 13
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 311
      Top = 357
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
    object Lbl_TotalItems: TLabel
      Left = 399
      Top = 357
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
      Left = 312
      Top = 376
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
      Left = 360
      Top = 376
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
    object Label2: TLabel
      Left = 87
      Top = 349
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
      Left = 7
      Top = 370
      Width = 290
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
    object BB_Reprint: TSpeedButton
      Left = 767
      Top = 45
      Width = 65
      Height = 22
      Caption = '&Reprint'
      Visible = False
      OnClick = BB_ReprintClick
    end
    object SpeedButton1: TSpeedButton
      Left = 755
      Top = 95
      Width = 65
      Height = 22
      Caption = '&Add'
      OnClick = SpeedButton1Click
    end
    object lbl_BenefitPackage: TLabel
      Left = 312
      Top = 337
      Width = 36
      Height = 16
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel_Search: TPanel
      Left = 6
      Top = 69
      Width = 842
      Height = 51
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 17
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 119
      Width = 840
      Height = 212
      DataSource = DS_Tempbilling
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DepCode'
          Title.Caption = 'Dep Code'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Doccode'
          Title.Caption = 'Doc Code'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestNameCode'
          Title.Caption = 'Test Code'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestName'
          Title.Caption = 'Test Name'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestPrice'
          Title.Caption = 'Unit Price'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TotalPrice'
          Title.Caption = 'Total Price'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Disper'
          Title.Caption = 'Dis %'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Discount'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NetTotal'
          Title.Caption = 'Net Total'
          Width = 65
          Visible = True
        end>
    end
    object CB_Preview: TCheckBox
      Left = 584
      Top = 48
      Width = 65
      Height = 17
      Caption = 'Preview'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Se_NoofPrint: TSpinEdit
      Left = 713
      Top = 45
      Width = 52
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 0
    end
    object Le_Total: TLabeledEdit
      Left = 687
      Top = 424
      Width = 159
      Height = 21
      EditLabel.Width = 31
      EditLabel.Height = 13
      EditLabel.Caption = 'Total :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 3
    end
    object Le_Discount: TLabeledEdit
      Left = 687
      Top = 357
      Width = 96
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Discount :'
      LabelPosition = lpLeft
      TabOrder = 4
      OnExit = Le_DiscountExit
      OnKeyPress = Le_DiscountKeyPress
    end
    object Le_Disper: TEdit
      Left = 786
      Top = 357
      Width = 45
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnExit = Le_DisperExit
      OnKeyPress = Le_DisperKeyPress
    end
    object Le_SubTotal: TLabeledEdit
      Left = 687
      Top = 335
      Width = 159
      Height = 21
      EditLabel.Width = 52
      EditLabel.Height = 13
      EditLabel.Caption = 'Sub Total :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 6
    end
    object Le_SvrTax: TLabeledEdit
      Left = 687
      Top = 401
      Width = 159
      Height = 21
      EditLabel.Width = 114
      EditLabel.Height = 13
      EditLabel.Caption = 'Health service tax 5% :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 7
    end
    object Le_GrandTotal: TLabeledEdit
      Left = 687
      Top = 468
      Width = 159
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'Grand Total :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 8
    end
    object CB_PayType: TComboBox
      Left = 687
      Top = 490
      Width = 159
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 9
      OnChange = CB_PayTypeChange
      OnKeyPress = CB_PayTypeKeyPress
      Items.Strings = (
        'CASH'
        'CARD'
        'CREDIT')
    end
    object Le_Payment: TLabeledEdit
      Left = 687
      Top = 513
      Width = 159
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Payment :'
      LabelPosition = lpLeft
      TabOrder = 10
      OnChange = Le_PaymentChange
      OnExit = Le_PaymentExit
      OnKeyDown = Le_PaymentKeyDown
      OnKeyPress = Le_PaymentKeyPress
    end
    object Le_Remarks: TLabeledEdit
      Left = 552
      Top = 536
      Width = 294
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Remarks :'
      LabelPosition = lpLeft
      TabOrder = 11
    end
    object CB_DirectDiscountSet: TCheckBox
      Left = 524
      Top = 340
      Width = 55
      Height = 17
      Caption = 'Set Dis'
      TabOrder = 12
      Visible = False
    end
    object CheckBox9: TCheckBox
      Left = 596
      Top = 68
      Width = 88
      Height = 17
      Caption = 'Use Old Rate'
      TabOrder = 13
      Visible = False
    end
    object GroupBox4: TGroupBox
      Left = 4
      Top = 4
      Width = 843
      Height = 37
      TabOrder = 14
      object SP_PatientSearch: TSpeedButton
        Left = 198
        Top = 6
        Width = 27
        Height = 24
        Caption = 'GO'
      end
      object Label1: TLabel
        Left = 383
        Top = 12
        Width = 46
        Height = 13
        Caption = 'Bill Type :'
      end
      object Label9: TLabel
        Left = 568
        Top = 12
        Width = 60
        Height = 13
        Caption = 'Community :'
      end
      object Label10: TLabel
        Left = 716
        Top = 12
        Width = 44
        Height = 13
        Caption = 'Scheme :'
      end
      object Le_HosNo: TLabeledEdit
        Left = 85
        Top = 8
        Width = 107
        Height = 21
        EditLabel.Width = 72
        EditLabel.Height = 13
        EditLabel.Caption = 'Hospital No. :'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 0
        OnExit = Le_HosNoExit
        OnKeyPress = Le_HosNoKeyPress
      end
      object CB_Scheme: TCheckBox
        Left = 517
        Top = 10
        Width = 48
        Height = 17
        Caption = '->F7'
        TabOrder = 1
        OnClick = CB_SchemeClick
      end
      object Le_MemberNo: TLabeledEdit
        Left = 306
        Top = 8
        Width = 69
        Height = 21
        EditLabel.Width = 73
        EditLabel.Height = 13
        EditLabel.Caption = 'Member No. :'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object DBLCB_Community: TDBLookupComboBox
        Left = 632
        Top = 8
        Width = 79
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
        Left = 763
        Top = 8
        Width = 75
        Height = 21
        DropDownWidth = 200
        Enabled = False
        KeyField = 'schemeid'
        ListField = 'schemename'
        ListSource = DS_Scheme
        TabOrder = 4
      end
      object CB_BillType: TComboBox
        Left = 431
        Top = 7
        Width = 79
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 5
        Items.Strings = (
          'GENERAL'
          'FOREIGNER')
      end
    end
    object DBLCB_RefDocCode: TDBLookupComboBox
      Left = 64
      Top = 46
      Width = 94
      Height = 21
      DropDownWidth = 300
      KeyField = 'doccode'
      ListField = 'docname'
      ListSource = DS_RefDoc
      TabOrder = 15
    end
    object DBGrid_Search: TDBGrid
      Left = 23
      Top = 206
      Width = 89
      Height = 67
      Color = 11599871
      Ctl3D = False
      DataSource = DS_Testname
      DrawingStyle = gdsGradient
      FixedColor = 11599871
      Options = [dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentCtl3D = False
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGrid_SearchDblClick
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
    object cb_extended: TCheckBox
      Left = 61
      Top = 72
      Width = 97
      Height = 17
      Caption = 'Extended Search'
      TabOrder = 18
      OnClick = cb_extendedClick
    end
    object CheckBox3: TCheckBox
      Left = 690
      Top = 69
      Width = 129
      Height = 17
      Caption = 'Search by Local Name'
      TabOrder = 19
      Visible = False
    end
    object CB_DepCode: TComboBox
      Left = 7
      Top = 95
      Width = 79
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 20
      Items.Strings = (
        'GENERAL'
        'FOREIGNER')
    end
    object Edit_Doccode: TEdit
      Left = 88
      Top = 96
      Width = 62
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 21
    end
    object Edit_TestName: TEdit
      Left = 152
      Top = 96
      Width = 272
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 22
      OnChange = Edit_TestNameChange
      OnExit = Edit_TestNameExit
      OnKeyDown = Edit_TestNameKeyDown
      OnKeyPress = Edit_TestNameKeyPress
    end
    object Edit6: TEdit
      Left = 426
      Top = 96
      Width = 63
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      Enabled = False
      TabOrder = 23
    end
    object Edit_Qty: TEdit
      Left = 492
      Top = 96
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 24
      OnEnter = Edit_QtyEnter
      OnKeyPress = Edit_QtyKeyPress
    end
    object Edit7: TEdit
      Left = 558
      Top = 96
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      Color = clSilver
      Enabled = False
      TabOrder = 25
    end
    object Edit_Disper: TEdit
      Left = 623
      Top = 96
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 26
    end
    object Edit2: TEdit
      Left = 690
      Top = 96
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 27
    end
    object le_TotalDeposit: TLabeledEdit
      Left = 687
      Top = 446
      Width = 159
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'Total Deposit :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 28
    end
    object BB_TestSelection: TBitBtn
      Left = 164
      Top = 47
      Width = 98
      Height = 35
      Caption = 'Test Selection'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 29
      OnClick = BB_TestSelectionClick
    end
    object CB_Send2Web: TCheckBox
      Left = 268
      Top = 42
      Width = 79
      Height = 17
      Caption = 'Send 2 Web'
      TabOrder = 30
    end
    object CB_Send2Sms: TCheckBox
      Left = 268
      Top = 59
      Width = 79
      Height = 17
      Caption = 'Send 2 SMS'
      TabOrder = 31
    end
    object CB_Send2Email: TCheckBox
      Left = 268
      Top = 77
      Width = 79
      Height = 17
      Caption = 'Send 2 Email'
      TabOrder = 32
    end
    object Cb_Qty: TCheckBox
      Left = 493
      Top = 77
      Width = 63
      Height = 17
      Caption = 'Qty'
      TabOrder = 33
      OnClick = cb_extendedClick
    end
    object Cb_DeductFromDeposit: TCheckBox
      Left = 501
      Top = 483
      Width = 101
      Height = 27
      Caption = 'Deduct from Member Deposit'
      TabOrder = 34
      WordWrap = True
      OnClick = Cb_DeductFromDepositClick
    end
    object Edit_MemberDeposit: TEdit
      Left = 501
      Top = 513
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 35
    end
    object Le_NetTotal: TLabeledEdit
      Left = 687
      Top = 379
      Width = 159
      Height = 21
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Net Total :'
      LabelPosition = lpLeft
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 36
    end
  end
  object DS_FinalBill: TDataSource
    Left = 424
    Top = 208
  end
  object DS_RefDoc: TDataSource
    DataSet = QueryRefDoc
    Left = 504
    Top = 224
  end
  object QueryRefDoc: TOraQuery
    SQL.Strings = (
      
        'select doccode,TRIM(REPLACE(REPLACE(REPLACE(replace(docname,'#39'DR'#39 +
        '),'#39'PROF'#39'),'#39'.'#39'),'#39'(MRS)'#39'))||'#39' - '#39'||Nvl(referralcount,0)DOCNAME fro' +
        'm doctor'
      'order by Nvl(referralcount,0) desc')
    Left = 528
    Top = 224
  end
  object DS_Scheme: TDataSource
    DataSet = QueryScheme
    Left = 592
    Top = 224
  end
  object QueryScheme: TOraQuery
    SQL.Strings = (
      'select * from Scheme'
      'Where 99=99'
      'order by schemename')
    Left = 624
    Top = 200
  end
  object DS_Community: TDataSource
    DataSet = QueryCommunity
    Left = 672
    Top = 208
  end
  object QueryCommunity: TOraQuery
    SQL.Strings = (
      'select * from Community'
      'order by community')
    Left = 712
    Top = 224
  end
  object DS_Tempbilling: TDataSource
    Left = 208
    Top = 232
  end
  object DS_Testname: TDataSource
    DataSet = Query_TestName
    Left = 360
    Top = 272
  end
  object Query_TestName: TOraQuery
    SQL.Strings = (
      'select * from vw_testname'
      'Where 99=99'
      'And 99=99'
      'order by deporder,displayorder')
    Left = 384
    Top = 224
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 464
    Top = 280
  end
  object Table_TempBilling: TTable
    Left = 272
    Top = 280
  end
  object Table_FinalBill: TTable
    Left = 304
    Top = 232
  end
  object Query_TempBilling: TQuery
    Left = 608
    Top = 288
  end
  object Query_FinalBill: TQuery
    Left = 680
    Top = 288
  end
end
