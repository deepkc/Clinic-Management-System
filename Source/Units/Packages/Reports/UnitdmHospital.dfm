object DMhospital: TDMhospital
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 254
  Top = 109
  Height = 570
  Width = 1026
    object tablepatientMain: TOraTable
    TableName = 'PATIENTMAIN'
    Left = 80
    Top = 20
  end
object DataSourcePatientMaster: TDataSource
    DataSet = tablepatientMain
    Left = 214
    Top = 204
  end
    object TableVisit: TOraTable
    TableName = 'PATIENTVISIT'
    Left = 100
    Top = 254
  end
  object QueryTemp: TOraQuery
    SQL.Strings = (
            'SELECT Ram.Nextval from Dual;'
            '')
    Left = 184
    Top = 120
  end
  object Hospital: TOraSession
    LoginPrompt = False
    Username = 'civil'
    Password = 'civil'
    Left = 8
  end
  object TableZone: TOraTable
    TableName = 'ZONE'
    Left = 16
    Top = 288
  end
object DataSourceZone: TDataSource
    DataSet = TableZone
    Left = 80
    Top = 280
  end
    object TableDistrict: TOraTable
    TableName = 'DISTRICT'
    Left = 152
    Top = 232
  end
object DataSourceDistrict: TDataSource
    DataSet = TableDistrict
    Left = 264
    Top = 200
  end
    object TableVDC: TOraTable
    TableName = 'VDC'
    Left = 24
    Top = 280
  end
object DataSourceVdc: TDataSource
    DataSet = TableVDC
    Left = 120
    Top = 288
  end
  object DataSourceDepartment: TDataSource
    DataSet = TableDepartment
    Left = 288
    Top = 360
  end
    object TableTestName: TOraTable
    TableName = 'TESTNAME'
    Left = 360
    Top = 176
  end
object DataSourceTestName: TDataSource
    DataSet = TableTestName
    Left = 432
    Top = 208
  end
    object TablePatientTest: TOraTable
    TableName = 'PATIENTTEST'
    Left = 352
  end
object DataSourcePatientTest: TDataSource
    DataSet = TablePatientTest
    Left = 304
    Top = 72
  end
    object TableDoctor: TOraTable
    TableName = 'DOCTOR'
    Left = 384
    Top = 192
  end
object DataSourceDoctor: TDataSource
    DataSet = TableDoctor
    Left = 400
    Top = 176
  end
    object TableWard: TOraTable
    TableName = 'WARD'
    Left = 432
    Top = 168
  end
object DataSourceWard: TDataSource
    DataSet = TableWard
    Left = 504
    Top = 128
  end
    object TableRoom: TOraTable
    TableName = 'ROOM'
    Left = 520
    Top = 192
  end
object DataSourceRoom: TDataSource
    DataSet = TableRoom
    Left = 528
    Top = 248
  end
    object TableBed: TOraTable
    TableName = 'BED'
    Left = 432
    Top = 264
  end
object DataSourceBed: TDataSource
    DataSet = TableBed
    Left = 432
    Top = 320
  end
    object TableDischarge: TOraTable
    TableName = 'DISCHARGE'
    Left = 528
    Top = 304
  end
object DataSourceDischarge: TDataSource
    DataSet = TableDischarge
    Left = 528
    Top = 352
  end
    object TableNMC: TOraTable
    TableName = 'NMCCODE'
    Left = 24
    Top = 341
  end
object DataSourceNMC: TDataSource
    DataSet = TableNMC
    Left = 32
    Top = 405
  end
    object TableICDCode: TOraTable
    TableName = 'DIAGONOSIS'
    Left = 120
    Top = 368
  end
object DataSourceICDCode: TDataSource
    DataSet = TableICDCode
    Left = 288
    Top = 245
  end
    object TableTest: TOraTable
    TableName = 'TEST'
    Left = 280
    Top = 152
  end
object DataSourceTest: TDataSource
    DataSet = TableTest
    Left = 392
    Top = 157
  end
    object TableTestFinding: TOraTable
    TableName = 'TESTFINDING'
    Left = 368
    Top = 184
  end
