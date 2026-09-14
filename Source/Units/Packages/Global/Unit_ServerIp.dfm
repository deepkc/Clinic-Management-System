object Form_ServerIp: TForm_ServerIp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ip Address'
  ClientHeight = 163
  ClientWidth = 294
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 257
    Height = 39
    Caption = 'Cannot connect to Database , Please specify Database Ip or Name '
    WordWrap = True
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Server IP'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 65
    Height = 13
    Caption = 'Service Name'
  end
  object Label4: TLabel
    Left = 87
    Top = 64
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label5: TLabel
    Left = 87
    Top = 88
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Edit_Ip: TEdit
    Left = 96
    Top = 61
    Width = 145
    Height = 21
    TabOrder = 0
    TextHint = 'Ip Address or Name'
  end
  object Button1: TButton
    Left = 166
    Top = 120
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit_Sid: TEdit
    Left = 96
    Top = 85
    Width = 145
    Height = 21
    TabOrder = 1
  end
end
