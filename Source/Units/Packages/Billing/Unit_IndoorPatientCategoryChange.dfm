object Form_IndoorPatientCategoryChange: TForm_IndoorPatientCategoryChange
  Left = 338
  Top = 195
  BorderIcons = [biSystemMenu]
  Caption = 'Indoor Patient Category Change'
  ClientHeight = 442
  ClientWidth = 531
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 29
    Align = alTop
    TabOrder = 0
    DesignSize = (
      531
      29)
    object Label_DischargeStatus: TLabel
      Left = 6
      Top = 4
      Width = 207
      Height = 19
      Alignment = taCenter
      Caption = 'Already Discharged Patient'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object BtnSave: TBitBtn
      Left = 339
      Top = 2
      Width = 92
      Height = 25
      Anchors = [akLeft, akTop, akRight]
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
    object BitBtn1: TBitBtn
      Left = 431
      Top = 2
      Width = 98
      Height = 25
      Hint = 'Cancel as well as Exit'
      Anchors = [akLeft, akTop, akRight]
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 531
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 531
    Height = 394
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 21
      Top = 62
      Width = 73
      Height = 13
      Caption = 'Name              :'
    end
    object Label2: TLabel
      Left = 21
      Top = 13
      Width = 73
      Height = 13
      Caption = 'Inpatient No.   :'
    end
    object Label_Patientname: TLabel
      Left = 112
      Top = 62
      Width = 28
      Height = 13
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LabelIPNo: TLabel
      Left = 387
      Top = 13
      Width = 24
      Height = 13
      Caption = 'IPNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object LabelExRate: TLabel
      Left = 21
      Top = 358
      Width = 69
      Height = 13
      Caption = '($) Ex. Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 184
      Top = 346
      Width = 204
      Height = 48
      AutoSize = False
      Caption = 
        'This Ex.Rate is For Those Amount Whose Rate is Directly Putting ' +
        'At The Billing Time. (Eg. OTConsumable, General Anaesthesia)'
      Visible = False
      WordWrap = True
    end
    object Label5: TLabel
      Left = 21
      Top = 328
      Width = 75
      Height = 13
      Caption = 'Remarks          :'
    end
    object Label_Charge: TLabel
      Left = 346
      Top = 220
      Width = 5
      Height = 22
      Alignment = taCenter
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 280
      Top = 210
      Width = 31
      Height = 13
      Caption = '( F1 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 280
      Top = 239
      Width = 31
      Height = 13
      Caption = '( F2 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 280
      Top = 268
      Width = 31
      Height = 13
      Caption = '( F3 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 280
      Top = 297
      Width = 31
      Height = 13
      Caption = '( F4 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 21
      Top = 41
      Width = 55
      Height = 13
      Caption = 'Hospital No'
    end
    object Label10: TLabel
      Left = 91
      Top = 40
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label11: TLabel
      Left = 21
      Top = 88
      Width = 56
      Height = 13
      Caption = 'Admn. Date'
    end
    object Label12: TLabel
      Left = 91
      Top = 87
      Width = 3
      Height = 13
      Caption = ':'
    end
    object LabelInpatientDate: TLabel
      Left = 112
      Top = 88
      Width = 90
      Height = 13
      Caption = '..............................'
    end
    object Label15: TLabel
      Left = 21
      Top = 110
      Width = 26
      Height = 13
      Caption = 'Ward'
    end
    object Label16: TLabel
      Left = 91
      Top = 110
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Lbl_Ward: TLabel
      Left = 112
      Top = 110
      Width = 90
      Height = 13
      Caption = '..............................'
    end
    object Label18: TLabel
      Left = 21
      Top = 132
      Width = 55
      Height = 13
      Caption = 'Room Type'
    end
    object Label19: TLabel
      Left = 91
      Top = 132
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Lbl_RoomType: TLabel
      Left = 112
      Top = 132
      Width = 90
      Height = 13
      Caption = '..............................'
    end
    object Label21: TLabel
      Left = 21
      Top = 158
      Width = 36
      Height = 13
      Caption = 'Bed No'
    end
    object Label22: TLabel
      Left = 91
      Top = 158
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Lbl_BedNo: TLabel
      Left = 112
      Top = 158
      Width = 90
      Height = 13
      Caption = '..............................'
    end
    object Label13: TLabel
      Left = 21
      Top = 182
      Width = 53
      Height = 13
      Caption = 'Consultant '
    end
    object Label14: TLabel
      Left = 91
      Top = 182
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label_Consultant: TLabel
      Left = 112
      Top = 181
      Width = 90
      Height = 13
      Caption = '..............................'
    end
    object Label_PatientType: TLabel
      Left = 310
      Top = 84
      Width = 207
      Height = 19
      Alignment = taCenter
      Caption = 'Already Discharged Patient'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clFuchsia
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object RB_FRGGEN: TRadioButton
      Left = 104
      Top = 269
      Width = 116
      Height = 17
      Caption = 'Price To FRG.(GEN)'
      TabOrder = 1
      OnClick = RB_FRGGENClick
    end
    object RB_FRGPVT: TRadioButton
      Left = 104
      Top = 296
      Width = 127
      Height = 17
      Caption = 'Price To FRG.(PVT)'
      TabOrder = 2
      OnClick = RB_FRGPVTClick
    end
    object RB_General: TRadioButton
      Left = 104
      Top = 209
      Width = 171
      Height = 17
      Caption = 'Price To General  '
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = RB_GeneralClick
    end
    object RB_Private: TRadioButton
      Left = 104
      Top = 238
      Width = 172
      Height = 17
      Caption = 'Price To Private     '
      TabOrder = 4
    end
    object EditExRate: TEdit
      Left = 104
      Top = 354
      Width = 67
      Height = 21
      TabOrder = 6
      Visible = False
      OnKeyPress = EditExRateKeyPress
    end
    object Edit_IPNo: TEdit
      Left = 112
      Top = 11
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      OnExit = Edit_IPNoExit
      OnKeyPress = Edit_IPNoKeyPress
    end
    object Edit_Remarks: TEdit
      Left = 104
      Top = 325
      Width = 344
      Height = 21
      TabOrder = 5
      OnKeyDown = Edit_RemarksKeyDown
    end
    object Edit_HospitalNo: TEdit
      Left = 112
      Top = 36
      Width = 121
      Height = 21
      NumbersOnly = True
      TabOrder = 7
      OnExit = Edit_HospitalNoExit
      OnKeyPress = Edit_HospitalNoKeyPress
    end
  end
  object QueryGetData: TOraQuery
    Left = 368
    Top = 152
  end
  object QueryGetTestPrice: TOraQuery
    Left = 400
    Top = 152
  end
  object QueryProcess: TOraQuery
    Left = 432
    Top = 152
  end
  object Query_BedCharge: TOraQuery
    Left = 465
    Top = 148
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 312
    Top = 45
  end
end
