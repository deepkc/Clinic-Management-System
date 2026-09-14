object Frame_NewPatient: TFrame_NewPatient
  Left = 0
  Top = 0
  Width = 1000
  Height = 606
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1000
    Height = 606
    ActivePage = tim
    Align = alClient
    TabOrder = 0
    object tim: TTabSheet
      Caption = 'New'
      object Panel_Test: TPanel
        Left = 3
        Top = 1
        Width = 987
        Height = 574
        TabOrder = 3
      end
      object Panel1: TPanel
        Left = 4
        Top = 1
        Width = 986
        Height = 573
        BevelInner = bvSpace
        BevelKind = bkTile
        BevelOuter = bvLowered
        TabOrder = 2
        object GB_BasicInformation: TGroupBox
          Left = 15
          Top = 46
          Width = 332
          Height = 171
          Color = clBtnFace
          Ctl3D = True
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
          object Label4: TLabel
            Left = 202
            Top = 97
            Width = 28
            Height = 13
            Caption = 'DOB :'
          end
          object Label6: TLabel
            Left = 186
            Top = 122
            Width = 44
            Height = 13
            Caption = 'Religion :'
          end
          object Label9: TLabel
            Left = 49
            Top = 24
            Width = 27
            Height = 13
            Caption = 'Title :'
          end
          object Label7: TLabel
            Left = 176
            Top = 24
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Gender :'
          end
          object Label8: TLabel
            Left = 3
            Top = 122
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Marital Status :'
          end
          object Image2: TImage
            Left = 305
            Top = 95
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
            Height = 18
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
            Left = 26
            Top = 146
            Width = 48
            Height = 13
            Caption = 'Ethnicity :'
          end
          object Le_FName: TLabeledEdit
            Left = 80
            Top = 46
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
            Left = 80
            Top = 69
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
            Left = 237
            Top = 93
            Width = 65
            Height = 21
            TabOrder = 8
            ControlData = {
              545046300A5444617465456469745200044C65667403ED0003546F70025D0B44
              61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
              6541442E44617902160B4461746556532E596561720314080C4461746556532E
              4D6F6E746802060A4461746556532E44617902050000}
          end
          object le_Age: TLabeledEdit
            Left = 80
            Top = 93
            Width = 41
            Height = 21
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = 'Age :'
            LabelPosition = lpLeft
            TabOrder = 4
          end
          object DBLCB_Religion: TDBLookupComboBox
            Left = 237
            Top = 119
            Width = 84
            Height = 21
            KeyField = 'RELIGIONID'
            ListField = 'RELIGION'
            ListSource = DSReligion
            TabOrder = 7
            OnExit = DBLCB_ReligionExit
          end
          object DBLCB_title: TDBLookupComboBox
            Left = 80
            Top = 22
            Width = 79
            Height = 21
            KeyField = 'TITLE'
            ListField = 'TITLE'
            ListSource = DSTitle
            TabOrder = 0
          end
          object CB_Gender: TComboBox
            Left = 222
            Top = 21
            Width = 99
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 1
            Items.Strings = (
              'MALE'
              'FEMALE')
          end
          object CB_AgeType: TComboBox
            Left = 127
            Top = 93
            Width = 54
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 5
            OnExit = CB_AgeTypeExit
            Items.Strings = (
              'YEAR'
              'MONTH'
              'DAYS')
          end
          object CB_MaritalStatus: TComboBox
            Left = 80
            Top = 119
            Width = 101
            Height = 22
            Style = csOwnerDrawFixed
            TabOrder = 6
            Items.Strings = (
              'MARRIED'
              'UNMARRIED')
          end
          object DBLCB_Ethnicity: TDBLookupComboBox
            Left = 80
            Top = 144
            Width = 241
            Height = 21
            KeyField = 'TITLEID'
            ListField = 'TITLE'
            ListSource = DSTitle
            TabOrder = 9
          end
        end
        object GB_Address: TGroupBox
          Left = 360
          Top = 46
          Width = 333
          Height = 355
          Color = clBtnFace
          Ctl3D = True
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 1
          object Label11: TLabel
            Left = 30
            Top = 27
            Width = 46
            Height = 13
            Caption = 'Country :'
          end
          object Label12: TLabel
            Left = 36
            Top = 51
            Width = 40
            Height = 13
            Caption = 'District :'
          end
          object Label13: TLabel
            Left = 1
            Top = 1
            Width = 179
            Height = 18
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
            Left = 24
            Top = 75
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'VDC/MPC :'
          end
          object Label5: TLabel
            Left = 30
            Top = 243
            Width = 48
            Height = 13
            Caption = 'Remarks :'
          end
          object Le_Address: TLabeledEdit
            Left = 80
            Top = 94
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
            Left = 80
            Top = 119
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
            Left = 80
            Top = 22
            Width = 241
            Height = 21
            KeyField = 'COUNTRYID'
            ListField = 'UPPER(COUNTRYNAME)'
            ListSource = DSCountry
            TabOrder = 0
          end
          object DBLCB_District: TDBLookupComboBox
            Left = 80
            Top = 46
            Width = 241
            Height = 21
            KeyField = 'DISTRICTID'
            ListField = 'DISTRICTNAME'
            ListSource = DSDistrict
            TabOrder = 1
          end
          object DBLCB_VDC: TDBLookupComboBox
            Left = 80
            Top = 70
            Width = 241
            Height = 21
            KeyField = 'VDCID'
            ListField = 'VDCNAME'
            ListSource = DSVDC
            TabOrder = 2
          end
          object Le_PhoneNo: TLabeledEdit
            Left = 184
            Top = 119
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
            Left = 80
            Top = 143
            Width = 241
            Height = 21
            EditLabel.Width = 57
            EditLabel.Height = 13
            EditLabel.Caption = 'Mobile No. :'
            LabelPosition = lpLeft
            NumbersOnly = True
            TabOrder = 6
          end
          object CheckBox2: TCheckBox
            Left = 80
            Top = 170
            Width = 81
            Height = 17
            Caption = 'Send to SMS'
            TabOrder = 7
          end
          object le_Email: TLabeledEdit
            Left = 80
            Top = 191
            Width = 241
            Height = 21
            EditLabel.Width = 31
            EditLabel.Height = 13
            EditLabel.Caption = 'Email :'
            LabelPosition = lpLeft
            TabOrder = 8
          end
          object CheckBox3: TCheckBox
            Left = 80
            Top = 218
            Width = 97
            Height = 17
            Caption = 'Send to Mail'
            TabOrder = 9
          end
          object CheckBox1: TCheckBox
            Left = 180
            Top = 218
            Width = 97
            Height = 17
            Caption = 'Send to WEB'
            TabOrder = 10
          end
          object Memo_Remarks: TMemo
            Left = 81
            Top = 241
            Width = 240
            Height = 105
            TabOrder = 11
            OnExit = Memo_RemarksExit
          end
        end
        object GB_Others: TGroupBox
          Left = 14
          Top = 231
          Width = 332
          Height = 170
          Color = clBtnFace
          Ctl3D = True
          ParentBackground = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 2
          object Label18: TLabel
            Left = 15
            Top = 33
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Occupation :'
          end
          object Label23: TLabel
            Left = 22
            Top = 57
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Education :'
          end
          object Label26: TLabel
            Left = 1
            Top = 1
            Width = 179
            Height = 17
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
            Left = 30
            Top = 106
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Relation :'
          end
          object Le_Relative: TLabeledEdit
            Left = 80
            Top = 78
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
            Left = 80
            Top = 29
            Width = 241
            Height = 21
            KeyField = 'OCCUPATIONID'
            ListField = 'OCCUPATIONNAME'
            ListSource = DSOccupation
            TabOrder = 0
          end
          object DBLCB_Education: TDBLookupComboBox
            Left = 80
            Top = 54
            Width = 241
            Height = 21
            KeyField = 'EDUCATIONID'
            ListField = 'EDUCATION'
            ListSource = DSEducation
            TabOrder = 1
          end
          object Le_Company: TLabeledEdit
            Left = 80
            Top = 128
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
            Left = 80
            Top = 103
            Width = 241
            Height = 21
            KeyField = 'RELATIONID'
            ListField = 'RELATION'
            ListSource = DS_Relation
            TabOrder = 3
          end
        end
        object Panel3: TPanel
          Left = 2
          Top = 2
          Width = 978
          Height = 37
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 3
          object BB_EditMode: TButton
            AlignWithMargins = True
            Left = 794
            Top = 3
            Width = 106
            Height = 31
            Margins.Left = 0
            Margins.Right = 0
            Align = alRight
            Caption = 'Edit Mode [OFF]'
            ImageAlignment = iaRight
            ImageIndex = 0
            Images = ImageList1
            TabOrder = 0
            OnClick = BB_EditModeClick
          end
          object BB_Save: TBitBtn
            AlignWithMargins = True
            Left = 900
            Top = 3
            Width = 78
            Height = 31
            Margins.Left = 0
            Margins.Right = 0
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
            TabOrder = 1
            OnClick = BB_SaveClick
          end
        end
      end
      object Panel_Image: TPanel
        Left = 731
        Top = 52
        Width = 139
        Height = 160
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object Shape1: TShape
          Left = 2
          Top = 0
          Width = 137
          Height = 133
        end
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 138
          Width = 139
          Height = 22
          Caption = 'Browse'
          OnClick = SpeedButton1Click
        end
        object Image_Main: TImage
          Left = 4
          Top = 2
          Width = 132
          Height = 128
          Stretch = True
        end
      end
      object MonthlyCalendar: TMonthCalendar
        Left = -500
        Top = 43
        Width = 225
        Height = 160
        CalColors.TitleTextColor = 16767449
        Date = 40763.496525335650000000
        TabOrder = 0
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'List'
      ImageIndex = 1
      DesignSize = (
        992
        578)
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
        Left = 0
        Top = 65
        Width = 992
        Height = 513
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            FieldName = 'PADDRESS'
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
            FieldName = 'RELATION_1'
            Title.Caption = 'RELATION'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EDUCATION_1'
            Title.Caption = 'EDUCATION'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RELIGION_1'
            Title.Caption = 'RELIGION'
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
    object QueryBlank: TOraQuery
    Left = 696
    Top = 24
  end
  object QueryList: TOraQuery
    SQL.Strings = (
            
              'SELECT PM.*,T.TITLEID,D.DISTRICTNAME,V.VDCNAME,O.OCCUPATIONNAME,' +
              'C.COUNTRYNAME ,RL.RELATION,E.EDUCATION,RG.RELIGION'
            
              'FROM PATIENTMAIN PM,DISTRICT D,VDC V,OCCUPATION O,COUNTRY C,RELA' +
              'TION RL'
            ',EDUCATION E,RELIGION RG,TITLE T'
            'WHERE PM.DISTRICTID=D.DISTRICTID(+)'
            'AND PM.TITLE=T.TITLE(+)'
            'AND PM.VDCID=V.VDCID(+)'
            'AND PM.OCCUPATIONID=O.OCCUPATIONID(+)'
            'AND PM.COUNTRYID=C.COUNTRYID(+)'
            'AND PM.RELATIONID=RL.RELATIONID(+)'
            'AND PM.RELIGIONID=RG.RELIGION(+)'
            'AND PM.EDUCATION=E.EDUCATIONID(+)')
    Left = 904
    Top = 416
  end
