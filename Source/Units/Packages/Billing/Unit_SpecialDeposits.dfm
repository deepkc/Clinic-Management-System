object Form_SpecialDeposits: TForm_SpecialDeposits
  Left = 0
  Top = 0
  Caption = 'Special Deposits'
  ClientHeight = 576
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 900
    Height = 237
    Align = alTop
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      896
      233)
    object Label1: TLabel
      Left = 37
      Top = 91
      Width = 80
      Height = 13
      Caption = 'Deposit Type :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 166
      Width = 112
      Height = 16
      Caption = 'Deposit Balance :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_DepositBalance: TLabel
      Left = 123
      Top = 166
      Width = 72
      Height = 16
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 34
      Top = 117
      Width = 83
      Height = 13
      Caption = 'Deposit Mode :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 62
      Top = 214
      Width = 57
      Height = 13
      Caption = 'Remarks :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_PatientName: TLabel
      Left = 371
      Top = 4
      Width = 32
      Height = 16
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 321
      Top = 3
      Width = 44
      Height = 16
      Caption = 'Name :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 285
      Top = 28
      Width = 82
      Height = 14
      Alignment = taRightJustify
      Caption = 'Age/Gender :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_CurrentAgeGender: TLabel
      Left = 371
      Top = 28
      Width = 31
      Height = 14
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_MemberNoCap: TLabel
      Left = 288
      Top = 51
      Width = 77
      Height = 14
      Alignment = taRightJustify
      Caption = 'Member No.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_InpatientNo: TLabel
      Left = 371
      Top = 51
      Width = 67
      Height = 14
      AutoSize = False
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 685
      Top = 28
      Width = 71
      Height = 14
      Caption = 'Phone No. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_Phoneno: TLabel
      Left = 763
      Top = 28
      Width = 31
      Height = 14
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 460
      Top = 28
      Width = 57
      Height = 14
      Caption = 'Address :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_address: TLabel
      Left = 523
      Top = 28
      Width = 31
      Height = 14
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lbl_Bg: TLabel
      Left = 763
      Top = 51
      Width = 31
      Height = 14
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 732
      Top = 51
      Width = 24
      Height = 14
      Caption = 'B.G:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 462
      Top = 51
      Width = 55
      Height = 14
      Alignment = taRightJustify
      Caption = 'Scheme :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Scheme: TLabel
      Left = 523
      Top = 51
      Width = 31
      Height = 14
      Caption = 'None'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 36
      Top = 36
      Width = 81
      Height = 16
      Alignment = taRightJustify
      Caption = 'Hospital No :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_HospitalNo: TLabel
      Left = 125
      Top = 37
      Width = 18
      Height = 16
      Caption = 'NA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 19
      Top = 144
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prev. Deposit No :'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 444
      Top = 189
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Deposit Date :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SPB_TodayDate: TSpeedButton
      Left = 591
      Top = 185
      Width = 26
      Height = 22
      Caption = 'AD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SPB_TodayDateClick
    end
    object SPB_SetDiscount: TSpeedButton
      Left = 620
      Top = 184
      Width = 144
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Change Deposit Date'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F8F8EAEAEACFD1D0B7BEBAB6BDB9CDCFCEE9E9E9F7F7F7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEAD1D1D1BDBDBDBCBCBCCFCFCFE9E9E9F7
        F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BBC1BE5B93731F9A570CAB560DAF5B0DB0
        5D0CAD5A1D9E5A549370B2BBB6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6C0C0C08C8C8C8B8B8B
        9898989C9C9C9C9C9C9A9A9A8E8E8E8B8B8BBABABAF4F4F4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDDDEDE5593700E
        A95410B46011BA6712BE6D14C17015C27314C17215BF7012BB6A10B2614C956D
        D5D7D6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEDEDEDE8C8C8C959595A0A0A0A7A7A7ABABABADADADAFAFAFAEAEAEACACACA8
        A8A89F9F9F8C8C8CD7D7D7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBCFCD29995A10B25B14BC6819C2731BC77A1ECB8020CD8422CE
        8621CE8621CC831EC97E1BC57718BE6F25A463BEC5C1FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8B8B8B9E9E9EA8A8A8ADADADB4B4B4
        B8B8B8B9B9B9BBBBBBBBBBBBBABABAB6B6B6B1B1B1ABABAB959595C4C4C4FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DCDA279C5A14B66019C16E20
        C87B24CE8429D28D2DD5932FD79730D89830D7982FD6952DD39129D08A23CB81
        1EC47724AA67CDD2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB8D8D
        8DA2A2A2ADADADB3B3B3BBBBBBBEBEBEC2C2C2C6C6C6C5C5C5C5C5C5C4C4C4C0
        C0C0BDBDBDB7B7B7B0B0B09A9A9AD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7F7F747986B15B75F1DC37023CC7E2AD28B31D79637D99E3BDCA43DDFA840DF
        A93FDFA93EDEA63ADCA136D99B31D4932ACF8821C87B3CA16EF3F4F3FFFFFFFF
        FFFFFFFFFFFFFFFFF7F7F78D8D8DA3A3A3B0B0B0B8B8B8BEBEBEC6C6C6C7C7C7
        CCCCCCCECECECECECECFCFCFCCCCCCCBCBCBC7C7C7C2C2C2BCBCBCB4B4B49595
        95F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFA5B7AE15B45C1DC36D26CD7F2ED48E36
        DA9B3DC594102E24225A484CE1B54DE5B94CE5B84CE4B549E2B044DFA93FDBA1
        36D7972ED18B24C77B93AEA0FFFFFFFFFFFFFFFFFFFFFFFFB5B5B59F9F9FAFAF
        AFB9B9B9C1C1C1C8C8C8B7B7B72B2B2B555555D3D3D3D6D6D6D6D6D6D4D4D4D2
        D2D2CFCFCFCACACAC5C5C5BEBEBEB3B3B3ABABABFFFFFFFFFFFFFFFFFFFBFBFB
        439D6C1DC06926CC7C30D48D39DB9C40C6970E231C010101010101285A4C5BE7
        C45AEAC559E9C256E7BD52E5B64BE1AE44DDA43BD89931D28B3AAA73F8F8F8FF
        FFFFFFFFFFFBFBFB919191ACACACB8B8B8C0C0C0C9C9C9B7B7B7212121010101
        010101555555DADADADCDCDCDCDCDCD9D9D9D6D6D6D1D1D1CDCDCDC6C6C6BFBF
        BF9C9C9CF8F8F8FFFFFFFFFFFFDEE2E01BB86123C9742ED28839DA9B40C5960D
        221B01010127695814352D0000002C5D5066EACD65ECCC61EBC75CE9C157E6B9
        4EE2B045DEA43BD8982BCB80CDD6D1FFFFFFFFFFFFE1E1E1A4A4A4B5B5B5BEBE
        BEC7C7C7B7B7B7202020010101626262323232000000585858DFDFDFE0E0E0DE
        DEDEDBDBDBD7D7D7D2D2D2CCCCCCC6C6C6B9B9B9D5D5D5FFFFFFFFFFFFACC2B7
        1FC26929D08035D8953FD69F0D231C0000002C705F62ECCE61E0C71738310101
        012F5D526FECD16AEECF66ECCA61E9C257E6B94EE2AF44DDA236D6929ABBABFF
        FFFFFFFFFFBFBFBFACACACBCBCBCC6C6C6C6C6C6202020000000696969E0E0E0
        D6D6D6353535010101595959E1E1E1E2E2E2DFDFDFDCDCDCD7D7D7D2D2D2CDCD
        CDC3C3C3B7B7B7FFFFFFFFFFFF90B9A423CB752FD58C3BDC9E46DDAA1B4D3E2D
        746264EBCD6BF0D671F2DB6EE5D11B3934000000325F5474EDD36EEED069ECC9
        60E9C056E5B74CE1AC3DDC9E80B69CFFFFFFFFFFFFB4B4B4B5B5B5C2C2C2CACA
        CACDCDCD4848486D6D6DDFDFDFE4E4E4E8E8E8DCDCDC3737370000005B5B5BE3
        E3E3E3E3E3DFDFDFDBDBDBD6D6D6D0D0D0CACACAB0B0B0FFFFFFFFFFFF8DBDA5
        28D18035D99541DFA64EE5B459E9BF63ECCA6CEFD274F1D97BF4DE80F5E279E7
        D61D3A35010101335E5477ECD171EECE68EBC65EE8BD53E4B345E0A77EB99EFF
        FFFFFFFFFFB7B7B7BCBCBCC6C6C6CDCDCDD5D5D5DADADADFDFDFE4E4E4E7E7E7
        EAEAEAEDEDEDDDDDDD3737370101015A5A5AE1E1E1E2E2E2DEDEDEDADADAD4D4
        D4CECECEB2B2B2FFFFFFFFFFFF9EC5B22DD28639DB9A46E1AA54E6B860EBC36B
        EDCD75EFD47CF2DA83F4DF88F5E28BF5E380E5D31E3A34000000335C5279EBCD
        6FECC965E9C05AE6B74BE1AC8FC3ACFFFFFFFFFFFFC0C0C0BEBEBECACACAD1D1
        D1D7D7D7DDDDDDE1E1E1E3E3E3E8E8E8EBEBEBEDEDEDEBEBEBDCDCDC38383800
        0000595959DFDFDFDFDFDFDBDBDBD7D7D7D1D1D1BCBCBCFFFFFFFFFFFFC6DBD1
        2FD0873EDC9D4CE2AC5AE6B967EBC472EECE7CF0D484F2DA8BF3DE8FF4E092F4
        E192F4E085E4D01F3832010101335B5176E8C86BEAC35FE7BA4FE0ADB5D6C7FF
        FFFFFFFFFFD8D8D8BCBCBCCBCBCBD1D1D1D8D8D8DEDEDEE2E2E2E5E5E5E8E8E8
        E9E9E9EBEBEBEBEBEBEBEBEBDBDBDB363636010101585858DDDDDDDCDCDCD8D8
        D8D0D0D0D2D2D2FFFFFFFFFFFFF7F9F83BC78A40DD9F4DE3AE5DE7BA69EBC575
        EECD80F0D488F2D990F3DC94F4DE96F4DF97F4DF95F3DD86E2CC1E3630010101
        3564576DEAC363E8BC4CD6A3ECF3F0FFFFFFFFFFFFF9F9F9B7B7B7CBCBCBD2D2
        D2D9D9D9DEDEDEE1E1E1E4E4E4E8E8E8EAEAEAEBEBEBEBEBEBEBEBEBE9E9E9DA
        DADA3434340101015E5E5EDDDDDDD9D9D9C6C6C6F2F2F2FFFFFFFFFFFFFFFFFF
        82C9AB40DDA04EE2AE5EE7BA6AEBC477EDCC82EFD28BF1D791F2DA96F3DC99F3
        DD99F3DD97F3DB93F2D982E0C72441393972616FEAC463E8BD7BCDADFFFFFFFF
        FFFFFFFFFFFFFFFFC1C1C1CBCBCBD2D2D2D8D8D8DDDDDDE1E1E1E3E3E3E7E7E7
        E8E8E8E9E9E9EAEAEAEAEAEAEAEAEAE9E9E9D7D7D73E3E3E6C6C6CDDDDDDDADA
        DAC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFE5F0EC46D29B4EE2AD5CE6B869EAC276
        EDCA80EFD089F0D490F1D895F2DA98F3DB98F2DA96F2D992F1D78BF0D482EDCF
        79ECCA6FEBC45CDFB3DBEEE6FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFC3C3C3D1D1
        D1D7D7D7DCDCDCE0E0E0E3E3E3E5E5E5E7E7E7E9E9E9EAEAEAE9E9E9E8E8E8E7
        E7E7E5E5E5E2E2E2E0E0E0DEDEDED1D1D1EBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB1E1CE49DEA858E6B664E9BF70ECC77CEECD84F0D28BF1D590F1D793F2
        D893F2D791F1D78DF1D586F0D280EECE74EDC967E8C0A7DFCAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDBDBDBCFCFCFD7D7D7DADADADFDFDFE2E2E2E5E5E5
        E7E7E7E6E6E6E9E9E9E8E8E8E7E7E7E7E7E7E5E5E5E2E2E2E1E1E1DADADAD9D9
        D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE99DFC551E2B05EE8BC69
        EAC375EDCA7DEECE84EFD288F0D48BF0D48BF0D589F0D485EFD280EECF78EDCC
        6DEAC593E1C6FCFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D7
        D7D3D3D3D9D9D9DDDDDDE1E1E1E3E3E3E5E5E5E4E4E4E6E6E6E6E6E6E5E5E5E4
        E4E4E3E3E3E1E1E1DDDDDDD8D8D8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFEFEADE6D255E0B262E9BF6CEBC574EDCA7BEECD7FEECF81EF
        D081EFD180EFD07DEECE78EDCC6BE7C2A8E6D1FBFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE0E0E0D1D1D1DBDBDBDEDEDEE1E1E1
        E1E1E1E2E2E2E3E3E3E3E3E3E4E4E4E2E2E2E2E2E2DADADADFDFDFFDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF4EC83
        E3C35DE4BA69EBC56FECC973EDCB77EDCC76EECD76EDCC6BE8C486E4C6D7F3E9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF2F2F2D8D8D8D6D6D6DEDEDEE0E0E0E0E0E0E1E1E1E2E2E2E1E1E1DB
        DBDBD9D9D9F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEE5F7F1B5ECDA98E8CF84E5C885E5
        C799E8D0B4ECDAE1F6EFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E5E5E5
        DFDFDFDADADADADADAE0E0E0E6E6E6F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SPB_SetDiscountClick
    end
    object SPB_Delete: TSpeedButton
      Left = 765
      Top = 184
      Width = 123
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Delete '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SPB_DeleteClick
    end
    object Dblcb_DepositType: TDBLookupComboBox
      Left = 123
      Top = 87
      Width = 277
      Height = 21
      KeyField = 'DeposittypeID'
      ListField = 'DepositType'
      ListSource = DS_DepositType
      TabOrder = 2
      OnClick = Dblcb_DepositTypeClick
      OnKeyPress = Dblcb_DepositTypeKeyPress
    end
    object Cb_Mode: TComboBox
      Left = 123
      Top = 112
      Width = 153
      Height = 22
      Style = csOwnerDrawFixed
      Color = clCream
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'RECEIVE'
      OnKeyPress = Cb_ModeKeyPress
      Items.Strings = (
        'RECEIVE'
        'RETURN')
    end
    object Le_Payment: TLabeledEdit
      Left = 123
      Top = 187
      Width = 304
      Height = 21
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Amount :'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Le_PaymentKeyPress
    end
    object Le_HosNo: TLabeledEdit
      Left = 123
      Top = 7
      Width = 153
      Height = 27
      EditLabel.Width = 78
      EditLabel.Height = 13
      EditLabel.Caption = 'Hospital No.  : '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      OnExit = Le_HosNoExit
      OnKeyPress = Le_HosNoKeyPress
    end
    object LBL_InpatientId: TLabeledEdit
      Left = 123
      Top = 58
      Width = 153
      Height = 24
      EditLabel.Width = 85
      EditLabel.Height = 13
      EditLabel.Caption = 'Inpatient No.  : '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      OnKeyPress = LBL_InpatientIdKeyPress
    end
    object CB_AllDepositIPWise: TCheckBox
      Left = 624
      Top = 212
      Width = 163
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Show All Deposit IP Wise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = CB_AllDepositIPWiseClick
    end
    object Edit_Remarks: TEdit
      Left = 123
      Top = 210
      Width = 494
      Height = 21
      MaxLength = 80
      TabOrder = 6
    end
    object CB_IsDepositRefund: TCheckBox
      Left = 282
      Top = 114
      Width = 145
      Height = 17
      Caption = 'Is Deposit Refund (F2)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = CB_IsDepositRefundClick
    end
    object Edit_PreveBillNo: TEdit
      Left = 123
      Top = 140
      Width = 304
      Height = 21
      CharCase = ecUpperCase
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      OnChange = Edit_PreveBillNoChange
      OnKeyDown = Edit_PreveBillNoKeyDown
      OnKeyPress = Edit_PreveBillNoKeyPress
    end
    object CheckBox_OLDDeposit: TCheckBox
      Left = 783
      Top = 212
      Width = 87
      Height = 17
      Caption = 'Old Deposit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object CB_RefundAll: TCheckBox
      Left = 406
      Top = 88
      Width = 145
      Height = 17
      Caption = 'Refund All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = CB_RefundAllClick
    end
    object CB_ManualDate: TCheckBox
      Left = 523
      Top = 163
      Width = 91
      Height = 17
      Caption = 'Manual Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = CB_ManualDateClick
    end
    object DEX_TodayDate: TDateEditX
      Left = 526
      Top = 186
      Width = 62
      Height = 21
      TabOrder = 12
      ControlData = {
        545046300A5444617465456469745200044C656674030E0203546F7003BA0005
        7769647468023E0B4461746541442E5965617203D3070C4461746541442E4D6F
        6E7468020B0A4461746541442E44617902030B4461746556532E59656172030C
        080C4461746556532E4D6F6E746802070A4461746556532E44617902110C466F
        6E742E43686172736574070C414E53495F434841525345540A466F6E742E436F
        6C6F72070C636C57696E646F77546578740B466F6E742E48656967687402F509
        466F6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B000A50
        6172656E74466F6E74080000}
    end
    object CB_ChangeDepositDate: TCheckBox
      Left = 621
      Top = 164
      Width = 143
      Height = 17
      Caption = 'Change Deposit Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = CB_ChangeDepositDateClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 270
    Width = 900
    Height = 313
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      900
      313)
    object Label4: TLabel
      Left = 422
      Top = 242
      Width = 31
      Height = 13
      Caption = 'Total :'
    end
    object Lbl_Total: TLabel
      Left = 484
      Top = 240
      Width = 36
      Height = 16
      Alignment = taRightJustify
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 359
      Top = 261
      Width = 96
      Height = 13
      Caption = 'Remaining Balance :'
    end
    object lbl_RemainingBalance: TLabel
      Left = 485
      Top = 260
      Width = 36
      Height = 16
      Alignment = taRightJustify
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_RefundDeposit: TLabel
      Left = 572
      Top = 240
      Width = 36
      Height = 16
      Alignment = taRightJustify
      Caption = '00.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SPB_SetIPNoToOldDeposit: TSpeedButton
      Left = 129
      Top = 235
      Width = 144
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Set IP No To Old Deposit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8F8F8EAEAEACFD1D0B7BEBAB6BDB9CDCFCEE9E9E9F7F7F7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF8F8F8EAEAEAD1D1D1BDBDBDBCBCBCCFCFCFE9E9E9F7
        F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF6F6F6BBC1BE5B93731F9A570CAB560DAF5B0DB0
        5D0CAD5A1D9E5A549370B2BBB6F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6C0C0C08C8C8C8B8B8B
        9898989C9C9C9C9C9C9A9A9A8E8E8E8B8B8BBABABAF4F4F4FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDDDEDE5593700E
        A95410B46011BA6712BE6D14C17015C27314C17215BF7012BB6A10B2614C956D
        D5D7D6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEDEDEDE8C8C8C959595A0A0A0A7A7A7ABABABADADADAFAFAFAEAEAEACACACA8
        A8A89F9F9F8C8C8CD7D7D7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBCFCD29995A10B25B14BC6819C2731BC77A1ECB8020CD8422CE
        8621CE8621CC831EC97E1BC57718BE6F25A463BEC5C1FEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF8B8B8B9E9E9EA8A8A8ADADADB4B4B4
        B8B8B8B9B9B9BBBBBBBBBBBBBABABAB6B6B6B1B1B1ABABAB959595C4C4C4FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9DCDA279C5A14B66019C16E20
        C87B24CE8429D28D2DD5932FD79730D89830D7982FD6952DD39129D08A23CB81
        1EC47724AA67CDD2CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB8D8D
        8DA2A2A2ADADADB3B3B3BBBBBBBEBEBEC2C2C2C6C6C6C5C5C5C5C5C5C4C4C4C0
        C0C0BDBDBDB7B7B7B0B0B09A9A9AD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F7F7F747986B15B75F1DC37023CC7E2AD28B31D79637D99E3BDCA43DDFA840DF
        A93FDFA93EDEA63ADCA136D99B31D4932ACF8821C87B3CA16EF3F4F3FFFFFFFF
        FFFFFFFFFFFFFFFFF7F7F78D8D8DA3A3A3B0B0B0B8B8B8BEBEBEC6C6C6C7C7C7
        CCCCCCCECECECECECECFCFCFCCCCCCCBCBCBC7C7C7C2C2C2BCBCBCB4B4B49595
        95F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFA5B7AE15B45C1DC36D26CD7F2ED48E36
        DA9B3DC594102E24225A484CE1B54DE5B94CE5B84CE4B549E2B044DFA93FDBA1
        36D7972ED18B24C77B93AEA0FFFFFFFFFFFFFFFFFFFFFFFFB5B5B59F9F9FAFAF
        AFB9B9B9C1C1C1C8C8C8B7B7B72B2B2B555555D3D3D3D6D6D6D6D6D6D4D4D4D2
        D2D2CFCFCFCACACAC5C5C5BEBEBEB3B3B3ABABABFFFFFFFFFFFFFFFFFFFBFBFB
        439D6C1DC06926CC7C30D48D39DB9C40C6970E231C010101010101285A4C5BE7
        C45AEAC559E9C256E7BD52E5B64BE1AE44DDA43BD89931D28B3AAA73F8F8F8FF
        FFFFFFFFFFFBFBFB919191ACACACB8B8B8C0C0C0C9C9C9B7B7B7212121010101
        010101555555DADADADCDCDCDCDCDCD9D9D9D6D6D6D1D1D1CDCDCDC6C6C6BFBF
        BF9C9C9CF8F8F8FFFFFFFFFFFFDEE2E01BB86123C9742ED28839DA9B40C5960D
        221B01010127695814352D0000002C5D5066EACD65ECCC61EBC75CE9C157E6B9
        4EE2B045DEA43BD8982BCB80CDD6D1FFFFFFFFFFFFE1E1E1A4A4A4B5B5B5BEBE
        BEC7C7C7B7B7B7202020010101626262323232000000585858DFDFDFE0E0E0DE
        DEDEDBDBDBD7D7D7D2D2D2CCCCCCC6C6C6B9B9B9D5D5D5FFFFFFFFFFFFACC2B7
        1FC26929D08035D8953FD69F0D231C0000002C705F62ECCE61E0C71738310101
        012F5D526FECD16AEECF66ECCA61E9C257E6B94EE2AF44DDA236D6929ABBABFF
        FFFFFFFFFFBFBFBFACACACBCBCBCC6C6C6C6C6C6202020000000696969E0E0E0
        D6D6D6353535010101595959E1E1E1E2E2E2DFDFDFDCDCDCD7D7D7D2D2D2CDCD
        CDC3C3C3B7B7B7FFFFFFFFFFFF90B9A423CB752FD58C3BDC9E46DDAA1B4D3E2D
        746264EBCD6BF0D671F2DB6EE5D11B3934000000325F5474EDD36EEED069ECC9
        60E9C056E5B74CE1AC3DDC9E80B69CFFFFFFFFFFFFB4B4B4B5B5B5C2C2C2CACA
        CACDCDCD4848486D6D6DDFDFDFE4E4E4E8E8E8DCDCDC3737370000005B5B5BE3
        E3E3E3E3E3DFDFDFDBDBDBD6D6D6D0D0D0CACACAB0B0B0FFFFFFFFFFFF8DBDA5
        28D18035D99541DFA64EE5B459E9BF63ECCA6CEFD274F1D97BF4DE80F5E279E7
        D61D3A35010101335E5477ECD171EECE68EBC65EE8BD53E4B345E0A77EB99EFF
        FFFFFFFFFFB7B7B7BCBCBCC6C6C6CDCDCDD5D5D5DADADADFDFDFE4E4E4E7E7E7
        EAEAEAEDEDEDDDDDDD3737370101015A5A5AE1E1E1E2E2E2DEDEDEDADADAD4D4
        D4CECECEB2B2B2FFFFFFFFFFFF9EC5B22DD28639DB9A46E1AA54E6B860EBC36B
        EDCD75EFD47CF2DA83F4DF88F5E28BF5E380E5D31E3A34000000335C5279EBCD
        6FECC965E9C05AE6B74BE1AC8FC3ACFFFFFFFFFFFFC0C0C0BEBEBECACACAD1D1
        D1D7D7D7DDDDDDE1E1E1E3E3E3E8E8E8EBEBEBEDEDEDEBEBEBDCDCDC38383800
        0000595959DFDFDFDFDFDFDBDBDBD7D7D7D1D1D1BCBCBCFFFFFFFFFFFFC6DBD1
        2FD0873EDC9D4CE2AC5AE6B967EBC472EECE7CF0D484F2DA8BF3DE8FF4E092F4
        E192F4E085E4D01F3832010101335B5176E8C86BEAC35FE7BA4FE0ADB5D6C7FF
        FFFFFFFFFFD8D8D8BCBCBCCBCBCBD1D1D1D8D8D8DEDEDEE2E2E2E5E5E5E8E8E8
        E9E9E9EBEBEBEBEBEBEBEBEBDBDBDB363636010101585858DDDDDDDCDCDCD8D8
        D8D0D0D0D2D2D2FFFFFFFFFFFFF7F9F83BC78A40DD9F4DE3AE5DE7BA69EBC575
        EECD80F0D488F2D990F3DC94F4DE96F4DF97F4DF95F3DD86E2CC1E3630010101
        3564576DEAC363E8BC4CD6A3ECF3F0FFFFFFFFFFFFF9F9F9B7B7B7CBCBCBD2D2
        D2D9D9D9DEDEDEE1E1E1E4E4E4E8E8E8EAEAEAEBEBEBEBEBEBEBEBEBE9E9E9DA
        DADA3434340101015E5E5EDDDDDDD9D9D9C6C6C6F2F2F2FFFFFFFFFFFFFFFFFF
        82C9AB40DDA04EE2AE5EE7BA6AEBC477EDCC82EFD28BF1D791F2DA96F3DC99F3
        DD99F3DD97F3DB93F2D982E0C72441393972616FEAC463E8BD7BCDADFFFFFFFF
        FFFFFFFFFFFFFFFFC1C1C1CBCBCBD2D2D2D8D8D8DDDDDDE1E1E1E3E3E3E7E7E7
        E8E8E8E9E9E9EAEAEAEAEAEAEAEAEAE9E9E9D7D7D73E3E3E6C6C6CDDDDDDDADA
        DAC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFE5F0EC46D29B4EE2AD5CE6B869EAC276
        EDCA80EFD089F0D490F1D895F2DA98F3DB98F2DA96F2D992F1D78BF0D482EDCF
        79ECCA6FEBC45CDFB3DBEEE6FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFC3C3C3D1D1
        D1D7D7D7DCDCDCE0E0E0E3E3E3E5E5E5E7E7E7E9E9E9EAEAEAE9E9E9E8E8E8E7
        E7E7E5E5E5E2E2E2E0E0E0DEDEDED1D1D1EBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB1E1CE49DEA858E6B664E9BF70ECC77CEECD84F0D28BF1D590F1D793F2
        D893F2D791F1D78DF1D586F0D280EECE74EDC967E8C0A7DFCAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFDBDBDBCFCFCFD7D7D7DADADADFDFDFE2E2E2E5E5E5
        E7E7E7E6E6E6E9E9E9E8E8E8E7E7E7E7E7E7E5E5E5E2E2E2E1E1E1DADADAD9D9
        D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE99DFC551E2B05EE8BC69
        EAC375EDCA7DEECE84EFD288F0D48BF0D48BF0D589F0D485EFD280EECF78EDCC
        6DEAC593E1C6FCFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED7D7
        D7D3D3D3D9D9D9DDDDDDE1E1E1E3E3E3E5E5E5E4E4E4E6E6E6E6E6E6E5E5E5E4
        E4E4E3E3E3E1E1E1DDDDDDD8D8D8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFEFEADE6D255E0B262E9BF6CEBC574EDCA7BEECD7FEECF81EF
        D081EFD180EFD07DEECE78EDCC6BE7C2A8E6D1FBFDFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE0E0E0D1D1D1DBDBDBDEDEDEE1E1E1
        E1E1E1E2E2E2E3E3E3E3E3E3E4E4E4E2E2E2E2E2E2DADADADFDFDFFDFDFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF4EC83
        E3C35DE4BA69EBC56FECC973EDCB77EDCC76EECD76EDCC6BE8C486E4C6D7F3E9
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF2F2F2D8D8D8D6D6D6DEDEDEE0E0E0E0E0E0E1E1E1E2E2E2E1E1E1DB
        DBDBD9D9D9F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEE5F7F1B5ECDA98E8CF84E5C885E5
        C799E8D0B4ECDAE1F6EFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E5E5E5
        DFDFDFDADADADADADAE0E0E0E6E6E6F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SPB_SetIPNoToOldDepositClick
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 6
      Width = 898
      Height = 226
      TabStop = False
      DataSource = Ds_List
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SPDE_INPATIENTID'
          Title.Alignment = taCenter
          Title.Caption = 'Inpatient No.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_DEPOSITDATE'
          Title.Alignment = taCenter
          Title.Caption = 'Date'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_DEPOSITTIME'
          Title.Alignment = taCenter
          Title.Caption = 'Time'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_DEPOSITNO'
          Title.Alignment = taCenter
          Title.Caption = 'Deposit No'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_MEMBERID'
          Title.Alignment = taCenter
          Title.Caption = 'Member No'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_DRAMOUNT'
          Title.Alignment = taCenter
          Title.Caption = 'Deposit Received'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_CRAMOUNT'
          Title.Alignment = taCenter
          Title.Caption = 'Deposit Refund'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEPOSITBY'
          Title.Alignment = taCenter
          Title.Caption = 'User Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPDE_REFERENCENO'
          Title.Alignment = taCenter
          Title.Caption = 'Adv. Reference No'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Remarks'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 200
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 286
      Width = 900
      Height = 27
      Panels = <
        item
          Width = 50
        end
        item
          Width = 50
        end>
    end
    object CB_ShowOldDeposit: TCheckBox
      Left = 5
      Top = 251
      Width = 118
      Height = 17
      Caption = 'Show Old Deposit '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = CB_ShowOldDepositClick
    end
    object Edit_IPNO: TEdit
      Left = 130
      Top = 264
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 33
    Align = alTop
    TabOrder = 0
    object BB_Save: TBitBtn
      Left = 693
      Top = 1
      Width = 103
      Height = 31
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Save (F12)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      OnClick = BB_SaveClick
    end
    object BB_Close: TBitBtn
      Left = 796
      Top = 1
      Width = 103
      Height = 31
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = 'Close[ESC]'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 1
      OnClick = BB_CloseClick
    end
    object BB_RePrintBill: TBitBtn
      Left = 577
      Top = 1
      Width = 116
      Height = 31
      Align = alRight
      Caption = '&Re-Print Bill'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEF2F2F2FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF2F2F2FDFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE0E0E0A7A3A1A69489858382
        8181829E9E9FE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE0
        E0E0A3A3A39393938383838181819E9E9EE5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2C4C1C1AAA7A7CECECEE3E3
        E3B1B0B0B49B8EFFEBDFFFF7F3F5E0D08D72646953556F6B6CAFAFB0F8F8F8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2
        C1C1C1A7A7A7CECECEE3E3E3B0B0B09A9A9AE9E9E9F6F6F6DDDDDD7171715656
        566C6C6CB0B0B0F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBC
        B7B7B09897ECB4A8EB99848D7370957A70F0C8B7FFF8F1FDDBCBFDE4DAFCD5C7
        FFF4ECDDC4B18D6E668B7375CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEFEFEFB8B8B89A9A9AB5B5B59B9B9B7474747A7A7AC6C6C6F7
        F7F7DADADAE2E2E2D4D4D4F2F2F2C2C2C26F6F6F757575CDCDCDFFFFFFFFFFFF
        FFFFFFFEFEFEEDEDEDB7B0B0BAA1A1EED9D8FFF5F2FDCBBCFCA78BBE8371EBD5
        C9FFD6C0FCCFB8FDD6C3FBCFBCFDDED1FEEFE7FFFFFEFFF8EFC5AB99868381E9
        E9E9FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEDEDEDB0B0B0A3A3A3DADADAF6F6F6
        CBCBCBA8A8A8848484D4D4D4D4D4D4CDCDCDD4D4D4CECECEDDDDDDEEEEEEFFFF
        FFF7F7F7A9A9A9838383FFFFFFFFFFFFEDEDEDB3ABABC3A9A9F2E0DFFFFAF7FF
        F2F0FEEAE6FDD2C6FDB19AB99581A27E6CBE9A86F3BEA4FFD2BBFCCFB7FDD7C5
        FBD0BDFCE0D4FFFCFAFFFFFEF9D6BDF1F1F1FFFFFFFFFFFFFFFFFFEDEDEDABAB
        ABABABABE1E1E1F9F9F9F3F3F3EAEAEAD2D2D2B3B3B39393937D7D7D999999BC
        BCBCD0D0D0CDCDCDD6D6D6CECECEDFDFDFFBFBFBFFFFFFD3D3D3FFFFFFF6F5F5
        CAABAAF6E8E7FFFAF8FFF3F1FFEDEAFFEBE7FDE6E0FED9CFFDBCA9D5A28DA58C
        77A58471A48B7BCEA691FAC3A8FED3BDFDDCCAFFF7EFFBD8C7D7CAC3FFFFFFFF
        FFFFFFFFFFFFFFFFF5F5F5ACACACE9E9E9F9F9F9F3F3F3EEEEEEEBEBEBE7E7E7
        D9D9D9BDBDBDA1A1A18A8A8A838383898989A5A5A5C1C1C1D1D1D1DADADAF6F6
        F6D7D7D7C9C9C9FFFFFFFFFFFFF1E7E7FFFAF9FFF3F1FFEEEBFFECE8FFE8E2FF
        E3DFFFDFD9FDDFD9FCC7B9FEBEADF2B3A0BC9682A58B77A68E7DAC9685E1C2B0
        F8D3C5BB9C91F0F0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8FAFAFAF4F4
        F4EEEEEEEDEDEDE9E9E9E4E4E4E0E0E0DFDFDFC7C7C7BFBFBFB4B4B494949488
        88888D8D8D939393C1C1C1D3D3D39C9C9CF0F0F0FFFFFFFFFFFFFFFFFFF0E7E7
        FFF1EFFFEDE8FFE9E5FFE4E0FFE0DAFFDDD6FFDDD5FFE1DBFFCBC0FEC9BCFDC3
        B4FFBDACE5AB97AF927DA28B81705650E78D709C8F90F5F5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE8E8E8F1F1F1ECECECE9E9E9E5E5E5E1E1E1DEDEDEDEDEDE
        E2E2E2CCCCCCCBCBCBC3C3C3BFBFBFABABAB9090908C8C8C5656569090909090
        90F5F5F5FFFFFFFFFFFFFFFFFFF0E7E7FFEBE7FFE5E0FFE1DDFFDFD8FFDBD2FF
        D6CEFFE1DBFFDED7FFD1C7FFD1C7FECDC2FEC8BBFDC1B2FEBCA9C9887C6E5356
        F0A1889C8E8FF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7ECECECE5E5
        E5E3E3E3E0E0E0DCDCDCD7D7D7E2E2E2DEDEDED2D2D2D2D2D2CECECEC8C8C8C2
        C2C2BCBCBC8A8A8A555555A3A3A38F8F8FF3F3F3FFFFFFFFFFFFFFFFFFF0E7E7
        FFE4DFFFE0D8FFDCD5FFD7CFFFD3CBFFD8D0FFECE7FFDDD5EAA894C96645EDAD
        9DFFD1C8FECBC0FEC6B8FEC0B0FAB7A4FFB69F9C8E8EF3F3F3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE8E8E8E5E5E5E0E0E0DDDDDDD9D9D9D5D5D5D9D9D9EDEDED
        DEDEDEAAAAAA6A6A6AAEAEAED2D2D2CDCDCDC7C7C7C2C2C2B9B9B9B8B8B88F8F
        8FF3F3F3FFFFFFFFFFFFFFFFFFF3EBEBFBD8D1FFD9D1FFD4CCFFD0C6FFD7CDFF
        F5F1FFECE7FEDBD1E67C57D2623ABD471ECA6D4DF6C1B3FFD0C6FECABEFDC4B6
        FFC2B09C8D8EF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBD9D9D9DADA
        DAD5D5D5D1D1D1D8D8D8F4F4F4ECECECDBDBDB808080676767505050717171C2
        C2C2D2D2D2CCCCCCC4C4C4C3C3C38F8F8FF3F3F3FFFFFFFFFFFFFFFFFFF9F8F8
        E1B9B5FFD7CFFFD3CAFFE3DDFFFEFED2C9E7E3D2E3FBB292F99974F28965E074
        4FCC5B34B9451CD6846AFFCFC5FFCDC2FFCEC09E9090F5F5F5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFF8F8F8BCBCBCD8D8D8D4D4D4E3E3E3FEFEFED2D2D2D7D7D7
        B2B2B29A9A9A8B8B8B7878786060604C4C4C858585D0D0D0CECECECFCFCF9191
        91F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFCDA19EDFB9B6FFE9E4F8E7E3C4E5C8FC
        F0ECF1C2A7FDBB95FAAE8AFAA37EF79671ED845FDB6D47C7542BBB4B24EEB0A0
        FBC9C0ACA2A2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A4A4BCBC
        BCE9E9E9E7E7E7DDDDDDEFEFEFC1C1C1B8B8B8ADADADA4A4A497979788888872
        72725B5B5B525252B0B0B0CBCBCBA3A3A3FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        D8ADA6F5CCBFD5ACA9E9AFA2EDB596FEC09AFEC9A2FECDA6FDC59EFCB993FBAB
        87FAA07BF7926DE97F59D4643DE8A08AE6B7B3CBCACAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAFAFAFCBCBCBAEAEAEB1B1B1B2B2B2BDBDBDC6C6C6
        C9C9C9C1C1C1B7B7B7ABABABA0A0A09494948282826A6A6AA1A1A1B9B9B9CACA
        CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9BAB9FAECE7F2B99FEDD2C6D59886F1
        A080FDB790FDC39DFECCA4FECCA5FDC29BFCB590FBA984F99B77F49979FFE1DA
        AD9796F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBBECEC
        ECB8B8B8D1D1D1999999A1A1A1B6B6B6BFBFBFC8C8C8C7C7C7BEBEBEB2B2B2A8
        A8A89C9C9C9A9A9AE1E1E1989898F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCBB4ADF7C5ADFFEDDDFFE3C9E2BBAAD79281F7A784FCBB94FDC59FFECD
        A6FEC9A2FDBD97FBB591FFE7DFDBB4B2D7D5D5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B3C3C3C3EBEBEBDFDFDFBBBBBB959595
        A6A6A6B8B8B8C1C1C1C9C9C9C4C4C4BBBBBBB4B4B4E7E7E7B6B6B6D5D5D5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEC5C1FBD0B7FFF3E9FFE8D6FF
        E5CEFCDEC5D9AB9DDF947CFDAF88FDBE96FEC79FFED3B1FFF9F3E5C8C7C3BEBE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5
        C5CECECEF1F1F1E5E5E5E2E2E2DBDBDBABABAB969696AEAEAEBBBBBBC4C4C4CF
        CFCFF8F8F8CACACABEBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFCFC8C3FFD9C0FFFAF8FFF1E7FFEDDDFFE8D5FFE4CCF5DAC9D39E95ECA7
        8FFFD6C3F3D8D5D3B3B4D5D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7D6D6D6FAFAFAEFEFEFEBEBEBE6E6E6
        E1E1E1D8D8D8A0A0A0A7A7A7D5D5D5D9D9D9B5B5B5D2D2D2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2CAC5FFE3C9FDEFE4FFFCFCFF
        F6F0FFF1E4FFEADBFFF2E3AC9D96D7D2D2BFB6B6D9D3D3FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
        CAE0E0E0EEEEEEFDFDFDF5F5F5EEEEEEE9E9E9F0F0F09D9D9DD3D3D3B6B6B6D3
        D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3D5CAFFE3C8FEE2CCFDF5EEFFFBF9FFF5EDFFF7EEAFA199F4F4
        F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4DFDFDFE0E0E0F4F4F4FBFBFB
        F5F5F5F6F6F6A0A0A0F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3F3FFEAD4FF
        E1C7FEE5D3FDF9F6FFFFFFB0A39CF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFF3F3F3E7E7E7DDDDDDE3E3E3F8F8F8FFFFFFA3A3A3F3F3F3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E5E2FFE7CEFFE1C9FFEFDEB9AEA6F8F8
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4E4E4E4
        DDDDDDECECECADADADF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFE8DDD3E0CEC0EBEAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCCDCDCDEAEAEAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BB_RePrintBillClick
    end
    object CB_Preview: TCheckBox
      Left = 481
      Top = 4
      Width = 91
      Height = 21
      TabStop = False
      Caption = 'Previe&w (F1)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object CB_IPWise: TCheckBox
      Left = 7
      Top = 5
      Width = 226
      Height = 17
      Caption = 'IP Wise (After Finalizing Deposit Addition)'
      TabOrder = 4
    end
    object CB_TakeOPDeposit: TCheckBox
      Left = 264
      Top = 5
      Width = 121
      Height = 17
      Caption = 'Take OP Deposit'
      TabOrder = 5
    end
  end
  object DBGrid_PrevBillNoInfo: TDBGrid
    Left = 501
    Top = 123
    Width = 391
    Height = 64
    DataSource = Ds_List
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        Expanded = False
        FieldName = 'SPDE_DEPOSITNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Deposit No.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPDE_DEPOSITDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Deposit Date'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPDE_drAMOUNT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Dep. Amount'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPOSITBY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Deposit By'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
    object Query_DepositType: TOraQuery
    SQL.Strings = (
            
              'Select DEHE_DEPOSITHEADID AS DeposittypeID,DEHE_DEPOSITHEAD Depo' +
              'sitType from HS_DEHE_DEPOSITHEAD'
            'order by DEHE_DEPOSITHEADID desc')
    Left = 168
    Top = 352
  end
