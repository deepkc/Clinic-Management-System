object Form_MedicalHistoryParent: TForm_MedicalHistoryParent
  Left = 0
  Top = 0
  Caption = 'Medical History Main'
  ClientHeight = 722
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 984
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label14: TLabel
      Left = 310
      Top = 9
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Name  :'
    end
    object lbl_Name: TLabel
      Left = 354
      Top = 9
      Width = 41
      Height = 13
      Caption = 'Name  :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 65
      Height = 13
      Caption = 'Hospital No. :'
    end
    object Lbl_Hosno: TLabel
      Left = 79
      Top = 9
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
    object Label7: TLabel
      Left = 69
      Top = 9
      Width = 4
      Height = 13
      Alignment = taRightJustify
      Caption = ':'
    end
  end
  object Panel_Parent: TPanel
    Left = 0
    Top = 83
    Width = 984
    Height = 639
    Align = alClient
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object BB_Investigation: TBitBtn
      Left = 726
      Top = 0
      Width = 86
      Height = 35
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Investigation'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BB_InvestigationClick
      ExplicitTop = -3
    end
    object BB_Close: TBitBtn
      Left = 898
      Top = 0
      Width = 86
      Height = 35
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
      TabOrder = 3
      OnClick = BB_CloseClick
    end
    object BB_Diagnosis: TBitBtn
      Left = 640
      Top = 0
      Width = 86
      Height = 35
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Diagnosis'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = BB_DiagnosisClick
    end
    object BB_Treatment: TBitBtn
      Left = 812
      Top = 0
      Width = 86
      Height = 35
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = '&Treatment'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      Visible = False
      OnClick = BB_TreatmentClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 984
    Height = 15
    Align = alTop
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 2
  end
end
