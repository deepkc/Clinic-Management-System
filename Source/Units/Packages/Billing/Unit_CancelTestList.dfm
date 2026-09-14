object Form_CancelTestList: TForm_CancelTestList
  Left = 0
  Top = 0
  Caption = 'Cancelled Test List'
  ClientHeight = 493
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 493
    Align = alClient
    TabOrder = 0
    object Label_PatientId: TLabel
      Left = 11
      Top = 48
      Width = 55
      Height = 13
      Caption = 'Pateint ID :'
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 82
      Width = 1097
      Height = 500
      DataSource = DS_List
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PatientId'
          Title.Caption = 'Patient ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InpatientId'
          Title.Caption = 'Inpatient Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TestDate'
          Title.Caption = 'Test Date'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BillNo'
          Title.Caption = 'Bill No'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Service'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CancelDate'
          Title.Caption = 'Cancel Date'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CancelBy'
          Title.Caption = 'Cancel By'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Remarks'
          Width = 140
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 781
      Height = 33
      Align = alTop
      TabOrder = 1
      object Label3: TLabel
        Left = 11
        Top = 10
        Width = 38
        Height = 13
        Caption = 'Name :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 50
        Top = 10
        Width = 45
        Height = 13
        Caption = '#####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object BitBtn2: TBitBtn
        Left = 665
        Top = 1
        Width = 115
        Height = 31
        Align = alRight
        Caption = '&Cancel (Esc)'
        DoubleBuffered = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333333333333333333FFF33FF333FFF339993370733
          999333777FF37FF377733339993000399933333777F777F77733333399970799
          93333333777F7377733333333999399933333333377737773333333333990993
          3333333333737F73333333333331013333333333333777FF3333333333910193
          333333333337773FF3333333399000993333333337377737FF33333399900099
          93333333773777377FF333399930003999333337773777F777FF339993370733
          9993337773337333777333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentDoubleBuffered = False
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object BitBtnExcel: TBitBtn
        Left = 527
        Top = 1
        Width = 138
        Height = 31
        Align = alRight
        Caption = 'Send  To &Excel (F2)'
        DoubleBuffered = True
        Glyph.Data = {
          F6010000424DF60100000000000076000000280000001F000000180000000100
          04000000000080010000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFF44444444
          44440000FFFFFFFFFFF0FFFF4000000000006666FFFFFFFFFFF0FFFF40888888
          8806EEF0FFFFFFFFFFF0FFFF440E6666606EEF04FFFFFFFFFFF0FFFF4440E666
          06EEF060FFFFFFFFFFF0FFFF44440E606EEF0000FFFFFFFFFFF0FFFF44444006
          EEF04444FFFFFFFFFFF0FFFF4444406EEF004444FFFFFFFFFFF0FFFF444406EE
          F0680444FFFFFFFFFFF0FFFF44406EEF0E668044FFFFFFFFFFF0FFFF4406EEF0
          40E66804FFFFFFFFFFF0FFFF40FFFF04440EEEE0FFFFFFFFFFF0FFFF40000044
          44400000FFFFFFFFFFF0FFFF4444444444444444FFFFFFFFFFF0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0}
        ParentDoubleBuffered = False
        TabOrder = 1
        OnClick = BitBtnExcelClick
      end
    end
    object Edit_PatientId: TEdit
      Left = 72
      Top = 44
      Width = 183
      Height = 21
      TabOrder = 2
      OnKeyPress = Edit_PatientIdKeyPress
    end
    object RB_OP: TRadioButton
      Left = 407
      Top = 57
      Width = 58
      Height = 17
      Caption = 'OP (F2)'
      TabOrder = 3
    end
    object RB_IP: TRadioButton
      Left = 408
      Top = 37
      Width = 57
      Height = 17
      Caption = 'IP (F1)'
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = RB_IPClick
    end
    object BB_Refresh: TBitBtn
      Left = 261
      Top = 37
      Width = 132
      Height = 37
      Caption = '&Refresh (F5)'
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FFFFFFC59D7E
        FFFEFEFFFFFFFFFFFFFDFCFBE1CDBDBD906CAE7649A66939B07A4FC49C7CF2E9
        E2FFFFFFFFFFFFFFFFFFFFFFFFA46534CBA78BFFFFFFE1CCBCAC7144B8865DCE
        A684D8B697DBB999D3AC8AC3956FA96D3FDFC8B7FFFFFFFFFFFFFFFFFFA56838
        B98860B48158B48056E3CAB4ECDAC9E7D1BCE3C9B0DEBEA0D2AB88CEA582D3AE
        8EA96E40F0E6DEFFFFFFFFFFFFA7693AF1E4D8D4B295F4E9E0F3E8DDEDDCCCD2
        AD8FB37D53A66838A66939A66A3AA96D3DB0784CC59D7DFFFFFFFFFFFFA66839
        F6EEE6F5ECE3F5EDE4E6D2C1B37E54B88861ECDED4FFFFFFD9BFABAF754AB67C
        4FA76B3BA76B3BFFFFFFFFFFFFA56837F6EEE6EBD7C4EAD9C9A46635D9BFABFF
        FFFFFFFFFFFFFFFFFBF8F6AD7346E1C4AEC89E7CA46534FDFCFBFFFFFFA56736
        F5EDE5F6EDE5F5ECE4D7B89DB17A4FF9F5F2FFFFFFFFFFFFFFFFFFFFFFFFFBF6
        F2F4E8DFA56736FBF8F5FFFFFFA66939A46635A46635A56636A56736A56737BD
        8F6CF5EDE8F6F1ECF6F1ECF6F1ECF6F1ECF6F1ECF5EEE9FFFFFFFFFFFFFAF7F5
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC69E80A46534AF784CB27B52B27B
        52B27C52A46534FCFAF9FFFFFFA56736D9BDA7F7EEE8FAF6F2FEFEFDFFFFFFFF
        FFFFFEFDFCBB8B66D1AE91F6EEE7F2E6DBF6EEE6A76C3DFCFAF8FFFFFFA46636
        A86C3DDDBBA2AE764BF3EAE3FFFFFFFFFFFFFFFFFFDDC5B3A46635E9D7C7EBD8
        C6F5ECE3A86D3EFBF9F7FFFFFFAA6F41AB7041A96D3DAA7042D5B8A2F6F0EBE6
        D5C8B7865FBC8D67EBDBCDF5EBE2F6EEE6F6EEE6A96D3EFBF8F6FFFFFFCAA487
        C0916AC59872A86B3CA46635A86C3CBA8B65D9BBA1F1E4D8F2E6DBF3E8DDCEA8
        89EAD8C8A96E3FFAF7F5FFFFFFF0E6DEA96F41D3AD8CDCBD9DDDBEA1E5CBB4E9
        D3BFEEDDCCF0E2D5E7D2BFB27C52BB8D68AE7549A56837FAF7F4FFFFFFFFFFFF
        E2CFC0A96D3FC1926BD3B08FDFC2A8DEC1A8D4B193BC8C66AA7043E0CAB9FFFF
        FFDBC2AEA46534FAF6F3FFFFFFFFFFFFFFFFFFF5EDE8C8A184B27D53A86C3DB0
        784DBE916EE1CDBDFDFCFBFFFFFFFFFFFFFFFFFFD4B69FF9F5F2}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 5
      OnClick = BB_RefreshClick
    end
  end
  object Query_List: TOraQuery
    Left = 120
    Top = 208
  end
  object DS_List: TDataSource
    DataSet = Query_List
    Left = 168
    Top = 224
  end
end