object DS_DepositType: TDataSource
    DataSet = Query_DepositType
    Left = 272
    Top = 336
  end
  object Ds_List: TDataSource
    DataSet = Query_List
    Left = 288
    Top = 376
  end
    object Query_List: TOraQuery
    SQL.Strings = (
            
              'Select DP.*,(Select USMA_UserName From HS_USMA_UserMain where US' +
              'MA_UserId=SPDE_DepositBy) as DepositBy,SPDE_ReferenceType as Rem' +
              'arks From HS_SPDE_SPECIALDEPOSIT DP'
            'where (1=1)'
            ''
            'Order by SPDE_DEPOSITDATE DESC')
    Left = 344
    Top = 392
  end
  object Query_PendingSampleColnBill: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,BillDate,BillTime,Sum((Amount*Qty)+VatAmt-(Amount*' +
              'Qty*DisPer/100)) as Total'
            
              'From ServiceBillDetail where BillNo In (Select BillNo From Patie' +
              'ntTest PT where PatientId=13003716 and PatientTestId Not In ('
            
              'Select PatientTestId From TestCancel Where PatientTestId=PT.Pati' +
              'entTestId))'
            'Group by BillNo,BillDate,BillTime Order by BillNo')
    Left = 432
    Top = 344
  end
object DS_PendingSampleColnBill: TDataSource
    DataSet = Query_PendingSampleColnBill
    Left = 504
    Top = 416
  end
    object Query_Process: TOraQuery
    SQL.Strings = (
            
              'Select BillNo,BillDate,BillTime,Sum((Amount*Qty)+VatAmt-(Amount*' +
              'Qty*DisPer/100)) as Total'
            
              'From ServiceBillDetail where BillNo In (Select BillNo From Patie' +
              'ntTest PT where PatientId=13003716 and PatientTestId Not In ('
            
              'Select PatientTestId From TestCancel Where PatientTestId=PT.Pati' +
              'entTestId))'
            'Group by BillNo,BillDate,BillTime Order by BillNo')
    Left = 664
    Top = 400
  end
  object Query_LoadRecepit: TOraQuery
    SQL.Strings = (
            'Select * From HS_SPDE_SpecialDeposit'
            'where spde_Referencetype is null'
            'and spde_patientid=73002316'
            
              'AND SPDE_DEPOSITNO Not in (Select NVL(SPDE_REFERENCENO,'#39'0'#39') From' +
              ' HS_SPDE_SpecialDeposit)'
            'AND SPDE_DEPOSITNO NOT LIKE'#39'RD%'#39
            'order by spde_depositid desc ')
    Left = 616
    Top = 56
  end
end
