object Form_StaffMemberSearch: TForm_StaffMemberSearch
  Left = 465
  Top = 214
  BorderIcons = [biSystemMenu]
  Caption = 'Staff Member Display'
  ClientHeight = 386
  ClientWidth = 539
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 539
    Height = 367
    Align = alClient
    Color = 16744448
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object EditHospNo: TEdit
      Left = 1
      Top = 7
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = EditHospNoChange
      OnKeyDown = EditHospNoKeyDown
      OnKeyPress = EditHospNoKeyPress
    end
    object EditName: TEdit
      Left = 69
      Top = 7
      Width = 130
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = EditNameChange
      OnKeyDown = EditNameKeyDown
      OnKeyPress = EditNameKeyPress
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 30
      Width = 543
      Height = 338
      DataSource = DataSourceDisplay
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'memb_PATIENTID'
          Title.Alignment = taCenter
          Title.Caption = 'Hosp. No'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'memb_employeeno '
          Title.Alignment = taCenter
          Title.Caption = 'Member No'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GENDER'
          Title.Alignment = taCenter
          Title.Caption = 'Sex'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS'
          Title.Alignment = taCenter
          Title.Caption = 'Address'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEMB_ISDEPENDENT'
          Title.Caption = 'Is Dep.'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMPLOYEE'
          Title.Alignment = taCenter
          Title.Caption = 'Employee'
          Width = 93
          Visible = True
        end>
    end
    object Edit_MemberNo: TEdit
      Left = 200
      Top = 7
      Width = 67
      Height = 21
      TabOrder = 3
      OnChange = Edit_MemberNoChange
      OnKeyDown = Edit_MemberNoKeyDown
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 367
    Width = 539
    Height = 19
    Color = 16744448
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
    object QueryDisplay: TOraQuery
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
            
              'SELECT memb_MemberId,memb_FName||'#39' '#39'||memb_Lname Name,memb_Membe' +
              'rNo,memb_PatientId,memb_ISDEPENDENT,memb_schemeid,memb_employeen' +
              'o,'
            
              'MEMB_COMMUNITYID,memb_PatientId  as PatientIdS,Nls_InitCap(memb_' +
              'Pcity) Address,(Select memb_fname||'#39' '#39'||memb_fname'
            
              'From hs_memb_member where memb_memberid=m.memb_memberno) as Empl' +
              'oyee,Nls_InitCap(memb_Sex) Gender,memb_memberid as employeeid'
            'From hs_memb_member M where memb_IsActive='#39'Y'#39)
    Left = 56
    Top = 72
  end
object DataSourceDisplay: TDataSource
    DataSet = QueryDisplay
    Left = 88
    Top = 72
  end
end
