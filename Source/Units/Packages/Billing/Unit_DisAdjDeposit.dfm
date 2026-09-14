object Form_DischargeAdjDeposit: TForm_DischargeAdjDeposit
  Left = 0
  Top = 0
  Caption = 'Deposit Add or Refund'
  ClientHeight = 423
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    591
    423)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 31
    Top = 115
    Width = 43
    Height = 19
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label_DepositStatus: TLabel
    Left = 80
    Top = 110
    Width = 160
    Height = 25
    Caption = 'Deposit Refund'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Amount: TLabel
    Left = 80
    Top = 152
    Width = 33
    Height = 25
    Caption = '0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 6
    Top = 156
    Width = 68
    Height = 19
    Caption = 'Amount :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object SBP_Print: TSpeedButton
    Left = 546
    Top = 2
    Width = 41
    Height = 22
    Anchors = [akTop, akRight]
    Caption = '&Print'
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
    OnClick = SBP_PrintClick
    ExplicitLeft = 432
  end
  object lbl_PatientName: TLabel
    Left = 83
    Top = 8
    Width = 32
    Height = 16
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 35
    Top = 8
    Width = 44
    Height = 16
    Caption = 'Name :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 4
    Top = 28
    Width = 75
    Height = 14
    Alignment = taRightJustify
    Caption = 'Age/Gender :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_CurrentAgeGender: TLabel
    Left = 83
    Top = 28
    Width = 29
    Height = 14
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_MemberNoCap: TLabel
    Left = 6
    Top = 51
    Width = 71
    Height = 14
    Alignment = taRightJustify
    Caption = 'Member No.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_InpatientNo: TLabel
    Left = 83
    Top = 51
    Width = 67
    Height = 14
    AutoSize = False
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 13
    Top = 72
    Width = 66
    Height = 14
    Caption = 'Phone No. :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Phoneno: TLabel
    Left = 83
    Top = 72
    Width = 29
    Height = 14
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 172
    Top = 28
    Width = 51
    Height = 14
    Caption = 'Address :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_address: TLabel
    Left = 227
    Top = 28
    Width = 29
    Height = 14
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Lbl_Bg: TLabel
    Left = 226
    Top = 73
    Width = 29
    Height = 14
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 199
    Top = 73
    Width = 23
    Height = 14
    Caption = 'B.G:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 171
    Top = 51
    Width = 52
    Height = 14
    Alignment = taRightJustify
    Caption = 'Scheme :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_Scheme: TLabel
    Left = 227
    Top = 51
    Width = 29
    Height = 14
    Caption = 'None'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BB_Save: TBitBtn
    Left = 170
    Top = 385
    Width = 100
    Height = 33
    Margins.Left = 0
    Margins.Top = 6
    Margins.Right = 0
    Margins.Bottom = 6
    Caption = 'Save (F12)'
    DoubleBuffered = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000001000000010000000000000000000000000000975233
      9A55359954349652339652339652339652339652339652339652339A55359B55
      359853349451320000009451369D5534BD5A22BB5A24B75926C7B0A4C8B5ACC8
      B5ACC8B5ACC8B5ACC8B5ACC9B5ABBF6532B759269B55358040408F5030A05633
      C46127C46127C46127D3CDCBD4D4D5D4D4D5D4D4D5CB9373C7784AD3CFCDC66F
      3BC461279D56348F50308F5030A15734CB672CCB672CCB672CDED8D5DFDFE0DF
      DFE0DFDFE0D18A61CB672CDED8D5CD7541CB672C9E56348F50308F5030A15834
      D26E30D26E30D26E30EAE5E1ECECECECECECECECECDA9367D26E30EAE5E1D57D
      46D26E309E56358F50308F5030A25835D67233D67233D67233F3E7E0F7F7F7F7
      F7F7F7F7F7F2E4DBF0DCD0F7F5F5DA824AD672339E57358F50308F5030A35935
      DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB7636DB76
      36DB76369F57358F50308F5030A35935DF7A39F2ECE8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDCBBFDF7A399F57358F50308F5030A45A36
      E4803EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DB
      D3E4803E9F58368F50308F5030A45B37E98746FCFCFCFCFCFCFCFCFCFCFCFCFC
      FCFCFCFCFCFCFCFCFCFCFCFCFCFCE5D9D1E98746A058368F50308F5030A55C38
      EE9150F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3DED3
      CCEE9150A059378F5030945231A55D3AF49C5DE5E5E5E5E5E5E5E5E5E5E5E5E5
      E5E5E5E5E5E5E5E5E5E5E5E5E5E5DAD4CFF49C5DA059378F5030945231A65F3B
      F8A668D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7
      C3F8A668A05A389955339F5535A45D3BF9AC6FD0CECDD3D3D3D3D3D3D3D3D3D3
      D3D3D3D3D3D3D3D3D3D3D3D3D3D3CCC7C4F9AC6F9E58378E55390000009C5534
      9B55359B55359B55359B55359B55359B55359B55359B55359B55359B55359B55
      359B55359C553400000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BB_SaveClick
  end
  object BB_Close: TBitBtn
    Left = 269
    Top = 385
    Width = 98
    Height = 33
    Margins.Left = 0
    Margins.Top = 6
    Margins.Right = 0
    Margins.Bottom = 6
    Caption = 'Close[ESC]'
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
    TabOrder = 1
    OnClick = BB_CloseClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 186
    Width = 583
    Height = 198
    DataSource = DS_FinalPayRefund
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DEPO_DEPOSITNO'
        Title.Alignment = taCenter
        Title.Caption = 'Deposit No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPO_DEPOSITDATE'
        Title.Alignment = taCenter
        Title.Caption = 'Deposit Date'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPO_DRAMOUNT'
        Title.Caption = 'Paid Amount'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPO_CRAMOUNT'
        Title.Alignment = taCenter
        Title.Caption = 'Return Amount'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DEPO_REFERENCETYPE'
        Title.Alignment = taCenter
        Title.Caption = 'Reference Type'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Title.Alignment = taCenter
        Title.Caption = 'User Name'
        Width = 90
        Visible = True
      end>
  end
  object CB_Preview: TCheckBox
    Left = 400
    Top = 29
    Width = 76
    Height = 17
    Caption = 'Previe&w'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn_PaidAmtReturn: TBitBtn
    Left = 0
    Top = 385
    Width = 169
    Height = 33
    Margins.Left = 0
    Margins.Top = 6
    Margins.Right = 0
    Margins.Bottom = 6
    Caption = 'Return Paid Amount (F1)'
    DoubleBuffered = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
    OnClick = BitBtn_PaidAmtReturnClick
  end
  object Query_Process: TOraQuery
    Left = 320
    Top = 72
  end
  object DS_FinalPayRefund: TDataSource
    DataSet = Query_FinalPayRefund
    Left = 416
    Top = 120
  end
  object Query_FinalPayRefund: TOraQuery
    SQL.Strings = (
      
        'Select DEPO_DEPOSITID,DEPO_DEPOSITNO,DEPO_DRAMOUNT,DEPO_CRAMOUNT' +
        ',DEPO_DEPOSITTYPE,DEPO_REFERENCETYPE,DEPO_DepositDate'
      'From HS_DEPO_Deposit where DEPO_ATDISTIMEADJ='#39'Y'#39
      'and DEPO_InpatientId=1234')
    Left = 392
    Top = 112
  end
end
