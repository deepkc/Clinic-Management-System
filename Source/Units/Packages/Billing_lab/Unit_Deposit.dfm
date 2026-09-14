object Form_Deposit: TForm_Deposit
  Left = 0
  Top = 0
  Caption = 'Deposit'
  ClientHeight = 418
  ClientWidth = 651
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object BB_Close: TBitBtn
      AlignWithMargins = True
      Left = 555
      Top = 6
      Width = 96
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
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
      TabOrder = 0
      OnClick = BB_CloseClick
    end
    object BB_Save: TBitBtn
      AlignWithMargins = True
      Left = 470
      Top = 6
      Width = 85
      Height = 34
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      Align = alRight
      Caption = '&Save'
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
      TabOrder = 1
      OnClick = BB_SaveClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 651
    Height = 106
    Align = alTop
    BevelKind = bkSoft
    BevelOuter = bvNone
    TabOrder = 1
    object SP_PatientSearch: TSpeedButton
      Left = 198
      Top = 6
      Width = 27
      Height = 24
      Caption = 'GO'
      OnClick = SP_PatientSearchClick
    end
    object Label1: TLabel
      Left = 383
      Top = 12
      Width = 70
      Height = 13
      Caption = 'Deposit Type :'
    end
    object lbl_Name: TLabel
      Left = 84
      Top = 39
      Width = 108
      Height = 16
      Caption = '############'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label2: TLabel
      Left = 85
      Top = 61
      Width = 112
      Height = 16
      Caption = 'Deposit Balance :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_DepositBalance: TLabel
      Left = 202
      Top = 61
      Width = 72
      Height = 16
      Caption = '########'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 383
      Top = 44
      Width = 72
      Height = 13
      Caption = 'Deposit Mode :'
    end
    object Le_HosNo: TLabeledEdit
      Left = 85
      Top = 8
      Width = 107
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Hospital No. :'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      NumbersOnly = True
      TabOrder = 0
      OnKeyPress = Le_HosNoKeyPress
    end
    object Le_MemberNo: TLabeledEdit
      Left = 306
      Top = 8
      Width = 69
      Height = 21
      EditLabel.Width = 73
      EditLabel.Height = 13
      EditLabel.Caption = 'Member No. :'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object Dblcb_DepositType: TDBLookupComboBox
      Left = 459
      Top = 8
      Width = 153
      Height = 21
      KeyField = 'DepositType'
      ListField = 'DepositType'
      ListSource = DS_DepositType
      TabOrder = 2
      OnClick = Dblcb_DepositTypeClick
    end
    object Cb_Mode: TComboBox
      Left = 459
      Top = 41
      Width = 153
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 3
      Text = 'RECEIVE'
      Items.Strings = (
        'RECEIVE'
        'RETURN')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 152
    Width = 651
    Height = 266
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Label5: TLabel
      Left = 35
      Top = 41
      Width = 48
      Height = 13
      Caption = 'Remarks :'
    end
    object Le_Payment: TLabeledEdit
      Left = 85
      Top = 14
      Width = 140
      Height = 21
      EditLabel.Width = 44
      EditLabel.Height = 13
      EditLabel.Caption = 'Amount :'
      LabelPosition = lpLeft
      TabOrder = 0
      OnKeyPress = Le_PaymentKeyPress
    end
    object Memo_Remarks: TMemo
      Left = 85
      Top = 41
      Width = 290
      Height = 176
      TabOrder = 1
    end
  end
    object Query_DepositType: TOraQuery
    SQL.Strings = (
            
              'Select 999 as DepositTypeID,BenefitPackage as Deposittype from B' +
              'enefitPackage'
            'Union'
            'Select DeposittypeID,DepositType from DepositType'
            'order by deposittypeid desc')
    Left = 472
    Top = 176
  end
object DS_DepositType: TDataSource
    DataSet = Query_DepositType
    Left = 432
    Top = 176
  end
end
