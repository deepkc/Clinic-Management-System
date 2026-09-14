object frm_Message: Tfrm_Message
  Left = 204
  Top = 231
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frm_Message'
  ClientHeight = 100
  ClientWidth = 251
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 251
    Height = 100
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    Caption = 'DONE'
    Color = 10214193
    Font.Charset = ANSI_CHARSET
    Font.Color = clFuchsia
    Font.Height = -93
    Font.Name = 'Swis721 BdCnOul BT'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 200
    Top = 56
  end
end
