object Frame_RegAccount: TFrame_RegAccount
  Left = 0
  Top = 0
  Width = 358
  Height = 439
  TabOrder = 0
  object GroupBox1: TGroupBox
    Left = 3
    Top = 3
    Width = 348
    Height = 184
    Color = clBtnFace
    Ctl3D = True
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 0
    object Label15: TLabel
      Left = 20
      Top = 30
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Department :'
    end
    object Label20: TLabel
      Left = 1
      Top = 1
      Width = 179
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Department'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 22
      Top = 54
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Unit/Doctor :'
    end
    object Label10: TLabel
      Left = 45
      Top = 78
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ref by :'
    end
    object Label16: TLabel
      Left = 47
      Top = 102
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ref to :'
    end
    object Label19: TLabel
      Left = 24
      Top = 126
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Community :'
    end
    object Label21: TLabel
      Left = 40
      Top = 150
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Scheme :'
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 88
      Top = 27
      Width = 241
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 88
      Top = 51
      Width = 241
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 75
      Width = 49
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 2
      Items.Strings = (
        'MALE'
        'FEMALE')
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 141
      Top = 75
      Width = 188
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 3
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 88
      Top = 99
      Width = 241
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 4
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 88
      Top = 123
      Width = 241
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 5
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 88
      Top = 147
      Width = 241
      Height = 21
      KeyField = 'TITLEID'
      ListField = 'TITLE'
      TabOrder = 6
    end
  end
  object GroupBox2: TGroupBox
    Left = 3
    Top = 191
    Width = 348
    Height = 236
    Color = clBtnFace
    Ctl3D = True
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object Label24: TLabel
      Left = 1
      Top = 1
      Width = 179
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Account'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label22: TLabel
      Left = 39
      Top = 127
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Paytype :'
    end
    object Label25: TLabel
      Left = 137
      Top = 32
      Width = 11
      Height = 13
      Alignment = taRightJustify
      Caption = '%'
    end
    object SpeedButton2: TSpeedButton
      Left = 216
      Top = 120
      Width = 123
      Height = 22
      Caption = 'Re-Print Bill'
    end
    object SpeedButton3: TSpeedButton
      Left = 216
      Top = 144
      Width = 123
      Height = 22
      Caption = 'Re-Print Sticker'
    end
    object Label27: TLabel
      Left = 1
      Top = 185
      Width = 192
      Height = 21
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOTAL RS. :'
      Color = 16742263
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object Label28: TLabel
      Left = 193
      Top = 185
      Width = 154
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = '00.00'
      Color = -1
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object LabeledEdit1: TLabeledEdit
      Left = 90
      Top = 28
      Width = 41
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Discount :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 0
    end
    object LabeledEdit2: TLabeledEdit
      Left = 90
      Top = 52
      Width = 103
      Height = 21
      EditLabel.Width = 42
      EditLabel.Height = 13
      EditLabel.Caption = 'Charge :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 1
    end
    object LabeledEdit3: TLabeledEdit
      Left = 90
      Top = 76
      Width = 103
      Height = 21
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Payment :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 2
    end
    object LabeledEdit4: TLabeledEdit
      Left = 90
      Top = 100
      Width = 103
      Height = 21
      Color = -1
      EditLabel.Width = 80
      EditLabel.Height = 13
      EditLabel.Caption = 'Return Amount :'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clAqua
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LabelPosition = lpLeft
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
      Text = '00.00'
    end
    object ComboBox2: TComboBox
      Left = 90
      Top = 124
      Width = 103
      Height = 22
      Style = csOwnerDrawFixed
      TabOrder = 4
      Items.Strings = (
        'MALE'
        'FEMALE')
    end
    object CheckBox1: TCheckBox
      Left = 216
      Top = 52
      Width = 129
      Height = 17
      Caption = 'Charge with card [F7]'
      TabOrder = 5
    end
    object LabeledEdit5: TLabeledEdit
      Left = 90
      Top = 148
      Width = 103
      Height = 21
      EditLabel.Width = 48
      EditLabel.Height = 13
      EditLabel.Caption = 'Remarks :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 216
      Top = 71
      Width = 81
      Height = 17
      Caption = 'Print Preview'
      TabOrder = 7
    end
    object LabeledEdit6: TLabeledEdit
      Left = 284
      Top = 97
      Width = 41
      Height = 21
      EditLabel.Width = 63
      EditLabel.Height = 13
      EditLabel.Caption = 'No. of copy :'
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 8
    end
    object CheckBox3: TCheckBox
      Left = 216
      Top = 33
      Width = 129
      Height = 17
      Caption = 'Print Bill'
      TabOrder = 9
    end
    object CheckBox4: TCheckBox
      Left = 216
      Top = 16
      Width = 129
      Height = 17
      Caption = 'Print Sticker'
      TabOrder = 10
    end
  end
end
