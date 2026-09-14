object Form_PatientInOut: TForm_PatientInOut
  Left = 0
  Top = 0
  Caption = 'Patient In/Out'
  ClientHeight = 229
  ClientWidth = 448
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB_Close: TBitBtn
      Left = 370
      Top = 0
      Width = 78
      Height = 33
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 33
    Width = 448
    Height = 196
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = -9
      Top = 14
      Width = 115
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hospital No. :'
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
    object Sb_Queuelist: TSpeedButton
      Left = 331
      Top = 11
      Width = 49
      Height = 28
      Caption = 'OK'
      OnClick = Sb_QueuelistClick
    end
    object lbl_Display: TLabel
      Left = 0
      Top = 60
      Width = 448
      Height = 133
      Alignment = taCenter
      AutoSize = False
      Caption = '13000120 - Intime : 02:00:00 PM'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      WordWrap = True
    end
    object Edit_HospitalNo: TEdit
      Left = 110
      Top = 14
      Width = 219
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = Edit_HospitalNoKeyPress
    end
  end
end
