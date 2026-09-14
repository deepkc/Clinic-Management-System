object Frame_Registration: TFrame_Registration
  Left = 0
  Top = 0
  Width = 950
  Height = 645
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 33
    Width = 950
    Height = 612
    ActivePage = tim
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object tim: TTabSheet
      Caption = 'New'
      object Shape1: TShape
        Left = 768
        Top = 19
        Width = 138
        Height = 142
      end
      object SpeedButton1: TSpeedButton
        Left = 768
        Top = 162
        Width = 140
        Height = 22
        Caption = 'Browse'
        OnClick = SpeedButton1Click
      end
      object Image_Main: TImage
        Left = 770
        Top = 21
        Width = 134
        Height = 138
        Stretch = True
      end
      object Label29: TLabel
        Left = 840
        Top = 207
        Width = 52
        Height = 13
        Caption = 'Police case'
      end
      object Panel_AccountFrame: TPanel
        Left = 357
        Top = 8
        Width = 395
        Height = 529
        BevelOuter = bvNone
        TabOrder = 4
      end
      object MonthlyCalendar: TMonthCalendar
        Left = -500
        Top = 43
        Width = 225
        Height = 160
        CalColors.TitleTextColor = 16767449
        Date = 40763.497987708330000000
        TabOrder = 3
        Visible = False
      end
      object GB_BasicInformation: TGroupBox
        Left = 3
        Top = 10
        Width = 348
        Height = 184
        Color = clBtnFace
        Ctl3D = True
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 0
        object Label4: TLabel
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
        object Label8: TLabel
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
        object Label3: TLabel
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
        object Label1: TLabel
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
          ListSource = DSReligion
          TabOrder = 7
        end
        object DBLCB_title: TDBLookupComboBox
          Left = 88
          Top = 27
          Width = 79
          Height = 21
          KeyField = 'TITLEID'
          ListField = 'TITLE'
          ListSource = DSTitle
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
        object DBLCB_Ethnicity: TDBLookupComboBox
          Left = 88
          Top = 149
          Width = 241
          Height = 21
          KeyField = 'TITLEID'
          ListField = 'TITLE'
          ListSource = DSTitle
          TabOrder = 9
        end
      end
      object GB_Others: TGroupBox
        Left = 3
        Top = 384
        Width = 348
        Height = 155
        Color = clBtnFace
        Ctl3D = True
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 2
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
          ListSource = DSOccupation
          TabOrder = 0
          OnKeyDown = DBLCB_OccupationKeyDown
        end
        object DBLCB_Education: TDBLookupComboBox
          Left = 88
          Top = 52
          Width = 241
          Height = 21
          KeyField = 'EDUCATIONID'
          ListField = 'EDUCATION'
          ListSource = DSEducation
          TabOrder = 1
          OnKeyDown = DBLCB_EducationKeyDown
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
          ListSource = DS_Relation
          TabOrder = 3
          OnKeyDown = DBLCB_RelationKeyDown
        end
      end
      object GB_Address: TGroupBox
        Left = 3
        Top = 197
        Width = 348
        Height = 184
        Color = clBtnFace
        Ctl3D = True
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        TabOrder = 1
        object Label11: TLabel
          Left = 38
          Top = 32
          Width = 46
          Height = 13
          Caption = 'Country :'
        end
        object Label12: TLabel
          Left = 44
          Top = 56
          Width = 40
          Height = 13
          Caption = 'District :'
        end
        object Label13: TLabel
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
        object Label14: TLabel
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
          ListSource = DSCountry
          TabOrder = 0
        end
        object DBLCB_District: TDBLookupComboBox
          Left = 88
          Top = 51
          Width = 241
          Height = 21
          KeyField = 'DISTRICTID'
          ListField = 'DISTRICTNAME'
          ListSource = DSDistrict
          TabOrder = 1
        end
        object DBLCB_VDC: TDBLookupComboBox
          Left = 88
          Top = 75
          Width = 241
          Height = 21
          KeyField = 'VDCID'
          ListField = 'VDCNAME'
          ListSource = DSVDC
          TabOrder = 2
          OnKeyDown = DBLCB_VDCKeyDown
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
    end
    object TabSheet2: TTabSheet
      Caption = 'List'
      ImageIndex = 1
      DesignSize = (
        942
        584)
      object Label2: TLabel
        Left = 13
        Top = 38
        Width = 115
        Height = 21
        Alignment = taCenter
        AutoSize = False
        Caption = 'Patient Search'
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
      object DBGrid1: TDBGrid
        Left = 13
        Top = 65
        Width = 942
        Height = 519
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DS_List
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TITLE'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FNAME'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LNAME'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTNAME'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENDER'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGE'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AGETYPE'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOB'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEPCODE'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REGDATE'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARITALSTATUS'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PHONENO'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCCODE'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NEXTTOKIN'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPANY'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMARKS'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISTRICTNAME'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VDCNAME'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OCCUPATIONNAME'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COUNTRYNAME'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RELATION'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDUCATION'
            Width = 65
            Visible = True
          end>
      end
      object Edit_Search: TEdit
        Left = 134
        Top = 38
        Width = 257
        Height = 21
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object BB_Save: TBitBtn
      Left = 872
      Top = 0
      Width = 78
      Height = 33
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Save'
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
      TabOrder = 0
      OnClick = BB_SaveClick
    end
  end
  object QueryBlank: TQuery
    Left = 696
    Top = 24
  end
  object QueryList: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      
        'SELECT PM.*,PM.AGE||'#39' '#39'||SUBSTR(PM.AGETYPE,1,1)||'#39' '#39'||SUBSTR(PM.' +
        'GENDER,1,1) AGEGENDER,T.TITLEID,D.DISTRICTNAME,V.VDCNAME,O.OCCUP' +
        'ATIONNAME,C.COUNTRYNAME ,RL.RELATION,E.EDUCATION,RG.RELIGION'
      
        'FROM PATIENTMAIN PM,DISTRICT D,VDC V,OCCUPATION O,COUNTRY C,RELA' +
        'TION RL'
      ',EDUCATION E,RELIGION RG,TITLE T'
      'WHERE PM.DISTRICTID=D.DISTRICTID(+)'
      'AND PM.TITLE=T.TITLE(+)'
      'AND PM.VDCID=V.VDCID(+)'
      'AND PM.OCCUPATIONID=O.OCCUPATIONID(+)'
      'AND PM.COUNTRYID=C.COUNTRYID(+)'
      'AND PM.RELATIONID=RL.RELATIONID(+)'
      'AND PM.RELIGIONID=RG.RELIGIONID(+)'
      'AND PM.EDUCATION=E.EDUCATIONID(+)')
    Left = 736
    Top = 352
  end
  object DS_List: TDataSource
    DataSet = QueryList
    Left = 768
    Top = 352
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bi' +
      'tmaps (*.bmp)|*.bmp'
    Left = 816
    Top = 136
  end
  object SP_Save: TStoredProc
    DatabaseName = 'SIS'
    StoredProcName = 'SAVE_IMAGE'
    Left = 792
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PMEMBERID'
        ParamType = ptInput
        Value = 0
      end>
  end
  object SP_Load: TStoredProc
    DatabaseName = 'SIS'
    StoredProcName = 'LOAD_IMAGE'
    Left = 864
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PMEMBERID'
        ParamType = ptInput
        Value = 0
      end>
  end
  object QueryTitle: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from Title '
      'order by title')
    Left = 736
    Top = 392
  end
  object DSTitle: TDataSource
    DataSet = QueryTitle
    Left = 768
    Top = 392
  end
  object QueryReligion: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from religion '
      'order by religion ')
    Left = 736
    Top = 440
  end
  object DSReligion: TDataSource
    DataSet = QueryReligion
    Left = 768
    Top = 440
  end
  object QueryCountry: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select countryid,upper(countryname) from Country '
      'order by countryname'
      ' ')
    Left = 736
    Top = 496
  end
  object DSCountry: TDataSource
    DataSet = QueryCountry
    Left = 768
    Top = 496
  end
  object QueryDistrict: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from District '
      'order by DistrictName'
      ''
      ' ')
    Left = 816
    Top = 392
  end
  object DSDistrict: TDataSource
    DataSet = QueryDistrict
    Left = 848
    Top = 392
  end
  object QueryVDC: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from VDC '
      'order by VDCName'
      ''
      ' ')
    Left = 816
    Top = 440
  end
  object DSVDC: TDataSource
    DataSet = QueryVDC
    Left = 848
    Top = 440
  end
  object QueryOccupation: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from Occupation '
      'order by occupationname'
      ''
      ' ')
    Left = 816
    Top = 496
  end
  object DSOccupation: TDataSource
    DataSet = QueryOccupation
    Left = 848
    Top = 496
  end
  object QueryEducation: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from Education '
      'order by Education'
      ''
      ' ')
    Left = 896
    Top = 392
  end
  object DSEducation: TDataSource
    DataSet = QueryEducation
    Left = 928
    Top = 392
  end
  object QueryRelation: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      'Select * from Relation '
      'order by Relation'
      ''
      ' ')
    Left = 896
    Top = 440
  end
  object DS_Relation: TDataSource
    DataSet = QueryRelation
    Left = 928
    Top = 440
  end
end
