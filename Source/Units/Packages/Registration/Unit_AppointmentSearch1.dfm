object Frame_AppointmentSearch: TFrame_AppointmentSearch
  Left = 0
  Top = 0
  Width = 964
  Height = 604
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 604
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 962
      Height = 89
      Align = alTop
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 2
      object Label2: TLabel
        Left = 19
        Top = 16
        Width = 23
        Height = 13
        Caption = 'Date'
      end
      object SpeedButton1: TSpeedButton
        Left = 117
        Top = 10
        Width = 23
        Height = 22
        Caption = 'AD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object Label3: TLabel
        Left = 18
        Top = 69
        Width = 57
        Height = 13
        Caption = 'Department'
      end
      object Label4: TLabel
        Left = 265
        Top = 15
        Width = 39
        Height = 13
        Caption = 'Doctor :'
      end
      object Img: TImage
        Left = 142
        Top = 13
        Width = 17
        Height = 17
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000BB010000BB010000000000000000
          0000DFDFDFBFBFBFBFBFBFBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
          BFBFBFC0C0C0F0F0F0FFFFFFFFFFFFFFFFFFC1C1C1F7F7F7F6F6F6F6F6F6F6F6
          F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6DADADAB7B7B7F3F3F3FFFFFFFF
          FFFFC1C1C1F6F6F6F5F5F5F5F5F5DEDEDEF3F2F1D8C1AFF4F4F4DEDEDEF4F4F4
          F5F5F5CBCBCBFCFCFCB9B9B9F6F6F6FFFFFFC0C0C0F7F7F7F6F6F6F6F6F6F6F6
          F6F6F6F6D8A174E4C3A9F6F6F6F6F6F6EFEFF5DEDEE5C6C6CDDCDCDCC2C2C2FF
          FFFFC0C0C0F8F7F7F5F4F2F5F2F0DEDAD6F3EEEADDD4CCCD8346D5B193F6F4F5
          0705D50606D60000D5F8F8F8C3C3C3FFFFFFC0C0C0F4EDE7E6CFB9DCB490D39C
          6BCD854ACB7E3EC97733C87530F1E6DC070791E0E0F100008EF9F9F9C2C2C2FF
          FFFFC0C0C0F9F9F9F9F9F9F9F9F9DFDFDFF8F8F8DCD4CCCD8245D8BFAAF8F6F7
          0F0BDB0707DC0707DCFAFAFAC2C2C2FFFFFFC0C0C0FAFAFAFAFAFAFAFAFAFAFA
          FAF9F9F8D69A68EDD8C6FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBFBFBC2C2C2FF
          FFFFC0C0C0FBFBFBFBFBFBFBFBFBDFDFDFF9F8F7DBCEC4FAFAFADFDFDFFAF8F9
          FFC1E0FBFBFBFBFBFBFCFCFCC2C2C2FFFFFFBCBDBCFCFCFCFCFCFCFCFCFCFCFC
          FCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDBEBFBEFF
          FFFF406D401F97220288020690090D991616A2251BA8311EAC381EAC381BA831
          16A2250D99160690092AA32F4D7A4DFFFFFF406D40239B26008B0006930C109E
          1E19A82F22B34129BB4E2EBD52A4E0B181CF8DA1D9A759B75D2CA6314D7A4DFF
          FFFF416D41249D28008C0108951012A1231DAD3729BB4E35C86435C86429BB4E
          1DAD3712A1230895102DA7334E7A4EFFFFFF416D414BB1528BAC8B8BAC8B8EB0
          8F73D48683E0998EE7A88EE8A884E09A8BAC8B8BAC8B8BAC8B50BB574D784DFF
          FFFF91AA914C754CEEEEEEEEEEEEE3E6E3406D40406D40406D40406D40406D40
          EEEEEEEEEEEEEEEEEE416D4197B097FFFFFFFFFFFFF6F6F69E9E9E9E9E9EA3A3
          A3FDFDFDFDFDFDFDFDFDFDFDFDFDFDFD9E9E9E9E9E9E9E9E9EFDFDFDFFFFFFFF
          FFFF}
        OnClick = ImgClick
      end
      object Label6: TLabel
        Left = 44
        Top = 16
        Width = 4
        Height = 13
        Caption = ':'
      end
      object Label7: TLabel
        Left = 80
        Top = 69
        Width = 4
        Height = 13
        Caption = ':'
      end
      object Label8: TLabel
        Left = 320
        Top = 15
        Width = 4
        Height = 13
        Caption = ':'
      end
      object Label22: TLabel
        Left = 18
        Top = 47
        Width = 32
        Height = 13
        Caption = 'Doctor'
      end
      object Label23: TLabel
        Left = 80
        Top = 46
        Width = 4
        Height = 13
        Caption = ':'
      end
      object DateEditX1: TDateEditX
        Left = 51
        Top = 10
        Width = 65
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674023303546F70020A0B4461
          746541442E5965617203DC070C4461746541442E4D6F6E746802070A44617465
          41442E44617902050B4461746556532E596561720315080C4461746556532E4D
          6F6E746802030A4461746556532E44617902150000}
      end
      object dblcb_department: TDBLookupComboBox
        AlignWithMargins = True
        Left = 87
        Top = 65
        Width = 178
        Height = 21
        DropDownWidth = 200
        KeyField = 'DEPID'
        ListField = 'DEPNAME'
        ListSource = DS_Department
        TabOrder = 1
        OnClick = dblcb_departmentClick
      end
      object BB_View: TBitBtn
        Left = 490
        Top = 47
        Width = 145
        Height = 41
        Caption = 'View'
        DoubleBuffered = True
        Glyph.Data = {
          AA040000424DAA04000000000000360000002800000014000000130000000100
          18000000000074040000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFF2E6D6E3C39DDEB483E1B37FE1B586E8C4A3F2E6DCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F5E3B98D
          E89738F29B32FA9F30FDA332FCA034F69932E69637E4BA8CFBF9F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F3E0AB6CF39533FCA446FD
          AC52FDAE51FCAF51FCB052FDAD4FFCAA42F49A2CE0AA6CFBFAF8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDBC86F49D2FFDB049FBB158FDAD50FDA8
          41FCA13EFDA741FBAF4EFBB156FFB049F49D2EEAC090FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF6E8D8F29834FFAF48FBB958FEB64BFBA93AFDC580FECF9C
          FEC074F5A944F7B251FFB252FFAE42F19D2DF4E4D0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEFCBA3F6A33BFFB95DFFB958FAB755F9E2C0FFFEFDFFFFFFFFFDFAFA
          DBB4FAB147FFB048F9A84DF79F2CF5CE93FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          EFB97AFAB248FFC263FCAE47F8D0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9
          F3FEE6C9FAE0CCFDE4C2FFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCEEA952F7
          B84CFCC661F7A941F8E0C5FFFFFFFFFFFFFAF6F3F2EDE6F5F2EFF3F2EDCBC6B7
          CFC8B4C6C4AFF2F2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF6C47FF7BE54FECD
          60F7B147F0D6B9FFFFFFFFFFFFFEF5E8F8C87EF9BB51FFC556FEC257FAC658F1
          BF48F2C56CFFFDFAFFFFFFFFFFFFFFFFFFFFFFFFF7D297F7BE50FFD267FEC35B
          F3C57EF5E8D3FFFFFFFFFFFFF8E8D0F1BA54FFD56FFFD06BFDD471FFD05CFAC1
          58FEFDFAFFFFFFFFFFFFFFFFFFFFFFFFFCEEDAF8C367FFD467FDD26EFFCB5DF4
          D28EEBDBBBEFE5D0F0DDB9ECB854FECD5FFDCA61FBCC69FCC45AFAB754FFFCF9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D99DFBCB50FDD86EFED470FDD469F9CD
          5FF9CC5EFACE63FACE66F8D46DFDD76AFED96EFAD361F8C062FFFDFBFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFAF3FBD483FFD059FED96FFFDC71FFDF73FBDC72
          FDDE76FDDB75FCDC6FFCD566FBD060FCD256F9C660FFFDFBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFBF5FAE4ACF8DD85FDD962FEDE67FDDF65FCDF64FC
          DD62FADF7FF9E7B7FBF1D8F4D477FBC14BFFFDFAFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDF7DEFEECBAFEE7A6FEE89DFEE8A6FDEDBAFDF6
          E0FFFFFFFFFFFFFCF8EAF0D58CFEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentDoubleBuffered = False
        TabOrder = 2
        OnClick = BB_ViewClick
      end
      object Chb_Doctor: TCheckListBox
        Left = 307
        Top = 4
        Width = 182
        Height = 85
        ItemHeight = 13
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 270
        Top = 67
        Width = 36
        Height = 17
        Caption = 'ALL'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object GroupBox1: TGroupBox
        Left = 491
        Top = 1
        Width = 145
        Height = 46
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 5
        object Label19: TLabel
          Left = 27
          Top = 7
          Width = 94
          Height = 13
          Caption = 'Registered Patients'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 25
          Top = 26
          Width = 116
          Height = 13
          Caption = 'Non Registered Patients'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 5
          Top = 3
          Width = 16
          Height = 21
          Color = clDefault
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 5
          Top = 25
          Width = 16
          Height = 21
          Color = clWhite
          TabOrder = 1
        end
      end
      object GroupBox2: TGroupBox
        Left = 640
        Top = 2
        Width = 155
        Height = 85
        TabOrder = 6
        object Label11: TLabel
          Left = 27
          Top = 9
          Width = 63
          Height = 13
          Caption = 'New Patients'
        end
        object Label13: TLabel
          Left = 27
          Top = 26
          Width = 115
          Height = 13
          Caption = 'Follow Up Patients (F/P)'
        end
        object Label15: TLabel
          Left = 27
          Top = 44
          Width = 115
          Height = 13
          Caption = 'Follow Up Patients (F/F)'
        end
        object Label21: TLabel
          Left = 27
          Top = 63
          Width = 27
          Height = 13
          Caption = 'Break'
        end
        object Edit3: TEdit
          Left = 7
          Top = 6
          Width = 16
          Height = 21
          Color = clLime
          TabOrder = 0
        end
        object Edit4: TEdit
          Left = 7
          Top = 22
          Width = 16
          Height = 21
          Color = clSkyBlue
          TabOrder = 1
        end
        object Edit5: TEdit
          Left = 7
          Top = 39
          Width = 16
          Height = 21
          Color = clOlive
          TabOrder = 2
        end
        object Edit7: TEdit
          Left = 7
          Top = 60
          Width = 16
          Height = 21
          Color = clPurple
          TabOrder = 3
        end
      end
      object Edit_Doctor: TEdit
        Left = 86
        Top = 42
        Width = 178
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        OnChange = Edit_DoctorChange
        OnKeyPress = Edit_DoctorKeyPress
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 90
      Width = 962
      Height = 513
      Align = alClient
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        962
        513)
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 960
        Height = 48
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          960
          48)
        object Label1: TLabel
          Left = 52
          Top = 11
          Width = 45
          Height = 13
          Caption = 'App. No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 112
          Top = 11
          Width = 61
          Height = 13
          Caption = 'Patient No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 187
          Top = 11
          Width = 76
          Height = 13
          Caption = 'Patient Name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image1: TImage
          Left = 13
          Top = 16
          Width = 35
          Height = 29
          Center = True
          Picture.Data = {
            07544269746D617096040000424D960400000000000036000000280000001200
            000014000000010018000000000060040000120B0000120B0000000000000000
            0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8EAEED8EBEFD8E9EDD8E9ECD8E9EC0000D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8EB
            F0D7EAF0D7EAEFD7EAF0D8EAEDD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8EAEED7EBF1D8ECF1D8ECF0D8EAEDD8E9ECD8EEF4D5E5E9DAC1A0DFB47ED8
            D2C0D8EBEFD8E9ED0000D8E9ECD8E9ECD8E9ECD9EAEED8EEF6D6EDF7D6E8F0D5
            E6ECD4E8F0D6EDF7D6F1FDD6E4E6DEB685F49730FB911AE7A357DCE1DBD8ECF2
            0000D8E9ECD8E9EBD8EBF0D5ECF7D3DDDBDCCAAFE8BC8BE1B27EDABB91D9CDB6
            D9D7CBDDBA87F6982EF99F42F8972DE9963EDEDED1D7ECF30000D8E9ECD8EBEF
            D9EAEFE1CDB0E7AC64F5A240FEA231F99E2CF8A132F3A746F3AB52F3A23CF3A2
            42F69F43F2932BDAB68BD8E9EFD8EAEF0000D8E9EED6ECF5DDCDB4FAA746FBA3
            32F79E31F9A13BF0A248F49D38F99D32FDA439FCAB43F4A745F5A037E5BE89D7
            E8ECD7EBF1D8E9EC0000D6ECF2DADCD2F2AE5AFFA533F7A742EFC388F6E3CFF6
            E9DBFAE4C4F4C083EF9E44FDAD44FBA53EE5B87AD8E9EDD8EEF7D8E9ECD8E9EC
            0000D7EBF3E9C68FFEA631F8A742FBCA91FBF9F5F9FFFFFAFFFFFDFFFFFCF9F1
            F2CE97F3A642FBA83CDFBC88D6EDF7D8EBF1D8E9ECD8E9EC0000DAE3DEEBB66A
            FCAA31F8BB66EFEFE4F9FFFFFBFDFDFCFDFCF9FCFFF8FFFFF9F0DDECAE61F9A7
            31E8BA73D8E5E7D8ECF2D8E9ECD8E9EC0000DDDECEF1B258F8AD3EF2C583F4FE
            FFFBFFFEFCFEFDFCFDFDFFFFFBFBFDFFF7F8F5EABF86FBA631EDBA6DD9E1DBD7
            ECF3D8E9ECD8E9EC0000DCDED2F6B95BF8B242E7BB80FAF6F6FFFFFFFAFDFDFC
            FEFDFEFDFAFDFFFFF5F5ECE5BA7DFAA938ECBA73DAE2DED7ECF2D8E9ECD8E9EC
            0000D9E8EAE7C68CFCB33DF1B65FE9D8C7F6FCFFFDFFFFFFFFFDFDFFFFEEFCFC
            E6DBBDE9B262FCB740E9C788D7E8F0D8EBF1D8E9ECD8E9EC0000D7ECF4E2D5B7
            FDB851FEC152E8C471D8D8C9E4EDF1F0F2FAECEDEDDFD9BBE9C273FDC04FFCC2
            52E4D7AED6ECF5D7EAEED8E9ECD8E9EC0000D7E9F0DDE5E2F5CE84FFC44BF9CB
            52E9C773E5C795DFC7A5D6C393EAC670FFCD57FFC84FECCD8FDAE9EBD6EBF1D8
            E9ECD8E9ECD8E9EC0000D8E9EDD6EBF4E1E8DBF7D182FFC955FFD55EFDD55DFA
            D159F6D25CFDD95BFDD25BF1D084DBE5E1D6ECF5D8E9ECD8E9ECD8E9ECD8E9EC
            0000D8E9ECD8E9EDD6EBF5DEE8E3EDDAA6F6D474FAD55FFCD65CFDD761FBD970
            EBDEAADBE6DED7EDF5D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9EC
            D7E9EDD7EBF2D9EAEDDEE6D9E2E4CBE2E2C9E0E4CFDEE6DAD9E9ECD7EAF2D8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD7E9
            EED6EAF2D7EAF2D7EAF2D7EAF2D6EAF2D7E9EED8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9EC0000D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            0000}
        end
        object Label10: TLabel
          Left = 537
          Top = 5
          Width = 39
          Height = 13
          Caption = 'Doctor :'
        end
        object Label_Doc: TLabel
          Left = 582
          Top = 5
          Width = 80
          Height = 13
          Caption = '##########'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 339
          Top = 5
          Width = 64
          Height = 13
          Caption = 'Department :'
        end
        object Label_Dep: TLabel
          Left = 408
          Top = 5
          Width = 80
          Height = 13
          Caption = '##########'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 340
          Top = 32
          Width = 30
          Height = 13
          Caption = 'Date :'
        end
        object Label_Date: TLabel
          Left = 375
          Top = 32
          Width = 80
          Height = 13
          Caption = '##########'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 472
          Top = 32
          Width = 29
          Height = 13
          Caption = 'Time :'
        end
        object Label_Time: TLabel
          Left = 507
          Top = 32
          Width = 40
          Height = 13
          Caption = '#####'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label18: TLabel
          Left = 571
          Top = 32
          Width = 55
          Height = 13
          Caption = 'Order No. :'
        end
        object Label_Order: TLabel
          Left = 632
          Top = 32
          Width = 32
          Height = 13
          Caption = '####'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 676
          Top = 9
          Width = 36
          Height = 13
          Caption = 'SHIFT :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BB_Status: TBitBtn
          Left = 839
          Top = 2
          Width = 120
          Height = 41
          Margins.Left = 0
          Margins.Top = 6
          Margins.Right = 0
          Margins.Bottom = 6
          Anchors = [akTop, akRight]
          Caption = 'Register'
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
          OnClick = BB_StatusClick
        end
        object Edit_SearchAppId: TEdit
          Left = 52
          Top = 27
          Width = 58
          Height = 21
          TabOrder = 1
          OnChange = Edit_SearchAppIdChange
          OnClick = Edit_SearchAppIdClick
          OnEnter = Edit_SearchAppIdEnter
          OnExit = Edit_SearchAppIdExit
          OnKeyDown = Edit_SearchAppIdKeyDown
        end
        object Edit_SearchPatientId: TEdit
          Left = 114
          Top = 27
          Width = 60
          Height = 21
          TabOrder = 2
          OnChange = Edit_SearchPatientIdChange
          OnClick = Edit_SearchPatientIdClick
          OnEnter = Edit_SearchPatientIdEnter
          OnExit = Edit_SearchPatientIdExit
          OnKeyDown = Edit_SearchPatientIdKeyDown
        end
        object Edit_SearchPatientName: TEdit
          Left = 180
          Top = 27
          Width = 135
          Height = 21
          TabOrder = 3
          OnChange = Edit_SearchPatientNameChange
          OnClick = Edit_SearchPatientNameClick
          OnEnter = Edit_SearchPatientNameEnter
          OnExit = Edit_SearchPatientNameExit
          OnKeyDown = Edit_SearchPatientNameKeyDown
        end
        object DBLCB_Shift: TDBLookupComboBox
          Left = 676
          Top = 25
          Width = 87
          Height = 21
          DropDownWidth = 150
          KeyField = 'SHIFTNAME'
          ListField = 'SHIFTNAME'
          ListSource = DS_Shift
          TabOrder = 4
          OnClick = DBLCB_ShiftClick
        end
      end
      object DBGrid_Appoinment: TDBGrid
        Left = 6
        Top = 53
        Width = 956
        Height = 462
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_Appoinment
        GradientStartColor = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid_AppoinmentDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AppId1'
            Title.Alignment = taCenter
            Title.Caption = 'App. No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DocT1'
            Title.Alignment = taCenter
            Title.Caption = 'Doctor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PatientName1'
            Title.Alignment = taCenter
            Title.Caption = 'Patient Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PatientID1'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PatientPhone1'
            Title.Caption = 'Phone No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QueueNo1'
            Title.Caption = 'Queue No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'WalkIn1'
            Title.Alignment = taCenter
            Title.Caption = 'Walk In'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'AppId2'
            Title.Alignment = taCenter
            Title.Caption = 'App. No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DocT2'
            Title.Alignment = taCenter
            Title.Caption = 'Doctor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PatientName2'
            Title.Alignment = taCenter
            Title.Caption = 'Patient Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 76
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PatientID2'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PatientPhone2'
            Title.Caption = 'Phone No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QueueNo2'
            Title.Caption = 'Queue No.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'WalkIn2'
            Title.Alignment = taCenter
            Title.Caption = 'Walk In'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object DBGrid_PatientSearch: TDBGrid
        Left = 55
        Top = 52
        Width = 688
        Height = 157
        DataSource = DS_SearchApp
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnDblClick = DBGrid_PatientSearchDblClick
        OnKeyDown = DBGrid_PatientSearchKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'APPID'
            Title.Caption = 'App. Id'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Caption = 'Patient No.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Caption = 'Patient Name'
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APPDATE'
            Title.Caption = 'App. Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'APPTIME'
            Title.Caption = 'App. Time'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEPNAME'
            Title.Caption = 'Dep. Name'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCNAME'
            Title.Caption = 'Doctor Name'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUENO'
            Title.Caption = 'Order No.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOBILENO'
            Title.Caption = 'Mobile No.'
            Visible = True
          end>
      end
    end
    object DBGrid_DocList: TDBGrid
      Left = 189
      Top = 200
      Width = 680
      Height = 157
      DataSource = DS_Doctor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnDblClick = DBGrid_PatientSearchDblClick
      OnKeyDown = DBGrid_PatientSearchKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'DOCCODE'
          Title.Alignment = taCenter
          Title.Caption = 'Doc. Code'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESIG'
          Title.Alignment = taCenter
          Title.Caption = 'Desig.'
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCNAME'
          Title.Alignment = taCenter
          Title.Caption = 'Doctor Name'
          Width = 191
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEPNAME'
          Title.Alignment = taCenter
          Title.Caption = 'Dep. Name'
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCTORTYPE'
          Title.Alignment = taCenter
          Title.Caption = 'Type'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOBILENO'
          Title.Alignment = taCenter
          Title.Caption = 'Mobile No.'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PHONENO'
          Title.Alignment = taCenter
          Title.Caption = 'Phone No.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SPECIALIZATION'
          Title.Alignment = taCenter
          Title.Caption = 'Specialization'
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUALIFICATION'
          Title.Alignment = taCenter
          Title.Caption = 'Qualification'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMCNO'
          Title.Alignment = taCenter
          Title.Caption = 'NMC No.'
          Visible = True
        end>
    end
  end
  object MonthCalendar1: TMonthCalendar
    Left = 232
    Top = 142
    Width = 225
    Height = 160
    Date = 41159.640345567130000000
    TabOrder = 1
    Visible = False
    OnDblClick = MonthCalendar1DblClick
  end
    object Query_Department: TOraQuery
    SQL.Strings = (
            'SELECT * FROM DEPARTMENT'
            'Where IsClinicalDep='#39'Y'#39)
    Left = 424
    Top = 16
  end
object DS_Department: TDataSource
    DataSet = Query_Department
    Left = 480
    Top = 8
  end
  object DS_Doctor: TDataSource
    DataSet = Query_Doctor
    Left = 374
    Top = 56
  end
    object Query_Doctor: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            
              'SELECT DocId,DocCode,Desig,DocName,Qualification,Specialization,' +
              'MobileNo,PhoneNo,NMCNo,DepId,'
            
              '(Select DepName From Department where DepId=D.DepId) as DepName,' +
              'Decode(IsConsultant,'#39'Y'#39','#39'Consultant'#39','#39'Medical Officer'#39') as Docto' +
              'rType'
            'From DOCTOR D'
            'WHERE DActive='#39'Y'#39
            'Order by DocName')
    Left = 336
    Top = 32
  end
