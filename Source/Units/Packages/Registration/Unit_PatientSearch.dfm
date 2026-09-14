object Form_PatientSearch: TForm_PatientSearch
  Left = 272
  Top = 160
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Patient Search'
  ClientHeight = 482
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlOutPatient: TPageControl
    Left = 0
    Top = 32
    Width = 993
    Height = 428
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        985
        400)
      object Shape2: TShape
        Left = 3
        Top = 0
        Width = 241
        Height = 61
        Brush.Color = clBtnFace
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 7
        Top = 12
        Width = 58
        Height = 13
        Caption = 'Hospital No:'
      end
      object Shape3: TShape
        Left = 651
        Top = 0
        Width = 130
        Height = 61
        Brush.Color = clBtnFace
        Shape = stRoundRect
      end
      object Label6: TLabel
        Left = 654
        Top = 11
        Width = 23
        Height = 13
        Caption = 'From'
      end
      object Label8: TLabel
        Left = 654
        Top = 38
        Width = 13
        Height = 13
        Caption = 'To'
      end
      object SPB_SearchOP: TSpeedButton
        Left = 148
        Top = 33
        Width = 96
        Height = 22
        Caption = 'S&earch (F5)'
        Flat = True
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
        OnClick = SPB_SearchOPClick
      end
      object Shape7: TShape
        Left = 493
        Top = 0
        Width = 150
        Height = 61
        Brush.Color = clBtnFace
        Shape = stRoundRect
      end
      object Label7: TLabel
        Left = 251
        Top = 16
        Width = 42
        Height = 13
        Caption = 'Scheme '
      end
      object GroupBoxFollowUp: TGroupBox
        Left = 0
        Top = 61
        Width = 982
        Height = 400
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
        DesignSize = (
          982
          400)
        object DBGridOutPatient: TDBGrid
          Left = 3
          Top = 32
          Width = 978
          Height = 308
          Hint = 
            'Enter to Investigation, double click to modify,Right click to di' +
            'splay option'
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          DataSource = DataSourcePatientList
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 10
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGridOutPatientKeyDown
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'PatientId'
              Title.Alignment = taCenter
              Title.Caption = 'Hosp. No.'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MemberNo'
              Title.Alignment = taCenter
              Title.Caption = 'MCP No.'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PATIENTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Patient Name'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AGEGENDER'
              Title.Alignment = taCenter
              Title.Caption = 'Age/Sex'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEPCODE'
              Title.Alignment = taCenter
              Title.Caption = 'Dep.'
              Width = 38
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VISITDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Visit Date'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VISITTIME'
              Title.Alignment = taCenter
              Title.Caption = 'Time'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullAddress'
              Title.Alignment = taCenter
              Title.Caption = 'Address'
              Width = 170
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISTRICTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'District'
              Width = 55
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'NEXTTOKIN'
              Title.Alignment = taCenter
              Title.Caption = 'Next To Kin'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RELATION'
              Title.Alignment = taCenter
              Title.Caption = 'Relation'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MOBILENO'
              Title.Alignment = taCenter
              Title.Caption = 'Mobile No'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PHONENO'
              Title.Alignment = taCenter
              Title.Caption = 'Phone No'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SchemeName'
              Title.Alignment = taCenter
              Title.Caption = 'Scheme Name'
              Width = 200
              Visible = True
            end>
        end
        object EditPatientId: TEdit
          Left = 3
          Top = 5
          Width = 76
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = EditPatientIdChange
          OnKeyDown = EditPatientIdKeyDown
        end
        object EditName: TEdit
          Left = 143
          Top = 5
          Width = 135
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          OnChange = EditNameChange
          OnKeyDown = EditNameKeyDown
        end
        object EditAgeSerch: TEdit
          Left = 279
          Top = 5
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 3
          OnChange = EditAgeSerchChange
          OnKeyDown = EditAgeSerchKeyDown
        end
        object EditDate: TEdit
          Left = 366
          Top = 5
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 5
          OnChange = EditDateChange
          OnKeyDown = EditDateKeyDown
        end
        object EditDistrict: TEdit
          Left = 653
          Top = 5
          Width = 54
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 8
          OnChange = EditDistrictChange
          OnKeyDown = EditDistrictKeyDown
        end
        object EditPAddress: TEdit
          Left = 482
          Top = 5
          Width = 170
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          OnChange = EditPAddressChange
          OnKeyDown = EditPAddressKeyDown
        end
        object EditCareOf: TEdit
          Left = 709
          Top = 5
          Width = 119
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 9
          OnChange = EditCareOfChange
          OnKeyDown = EditCareOfKeyDown
        end
        object EditDept: TEdit
          Left = 327
          Top = 5
          Width = 38
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 4
          OnChange = EditDeptChange
          OnKeyDown = EditDeptKeyDown
        end
        object EditTime: TEdit
          Left = 431
          Top = 5
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 6
          OnChange = EditTimeChange
          OnKeyDown = EditTimeKeyDown
        end
        object Edit_MedicareNoOP: TEdit
          Left = 81
          Top = 5
          Width = 61
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          OnChange = Edit_MedicareNoOPChange
          OnKeyDown = EditPatientIdKeyDown
        end
      end
      object EditHospitalNo: TEdit
        Left = 74
        Top = 9
        Width = 164
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyDown = EditHospitalNoKeyDown
        OnKeyPress = EditHospitalNoKeyPress
      end
      object DateEditX_OPFrom: TDateEditX
        Left = 683
        Top = 7
        Width = 90
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C65667403AB0203546F7002070577
          69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
          7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
          0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
      end
      object Button_OPFrom: TButton
        Left = 750
        Top = 9
        Width = 22
        Height = 17
        Caption = 'AD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = False
        OnClick = Button_OPFromClick
      end
      object DateEditX_OPTo: TDateEditX
        Left = 683
        Top = 34
        Width = 90
        Height = 21
        TabOrder = 6
        ControlData = {
          545046300A5444617465456469745200044C65667403AB0203546F7002220577
          69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
          7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
          0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
      end
      object Button_OPTo: TButton
        Left = 749
        Top = 36
        Width = 22
        Height = 17
        Caption = 'AD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = False
        OnClick = Button_OPToClick
      end
      object RB_New: TRadioButton
        Left = 499
        Top = 23
        Width = 107
        Height = 17
        Caption = 'New         (F2)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = RB_NewClick
      end
      object RB_Old: TRadioButton
        Left = 499
        Top = 42
        Width = 115
        Height = 17
        Caption = 'Old           (F3)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        OnClick = RB_OldClick
      end
      object RB_Both: TRadioButton
        Left = 499
        Top = 4
        Width = 115
        Height = 17
        Caption = 'Both         (F1)'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = RB_BothClick
      end
      object CheckBoxExtended: TCheckBox
        Left = 75
        Top = 36
        Width = 55
        Height = 17
        Caption = 'All  (F4)'
        TabOrder = 7
        OnKeyDown = CheckBoxExtendedKeyDown
      end
      object CB_OPMedicarePatient: TCheckBox
        Left = 251
        Top = -2
        Width = 174
        Height = 17
        Caption = 'Medicare Patient Only (F7)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnClick = CB_OPMedicarePatientClick
      end
      object DBLCB_OPScheme: TDBLookupComboBox
        Left = 250
        Top = 34
        Width = 238
        Height = 21
        DropDownWidth = 400
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'SCHE_SchemeID'
        ListField = 'SCHE_Scheme'
        ListSource = DS_Scheme
        NullValueKey = 46
        ParentFont = False
        TabOrder = 11
        OnKeyDown = DBLCB_OPSchemeKeyDown
      end
    end
  end
  object PageControlInpatient: TPageControl
    Left = 0
    Top = 32
    Width = 993
    Height = 428
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    object TabSheet2: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBoxDischarge: TGroupBox
        Left = 0
        Top = 64
        Width = 985
        Height = 336
        Align = alClient
        TabOrder = 1
        DesignSize = (
          985
          336)
        object EditDisHospNo: TEdit
          Left = 3
          Top = 9
          Width = 71
          Height = 21
          Hint = 'Type Date & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = EditDisHospNoChange
          OnKeyDown = EditDisHospNoKeyDown
        end
        object EditDisIPNo: TEdit
          Left = 77
          Top = 9
          Width = 49
          Height = 21
          Hint = 'Type Patient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = EditDisIPNoChange
          OnKeyDown = EditDisIPNoKeyDown
        end
        object EditDisPtName: TEdit
          Left = 188
          Top = 9
          Width = 121
          Height = 21
          Hint = 'Type Inpatient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = EditDisPtNameChange
          OnKeyDown = EditDisPtNameKeyDown
        end
        object EditDisPtAgeSex: TEdit
          Left = 310
          Top = 9
          Width = 52
          Height = 21
          Hint = 'Type Ward & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnChange = EditDisPtAgeSexChange
          OnKeyDown = EditDisPtAgeSexKeyDown
        end
        object EditDisPtDept: TEdit
          Left = 363
          Top = 9
          Width = 40
          Height = 21
          Hint = 'Type Ward & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = EditDisPtDeptChange
          OnKeyDown = EditDisPtDeptKeyDown
        end
        object EditDisWard: TEdit
          Left = 404
          Top = 9
          Width = 75
          Height = 21
          Hint = 'Type Patient First Name & Press Enter'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnChange = EditDisWardChange
          OnKeyDown = EditDisWardKeyDown
        end
        object EditDisAdmnDate: TEdit
          Left = 480
          Top = 9
          Width = 67
          Height = 21
          Hint = 'Type Gender & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnChange = EditDisAdmnDateChange
          OnKeyDown = EditDisAdmnDateKeyDown
        end
        object DBGridDischarge: TDBGrid
          Left = 3
          Top = 36
          Width = 980
          Height = 297
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          DataSource = DataSourceDischarge
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnKeyDown = DBGridDischargeKeyDown
          Columns = <
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'PATIENTID'
              Title.Alignment = taCenter
              Title.Caption = 'Hos. No.'
              Width = 58
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'INPATIENTID'
              Title.Alignment = taCenter
              Title.Caption = 'IP No.'
              Width = 47
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MEMBERNO'
              Title.Alignment = taCenter
              Title.Caption = 'MPC No.'
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Name'
              Width = 119
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'AGEGENDER'
              Title.Alignment = taCenter
              Title.Caption = 'Age/Sex'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEPCODE'
              Title.Alignment = taCenter
              Title.Caption = 'Dept.'
              Title.Color = cl3DLight
              Width = 40
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'WardRoomType'
              Title.Alignment = taCenter
              Title.Caption = 'Ward/Room'
              Width = 76
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'AdmnDate'
              Title.Alignment = taCenter
              Title.Caption = 'Admn. Date'
              Width = 67
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'AdmnTime'
              Title.Alignment = taCenter
              Title.Caption = 'In Time'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Dis. Date'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DisTime'
              Title.Alignment = taCenter
              Title.Caption = 'Dis. Time'
              Width = 53
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BillDate'
              Title.Alignment = taCenter
              Title.Caption = 'Bill Date'
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'FullAddress'
              Title.Alignment = taCenter
              Title.Caption = 'Address'
              Width = 119
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISTRICTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'District'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GName'
              Title.Alignment = taCenter
              Title.Caption = 'Care Of'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRelation'
              Title.Alignment = taCenter
              Title.Caption = 'Relation'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SchemeName'
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end>
        end
        object EditDisInTime: TEdit
          Left = 549
          Top = 9
          Width = 43
          Height = 21
          Color = clMenu
          ReadOnly = True
          TabOrder = 8
          OnChange = EditInTimeChange
          OnKeyDown = EditDisInTimeKeyDown
        end
        object EditDisTime: TEdit
          Left = 658
          Top = 9
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 10
          OnChange = EditDisTimeChange
          OnKeyDown = EditDisTimeKeyDown
        end
        object EditDisAddress: TEdit
          Left = 777
          Top = 9
          Width = 123
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 12
          OnChange = EditDisAddressChange
          OnKeyDown = EditDisAddressKeyDown
        end
        object EditDisDate: TEdit
          Left = 594
          Top = 9
          Width = 62
          Height = 21
          TabOrder = 9
          OnChange = EditDisDateChange
          OnKeyDown = EditDisDateKeyDown
        end
        object Edit_MemberNoDis: TEdit
          Left = 129
          Top = 9
          Width = 57
          Height = 21
          Hint = 'Type Patient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = Edit_MemberNoDisChange
          OnKeyDown = EditDisIPNoKeyDown
        end
        object Edit_BillDate: TEdit
          Left = 710
          Top = 9
          Width = 63
          Height = 21
          CharCase = ecUpperCase
          Color = clMenu
          ReadOnly = True
          TabOrder = 11
          OnChange = EditDisTimeChange
          OnKeyDown = EditDisTimeKeyDown
        end
      end
      object GroupBoxInpatient: TGroupBox
        Left = 0
        Top = 64
        Width = 985
        Height = 336
        Align = alClient
        TabOrder = 2
        DesignSize = (
          985
          336)
        object DBGridMain: TDBGrid
          Left = 5
          Top = 36
          Width = 977
          Height = 297
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          DataSource = DataSourceOutStdPt
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 13
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnKeyDown = DBGridMainKeyDown
          Columns = <
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'PatientId'
              Title.Alignment = taCenter
              Title.Caption = 'Hos. No.'
              Width = 66
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'InpatientId'
              Title.Alignment = taCenter
              Title.Caption = 'Inpt. No.'
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MemberNo'
              Title.Alignment = taCenter
              Title.Caption = 'MPC. No.'
              Width = 52
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'PATIENTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Name'
              Width = 121
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'AGEGENDER'
              Title.Alignment = taCenter
              Title.Caption = 'Age/Sex'
              Width = 54
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DepCode'
              Title.Alignment = taCenter
              Title.Caption = 'Dep.Code'
              Title.Color = cl3DLight
              Width = 59
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'WardRoomType'
              Title.Alignment = taCenter
              Title.Caption = 'Ward/Room'
              Width = 75
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'ADMNDATE'
              Title.Alignment = taCenter
              Title.Caption = 'Admn. Date'
              Width = 74
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'ADMNTIME'
              Title.Alignment = taCenter
              Title.Caption = 'In Time'
              Width = 46
              Visible = True
            end
            item
              Color = clHighlightText
              Expanded = False
              FieldName = 'FullAddress'
              Title.Alignment = taCenter
              Title.Caption = 'Address'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DISTRICTNAME'
              Title.Alignment = taCenter
              Title.Caption = 'District Name'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GNAME'
              Title.Alignment = taCenter
              Title.Caption = 'Guardian'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GRELATION'
              Title.Alignment = taCenter
              Title.Caption = 'Relation'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SchemeName'
              Title.Alignment = taCenter
              Width = 200
              Visible = True
            end>
        end
        object EditHosIP: TEdit
          Left = 3
          Top = 9
          Width = 81
          Height = 21
          Hint = 'Type Date & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = EditHosIPChange
          OnKeyDown = EditHosIPKeyDown
        end
        object EditIPNo: TEdit
          Left = 85
          Top = 9
          Width = 55
          Height = 21
          Hint = 'Type Patient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnChange = EditIPNoChange
          OnKeyDown = EditIPNoKeyDown
        end
        object EditIPName: TEdit
          Left = 193
          Top = 9
          Width = 120
          Height = 21
          Hint = 'Type Inpatient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = EditIPNameChange
          OnKeyDown = EditIPNameKeyDown
        end
        object EditIPAgeSex: TEdit
          Left = 315
          Top = 9
          Width = 54
          Height = 21
          Hint = 'Type Ward & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnChange = EditIPAgeSexChange
          OnKeyDown = EditIPAgeSexKeyDown
        end
        object EditIPDep: TEdit
          Left = 371
          Top = 9
          Width = 56
          Height = 21
          Hint = 'Type Ward & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = EditIPDepChange
          OnKeyDown = EditIPDepKeyDown
        end
        object EditWardRoom: TEdit
          Left = 430
          Top = 9
          Width = 75
          Height = 21
          Hint = 'Type Patient First Name & Press Enter'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnChange = EditWardRoomChange
          OnKeyDown = EditWardRoomKeyDown
        end
        object EditAdmDate: TEdit
          Left = 507
          Top = 9
          Width = 72
          Height = 21
          Hint = 'Type Gender & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnChange = EditAdmDateChange
          OnKeyDown = EditAdmDateKeyDown
        end
        object EditInTime: TEdit
          Left = 587
          Top = 9
          Width = 39
          Height = 21
          Color = clMenu
          ReadOnly = True
          TabOrder = 8
          OnChange = EditInTimeChange
          OnKeyDown = EditInTimeKeyDown
        end
        object EditIPDistrict: TEdit
          Left = 751
          Top = 9
          Width = 79
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 10
          OnChange = EditIPDistrictChange
          OnKeyDown = EditIPDistrictKeyDown
        end
        object EditIPAddress: TEdit
          Left = 627
          Top = 9
          Width = 123
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 9
          OnChange = EditIPAddressChange
          OnKeyDown = EditIPAddressKeyDown
        end
        object EditIPCareOf: TEdit
          Left = 832
          Top = 9
          Width = 72
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 11
          OnChange = EditIPCareOfChange
          OnKeyDown = EditIPCareOfKeyDown
        end
        object Edit_Relation: TEdit
          Left = 905
          Top = 9
          Width = 72
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          TabOrder = 12
          OnChange = EditIPCareOfChange
          OnKeyDown = EditIPCareOfKeyDown
        end
        object Edit_MedicareNo: TEdit
          Left = 142
          Top = 9
          Width = 50
          Height = 21
          Hint = 'Type Patient No. & Press ENTER'
          CharCase = ecUpperCase
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnChange = EditIPNoChange
          OnKeyDown = EditIPNoKeyDown
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 985
        Height = 64
        Align = alTop
        TabOrder = 0
        object Shape4: TShape
          Left = 5
          Top = 2
          Width = 289
          Height = 61
          Brush.Color = clBtnFace
          Shape = stRoundRect
        end
        object Label2: TLabel
          Left = 8
          Top = 36
          Width = 61
          Height = 13
          Caption = 'Inpatient No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 7
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Hospital No:'
        end
        object SPB_SearchIP: TSpeedButton
          Left = 206
          Top = 32
          Width = 82
          Height = 22
          Caption = 'S&earch (F5)'
          Flat = True
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
          OnClick = SPB_SearchIPClick
        end
        object Shape6: TShape
          Left = 482
          Top = 0
          Width = 150
          Height = 61
          Brush.Color = clBtnFace
          Shape = stRoundRect
        end
        object Shape5: TShape
          Left = 651
          Top = 0
          Width = 130
          Height = 61
          Brush.Color = clBtnFace
          Shape = stRoundRect
        end
        object Label3: TLabel
          Left = 654
          Top = 11
          Width = 23
          Height = 13
          Caption = 'From'
        end
        object Label4: TLabel
          Left = 654
          Top = 38
          Width = 13
          Height = 13
          Caption = 'To'
        end
        object SpeedButton1: TSpeedButton
          Left = 904
          Top = 32
          Width = 23
          Height = 22
          Caption = 'Kill Session'
          Enabled = False
          Visible = False
          OnClick = SpeedButton1Click
        end
        object Label9: TLabel
          Left = 297
          Top = 21
          Width = 42
          Height = 13
          Caption = 'Scheme '
        end
        object EditInpatientNo: TEdit
          Left = 74
          Top = 31
          Width = 74
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EditInpatientNoKeyDown
          OnKeyPress = EditInpatientIdKeyPress
        end
        object EditSearch: TEdit
          Left = 74
          Top = 7
          Width = 213
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnKeyDown = EditSearchKeyDown
          OnKeyPress = EditSearchKeyPress
        end
        object CheckBoxAll: TCheckBox
          Left = 150
          Top = 35
          Width = 55
          Height = 14
          Caption = '&All (F4)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RB_OutStanding: TRadioButton
          Left = 492
          Top = 2
          Width = 128
          Height = 17
          Caption = 'Out Standing (F1)'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          TabStop = True
          OnClick = RB_OutStandingClick
        end
        object RB_Admission: TRadioButton
          Left = 492
          Top = 22
          Width = 133
          Height = 17
          Caption = 'Admission     (F2)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = RB_AdmissionClick
        end
        object RB_Discharge: TRadioButton
          Left = 492
          Top = 42
          Width = 133
          Height = 17
          Caption = 'Discharge     (F3)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = RB_AdmissionClick
        end
        object DateEditX_From: TDateEditX
          Left = 679
          Top = 7
          Width = 90
          Height = 21
          TabOrder = 7
          ControlData = {
            545046300A5444617465456469745200044C65667403A70203546F7002070577
            69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
            0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
        end
        object Button_DateFrom: TButton
          Left = 746
          Top = 9
          Width = 22
          Height = 17
          Caption = 'AD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          TabStop = False
          OnClick = Button_DateFromClick
        end
        object DateEditX_To: TDateEditX
          Left = 679
          Top = 34
          Width = 90
          Height = 21
          TabOrder = 9
          ControlData = {
            545046300A5444617465456469745200044C65667403A70203546F7002220577
            69647468025A0B4461746541442E5965617203D3070C4461746541442E4D6F6E
            7468020B0A4461746541442E44617902030B4461746556532E59656172030C08
            0C4461746556532E4D6F6E746802070A4461746556532E44617902110000}
        end
        object Button_To: TButton
          Left = 745
          Top = 36
          Width = 22
          Height = 17
          Caption = 'AD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          TabStop = False
          OnClick = Button_ToClick
        end
        object CB_MedicarePatient: TCheckBox
          Left = 297
          Top = 1
          Width = 174
          Height = 17
          Caption = 'Medicare Patient Only (F7)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = CB_MedicarePatientClick
        end
        object DBLCB_IPScheme: TDBLookupComboBox
          Left = 297
          Top = 38
          Width = 182
          Height = 21
          DropDownWidth = 400
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'SCHE_SchemeID'
          ListField = 'SCHE_Scheme'
          ListSource = DS_Scheme
          NullValueKey = 46
          ParentFont = False
          TabOrder = 11
          OnKeyDown = DBLCB_IPSchemeKeyDown
        end
      end
    end
  end
  object StatusBarPatientSearch: TStatusBar
    Left = 0
    Top = 460
    Width = 993
    Height = 22
    Panels = <
      item
        Width = 150
      end
      item
        Width = 150
      end
      item
        Width = 250
      end
      item
        Width = 150
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 32
    Align = alTop
    TabOrder = 0
    object BtnCancel: TBitBtn
      Left = 894
      Top = 1
      Width = 98
      Height = 30
      Hint = 'Cancel as well as Exit'
      Align = alRight
      Caption = '&Cancel [ESC]'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BtnCancelClick
    end
    object BitBtnPreview: TBitBtn
      Left = 661
      Top = 1
      Width = 99
      Height = 30
      Align = alRight
      Caption = '&Report'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BitBtnPreviewClick
    end
    object BitBtnExcel: TBitBtn
      Left = 760
      Top = 1
      Width = 134
      Height = 30
      Align = alRight
      Caption = 'Send To Excel (F8)'
      DoubleBuffered = True
      Glyph.Data = {
        F6010000424DF60100000000000076000000280000001F000000180000000100
        04000000000080010000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFF44444444
        44440000FFFFFFFFFFF0FFFF4000000000006666FFFFFFFFFFF0FFFF40888888
        8806EEF0FFFFFFFFFFF0FFFF440E6666606EEF04FFFFFFFFFFF0FFFF4440E666
        06EEF060FFFFFFFFFFF0FFFF44440E606EEF0000FFFFFFFFFFF0FFFF44444006
        EEF04444FFFFFFFFFFF0FFFF4444406EEF004444FFFFFFFFFFF0FFFF444406EE
        F0680444FFFFFFFFFFF0FFFF44406EEF0E668044FFFFFFFFFFF0FFFF4406EEF0
        40E66804FFFFFFFFFFF0FFFF40FFFF04440EEEE0FFFFFFFFFFF0FFFF40000044
        44400000FFFFFFFFFFF0FFFF4444444444444444FFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtnExcelClick
    end
  end
    object QueryAdmission: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            
              ' Select IPR.PatientId,IPR.InpatientId,Cast(IPR.PatientId as Varc' +
              'har(8)) as PatientIdS,'
            ' Cast(IPR.InPatientId as Varchar(8)) as InPatientIdS,'
            
              ' IPR.WardCode,IPR.DepCode,IPR.InptDate,IPR.CommunityId ,PM.FName' +
              '||'#39' '#39'||PM.LName as Name ,'
            
              ' (PM.Age||'#39' '#39'||SubStr(PM.AgeType,1,1)||'#39' / '#39'||SubStr(PM.Gender,1' +
              ',1)) as AgeGender,'
            
              ' PM.PAddress||'#39'-'#39'||PM.WardNo||'#39', '#39'||PM.VDCName As Address,PM.Dis' +
              'trictName, '
            
              ' PM.NextToKin,PM.Relation from InpatientReg IPR,PatientMain PM w' +
              'here '
            ' PM.PatientId=IPR.PatientId and IPR.InPtDate>='#39'2007/11/18'#39
            ' and IPR.InPtDate<='#39'2007/11/18'#39
            ' Order by IPR.InptDate,IPR.InpatientId')
    Left = 660
    Top = 229
  end
object DataSourceAdmnDisList: TDataSource
    DataSet = QueryAdmission
    Left = 804
    Top = 237
  end
    object QueryOutPatient: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            
              'SELECT PM.*,Trim(PM.VdcName||'#39#39'||PM.wardNo||'#39#39'||PM.Address) as F' +
              'ullAddress FROM VW_HS_PATIENTMAIN_ALL PM')
    Left = 532
    Top = 221
  end
object DataSourcePatientList: TDataSource
    DataSet = QueryOutPatient
    Left = 612
    Top = 205
  end
    object QueryFindInptTime: TOraQuery
    SQL.Strings = (
            
              'Select InpatientId,InTime,InptDate,WardCode||'#39#39'/'#39#39'||RoomTypeCode' +
              ' as WardRoom'
            ' From InpatientDetail where InpatientdId In'
            
              '(Select Min(InpatientdId) as Inpatientdid From InpatientDetail w' +
              'here '
            
              'InptDate <=:ToDate and InpatientId In (Select InpatientId From I' +
              'npatientReg '
            'where  InptDate>=:FromDate and InptDate<=:ToDate) '
            'Group By InpatientId)')
    Left = 494
    Top = 318
    ParamData = <
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'FromDate'
              ParamType = ptUnknown
            end
            item
              DataType = ftString
              Name = 'ToDate'
              ParamType = ptUnknown
            end>
    object QueryFindInptTimeINPATIENTID: TFloatField
      FieldName = 'INPATIENTID'
    end
    object QueryFindInptTimeINTIME: TStringField
      FieldName = 'INTIME'
      Size = 12
    end
    object QueryFindInptTimeINPTDATE: TStringField
      FieldName = 'INPTDATE'
      Size = 10
    end
    object QueryFindInptTimeWARDROOM: TStringField
      FieldName = 'WARDROOM'
      Size = 10
    end
  end
  object QueryOutStandingPt: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            
              'Select PatientId,PatientIDStr,InpatientId,InpatientIDStr,Title,P' +
              'atientName,AgeGender,VDCName||'#39' '#39'||WardNo||'#39' '#39'||PtAddress as Add' +
              'ress,DistrictName,'
            
              'AdmnDate,AdmnTime,OutDate,OutTime,DisDate,GName,GAddress,GRelati' +
              'on From VW_HS_ADMNPATIENTCURRENTINFO where InpatientId In ('
            
              'Select InpatientId From InpatientReg IPR where IsDischarged<>'#39'C'#39 +
              ' and ADMNDate <='#39'2014/07/20'#39
            
              'and (Case when Trim(DisInDepositDate) is null Then Trim(DisDate)' +
              ' Else DisInDepositDate End >'#39'2014/07/20'#39' or (Trim(DisDate) is NU' +
              'LL and IsDisInDeposit='#39'N'#39'))'
            ') Order by AdmnDate,InpatientId'
            ' ')
    Left = 304
    Top = 279
  end
