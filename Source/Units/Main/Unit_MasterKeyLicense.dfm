object Form_MasterKeyLicense: TForm_MasterKeyLicense
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Master Key Validation'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 180
    Height = 39
    Caption = 
      'System has Expired !!! Cannot Connect , Please Provide Master Ke' +
      'y to Continue.'
    WordWrap = True
  end
  object Label3: TLabel
    Left = 16
    Top = 80
    Width = 54
    Height = 13
    Caption = 'Master Key'
  end
  object Label5: TLabel
    Left = 87
    Top = 80
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Button1: TButton
    Left = 166
    Top = 112
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit_MasterKey: TEdit
    Left = 96
    Top = 77
    Width = 145
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = Edit_MasterKeyKeyPress
  end
end
