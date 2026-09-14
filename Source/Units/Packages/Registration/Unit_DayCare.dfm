object Form_DayCare: TForm_DayCare
  Left = 364
  Top = 135
  BorderIcons = [biSystemMenu]
  Caption = 'Day Care Patient'
  ClientHeight = 482
  ClientWidth = 950
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControlBillReprint: TPageControl
    Left = 0
    Top = 30
    Width = 950
    Height = 433
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 2
    object TabSheet2: TTabSheet
      Caption = 'Visit Detail'
      DesignSize = (
        942
        405)
      object Label4: TLabel
        Left = 11
        Top = 13
        Width = 71
        Height = 13
        Caption = 'Hospital No.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 11
        Top = 38
        Width = 37
        Height = 13
        Caption = 'Name '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_Name: TLabel
        Left = 93
        Top = 38
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 398
        Top = 38
        Width = 50
        Height = 13
        Caption = 'Age/Sex'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_AgeSex: TLabel
        Left = 483
        Top = 38
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 398
        Top = 62
        Width = 65
        Height = 13
        Caption = 'Contact No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_ContactNo: TLabel
        Left = 483
        Top = 62
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 73
        Top = 38
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label8: TLabel
        Left = 468
        Top = 38
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label9: TLabel
        Left = 468
        Top = 62
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label10: TLabel
        Left = 73
        Top = 14
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label11: TLabel
        Left = 11
        Top = 62
        Width = 46
        Height = 13
        Caption = 'Address'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_Address: TLabel
        Left = 93
        Top = 62
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 73
        Top = 62
        Width = 3
        Height = 13
        Caption = ':'
      end
      object Label14: TLabel
        Left = 11
        Top = 86
        Width = 73
        Height = 13
        Caption = 'Medicare No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lbl_MedicareNo: TLabel
        Left = 93
        Top = 86
        Width = 36
        Height = 13
        Caption = '?????'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 73
        Top = 86
        Width = 3
        Height = 13
        Caption = ':'
      end
      object SBSearch: TSpeedButton
        Left = 217
        Top = 8
        Width = 90
        Height = 22
        Hint = 'Search'
        Caption = 'S&earch'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = SBSearchClick
      end
      object Label100: TLabel
        Left = 559
        Top = 7
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Consultant :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 569
        Top = 31
        Width = 57
        Height = 13
        Alignment = taRightJustify
        Caption = 'Remarks :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditHosNo: TEdit
        Left = 90
        Top = 11
        Width = 121
        Height = 21
        TabOrder = 0
        OnExit = EditHosNoExit
        OnKeyPress = EditHosNoKeyPress
      end
      object DBGridBillList: TDBGrid
        Left = 11
        Top = 105
        Width = 939
        Height = 295
        Anchors = [akLeft, akTop, akRight]
        DataSource = DS_PatientVisit
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DACV_VISITDATE'
            Title.Alignment = taCenter
            Title.Caption = 'Visit Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DACV_VISITTIME'
            Title.Alignment = taCenter
            Title.Caption = 'Visit Time'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 98
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PATIENTNAME'
            Title.Alignment = taCenter
            Title.Caption = 'Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 229
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DOCNAME'
            Title.Alignment = taCenter
            Title.Caption = 'DocName'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DACV_REMARKS'
            Title.Caption = 'Remarks'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 191
            Visible = True
          end>
      end
      object DBLCB_Doctor: TDBLookupComboBox
        Left = 632
        Top = 3
        Width = 304
        Height = 21
        DropDownAlign = daRight
        DropDownWidth = 304
        KeyField = 'DOcId'
        ListField = 'Docname'
        ListFieldIndex = 1
        ListSource = DS_Doctor
        TabOrder = 2
        OnKeyDown = DBLCB_DoctorKeyDown
      end
      object BtnSave: TBitBtn
        Left = 632
        Top = 50
        Width = 133
        Height = 32
        Caption = '&Save (F12)'
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        ParentFont = False
        TabOrder = 3
        OnClick = BtnSaveClick
      end
      object Edit_Remarks: TEdit
        Left = 632
        Top = 26
        Width = 304
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 20
        TabOrder = 4
      end
      object CB_Remove: TCheckBox
        Left = 397
        Top = 3
        Width = 156
        Height = 17
        Caption = 'Cancel (F11)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 463
    Width = 950
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 30
    Align = alTop
    TabOrder = 0
    DesignSize = (
      950
      30)
    object BitBtnCancel: TBitBtn
      Left = 856
      Top = 2
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancel (Esc)'
      DoubleBuffered = True
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
      TabOrder = 0
      OnClick = BitBtnCancelClick
    end
  end
    object Query_PatientInfo: TOraQuery
    Left = 459
    Top = 6
  end
  object Query_Process: TOraQuery
    Left = 539
    Top = 6
  end
  object Query_PatientVisit: TOraQuery
    SQL.Strings = (
            
              'select D.*,(Select Pama_PatientName From Hs_Pama_PatientMain whe' +
              're Pama_PatientId=D.DACV_PatientId)PatientName,'
            
              '(Select Doct_DocName From Hs_Doct_Doctor Where Doct_DocId=D.DACV' +
              '_DOCID)DocName'
            'From HS_DACV_DayCareVisit D'
            'where DACV_ISCANCEL='#39'N'#39)
    Left = 307
    Top = 6
  end
object DS_PatientVisit: TDataSource
    DataSet = Query_PatientVisit
    Left = 350
    Top = 6
  end
    object Query_Doctor: TOraQuery
    SQL.Strings = (
            
              'Select DOCT_DocId DocId,DOCT_DocCode as DocCode,Trim(DOCT_DocNam' +
              'e) DocName,DOCT_DepCode as DepCode,DOCT_ISQUEUENOGENINREG ISQUEU' +
              'ENOGENINREG,DOCT_DOCSHAREGROUP'
            'From HS_DOCT_Doctor'
            'where 1=1 '
            'Order by DOCT_DocName')
    Left = 626
    Top = 10
  end
object DS_Doctor: TDataSource
    DataSet = Query_Doctor
    Left = 695
    Top = 4
  end
end
