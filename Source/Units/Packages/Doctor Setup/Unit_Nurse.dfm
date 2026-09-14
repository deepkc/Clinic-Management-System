object Form_Nurse: TForm_Nurse
  Left = 422
  Top = 217
  Caption = 'Nurse List'
  ClientHeight = 428
  ClientWidth = 676
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
    Width = 676
    Height = 30
    Align = alTop
    TabOrder = 0
    DesignSize = (
      676
      30)
    object BtnNew: TBitBtn
      Left = 443
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&New'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 0
      OnClick = BtnNewClick
    end
    object BitBtnSave: TBitBtn
      Left = 518
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Save'
      DoubleBuffered = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      OnClick = BitBtnSaveClick
    end
    object BitBtnCancel: TBitBtn
      Left = 599
      Top = 3
      Width = 75
      Height = 24
      Anchors = [akTop, akRight]
      Caption = '&Cancel'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtnCancelClick
    end
  end
  object PageControl_Nurse: TPageControl
    Left = 0
    Top = 30
    Width = 676
    Height = 398
    ActivePage = TabSheetEntry
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChanging = PageControl_NurseChanging
    object TabSheetList: TTabSheet
      Caption = 'List'
      DesignSize = (
        668
        370)
      object Label9: TLabel
        Left = 5
        Top = 8
        Width = 54
        Height = 13
        Caption = 'Search Key'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 59
        Width = 668
        Height = 311
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_Nurse
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
            FieldName = 'NURS_NURSECODE'
            Title.Alignment = taCenter
            Title.Caption = 'Code'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NURS_NAME'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 152
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NURS_ADDRESS'
            Title.Alignment = taCenter
            Title.Caption = 'Address'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NURS_PHONENO'
            Title.Alignment = taCenter
            Title.Caption = 'Phone No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NURS_MOBILENO'
            Title.Alignment = taCenter
            Title.Caption = 'Mobile No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NURS_HOSJOININGDATE'
            Title.Alignment = taCenter
            Title.Caption = 'Joining Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 84
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
        Width = 675
        Height = 9
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 43
        Width = 676
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
      object CB_InactiveNurse: TCheckBox
        Left = 208
        Top = 24
        Width = 142
        Height = 17
        Caption = 'Including Inactive Nurse'
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        OnClick = CB_InactiveNurseClick
      end
    end
    object TabSheetEntry: TTabSheet
      Caption = '&New Entry'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object LabelMedicine: TLabel
        Left = 120
        Top = 94
        Width = 54
        Height = 13
        AutoSize = False
        Caption = 'Name '
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 96
        Top = 46
        Width = 445
        Height = 4
      end
      object Bevel2: TBevel
        Left = 98
        Top = 256
        Width = 445
        Height = 4
      end
      object Label1: TLabel
        Left = 120
        Top = 118
        Width = 54
        Height = 13
        AutoSize = False
        Caption = 'Address'
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 120
        Top = 144
        Width = 54
        Height = 13
        AutoSize = False
        Caption = 'Phone No'
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 120
        Top = 169
        Width = 54
        Height = 13
        AutoSize = False
        Caption = 'Mobile No'
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 121
        Top = 197
        Width = 75
        Height = 13
        AutoSize = False
        Caption = 'Hos. Join Date.'
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object BitBtn_JoinDate: TSpeedButton
        Left = 269
        Top = 192
        Width = 23
        Height = 22
        Caption = 'AD'
      end
      object Edit_Name: TEdit
        Left = 175
        Top = 90
        Width = 344
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 49
        ParentFont = False
        TabOrder = 0
      end
      object Edit_Address: TEdit
        Left = 175
        Top = 114
        Width = 344
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 1
      end
      object Edit_PhoneNo: TEdit
        Left = 175
        Top = 140
        Width = 344
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 30
        ParentFont = False
        TabOrder = 2
      end
      object Edit_MobileNo: TEdit
        Left = 175
        Top = 165
        Width = 344
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 40
        ParentFont = False
        TabOrder = 3
      end
      object DateEditX_HosJoinDate: TDateEditX
        Left = 199
        Top = 193
        Width = 69
        Height = 21
        TabOrder = 4
        ControlData = {
          545046300A5444617465456469745200044C65667403C70003546F7003C10005
          776964746802450B4461746541442E5965617203DA070C4461746541442E4D6F
          6E746802090A4461746541442E44617902150B4461746556532E596561720313
          080C4461746556532E4D6F6E746802060A4461746556532E44617902050C466F
          6E742E43686172736574070C414E53495F434841525345540A466F6E742E436F
          6C6F7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D65
          06065461686F6D610A466F6E742E5374796C650B000A506172656E74466F6E74
          080000}
      end
      object CB_Active: TCheckBox
        Left = 175
        Top = 65
        Width = 54
        Height = 17
        Caption = 'Active '
        Checked = True
        Color = clScrollBar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 5
      end
      object grp1: TGroupBox
        Left = 309
        Top = 190
        Width = 210
        Height = 48
        Caption = 'Nurse'
        TabOrder = 6
        object CB_Circular: TCheckBox
          Left = 16
          Top = 16
          Width = 57
          Height = 17
          Caption = 'Circular'
          TabOrder = 0
        end
        object CB_Scrub: TCheckBox
          Left = 119
          Top = 16
          Width = 50
          Height = 17
          Caption = 'Scrub'
          TabOrder = 1
        end
      end
    end
  end
  object Query_Nurse: TOraQuery
    SQL.Strings = (
      
        'Select NURS_NURSEID,NURS_NURSECODE,NURS_ISActive,NURS_Name,NURS_' +
        'Address,NURS_PhoneNo,NURS_MobileNo,NURS_HosJoiningDate'
      
        ',NURS_ISCIRCULARNURSE,NURS_ISSCRUBNURSE From HS_NURS_NURSE where' +
        ' NURS_ISActive='#39'Y'#39' Order by NURS_Name')
    Left = 328
    Top = 16
  end
  object DS_Nurse: TDataSource
    DataSet = Query_Nurse
    Left = 360
    Top = 16
  end
  object QueryProcess: TOraQuery
    SQL.Strings = (
      ' Select * From MemberType Order By MemberType')
    Left = 229
    Top = 9
  end
  object Query_SubProcess: TOraQuery
    Left = 404
    Top = 46
  end
end
