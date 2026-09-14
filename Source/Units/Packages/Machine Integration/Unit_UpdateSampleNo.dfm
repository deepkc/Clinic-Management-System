object Form_update: TForm_update
  Left = 0
  Top = 0
  Caption = 'Update Sample No'
  ClientHeight = 467
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    707
    467)
  PixelsPerInch = 96
  TextHeight = 13
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 43
    Width = 699
    Height = 421
    Anchors = []
    DataSource = DS
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = SMDBGrid1CellClick
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
    ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 40
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'testcode'
        Title.Caption = 'Test Code'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Result'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DailyNo'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SampleNo'
        Width = 213
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 630
    object Edit_SampleNo: TEdit
      Left = 2
      Top = 16
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Update: TButton
      Left = 125
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 1
      OnClick = UpdateClick
    end
  end
  object DS: TDataSource
    DataSet = Query
    Left = 152
    Top = 96
  end
  object Query: TOraQuery
    SQL.Strings = (
      
        'select Lamr_TestCode TestCode,Lamr_SampleNo SampleNo,Lamr_result' +
        ' Result,Lamr_dailyNo DailyNo from lamr_machineresult where'
      
        'TO_CHAR (TO_DATE (SUBSTR (LAMR_DateTime, 1, 8),'#39'YYYY/MM/DD'#39'),'#39'YY' +
        'YY/MM/DD'#39')=(select to_char(sysdate,'#39'YYYY/MM/DD'#39') from dual)')
    FetchRows = 500
    Left = 376
    Top = 104
  end
  object Qry: TOraQuery
    SQL.Strings = (
      
        'select  (select sampleno from samplecollection where patienttest' +
        'id=pt.patienttestid)sampleno,(select tena_testname from manipal.' +
        'hs_tena_testname'
      'where tena_testnamecode=pt.testnamecode)TestName '
      
        'from manipal.patienttest pt where   patienttestid in(select pati' +
        'enttestid from samplecollection where SAMPLETAKENDATE>=(select t' +
        'o_char(sysdate,'#39'YYYY/MM/DD'#39') from dual))'
      'and dailyno='#39'83'#39
      
        'and TestNameId=(select TestNameId From Tema_Testmapping where Te' +
        'ma_TestNameId=(select LMTN_TestnameId from LMTN_LABMACHINETESTNA' +
        'ME '
      'where Lmtn_TestNameCode='#39'BID'#39'))')
    FetchRows = 500
    Left = 376
    Top = 160
  end
  object Query_Process: TOraQuery
    SQL.Strings = (
      
        'select  (select sampleno from samplecollection where patienttest' +
        'id=pt.patienttestid)sampleno,(select tena_testname from manipal.' +
        'hs_tena_testname'
      'where tena_testnamecode=pt.testnamecode)TestName '
      
        'from manipal.patienttest pt where   patienttestid in(select pati' +
        'enttestid from samplecollection where SAMPLETAKENDATE>=(select t' +
        'o_char(sysdate,'#39'YYYY/MM/DD'#39') from dual))'
      'and dailyno='#39'83'#39
      
        'and TestNameId=(select TestNameId From Tema_Testmapping where Te' +
        'ma_TestNameId=(select LMTN_TestnameId from LMTN_LABMACHINETESTNA' +
        'ME '
      'where Lmtn_TestNameCode='#39'BID'#39'))')
    FetchRows = 500
    Left = 376
    Top = 232
  end
end
