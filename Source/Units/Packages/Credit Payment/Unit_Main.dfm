object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = 'Medicine Prescription'
  ClientHeight = 588
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Main: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 588
    Align = alClient
    TabOrder = 0
  end
    object DB_Main: TOraSession
    LoginPrompt = False
    Username = 'grande'
    Password = 'grandeinthos'
    Left = 256
    Top = 160
  end
end
