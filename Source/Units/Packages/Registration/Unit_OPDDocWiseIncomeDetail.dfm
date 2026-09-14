object Form_OPDDocWiseIncomeDetail: TForm_OPDDocWiseIncomeDetail
  Left = 0
  Top = 0
  Caption = 'Doctor Wise OPD Detail'
  ClientHeight = 495
  ClientWidth = 1177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1177
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label17: TLabel
      Left = 16
      Top = 34
      Width = 16
      Height = 13
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 4
      Top = 14
      Width = 28
      Height = 13
      Caption = 'From'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DEX_To: TDateEditX
      Left = 36
      Top = 31
      Width = 100
      Height = 21
      TabOrder = 0
      ControlData = {
        545046300A5444617465456469745200044C656674022403546F70021F057769
        64746802640B4461746541442E5965617203D3070C4461746541442E4D6F6E74
        68020B0A4461746541442E44617902030B4461746556532E59656172030C080C
        4461746556532E4D6F6E746802070A4461746556532E44617902110C466F6E74
        2E43686172736574070C414E53495F434841525345540A466F6E742E436F6C6F
        7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D65060D
        4D532053616E732053657269660A466F6E742E5374796C650B066673426F6C64
        000A506172656E74466F6E74080000}
    end
    object Btn_To: TButton
      Left = 113
      Top = 32
      Width = 22
      Height = 19
      Caption = 'AD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = Btn_ToClick
    end
    object DEX_From: TDateEditX
      Left = 36
      Top = 10
      Width = 100
      Height = 21
      TabOrder = 2
      ControlData = {
        545046300A5444617465456469745200044C656674022403546F70020A057769
        64746802640B4461746541442E5965617203D3070C4461746541442E4D6F6E74
        68020B0A4461746541442E44617902030B4461746556532E59656172030C080C
        4461746556532E4D6F6E746802070A4461746556532E44617902110C466F6E74
        2E43686172736574070C414E53495F434841525345540A466F6E742E436F6C6F
        7204080000FF0B466F6E742E48656967687402F509466F6E742E4E616D65060D
        4D532053616E732053657269660A466F6E742E5374796C650B066673426F6C64
        000A506172656E74466F6E74080000}
    end
    object Btn_From: TButton
      Left = 113
      Top = 11
      Width = 22
      Height = 19
      Caption = 'AD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = Btn_FromClick
    end
    object BB_Refresh: TBitBtn
      Left = 137
      Top = 12
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
      TabOrder = 4
      OnClick = BB_RefreshClick
    end
    object BitBtnExcel: TBitBtn
      Left = 793
      Top = 0
      Width = 192
      Height = 65
      Align = alRight
      Caption = 'Doctor Summary Report (F2)'
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
      TabOrder = 5
      OnClick = BitBtnExcelClick
    end
    object BitBtn1: TBitBtn
      Left = 985
      Top = 0
      Width = 192
      Height = 65
      Align = alRight
      Caption = 'Doc. Wise Patient List (F3)'
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
      TabOrder = 6
      OnClick = BitBtn1Click
    end
    object BitBtnPreview: TBitBtn
      Left = 600
      Top = 0
      Width = 193
      Height = 65
      Align = alRight
      Caption = '&Daily Doctor Coln. Report (F1)'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 7
      OnClick = BitBtnPreviewClick
    end
    object CB_IndivDoc: TCheckBox
      Left = 521
      Top = 22
      Width = 73
      Height = 17
      Caption = 'Indv. Doc.'
      Enabled = False
      TabOrder = 8
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 476
    Width = 1177
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 1177
    Height = 411
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel_Right: TPanel
      Left = 434
      Top = 0
      Width = 743
      Height = 411
      Align = alClient
      TabOrder = 1
      object DBGrid_PatientList: TDBGrid
        Left = 1
        Top = 1
        Width = 741
        Height = 368
        Align = alClient
        DataSource = DS_PatientList
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid_PatientListDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'PATIENTID'
            Title.Alignment = taCenter
            Title.Caption = 'Hospital No.'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FNAME'
            Title.Alignment = taCenter
            Title.Caption = 'First Name'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LNAME'
            Title.Alignment = taCenter
            Title.Caption = 'Last Name'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CURRENTAGE'
            Title.Alignment = taCenter
            Title.Caption = 'Age/Gender'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PATIENTTYPE'
            Title.Alignment = taCenter
            Title.Caption = 'Patient Type'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AMOUNT'
            Title.Alignment = taCenter
            Title.Caption = 'Amount'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PatientCategory'
            Title.Alignment = taCenter
            Title.Caption = 'Category'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BillBy'
            Title.Alignment = taCenter
            Title.Caption = 'Bill By'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BillNo'
            Title.Alignment = taCenter
            Title.Caption = 'Bill No'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BillDate'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Date'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BillTime'
            Title.Alignment = taCenter
            Title.Caption = 'Bill Time'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundBy'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundDate'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Date'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RefundTime'
            Title.Alignment = taCenter
            Title.Caption = 'Refund Time'
            Width = 82
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 369
        Width = 741
        Height = 41
        Align = alBottom
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 14
          Width = 54
          Height = 13
          Caption = 'Total Bill :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_TotalNo: TLabel
          Left = 68
          Top = 14
          Width = 46
          Height = 13
          Caption = 'Total No'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 187
          Top = 14
          Width = 78
          Height = 13
          Caption = 'Total Refund :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_RefundTotal: TLabel
          Left = 275
          Top = 14
          Width = 72
          Height = 13
          Caption = 'Refund Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 363
          Top = 14
          Width = 57
          Height = 13
          Caption = 'Net Total :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_NetTotal: TLabel
          Left = 427
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Net Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 556
          Top = 14
          Width = 116
          Height = 13
          Alignment = taRightJustify
          Caption = 'Grand Total Referal :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_RefTotal: TLabel
          Left = 675
          Top = 14
          Width = 51
          Height = 13
          Caption = 'Net Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object Panel_Left: TPanel
      Left = 0
      Top = 0
      Width = 434
      Height = 411
      Align = alLeft
      TabOrder = 0
      object Panel_Top: TPanel
        Left = 1
        Top = 1
        Width = 432
        Height = 23
        Align = alTop
        TabOrder = 0
        object Edit_Search: TEdit
          Left = 0
          Top = 1
          Width = 430
          Height = 21
          TabOrder = 0
        end
      end
      object Panel_Bottom: TPanel
        Left = 1
        Top = 24
        Width = 432
        Height = 386
        Align = alClient
        TabOrder = 1
        object DBGrid_DoctorList: TDBGrid
          Left = 1
          Top = 1
          Width = 430
          Height = 384
          Align = alClient
          DataSource = DS_DoctorList
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = DBGrid_DoctorListCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'DocName'
              Title.Alignment = taCenter
              Title.Caption = 'Doc. Name'
              Width = 160
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BILLAMOUNT'
              Title.Alignment = taCenter
              Title.Caption = 'Bill Amount'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TotalQty'
              Title.Alignment = taCenter
              Title.Caption = 'Tot. No'
              Width = 51
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DoctorPart'
              Title.Alignment = taCenter
              Title.Caption = 'Doctor Part'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NETTOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Net Total'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DoctorTDS'
              Title.Alignment = taCenter
              Title.Caption = 'TDS'
              Visible = True
            end>
        end
      end
    end
  end
    object Query_DoctorList: TOraQuery
    SQL.Strings = (
            'Select FRDE_DocId,DOCT_DocName,Sum(BIDE_Amount) as BillAmount'
            
              ',Sum(FRDE_Qty) Count,Sum((FRDE_FractionAmount*FRDE_Qty)-(FRDE_Fr' +
              'actionAmount*FRDE_Qty*FRDE_DisPer/100)) as NetTotal  '
            
              'From HS_BIDE_BillDetail BD,HS_FRDE_FractionDetail FD,HS_PAMA_Pat' +
              'ientMain PM,HS_DOCT_Doctor D'
            
              'where BD.BIDE_BillDetailID=FD.FRDE_BillDetailId(+) and FRDE_DocI' +
              'd=DOCT_DocId and BIDE_PatientId=PAMA_PatientId '
            'and BIDE_BillType='#39'R'#39' and BIDE_DepId<>85'
            'Group By FRDE_DocId,DOCT_DocName'
            'Order by DOCT_DocName')
    Left = 120
    Top = 256
  end
