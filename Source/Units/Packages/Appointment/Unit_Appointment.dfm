object Form_Appointment: TForm_Appointment
  Left = 0
  Top = 0
  Caption = 'Appointment'
  ClientHeight = 722
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Parent: TPanel
    Left = 0
    Top = 98
    Width = 1284
    Height = 605
    Align = alClient
    TabOrder = 0
    ExplicitTop = 89
    ExplicitHeight = 614
  end
  object Panel_list: TPanel
    Left = 0
    Top = 98
    Width = 1284
    Height = 605
    Align = alClient
    TabOrder = 1
    ExplicitTop = 89
    ExplicitHeight = 614
    object Label2: TLabel
      Left = 13
      Top = 14
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
    object Label16: TLabel
      Left = 313
      Top = 17
      Width = 65
      Height = 13
      Caption = 'Hospital No. :'
    end
    object lbl_Hosno: TLabel
      Left = 384
      Top = 17
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 489
      Top = 17
      Width = 71
      Height = 13
      Caption = 'Patient Name :'
    end
    object lbl_patientname: TLabel
      Left = 568
      Top = 17
      Width = 72
      Height = 13
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 51
      Width = 1276
      Height = 550
      Margins.Top = 50
      Align = alClient
      DataSource = DS_List
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Color = 12040191
          Expanded = False
          FieldName = 'PATIENTID'
          Title.Caption = 'Doctor'
          Width = 92
          Visible = True
        end
        item
          Color = 12040191
          Expanded = False
          FieldName = 'FNAME'
          Title.Caption = 'Patient Name'
          Width = 153
          Visible = True
        end
        item
          Color = 12040191
          Expanded = False
          FieldName = 'LNAME'
          Title.Caption = 'Phone No.'
          Width = 65
          Visible = True
        end
        item
          Color = 16777151
          Expanded = False
          FieldName = 'AGEGENDER'
          Title.Caption = 'Doctor'
          Width = 89
          Visible = True
        end
        item
          Color = 16777151
          Expanded = False
          FieldName = 'DOB'
          Title.Caption = 'Patient Name'
          Width = 175
          Visible = True
        end
        item
          Color = 16777151
          Expanded = False
          FieldName = 'PADDRESS'
          Title.Caption = 'Phone No.'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEPCODE'
          Title.Caption = 'Doctor'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REGDATE'
          Title.Caption = 'Patient Name'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MARITALSTATUS'
          Title.Caption = 'Phone No.'
          Width = 65
          Visible = True
        end
        item
          Color = 16777166
          Expanded = False
          FieldName = 'PHONENO'
          Title.Caption = 'Doctor'
          Width = 86
          Visible = True
        end
        item
          Color = 16777166
          Expanded = False
          FieldName = 'DOCCODE'
          Title.Caption = 'Patient Name'
          Width = 149
          Visible = True
        end
        item
          Color = 16777166
          Expanded = False
          Title.Caption = 'Phone No.'
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 131
      Top = 14
      Width = 163
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 703
    Width = 1284
    Height = 19
    Panels = <>
    ParentColor = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object BB_Close: TBitBtn
      AlignWithMargins = True
      Left = 1206
      Top = 6
      Width = 78
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Close'
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
      OnClick = BB_CloseClick
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 1090
      Top = 6
      Width = 116
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Doctor Schedule'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 858
      Top = 6
      Width = 116
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&New Appointment'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      AlignWithMargins = True
      Left = 974
      Top = 6
      Width = 116
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Patient Visit'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 1284
    Height = 35
    Align = alTop
    TabOrder = 4
    ExplicitTop = 54
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 70
      Height = 13
      Caption = 'Today'#39's Date :'
    end
    object SpeedButton3: TSpeedButton
      Left = 162
      Top = 8
      Width = 22
      Height = 22
      Caption = 'AD'
    end
    object Label8: TLabel
      Left = 192
      Top = 12
      Width = 39
      Height = 13
      Caption = 'Doctor :'
    end
    object SpeedButton4: TSpeedButton
      Left = 399
      Top = 5
      Width = 97
      Height = 27
      Caption = '&View'
      OnClick = SpeedButton4Click
    end
    object Dex_Today: TDateEditX
      Left = 97
      Top = 9
      Width = 65
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C656674026103546F7002090B4461
        746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
        41442E44617902160B4461746556532E596561720314080C4461746556532E4D
        6F6E746802060A4461746556532E446179020508526561644F6E6C79090000}
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 233
      Top = 9
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 381
      Top = 11
      Width = 13
      Height = 17
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 46
    Width = 1284
    Height = 17
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = 16763594
    ParentBackground = False
    TabOrder = 5
  end
  object QueryBlank: TQuery
    Left = 576
    Top = 408
  end
  object DS_List: TDataSource
    DataSet = QueryList
    Left = 728
    Top = 344
  end
  object QueryList: TQuery
    DatabaseName = 'HOSPITAL'
    SQL.Strings = (
      
        'SELECT PM.*,PM.AGE||'#39' '#39'||SUBSTR(PM.AGETYPE,1,1)||'#39' '#39'||SUBSTR(PM.' +
        'GENDER,1,1) AGEGENDER,T.TITLEID,D.DISTRICTNAME,V.VDCNAME,O.OCCUP' +
        'ATIONNAME,C.COUNTRYNAME ,RL.RELATION,E.EDUCATION,RG.RELIGION'
      
        'FROM PATIENTMAIN PM,DISTRICT D,VDC V,OCCUPATION O,COUNTRY C,RELA' +
        'TION RL'
      ',EDUCATION E,RELIGION RG,TITLE T'
      'WHERE PM.DISTRICTID=D.DISTRICTID(+)'
      'AND PM.TITLE=T.TITLE(+)'
      'AND PM.VDCID=V.VDCID(+)'
      'AND PM.OCCUPATIONID=O.OCCUPATIONID(+)'
      'AND PM.COUNTRYID=C.COUNTRYID(+)'
      'AND PM.RELATION=RL.RELATIONID(+)'
      'AND PM.RELIGION=RG.RELIGION(+)'
      'AND PM.EDUCATION=E.EDUCATIONID(+)')
    Left = 672
    Top = 352
  end
end
