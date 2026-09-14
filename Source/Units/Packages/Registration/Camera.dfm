object Form_Camera: TForm_Camera
  Left = 392
  Top = 223
  Caption = 'Camera #1'
  ClientHeight = 722
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Right: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 722
    Align = alClient
    TabOrder = 0
    inline Frame_Video2: TFrame1
      Left = 1
      Top = 1
      Width = 1002
      Height = 720
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1002
      ExplicitHeight = 720
      inherited Panel_Top: TPanel
        Width = 1002
        ExplicitWidth = 1002
        DesignSize = (
          1002
          65)
        inherited Label_Cameras: TLabel
          Left = 704
          Top = 24
          Width = 52
          ExplicitLeft = 704
          ExplicitTop = 24
          ExplicitWidth = 52
        end
        inherited SpeedButton_RunVideo: TSpeedButton
          OnClick = Frame_Video2SpeedButton_RunVideoClick
        end
        inherited Label3: TLabel
          Width = 51
          ExplicitWidth = 51
        end
        inherited Label4: TLabel
          Width = 44
          ExplicitWidth = 44
        end
        inherited Bevel1: TBevel
          Width = 883
          ExplicitWidth = 883
        end
        inherited ComboBox_Cams: TComboBox
          Left = 17
          Top = 13
          ExplicitLeft = 17
          ExplicitTop = 13
        end
      end
      inherited Panel_Bottom: TPanel
        Width = 1002
        Height = 655
        ExplicitTop = 65
        ExplicitWidth = 1002
        ExplicitHeight = 655
        inherited PaintBox_Video: TPaintBox
          Width = 1000
          Height = 653
          ExplicitWidth = 1000
          ExplicitHeight = 653
        end
      end
    end
  end
end
