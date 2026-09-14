object Frame_BillList: TFrame_BillList
  Left = 0
  Top = 0
  Width = 1093
  Height = 500
  TabOrder = 0
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1093
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label21: TLabel
      Left = 298
      Top = 13
      Width = 42
      Height = 13
      Caption = 'Bill No. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Billno: TLabel
      Left = 346
      Top = 13
      Width = 126
      Height = 13
      Caption = '##############'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 1093
    Height = 467
    Align = alClient
    TabOrder = 1
    DesignSize = (
      1093
      467)
    object Label2: TLabel
      Left = 18
      Top = 19
      Width = 53
      Height = 13
      Caption = 'Bill Type :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 43
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
    object Edit_Billno: TEdit
      Left = 267
      Top = 68
      Width = 167
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit_BillnoChange
    end
    object Edit_Billdate: TEdit
      Left = 436
      Top = 68
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = Edit_BilldateChange
    end
    object DBGrid1: TDBGrid
      Left = 268
      Top = 91
      Width = 821
      Height = 372
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = Ds_List
      DrawingStyle = gdsGradient
      FixedColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'PatientId'
          Title.Caption = 'Hospital No.'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BillNo'
          Title.Caption = 'Bill No.'
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PatientName'
          Title.Caption = 'Patient Name'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BillDate'
          Title.Caption = 'Bill Date'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillTime'
          Title.Caption = 'Bill Time'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = 'Amount [NRS]'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Deposit'
          Title.Caption = 'Deposit [NRS]'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Balance'
          Title.Caption = 'Balance [NRS]'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ReferenceType'
          Title.Caption = 'Reference'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Remarks'
          Width = 157
          Visible = True
        end>
    end
    object CB_BillType: TComboBox
      Left = 76
      Top = 15
      Width = 105
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 3
      OnChange = CB_BillTypeChange
      Items.Strings = (
        'SERVICE'
        'FINAL BILL'
        'ADVANCE'
        'DEPOSIT'
        'BILL REFUND'
        'DEPOSIT REFUND')
    end
    object Edit_HosNo: TEdit
      Left = 11
      Top = 68
      Width = 77
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
      OnChange = Edit_HosNoChange
    end
    object Edit_PatientName: TEdit
      Left = 89
      Top = 68
      Width = 173
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnChange = Edit_PatientNameChange
    end
    object GroupBox1: TGroupBox
      Left = 191
      Top = 6
      Width = 268
      Height = 35
      TabOrder = 6
      object Label4: TLabel
        Left = 8
        Top = 12
        Width = 31
        Height = 13
        Caption = 'From :'
      end
      object SpeedButton2: TSpeedButton
        Left = 107
        Top = 10
        Width = 22
        Height = 22
        Caption = 'AD'
        OnClick = SpeedButton2Click
      end
      object Label5: TLabel
        Left = 135
        Top = 12
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'To:'
      end
      object SpeedButton3: TSpeedButton
        Left = 218
        Top = 8
        Width = 22
        Height = 22
        Caption = 'AD'
        OnClick = SpeedButton3Click
      end
      object Dex_From: TDateEditX
        Left = 41
        Top = 9
        Width = 65
        Height = 21
        TabOrder = 0
        ControlData = {
          545046300A5444617465456469745200044C656674022903546F7002090B4461
          746541442E5965617203DB070C4461746541442E4D6F6E746802090A44617465
          41442E44617902160B4461746556532E596561720314080C4461746556532E4D
          6F6E746802060A4461746556532E44617902050000}
      end
      object Dex_To: TDateEditX
        Left = 153
        Top = 9
        Width = 65
        Height = 21
        TabOrder = 1
        ControlData = {
          545046300A5444617465456469745200044C65667403990003546F7002090B44
          61746541442E5965617203DB070C4461746541442E4D6F6E746802090A446174
          6541442E44617902160B4461746556532E596561720314080C4461746556532E
          4D6F6E746802060A4461746556532E44617902050000}
      end
    end
    object GroupBox2: TGroupBox
      Left = 494
      Top = 6
      Width = 299
      Height = 35
      TabOrder = 7
      object Label6: TLabel
        Left = 11
        Top = 12
        Width = 87
        Height = 13
        Caption = 'Include more than'
      end
      object Label7: TLabel
        Left = 163
        Top = 12
        Width = 24
        Height = 13
        Caption = 'Days'
      end
      object Se_Days: TSpinEdit
        Left = 101
        Top = 8
        Width = 56
        Height = 22
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 0
        OnChange = Se_DaysChange
        OnKeyPress = Se_DaysKeyPress
      end
      object BB_Refresh: TBitBtn
        Left = 205
        Top = 3
        Width = 84
        Height = 28
        Caption = 'Refresh'
        DoubleBuffered = True
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BB_RefreshClick
      end
    end
    object DBGrid2: TDBGrid
      Left = 10
      Top = 91
      Width = 254
      Height = 372
      Anchors = [akLeft, akTop, akBottom]
      Color = clWhite
      DataSource = Ds_listR
      DrawingStyle = gdsGradient
      FixedColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid2CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PatientId'
          Title.Caption = 'Hospital No.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PatientName'
          Title.Caption = 'Patient Name'
          Width = 185
          Visible = True
        end>
    end
    object Edit_Search: TEdit
      Left = 131
      Top = 43
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      OnChange = Edit_SearchChange
      OnKeyDown = Edit_SearchKeyDown
      OnKeyPress = Edit_SearchKeyPress
    end
    object BB_PrintDepositSlip: TBitBtn
      Left = 677
      Top = 61
      Width = 116
      Height = 28
      Caption = 'Print Deposit Slip'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 10
      Visible = False
      OnClick = BB_PrintDepositSlipClick
    end
  end
    object QueryList: TOraQuery
    AfterScroll = QueryListAfterScroll
    SQL.Strings = (
            'SELECT * FROM VW_UNPAIDBILL'
            'WHERE 99=99'
            'AND 99=99'
            'AND 99=99'
            'AND 99=99'
            'ORDER BY BILLNO DESC,BILLTIME DESC')
    Left = 440
    Top = 240
  end
object Ds_List: TDataSource
    DataSet = QueryList
    Left = 480
    Top = 240
  end
    object QueryListR: TOraQuery
    AfterScroll = QueryListRAfterScroll
    SQL.Strings = (
            'SELECT DISTINCT PATIENTID,PATIENTNAME FROM VW_UNPAIDBILL'
            'WHERE 99=99'
            'AND 99=99'
            'AND 99=99'
            'AND 99=99'
            'order by patientid desc')
    Left = 424
    Top = 320
  end
object Ds_listR: TDataSource
    DataSet = QueryListR
    Left = 464
    Top = 320
  end
end
