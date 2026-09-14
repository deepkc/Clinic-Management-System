object Frame_InvestigationDetail: TFrame_InvestigationDetail
  Left = 0
  Top = 0
  Width = 715
  Height = 460
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 715
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      715
      36)
    object Label18: TLabel
      Left = 8
      Top = 13
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Doctor :'
    end
    object Label5: TLabel
      Left = 265
      Top = 13
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Report Date :'
    end
    object DBLCB_RefDoc: TDBLookupComboBox
      Left = 53
      Top = 9
      Width = 187
      Height = 21
      Anchors = [akTop, akRight]
      KeyField = 'Doccode'
      ListField = 'DocName'
      ListSource = DS_RefDoccode
      TabOrder = 0
    end
    object Dex_RptDate: TDateEditX
      Left = 337
      Top = 9
      Width = 65
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      ControlData = {
        545046300A5444617465456469745200044C65667403510103546F7002090B44
        61746541442E5965617203DB070C4461746541442E4D6F6E7468020C0A446174
        6541442E44617902020B4461746556532E596561720314080C4461746556532E
        4D6F6E746802080A4461746556532E44617902100000}
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 36
    Width = 715
    Height = 424
    Align = alClient
    DataSource = DS_Findings
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'Test'
        ReadOnly = True
        Title.Caption = 'Tests'
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Finding'
        ReadOnly = True
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Range'
        ReadOnly = True
        Title.Caption = 'Ref. Range'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unit'
        ReadOnly = True
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Extra'
        ReadOnly = True
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ExtraFinding'
        ReadOnly = True
        Title.Caption = 'Extra Findings'
        Width = 122
        Visible = True
      end>
  end
  object Table_Findings: TTable
    Left = 280
    Top = 280
  end
  object DS_Findings: TDataSource
    DataSet = Query_Finding
    Left = 336
    Top = 280
  end
  object Query_Finding: TQuery
    RequestLive = True
    SQL.Strings = (
      'Select * from Findings')
    Left = 408
    Top = 272
  end
  object DS_RefDoccode: TDataSource
    DataSet = Query_RefDoccode
    Left = 536
    Top = 192
  end
  object Query_RefDoccode: TQuery
    SQL.Strings = (
      'Select * from Doctor')
    Left = 568
    Top = 192
  end
  object Query_Data: TQuery
    ObjectView = True
    SQL.Strings = (
      'SELECT SC.*'
      
        ',(Select Footerid from footer where testnameid=sc.testnameid)foo' +
        'terid'
      
        ',(Select DisplayOrder from testname where testnameid=sc.testname' +
        'id)dispalyorder'
      'FROM VW_SAMPLE_COLLECTED SC,DEPARTMENT D'
      'where sc.depid=d.depid '
      'And 99=99'
      'and 99=99'
      'ORDER BY D.Deporder,dispalyorder'
      '')
    Left = 496
    Top = 272
  end
end