object DS_Appoinment: TDataSource
    DataSet = TT_Appoinment
    Left = 576
    Top = 480
  end
    object Query_Appoinment: TOraQuery
    Left = 488
    Top = 480
  end
  object TT_Appoinment: TOraTable
    TableName = 'tbl_appoinment.db'
    Left = 400
    Top = 480
  end
  object Query_Temp: TOraQuery
    Left = 648
    Top = 480
  end
object DS_SearchApp: TDataSource
    DataSet = Query_SearchApp
    Left = 440
    Top = 184
  end
    object Query_SearchApp: TOraQuery
    SQL.Strings = (
            
              'select a.appid,(case when a.patientid>0 then a.patientid else a.' +
              'nonpatientid end) as PATIENTID,(case when a.patientid>0 then (se' +
              'lect p.patientname from patientmain p where p.patientid=a.patien' +
              'tid) else (select n.patientname from nonpatient n where n.nonpat' +
              'ientid=a.nonpatientid) end) as patientname,'
            
              'dep.depname,doc.docname,a.appdate,a.apptime,a.queno from appoint' +
              'ment a, department dep, doctor doc where a.doctorid=doc.docid an' +
              'd a.departmentid=dep.depid and'
            '9=9'
            'order by a.appid desc')
    Left = 352
    Top = 184
  end
  object Query_Shift: TOraQuery
    SQL.Strings = (
            'select * from shift')
    Left = 776
    Top = 144
  end
object DS_Shift: TDataSource
    DataSet = Query_Shift
    Left = 808
    Top = 128
  end
end
