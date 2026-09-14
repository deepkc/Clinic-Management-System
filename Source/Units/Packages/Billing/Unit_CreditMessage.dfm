object FormCreditMessage: TFormCreditMessage
  Left = 274
  Top = 192
  BorderStyle = bsNone
  Caption = 'FormCreditMessage'
  ClientHeight = 153
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    327
    153)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 339
    Height = 55
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Are You Doing '
    Color = 10214193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -47
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 54
    Width = 330
    Height = 62
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Credit Billing'
    Color = 10214193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clFuchsia
    Font.Height = -53
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 42
    Top = 119
    Width = 125
    Height = 35
    Caption = '&Yes'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 170
    Top = 119
    Width = 125
    Height = 35
    Caption = '&No'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
end
