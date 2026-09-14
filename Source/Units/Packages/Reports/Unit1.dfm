object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Collection Report'
  ClientHeight = 122
  ClientWidth = 328
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
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 297
    Height = 25
    Caption = 'User Wise Collection'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 40
    Width = 297
    Height = 25
    Caption = 'Department Wise Collection'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 72
    Width = 297
    Height = 25
    Caption = 'No of Test Count'
    TabOrder = 2
    OnClick = Button3Click
  end
end