object DataSourceTestFinding: TDataSource
    DataSet = TableTestFinding
    Left = 440
    Top = 144
  end
    object TablePatientDetailTest: TOraTable
    TableName = 'PATIENTTESTDETAIL'
    Left = 248
    Top = 112
  end
  object TableDepartment: TOraTable
    TableName = 'DEPARTMENT'
    Left = 168
    Top = 335
  end
  object TableTestType: TOraTable
    TableName = 'TESTTYPE'
    Left = 328
    Top = 248
  end
object DataSourceQueryDepartment: TDataSource
    DataSet = QueryDepartment
    Left = 488
    Top = 32
  end
    object TableSilentFeature: TOraTable
    TableName = 'SILENTFEATURE'
    Left = 88
    Top = 288
  end
object DataSourceSilentFeature: TDataSource
    DataSet = TableSilentFeature
    Left = 216
    Top = 288
  end
    object TableDesignation: TOraTable
    TableName = 'DESIGNATION'
    Left = 344
    Top = 128
  end
object DataSourceDesignation: TDataSource
    DataSet = TableDesignation
    Left = 384
    Top = 288
  end
    object TableOccupation: TOraTable
    TableName = 'OCCUPATION'
    Left = 96
    Top = 344
  end
object DataSourceOccupation: TDataSource
    DataSet = TableOccupation
    Left = 224
    Top = 328
  end
    object TablePatientTestSpecial: TOraTable
    TableName = 'PATIENTTESTSPECIAL'
    Left = 280
    Top = 424
    object TablePatientTestSpecialTESTSPECIALID: TFloatField
      FieldName = 'TESTSPECIALID'
    end
    object TablePatientTestSpecialPATIENTTESTID: TFloatField
      FieldName = 'PATIENTTESTID'
    end
    object TablePatientTestSpecialPATIENTID: TFloatField
      FieldName = 'PATIENTID'
    end
    object TablePatientTestSpecialTESTID: TFloatField
      FieldName = 'TESTID'
    end
    object TablePatientTestSpecialPTSPECIAL: TMemoField
      FieldName = 'PTSPECIAL'
      BlobType = ftMemo
      Size = 1
    end
    object TablePatientTestSpecialPTDETAILID: TFloatField
      FieldName = 'PTDETAILID'
    end
    object TablePatientTestSpecialIMPRESSION: TStringField
      FieldName = 'IMPRESSION'
      Size = 250
    end
  end
object DSPatientTestSpecial: TDataSource
    DataSet = TablePatientTestSpecial
    Left = 200
    Top = 376
  end
    object QueryDoctor: TOraQuery
    SQL.Strings = (
            'Select DocCode,DocID,F_Name ||'#39' '#39'|| L_Name As Name'
            'From Doctor'
            'Order By F_Name')
    Left = 448
    Top = 216
  end
object DataSourceQueryDoctor: TDataSource
    DataSet = QueryDoctor
    Left = 592
    Top = 8
  end
    object TableMedicine: TOraTable
    TableName = 'MEDICINE'
    Left = 104
    Top = 416
  end
object DataSourceMedicine: TDataSource
    DataSet = TableMedicine
    Left = 168
    Top = 432
  end
    object TableDiffDiagnosis: TOraTable
    TableName = 'DIFFDIAGNOSIS'
    Left = 184
    Top = 392
  end
  object TableMedicineCode: TOraTable
    TableName = 'MEDICINECODE'
    Left = 328
    Top = 424
  end
object DataSourceTableMedicineCode: TDataSource
    DataSet = TableMedicineCode
    Left = 368
    Top = 424
  end
    object TableOPDiagnosis: TOraTable
    TableName = 'OPDIAGNOSIS'
    Left = 280
    Top = 288
  end
object DataSourceTableOPDiagnosis: TDataSource
    DataSet = TableOPDiagnosis
    Left = 136
    Top = 336
  end
    object TableSpecialDefault: TOraTable
    TableName = 'SPECIALDEFAULT'
    Left = 384
    Top = 8
  end