object DS_DoctorList: TDataSource
    DataSet = Query_DoctorList
    Left = 136
    Top = 264
  end
    object Query_PatientList: TOraQuery
    SQL.Strings = (
            
              'Select BD.BIDE_PatientId PatientId,PAMA_FName FName,PAMA_LName L' +
              'Name,Cast(getcurrentage(PAMA_PATIENTID)||'#39' / '#39'||SubStr(PAMA_Gend' +
              'er,1,1) as VarChar2(12)) AS currentage, '
            
              'BIDE_BillDate BillDate,BIDE_BillTime BillTime,BIDE_BillNo BillNo' +
              ',BIDE_DocCode DepCode,BIDE_DepId DepId,'
            
              'BD.BIDE_Service Service,BIDE_ServiceType ServiceType,FRDE_DOCID ' +
              'DocCode,FRDE_FractionAmount FractionAmount,'
            
              'BIDE_Amount Amount,BIDE_Qty Qty,BIDE_VatAmt VatAmt,BIDE_DisPer D' +
              'isPer,(BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*B' +
              'IDE_DisPer/100) as NetTotal,'
            
              'Case When BIDE_Service='#39'DOCCHN'#39' Then '#39'New Patient'#39' When BIDE_Ser' +
              'vice='#39'DOCCHR'#39' Then '#39'Referral Patient'#39' Else '#39'Followup Patient'#39' En' +
              'd PatientType '
            
              'From HS_BIDE_BillDetail BD,HS_FRDE_FractionDetail FD,HS_PAMA_Pat' +
              'ientMain PM'
            
              'where BD.BIDE_BillDetailID=FD.FRDE_BillDetailId(+) and BIDE_Pati' +
              'entId=PAMA_PatientId '
            'and BIDE_BillType='#39'R'#39' and BIDE_DepId<>85'
            'Order by BIDE_BillDate,BIDE_BillTime')
    Left = 552
    Top = 176
  end
object DS_PatientList: TDataSource
    DataSet = Query_PatientList
    Left = 592
    Top = 208
  end
    object Query_Process: TOraQuery
    Left = 464
    Top = 248
  end
end
