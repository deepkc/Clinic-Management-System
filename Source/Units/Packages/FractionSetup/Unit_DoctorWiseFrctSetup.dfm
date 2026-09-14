object Form_DoctorWiseFrctSetup: TForm_DoctorWiseFrctSetup
  Left = 402
  Top = 154
  Caption = 'Doctor Wise Fraction Setup'
  ClientHeight = 520
  ClientWidth = 782
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
  object PageControl1: TPageControl
    Left = 0
    Top = 28
    Width = 782
    Height = 473
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      object Label8: TLabel
        Left = 20
        Top = 5
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'Test Name'
      end
      object Label9: TLabel
        Left = 35
        Top = 69
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Position'
      end
      object LabelA: TLabel
        Left = 45
        Top = 190
        Width = 26
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rate '
      end
      object Label1: TLabel
        Left = 13
        Top = 47
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Commession'
      end
      object LabelCommAmt: TLabel
        Left = 77
        Top = 47
        Width = 26
        Height = 13
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 44
        Top = 95
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Name'
      end
      object SBDelete: TSpeedButton
        Left = 745
        Top = 1
        Width = 29
        Height = 25
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
        OnClick = SBDeleteClick
      end
      object Label3: TLabel
        Left = 3
        Top = 28
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Test Rate(Rs.)'
      end
      object Label_TestPrice: TLabel
        Left = 77
        Top = 28
        Width = 26
        Height = 13
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 79
        Top = 172
        Width = 54
        Height = 13
        Caption = 'Actual(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 150
        Top = 172
        Width = 49
        Height = 13
        Caption = 'Amt (Rs)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 510
        Top = 148
        Width = 36
        Height = 14
        Caption = 'F.P.W.D'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 510
        Top = 129
        Width = 36
        Height = 14
        Caption = 'F.P.F.C '
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 551
        Top = 129
        Width = 177
        Height = 13
        Caption = '- Fixed Person For Commession'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 551
        Top = 148
        Width = 211
        Height = 13
        Caption = '- Fraction Proportional With Discount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 510
        Top = 170
        Width = 25
        Height = 14
        Caption = 'C.F.F'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 550
        Top = 169
        Width = 218
        Height = 13
        Caption = '- Compulsory (To Choose) For Fraction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 226
        Top = 26
        Width = 62
        Height = 13
        Caption = 'Fraction For :'
      end
      object Label_FractionFor: TLabel
        Left = 292
        Top = 27
        Width = 65
        Height = 13
        Caption = 'FractionFor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 714
        Top = 1
        Width = 29
        Height = 25
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object Label_Percent: TLabel
        Left = 78
        Top = 154
        Width = 26
        Height = 13
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label_Amt: TLabel
        Left = 151
        Top = 154
        Width = 26
        Height = 13
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 17
        Top = 154
        Width = 52
        Height = 13
        Caption = 'Standard'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 352
        Top = 191
        Width = 25
        Height = 14
        Caption = 'C.F.F'
        Color = clRed
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label17: TLabel
        Left = 369
        Top = 189
        Width = 122
        Height = 13
        Caption = '<- Inactive Fraction Setup'
      end
      object Label_Mode: TLabel
        Left = 631
        Top = 4
        Width = 85
        Height = 19
        Caption = 'New Mode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGridCommType: TDBGrid
        Left = 0
        Top = 208
        Width = 777
        Height = 236
        DataSource = DS_PositionWiseFraction
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridCommTypeDrawColumnCell
        OnDblClick = DBGridCommTypeDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'POSITIONNAME'
            Title.Alignment = taCenter
            Title.Caption = 'Position'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISFIXEDPERSONFORFRACTION'
            Title.Alignment = taCenter
            Title.Caption = 'F.P.F.C '
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISFRACTIONPROPWITHDISPER'
            Title.Alignment = taCenter
            Title.Caption = 'F.P.W.D'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ISCOMPFORFRACTION'
            Title.Alignment = taCenter
            Title.Caption = 'C.F.F'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRACTIONRATE'
            Title.Alignment = taCenter
            Title.Caption = 'Rate A(%)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRACTIONAMOUNT'
            Title.Alignment = taCenter
            Title.Caption = 'Amt. A (Rs)'
            Visible = True
          end>
      end
      object Edit_Rate: TEdit
        Left = 76
        Top = 186
        Width = 65
        Height = 21
        TabOrder = 4
        OnExit = Edit_RateExit
        OnKeyPress = Edit_RateKeyPress
      end
      object CB_STD: TCheckBox
        Left = 216
        Top = 188
        Width = 35
        Height = 17
        Caption = 'std'
        Checked = True
        Enabled = False
        State = cbChecked
        TabOrder = 6
      end
      object DBLCB_TestName: TDBLookupComboBox
        Left = 76
        Top = 2
        Width = 285
        Height = 21
        Enabled = False
        KeyField = 'FRACTIONID'
        ListField = 'DESCRIPTION'
        ListSource = DS_TestName
        TabOrder = 0
        OnClick = DBLCB_TestNameClick
        OnKeyDown = DBLCB_TestNameKeyDown
      end
      object CB_FractionProportional: TCheckBox
        Left = 76
        Top = 116
        Width = 249
        Height = 17
        Caption = 'Fraction Proportional With Discount              (F2)'
        TabOrder = 2
      end
      object Edit_RateAmt: TEdit
        Left = 148
        Top = 186
        Width = 65
        Height = 21
        TabOrder = 5
        OnExit = Edit_RateAmtExit
        OnKeyPress = Edit_RateAmtKeyPress
      end
      object CB_CompForFration: TCheckBox
        Left = 76
        Top = 134
        Width = 246
        Height = 17
        Caption = 'Compulsory (To Choose) For Fraction            (F3)'
        TabOrder = 3
      end
      object DBLCB_Position: TDBLookupComboBox
        Left = 78
        Top = 66
        Width = 261
        Height = 21
        KeyField = 'POSITIONID'
        ListField = 'POSITION'
        ListSource = DS_Position
        TabOrder = 1
        OnKeyDown = DBLCB_PositionKeyDown
      end
      object DBLCB_DefaultDocPos: TDBLookupComboBox
        Left = 76
        Top = 93
        Width = 261
        Height = 21
        KeyField = 'DOCID'
        ListField = 'DOCNAME'
        ListSource = DS_DocPerosn
        TabOrder = 8
      end
      object CB_IsActiveParticipant: TCheckBox
        Left = 341
        Top = 68
        Width = 155
        Height = 17
        Caption = 'Is Active Fraction ( Position )'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 28
    Align = alTop
    TabOrder = 0
    object BtnSave: TBitBtn
      Left = 587
      Top = 1
      Width = 95
      Height = 25
      Caption = '&Save (F12)'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BtnSaveClick
    end
    object BtnCancel: TBitBtn
      Left = 683
      Top = 1
      Width = 98
      Height = 25
      Hint = 'Cancel as well as Exit'
      Cancel = True
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
      TabOrder = 1
      OnClick = BtnCancelClick
    end
    object BtnNew: TBitBtn
      Left = 492
      Top = 1
      Width = 95
      Height = 25
      Hint = 'New Patient [F1]'
      Caption = '&New'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      TabStop = False
      OnClick = BtnNewClick
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 501
    Width = 782
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Query_TestName: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select FractionId,TestNameId,Description,DepId,IsRateAmt,Fractio' +
        'nAmount,FractionRate'
      'From Fraction'
      'where FractionType=3 Order By Description'
      ' '
      ' ')
    Left = 684
    Top = 119
  end
  object DS_TestName: TDataSource
    DataSet = Query_TestName
    Left = 684
    Top = 111
  end
  object Query_PositionWiseFraction: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      
        'Select DWF.DOCTORWISEFRACTIONID,FR.Description,DWF.PositionId,DW' +
        'F.Name,DWF.PositionWiseFractionId,DWF.FractionId,'
      
        'DWF.FractionRate,DWF.FractionAmount,DWF.PositionName,FR.ISRATEAM' +
        'T,DWF.IsFixedPersonForFraction,'
      
        'DWF.IsFractionPropWithDisPer,DWF.ISCOMPFORFRACTION,DWF.DOCID,DWF' +
        '.ISActive'
      
        'From DoctorWISEFraction DWF ,Fraction FR where DWF.FractionId=FR' +
        '.FractionId'
      'and DWF.FractionId=:FractionId'
      ' '
      ' ')
    Left = 68
    Top = 318
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FractionId'
        ParamType = ptUnknown
      end>
  end
  object DS_PositionWiseFraction: TDataSource
    DataSet = Query_PositionWiseFraction
    Left = 92
    Top = 366
  end
  object Query_Void: TQuery
    DatabaseName = 'Hospital'
    Left = 156
    Top = 342
  end
  object Query_Position: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select * From Position')
    Left = 724
    Top = 166
  end
  object DS_Position: TDataSource
    DataSet = Query_Position
    Left = 756
    Top = 166
  end
  object Query_DocPerson: TQuery
    DatabaseName = 'Hospital'
    SQL.Strings = (
      'Select DocId,DocCode,DocName From Doctor where DActive='#39'Y'#39
      'Order By DocName')
    Left = 420
    Top = 156
  end
  object DS_DocPerosn: TDataSource
    DataSet = Query_DocPerson
    Left = 448
    Top = 152
  end
end