object DataSourceSpecialDefault: TDataSource
    DataSet = TableSpecialDefault
    Left = 368
    Top = 56
  end
    object TablebillMaster: TOraTable
    TableName = 'BILLMASTER'
    Left = 104
    Top = 24
  end
  object TableBillDetail: TOraTable
    TableName = 'BILLDETAIL'
    Left = 136
    Top = 96
  end
  object TablePersonalBalance: TOraTable
    TableName = 'PERSONALBALANCE'
    Left = 8
    Top = 56
  end
  object TablePayType: TOraTable
    TableName = 'PayType.db'
    Left = 200
    Top = 192
  end
object DataSourcePayType: TDataSource
    DataSet = TablePayType
    Left = 184
    Top = 184
  end
    object TablePatientReceive: TOraTable
    TableName = 'PATIENTRECEIVE'
    Left = 200
    Top = 72
  end
  object TableInpatientReg: TOraTable
    TableName = 'INPATIENTREG'
    Left = 384
    Top = 376
  end
object DataSourceInpatientReg: TDataSource
    DataSet = TableInpatientReg
    Left = 424
    Top = 384
  end
    object TableInpatientDetail: TOraTable
    TableName = 'INPATIENTDETAIL'
    Left = 288
    Top = 328
  end
object DataSourceInpatientDetail: TDataSource
    DataSet = TableInpatientDetail
    Left = 368
    Top = 344
  end
    object QueryAllCode: TOraQuery
    Left = 72
    Top = 56
  end
object DataSourceIPBirth: TDataSource
    DataSet = TableIPBirth
    Left = 176
    Top = 136
  end
    object TableIPBirth: TOraTable
    TableName = 'IPBIRTH'
    Left = 152
    Top = 24
  end
  object TableIPDeath: TOraTable
    TableName = 'IPDEATH'
    Left = 128
    Top = 176
  end
object DataSourceTableIPDeath: TDataSource
    DataSet = TableIPDeath
    Left = 176
    Top = 192
  end
    object TableIPDischarge: TOraTable
    TableName = 'IPDISCHARGE'
    Left = 208
    Top = 128
  end
object DataSourceIPDischarge: TDataSource
    DataSet = TableIPDischarge
    Left = 152
    Top = 112
  end
    object TableTestEditFinding: TOraTable
    TableName = 'TESTEDITFINDING'
    Left = 24
    Top = 448
  end
  object TablePatientPersonalInfo: TOraTable
    TableName = 'PATIENTPERSONALINFO'
    Left = 592
    Top = 152
  end
object DataSourcePatientPersonalInfo: TDataSource
    DataSet = TablePatientPersonalInfo
    Left = 592
    Top = 208
  end
    object AccountTransaction: TOraSession
    LoginPrompt = False
    Username = 'nmc'
    Password = 'nmc'
    Left = 600
    Top = 80
  end
object DataSourceTableTransfer: TDataSource
    DataSet = TableTransfer
    Left = 136
    Top = 56
  end
    object TableTransfer: TOraTable
    TableName = 'TRANSFER'
    Left = 104
    Top = 64
  end
object DataSourceDischargeOperation: TDataSource
    DataSet = TableDischargeOperation
    Left = 328
  end
    object TableDischargeOperation: TOraTable
    TableName = 'DISCHARGEOPERATION'
    Left = 248
    Top = 72
  end
