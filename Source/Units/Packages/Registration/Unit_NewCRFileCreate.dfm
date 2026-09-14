object Form_NewCRFileCreate: TForm_NewCRFileCreate
  Left = 364
  Top = 135
  BorderIcons = [biSystemMenu]
  Caption = 'New CR File Create'
  ClientHeight = 482
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlBillReprint: TPageControl
    Left = 0
    Top = 35
    Width = 950
    Height = 428
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'Visit Detail'
      ExplicitLeft = 7
      ExplicitTop = 22
      DesignSize = (
        942
        400)
      object Label4: TLabel
        Left = 11
        Top = 13
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
      object Label7: TLabel
        Left = 11
        Top = 38
        Width = 37
        Height = 13
        Caption = 'Name '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_Name: TLabel
        Left = 93
        Top = 38
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 470
        Top = 38
        Width = 50
        Height = 13
        Caption = 'Age/Sex'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_AgeSex: TLabel
        Left = 555
        Top = 38
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 470
        Top = 62
        Width = 65
        Height = 13
        Caption = 'Contact No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_ContactNo: TLabel
        Left = 555
        Top = 62
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 73
        Top = 38
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label8: TLabel
        Left = 540
        Top = 38
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label9: TLabel
        Left = 540
        Top = 62
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label10: TLabel
        Left = 73
        Top = 14
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label11: TLabel
        Left = 11
        Top = 62
        Width = 46
        Height = 13
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_Address: TLabel
        Left = 93
        Top = 62
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 73
        Top = 62
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label14: TLabel
        Left = 11
        Top = 86
        Width = 73
        Height = 13
        Caption = 'Medicare No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_MedicareNo: TLabel
        Left = 93
        Top = 86
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 73
        Top = 86
        Width = 3
        Height = 13
        Caption = ':'
      end
      object SBSearch: TSpeedButton
        Left = 217
        Top = 8
        Width = 90
        Height = 22
        Hint = 'Search'
        Caption = 'S&earch'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
          300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
          330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
          333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
          339977FF777777773377000BFB03333333337773FF733333333F333000333333
          3300333777333333337733333333333333003333333333333377333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SBSearchClick
      end
      object Label2: TLabel
        Left = 470
        Top = 86
        Width = 42
        Height = 13
        Caption = 'CR No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label_CrNo: TLabel
        Left = 555
        Top = 86
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 540
        Top = 86
        Width = 3
        Height = 13
        Caption = ':'
      end
      object EditHosNo: TEdit
        Left = 90
        Top = 11
        Width = 121
        Height = 21
        TabOrder = 0
        OnExit = EditHosNoExit
        OnKeyPress = EditHosNoKeyPress
      end
      object DBGridBillList: TDBGrid
        Left = 0
        Top = 108
        Width = 939
        Height = 295
        Anchors = [akLeft, akTop, akRight]
        DataSource = DS_PatientVisit
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VISITDATE'
            Title.Alignment = taCenter
            Title.Caption = 'Visit Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 108
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VISITTIME'
            Title.Alignment = taCenter
            Title.Caption = 'Visit Time'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEPCODE'
            Title.Alignment = taCenter
            Title.Caption = 'Dep. Code'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DEPNAME'
            Title.Alignment = taCenter
            Title.Caption = 'Dep. Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 123
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BILLNO'
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FileNo'
            Title.Alignment = taCenter
            Title.Caption = 'File No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CardNo'
            Title.Alignment = taCenter
            Title.Caption = 'Member(Card) No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISVISITCANCEL'
            Title.Alignment = taCenter
            Title.Caption = 'Is Visit Cancel'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SCHEME'
            Title.Alignment = taCenter
            Title.Caption = 'Scheme'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 253
            Visible = True
          end>
      end
      object BitBtn_BarCode: TBitBtn
        Left = 791
        Top = 0
        Width = 149
        Height = 29
        Caption = 'Re-Print Sticker (F4)'
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
        OnClick = BitBtn_BarCodeClick
      end
      object CheckBoxPreview: TCheckBox
        Left = 792
        Top = 31
        Width = 61
        Height = 17
        Caption = 'Previe&w'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 463
    Width = 950
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 35
    Align = alTop
    TabOrder = 0
    object BitBtnCancel: TBitBtn
      Left = 846
      Top = 1
      Width = 103
      Height = 33
      Align = alRight
      Caption = '&Cancel (Esc)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtnCancelClick
    end
    object BtnSave: TBitBtn
      Left = 680
      Top = 1
      Width = 166
      Height = 33
      Align = alRight
      Caption = '&Create New CR File(F12)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = BtnSaveClick
    end
  end
    object Query_PatientInfo: TOraQuery
    Left = 459
    Top = 6
  end
  object Query_Process: TOraQuery
    Left = 539
    Top = 6
  end
  object Query_PatientVisit: TOraQuery
    SQL.Strings = (
            
              'Select R.*,Case when NVL(BillNo,'#39'NA'#39')<>'#39'NA'#39' Then '#39'PAID VISIT'#39' El' +
              'se '#39'FREE FOLLOWUP'#39' End Status'
            'From (     '
            
              'Select PAVI_PatientVisitId VisitId,PAVI_VisitDate VisitDate,PAVI' +
              '_VisitTime VisitTime,PAVI_DepId DepID,PAVI_FileNo FileNo,'
            
              '(Select DEPT_DepName From HS_DEPT_Department where DEPT_DepID=PA' +
              'VI_DepID) as DepName,'
            
              '(Select BIDE_BillNo From HS_BIDE_BillDetail where BIDE_PatientId' +
              '=PAVI_PatientId and BIDE_BillType='#39'R'#39' '
            
              'and BIDE_BillDate=PAVI_VISITDate and BIDE_BillTime=PAVI_VisitTim' +
              'e and RowNum=1) as BillNo,'
            
              'PAVI_SchemeId as SchemeId,(Select SCHE_Scheme From HS_SCHE_Schem' +
              'e where SCHE_SchemeId=PAVI_SCHEMEID) as Scheme,'
            
              'PAVI_IsVisitCancel IsVisitCancel,(Select PAMA_CardNo From HS_PAM' +
              'A_PatientMain where PAMA_PatientId=PV.PAVI_PatientId) as CardNo'
            'From HS_PAVI_PatientVisit PV'
            'where PAVI_PatientId=71000123'
            ') R'
            'Order by VisitID Desc')
    Left = 259
    Top = 65526
  end
object DS_PatientVisit: TDataSource
    DataSet = Query_PatientVisit
    Left = 350
    Top = 6
  end
end
