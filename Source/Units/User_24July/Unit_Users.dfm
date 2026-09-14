object Form_Users: TForm_Users
  Left = 0
  Top = 0
  Caption = 'Users'
  ClientHeight = 391
  ClientWidth = 509
  Color = 16764108
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl_Users: TPageControl
    Left = 0
    Top = 40
    Width = 509
    Height = 351
    ActivePage = TabSheet_New
    Align = alClient
    TabOrder = 0
    OnChange = PageControl_UsersChange
    object TabSheet_List: TTabSheet
      Caption = 'List'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 27
        Width = 457
        Height = 224
        DataSource = DS_List
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'USERID'
            Title.Caption = 'SN.'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USERNAME'
            Title.Caption = 'User'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXPDATE'
            Title.Caption = 'Exp Date'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FULLNAME'
            Title.Caption = 'Full Name'
            Width = 140
            Visible = True
          end>
      end
      object Edit_SUserId: TEdit
        Left = 13
        Top = 5
        Width = 51
        Height = 21
        NumbersOnly = True
        TabOrder = 1
        OnChange = Edit_SUserIdChange
      end
      object Edit_SUserName: TEdit
        Left = 67
        Top = 5
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = Edit_SUserNameChange
      end
      object Edit_SExpDate: TEdit
        Left = 166
        Top = 5
        Width = 100
        Height = 21
        TabOrder = 3
        OnChange = Edit_SExpDateChange
        OnKeyPress = Edit_SExpDateKeyPress
      end
      object Edit_SFullName: TEdit
        Left = 267
        Top = 5
        Width = 141
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = Edit_SFullNameChange
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 304
        Width = 501
        Height = 19
        Panels = <
          item
            Width = 200
          end
          item
            Width = 50
          end>
      end
    end
    object TabSheet_New: TTabSheet
      Caption = 'New'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 119
        Top = 23
        Width = 59
        Height = 13
        Caption = 'User Name :'
      end
      object Label2: TLabel
        Left = 125
        Top = 47
        Width = 53
        Height = 13
        Caption = 'Password :'
      end
      object Label3: TLabel
        Left = 85
        Top = 71
        Width = 93
        Height = 13
        Caption = 'Confirm Password :'
      end
      object Label4: TLabel
        Left = 126
        Top = 263
        Width = 52
        Height = 13
        Caption = 'Exp-Date :'
      end
      object Label5: TLabel
        Left = 125
        Top = 238
        Width = 53
        Height = 13
        Caption = 'Full Name :'
      end
      object ADVS_ExpDate: TSpeedButton
        Left = 257
        Top = 261
        Width = 23
        Height = 21
        Caption = 'BS'
        OnClick = ADVS_ExpDateClick
      end
      object Label6: TLabel
        Left = 87
        Top = 189
        Width = 91
        Height = 13
        Caption = 'Staff Department :'
      end
      object Label7: TLabel
        Left = 119
        Top = 166
        Width = 59
        Height = 13
        Caption = 'User Name :'
      end
      object SpeedButton4: TSpeedButton
        Left = 341
        Top = 187
        Width = 20
        Height = 20
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          F000FFFFFFFFFFFFF000FFFFF000FFFFF000FFFFF0F0FFFFF000FFFFF0F0FFFF
          F000FF0000F0000FF000FF0FFFFFFF0FF000FF0000F0000FF000FFFFF0F0FFFF
          F000FFFFF0F0FFFFF000FFFFF000FFFFF000FFFFFFFFFFFFF000FFFFFFFFFFFF
          F000}
        OnClick = SpeedButton4Click
      end
      object Label8: TLabel
        Left = 117
        Top = 214
        Width = 66
        Height = 13
        Caption = 'Group Name :'
      end
      object Edit_UserName: TEdit
        Left = 191
        Top = 19
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Edit_Password: TEdit
        Left = 191
        Top = 43
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 1
      end
      object Edit_ConfirmPassword: TEdit
        Left = 191
        Top = 68
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        PasswordChar = '*'
        TabOrder = 2
      end
      object DEX_ExpDate: TDateEditX
        Left = 191
        Top = 261
        Width = 65
        Height = 21
        TabOrder = 4
        ControlData = {
          545046300A5444617465456469745200044C65667403BF0003546F700305010B
          4461746541442E5965617203DB070C4461746541442E4D6F6E746802050A4461
          746541442E44617902170B4461746556532E596561720314080C446174655653
          2E4D6F6E746802020A4461746556532E44617902090000}
      end
      object Edit_FullName: TEdit
        Left = 191
        Top = 234
        Width = 145
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 191
        Top = 89
        Width = 145
        Height = 69
        Caption = 'User'
        TabOrder = 5
        object Rb_Doctor: TRadioButton
          Left = 16
          Top = 14
          Width = 65
          Height = 17
          Caption = 'Is Doctor'
          TabOrder = 0
          OnClick = Rb_DoctorClick
        end
        object Rb_Nurse: TRadioButton
          Left = 16
          Top = 32
          Width = 57
          Height = 17
          Caption = 'Is Nurse'
          TabOrder = 1
          OnClick = Rb_NurseClick
        end
        object Rb_Other: TRadioButton
          Left = 16
          Top = 50
          Width = 49
          Height = 17
          Caption = 'Other'
          TabOrder = 2
          OnClick = Rb_OtherClick
        end
      end
      object Dblcb_DocNurse: TDBLookupComboBox
        Left = 191
        Top = 162
        Width = 145
        Height = 21
        KeyField = 'NURSEID'
        ListField = 'NAME'
        ListSource = Ds_DocNurse
        TabOrder = 6
      end
      object Dblcb_StaffDep: TDBLookupComboBox
        Left = 190
        Top = 183
        Width = 145
        Height = 21
        KeyField = 'STAFFDEPARTMENTID'
        ListField = 'STAFFDEPARTMENT'
        ListSource = Ds_StaffDep
        TabOrder = 7
      end
      object Dblc_Gname: TDBLookupComboBox
        Left = 191
        Top = 210
        Width = 145
        Height = 21
        KeyField = 'GROUPSETUPID'
        ListField = 'GROUPNAME'
        ListSource = Ds_Ganame
        TabOrder = 8
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 509
    Height = 40
    Align = alTop
    TabOrder = 1
    DesignSize = (
      509
      40)
    object BB_New: TBitBtn
      Left = 128
      Top = 4
      Width = 106
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&New [F2]'
      DoubleBuffered = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFFCFCFC
        F6F6F6F0F0F0E9E9E9E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E9E9E9EFEFEFF4F4F4FFFFFFFBFBFBF2F2F2BBBBBBB1B1B1AEAEAEAEAEAEAE
        AEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEB1B1B1B7B7B7EFEFEFFFFFFFFAFAFA
        F1A964F1AB67F1AC69F2AE6CF2AE6CF2AE6DF2AE6DF2AE6DF2AE6CF1AC69F1AB
        67F1A964B1B1B1E9E9E9FFFFFFF9F9F9F1A861ECECECECECECECECECECECECEC
        ECECECECECECECECECECECECECECECECECF1A861AEAEAEE7E7E7FFFFFFF9F9F9
        F0A65EEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDF0A65EAEAEAEE7E7E7FFFFFFF9F9F9F0A359EBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBF0A359AEAEAEE7E7E7FFFFFFF9F9F9
        F0A154EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEA
        EAF0A154AEAEAEE7E7E7FFFFFFF9F9F9F0A154EBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAF0A154AEAEAEE7E7E7FFFFFFF9F9F9
        F0A359EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEECEC
        ECF0A359AEAEAEE7E7E7FFFFFFF9F9F9F0A760F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0EDEDEDF0A760AEAEAEE7E7E7FFFFFFF9F9F9
        F0A760F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EDED
        EDF0A760AFAFAFE8E8E8FFFFFFF9F9F9F0AB68F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0F0F0F0AB68B5B5B5EEEEEEFFFFFFF9F9F9
        F1B172F3F3F3F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F1B172F1B172F1B1
        72F1B172EBEBEBF4F4F4FFFFFFFAFAFAF2B77DF6F6F6F6F6F6F6F6F6F6F6F6F6
        F6F6F6F6F6F6F6F6F3B77EF7E0CEF2B77DEBEBEBF4F4F4FAFAFAFFFFFFFBFBFB
        F4BD89F9F9F9FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4BE89F4BE89EBEB
        EBF4F4F4FBFBFBFEFEFEFFFFFFFCFCFCF5C596F5C596F5C596F5C596F5C596F5
        C596F5C596F5C596F5C596EEEEEEF4F4F4FAFAFAFEFEFEFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BB_NewClick
    end
    object BB_Previlage: TBitBtn
      Left = 234
      Top = 4
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&Previlege'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BB_PrevilageClick
    end
    object BB_Save: TBitBtn
      Left = 324
      Top = 4
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&Save [F12]'
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
      TabOrder = 2
      OnClick = BB_SaveClick
    end
    object BB_Close: TBitBtn
      Left = 414
      Top = 4
      Width = 90
      Height = 30
      Anchors = [akTop, akRight]
      Caption = '&Close [ESC]'
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
      TabOrder = 3
      OnClick = BB_CloseClick
    end
  end
  object Query_UserEntry: TOraQuery
    Left = 400
    Top = 120
  end
  object Query_List: TOraQuery
    SQL.Strings = (
      
        'select userid,username,upassword,expdate,fullname,Userdepid,doct' +
        'orid,nurseid,GroupId'
      'from usermain'
      'where DepType='#39'PATHOLOGY'#39
      'Order by UserName')
    Left = 40
    Top = 240
  end
  object DS_List: TDataSource
    DataSet = Query_List
    Left = 56
    Top = 144
  end
  object Ds_StaffDep: TDataSource
    DataSet = Query_StaffDep
    Left = 80
    Top = 96
  end
  object Ds_DocNurse: TDataSource
    DataSet = Query_DocNurse
    Left = 376
    Top = 104
  end
  object Query_DocNurse: TOraQuery
    SQL.Strings = (
      'select NurseId,Name from nurse')
    Left = 388
    Top = 176
  end
  object Query_StaffDep: TOraQuery
    SQL.Strings = (
      'select * from staffdepartment')
    Left = 404
    Top = 264
  end
  object Ds_Ganame: TDataSource
    DataSet = Query_Gname
    Left = 24
    Top = 168
  end
  object Query_Gname: TOraQuery
    SQL.Strings = (
      'select * from GroupSetup')
    Left = 80
    Top = 136
  end
end