object DataSourceRoomType: TDataSource
    DataSet = TableRoomType
    Left = 376
    Top = 344
  end
    object TableRoomType: TOraTable
    TableName = 'ROOMTYPE'
    Left = 328
    Top = 328
  end
  object QueryServerDate: TOraQuery
    SQL.Strings = (
            'Select  To_Char(sysdate,'#39'MON'#39') As MyDate From dual ')
    Left = 176
    Top = 288
  end
  object QueryDepartment: TOraQuery
    SQL.Strings = (
            'SELECT * From Department'
            'WHERE(ISDISPLAY='#39'T'#39')'
            'Order By DepName;')
    Left = 480
    Top = 24
  end
  object QueryBedCharge: TOraQuery
    SQL.Strings = (
            
              'SELECT PatientID, InPatientId, WardCode,RoomTypeCode, RoomTypeCo' +
              'de||'#39','#39'|| RoomNo ||'#39','#39'|| '
            
              'BedCode As ServiceType,InptDate,OutDate,InptDate||'#39' - '#39'|| OutDat' +
              'e As Beddate,InTime, OutTime, '
            'BedCharge, vatAmt,InPatientDID'
            'FROM InpatientDetail'
            'where (InpatientID=:InpatientID)')
    Left = 208
    Top = 24
    ParamData = <
            item
              DataType = ftInteger
              Name = 'InpatientID'
              ParamType = ptUnknown
            end>
  end
  object TableTempAccount: TOraTable
    TableName = 'TempAccount.db'
    Left = 264
    Top = 40
  end
  object QueryInpBedCharge: TOraQuery
    Left = 248
    Top = 162
  end
  object TableOperation: TOraTable
    TableName = 'PATIENTOPERATION'
    Left = 56
    Top = 280
    object TableOperationOPERATIONID: TFloatField
      FieldName = 'OPERATIONID'
      Required = True
    end
    object TableOperationPATIENTNO: TFloatField
      FieldName = 'PATIENTNO'
    end
    object TableOperationOPERATIONDATE: TStringField
      FieldName = 'OPERATIONDATE'
      Size = 10
    end
    object TableOperationDOCTEAM1: TStringField
      FieldName = 'DOCTEAM1'
    end
    object TableOperationDOCTEAM2: TStringField
      FieldName = 'DOCTEAM2'
    end
    object TableOperationDOCTEAM3: TStringField
      FieldName = 'DOCTEAM3'
    end
    object TableOperationDOCTEAM4: TStringField
      FieldName = 'DOCTEAM4'
    end
    object TableOperationSTAFF1: TStringField
      FieldName = 'STAFF1'
    end
    object TableOperationSTAFF2: TStringField
      FieldName = 'STAFF2'
    end
    object TableOperationSTAFF3: TStringField
      FieldName = 'STAFF3'
    end
    object TableOperationSTAFF4: TStringField
      FieldName = 'STAFF4'
    end
    object TableOperationPAYSTATUS: TStringField
      FieldName = 'PAYSTATUS'
      Size = 15
    end
    object TableOperationAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object TableOperationOPERATIONNAME: TStringField
      FieldName = 'OPERATIONNAME'
    end
    object TableOperationENTEREDBY: TStringField
      FieldName = 'ENTEREDBY'
    end
    object TableOperationENTEREDDATE: TStringField
      FieldName = 'ENTEREDDATE'
      Size = 10
    end
    object TableOperationENTEREDTIME: TStringField
      FieldName = 'ENTEREDTIME'
      Size = 11
    end
    object TableOperationOPERATIONPROCEDURE: TMemoField
      FieldName = 'OPERATIONPROCEDURE'
      BlobType = ftMemo
      Size = 1
    end
    object TableOperationOPERATIONFINDING: TMemoField
      FieldName = 'OPERATIONFINDING'
      BlobType = ftMemo
      Size = 1
    end
    object TableOperationPREOPERATIVE: TMemoField
      FieldName = 'PREOPERATIVE'
      BlobType = ftMemo
      Size = 1
    end
    object TableOperationPOSTOPERATIVEPLAN: TMemoField
      FieldName = 'POSTOPERATIVEPLAN'
      BlobType = ftMemo
      Size = 1
    end
    object TableOperationAUTHORISED: TStringField
      FieldName = 'AUTHORISED'
      FixedChar = True
      Size = 1
    end
    object TableOperationPAYDATE: TStringField
      FieldName = 'PAYDATE'
      Size = 10
    end
    object TableOperationAUTHORISEDREMARK: TMemoField
      FieldName = 'AUTHORISEDREMARK'
      BlobType = ftMemo
      Size = 1
    end
    object TableOperationOPERATIONTYPE: TStringField
      FieldName = 'OPERATIONTYPE'
      Size = 30
    end
    object TableOperationBILLDATE: TStringField
      FieldName = 'BILLDATE'
      Size = 10
    end
    object TableOperationBILLDETAILID: TFloatField
      FieldName = 'BILLDETAILID'
    end
    object TableOperationDEPARTMENT: TStringField
      FieldName = 'DEPARTMENT'
      Size = 30
    end
  end
object DataSourceTableOperation: TDataSource
    Left = 132
    Top = 231
  end
    object TableOperationName: TOraTable
    TableName = 'OPERATIONNAME'
    Left = 16
    Top = 248
    object TableOperationNameOPERATIONID: TFloatField
      FieldName = 'OPERATIONID'
      Required = True
    end
    object TableOperationNameOPERATIONCODE: TStringField
      FieldName = 'OPERATIONCODE'
      Size = 10
    end
    object TableOperationNameOPERATIONNAME: TStringField
      FieldName = 'OPERATIONNAME'
    end
  end
object DataSourceTableOperationName: TDataSource
    DataSet = TableOperationName
    Left = 64
    Top = 240
  end
    object TableCollection: TOraTable
    TableName = 'BLOOD_COLLECT'
    Left = 16
    Top = 112
    object TableCollectionSNO: TFloatField
      FieldName = 'SNO'
    end
    object TableCollectionFIRST_NAME: TStringField
      FieldName = 'FIRST_NAME'
      Size = 15
    end
    object TableCollectionMIDDLE_NAME: TStringField
      FieldName = 'MIDDLE_NAME'
      Size = 15
    end
    object TableCollectionLAST_NAME: TStringField
      FieldName = 'LAST_NAME'
      Size = 15
    end
    object TableCollectionSEX: TStringField
      FieldName = 'SEX'
      FixedChar = True
      Size = 1
    end
    object TableCollectionAGE: TFloatField
      FieldName = 'AGE'
    end
    object TableCollectionCONTACT_PHONE: TFloatField
      FieldName = 'CONTACT_PHONE'
    end
    object TableCollectionTITLE: TStringField
      FieldName = 'TITLE'
      Size = 6
    end
    object TableCollectionMARITAL_STATUS: TStringField
      FieldName = 'MARITAL_STATUS'
      Size = 10
    end
    object TableCollectionAGETYPE: TStringField
      FieldName = 'AGETYPE'
      Size = 10
    end
    object TableCollectionCOUNTRY: TStringField
      FieldName = 'COUNTRY'
    end
    object TableCollectionZONE: TStringField
      FieldName = 'ZONE'
    end
    object TableCollectionDISTRICT: TStringField
      FieldName = 'DISTRICT'
    end
    object TableCollectionVDC: TStringField
      FieldName = 'VDC'
    end
    object TableCollectionMOBILE: TFloatField
      FieldName = 'MOBILE'
    end
    object TableCollectionADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 100
    end
    object TableCollectionADDRESS2: TStringField
      FieldName = 'ADDRESS2'
      Size = 100
    end
    object TableCollectionREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 200
    end
    object TableCollectionDDATE: TStringField
      FieldName = 'DDATE'
      Size = 10
    end
  end
  object TableDonorDetail: TOraTable
    TableName = 'DONOR_DETAIL'
    Left = 16
    Top = 160
    object TableDonorDetailDONOR_DETAIL_ID: TFloatField
      FieldName = 'DONOR_DETAIL_ID'
    end
    object TableDonorDetailSNO: TFloatField
      FieldName = 'SNO'
    end
    object TableDonorDetailBGROUP: TStringField
      FieldName = 'BGROUP'
      Size = 10
    end
    object TableDonorDetailBTYPE: TStringField
      FieldName = 'BTYPE'
      Size = 10
    end
    object TableDonorDetailDATE_OF_COLLECTION: TStringField
      FieldName = 'DATE_OF_COLLECTION'
      Size = 11
    end
    object TableDonorDetailBAGNO: TFloatField
      FieldName = 'BAGNO'
    end
    object TableDonorDetailDIPOSIT_DATE: TStringField
      FieldName = 'DIPOSIT_DATE'
      Size = 11
    end
    object TableDonorDetailDIPOSIT_TIME: TStringField
      FieldName = 'DIPOSIT_TIME'
      Size = 11
    end
    object TableDonorDetailRECEIVED_DATE: TStringField
      FieldName = 'RECEIVED_DATE'
      Size = 11
    end
    object TableDonorDetailRECEIVED_TIME: TStringField
      FieldName = 'RECEIVED_TIME'
      Size = 11
    end
    object TableDonorDetailPATIENT_NO: TFloatField
      FieldName = 'PATIENT_NO'
    end
    object TableDonorDetailPATIENT_NAME: TStringField
      FieldName = 'PATIENT_NAME'
      Size = 30
    end
    object TableDonorDetailWARD: TStringField
      FieldName = 'WARD'
      Size = 10
    end
    object TableDonorDetailREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 200
    end
    object TableDonorDetailDATE_OF_EXPIRE: TStringField
      FieldName = 'DATE_OF_EXPIRE'
      Size = 11
    end
    object TableDonorDetailCOLLECTED_BY: TStringField
      FieldName = 'COLLECTED_BY'
    end
    object TableDonorDetailBEDNO: TFloatField
      FieldName = 'BEDNO'
    end
    object TableDonorDetailOCCUPIED: TStringField
      FieldName = 'OCCUPIED'
      Size = 6
    end
    object TableDonorDetailBLOOD_SET: TStringField
      FieldName = 'BLOOD_SET'
      Size = 3
    end
    object TableDonorDetailRECEIVED_BY: TStringField
      FieldName = 'RECEIVED_BY'
    end
  end
  object TableBloodTest: TOraTable
    TableName = 'BLOODTEST'
    Left = 16
    Top = 200
    object TableTestTESTID: TFloatField
      FieldName = 'TESTID'
    end
    object TableTestDONOR_DETAIL_ID: TFloatField
      FieldName = 'DONOR_DETAIL_ID'
    end
    object TableTestSNO: TFloatField
      FieldName = 'SNO'
    end
    object TableTestHIV: TStringField
      FieldName = 'HIV'
      Size = 10
    end
    object TableTestHBSAG: TStringField
      FieldName = 'HBSAG'
      Size = 10
    end
    object TableTestVDRL: TStringField
      FieldName = 'VDRL'
      Size = 10
    end
    object TableTestHCV: TStringField
      FieldName = 'HCV'
      Size = 10
    end
    object TableTestHIVMEMO: TStringField
      FieldName = 'HIVMEMO'
      Size = 200
    end
    object TableTestHBSAGMEMO: TStringField
      FieldName = 'HBSAGMEMO'
      Size = 200
    end
    object TableTestVDRLMEMO: TStringField
      FieldName = 'VDRLMEMO'
      Size = 200
    end
    object TableTestHCVMEMO: TStringField
      FieldName = 'HCVMEMO'
      Size = 200
    end
  end
  object TablePatientDetail: TOraTable
    TableName = 'PATIENT_DETAIL'
    Left = 72
    Top = 144
  end
  object TableCrossMatch: TOraTable
    TableName = 'CROSSMATCH'
    Left = 72
    Top = 192
    object TableCrossMatchCROSSMATCHID: TFloatField
      FieldName = 'CROSSMATCHID'
      Required = True
    end
    object TableCrossMatchPATIENTDETAILID: TFloatField
      FieldName = 'PATIENTDETAILID'
    end
    object TableCrossMatchCROSSMATCH_DATE: TStringField
      FieldName = 'CROSSMATCH_DATE'
      Size = 10
    end
    object TableCrossMatchBLOODBAG_NO: TFloatField
      FieldName = 'BLOODBAG_NO'
    end
    object TableCrossMatchHIV: TStringField
      FieldName = 'HIV'
      Size = 10
    end
    object TableCrossMatchHBSAG: TStringField
      FieldName = 'HBSAG'
      Size = 10
    end
    object TableCrossMatchVDRL: TStringField
      FieldName = 'VDRL'
      Size = 10
    end
    object TableCrossMatchHCV: TStringField
      FieldName = 'HCV'
      Size = 10
    end
    object TableCrossMatchCROSSMATCH_DONE_BY: TStringField
      FieldName = 'CROSSMATCH_DONE_BY'
      Size = 10
    end
    object TableCrossMatchGROUPINGBY: TStringField
      FieldName = 'GROUPINGBY'
      Size = 15
    end
    object TableCrossMatchISSUE_QTY: TFloatField
      FieldName = 'ISSUE_QTY'
    end
    object TableCrossMatchRESULT: TStringField
      FieldName = 'RESULT'
      Size = 15
    end
    object TableCrossMatchREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 200
    end
    object TableCrossMatchBLOODQTY: TFloatField
      FieldName = 'BLOODQTY'
    end
    object TableCrossMatchCHECKEDBY: TStringField
      FieldName = 'CHECKEDBY'
    end
    object TableCrossMatchRECEIVEDBY: TStringField
      FieldName = 'RECEIVEDBY'
    end
    object TableCrossMatchBLOODRECEIVEDDATE: TStringField
      FieldName = 'BLOODRECEIVEDDATE'
      Size = 15
    end
    object TableCrossMatchRETURN: TStringField
      FieldName = 'RETURN'
      Size = 5
    end
    object TableCrossMatchWARD: TStringField
      FieldName = 'WARD'
      Size = 10
    end
  end
object DataSourceTableDocRoutine: TDataSource
    DataSet = TableDocRoutine
    Left = 88
    Top = 112
  end
    object TableDocRoutine: TOraTable
    TableName = 'DOCROUTINE'
    Left = 56
    Top = 112
  end
  object TableMedicalRecord: TOraTable
    TableName = 'MEDICALRECORD'
    Left = 56
    Top = 65528
  end
object DataSourceTableMedicalRecord: TDataSource
    DataSet = TableMedicalRecord
    Left = 80
  end
    object TableMedInvt: TOraTable
    TableName = 'MEDINVESTIGATION'
    Left = 112
  end
object DataSourceTableMedInvt: TDataSource
    DataSet = TableMedInvt
    Left = 144
  end
    object TableMedDiagonosis: TOraTable
    TableName = 'MEDDIAGONOSIS'
    Left = 176
  end
object DataSourceTableMedDiagonosis: TDataSource
    DataSet = TableMedDiagonosis
    Left = 200
  end
    object TableMedOT: TOraTable
    TableName = 'MEDOPERATION'
    Left = 232
  end
object DataSourceTableMedOT: TDataSource
    DataSet = TableMedOT
    Left = 264
  end
    object TableMrBirth: TOraTable
    TableName = 'MRBIRTH'
    Left = 280
    Top = 120
  end
object DataSourceTableMrBirth: TDataSource
    DataSet = TableMrBirth
    Left = 312
    Top = 120
  end
    object TableFileStatus: TOraTable
    TableName = 'FILESTATUS'
    Left = 320
    Top = 48
  end
  object TableGender: TOraTable
    TableName = 'GENDER'
    Left = 344
    Top = 232
  end
  object TableMaritalStatus: TOraTable
    TableName = 'MARITALSTATUS'
    Left = 384
    Top = 232
  end
object DataSourceTableGender: TDataSource
    DataSet = TableGender
    Left = 360
    Top = 248
  end
  object DataSourceTableMaritalStatus: TDataSource
    DataSet = TableMaritalStatus
    Left = 424
    Top = 240
  end
    object TableFreeType: TOraTable
    TableName = 'FREETYPE'
    Left = 312
    Top = 208
  end
object DataSourceTableFreeType: TDataSource
    DataSet = QueryFreeType
    Left = 344
    Top = 288
  end
    object QueryFreeType: TOraQuery
    SQL.Strings = (
            'Select * from freetype')
    Left = 312
    Top = 288
    object QueryFreeTypeTYPEID: TFloatField
      FieldName = 'TYPEID'
      Origin = 'HOSPITAL.FREETYPE.TYPEID'
    end
    object QueryFreeTypeTYPE: TStringField
      FieldName = 'TYPE'
      Origin = 'HOSPITAL.FREETYPE.TYPE'
    end
    object QueryFreeTypeDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
      Origin = 'HOSPITAL.FREETYPE.DISCOUNT'
    end
  end
  object TableCommunity: TOraTable
    TableName = 'COMMUNITY'
    Left = 512
    Top = 408
  end
  object Query_CalculationForTempTable: TOraQuery
    Left = 577
    Top = 448
  end
  object Database2: TOraSession
    LoginPrompt = False
    Username = 'Midas_Image'
    Password = 'Image'
    Left = 32
    Top = 56
  end
  object TableReceivable: TOraQuery
    SQL.Strings = (
            'Select * from Receivable Where IsActive='#39'T'#39)
    Left = 400
    Top = 120
  end
end
