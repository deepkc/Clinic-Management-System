object FormEditReportFindingAnalysis: TFormEditReportFindingAnalysis
  Left = 165
  Top = 79
  BorderStyle = bsDialog
  Caption = 'Edit Report Finding Analysis'
  ClientHeight = 474
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    528
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = -1
    Top = 0
    Width = 531
    Height = 61
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 9
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Test Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 244
      Top = 10
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Test Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 39
      Top = 33
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 212
      Top = 33
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Searching Text'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBoxTestName: TDBLookupComboBox
      Left = 66
      Top = 6
      Width = 145
      Height = 21
      KeyField = 'TESTNAMEID'
      ListField = 'TESTNAME'
      ListSource = DSTestName
      TabOrder = 0
      OnClick = DBLookupComboBoxTestNameClick
    end
    object DBLookupComboBoxTestType: TDBLookupComboBox
      Left = 303
      Top = 6
      Width = 145
      Height = 21
      KeyField = 'editFindingid'
      ListField = 'REPORTTYPE'
      ListSource = DSTestType
      TabOrder = 1
      OnClick = DBLookupComboBoxTestTypeClick
    end
    object DBLookupComboBoxTitle: TDBLookupComboBox
      Left = 66
      Top = 30
      Width = 145
      Height = 21
      KeyField = 'Titleid'
      ListField = 'heading'
      ListSource = DSTempData
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 450
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Search'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn1Click
    end
    object EditResult: TEdit
      Left = 303
      Top = 30
      Width = 145
      Height = 21
      TabOrder = 4
      OnKeyPress = EditResultKeyPress
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 61
    Width = 529
    Height = 391
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    DesignSize = (
      529
      391)
    object Label5: TLabel
      Left = 420
      Top = 6
      Width = 129
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Patient Number :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object LblTotalNo: TLabel
      Left = 569
      Top = 3
      Width = 21
      Height = 20
      Caption = '00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 24
      Width = 523
      Height = 364
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DSListing
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
          FieldName = 'PATIENTID'
          Title.Alignment = taCenter
          Title.Caption = 'PATIENTNO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Alignment = taCenter
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GENDER'
          Title.Alignment = taCenter
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGE'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS'
          Title.Alignment = taCenter
          Width = 89
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 16
      Top = 3
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 80
      Top = 3
      Width = 151
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = Edit2Change
    end
    object Edit4: TEdit
      Left = 283
      Top = 3
      Width = 43
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = Edit4Change
    end
    object Edit6: TEdit
      Left = 325
      Top = 3
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnChange = Edit6Change
    end
    object Edit3: TEdit
      Left = 230
      Top = 3
      Width = 53
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnChange = Edit3Change
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 455
    Width = 528
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object QueryTestName: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select TestNameID,TestName From TestName'
      'Where(LineEdit='#39'F'#39')'
      'AND(ISActive='#39'T'#39')'
      'And 39=39'
      'Order By TestName'
      ''
      ' ')
    Left = 336
    Top = 136
  end
  object DSTestName: TDataSource
    DataSet = QueryTestName
    Left = 296
    Top = 136
  end
  object QueryTestType: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      '')
    Left = 320
    Top = 288
  end
  object DSTestType: TDataSource
    DataSet = QueryTestType
    Left = 304
    Top = 272
  end
  object TableTestList: TTable
    Left = 480
    Top = 240
  end
  object TableHead: TTable
    DatabaseName = 'Hospital'
    Left = 408
    Top = 232
  end
  object QueryProcess: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      '')
    Left = 296
    Top = 264
  end
  object QueryTempData: TQuery
    Left = 296
    Top = 296
  end
  object DSTempData: TDataSource
    DataSet = QueryTempData
    Left = 256
    Top = 288
  end
  object QueryListing: TQuery
    DatabaseName = 'Hospital'
    Left = 296
    Top = 200
  end
  object DSListing: TDataSource
    DataSet = QueryListing
    Left = 320
    Top = 208
  end
end
