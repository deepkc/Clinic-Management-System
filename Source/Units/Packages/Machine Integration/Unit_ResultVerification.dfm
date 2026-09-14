object Form_ResultVerification: TForm_ResultVerification
  Left = 0
  Top = 0
  Caption = 'Result Verification'
  ClientHeight = 521
  ClientWidth = 1125
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1125
    521)
  PixelsPerInch = 96
  TextHeight = 13
  object x: TLabel
    Left = 1025
    Top = 88
    Width = 25
    Height = 13
    Caption = 'Copy'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1125
    Height = 83
    Align = alTop
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 945
      Top = 4
      Width = 92
      Height = 38
      Margins.Bottom = 40
      Align = alRight
      Caption = '&Verify'
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6E0E0E0C1C1C19F9F9F949494F1F1
        F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB8282826A
        6A6A6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6A6A6A6F6F6F898989CFCFCF
        EEEEEEFFFFFFC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD8D8D8DDDDDDFFFFFFFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFBFBFBFBFBFBF7
        F7F7DBDBDBB8B8B8F9F9F9FFFFFFC5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCCCCCC878787E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFDFDFDFCFCFCFFFFFFFFFFFFE5E5E5B7B7B7E8E8E8D3D3D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0FFFFFFEBEBEBFEFEFEFCFCFCFCFCFC
        FCFCFCFCFCFCFEFEFEFFFFFFF6F6F6B0B0B0DEDEDEEFEFEFF4F4F4C9C9C9ADAD
        ADF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDEF8F8F8EAEAEAFF
        FFFFFDFDFDFDFDFDFDFDFDFFFFFFFFFFFF8A8A8AA0A0A0F9F9F9FBFBFBF0F0F0
        FEFEFEF7F7F7CFCFCF838383FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
        F0E5E5E5EBEBEBFEFEFEFCFCFCFDFDFDFFFFFFDFDFDF060606000000E0E0E0FF
        FFFFF7F7F7F4F4F4FCFCFCFBFBFBFBFBFBC9C9C9BCBCBCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDD9D9D9EDEDEDFEFEFEFEFEFEFFFFFF9797970000001111
        11AAAAAAFFFFFFFAFAFAF8F8F8F7F7F7F5F5F5F3F3F3F3F3F3FEFEFEC1C1C1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6EBEBEBFEFEFEFCFCFC919191
        0000004D4D4DD6D6D6FFFFFFFBFBFBF9F9F9F8F8F8F7F7F7F6F6F6F5F5F5F4F4
        F4FCFCFCC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9EBEBEBF0
        F0F0A4A4A4E5E5E5CBCBCBF1F1F1FFFFFFFAFAFAFAFAFAFAFAFAF8F8F8F7F7F7
        F6F6F6F5F5F5F4F4F4FCFCFCC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCCCCCCCDCDCDA8A8A8EEEEEEF4F4F4FFFFFFFDFDFDFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAF9F9F9F8F8F8F7F7F7F6F6F6FEFEFEC2C2C2FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC8C8C87D7D7DC1C1C1FDFDFDF7F7EFFFFFFDF9F9F9F9F9F9F9F9
        F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8F7F7F7F6F6F6FEFEFEC2C2C2FF
        FFFFFFFFFFFFFFFFFCFCFCA5A5A5868686E8E8E8F7F7F7BABAB26D6DBE9F9FAA
        FFFFFFF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8
        F8FFFFFFB8B8B8FFFFFFFFFFFFEDEDED898989A0A0A0FFFFFFCECECED5D5D5BB
        BBBDC9C9DF2C2CABFDFDFCF9F9F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7FFFFFFB3B3B3FFFFFFF5F5F5767676C3C3C3FFFFFFBFBF
        BFCCCCCCE3E3E3F8F8F8E7E7E4FAFAEFDEDEF2F9F9F8F7F7F7F7F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFBBBBBBF9F9F9A2A2A2A5A5A5
        EEEEEEBABABAFAFAFAF0F0F0E1E1E1FEFEFEFFFFFAFFFFFDF9F9F7F7F7F7F7F7
        F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6FDFDFDCCCCCCE8
        E8E8E0E0E0FBFBFBF5F5F5FFFFFFFFFFFFEBEBEBE7E7E7C6C6BE7676C3A1A1AB
        FFFFFDF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F5F5
        F5FBFBFBE3E3E3D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE8E8E7BA
        BABBCDCDE62F2FAEFDFDFAF7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F5F5F5FAFAFAE4E4E4DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEBEBEBE2E2E2F8F8F7E8E8E4F8F8EFDBDBF0F8F8F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F5F5F5FEFEFEC5C5C5FAFAFAFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBE1E1E1EBEBEBEFEFEFEFEFEEF0F0EEEDEDEDEDED
        EDECECECE8E8E8E9E9E9EAEAEAEAEAEAE9E9E9E9E9E9E9E9E9EBEBEBE0E0E0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4EBEBEBE9E9E9
        DDDDDDE7E7E7E9E9E9EDEDEDF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1F1F1F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
      ExplicitLeft = 813
      ExplicitTop = 0
      ExplicitHeight = 81
    end
    object SpeedButton5: TSpeedButton
      AlignWithMargins = True
      Left = 847
      Top = 4
      Width = 92
      Height = 38
      Margins.Bottom = 40
      Align = alRight
      Caption = '&Print [F11]'
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
      OnClick = SpeedButton5Click
      ExplicitLeft = 805
      ExplicitTop = 0
      ExplicitHeight = 81
    end
    object Label1: TLabel
      Left = 31
      Top = 7
      Width = 58
      Height = 13
      Caption = 'Non Verified'
    end
    object Label2: TLabel
      Left = 31
      Top = 31
      Width = 36
      Height = 13
      Caption = 'Verified'
    end
    object Label3: TLabel
      Left = 31
      Top = 54
      Width = 71
      Height = 13
      Caption = 'Repeated Test'
    end
    object spl_1: TSplitter
      Left = 842
      Top = 1
      Width = 2
      Height = 81
      Align = alRight
      Color = clSilver
      ParentColor = False
      ExplicitLeft = 841
    end
    object GroupBox1: TGroupBox
      Left = 592
      Top = 1
      Width = 116
      Height = 81
      Align = alRight
      TabOrder = 0
      object RB_Verified: TRadioButton
        Left = 8
        Top = 28
        Width = 57
        Height = 17
        Caption = 'Verified'
        TabOrder = 0
      end
      object RB_NonVerified: TRadioButton
        Left = 8
        Top = 3
        Width = 74
        Height = 17
        Caption = 'Non Verified'
        TabOrder = 1
      end
      object RB_All: TRadioButton
        Left = 8
        Top = 52
        Width = 34
        Height = 17
        Caption = 'All'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object GB_Searchbydate: TGroupBox
      Left = 330
      Top = 1
      Width = 139
      Height = 81
      Align = alRight
      TabOrder = 1
      object Label11: TLabel
        Left = 8
        Top = 28
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SPB_From: TSpeedButton
        Left = 104
        Top = 23
        Width = 22
        Height = 22
        Caption = 'AD'
        OnClick = SPB_FromClick
      end
      object Label13: TLabel
        Left = 23
        Top = 52
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SPB_To: TSpeedButton
        Left = 106
        Top = 47
        Width = 22
        Height = 22
        Caption = 'AD'
        OnClick = SPB_ToClick
      end
      object CB_DateRange: TCheckBox
        Left = 8
        Top = 4
        Width = 105
        Height = 17
        Caption = ' Search by date'
        TabOrder = 0
      end
      object Dex_From: TDateEditX
        Left = 41
        Top = 24
        Width = 63
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F700218057769
          647468023F0B4461746541442E5965617203DB070C4461746541442E4D6F6E74
          6802090A4461746541442E44617902160B4461746556532E596561720314080C
          4461746556532E4D6F6E746802060A4461746556532E44617902050000}
      end
      object Dex_To: TDateEditX
        Left = 41
        Top = 48
        Width = 65
        Height = 21
        TabOrder = 2
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002300B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E44617902050000}
      end
    end
    object GroupBox6: TGroupBox
      Left = 469
      Top = 1
      Width = 123
      Height = 81
      Align = alRight
      TabOrder = 2
      object Label31: TLabel
        Left = 11
        Top = 4
        Width = 87
        Height = 13
        Caption = 'Include more than'
      end
      object Label32: TLabel
        Left = 75
        Top = 20
        Width = 24
        Height = 13
        Caption = 'Days'
      end
      object Se_CLDays: TSpinEdit
        Left = 11
        Top = 17
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
      end
      object BB_Refresh: TBitBtn
        Left = 6
        Top = 39
        Width = 92
        Height = 30
        Caption = '&Refresh'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BB_RefreshClick
      end
    end
    object CB_Modify: TCheckBox
      AlignWithMargins = True
      Left = 711
      Top = 4
      Width = 128
      Height = 75
      Align = alRight
      Caption = 'Modify Repeated Test'
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 4
      Top = 4
      Width = 21
      Height = 21
      Color = clBackground
      Enabled = False
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 4
      Top = 26
      Width = 21
      Height = 21
      Color = clGreen
      Enabled = False
      TabOrder = 5
    end
    object Edit6: TEdit
      Left = 4
      Top = 49
      Width = 21
      Height = 21
      Color = clFuchsia
      Enabled = False
      TabOrder = 6
    end
    object BB_Close: TBitBtn
      AlignWithMargins = True
      Left = 1043
      Top = 4
      Width = 78
      Height = 38
      Margins.Bottom = 40
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
      TabOrder = 7
      OnClick = BB_CloseClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 324
    Top = 361
    Width = 795
    Height = 76
    Anchors = [akLeft, akTop, akRight]
    DataSource = DS_MachineFindingsResult
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'MRTESTNAMECODE'
        Title.Alignment = taCenter
        Title.Caption = 'Test Code'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRTESTNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Test Name'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRRESULT'
        Title.Alignment = taCenter
        Title.Caption = 'Result'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRUNIT'
        Title.Alignment = taCenter
        Title.Caption = 'Unit'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRREFERENCERANGE'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Range'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRFLAG'
        Title.Alignment = taCenter
        Title.Caption = 'Flag'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRRESULTDATE'
        Title.Alignment = taCenter
        Title.Caption = 'Result Date'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MRRESULTTIME'
        Title.Alignment = taCenter
        Title.Caption = 'Result Time'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LABTESTNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Billing Test Name'
        Width = 140
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = -3
    Top = 111
    Width = 321
    Height = 412
    DataSource = DS_PatientList
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'PatientId'
        Title.Alignment = taCenter
        Title.Caption = 'Hospital No'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PatientName'
        Title.Alignment = taCenter
        Title.Caption = 'Patient Name'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAMPLETAKENDATE'
        Title.Alignment = taCenter
        Title.Caption = 'Sample Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SampleNo'
        Title.Alignment = taCenter
        Title.Caption = 'Sample No'
        Width = 81
        Visible = True
      end>
  end
  object Edit_SampleNo: TEdit
    Left = 0
    Top = 84
    Width = 73
    Height = 21
    TabOrder = 3
    OnChange = Edit_SampleNoChange
  end
  object Edit_PatientName: TEdit
    Left = 73
    Top = 84
    Width = 112
    Height = 21
    TabOrder = 4
    OnChange = Edit_PatientNameChange
  end
  object Edit2: TEdit
    Left = 185
    Top = 84
    Width = 64
    Height = 21
    TabOrder = 5
  end
  object Edit_SampleNoSearch: TEdit
    Left = 249
    Top = 84
    Width = 72
    Height = 21
    TabOrder = 6
    OnChange = Edit_SampleNoSearchChange
  end
  object DBGrid3: TDBGrid
    Left = 322
    Top = 345
    Width = 795
    Height = 176
    Anchors = [akLeft, akTop, akRight]
    DataSource = DS_LabFindingResult
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'machineTESTNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Test Name'
        Width = 196
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FINDING'
        Title.Alignment = taCenter
        Title.Caption = 'Result'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIT'
        Title.Alignment = taCenter
        Title.Caption = 'Unit'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFRANGE'
        Title.Alignment = taCenter
        Title.Caption = 'Ref. Range'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULTDATE'
        Title.Alignment = taCenter
        Title.Caption = 'Result Date'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULTTIME'
        Title.Alignment = taCenter
        Title.Caption = 'Result Time'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TESTNAME'
        Title.Alignment = taCenter
        Title.Caption = 'Billing Test Name'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'verifiedby'
        Title.Caption = 'Verified By'
        Visible = True
      end>
  end
  object se_printcount: TSpinEdit
    Left = 963
    Top = 85
    Width = 56
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 8
    Value = 1
  end
  object cb_preview: TCheckBox
    Left = 903
    Top = 87
    Width = 56
    Height = 17
    Caption = 'Preview'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object SMDBGrid1: TSMDBGrid
    Left = 323
    Top = 110
    Width = 794
    Height = 234
    Anchors = [akLeft, akTop, akRight]
    DataSource = DS_MachineFindingsResult
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = SMDBGrid1CellClick
    OnDrawColumnCell = SMDBGrid1DrawColumnCell
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsPriceList
    GridStyle.OddColor = cl3DLight
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 40
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'state'
        Title.Caption = 'State'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TESTNAMECODE'
        Title.Caption = 'Test Code'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TESTNAME'
        Title.Caption = 'Test Name'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULT'
        Title.Alignment = taCenter
        Title.Caption = 'Result'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIT'
        Title.Caption = 'Unit'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'refrange'
        Title.Caption = 'Ref. Range'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'refrangelab'
        Title.Caption = 'Ref.Range Lab'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FLAG'
        Title.Caption = 'Flag'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULTDATE'
        Title.Caption = 'Result Date'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESULTTIME'
        Title.Caption = 'Result Time'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LABTESTNAME'
        Title.Caption = 'Billing Test Name'
        Width = 130
        Visible = True
      end>
  end
  object Cb_All: TCheckBox
    Left = 365
    Top = 89
    Width = 36
    Height = 17
    Caption = 'All'
    TabOrder = 11
    OnClick = Cb_AllClick
  end
  object Edit_TestName: TEdit
    Left = 401
    Top = 87
    Width = 101
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
    OnChange = Edit_TestNameChange
  end
  object BitBtn1: TBitBtn
    Left = 829
    Top = 84
    Width = 70
    Height = 25
    Caption = '&Delete'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 13
    OnClick = BitBtn1Click
  end
  object DS_MachineFindingsResult: TDataSource
    DataSet = Table_List
    Left = 128
    Top = 144
  end
  object DS_PatientList: TDataSource
    DataSet = Query_PatientList
    Left = 160
    Top = 216
  end
  object DS_LabFindingResult: TDataSource
    DataSet = Query_LabFindingResult
    Left = 520
    Top = 216
  end
  object Table_List: TTable
    Left = 128
    Top = 8
  end
  object Query_PatientList: TOraQuery
    SQL.Strings = (
      
        'Select Distinct Pt.PatientId,(Select InitCap(PatientName) From P' +
        'atientMain where PatientId=PT.PatientId) as PatientName,'
      
        'SC.SAMPLETAKENDATE,SC.LabNo SAMPLENO From PatientTest PT,SampleC' +
        'ollection Sc where'
      'Pt.patienttestid=sc.patienttestid'
      'and TestNameId In (Select TestNameId From Tnma_TestNameMapping)'
      
        'and sc.SAMPLETAKENDATE >=:FromDate and sc.SAMPLETAKENDATE <=:ToD' +
        'ate')
    Left = 56
    Top = 288
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
  object Query_MachineFindingsResult: TOraQuery
    SQL.Strings = (
      'select * from VW_LABMACHINERESULT')
    Left = 144
    Top = 320
  end
  object Query_LabFindingResult: TOraQuery
    SQL.Strings = (
      'Select * From VW_LabFindingResult')
    Left = 232
    Top = 288
  end
end
