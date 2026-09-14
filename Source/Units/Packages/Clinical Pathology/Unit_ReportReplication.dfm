object Form_Replicate: TForm_Replicate
  Left = 0
  Top = 0
  Caption = 'Replicate Rich Setup'
  ClientHeight = 154
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 37
    Align = alTop
    TabOrder = 0
    object Btn_close: TBitBtn
      Left = 416
      Top = 1
      Width = 84
      Height = 35
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'Close'
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
      TabOrder = 0
      OnClick = Btn_closeClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 501
    Height = 117
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 17
      Top = 23
      Width = 86
      Height = 13
      Caption = 'Test Name (From)'
    end
    object Label7: TLabel
      Left = 106
      Top = 23
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object Label1: TLabel
      Left = 17
      Top = 47
      Width = 74
      Height = 13
      Caption = 'Test Name (To)'
    end
    object Label3: TLabel
      Left = 106
      Top = 47
      Width = 4
      Height = 13
      Caption = ':'
      Color = clBackground
      ParentColor = False
    end
    object DBLCB_TestName1: TDBLookupComboBox
      Left = 120
      Top = 16
      Width = 274
      Height = 21
      DropDownWidth = 300
      KeyField = 'Tena_TESTNAMEID'
      ListField = 'Tena_TESTNAME'
      ListSource = DS_TestName1
      TabOrder = 0
    end
    object Dblcb_TestName2: TDBLookupComboBox
      Left = 121
      Top = 43
      Width = 274
      Height = 21
      DropDownWidth = 300
      KeyField = 'Tena_TESTNAMEID'
      ListField = 'Tena_TESTNAME'
      ListSource = Ds_TestName2
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 43
      Width = 75
      Height = 25
      Caption = 'Replicate'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 400
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Delete'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object RichEdit_DefaultFinding: TRichEdit
      Left = 0
      Top = 93
      Width = 606
      Height = 77
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'RichEdit_DefaultFinding')
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object Memo1: TMemo
      Left = 0
      Top = 70
      Width = 500
      Height = 89
      Lines.Strings = (
        'Memo1')
      TabOrder = 5
      Visible = False
    end
    object Memo2: TMemo
      Left = 1
      Top = 74
      Width = 500
      Height = 89
      Lines.Strings = (
        'Memo2')
      TabOrder = 6
      Visible = False
    end
  end
  object Query_TestName1: TOraQuery
    SQL.Strings = (
      'Select * From Manipal.TestName'
      'Where DepId in'
      '(Select DepId From Manipal.Department Where Extended_Report='#39'Y'#39')'
      
        'And TestNameId In (Select Distinct TestNameid from clinical_test' +
        'Setup)'
      'Order by TestName')
    Left = 40
  end
  object DS_TestName1: TDataSource
    DataSet = Query_TestName1
    Left = 8
  end
  object Ds_TestName2: TDataSource
    DataSet = Query_TestName2
    Left = 72
  end
  object Query_TestName2: TOraQuery
    SQL.Strings = (
      'Select * From Manipal.TestName'
      'Where DepId in'
      '(Select DepId From Manipal.Department Where Extended_Report='#39'Y'#39')'
      
        'And TestNameId Not In (Select Distinct TestNameid from clinical_' +
        'testSetup)'
      'Order by TestName')
    Left = 104
  end
end