object DS_List: TDataSource
    DataSet = QueryList
    Left = 936
    Top = 416
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bi' +
      'tmaps (*.bmp)|*.bmp'
    Left = 816
    Top = 136
  end
    object SP_Save: TOraStoredProc
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
  object SP_Load: TOraStoredProc
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
  object QueryTitle: TOraQuery
    SQL.Strings = (
            'Select * from Title '
            'order by title')
    Left = 624
    Top = 368
  end
object DSTitle: TDataSource
    DataSet = QueryTitle
    Left = 656
    Top = 368
  end
    object QueryReligion: TOraQuery
    SQL.Strings = (
            'Select * from religion '
            'order by religion ')
    Left = 624
    Top = 400
  end
object DSReligion: TDataSource
    DataSet = QueryReligion
    Left = 656
    Top = 400
  end
    object QueryCountry: TOraQuery
    SQL.Strings = (
            'Select countryid,upper(countryname) from Country '
            'order by countryname'
            ' ')
    Left = 640
    Top = 432
  end
object DSCountry: TDataSource
    DataSet = QueryCountry
    Left = 680
    Top = 432
  end
    object QueryDistrict: TOraQuery
    SQL.Strings = (
            'Select * from District '
            'order by DistrictName'
            ''
            ' ')
    Left = 704
    Top = 368
  end
