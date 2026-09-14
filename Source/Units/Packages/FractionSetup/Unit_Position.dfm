object Form_Position: TForm_Position
  Left = 382
  Top = 191
  AutoSize = True
  Caption = 'Position'
  ClientHeight = 322
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 404
    Height = 30
    Align = alTop
    TabOrder = 0
    DesignSize = (
      404
      30)
    object BtnNew: TBitBtn
      Left = 178
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&New'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnNewClick
    end
    object BitBtnSave: TBitBtn
      Left = 256
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Save'
      DoubleBuffered = True
      Enabled = False
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
      TabOrder = 1
      OnClick = BitBtnSaveClick
    end
    object BitBtnCancel: TBitBtn
      Left = 334
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Cancel'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtnCancelClick
    end
  end
  object PageControlPosition: TPageControl
    Left = 0
    Top = 30
    Width = 404
    Height = 292
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChanging = PageControlPositionChanging
    ExplicitWidth = 412
    ExplicitHeight = 296
    object TabSheet1: TTabSheet
      Caption = ' &Position'
      DesignSize = (
        396
        264)
      object Label9: TLabel
        Left = 5
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Search Key'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 59
        Width = 404
        Height = 214
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSourcePosition
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'POSITION'
            Title.Alignment = taCenter
            Title.Caption = 'Position'
            Width = 223
            Visible = True
          end>
      end
      object EditSearch: TEdit
        Left = 5
        Top = 24
        Width = 164
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = EditSearchKeyPress
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = -4
        Width = 403
        Height = 9
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 43
        Width = 404
        Height = 9
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 3
      end
      object Button1: TButton
        Left = 172
        Top = 24
        Width = 23
        Height = 19
        Caption = '&Go'
        TabOrder = 4
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&New Position'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object LabelMedicine: TLabel
        Left = 18
        Top = 83
        Width = 43
        Height = 13
        Caption = 'Position :'
      end
      object Bevel1: TBevel
        Left = 4
        Top = 14
        Width = 445
        Height = 4
      end
      object Bevel2: TBevel
        Left = 6
        Top = 224
        Width = 445
        Height = 4
      end
      object EditPosition: TEdit
        Left = 67
        Top = 79
        Width = 295
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
    object QueryPosition: TOraQuery
    SQL.Strings = (
            'SELECT * From Position Order By Position')
    Left = 240
    Top = 48
  end
object DataSourcePosition: TDataSource
    DataSet = QueryPosition
    Left = 272
    Top = 48
  end
    object QueryProcess: TOraQuery
    SQL.Strings = (
            ' Select * From MemberType Order By MemberType')
    Left = 269
    Top = 73
  end
end
