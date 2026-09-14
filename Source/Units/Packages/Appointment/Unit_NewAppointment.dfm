object Form_NewAppointment: TForm_NewAppointment
  Left = 0
  Top = 0
  Caption = 'New Appointment'
  ClientHeight = 479
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BB_Close: TBitBtn
      AlignWithMargins = True
      Left = 709
      Top = 6
      Width = 78
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Close'
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
      OnClick = BB_CloseClick
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 628
      Top = 6
      Width = 81
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Save'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 512
      Top = 6
      Width = 116
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Cancel Appointment'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 787
    Height = 433
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 394
    object Label2: TLabel
      Left = 13
      Top = 14
      Width = 115
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hospital No.'
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
    object Label8: TLabel
      Left = 256
      Top = 17
      Width = 39
      Height = 13
      Caption = 'Doctor :'
    end
    object Label1: TLabel
      Left = 452
      Top = 17
      Width = 30
      Height = 13
      Caption = 'Date :'
    end
    object SpeedButton3: TSpeedButton
      Left = 553
      Top = 13
      Width = 22
      Height = 22
      Caption = 'AD'
    end
    object Label3: TLabel
      Left = 588
      Top = 17
      Width = 29
      Height = 13
      Caption = 'Time :'
    end
    object Label4: TLabel
      Left = 671
      Top = 18
      Width = 74
      Height = 13
      Caption = '[24 Hrs format]'
    end
    object Bevel1: TBevel
      Left = 16
      Top = 48
      Width = 761
      Height = 6
    end
    object Edit1: TEdit
      Left = 131
      Top = 14
      Width = 118
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 297
      Top = 14
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object Dex_Today: TDateEditX
      Left = 488
      Top = 14
      Width = 65
      Height = 21
      TabOrder = 2
      ControlData = {
        545046300A5444617465456469745200044C65667403E80103546F70020E0B44
        61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
        6541442E44617902160B4461746556532E596561720314080C4461746556532E
        4D6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
    end
    object MaskEdit1: TMaskEdit
      Left = 623
      Top = 14
      Width = 42
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 3
      Text = '  :  '
    end
    object GB_BasicInformation: TGroupBox
      Left = 13
      Top = 76
      Width = 348
      Height = 184
      Color = clBtnFace
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      object Label5: TLabel
        Left = 210
        Top = 102
        Width = 28
        Height = 13
        Caption = 'DOB :'
      end
      object Label6: TLabel
        Left = 194
        Top = 127
        Width = 44
        Height = 13
        Caption = 'Religion :'
      end
      object Label9: TLabel
        Left = 57
        Top = 29
        Width = 27
        Height = 13
        Caption = 'Title :'
      end
      object Label7: TLabel
        Left = 184
        Top = 29
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Gender :'
      end
      object Label10: TLabel
        Left = 11
        Top = 127
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marital Status :'
      end
      object Image2: TImage
        Left = 313
        Top = 100
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          07544269746D617032050000424D320500000000000032040000280000001000
          0000100000000100080000000000000100007603000076030000FF000000FF00
          000055555500555555005151510050505000404040003F3F3F00404040004141
          41003D3D3D003C3C3C003D3D3D0083838300838383000A930D001196140020B1
          3D0026B3420055555500565656005757570058585800595959005A5A5A003DD1
          72007579750042D27600777777007B7B7B007E7E7E0082828200B6B6B600CBCB
          CB00D0D0D000D4D4D400D6D6D600E0E0E000E3E3E300EAEAEA00EAEDEA00ECEC
          EC00EDEDED00F0F0F000F4F4F400F6F6F600F7F7F700F8F8F800F9F9F900FAFA
          FA00FBFBFB00FCFCFC00FDFDFD00FEFEFE00FFFFFF0035353500363636003737
          370038383800393939003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F
          3F00404040004141410042424200434343004444440045454500464646004747
          470048484800494949004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F
          4F00505050005151510052525200535353005454540055555500565656005757
          570058585800595959005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F
          5F00606060006161610062626200636363006464640065656500666666006767
          670068686800696969006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F
          6F00707070007171710072727200737373007474740075757500767676007777
          770078787800797979007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F
          7F00808080008181810082828200838383008484840085858500868686008787
          870088888800898989008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F
          8F00909090009191910092929200939393009494940095959500969696009797
          970098989800999999009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F
          9F00A0A0A000A1A1A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7
          A700A8A8A800A9A9A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAF
          AF00B0B0B000B1B1B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7
          B700B8B8B800B9B9B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBF
          BF00C0C0C000C1C1C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7
          C700C8C8C800C9C9C900CACACA00CBCBCB00CCCCCC00CDCDCD00CECECE00CFCF
          CF00D0D0D000D1D1D100D2D2D200D3D3D300D4D4D400D5D5D500D6D6D600D7D7
          D700D8D8D800D9D9D900DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DFDF
          DF00E0E0E000E1E1E100E2E2E200E3E3E300E4E4E400E5E5E500E6E6E600E7E7
          E700E8E8E800E9E9E900EAEAEA00EBEBEB00ECECEC00EDEDED00EEEEEE00EFEF
          EF00F0F0F000F1F1F100F2F2F200F3F3F300F4F4F400F5F5F500F6F6F600F7F7
          F700F8F8F800F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FEFEFE000208
          09090A0A0A0A0A0A0A0A0A090802042D3434343434343434342F28211E04052D
          34343327343434332A322E251F05062D34342F1130342A231125332D2406072D
          34342D11322F111311112F322907072D34342C1133341B23162D34342B07072D
          34342B123434201D162F34342D07072D343429143434341C112F34342D07072D
          3431141534343422142F34342D07072D3434343434343434343434342D07072D
          3434343434343434343434342D07061917171717171717171717171719060619
          171717171717171717171717190605100F1A1A1A0F0F0F0F181A1A0F1005030E
          0D2929290D0D0D0D2629290D0E030001010C0C0C010101010B0C0C010100}
      end
      object Label11: TLabel
        Left = 1
        Top = 1
        Width = 179
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Basic Information'
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
      object Label12: TLabel
        Left = 34
        Top = 151
        Width = 48
        Height = 13
        Caption = 'Ethnicity :'
      end
      object Le_FName: TLabeledEdit
        Left = 88
        Top = 51
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        Ctl3D = True
        EditLabel.Width = 58
        EditLabel.Height = 13
        EditLabel.Caption = 'First Name :'
        LabelPosition = lpLeft
        ParentCtl3D = False
        TabOrder = 2
      end
      object Le_LName: TLabeledEdit
        Left = 88
        Top = 74
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'Last Name :'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object Dex_Dob: TDateEditX
        Left = 245
        Top = 98
        Width = 65
        Height = 21
        TabOrder = 8
        ControlData = {
          545046300A5444617465456469745200044C65667403F50003546F7002620B44
          61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
          6541442E44617902160B4461746556532E596561720314080C4461746556532E
          4D6F6E746802060A4461746556532E44617902050000}
      end
      object le_Age: TLabeledEdit
        Left = 88
        Top = 98
        Width = 41
        Height = 21
        EditLabel.Width = 26
        EditLabel.Height = 13
        EditLabel.Caption = 'Age :'
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object DBLCB_Religion: TDBLookupComboBox
        Left = 245
        Top = 124
        Width = 84
        Height = 21
        KeyField = 'RELIGIONID'
        ListField = 'RELIGION'
        TabOrder = 7
      end
      object DBLCB_title: TDBLookupComboBox
        Left = 88
        Top = 27
        Width = 79
        Height = 21
        KeyField = 'TITLEID'
        ListField = 'TITLE'
        TabOrder = 0
      end
      object CB_Gender: TComboBox
        Left = 230
        Top = 26
        Width = 99
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 1
        Items.Strings = (
          'MALE'
          'FEMALE')
      end
      object CB_AgeType: TComboBox
        Left = 135
        Top = 98
        Width = 54
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 5
        Items.Strings = (
          'YEAR'
          'MONTH'
          'DAYS')
      end
      object CB_MaritalStatus: TComboBox
        Left = 88
        Top = 124
        Width = 101
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 6
        Items.Strings = (
          'MARRIED'
          'UNMARRIED')
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 88
        Top = 149
        Width = 241
        Height = 21
        KeyField = 'TITLEID'
        ListField = 'TITLE'
        TabOrder = 9
      end
    end
    object GB_Address: TGroupBox
      Left = 429
      Top = 77
      Width = 348
      Height = 184
      Color = clBtnFace
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 5
      object Label13: TLabel
        Left = 38
        Top = 32
        Width = 46
        Height = 13
        Caption = 'Country :'
      end
      object Label14: TLabel
        Left = 44
        Top = 56
        Width = 40
        Height = 13
        Caption = 'District :'
      end
      object Label15: TLabel
        Left = 1
        Top = 1
        Width = 179
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Contact Address'
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
      object Label16: TLabel
        Left = 32
        Top = 80
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'VDC/MPC :'
      end
      object Le_Address: TLabeledEdit
        Left = 88
        Top = 99
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Address :'
        LabelPosition = lpLeft
        TabOrder = 3
      end
      object Le_WardNo: TLabeledEdit
        Left = 88
        Top = 124
        Width = 41
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'Ward No.:'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 4
      end
      object DBLCB_Country: TDBLookupComboBox
        Left = 88
        Top = 27
        Width = 241
        Height = 21
        KeyField = 'COUNTRYID'
        ListField = 'UPPER(COUNTRYNAME)'
        TabOrder = 0
      end
      object DBLCB_District: TDBLookupComboBox
        Left = 88
        Top = 51
        Width = 241
        Height = 21
        KeyField = 'DISTRICTID'
        ListField = 'DISTRICTNAME'
        TabOrder = 1
      end
      object DBLCB_VDC: TDBLookupComboBox
        Left = 88
        Top = 75
        Width = 241
        Height = 21
        KeyField = 'VDCID'
        ListField = 'VDCNAME'
        TabOrder = 2
      end
      object Le_PhoneNo: TLabeledEdit
        Left = 192
        Top = 124
        Width = 137
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Phone No.:'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 5
      end
      object Le_MobileNo: TLabeledEdit
        Left = 88
        Top = 148
        Width = 241
        Height = 21
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'Mobile No. :'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 6
      end
    end
    object GB_Others: TGroupBox
      Left = 13
      Top = 266
      Width = 348
      Height = 155
      Color = clBtnFace
      Ctl3D = True
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 6
      object Label18: TLabel
        Left = 23
        Top = 31
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Occupation :'
      end
      object Label23: TLabel
        Left = 30
        Top = 55
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Education :'
      end
      object Label26: TLabel
        Left = 1
        Top = 1
        Width = 179
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Others'
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
      object Label17: TLabel
        Left = 38
        Top = 104
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Relation :'
      end
      object Le_Relative: TLabeledEdit
        Left = 88
        Top = 76
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 46
        EditLabel.Height = 13
        EditLabel.Caption = 'Relative :'
        LabelPosition = lpLeft
        TabOrder = 2
      end
      object DBLCB_Occupation: TDBLookupComboBox
        Left = 88
        Top = 27
        Width = 241
        Height = 21
        KeyField = 'OCCUPATIONID'
        ListField = 'OCCUPATIONNAME'
        TabOrder = 0
      end
      object DBLCB_Education: TDBLookupComboBox
        Left = 88
        Top = 52
        Width = 241
        Height = 21
        KeyField = 'EDUCATIONID'
        ListField = 'EDUCATION'
        TabOrder = 1
      end
      object Le_Company: TLabeledEdit
        Left = 88
        Top = 126
        Width = 241
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 52
        EditLabel.Height = 13
        EditLabel.Caption = 'Company :'
        LabelPosition = lpLeft
        TabOrder = 4
      end
      object DBLCB_Relation: TDBLookupComboBox
        Left = 88
        Top = 101
        Width = 241
        Height = 21
        KeyField = 'RELATIONID'
        ListField = 'RELATION'
        TabOrder = 3
      end
    end
  end
end