object DSDistrict: TDataSource
    DataSet = QueryDistrict
    Left = 736
    Top = 368
  end
    object QueryVDC: TOraQuery
    SQL.Strings = (
            'Select * from VDC '
            'order by VDCName'
            ''
            ' ')
    Left = 704
    Top = 400
  end
object DSVDC: TDataSource
    DataSet = QueryVDC
    Left = 736
    Top = 400
  end
    object QueryOccupation: TOraQuery
    SQL.Strings = (
            'Select * from Occupation '
            'order by occupationname'
            ''
            ' ')
    Left = 728
    Top = 440
  end
object DSOccupation: TDataSource
    DataSet = QueryOccupation
    Left = 776
    Top = 464
  end
    object QueryEducation: TOraQuery
    SQL.Strings = (
            'Select * from Education '
            'order by Education'
            ''
            ' ')
    Left = 784
    Top = 368
  end
object DSEducation: TDataSource
    DataSet = QueryEducation
    Left = 816
    Top = 368
  end
    object QueryRelation: TOraQuery
    SQL.Strings = (
            'Select * from Relation '
            'order by Relation'
            ''
            ' ')
    Left = 784
    Top = 400
  end
object DS_Relation: TDataSource
    DataSet = QueryRelation
    Left = 816
    Top = 400
  end
  object ImageList1: TImageList
    Left = 872
    Top = 368
    Bitmap = {
      494C010102003C00F80010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088A2EE003C6DF000376BF50088A4F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000088D5EE003CC6F00037CAF50088D9F200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A4B3EB001A49DE00275DEF00245EF600215CF9001E5AFB00205AF400A7BD
      F900000000000000000000000000000000000000000000000000000000000000
      0000A4D6EB001AABDE0027C1EF0024C6F60021C8F9001EC8FB0020C4F400A7E5
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C1CA
      F0001541D7001A4FEB00235EFB001E5AFA00225DFB001E5BFD001E5CFE001E5A
      FC00C4D2FB00000000000000000000000000000000000000000000000000C1E2
      F00015A2D7001AB8EB0023CAFB001EC8FA0022C9FB001ECAFD001ECCFE001EC9
      FC00C4EEFB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001234
      C400133ED500174BE4001A52F0001F5AF9001B58FC001B58FA001B58FC001B57
      F9001B50EE00000000000000000000000000000000000000000000000000128D
      C400139FD50017B2E4001ABDF0001FC7F9001BC8FC001BC7FA001BC8FC001BC6
      F9001BBBEE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D2D
      BE001037CD001342DA001548E100174CEA001A52EF001349EB001750F000164D
      EF001446E3000000000000000000000000000000000000000000000000000D85
      BE001096CD0013A5DA0015AEE10017B5EA001ABCEF0013B5EB0017BCF00016BA
      EF0014AEE3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A26
      B6000C2DC0000E35CE001342DE001342DD002B56E000103EDA001143E4001140
      DE000F38D2000000000000000000000000000000000000000000000000000A7C
      B6000C87C0000E95CE0013A7DE0013A7DD002BB1E00010A3DA0011ACE40011A6
      DE000F9AD2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007983
      CF00162FB8000928BD000D31C900123FD8001443DF000F36CF000C33CE000B30
      C9000A2AC00000000000000000000000000000000000000000000000000079AE
      CF001680B8000982BD000D8FC90012A2D80014A8DF000F96CF000C94CE000B8F
      C9000A85C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000949B
      D5008D94D4007F88D2001C35B8000B2EC4001238CC00092AC3000624BB000622
      B7000821B20000000000000000000000000000000000000000000000000094BC
      D5008DB7D4007FB2D2001C83B8000B8AC4001295CC000987C300067EBB00067A
      B7000875B2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9EA
      F600A5A9DB00A0A5D900B2B6DD006877CE003D56CB000C26B5002A3BB9002B3C
      B600CACEEC00000000000000000000000000000000000000000000000000E9F1
      F600A5C4DB00A0C1D900B2CCDD0068AACE003D9DCB000C7AB5002A82B9002B81
      B600CADFEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E4E5F400B4B8E000B8BCE100B9BDE100C1C4E600BEC1E400979DD500D3D5
      ED00000000000000000000000000000000000000000000000000000000000000
      0000E4EDF400B4CEE000B8D1E100B9D1E100C1D7E600BED4E40097BCD500D3E3
      ED00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFE0F100C6C8E700C2C5E500DBDDF000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFEAF100C6D9E700C2D7E500DBE8F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FC3FFC3F00000000F00FF00F00000000
      E007E00700000000E007E00700000000E007E00700000000E007E00700000000
      E007E00700000000E007E00700000000E007E00700000000F00FF00F00000000
      FC3FFC3F00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