object DataSourceOutStdPt: TDataSource
    DataSet = QueryOutStandingPt
    Left = 333
    Top = 294
  end
    object QueryCommunity: TOraQuery
    SQL.Strings = (
            'Select CommunityId,ComCode From Community')
    Left = 835
    Top = 244
  end
  object QueryDischarge: TOraQuery
    SQL.Strings = (
            
              'SELECT PM.PatientName as Name,PM.Title,PM.MaritalStatus,PM.NextT' +
              'oKin,PM.Relation,'
            
              '(PM.Age||'#39#39' ||SubStr(PM.AgeType,1,1)||'#39'/'#39'||SubStr(PM.Gender,1,1)' +
              ') as AgeGender,'
            
              'IPR.DepCode,IPR.PatientId,Cast(IPR.InPatientId as Varchar(8)) as' +
              ' InpatientIdS,'
            
              'Cast(IPR.PatientId as Varchar(8)) as PatientIdS,PM.PAddress||'#39'-'#39 +
              '||PM.WardNo||'#39', '#39'||PM.VDCName'
            
              'As Address,PM.DistrictName,IPD.WardCode||'#39'/'#39'||IPD.RoomTypeCode a' +
              's WardRoom,IPD.RoomNo,'
            
              'IPR.FileNo, IPR.InPTDate,(Select InTime From InpatientDetail whe' +
              're InpatientDID In ( select '
            
              'Min(InpatientDID) as InpatientDID From InpatientDetail where Inp' +
              'atientId=IPR.InpatientId)) as InptTime,'
            
              'IPR.MemberNo,IPR.DisDate,IPD.DisBillTime,IPR.CommunityId,IPR.Sch' +
              'emeId '
            
              'FROM PatientMain PM,InpatientReg IPR,Inpatientdetail IPD Where (' +
              'IPR.PatientId=PM.PatientID)'
            
              'And (IPR.InPatientId=IPD.InPatientId) And IPR.Discharged='#39'YES'#39' A' +
              'nd (Trim(IPD.BillNo) Is Not NULL)'
            'And IPR.InpatientId=98000')
    Left = 694
    Top = 282
  end
object DataSourceDischarge: TDataSource
    DataSet = QueryDischarge
    Left = 708
    Top = 338
  end
    object QueryNewPt: TOraQuery
    Left = 419
    Top = 221
  end
  object QueryOldPt: TOraQuery
    Left = 347
    Top = 213
  end
  object Query_Scheme: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            'Select * From HS_SCHE_Scheme'
            '    Where SCHE_IsActive='#39'Y'#39' '
            '    Order by SCHE_Scheme')
    Left = 516
    Top = 221
  end
object DS_Scheme: TDataSource
    DataSet = Query_Scheme
    Left = 524
    Top = 221
  end
end
