object Form_BillDetail: TForm_BillDetail
  Left = 166
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Discharge Clearance Detail'
  ClientHeight = 662
  ClientWidth = 1036
  Color = 16771304
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlServiceCharge: TPageControl
    Left = 0
    Top = 39
    Width = 1036
    Height = 604
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Services Charges'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid_ServiceCharge: TSMDBGrid
        Left = 0
        Top = 82
        Width = 1028
        Height = 494
        Align = alClient
        DataSource = DataSourceTablePTTestTemp
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid_ServiceChargeCellClick
        OnColEnter = DBGrid_ServiceChargeColEnter
        OnDrawColumnCell = DBGrid_ServiceChargeDrawColumnCell
        OnExit = DBGrid_ServiceChargeExit
        OnKeyDown = DBGrid_ServiceChargeKeyDown
        OnKeyPress = DBGrid_ServiceChargeKeyPress
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BillDate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Service Date'
            Width = 67
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BillTime'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Time'
            Width = 51
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BillNo'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Service No'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TestName'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CostPrice'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VatAmt'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Svr. Tax'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Disper'
            Title.Alignment = taCenter
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Discount'
            Title.Alignment = taCenter
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NetTotal'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RateType'
            ReadOnly = True
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefDocCode'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Ref.Doc.'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'User'
            ReadOnly = True
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SchemeName'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Scheme Name'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TNCategoryCode'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Test Name Cat. Code'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Remarks'
            Title.Caption = 'Service From'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1028
        Height = 82
        Align = alTop
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          1028
          82)
        object Label25: TLabel
          Left = 5
          Top = 0
          Width = 67
          Height = 13
          Caption = 'Hospital No   :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 5
          Top = 18
          Width = 67
          Height = 13
          Caption = 'Name            :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelNo: TLabel
          Left = 76
          Top = 0
          Width = 28
          Height = 13
          Caption = 'None'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Labelname: TLabel
          Left = 76
          Top = 18
          Width = 28
          Height = 13
          Caption = 'None'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 5
          Top = 39
          Width = 68
          Height = 13
          Caption = 'Scheme         :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LabelCommunity: TLabel
          Left = 76
          Top = 39
          Width = 28
          Height = 13
          Caption = 'None'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SPB_SetDiscount: TSpeedButton
          Left = 818
          Top = 51
          Width = 104
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Set Discount'
          Enabled = False
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
          Visible = False
          OnClick = SPB_SetDiscountClick
        end
        object Label10: TLabel
          Left = 671
          Top = 5
          Width = 44
          Height = 13
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Scheme :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 156
          Top = 30
          Width = 104
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Send To Lab'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          Visible = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 979
          Top = 26
          Width = 45
          Height = 51
          Flat = True
          Glyph.Data = {
            6E110000424D6E11000000000000360000002800000026000000260000000100
            18000000000038110000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFEFEFEFAFAFAF4F4F4F1F1F1ECECECE6E6E6E2E3E2DFDFDF
            DCDDDDDBDBDBDADADADBDBDBDBDBDBDBDBDBDADBDBDADBDADADADADADBDADADA
            DADADADADADADADADADADADADADADADADADADADBDBDBDBDBDBDCDDDDE0E0E0E5
            E5E5EAEAEAECECECF4F4F4FEFEFEFFFFFFFFFFFF0000FFFFFFFFFFFFF7F7F7DC
            DCDCD4D4D4A1A1A1939093918E928C898C8A86898A8689878486888486888386
            8783848783858883858883868984878883858984868A85868A85878B86878B86
            878B86878B87878C87888C88888E898A918C8E8D8B8C939292C3C3C3CFCFCFF5
            F5F5FFFFFFFFFFFF0000FFFFFFFFFFFFFDFDFDEBECEB959295A9A6A98D978C83
            90828B9689919E8F97A4989DAB9FA2AFA6A7B5AEABBAB4AEBEBBB2C2BCB4C7BE
            B4C8C0B5C9C1B6C8C2B5C9C3B5C9C4B3C9C3B3C7C3B1C6C3B0C5C2AEC3C2ADC1
            C1AABCBAA6B9B5BCC5C5CBC5CB9E9B9DEDEDEDFCFCFCFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFF959195989D961C491B00310000300000390000420000430000
            4600004602004906004B0D004C11004C15004C1A004D1D004F20004E21004E23
            004D23004E24004D22004E20004C1F004D1C004B1A004312003D0B003E0E4274
            51CECBD0ABAAAAFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFC8C7C8A2A0A00A3E
            0A003900005800008E00009B06009E1100A41C01A82603AD3106B03C07B54508
            B64F05B85701B95E00BA6400BA6800BB6A00BA6D00B96C00B96C00B86900B667
            00B46300B35E00B15900B053019D45025D26003C09286236BFB4BEE1E1E1FFFF
            FFFFFFFF0000FFFFFFFFFFFFAEA9AE748D6F003D00005A00009C00005C00003E
            00003E00003F0000410200420700430A00450F00471300461400471800481A00
            481B00471D00471D00461D00461C00441A004319004217004115004013004414
            006F2E04AD4603592100430EAEBCB4B8B6B7FFFFFFFFFFFF0000FFFFFFFFFFFF
            B3ACB3587F54004A00019601004B000841086B8667748F7275917578957B7B98
            827E9E8884A19186A79787AA9C8BB0A48DB2A78FB4AA8FB4A891B3A992B3A892
            B4A991B1A790B0A78EB0A48DAEA58FADA575958500380F005F24069336004710
            89A393C0BBBEFFFFFFFFFFFF0000FFFFFFFFFFFFB3ACB55E8757006000008000
            00360097AA8FB7BFAFB0BCAAB2BDAEB3BFB3B5BFB7B4C0B9B4C2BDB4C1C0B2C2
            C1AFC2C4ADC2C4ACC1C4A9C1C5A7C0C4A5C0C5A5BFC3A4BDC3A5BBC1A6BBBEA6
            B8BCA6B5BBC0C2CE7F9E8E0034060486310054138AA495C0BBBDFFFFFFFFFFFF
            0000FFFFFFFFFFFFB3ABB5638F5D006400007000004200ACBCA2A7B79FA9B9A4
            ABBBA7ADBEACADBFB0AEBFB4AEC2B8AEC2BAADC2BDABC3C0AAC2C1A8C3C2A6C3
            C2A4C2C0A3C0C0A2BFBFA3BEBEA2BDBCA3BBBAA2B8B8A3B6B6A9B4B89CB3A900
            36050271270054138CA596BFBBBDFFFFFFFFFFFF0000FFFFFFFFFFFFB3ABB668
            9661006100006800004600ADC0A3A8BBA1ADBEA5ADBFA9ADC0AEAFC2B1B0C3B5
            B0C3BAB0C5BEB0C4C0AEC4C3ACC4C4ACC4C2A9C3C3ABC8C7A9C8C7A8C8C4A7C4
            C1A6C2C0A6C0BEA8BDBCA5B8B6A9B6B699B4A8003A06006222004F108DA696BE
            B9BDFFFFFFFFFFFF0000FFFFFFFFFFFFB4ABB56B9E64005B00016202004F00B0
            C5A7AABEA1ADC1A6AEC2ABB0C2B0B2C5B5B3C6BAB5C7BFB3C7C0B3C8C4B2C8C7
            B1C8C7AFC8C8B7D0D39EB6B293ADA697AFA897AEA795ABA493A9A1899E92A2B2
            AFA9B8B59BB8A9003E0700591E004B0F8CA797BFB9BDFFFFFFFFFFFF0000FFFF
            FFFFFFFFB3AAB56FA268005700025E05005600B5CBABAAC0A3AFC4A9B3C7B1BD
            CDBEBECFC3C0CFC7C0D1CEC2D2D0C1D2D2B9CECEB4CACAB7CFD1BECED3094406
            004700004900004900004A00003C00467246B0BFBFA9B3B49CBAAB0041070051
            1B00470E8DA898BEB9BCFFFFFFFFFFFF0000FFFFFFFFFFFFB4AAB571A76A0057
            00045D07005C01B9CFAEADC3A5B6C9B1A1B19F6C8C6C819A84809885829A8881
            9A8A7E9886B8C4CAC3DADBD3DCE913580F005600005B00005B00005C00005000
            387238C5D0D5A7BAB2AAB5B39DBAAA004609004C1900480E8EAA9ABDB8BBFFFF
            FFFFFFFF0000FFFFFFFFFFFFB4AAB674AA6D005C0005640A006304BED4B4B0C4
            A8B6C9B2C3D2C1477748004D00005B00005A00005900005700185E17D0D3E34B
            824D005900006402006302016403005B00276E28CAD4D8AEC0BBAABBB4ACB6B5
            9EBAAC004908005019004A0E8EAC9ABDB8BBFFFFFFFFFFFF0000FFFFFFFFFFFF
            B5AAB576AD6E00600008680C006608C3D7B9B3C7ACB8CBB4BCCFBCD8DFDB5083
            53005A00006802006801006700005E001B6C1B00600000670100670200670200
            6400116511BFCFC9B8CCC5B1C2BAAEBCB7B0B7B59FBCAB004C0900521A004C0D
            8FAE9BBDB7BAFFFFFFFFFFFF0000FFFFFFFFFFFFB5AAB678AF72006500096C10
            006B0BC8DCBFB7C9AFBDD0B8BDCFBDBCCFBFE6EAED82AD84007000168D221B8F
            2620942B1D942820952B20942B1D9127128A1E017607D9E6E2C8DAD5B3C6BEB2
            C1BBB1BEB8B3B9B7A0BDAC00530C00551B004F0F90B09CBBB5B9FFFFFFFFFFFF
            0000FFFFFFFFFFFFB5ACB67AB175006A020A7013007210CEDEC3B8CAB1C2D4BE
            D0E2CFE4F2E5E9F9EEFFFFFFB2D6B512942318992B1A972C1A992D19982C1A98
            2D1798290C901CDBEDDFEEFFFAE0F2E9DBEAE1C9D6CFB8C4BDB4B9B6A0BEAB00
            580E005A1C00551191B09CBBB6BAFFFFFFFFFFFF0000FFFFFFFFFFFFB5ACB67C
            B277006D040B731500750FD2DEC6CEDEC5E2F1DBE6F6E3E8F6E9EBF8EEEFFDF6
            FFFFFF30A543119F2D18A13419A23519A13418A134079B22A9CFB1FFFFFFE4F9
            EEE1F2E9DEECE4DCE7DFD5DFD8CCCFCDA2BFAB005A0D005F1E00581291B19CBA
            B5B8FFFFFFFFFFFF0000FFFFFFFFFFFFB7ACB77CB5790070060873130E8721E2
            F2E3E0EFD5E4F1DDE7F4E3ECF7EAF0FDF2FFFFFF5BB96F01A62B17AE3D16AD3D
            17AE3E16AD3D17AE3D0DAC362DA348FFF9FFEEFFF5E6F4EAE1ECE4DBE4DED6DD
            D7DADBD8B8D5C2007320005F1B005B1391B29BBAB3B9FFFFFFFFFFFF0000FFFF
            FFFFFFFFB7ADB87AB67800780D2491311D992FE0F1E1E2EED5E8F4DEEDF7E5F1
            FAEDFFFFFF84CF9700B22F15BC4B15BA4815BA4816BB4A15BB4A15BB4A16BC4A
            03B83C53AD6BFFFCFFEBF8EFE5EFE7E0E7E0DADFDADAD9D7B6D3BF03802D157F
            3900671C8EB19ABAB3B7FFFFFFFFFFFF0000FFFFFFFFFFFFB7ABB780BD7F158E
            232696331C982FE1F2E1E6EFD6ECF4E1F0F8E6FFFFFFB5E0C000BC3F14C55613
            C55513C45413C65405C24C0FC55314C55514C55513C55400BF3EAAC6B0FFFFFD
            EAF0E8E3E9E1DDE2DBDDDBD9B7D5BE00822C168239077F2F95B9A1B8B1B6FFFF
            FFFFFFFF0000FFFFFFFEFEFEBDB2BD8DCA901691232697321D9C30E1F1E2E9F0
            D9EFF6E1FFFFF2E1EDDD00C7470ED15E12D25F11D25E11D36100CA438CDEA914
            CE5E0DD35F11D25E11D25E0FD35F00C34BD8D5D2F9FCF6E5EAE3DFE3DCDFDDDB
            B5D5BD02872D14843A06802EA3C6AFBCB6BAFFFFFFFFFFFF0000FFFFFFFEFEFE
            C0B6C08DC98B1792262799341D9E32E1F2E2EDF1D8FEFAEAEAF1E609D45C09DC
            660FDB690FDB690EDB6900D55492E1B2FFFFFFCBE9D500D14E0EDC6A0DDB690F
            DB6904DE641AC763FDE5EEEEF0E9E3E5DDE2DEDCB4D3BB018B2F14893C058330
            9EC3ACBCB5BBFFFFFFFFFFFF0000FFFFFFFEFEFEC1B6C18BC889179225289A33
            1EA033E2F2E3F4F2DAF0F1E226D66A00DC5900DC5F00DC5F00DB5F00D95771DF
            9BFFFFFFFEFDFDFFFFFF71D99D00D95500DA5D00DA5E00DB5E00DD5557C57EF4
            EBEBE4E8E0E5E0E0B3D3BA028F30158B3C0787319BC2A9BDB5BAFFFFFFFFFFFF
            0000FFFFFFFEFEFEC1B6C188C885199427289C351FA133E2F2E3F5F1DBF1F7E3
            E0F8E7EEF9EFEDF9F2EDF9F0EDF9F0ECF7F0FFFFFFFEFDFEFCFCFCFEFDFEFFFC
            FFE5EFEBEAF1EDEBF3EEEBF4EFECF7F0E0F7E7EFEFE8E6E9E2E8E2E1B1D3B903
            9332158E3D068A3297BFA5BCB4B8FFFFFFFFFFFF0000FFFFFFFEFEFEC0B5C086
            C484199326299B3720A234E3F3E3F3F0DAF9F8E4FFFEEDFFFDF5FFFDFDFFFCFF
            FFFEFFFFFEFFFEFEFEFCFCFCFCFCFCFDFDFDFDFCFCFFFFFFFFFEFFFFFEFFFFFE
            FFFFFEFCFCFBF4EFF1EAE8E9E2E8E3E2B2D3B904933416903D078C3293BCA0BB
            B4B9FFFFFFFFFFFF0000FFFFFFFEFEFEC0B5C085C08319942A299C3620A234E2
            F2E3F4F1DBF7F7E4FCFCEAFDFDF2FDFDF9FCFCFDFDFDFDFDFDFDFDFDFDFDFDFD
            FCFCFCFDFDFDFDFDFDFCFCFCFCFCFCFDFDFCFCFCFDFDFDF9F7FBF1EEF3EAE9EB
            E2E8E5E3AFD2B803963416923F078E338EB89DBBB4B9FFFFFFFFFFFF0000FFFF
            FFFEFEFEC0B5C084BF811A932A2A9B3820A235E3F2E2F2EFD9F6F6E3FBFBEAFC
            FCF1FCFCF7FCFCFDFCFCFCFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFD
            FCFCFCFDFDFCFCFCFDFDFDF8F7FAF2F0F3EAE8ECE2E9E5E2B0D1B90498351692
            3F0790358BB499BAB2B7FFFFFFFFFFFF0000FFFFFFFEFEFEC1B6C081BC821992
            2C299A391A9E31E2F1E0F5EEDFF4F3E0F9F8E6FDFCEFFDFCF5FDFCFDFDFCFDFE
            FDFEFDFCFCFDFCFDFCFBFCFDFCFDFDFCFCFEFDFEFDFCFCFEFDFEFDFCFDFDFDF8
            F7F9F1EFF1EAE8ECE3F3E8EAA5CFB004993715934006903586B094BAB3B8FFFF
            FFFFFFFF0000FFFFFFFEFEFEC1B6C17DBA8118912D2A983B1A9D336DC378FFFA
            F4FFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFF
            FDFFFFFCFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFF6FAFFF0F7E2E3DD
            30AD5A129C3F1593400691357FAB8EBAB3B7FFFFFFFFFFFF0000FFFFFFFEFFFF
            BBB2B991C19515902C26963A29A03F1CA2390EA73411B23C11B94315C34A15CC
            5219D75A1DE0641DE86D1EEF7420F67D22FA8122FC8422FA851FF37F1DEF791C
            E77317DE6A14D46111C8580DBF4F0AB54905A93F15A4461A9D4513933F049436
            8EAE9AB3AFB2FFFFFFFFFFFF0000FFFFFFFFFFFFB6B4B6D1D5CF14953120953A
            279D3F27A44429AC482AB54E2ABD542CC55A2ECD612ED56831DD7231E47831E9
            7D33EE8534F18934F18B34F18A33ED8732E98330E27D2EDB762DD46E2ACA6826
            C05F24B7591FAC501BA44A199B450D983E1E9840A99FA6CDCDCDFFFFFFFFFFFF
            0000FFFFFFFFFFFFFEFFFEA598A2A0CFA900931F0D9D3416A43B16AC4017B646
            18BE4C1AC7511ACF591BD8611DE0691FE8701FED7622F47C22F58124F88422F6
            8423F28022EF7C23E87720E0711ED9691CD2631BC65A18BE5314B34D10AB4505
            A63D00993093AC9C877E84FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFDD
            DDDDB3A7B0E1D5DC86CA9A74CB8E76CF9079D5957BDA997DDE9D7EE2A280E2A5
            80E6A980E7AB7FE7AD80E9AE81E6AF81E6AE81E6AF80E4AD7FE2AC7EDFA97CDC
            A379D69E74CF9770C7906AC18A65B78160B27C73A985B5A2AF978F94F5F5F5FF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF1F1F1BFBCBEBAAFB6BA
            AEB6BBAFB8BDB0B9BCAFB8BDAFB8BDAFB7BBACB5BAACB5BAACB5B9AAB2B9A9B2
            B7A9B2B6A7AFB6A7AEB4A5ADB3A4ABB2A4ACB0A2ABAEA0A9ADA0A9AB9FA6AA9D
            A5A99DA5A79CA3A79DA4C4C3C3F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
          OnClick = SpeedButton2Click
        end
        object Label_SchemeName: TLabel
          Left = 722
          Top = 5
          Width = 80
          Height = 13
          Caption = 'Scheme Name'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SPB_SetCreditScheme: TSpeedButton
          Left = 422
          Top = -1
          Width = 202
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Set Credit && Discount Scheme (F1)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          OnClick = SPB_SetCreditSchemeClick
        end
        object SPB_PharmacyDiscount: TSpeedButton
          Left = 148
          Top = 0
          Width = 108
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Pharmacy Dis. (%)'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          Visible = False
          OnClick = SPB_PharmacyDiscountClick
        end
        object SPB_VerifiedOk: TSpeedButton
          Left = 418
          Top = 57
          Width = 108
          Height = 24
          Caption = 'Verified (Ok) (F1)'
          Enabled = False
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          Visible = False
          OnClick = SPB_VerifiedOkClick
        end
        object SPB_CancelTestList: TSpeedButton
          Left = 422
          Top = 27
          Width = 140
          Height = 27
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Cancel Test List '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          OnClick = SPB_CancelTestListClick
        end
        object Edi_DisPer: TEdit
          Left = 676
          Top = 30
          Width = 41
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '0'
          Visible = False
          OnChange = Edi_DisPerChange
          OnKeyPress = Edi_DisPerKeyPress
        end
        object GroupBox1: TGroupBox
          Left = 262
          Top = -1
          Width = 154
          Height = 27
          TabOrder = 1
          object Label22: TLabel
            Left = 10
            Top = 5
            Width = 37
            Height = 13
            Caption = 'Today :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DateEditXSCDate: TDateEditX
            Left = 53
            Top = 2
            Width = 67
            Height = 21
            TabOrder = 0
            ControlData = {
              545046300A5444617465456469745200044C656674023503546F700202057769
              64746802430B4461746541442E5965617203D2070C4461746541442E4D6F6E74
              6802020A4461746541442E44617902060B4461746556532E59656172030A080C
              4461746556532E4D6F6E7468020A0A4461746556532E44617902180C466F6E74
              2E43686172736574070C414E53495F434841525345540A466F6E742E436F6C6F
              72070C636C57696E646F77546578740B466F6E742E48656967687402F509466F
              6E742E4E616D6506065461686F6D610A466F6E742E5374796C650B000B506172
              656E74436F6C6F72090A506172656E74466F6E74080000}
          end
          object ButtonADVSregInvestigation: TButton
            Left = 123
            Top = 3
            Width = 26
            Height = 17
            Caption = 'AD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonADVSregInvestigationClick
          end
        end
        object CB_CategoryWiseDisPer: TCheckBox
          Left = 527
          Top = 59
          Width = 147
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Is Category Wise Dis (%) :'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = CB_CategoryWiseDisPerClick
        end
        object DBLCB_Category: TDBLookupComboBox
          Left = 676
          Top = 55
          Width = 140
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Color = clMenu
          DropDownWidth = 200
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'TENC_TNCATEGORYCODE'
          ListField = 'TENC_TESTNAMECATEGORY'
          ListSource = DS_TNCategory
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = DBLCB_CategoryClick
          OnKeyDown = DBLCB_CategoryKeyDown
        end
        object Edit_TestName: TEdit
          Left = 229
          Top = 59
          Width = 187
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnChange = Edit_TestNameChange
        end
        object Edit3: TEdit
          Left = 1
          Top = 59
          Width = 79
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 5
        end
        object Edit4: TEdit
          Left = 82
          Top = 59
          Width = 50
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 6
        end
        object Edit6: TEdit
          Left = 134
          Top = 59
          Width = 93
          Height = 21
          Color = clBtnFace
          ReadOnly = True
          TabOrder = 7
        end
        object CB_SetZeroDis: TCheckBox
          Left = 720
          Top = 31
          Width = 97
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Caption = 'Set Zero(0) Dis.'
          Enabled = False
          TabOrder = 8
          Visible = False
        end
        object GroupBox2: TGroupBox
          Left = 262
          Top = 26
          Width = 154
          Height = 32
          TabOrder = 9
          object RB_All: TRadioButton
            Left = 7
            Top = 2
            Width = 32
            Height = 13
            Caption = '&All'
            Checked = True
            TabOrder = 0
            TabStop = True
            OnClick = RB_AllClick
          end
          object RB_Verified: TRadioButton
            Left = 7
            Top = 16
            Width = 58
            Height = 14
            Caption = '&Verified'
            TabOrder = 1
            OnClick = RB_VerifiedClick
          end
          object RB_NonVerified: TRadioButton
            Left = 71
            Top = 16
            Width = 80
            Height = 13
            Caption = '&Non-Verified'
            TabOrder = 2
            OnClick = RB_NonVerifiedClick
          end
        end
        object Btn_CategoryModify: TBitBtn
          Left = 819
          Top = 25
          Width = 128
          Height = 25
          Caption = 'Category Modification'
          DoubleBuffered = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 10
          OnClick = Btn_CategoryModifyClick
        end
      end
      object cb_amt: TCheckBox
        Left = 567
        Top = 32
        Width = 108
        Height = 17
        Caption = 'Set Discount  (%) :'
        TabOrder = 1
        OnClick = cb_amtClick
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 643
    Width = 1036
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end
      item
        Width = 50
      end>
    ParentColor = True
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1036
    Height = 39
    Align = alTop
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 21
      Top = 6
      Width = 155
      Height = 14
      Caption = '-> Non Discountable Service'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 21
      Top = 21
      Width = 108
      Height = 14
      Caption = '-> Not Send to Lab'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnSave: TBitBtn
      Left = 813
      Top = 1
      Width = 111
      Height = 37
      Align = alRight
      Caption = 'Save (F12)'
      DoubleBuffered = True
      Glyph.Data = {
        B60D0000424DB60D000000000000360000002800000030000000180000000100
        180000000000800D000001000000010000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA793CC1782CAE733EBD8F65BE
        8F62BD8E62BD8E62BD8E62BD8E62BD8E62BD8E62BC8E62BC8E62BD8E62BC8F64
        AF7641BE7325B87134FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676767373
        737070708B8B8B8A8A8A8A8A8A8A8A8A8989898989898A8A8A89898989898989
        89898989898C8C8C737373707070707070FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC88B47F1B941A29179D2DCECDEE3E8DEE4E8DFE4E9E0E5EAE1E6EBE1E6
        EBE2E7EDE3E8EDE4E8EEE5E9EED4DDEDA49682EAA218BF7727FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF858585ABABAB8D8D8DDFDFDFE4E4E4E5E5E5E5E5E5
        E6E6E6E7E7E7E7E7E7E9E9E9E9E9E9E9E9E9E9E9E9E1E1E19393939898987474
        74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD9754EDB649AF997FD0D4DCB8
        AEAFABA0A3A4999D9D9394948A8E8D8488867D8180787B786E737C7477C7C9D2
        B4A18AE8A122C88132FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909090A9A9
        A9949494D5D5D5AFAFAFA2A2A29A9A9A9494948C8C8C8686867F7F7F79797970
        7070747474CBCBCB9D9D9D9797977D7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD09858EFBB52B19C83DCE0E8E2E2DFDFDEDDDEDDDCDDDCDBDCDCDADBDA
        D9DAD9D8D9D9D8D8D8D7DADAD8DBE0E8B4A28CEAA62CCB8437FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF919191AEAEAE999999E2E2E2E2E2E2DEDEDEDDDDDD
        DCDCDCDBDBDBDADADAD9D9D9DADADAD9D9D9DADADAE1E1E19F9F9F9B9B9B8080
        80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD39C5CEFBF5BBAA58DDCDDE5BC
        B4B5B0A6A9AAA0A4A49A9D9C9396958D918F868A8A8285817A7E867F83D2D4DD
        BEAD97EAAC36CB883CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF959595B2B2
        B2A1A1A1DEDEDEB4B4B4A8A8A8A2A2A29C9C9C9494948E8E8E8888888383837C
        7C7C818181D6D6D6A9A9A9A0A0A0838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD5A05FF0C262BDAA92E4E8F0E0DDDCDBD7D8D8D5D6D7D3D4D4D0D1D1CF
        D0D0CDCDCECBCDCBC8C9CCCACBE2E5EDBFAF9BEDB13ECE8D3FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9A9A9AB6B6B6A6A6A6EAEAEADDDDDDD8D8D8D5D5D5
        D4D4D4D2D2D2CFCFCFCDCDCDCBCBCBC8C8C8CACACAE7E7E7ADADADA6A6A68787
        87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7A362F2C569C2AF98ECEEF7EA
        E8E7E6E3E3E4E2E2E2E0E0E1DEDFDFDCDDDDDBDBDCD8DAD9D6D7DCDADAEAEDF5
        C3B3A1EEB645D29144FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DB9B9
        B9ACACACF0F0F0E8E8E8E4E4E4E3E3E3DFDFDFDEDEDEDCDCDCDBDBDBD8D8D8D6
        D6D6DADADAEEEEEEB0B0B0AAAAAA8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDAA664F4C870C9B8A2EDF0F9DAD6D7D2CCCECECACBCAC6C7C7C1C4C2BD
        C1BEBABDBCB5B9B4B0B3B9B6B8E8ECF4CBBDABF0B94DD59747FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9F9F9FBDBDBDB5B5B5F3F3F3D7D7D7CECECECBCBCB
        C7C7C7C2C2C2BEBEBEBCBCBCB6B6B6B0B0B0B7B7B7EEEEEEB9B9B9AEAEAE9090
        90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBAB69F5CD78BDAD98E9ECF6FA
        F9F7FAF9F8FBFAF9FCFBFAFDFCFAFEFDFBFFFEFCFFFEFDFFFFFDFFFFFDEAEDF7
        BDAF9FF2BF56D89D4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3C1C1
        C1A9A9A9EEEEEEF8F8F8F8F8F8F9F9F9FAFAFAFCFCFCFCFCFCFDFDFDFEFEFEFF
        FFFFFFFFFFEFEFEFACACACB2B2B2949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFDDAD6CF6D388CFA463AD9072A18771A38972A38972A38972A38972A389
        72A38972A38871A38972A18671AD9071CFA76AF4C668DA9F4FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA5A5A5C8C8C89C9C9C8D8D8D858585868686868686
        8787878686868787878686868585858686868383838D8D8D9E9E9EBABABA9797
        97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0B16FF3D38FF8C65EE2B76AB0
        A4A0C8BCB0C4B8ADC4B8ADC4B8ADC4B8ACC7BBAFC8BEB3CBC1B5B1A5A1E1B769
        F9C965F2C76FDDA553FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAC8C8
        C8B9B9B9ADADADA4A4A4BBBBBBB7B7B7B7B7B7B6B6B6B5B5B5BABABABCBCBCBF
        BFBFA6A6A6ADADADBCBCBCBBBBBB9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3B572F5D794F5C764DFBD7BBFC1CEDEDEE0D9D9DBD9D9DBD9D9DBDDDD
        DECCCBCEB8B6BBC5C3C7BCBECBE0BF7CF5C96BF2CC76E0AA55FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFADADADCCCCCCBABABAB4B4B4C3C3C3DEDEDED9D9D9
        D9D9D9DADADADDDDDDCCCCCCB6B6B6C5C5C5C1C1C1B6B6B6BCBCBCC1C1C1A0A0
        A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5B975F6D999F5CA6AE2C281C7
        C6D1E2E1DFDEDCDBDEDCDBDDDCDAE8E9EAACA096A5814EB4966EA3A3B3EACA87
        F5CB70F3CF7CE2AE5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0CECE
        CEBDBDBDB8B8B8C8C8C8E1E1E1DCDCDCDCDCDCDBDBDBE8E8E89F9F9F7B7B7B91
        9191A8A8A8C1C1C1BFBFBFC3C3C3A4A4A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8BD78F7DB9DF6CD70E5C686CDCCD6E7E6E4E3E2E1E3E2E1E3E1E0EAEC
        F0C2B19EECC065E9C882A1A3B7EECE8EF7CE75F5D381E6B35DFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFB5B5B5D1D1D1C0C0C0BCBCBCCECECEE6E6E6E2E2E2
        E2E2E2E1E1E1EEEEEEAEAEAEB5B5B5BDBDBDA8A8A8C4C4C4C1C1C1C6C6C6A9A9
        A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAC07AF9DEA0F8D075E8CA8CD3
        D3DDECECEAE8E8E7E8E8E7E8E7E6F0F4F7C1B2A1E7BD64E8C882A7A7BCF0D294
        F8D27BF8D88AE7B259FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6D4D4
        D4C3C3C3C1C1C1D5D5D5ECECECE8E8E8E8E8E8E8E8E8F4F4F4B0B0B0B2B2B2BD
        BDBDABABABC9C9C9C7C7C7CCCCCCA8A8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFECC480F8E1A5F8D272E9CC8ADADAE2F1F1EFEDEDECEDEDECEDECEBF8FA
        FBB9B1A7B09261C0A980B6B6C5F0D493FAD984EDC36AE9BB78FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBCBCBCD7D7D7C4C4C4C3C3C3DCDCDCF0F0F0EEEEEE
        EDEDEDECECECFAFAFAAEAEAE8B8B8BA2A2A2BABABACACACACCCCCCB8B8B8B4B4
        B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDC47BFDEFCEFCE2A2EFDBAFE3
        E8F6FAFEFFF6FAFFF6FAFFF6FBFFFBFFFFE5E9EFC7CBD7D4D6E0E1E5F3F2E0B6
        F2C86FEABB6FFDF8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9EAEA
        EAD8D8D8D5D5D5EAEAEAFEFEFEFBFBFBFAFAFAFBFBFBFFFFFFEBEBEBCDCDCDD8
        D8D8E9E9E9D9D9D9BCBCBCB4B4B4F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE9B861EFCA80F2CC83EECB85E9CC96EFD298EFD298EFD298EFD298EFD1
        97F4D59BF8DA9EF7D99DE9CA93EBC57EEEC67FFDF9F2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFAEAEAEBFBFBFC2C2C2C1C1C1C4C4C4C9C9C9CACACA
        C9C9C9CACACAC9C9C9CBCBCBD0D0D0D0D0D0C2C2C2BCBCBCBEBEBEF8F8F8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object BtnCancel: TBitBtn
      Left = 924
      Top = 1
      Width = 111
      Height = 37
      Align = alRight
      Caption = 'Cancel (ESC)'
      DoubleBuffered = True
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
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6569BA717FE06B
        6EBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8484849A9A9A8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFB9BADD7A83E66A80FF273CD9EBECF6FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF7677C58788D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAA1A1A1A7A7A7797979F0F0F0
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CAFAFAFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A1D34D54DE2536EB0B
        20D9E3E3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCEE0E16C0B1B2DE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB8B8B88484847F7F7F727272EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE5E5E5656565C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE9E9F41519BF060EDB0412D87B7DC3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF2C34BA1822C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE6363637070706E6E6E9E9E9E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171716B6B6BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5BBA0002CF03
        09D8080FC1DADAECFFFFFFFFFFFFFFFFFFFFFFFF7A7CC50C21DF9C9DD2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8989896969696F6F6F636363E2E2E2FFFFFFFFFFFFFFFFFFFFFFFF9D
        9D9D747474B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFE1E1FB00001D00106D52326B1FFFFFFFFFFFFFFFF
        FFA9AAD30C28E52733BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD6666666A6A6A6C6C6C
        696969FFFFFFFFFFFFFFFFFFBDBDBD797979717171FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9F411
        12B50000D10103CE5A5CB9FFFFFFB1B2D90B1FD40C26DFD2D1E7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFEEEEEE626262696969696969888888FFFFFFC4C4C46F6F6F77
        7777DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E3F21516B50000D20101C44D4EB8070E
        C30514E16F70BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA646464
        6B6B6B636363818181646464747474949494FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5F5FA2D2DB00001CC0000CC0103D13639B3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F86C6C6C6666666868686A6A6A737373FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2F23236B70207CF0103D20001
        C97777C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA
        7373736868686A6A6A6565659B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF71
        74CA0F1ED10717E40510DE0E13BA0507C10608CC6162BEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9C6F6F6F7575757171716464646262626767678E
        8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9B9BD24F58D23D57F71D3CFA0D26F01921BFEBEBF6C4C4
        E5191BBE2325D44A4ABBF9F9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2838383909090888888
        7E7E7E6A6A6AF0F0F0D4D4D46868686F6F6F7C7C7CFAFAFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8487D0A2ABF78D9DFF6A
        7FFF3A55F9313BC1EFEFF7FFFFFFFFFFFFFDFDFE5B5CBF4041D1494AC4A2A2D5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF9C9C9CBFBFBFB9B9B9A6A6A68F8F8F767676F3F3F3FFFFFFFFFFFFFEFEFE88
        8888787878767676B8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8788CCB6BBF5A3ACFB6973E17678C8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC8C8E65555C16061CC5A5ABDADAED9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9C9CCACACAC0C0C09595959A9A9A
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D67F7F7F8383837E7E7EC2C2
        C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFEF9192D29A9DE295
        96D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDF77C7DC9
        6162C58383CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFE5E5E5A4A4A4B0B0B0ADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF2F2F29B9B9B848484A3A3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = BtnCancelClick
    end
    object Edit5: TEdit
      Left = 2
      Top = 8
      Width = 11
      Height = 12
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clRed
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 2
      Top = 23
      Width = 11
      Height = 12
      TabStop = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clBlue
      TabOrder = 3
    end
  end
  object Query_Process: TOraQuery
    Left = 294
    Top = 3
  end
  object Query_GetReturnMedicine: TOraQuery
    Left = 465
    Top = 304
  end
  object Query_TempProcess: TOraQuery
    Left = 333
    Top = 3
  end
  object DataSourceTablePTTestTemp: TDataSource
    Left = 717
    Top = 276
  end
  object Query_Community: TOraQuery
    SQL.Strings = (
      'Select COMM_Community Community From HS_COMM_Community '
      'where COMM_CommunityId=:CommunityId'
      'Order By COMM_Priority')
    Left = 379
    Top = 306
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CommunityId'
      end>
  end
  object DataSource_Community: TDataSource
    DataSet = Query_Community
    Left = 339
    Top = 346
  end
  object Query_User: TOraQuery
    SQL.Strings = (
      'Select UserId,UserName From UserMain')
    Left = 170
    Top = 267
  end
  object QueryPatientTestOLd: TOraQuery
    SQL.Strings = (
      
        'Select A.CrModifyDate,A.BillDetailId,A.BillNo,A.RateType,A.BillD' +
        'ate,A.PatientId,B.InPatientId,A.PatientTestId,B.ModifyBy,'
      
        'A.Service,A.ServiceType,A.Qty,A.Amount,A.Qty*A.Amount as TotalAm' +
        't,A.Dis,A.VatAmt,'
      '(A.Qty*A.Amount*A.Dis/100) as Discount,'
      '((A.Qty*A.Amount)-(A.Qty*A.Amount*A.Dis/100)) as NetTotal'
      'from BillDetail A,PatientReceive B'
      'Where (A.BillNo=B.BillNo) And'
      '           (B.PatientID=:PatientID) And'
      '           (A.SERVICETYPE<>'#39'CANCEL'#39') AND'
      '           (B.Paytype='#39'CREDIT'#39') And'
      '           (B.RecDate>=:FromDate) AND'
      '           (B.RecDate<=:ToDate)'
      'Order By  A.BillDate,A.BillNo,A.BillType ')
    Left = 501
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PatientID'
        Value = '93300'
      end
      item
        DataType = ftString
        Name = 'FromDate'
        Value = '2059/08/16'
      end
      item
        DataType = ftString
        Name = 'ToDate'
        Value = '2058/08/16'
      end>
    object QueryPatientTestOLdCRMODIFYDATE: TStringField
      FieldName = 'CRMODIFYDATE'
      Size = 10
    end
    object QueryPatientTestOLdBILLDETAILID: TFloatField
      FieldName = 'BILLDETAILID'
    end
    object QueryPatientTestOLdBILLNO: TStringField
      FieldName = 'BILLNO'
      Size = 15
    end
    object QueryPatientTestOLdRATETYPE: TStringField
      FieldName = 'RATETYPE'
      Size = 8
    end
    object QueryPatientTestOLdBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object QueryPatientTestOLdPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object QueryPatientTestOLdINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryPatientTestOLdPATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object QueryPatientTestOLdMODIFYBY: TFloatField
      FieldName = 'MODIFYBY'
    end
    object QueryPatientTestOLdSERVICE: TStringField
      FieldName = 'SERVICE'
      Size = 10
    end
    object QueryPatientTestOLdSERVICETYPE: TStringField
      FieldName = 'SERVICETYPE'
      Size = 75
    end
    object QueryPatientTestOLdQTY: TFloatField
      FieldName = 'QTY'
    end
    object QueryPatientTestOLdAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object QueryPatientTestOLdTOTALAMT: TFloatField
      FieldName = 'TOTALAMT'
    end
    object QueryPatientTestOLdDIS: TFloatField
      FieldName = 'DIS'
    end
    object QueryPatientTestOLdVATAMT: TFloatField
      FieldName = 'VATAMT'
    end
    object QueryPatientTestOLdDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object QueryPatientTestOLdNETTOTAL: TFloatField
      FieldName = 'NETTOTAL'
    end
    object QueryPatientTestOLdUser: TStringField
      FieldKind = fkLookup
      FieldName = 'User'
      LookupDataSet = Query_User
      LookupKeyFields = 'USERID'
      LookupResultField = 'USERNAME'
      KeyFields = 'MODIFYBY'
      Lookup = True
    end
  end
  object Query_Subprocess: TOraQuery
    Left = 260
    Top = 285
  end
  object Query_ActDoctor: TOraQuery
    SQL.Strings = (
      
        'Select BD.BillDetailId,BD.Service,TN.TestName,TN.TestNameId,BD.A' +
        'MOUNT,BD.QTY,BD.DIS,'
      
        'PWC.COMMAMTA,PWC.COMMRATEA,(BD.AMOUNT-PWC.COMMAMTA) as ActualAmt' +
        ','
      'DC.DRCOMMID,PWC.POSITIONWISECOMMID, PWC.PositionName,PWC.Name'
      
        'From BillDetail BD,TestName TN,DoctorCommession DC,PositionWiseC' +
        'ommession PWC'
      'where BD.SERVICE=TN.TESTNAMECODE '
      '      and TN.TESTNAMEID=DC.TESTNAMEID '
      '      and DC.DRCOMMID=PWC.DRCOMMID'
      '      and TN.IsDiscountable='#39'Y'#39' '
      '      and BD.INPATIENTID=:InpatientId'
      '      and BD.service=:TestNameCode'
      '      and PWC.ISHOSPITALPART='#39'N'#39'            ')
    Left = 49
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'InpatientId'
      end
      item
        DataType = ftString
        Name = 'TestNameCode'
      end>
  end
  object DS_ActulaDoctor: TDataSource
    DataSet = Query_ActDoctor
    Left = 45
    Top = 352
  end
  object Queryblank: TOraQuery
    Left = 412
    Top = 312
  end
  object Query_ServiceCharge: TOraQuery
    SQL.Strings = (
      'Select * from ServiceCharge'
      'order by billdate desc')
    Left = 140
    Top = 329
  end
  object DataSource_ServiceCharge: TDataSource
    DataSet = Query_ServiceCharge
    Left = 173
    Top = 365
  end
  object QueryScheme: TOraQuery
    SQL.Strings = (
      'select * from HS_SCHE_Scheme'
      'Where 99=99'
      'order by SCHE_scheme')
    Left = 528
    Top = 224
  end
  object DS_Scheme: TDataSource
    DataSet = QueryScheme
    Left = 560
    Top = 224
  end
  object DS_Community: TDataSource
    DataSet = QueryCommunity
    Left = 376
    Top = 200
  end
  object QueryCommunity: TOraQuery
    SQL.Strings = (
      'Select * From HS_COMM_Community '
      'Order By COMM_Priority')
    Left = 344
    Top = 200
  end
  object Query_TNCategory: TOraQuery
    SQL.Strings = (
      'Select * From HS_TENC_TestNameCategory'
      'Order by TENC_TestNameCategory')
    Left = 760
    Top = 200
  end
  object DS_TNCategory: TDataSource
    DataSet = Query_TNCategory
    Left = 813
    Top = 188
  end
  object Table_TempDetailPTest: TTable
    Left = 104
    Top = 168
  end
  object Querytemp: TQuery
    Left = 56
    Top = 248
  end
  object Querypatienttest1: TQuery
    Left = 920
    Top = 168
  end
  object Table_FinalBill: TTable
    Left = 864
    Top = 216
  end
end
