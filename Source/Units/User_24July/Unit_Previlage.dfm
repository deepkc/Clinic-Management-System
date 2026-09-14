object Form_Previlege: TForm_Previlege
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form_Previlege'
  ClientHeight = 311
  ClientWidth = 604
  Color = 16764108
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    604
    311)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 589
    Height = 260
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 59
      Height = 13
      Caption = 'User Name :'
    end
    object Label_UserName: TLabel
      Left = 88
      Top = 8
      Width = 80
      Height = 13
      Caption = 'Label_UserName'
    end
    object Clb_Previlege: TCheckListBox
      Left = 16
      Top = 27
      Width = 561
      Height = 222
      Columns = 2
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object BB_Exit: TBitBtn
    AlignWithMargins = True
    Left = 512
    Top = 273
    Width = 85
    Height = 32
    Anchors = [akTop, akRight]
    Caption = 'E&xit [Esc]'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    OnClick = BB_ExitClick
  end
  object BB_OK: TBitBtn
    AlignWithMargins = True
    Left = 425
    Top = 273
    Width = 85
    Height = 32
    Anchors = [akTop, akRight]
    Caption = '&OK [F12]'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = BB_OKClick
  end
  object Query_LoadData: TOraQuery
    Left = 32
    Top = 224
  end
  object Query_SaveData: TOraQuery
    Left = 112
    Top = 224
  end
  object Query1: TOraQuery
    Left = 256
    Top = 232
  end
end
