object Formpathologyfootersetup: TFormpathologyfootersetup
  Left = 282
  Top = 216
  BorderStyle = bsDialog
  Caption = 'Pathology Footer Setup'
  ClientHeight = 285
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 33
    Align = alTop
    TabOrder = 0
    object BitBtnSave: TBitBtn
      Left = 424
      Top = 4
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      TabOrder = 0
      OnClick = BitBtnSaveClick
    end
    object BitBtnCancel: TBitBtn
      Left = 501
      Top = 4
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancel'
      TabOrder = 1
      OnClick = BitBtnCancelClick
    end
    object BitBtn1: TBitBtn
      Left = 346
      Top = 4
      Width = 77
      Height = 25
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&New'
      ParentBiDiMode = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object List: TPageControl
    Left = 0
    Top = 33
    Width = 583
    Height = 320
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Report Footer(s)'
      object DBGrid1: TDBGrid
        Left = 3
        Top = 16
        Width = 561
        Height = 129
        DataSource = DS_LabFooter
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'DEPNAME'
            Title.Caption = 'Department'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOOTER1'
            Title.Caption = 'Footer1'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOOTER2'
            Title.Caption = 'Footer2'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOOTER3'
            Title.Caption = 'Footer3'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSULTANT'
            Title.Caption = 'Consultant'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISONLYONE'
            Title.Caption = 'IsOnlyOne'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME1'
            Title.Caption = 'FooterName1'
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME2'
            Title.Caption = 'FooterName2'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME3'
            Title.Caption = 'FooterName3'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME5'
            Title.Caption = 'Con. Name'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&New Footer'
      ImageIndex = 1
      object Label1: TLabel
        Left = 10
        Top = 60
        Width = 64
        Height = 13
        Caption = 'Footer One'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 7
        Top = 84
        Width = 65
        Height = 13
        Caption = 'Footer Two'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = -1
        Top = 110
        Width = 74
        Height = 13
        Caption = 'Footer Three'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 0
        Top = 16
        Width = 66
        Height = 13
        Caption = 'Department'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 464
        Top = 32
        Width = 97
        Height = 22
        Caption = 'Setup'
        OnClick = SpeedButton1Click
      end
      object Label5: TLabel
        Left = 4
        Top = 133
        Width = 66
        Height = 13
        Caption = 'Footer Four'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 154
        Width = 61
        Height = 13
        Caption = 'Consultant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 80
        Top = 56
        Width = 201
        Height = 21
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 80
        Top = 80
        Width = 201
        Height = 21
        TabOrder = 3
      end
      object Edit3: TEdit
        Left = 80
        Top = 105
        Width = 201
        Height = 21
        TabOrder = 5
      end
      object BDPathDep: TDBLookupComboBox
        Left = 80
        Top = 16
        Width = 201
        Height = 21
        KeyField = 'DEPID'
        ListField = 'DEPNAME'
        ListSource = DataSource2
        TabOrder = 0
        OnClick = BDPathDepClick
      end
      object CBOnlyone: TCheckBox
        Left = 80
        Top = 189
        Width = 97
        Height = 17
        Caption = 'Is Only One Footer '
        TabOrder = 9
        OnClick = CBOnlyoneClick
      end
      object DBFooterName1: TDBLookupComboBox
        Left = 288
        Top = 56
        Width = 273
        Height = 21
        KeyField = 'LABFOOTERNAMEID'
        ListField = 'LABFOOTERNAME'
        ListSource = DSLabFooter
        TabOrder = 2
        OnKeyDown = DBFooterName1KeyDown
      end
      object DBFooterName2: TDBLookupComboBox
        Left = 288
        Top = 80
        Width = 273
        Height = 21
        KeyField = 'LABFOOTERNAMEID'
        ListField = 'LABFOOTERNAME'
        ListSource = DSLabFooter
        TabOrder = 4
        OnKeyDown = DBFooterName2KeyDown
      end
      object DBFooterName3: TDBLookupComboBox
        Left = 288
        Top = 105
        Width = 273
        Height = 21
        KeyField = 'LABFOOTERNAMEID'
        ListField = 'LABFOOTERNAME'
        ListSource = DSLabFooter
        TabOrder = 6
        OnKeyDown = DBFooterName3KeyDown
      end
      object Edit4: TEdit
        Left = 80
        Top = 128
        Width = 201
        Height = 21
        TabOrder = 7
      end
      object DBFooterName4: TDBLookupComboBox
        Left = 287
        Top = 128
        Width = 273
        Height = 21
        KeyField = 'LABFOOTERNAMEID'
        ListField = 'LABFOOTERNAME'
        ListSource = DSLabFooter
        TabOrder = 8
        OnKeyDown = DBFooterName4KeyDown
      end
      object Edit_Consultant: TEdit
        Left = 80
        Top = 151
        Width = 199
        Height = 21
        TabOrder = 10
      end
      object DBConsultant: TDBLookupComboBox
        Left = 289
        Top = 151
        Width = 269
        Height = 21
        KeyField = 'LABFOOTERNAMEID'
        ListField = 'LABFOOTERNAME'
        ListSource = DSLabFooter
        TabOrder = 11
        OnKeyDown = DBConsultantKeyDown
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 266
    Width = 583
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object DS_LabFooter: TDataSource
    DataSet = Query_LabFooter
    Left = 178
    Top = 40
  end
    object Query_LabFooter: TOraQuery
    SQL.Strings = (
            
              'Select P.DepID,Footer1,Footer2,Footer3,Footer4,consultant,IsOnly' +
              'One,DepName'
            
              ',LabFooterNameID1,LabFooterNameID2,LabFooterNameID3,LabFooterNam' +
              'eID4,consultantid,'
            
              '(Select LabFooterName From LabFooterName Where LabFooterNameID=P' +
              '.LabFooterNameID1) Name1,'
            
              '(Select LabFooterName From LabFooterName Where LabFooterNameID=P' +
              '.LabFooterNameID2) Name2,'
            
              '(Select LabFooterName From LabFooterName Where LabFooterNameID=P' +
              '.LabFooterNameID3) Name3,'
            
              '(Select LabFooterName From LabFooterName Where LabFooterNameID=P' +
              '.LabFooterNameID4) Name4,'
            
              '(Select LabFooterName From LabFooterName Where LabFooterNameID=P' +
              '.consultantid) Name5'
            'From PathologyFooterSetUP P,Department D'
            'Where P.DepID=D.DepID'
            'And 39=39')
    Left = 210
    Top = 40
    object Query_LabFooterDEPID: TFloatField
      FieldName = 'DEPID'
    end
    object Query_LabFooterFOOTER1: TStringField
      FieldName = 'FOOTER1'
      Size = 30
    end
    object Query_LabFooterFOOTER2: TStringField
      FieldName = 'FOOTER2'
      Size = 30
    end
    object Query_LabFooterFOOTER3: TStringField
      FieldName = 'FOOTER3'
      Size = 30
    end
    object Query_LabFooterCONSULTANT: TStringField
      FieldName = 'CONSULTANT'
      Size = 30
    end
    object Query_LabFooterConsultantid: TFloatField
      FieldName = 'Consultantid'
    end
    object Query_LabFooterISONLYONE: TStringField
      FieldName = 'ISONLYONE'
      Size = 1
    end
    object Query_LabFooterDEPNAME: TStringField
      FieldName = 'DEPNAME'
      Size = 100
    end
    object Query_LabFooterLABFOOTERNAMEID1: TFloatField
      FieldName = 'LABFOOTERNAMEID1'
    end
    object Query_LabFooterLABFOOTERNAMEID2: TFloatField
      FieldName = 'LABFOOTERNAMEID2'
    end
    object Query_LabFooterLABFOOTERNAMEID3: TFloatField
      FieldName = 'LABFOOTERNAMEID3'
    end
    object Query_LabFooterNAME1: TStringField
      FieldName = 'NAME1'
      Size = 100
    end
    object Query_LabFooterNAME2: TStringField
      FieldName = 'NAME2'
      Size = 100
    end
    object Query_LabFooterNAME3: TStringField
      FieldName = 'NAME3'
      Size = 100
    end
    object Query_LabFooterFOOTER4: TStringField
      FieldName = 'FOOTER4'
      Size = 30
    end
    object Query_LabFooterLABFOOTERNAMEID4: TFloatField
      FieldName = 'LABFOOTERNAMEID4'
    end
    object Query_LabFooterNAME4: TStringField
      FieldName = 'NAME4'
      Size = 100
    end
    object Query_LabFooterNAME5: TStringField
      FieldName = 'NAME5'
    end
  end
object DataSource2: TDataSource
    DataSet = Query2
    Left = 106
    Top = 48
  end
    object Query2: TOraQuery
    SQL.Strings = (
            'Select DepName,DepID From Department ')
    Left = 138
    Top = 40
  end
object DSLabFooter: TDataSource
    DataSet = QryLabFooter
    Left = 311
    Top = 41
  end
    object QryLabFooter: TOraQuery
    SQL.Strings = (
            'Select LabFooterNameID,LabFooterName '
            'From LabFooterName '
            'Where IsActive='#39'T'#39
            'Order By LabFooterName')
    Left = 367
    Top = 25
  end
end
