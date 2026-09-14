unit Fxn;

interface

Uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, shellApi,
     QuickRpt, QRCtrls,
     Dialogs, jpeg, ExtCtrls, ComCtrls, StdCtrls, Buttons, OleCtrls, DBCtrls, DB, DBTables,
     CheckLst,
//     PatientClass,
     // CHILKATMAILLib2_TLB,
     NB30, DateEditXControl_TLB;

Var
     Query: Tquery;
     gi_datesystem: integer;
     gs_DatabaseName: String;
     gs_AliasName: String;
     gs_DB_UserName: String;
     gs_DB_Password: String;
     gs_HospitalName: String;
     gs_HospitalAddress: String;
     gs_OPDVisitType: String;
     gi_PathologyPatientID: integer;
     Gi_MemberID: integer;
     Gi_MemberPackageId: integer;
     gs_CalledFormName: String;
     gi_MED_REQ_MASTERID: integer;
     gi_VisitId: integer;
     gi_UserID: integer;
     gs_MacID: String;
     gs_DateCaption: String;
     gs_temppath: String;
     gb_proceed: Boolean;
     gs_picpath: String;
//     MyPatient: TPatient;
     gb_isDotMatrix: Boolean;
     gb_HideIndication: Boolean;
     gb_HideSource: Boolean;
     gs_UserName: String;
     gs_UserLoginDate: String;
     gs_OrganizationID: String;
     gs_SubOrganizationID: String;

     Gs_FamilyDoc: String;
     Gs_BloodGroup: String;
     Gs_EmerContactPerson1: String;
     Gs_EmerContactPerson2: String;
     Gs_EmerContactNo1: String;
     Gs_EmerContactNo2: String;
     Gs_MedicalCondition: String;
     Gs_MemberNo: String;
     Gb_MemberDataLoaded: Boolean;

     Gf_BedCharge: Double;
     Gf_SvrTax: Double;
     gb_Update:Boolean;

     gs_GovtTaxRule: String;

     NCount: integer;
     Gi_NoofDays: integer;
     AClass: TPersistentClass;
     FrameCleared: Boolean;
     BillingClosed: Boolean;
     NewPatientClosed: Boolean;
     Gs_PatientIdCaption: String;
     gs_CalledFrom: String;
     gf_TaxPercent: Double;
     Gb_AcquireImageOpen: Boolean;
     gb_HIDETESTINPATIENTLIST: Boolean;
     { ************************************************************************* }
     Gs_BillNo: String;
     gi_TestCancelID: integer;
     gi_DoctorId: integer;
     gi_DepartmentId: integer;

     gi_PtDetailId: integer;
     gs_TestName: String;
     gs_TestNameCode: String;
     gi_BillDetailId: integer;
     gi_ServiceBillDetailid: integer;
     gi_RefundDetailID: integer;
     gb_OPAvdanceBillNo: Boolean;
     gs_From: String;
     gs_to: String;
     gs_fromDailyNo: String;
     gs_ToDailyNo: String;
     Gb_isServiceBill: Boolean;
     GB_isDepositBill: Boolean;
     Gb_TestListClosed: Boolean;
     gb_isHalfPage: Boolean;
     Gs_SelectedDepList: String;
     Gs_SelectedTestNameList: String;
     Gs_SelectedPatientTestID: String;
     Gs_SelectedTestList: String;
     gi_ReportCount: integer;
     gi_TestNameId: integer;
     Gb_RefundBillExists: Boolean;
     ServiceBillOpened: Boolean;
     Gs_TaxRule: String;
     { ************************************************************************* }
     // Sample Collection
     Arr_SampleTobeCollected: Array of Array of integer;
     Arr_CollectedSample: Array of Array of integer;
     Arr_CLB_DepartmentID: Array of Array of String;
     Arr_TestIDForFooter: Array of Array of String;
     Arr_TestNameID: Array of String;
     gi_SampleCollectionID: integer;
     Arr_LoadedFrame: Array [0 .. 10] of TCustomFrame;
     gs_SampleNo: String;
     gi_SampleFormat: integer;
     gb_PrintSelected: Boolean;
     gb_CloseParent: Boolean;
     gb_SingleDep: Boolean;
     gb_HideUnitFlagRefrange: Boolean;
     gs_TestDate: String;
     gb_IncludeSignature: Boolean;
     gb_AltWorkList: Boolean;
     { ************************************************************************* }
     { To Control Patient Investigation at Table PatientTest }
     gi_BillingInvCtrl: integer;
     gi_OpdInvCtrl: integer;
     gi_WardInvCtrl: integer;
     gi_ERInvCtrl: integer;
     { ************************************************************************* }
     gi_BillCase: integer;
     // 0--> Service Bill Entry
     // 1--> Service Bill Load
     // 2--> Service Bill to  Final Bill
     // 3--> Direct Final Bill Entry
     // 4--> Direct Final Bill Load
     // 5--> Deposit Bill Load
     { ************************************************************************* }
     { Patient Information }
     gi_PatientID: integer;
     gi_ReportPatientID: integer;
     gi_NonPatientID: integer;
     gi_InPatientID: integer;
     gi_NewPatientID: integer;
     gi_PatientTestID: integer;
     gs_patientType: String;
     Gs_IsParty: Boolean;
     Gs_Pinno: String;
     Gs_RefDocCode: String;
     Gs_RefDoc: String;
     Gs_Title: String;
     Gs_Gender: String;
     Gs_PatientName: String;
     Gs_Fname: String;
     Gs_Lname: String;
     Gs_Age: String;
     Gs_agetype: String;
     Gs_Regdate: String;
     Gs_Email: String;
     Gs_DobVS: String;
     Gs_DobAD: String;
     Gs_MaritalStatus: String;
     Gi_ReligionID: integer;
     Gs_Religion: String;
     Gi_CountryID: integer;
     Gs_CountryName: String;
     Gi_DistrictID: integer;
     Gs_DistrictName: String;
     Gi_VdcID: integer;
     Gs_VdcName: String;
     Gs_Address: String;
     Gs_WardNo: String;
     Gs_PhoneNo: String;
     Gs_MobileNo: String;
     Gi_OccupationID: integer;
     Gs_OccupationName: String;
     Gi_EducationID: integer;
     Gs_Education: String;
     Gs_NexttoKin: String;
     Gi_RelationID: integer;
     Gs_Relation: String;
     Gs_Company: String;
     Gs_Remarks: String;
     Gb_PatientDataLoaded: Boolean;
     gb_isSql: Boolean;
     gi_HospitalId: integer;
     { ************************Hospital wise Frame Loading Cases*************** }
      gi_NurseTriageCase:Integer;
     {***************************************************************************}

Const
     gi_compileValue = 3;

     { ******************************************************************** }
     // Investigation Related Status
     // For TestProgressStatus
     gi_Recommendation = 1;
     gi_Billed = 2;
     gi_SampleColl = 3;
     gi_Investigation = 4;
     gi_Verification = 5;
     gi_Printing = 6;
     gi_Dispatch = 7; // broadcast

     // //For Synchronization Status
     // //before sync (to control which data is to be synced)
     gi_DoNotSync = -1;
     gi_NotSynced = 0; // Default
     gi_SyncToWeb = 1;
     gi_SyncToSms = 2;
     gi_SyncToWebSms = 3;
     // // After sync  (to control if the data is synced or not)
     gi_SyncedToWeb = 1;
     gi_SyncedToSms = 2;
     gi_SyncedToWebSms = 3;
     gi_SyncedFailed = 4; // SEPERATE DETAIL TABLE WILL BE USER

     { ******************************************************************** }

procedure Startup;
Function ToNepali(Number: String): String;
Procedure ChangeDateSystem(DateControl: TDateEditX; Btn: TSpeedButton);
procedure ClearAll(ParentName: Twincontrol);
function IsStrANumber(Const S: string): Boolean; stdcall;
procedure OnlyNumeric(Sender: Tobject; var Key: Char);
procedure OnlyNumericExtended(Sender: Tobject; var Key: Char);
function IsStrANumberExtended(S: string): Boolean;
Function CheckAccess(Param: String): Boolean;
Function CheckUser(NUserName, NPassword: String): Boolean;
procedure ShowDoneMessage;
Function MsgBox(MsgCode, BoxType: integer; param1, param2, param3: string): Boolean; stdcall;
function GetMACAddress: string;
function GetAdapterInfo(Lana: AnsiChar): String;
Function LoadImageFromDB(PatientID: integer): Boolean; stdcall;
procedure SaveImageToDB(PatientID: integer); stdcall;
procedure DeleteAllFiles(PatientID: integer); Stdcall;
procedure LoadPatientData(PatientID: integer); Stdcall;
procedure ClearVariable; stdcall;
Procedure LoadSampleTobeCollected(CheckListBox: TCheckListBox; Billno: String);
Procedure LoadCollectedSample(CheckListBox: TCheckListBox; Billno: String);
procedure LoadFindings(TableName: TTable; TestNameID: integer);
Function LoadPatientFindings(TableName: TTable; PatientTestID: integer): Boolean; Stdcall;
Function LoadInvestigativeResult(MyTable, FooterTable: TTable; PatientTestID: integer; PrintSelected: Boolean; Date, DEPID, SELECTEDTESTID: String)
  : Boolean; Stdcall;
Function SensitivityResultExist(PatientTestID: integer): Boolean;
Function SensitiveTest(TestNameID: integer): Boolean; Stdcall;
Function GetRefDocCode(Billno: String): String;
Function GetRefDoc(Billno: String): String;
Function GetTotalDepositRefNo(ReferenceNo: String): Double; stdcall;
Function GetTotalDepositDepNo(DepNo: String): Double; stdcall;
Procedure LoadDepartmentINCheckListBox(CheckListBox: TCheckListBox); stdcall;
Function GetFindingFromCode(Code: String): String; Stdcall;
Function GetCommentFromCode(Code: String): WideString; Stdcall;
Procedure LoadFindingFooter(TableName: TTable; PatientTestID: integer; PrintSelected: Boolean; Date, SELECTEDTESTID: String); stdcall;
Function GetMinMaxSampleNobyDate(MinMax, Date: String): String; stdcall;
Procedure LoadPatientTestinListBox(ListBox: TListBox; PatientID: integer; Date: String);
Function GetSampleRegesteredDate(SampleNo: String): String; stdcall;
Function CalculateNeutrophils(Lympho, Mono, Eosinophils, Basophils, Band, Myeloblasts, Promyelocytes, Myelocytes, Metamyelocytes, Monoblasts,
     Lymphoblasts, Prolymphocyes: Double): Double; Stdcall;
Function CalculateLDLCholesterol(TotalCholesterol, HDLCholesterol, Triglyceride: Double): Double; Stdcall;
Function CalculateVLDLCholesterol(Triglyceride: Double): Double; Stdcall;
Function CalculateNonHDLCholesterol(TotalCholesterol, HDLCholesterol: Double): Double; stdcall;
Function CalculateUnconjugatedBilirubin(TotalBilirubin, ConjugatedBilirubin: Double): Double; stdcall;
Function CalculateCreatinineclearance(UrineCreatinine, UrineVolume, SerumCreatinine: Double): Double; stdcall;
Function CalculateGlobulin(Protein, Albumin: Double): Double; Stdcall;
Function CalculateAGRation(Albumin, Globulin: Double): Double; Stdcall;
Procedure IncreaseVisitCount(PatientID: integer); stdcall;
Procedure SimulateKeyPress(MyHandle: Hwnd; Key: Word); stdcall;
Procedure LoadFootnoteinRichBox(TestNameID: integer; RichBox: TRichEdit); stdcall;
Procedure AddRemoveFootnote(PatientID, PatientTestID, UpdateType: integer); Stdcall;
Function CheckFootnoteStatus(PatientTestID: integer): Boolean; stdcall;
Procedure LoadPatientFootnoteinQRRichBox(PatientID, PatientTestID: integer; TableName: TTable; TestDate, SELECTEDTESTID: String;
     PrintSelected: Boolean); stdcall;
//Procedure SaveQrAsBmp(Qrpt: TQuickRep; Location: String); Stdcall;
//Procedure SaveQrAsJPG(Qrpt: TQuickRep; Location: String); Stdcall;
Function BMPtoJPG(BMPpic, JPGpic: string): Boolean; Stdcall;
Function MailInvResult(PatientID: integer; Billno: String): Boolean; Stdcall;
Function ValidDate(Date: String): Boolean; Stdcall;
Function AfterTodaysDate(DateEdit_Date: TDateEditX): Boolean; Stdcall;
Function ValidDateRange(FromDate, ToDate: String): Boolean; Stdcall;
Function GetLocalDiseaseID(LocalDeseaseName: String): integer; Stdcall;
Function EditableMedicalHistory(MedicalHistoryID: integer): Boolean; Stdcall;
Function GetHourDifference(FromDateTime, ToDateTime: String): Double; Stdcall;
Procedure LoadSensitiveMedicineInCheckListBox(CheckListBox: TCheckListBox); stdcall;
Procedure CheckSensitiveMedicineTestWiseInCheckListBox(TestNameID: integer; CheckListBox: TCheckListBox); stdcall;
Procedure LoadSensitiveMedicine(TestNameID: integer; Table: TTable); stdcall;
Function LoadPatientSensitiveMedicine(PatientTestID: integer; Table: TTable): Boolean; stdcall;
Function GetTestName(PatientTestID: integer): String; stdcall;
Function GetBillNoofRefundBill(RefundBillNo: String): String; stdcall;
Function GetMonitorCount(): integer; Stdcall;
Function OpenCashDrawer(): Boolean; Stdcall;
Function RefundBillExists(Billno: String): Boolean; Stdcall;
Function GetRefundBillofBill(Billno: String): String; Stdcall;
Function GetTotalRefundAmt(Billno: String): Double; Stdcall;
Function GetTestProgressStatus(PatientTestID: integer): integer; Stdcall;
Procedure UpdateTestProgressStatus(PatientTestID, TestProgressStatus: integer); Stdcall;
Function FormulaExists(TestID: integer): Boolean; stdcall;
Procedure PrepareCalculatedValue(MyTable: TTable; ForTestID: integer);
Function GetNextQueueNo(): integer; Stdcall;
Function GetFinalBillno(TPBillNo: String): String; Stdcall;
Function GetPatientIdFromBillNo(Billno: String): integer;
Function GetPatientIdFromSampleNo(SampleNo: String): integer;
Function GetBillDate(Billno: String): String;
function MakeRNDString(Chars: string; Count: integer): string;
Function GetUPassword(Billno: String): String;
Procedure UpdatePatientTestDetailStatus(PtDetailID: integer; Status: String);
Function GetTpBillno(Billno: String): String;
Function GetTestListCaption(PatientID: integer; Date: String): String;
Function MenuAccess(MenuName: String): Boolean;
Procedure RefreshQuery(Qry: Tquery; DbName: String);
function CheckDuplicateDataFrmTmp(RealTableName, KeyFieldName, DName, Value: string): Boolean;
function GetKeyValuetemp(RealTableName, KeyFieldName, DName: string): Longint;
Function GetFromDateBySubNoOfDays(DateControl: TDateEditX; NoOfDays: integer): String;
function ADTOVSS(sVS: String): String;
Function GetDay(Date: String): String;
Function IsValidTime(str: string): Boolean;
Procedure CheckPackageDep;
Function GetDrAmount(DepositNo: String): Double;
Function GetCrAmount(DepositNo: string): Double;
Function GetDepositRefType(DepositNo: String): String;
Function GetDepositUser(DepositNo: String): String;
Function GetTotalMemberDeposit(PatientID: integer; ReferenceType: String): Double; stdcall;
Function GetTotalPatientDeposit(PatientID: integer): Double; stdcall;
Function GetBenefitPackageAmout(BenefitPackageID: integer): Double;
Procedure ClearMemberVariable;
Procedure LoadMemberData(MemberID: integer); Stdcall;
Function GetNoOfDecimalPartOfFloatNum(FloatNum: Double; NoOfDecPart: integer): Double;
Function RoundingAfterSecondPlace(FloatNumber:Double):Double;
Procedure ChangeToDefaultDate(DEX_FromDate,DEX_ToDate:TDateEditX);
Procedure ChangeCaption(btn:Tbutton; DateSysetm:integer);
Procedure ChangeCaptionSPB(btn:TSpeedButton; DateSysetm:integer);
procedure AvoidMultipleDecimal(Edit_Text:TEdit; var Key:char);

implementation

uses ServerDate, DM,
//     DateRange,
     Unit_Message, Change;

procedure Startup;
begin
     if gi_compileValue = 1 then
     begin
          gs_HospitalName := 'GRANDE INTERNATIONAL HOSPITAL PVT. LTD';
          gs_HospitalAddress := 'DHAPASI, KATHMANDU';
          gi_datesystem := 1;
          gs_DateCaption := 'AD';
          gs_AliasName := 'ORAHOSPITAL';
          gs_DatabaseName := 'HOSPITAL';
          gs_DB_UserName := 'MIDASHOSPITAL';
          gs_DB_Password := 'MIDAS';
          // gs_DB_UserName := 'SIDDHI';
          // gs_DB_Password := 'SIDDHI';
          Gs_PatientIdCaption := 'Hospital No.';
          gi_PatientID := 0;
          gf_TaxPercent := 5; // Health Service Tax
          Gs_TaxRule := 'TAD'; // Tax After Discount
          gi_HospitalId := 20;
          gb_isDotMatrix := true;
          gb_HideSource := true;
          gb_HideIndication := true;

          //cases
          gi_NurseTriageCase:=1;
          { ******************************************************************** }
     end
     else if gi_compileValue = 2 then
     begin
          gs_HospitalName := 'KROWN LABORATORY AND REFERRAL CENTER';
          gs_HospitalAddress := 'BHATBHATENI';
          gi_datesystem := 1;
          gs_DateCaption := 'AD';
          gs_AliasName := 'ORAHOSPITAL';
          gs_DatabaseName := 'HOSPITAL';
          gs_DB_UserName := 'KLAB';
          gs_DB_Password := 'KLAB';
          Gs_PatientIdCaption := 'Lab No.';
          gi_PatientID := 0;
          gf_TaxPercent := 5; // Health Service Tax
          Gs_TaxRule := 'TAD'; // Tax After Discount
          gb_isDotMatrix := true;
          gb_HideSource := true;
          gb_HideIndication := true;
     end
     else if gi_compileValue = 3 then
     begin
          gs_HospitalName := 'DIABETES, THYROID AND ENDOCRINOLOGY CARE CENTER';
          gs_HospitalAddress := 'BHATBHATENI';
          gi_datesystem := 1;
          gs_DateCaption := 'AD';
          gs_AliasName := 'ORAHOSPITAL';
          gs_DatabaseName := 'HOSPITAL';
          gs_DB_UserName := 'MIDASHOSPITAL';
          gs_DB_Password := 'MIDAS';
          Gs_PatientIdCaption := 'Lab No.';
          gi_PatientID := 0;
          gf_TaxPercent := 5; // Health Service Tax
          Gs_TaxRule := 'TAD'; // Tax After Discount
          gb_isDotMatrix := true;
          gb_HideSource := true;
          gb_HideIndication := true;

          //CASES
          gi_NurseTriageCase:=3;
     end;
     { ******************************************************************** }
     DM_Hospital := TDM_Hospital.Create(nil);
     with DM_Hospital.DB do
     begin
          DatabaseName := gs_DatabaseName;
          AliasName := gs_AliasName;
          Params.Clear;
          Params.Add('DATABASE NAME=');
          Params.Add('USER NAME=' + gs_DB_UserName);
          Params.Add('ODBC DSN=' + gs_AliasName);
          Params.Add('OPEN MODE=READ/WRITE');
          Params.Add('SCHEMA CACHE SIZE=8');
          Params.Add('SQLQRYMODE=');
          Params.Add('LANGDRIVER=');
          Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
          Params.Add('SCHEMA CACHE TIME=-1');
          Params.Add('MAX ROWS=-1');
          Params.Add('BATCH COUNT=200');
          Params.Add('ENABLE SCHEMA CACHE=FALSE');
          Params.Add('SCHEMA CACHE DIR=');
          Params.Add('ENABLE BCD=FALSE');
          Params.Add('ROWSET SIZE=20');
          Params.Add('BLOBS TO CACHE=64');
          Params.Add('PASSWORD=' + gs_DB_Password);
          if not Connected then
               Connected := true;
     end;
     { ******************************************************************** }
     CreateQuery;

     if gi_datesystem = 0 then
     begin
          gs_From := TodaysDateVS;
          gs_to := TodaysDateVS;
     end
     else
     begin
          gs_From := TodaysDate;
          gs_to := TodaysDate;
     end;

     // For ControlStatus (For ServiceBilling)
     gi_BillingInvCtrl := gi_Recommendation; // Cannot proceed sample collection.
     gi_OpdInvCtrl := gi_Recommendation; // Cannot proceed inv.
     gi_WardInvCtrl := gi_Dispatch; // Complete Inv.
     gi_ERInvCtrl := gi_Verification; // Cannot print Inv.

     // For SampleNumber Generation
     // 0--> Weekly 1-->Monthly 2--> Yearly
     gi_SampleFormat := 0;
     gb_isSql := false;
     { ******************************************************************** }

     { ******************************************************************** }
     Query := Tquery.Create(Nil);
     Query.DatabaseName := gs_DatabaseName;
     if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Temp') then
          CreateDir(ExtractFilePath(Application.ExeName) + 'Temp');

     gs_temppath := ExtractFilePath(Application.ExeName) + 'Temp';
     gs_MacID := GetMACAddress;
end;

Function ToNepali(Number: String): String;
Var
     I, J: integer;
     str: String;
begin
     str := Number;
     for I := 1 to length(str) do
     begin
          J := I;
          if copy(str, J, 1) = '.' then
               Result := Result + '.'
          else if copy(str, J, 1) = '1' then
               Result := Result + '१'
          else if copy(str, J, 1) = '2' then
               Result := Result + '२'
          else if copy(str, J, 1) = '3' then
               Result := Result + '३'
          else if copy(str, J, 1) = '4' then
               Result := Result + '४'
          else if copy(str, J, 1) = '5' then
               Result := Result + '५'
          else if copy(str, J, 1) = '6' then
               Result := Result + '६'
          else if copy(str, J, 1) = '7' then
               Result := Result + '७'
          else if copy(str, J, 1) = '8' then
               Result := Result + '८'
          else if copy(str, J, 1) = '9' then
               Result := Result + '९'
          else if copy(str, J, 1) = '0' then
               Result := Result + '०'
          else
               Result := Result + copy(str, J, 1);
     end;
end;

Function GetFromDateBySubNoOfDays(DateControl: TDateEditX; NoOfDays: integer): String;
Begin
     IF gi_datesystem = 0 Then
          Result := ADTOVSS(formatDateTime('YYYY/MM/DD', DateControl.ADDateAsDate - NoOfDays))
     Else // IF gi_DateSystem=1 Then
          Result := formatDateTime('YYYY/MM/DD', DateControl.ADDateAsDate - NoOfDays);
End;

function ADTOVSS(sVS: String): String;
var
     Converter: TDateEditX;
begin
     Converter := TDateEditX.Create(Nil);
     try
          Converter.systemOfDate := dsIswiSambat; // dsVikramSambat;
          Converter.text := sVS;
          Result := Converter.VSDateAsText; // ADDateAsText;
     finally
          Converter.free;
     end;
end;

function GetKeyValuetemp(RealTableName, KeyFieldName, DName: string): Longint;
var
     query_key: Tquery;
begin
     query_key := Tquery.Create(nil);
     with query_key do
     Begin
          close;
          DatabaseName := gs_temppath;
          sql.Clear;
          sql.Add('select max(' + KeyFieldName + ') as nMax from  ' + RealTableName);
          open;
          Result := fieldbyname('nMax').Asinteger + 1;
     End;
end;

function CheckDuplicateDataFrmTmp(RealTableName, KeyFieldName, DName, Value: string): Boolean;
var
     query_key: Tquery;
begin
     query_key := Tquery.Create(nil);
     with query_key do
     Begin
          close;
          DatabaseName := DName;
          sql.Clear;
          sql.Add('select ' + KeyFieldName + ' from ' + RealTableName + ' where ' + KeyFieldName + '=' + #39 + Value + #39);

          open;
          if trim(fieldbyname('' + KeyFieldName + '').Asstring) <> '' then
               Result := true
          else
               Result := false;
     End;
end;

Procedure ChangeDateSystem(DateControl: TDateEditX; Btn: TSpeedButton);
begin
     if DateControl.systemOfDate = 0 Then
     begin
          DateControl.systemOfDate := 1;
          Btn.Caption := 'AD';
     end
     else if DateControl.systemOfDate = 1 Then
     begin
          DateControl.systemOfDate := 0;
          Btn.Caption := 'BS';
     end;
end;

procedure ClearAll(ParentName: Twincontrol);
Var
     I: integer;
begin
     For I := 0 to ParentName.ControlCount - 1 do
     begin
          if (ParentName.Controls[I] is TEdit) then
               TEdit(ParentName.Controls[I]).Clear;
          { ***************************************** }
          if (ParentName.Controls[I] is TLabeledEdit) then
               TLabeledEdit(ParentName.Controls[I]).Clear;
          { ***************************************** }
          if (ParentName.Controls[I] is TDBLookupComboBox) then
               TDBLookupComboBox(ParentName.Controls[I]).KeyValue := null;
          { ***************************************** }
          if (ParentName.Controls[I] is TDateEditX) then
          begin
               if gi_datesystem = 1 then
                    TDateEditX(ParentName.Controls[I]).ADDateAsText := TodaysDate
               else
                    TDateEditX(ParentName.Controls[I]).VSDateAsText := TodaysDateVS;
          end;
          { ***************************************** }
          if (ParentName.Controls[I] is TComboBox) then
               TComboBox(ParentName.Controls[I]).ItemIndex := -1;
          { ***************************************** }
          if (ParentName.Controls[I] is TMemo) then
               TMemo(ParentName.Controls[I]).Lines.Clear;
          { ***************************************** }
     end;
end;

procedure OnlyNumeric(Sender: Tobject; var Key: Char);
begin
     if not(Key in [#8, '0' .. '9', '-', DecimalSeparator]) then
          Key := #0
     else if ((Key = DecimalSeparator) or (Key = '-')) and (Pos(Key, (Sender as TLabeledEdit).text) > 0) then
          Key := #0
     else if (Key = '-') and ((Sender as TLabeledEdit).SelStart <> 0) then
          Key := #0;
end;

procedure OnlyNumericExtended(Sender: Tobject; var Key: Char);
begin
     if not(Key in [#8, '0' .. '9', '-', ',', '<', '>', DecimalSeparator]) then
          Key := #0
     else if ((Key = DecimalSeparator) or (Key = '-')) and (Pos(Key, (Sender as TLabeledEdit).text) > 0) then
          Key := #0
     else if (Key = '-') and ((Sender as TLabeledEdit).SelStart <> 0) then
          Key := #0;
end;

function IsStrANumber(Const S: string): Boolean; stdcall;
var
     P: PChar;
begin
     P := PChar(S);
     Result := false;
     while P^ <> #0 do
     begin
          if not(P^ in ['0' .. '9', DecimalSeparator]) then
               Exit;
          Inc(P);
     end;
     Result := true;
end;

Function CheckAccess(Param: String): Boolean;
var
     Query_CheckAccess: Tquery;
begin
     Query_CheckAccess := Tquery.Create(Nil);
     with Query_CheckAccess do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select count (userid) count from previlege where accessid in (select accessid from useraccess ');
          sql.Add('where useraccess =Upper(' + #39 + Param + #39 + '))');
          sql.Add('and userid =' + IntToStr(gi_UserID));
          open;
     end;
     if Query_CheckAccess.fieldbyname('count').Asinteger > 0 then
          Result := true
     else
          Result := false;
     Query_CheckAccess.free;
end;

Function CheckUser(NUserName, NPassword: String): Boolean;
Var
     Tem_dateEditx: TDateEditX;
     DateDiff: Double;
     QueryChekUser: Tquery;
     DEX_Control: TDateEditX;
     Pass: String;
Begin
     gi_UserID := 0;
     QueryChekUser := Tquery.Create(nil);
     DEX_Control := TDateEditX.Create(nil);
     Tem_dateEditx := TDateEditX.Create(nil);
     With QueryChekUser Do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add(' Select UserID,UserName,ExpDate,UPassword');
          sql.Add(' ,IsActive');
          sql.Add('From UserMain Where UserName=' + chr(39) + NUserName + chr(39));
          // sql.Add(' UPassword=' + chr(39) + NPassword + chr(39));
          FetchAll;
          open;
          while Not Eof do
          begin
               Pass := DecodePWDEx(fieldbyname('Upassword').Asstring);
               if Pass = NPassword then
               begin
                    gi_UserID := fieldbyname('UserID').Asinteger;
                    break;
               end;
               Next;
          end;
          sql.Clear;
          sql.Add(' Select UserID,UserName,ExpDate,UPassword,IsActive');
          sql.Add('From UserMain Where UserID=' + IntToStr(gi_UserID));
          open;
          If fieldbyname('IsActive').Asstring = 'N' then
          begin
               MessageDlg('Sorry ! You are not the Active User', mtWarning, [MbOk], 0);
               Result := false;
               Exit;
          End;

          IF fieldbyname('UserID').Asinteger > 0 Then
          Begin
               Tem_dateEditx.ADDateAsText := TodaysDate;
               Tem_dateEditx.systemOfDate := gi_datesystem;
               DEX_Control.ADDateAsText := fieldbyname('ExpDate').Asstring;
               DEX_Control.systemOfDate := gi_datesystem;
               DateDiff := DEX_Control.ADDateAsDate - Tem_dateEditx.ADDateAsDate;

               If (DateDiff <= 5) and (DateDiff > 0) then
                    MessageDlg('      Your user account will be Expired after ' + FloatToStr(DateDiff) + ' Day(s).' + #13 + #13 +
                           'So,Please contact with IT Administrator to extend the User Account Date.', mtWarning, [MbOk], 0)
               Else If (DateDiff <= 0) then
               begin
                    MessageDlg('Your account has already expired.', mtWarning, [MbOk], 0);
                    Result := false;
                    Exit;
               end;

               gi_UserID := fieldbyname('UserID').Asinteger;
               gs_UserName := fieldbyname('UserName').Asstring;
               gs_UserLoginDate := ServerDate.TodaysDate;
               Result := true;
               With sql Do
               Begin
                    close;
                    Clear;
                    Add('Update UserMain Set IsLogin=' + chr(39) + 'T' + chr(39));
                    Add('Where UserID=' + IntToStr(gi_UserID));
                    ExecSQL;
               End;
               Result := true;
          End;
     End;
     Inc(NCount);
     QueryChekUser.free;
End;

Procedure ShowDoneMessage;
begin
     { ***************************************** }
     AClass := GetClass('TFrm_Message');
     if AClass <> nil then
          with TComponentClass(AClass).Create(Application) as TForm do
          begin
               showmodal;
          end;
     { ***************************************** }
end;

Function MsgBox(MsgCode, BoxType: integer; param1, param2, param3: string): Boolean; stdcall;
Var
     msg: String;
     finalmsg1, finalmsg2: String;
     linebreak: integer;
     msgtype: TMsgDlgType;
begin
     try
          Query := Tquery.Create(nil);
          with Query do
          begin
               close;
               DatabaseName := gs_DatabaseName;
               sql.Clear;
               sql.Add('select msg_type,msg,instr(msg,''#13'')linebreak from msg_code');
               sql.Add(' Where Msg_Code=' + IntToStr(MsgCode));
               open;
               if fieldbyname('msg_type').Asstring = 'MTCONFIRMATION' then
                    msgtype := mtConfirmation
               else if fieldbyname('msg_type').Asstring = 'MTINFORMATION' then
                    msgtype := mtInformation
               else if fieldbyname('msg_type').Asstring = 'MTWARNING' then
                    msgtype := mtWarning
               else if fieldbyname('msg_type').Asstring = 'MTERROR' then
                    msgtype := mtError;

               msg := fieldbyname('msg').Asstring;
               linebreak := fieldbyname('Linebreak').Asinteger;
          end;
          if linebreak > 0 then
          begin
               finalmsg1 := copy(msg, 1, linebreak - 1);
               finalmsg2 := copy(msg, linebreak + 3, 999);
          end
          else
               finalmsg1 := msg;
          finalmsg1 := StringReplace(finalmsg1, '@1', param1, [rfReplaceAll]);
          finalmsg1 := StringReplace(finalmsg1, '@2', param2, [rfReplaceAll]);
          finalmsg1 := StringReplace(finalmsg1, '@3', param3, [rfReplaceAll]);

          finalmsg2 := StringReplace(finalmsg2, '@1', param1, [rfReplaceAll]);
          finalmsg2 := StringReplace(finalmsg2, '@2', param2, [rfReplaceAll]);
          finalmsg2 := StringReplace(finalmsg2, '@3', param3, [rfReplaceAll]);

          if BoxType = 0 then
               ShowMessage(finalmsg1 + #13 + finalmsg2);
          if BoxType = 1 then
          begin
               if MessageDlg(finalmsg1 + #13 + finalmsg2, msgtype, mbYesNo, 0) = mryes then
                    Result := true
               else
                    Result := false;
          end;

     except
          Result := false;
     end;
     Query.free;
end;

function GetAdapterInfo(Lana: AnsiChar): String;
var
     Adapter: TAdapterStatus;
     NCB: TNCB;
begin
     FillChar(NCB, SizeOf(NCB), 0);
     NCB.ncb_command := Char(NCBRESET);
     NCB.ncb_lana_num := Lana;
     if Netbios(@NCB) <> Char(NRC_GOODRET) then
     begin
          Result := 'mac not found';
          Exit;
     end;

     FillChar(NCB, SizeOf(NCB), 0);
     NCB.ncb_command := Char(NCBASTAT);
     NCB.ncb_lana_num := Lana;
     NCB.ncb_callname := '*';

     FillChar(Adapter, SizeOf(Adapter), 0);
     NCB.ncb_buffer := @Adapter;
     NCB.ncb_length := SizeOf(Adapter);
     if Netbios(@NCB) <> Char(NRC_GOODRET) then
     begin
          Result := 'mac not found';
          Exit;
     end;
     Result := IntToHex(Byte(Adapter.adapter_address[0]), 2) + '-' + IntToHex(Byte(Adapter.adapter_address[1]), 2) + '-' + IntToHex
       (Byte(Adapter.adapter_address[2]), 2) + '-' + IntToHex(Byte(Adapter.adapter_address[3]), 2) + '-' + IntToHex
       (Byte(Adapter.adapter_address[4]), 2) + '-' + IntToHex(Byte(Adapter.adapter_address[5]), 2);
end;

function GetMACAddress: string;
var
     AdapterList: TLanaEnum;
     NCB: TNCB;
begin
     FillChar(NCB, SizeOf(NCB), 0);
     NCB.ncb_command := Char(NCBENUM);
     NCB.ncb_buffer := @AdapterList;
     NCB.ncb_length := SizeOf(AdapterList);
     Netbios(@NCB);
     if Byte(AdapterList.length) > 0 then
          Result := GetAdapterInfo(AdapterList.Lana[0])
     else
          Result := 'mac not found';
end;

Function LoadImageFromDB(PatientID: integer): Boolean; stdcall;
Var
     Qry: Tquery;
     SP_Load: TStoredProc;
begin
     Result := false;
     Qry := Tquery.Create(nil);
     SP_Load := TStoredProc.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT PATIENTID from PATIENTIMAGE Where PATIENTID=' + IntToStr(PatientID));
          open;
          if fieldbyname('PATIENTID').Asstring = '' then
               Exit;
     end;
     with SP_Load do
     begin
          DatabaseName := gs_DatabaseName;
          StoredProcName := 'LOAD_IMAGE';
          Params.CreateParam(ftInteger, 'PPatientID', ptInput);
          Params[0].Value := gi_PatientID;
          ExecProc;
          Result := true;
     end;
     Qry.free;
     SP_Load.free;
end;

procedure SaveImageToDB(PatientID: integer); stdcall;
Var
     Qry: Tquery;
     SP_Save: TStoredProc;
begin
     Qry := Tquery.Create(nil);
     SP_Save := TStoredProc.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Delete from PatientImage Where PatientID=' + IntToStr(PatientID));
          ExecSQL;
     end;
     with SP_Save do
     begin
          DatabaseName := gs_DatabaseName;
          StoredProcName := 'SAVE_IMAGE';
          Params.CreateParam(ftInteger, 'PPatientID', ptInput);
          Params[0].Value := gi_PatientID;
          ExecProc;
     end;
     Qry.free;
end;

procedure DeleteAllFiles(PatientID: integer); Stdcall;
var
     APath: string;
     MySearch: TSearchRec;
     mid: string;
begin
     // APath := gs_picpath;
     // FindFirst(APath + '\*.*', faAnyFile, MySearch);
     // // Memo1.Lines.Add(MySearch.Name);
     // DeleteFile(APath + '\' + MySearch.Name);
     // while FindNext(MySearch) = 0 do
     // begin
     // mid := copy(MySearch.Name, 1, (Pos('I', MySearch.Name) - 1));
     // // Memo1.Lines.Add(MySearch.Name);
     // if mid = IntToStr(PatientID) then
     // DeleteFile(APath + '\' + MySearch.Name);
     // end;
     // FindClose(MySearch);
end;

procedure LoadPatientData(PatientID: integer); Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from VW_PatientMain where PatientId=' + IntToStr(PatientID));
          open;
          Gs_Title := fieldbyname('Title').Asstring;
          Gs_Gender := fieldbyname('Gender').Asstring;
          Gs_Fname := fieldbyname('Fname').Asstring;
          Gs_Lname := fieldbyname('LName').Asstring;
          Gs_PatientName := Gs_Fname + ' ' + Gs_Lname;
          Gs_Age := fieldbyname('Age').Asstring;
          Gs_agetype := fieldbyname('AgeType').Asstring;
          Gs_DobVS := fieldbyname('DobVS').Asstring;
          Gs_DobAD := fieldbyname('DobAD').Asstring;
          Gs_MaritalStatus := fieldbyname('MaritalStatus').Asstring;
          Gi_ReligionID := fieldbyname('ReligionID').Asinteger;
          Gs_Religion := fieldbyname('Religion').Asstring;
          Gi_CountryID := fieldbyname('CountryID').Asinteger;
          Gs_CountryName := fieldbyname('CountryName').Asstring;
          Gi_DistrictID := fieldbyname('DistrictID').Asinteger;
          Gs_DistrictName := fieldbyname('DistrictName').Asstring;
          Gs_Email := fieldbyname('Email').Asstring;
          Gi_VdcID := fieldbyname('VDCID').Asinteger;
          Gs_VdcName := fieldbyname('VDCName').Asstring;
          Gs_Address := fieldbyname('Address').Asstring;
          Gs_WardNo := fieldbyname('WardNo').Asstring;
          Gs_PhoneNo := fieldbyname('PhoneNo').Asstring;
          Gs_MobileNo := fieldbyname('MobileNo').Asstring;
          Gi_OccupationID := fieldbyname('OccupationID').Asinteger;
          Gs_OccupationName := fieldbyname('OccupationName').Asstring;
          Gi_EducationID := fieldbyname('EducationID').Asinteger;
          Gs_Education := fieldbyname('Education').Asstring;
          Gs_NexttoKin := fieldbyname('NexttoKin').Asstring;
          Gi_RelationID := fieldbyname('RelationID').Asinteger;
          Gs_Relation := fieldbyname('Relation').Asstring;
          Gs_Company := fieldbyname('Company').Asstring;
          Gs_Remarks := fieldbyname('Remarks').Asstring;
          Gs_Regdate := fieldbyname('Regdate').Asstring;
          if fieldbyname('IsParty').Asstring = 'Y' then
               Gs_IsParty := true
          else
               Gs_IsParty := false;
          Gs_Pinno := fieldbyname('PinNo').Asstring;

     end;
     Gb_PatientDataLoaded := true;
end;

procedure ClearVariable; stdcall;
begin
     gi_PatientID := 0;
     gi_NonPatientID := 0;
     Gs_Title := '';
     Gs_Gender := '';
     Gs_Fname := '';
     Gs_Lname := '';
     Gs_PatientName := '';
     Gs_Age := '';
     Gs_agetype := '';
     Gs_DobVS := '';
     Gs_DobAD := '';
     Gs_MaritalStatus := '';
     Gi_ReligionID := 0;
     Gs_Religion := '';
     Gi_CountryID := 0;
     Gs_CountryName := '';
     Gi_DistrictID := 0;
     Gs_DistrictName := '';
     Gi_VdcID := 0;
     Gs_VdcName := '';
     Gs_Address := '';
     Gs_WardNo := '';
     Gs_PhoneNo := '';
     Gs_MobileNo := '';
     Gi_OccupationID := 0;
     Gs_OccupationName := '';
     Gi_EducationID := 0;
     Gs_Education := '';
     Gs_NexttoKin := '';
     Gi_RelationID := 0;
     Gs_Relation := '';
     Gs_Company := '';
     { ------------------------- }
     Gs_BillNo := '';
     gs_TestName := '';
     gs_SampleNo := '';
     gs_TestNameCode := '';
     Gb_PatientDataLoaded := false;
end;

Procedure LoadSampleTobeCollected(CheckListBox: TCheckListBox; Billno: String);
Var
     Qry: Tquery;
     I: integer;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select Pt.*,T.TESTNAME||'' [''||S.SAMPLESOURCE||'' ]'' TESTNAME from PatientTest Pt,TestName T,SampleSource S');
          sql.Add('  Where PT.TESTNAMEID=T.TESTNAMEID');
          sql.Add('And T.SampleSourceId=S.SampleSourceId(+)');
          sql.Add('  And billno=' + #39 + Billno + #39);
          sql.Add('  and PatientTestID not in');
          sql.Add('(SELECT PATIENTTESTID FROM PATIENTTEST WHERE BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM REFUNDDETAIL))');
          sql.Add('AND PATIENTTESTID NOT IN (SELECT PATIENTTESTID FROM TESTCANCEL )');
          sql.Add('  and testprogressstatus=2');
          open;
          First;
          CheckListBox.Items.Clear;
          SetLength(Arr_SampleTobeCollected, RecordCount);
          I := 0;
          while not Eof do
          begin
               CheckListBox.Items.Add(fieldbyname('TestName').Asstring);
               SetLength(Arr_SampleTobeCollected[I], 2);
               Arr_SampleTobeCollected[I, 0] := fieldbyname('PatientTestId').Asinteger;
               Arr_SampleTobeCollected[I, 1] := fieldbyname('TestNameID').Asinteger;
               I := I + 1;
               Next;
          end;
     end;
     Qry.free;
end;

Procedure LoadCollectedSample(CheckListBox: TCheckListBox; Billno: String);
Var
     Qry: Tquery;
     I: integer;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select Pt.*,T.TESTNAME||'' [''||S.SAMPLESOURCE||'' ]'' TESTNAME from PatientTest Pt,TestName T,SampleSource S');
          sql.Add('  Where PT.TESTNAMEID=T.TESTNAMEID');
          sql.Add('And T.SampleSourceId=S.SampleSourceId(+)');
          sql.Add('  And billno=' + #39 + Billno + #39);
          sql.Add('  and patienttestID not in (select patienttestid from testcancel where billno=' + #39 + Billno + #39 + ')');
          sql.Add('  and testprogressstatus>=3');
          open;
          CheckListBox.Items.Clear;
          SetLength(Arr_CollectedSample, RecordCount);
          I := 0;
          while not Eof do
          begin
               CheckListBox.Items.Add(fieldbyname('TestName').Asstring);
               SetLength(Arr_CollectedSample[I], 2);
               Arr_CollectedSample[I, 0] := fieldbyname('PatientTestID').Asinteger;
               Arr_CollectedSample[I, 1] := fieldbyname('TestNameID').Asinteger;
               I := I + 1;
               Next;
          end;
     end;
     Qry.free;
end;

procedure LoadFindings(TableName: TTable; TestNameID: integer);
Var
     Qry: Tquery;
     Suffix, FinalRange: String;
begin
     Qry := Tquery.Create(Nil);
     TableName.close;
     TableName.open;
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          // sql.Add('Select * from Test Where TestnameId=' + IntToStr(TestNameID));
          sql.Add('select t.*,CAST(T.SPECIALRANGE AS VARCHAR2(100))SPECIALRANGEMAIN');
          sql.Add(',(select deporder from department where depid in (select depid from testname where testnameid=t.testnameid))deporderMain');
          sql.Add('from test t where testnameid=' + IntToStr(TestNameID));
          sql.Add('And T.IsActive=''Y''');
          sql.Add('order by depordermain,t.testnameid,t.displayorder');
          open;
          while not Eof do
          begin
               with TableName do
               begin
                    Append;
                    fieldbyname('IsNew').Asstring := 'Y';
                    fieldbyname('TestNameId').Asinteger := Qry.fieldbyname('TestNameId').Asinteger;
                    fieldbyname('PatienttestID').Asinteger := gi_PatientTestID;
                    fieldbyname('TestID').Asinteger := Qry.fieldbyname('TestID').Asinteger;
                    fieldbyname('Test').Asstring := Qry.fieldbyname('Test').Asstring;
                    fieldbyname('IsHeading').Asstring := Qry.fieldbyname('IsHeading').Asstring;
                    fieldbyname('SpecialRange').Asstring := Qry.fieldbyname('SPECIALRANGEMAIN').Asstring;
                    Suffix := ' @' + Qry.fieldbyname('Suffix').Asstring;

                    if Qry.fieldbyname('LRangeG').Asstring <> '' then
                         fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeG').Asstring
                    else if Qry.fieldbyname('LRangeC').Asstring <> '' then
                         fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeC').Asstring;

                    if Qry.fieldbyname('HRangeG').Asstring <> '' then
                         fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeG').Asstring
                    else if Qry.fieldbyname('HRangeC').Asstring <> '' then
                         fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeC').Asstring;

                    if Gs_Gender = 'MALE' then
                    begin
                         if fieldbyname('HRange').Asstring <> '' then
                              FinalRange := fieldbyname('LRange').Asstring + '-' + fieldbyname('HRange').Asstring
                         else
                              FinalRange := fieldbyname('LRange').Asstring;

                         fieldbyname('RangeM').Asstring := FinalRange;
                         fieldbyname('RangeReal').Asstring := FinalRange + Suffix;
                         fieldbyname('Range').Asstring := FinalRange;
                    end
                    else
                    begin
                         if fieldbyname('HRange').Asstring <> '' then
                              FinalRange := fieldbyname('LRange').Asstring + '-' + fieldbyname('HRange').Asstring
                         else
                              FinalRange := fieldbyname('LRange').Asstring;
                         fieldbyname('RangeF').Asstring := FinalRange;
                         fieldbyname('RangeReal').Asstring := FinalRange + Suffix;
                         fieldbyname('Range').Asstring := FinalRange;
                    end;

                    if (fieldbyname('LRange').Asstring = '') and (fieldbyname('HRange').Asstring = '') then
                    begin
                         if Gs_Gender = 'MALE' then
                         begin
                              if Qry.fieldbyname('HRangeM').Asstring <> '' then
                                   FinalRange := Qry.fieldbyname('LRangeM').Asstring + '-' + Qry.fieldbyname('HRangeM').Asstring
                              else
                                   FinalRange := Qry.fieldbyname('LRangeM').Asstring;

                              fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeM').Asstring;
                              fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeM').Asstring;
                              fieldbyname('LRangeM').Asstring := Qry.fieldbyname('LRangeM').Asstring;
                              fieldbyname('HRangeM').Asstring := Qry.fieldbyname('HRangeM').Asstring;
                              fieldbyname('RangeM').Asstring := FinalRange;
                              fieldbyname('RangeReal').Asstring := FinalRange + Suffix;
                              fieldbyname('Range').Asstring := FinalRange;
                         end
                         else
                         begin
                              if Qry.fieldbyname('HRangeF').Asstring <> '' then
                                   FinalRange := Qry.fieldbyname('LRangeF').Asstring + '-' + Qry.fieldbyname('HRangeF').Asstring
                              else
                                   FinalRange := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeF').Asstring;
                              fieldbyname('LRangeF').Asstring := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('HRangeF').Asstring := Qry.fieldbyname('HRangeF').Asstring;
                              fieldbyname('RangeF').Asstring := FinalRange;
                              fieldbyname('RangeReal').Asstring := FinalRange + Suffix;
                              fieldbyname('Range').Asstring := FinalRange;
                         end;
                    end;

                    // if Trim(Qry.FieldByName('SPECIALRANGEMAIN').AsString)<>'' then
                    // Begin
                    // if Trim(FieldByName('Range').AsString)='' then
                    // FieldByName('Range').AsString := Qry.FieldByName('SPECIALRANGEMAIN').AsString;
                    // End;
                    fieldbyname('Unit').Asstring := Qry.fieldbyname('Unit').Asstring;
                    // FieldByName('Extra').AsString := Qry.FieldByName('Extra').AsString;
                    // FieldByName('ExtraFindings').AsString := Qry.FieldByName('ExtraFindings').AsString;
                    Post;
               end;
               Next;
          end;
     end;
     Qry.free;
end;

Function GetRefDocCode(Billno: String): String;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          if copy(Billno, 1, 2) = 'TP' then
               sql.Add('Select RefDocCode from ServiceBillmaster Where billno=' + #39 + Billno + #39)
          else if (copy(Billno, 1, 2) = 'CS') or (copy(Billno, 1, 2) = 'CR') then
               sql.Add('Select RefDocCode from BillMaster Where billno=' + #39 + Billno + #39);
          open;
          Result := fieldbyname('RefdocCode').Asstring;
     end;
     Qry.free;
end;

Function LoadPatientFindings(TableName: TTable; PatientTestID: integer): Boolean; Stdcall;
Var
     Qry: Tquery;
     Suffix, FinalRange: String;
begin
     Qry := Tquery.Create(Nil);
     TableName.close;
     TableName.open;
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add(
               'select sc.sampleno,ptd.*,t.test,T.ISHEADING, T.HRANGEG,T.LRANGEG,T.HRANGEM,T.LRANGEM,T.HRANGEF,T.LRANGEF,T.HRANGEC,T.LRANGEC,T.SUFFIX,T.SpecialRange');
          sql.Add('FROM patienttestdetail ptd,test t,samplecollection sc');
          sql.Add('Where  ptd.testid=t.testid');
          sql.Add('and sc.patienttestid=ptd.patienttestid');
          sql.Add('And ptd.PatientTestID=' + IntToStr(PatientTestID));
          sql.Add('Order by T.DISPLAYORDER');
          open;
          Result := false;
          while not Eof do
          begin
               with TableName do
               begin
                    Result := true;
                    Append;
                    fieldbyname('IsNew').Asstring := 'N';
                    fieldbyname('PtDetailID').Asinteger := Qry.fieldbyname('PtDetailID').Asinteger;
                    fieldbyname('PatientTestId').Asinteger := Qry.fieldbyname('PatientTestId').Asinteger;
                    fieldbyname('TestNameId').Asinteger := Qry.fieldbyname('TestNameId').Asinteger;
                    fieldbyname('TestID').Asinteger := Qry.fieldbyname('TestID').Asinteger;
                    fieldbyname('Test').Asstring := Qry.fieldbyname('Test').Asstring;
                    fieldbyname('Finding').Asstring := Qry.fieldbyname('Finding').Asstring;
                    fieldbyname('SampleNo').Asstring := Qry.fieldbyname('SampleNo').Asstring;
                    fieldbyname('IsHeading').Asstring := Qry.fieldbyname('IsHeading').Asstring;
                    fieldbyname('SpecialRange').Asstring := Qry.fieldbyname('SPECIALRANGE').Asstring;
                    // if Qry.FieldByName('LRangeG').AsString <> '' then
                    fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeG').Asstring;

                    // if Qry.FieldByName('HRangeG').AsString <> '' then
                    fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeG').Asstring;
                    Suffix := ' ' + Qry.fieldbyname('Suffix').Asstring;

                    if Qry.fieldbyname('LRangeG').Asstring = '' then
                    begin
                         if StrToInt(Gs_Age) < 5 then
                              fieldbyname('Range').Asstring := Qry.fieldbyname('HRangeC').Asstring + Suffix
                         else
                              fieldbyname('Range').Asstring := Qry.fieldbyname('HRangeG').Asstring + Suffix;
                    end
                    else if Qry.fieldbyname('HRangeG').Asstring = '' then
                    begin
                         if StrToInt(Gs_Age) < 5 then
                              fieldbyname('Range').Asstring := Qry.fieldbyname('LRangeC').Asstring + Suffix
                         else
                              fieldbyname('Range').Asstring := Qry.fieldbyname('LRangeG').Asstring + Suffix;
                    end
                    else if (Qry.fieldbyname('LRangeG').Asstring <> '') and (Qry.fieldbyname('HRangeG').Asstring <> '') then
                    begin
                         if StrToInt(Gs_Age) < 5 then
                              fieldbyname('Range').Asstring := Qry.fieldbyname('LRangeC').Asstring + '-' + Qry.fieldbyname('HRangeC')
                                .Asstring + Suffix
                         else
                              fieldbyname('Range').Asstring := Qry.fieldbyname('LRangeG').Asstring + '-' + Qry.fieldbyname('HRangeG')
                                .Asstring + Suffix;
                    end;

                    if (fieldbyname('LRange').Asstring = '') and (fieldbyname('HRange').Asstring = '') then
                    begin
                         if Gs_Gender = 'MALE' then
                         begin
                              fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeM').Asstring;
                              fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeM').Asstring;
                              fieldbyname('LRangeM').Asstring := Qry.fieldbyname('LRangeM').Asstring;
                              fieldbyname('HRangeM').Asstring := Qry.fieldbyname('HRangeM').Asstring;
                              if StrToInt(Gs_Age) < 5 then
                              begin
                                   if Qry.fieldbyname('HRangeC').Asstring <> '' then
                                        FinalRange := Qry.fieldbyname('LRangeC').Asstring + '-' + Qry.fieldbyname('HRangeC').Asstring
                                   else
                                        FinalRange := Qry.fieldbyname('LRangeC').Asstring;
                                   fieldbyname('Range').Asstring := FinalRange + Suffix;
                              end
                              else if Qry.fieldbyname('HRangeM').Asstring <> '' then
                                   FinalRange := Qry.fieldbyname('LRangeM').Asstring + '-' + Qry.fieldbyname('HRangeM').Asstring
                              else
                                   FinalRange := Qry.fieldbyname('LRangeM').Asstring;
                              fieldbyname('Range').Asstring := FinalRange + Suffix;
                         end
                         else
                         begin
                              fieldbyname('LRange').Asstring := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('HRange').Asstring := Qry.fieldbyname('HRangeF').Asstring;
                              fieldbyname('LRangeF').Asstring := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('HRangeF').Asstring := Qry.fieldbyname('HRangeF').Asstring;
                              if StrToInt(Gs_Age) < 5 then
                              begin
                                   if Qry.fieldbyname('HRangeC').Asstring <> '' then
                                        FinalRange := Qry.fieldbyname('LRangeC').Asstring + '-' + Qry.fieldbyname('HRangeC').Asstring
                                   else
                                        FinalRange := Qry.fieldbyname('LRangeC').Asstring;
                                   fieldbyname('Range').Asstring := FinalRange + Suffix;
                              end
                              else if Qry.fieldbyname('HRangeF').Asstring <> '' then
                                   FinalRange := Qry.fieldbyname('LRangeF').Asstring + '-' + Qry.fieldbyname('HRangeF').Asstring
                              else
                                   FinalRange := Qry.fieldbyname('LRangeF').Asstring;
                              fieldbyname('Range').Asstring := FinalRange + Suffix
                         end;
                    end;
                    // if Trim(Qry.FieldByName('SpecialRange').AsString)<>'' then
                    // Begin
                    // if Trim(FieldByName('Range').AsString)='' then
                    // FieldByName('Range').AsString:=Qry.FieldByName('SpecialRange').AsString;
                    // End;
                    fieldbyname('Unit').Asstring := Qry.fieldbyname('Unit').Asstring;
                    fieldbyname('Extra').Asstring := Qry.fieldbyname('Extra').Asstring;
                    fieldbyname('ExtraFinding').Asstring := Qry.fieldbyname('ExtraFinding').Asstring;
                    Post;
               end;
               Next;
          end;
     end;
     Qry.free;
end;

Function LoadInvestigativeResult(MyTable, FooterTable: TTable; PatientTestID: integer; PrintSelected: Boolean; Date, DEPID, SELECTEDTESTID: String)
  : Boolean; Stdcall;
Var
     Qry, QrySR, QryLastTest: Tquery;
     Range, TestHead, ls_date, HSign, LSign, LRangeS, HRangeS, Suffix: String;
     LRange, HRange, Finding: Double;
     LastPatientTestID, LastTestId, TestID: integer;
     Li_FooterTestNameID: integer;
begin
     // if gi_datesystem = 0 then
     // ls_date := TodaysDateVS
     // else
     // ls_date := TodaysDate;
     Qry := Tquery.Create(Nil);
     QryLastTest := Tquery.Create(Nil);
     QrySR := Tquery.Create(Nil);
     MyTable.close;
     MyTable.EmptyTable;
     MyTable.open;
     Li_FooterTestNameID := 0;
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add(
               'SELECT SC.SAMPLENO,D.DEPID,D.DEPORDER,D.DEPNAME,D.REPORTTITLE TESTHEAD,TN.TESTNAMEID,TN.DISPLAYORDER TESTNAMEDISPLAYORDER,TN.TESTNAME'
            );
          sql.Add(',T.TESTID,T.TEST,T.DISPLAYORDER TESTDISPLAYORDER,T.ISSUBJECTIVE,PTD.*,CAST(PTD.SPECIALRANGE AS VARCHAR2(100))SPECIALRANGEMAIN');
          sql.Add('FROM PATIENTTEST PT,PATIENTTESTDETAIL PTD,TEST T,TESTNAME TN,DEPARTMENT D,SAMPLECOLLECTION SC');
          sql.Add('WHERE PTD.PATIENTTESTID=PT.PATIENTTESTID');
          sql.Add('AND PTD.PATIENTTESTID=SC.PATIENTTESTID');
          sql.Add('AND PTD.TESTID=T.TESTID');
          sql.Add('AND PTD.TESTNAMEID=TN.TESTNAMEID');
          sql.Add('AND PT.DEPID=D.DEPID');
          // SHOW ONLY VERIFIED DATA  BUT NOT IN VERIFICATION MODULE
          // if gs_CalledFrom <> 'VERIFICATION' then
          // sql.Add('AND PT.TESTPROGRESSSTATUS>=' + IntToStr(gi_Verification)); // should be added for verification
          if PrintSelected then
               sql.Add('AND PTD.PATIENTTESTID=' + IntToStr(PatientTestID))
          else if trim(Gs_SelectedPatientTestID) <> '' then
          begin
               sql.Add('AND PT.PatientTestID IN (' + Gs_SelectedPatientTestID + ')'); // SELECTED WITH CHECKBOX
          end
          else
          Begin
               sql.Add('AND PTD.PATIENTID=' + IntToStr(gi_ReportPatientID));
               sql.Add('And Sc.SampleTakenDate=' + #39 + Date + #39);
               // if trim(SELECTEDTESTID) <> '' then
               // // sql.Add('AND TN.TESTNAMEID IN (' + SELECTEDTESTID + ')');
               // sql.Add('AND PT.PatientTestID IN (' + SELECTEDTESTID + ')');
          End;

          if trim(DEPID) <> '' then
               sql.Add('AND D.DEPID IN (' + DEPID + ')');
          sql.Add('And PTD.ISACTIVE=''Y''');
          sql.Add('ORDER BY D.DEPORDER,TESTNAMEDISPLAYORDER,TESTDISPLAYORDER');
          open;
          // Last;
          // Geting Last testid of Query
          // LastTestId := FieldByName('TestID').AsInteger;
          // First;

          Result := false;
          TestHead := '';
          LastPatientTestID := 0;
          while not Eof do
          begin
               Result := true;
               with MyTable do
               begin
                    if TestHead <> Qry.fieldbyname('TestHead').Asstring then
                    begin
                         Append;
                         fieldbyname('TestHead').Asstring := Qry.fieldbyname('TestHead').Asstring;
                         fieldbyname('Test').Asstring := Qry.fieldbyname('TestHead').Asstring;
                         TestHead := Qry.fieldbyname('TestHead').Asstring;
                         Post;
                    end;
                    Append;
                    fieldbyname('TestHead').Asstring := Qry.fieldbyname('TestHead').Asstring;
                    fieldbyname('TestNameId').Asinteger := Qry.fieldbyname('TestNameId').Asinteger;
                    fieldbyname('TestID').Asinteger := Qry.fieldbyname('TestID').Asinteger;
                    fieldbyname('Test').Asstring := Qry.fieldbyname('Test').Asstring;
                    fieldbyname('Finding').Asstring := Qry.fieldbyname('Finding').Asstring;
                    fieldbyname('IsSubjective').Asstring := Qry.fieldbyname('IsSubjective').Asstring;
                    { ************************************************************************************************** }
                    if Li_FooterTestNameID <> Qry.fieldbyname('TestNameID').Asinteger then
                    begin
                         Li_FooterTestNameID := Qry.fieldbyname('TestNameID').Asinteger;
                         gi_PatientTestID := Qry.fieldbyname('PatientTestID').Asinteger;
                         LoadPatientFootnoteinQRRichBox(gi_ReportPatientID, gi_PatientTestID, FooterTable, gs_TestDate, Gs_SelectedTestNameList,
                              false);
                    end;
                    { ************************************************************************************************** }
                    { ********* Adding Sensitive Medicine To list***************************************************** }
                    if SensitivityResultExist(Qry.fieldbyname('PatientTestID').Asinteger) then
                    begin
                         gi_PatientTestID := Qry.fieldbyname('PatientTestID').Asinteger;
                         { *****************Getting Last Testid of Sensitive Test********************* }
                         if (LastPatientTestID <> Qry.fieldbyname('PatientTestID').Asinteger) then
                              with QryLastTest do
                              begin
                                   close;
                                   DatabaseName := Qry.DatabaseName;
                                   sql.text :=
                                     'select ptd.TestID From patienttestdetail PTD,Test T where PTD.TestId=T.TestId' + ' and PTD.patienttestid=' +
                                     IntToStr(gi_PatientTestID) + ' Order by T.DISPLAYORDER Desc';
                                   open;
                                   LastTestId := fieldbyname('TestID').Asinteger;
                              end;
                         { ****************************************************************************** }

                         TestID := Qry.fieldbyname('TestID').Asinteger;
                         LastPatientTestID := Qry.fieldbyname('PatientTestID').Asinteger;
                         Qry.Next;
                         if (gi_PatientTestID <> Qry.fieldbyname('PatientTestID').Asinteger) or (LastTestId = TestID) then
                         Begin
                              with QrySR do
                              begin
                                   close;
                                   DatabaseName := gs_DatabaseName;
                                   sql.Clear;
                                   sql.Add('SELECT SR.*,SM.MEDICINE');
                                   sql.Add('FROM SENSITIVITYRESULT SR,SENSITIVEMEDICINETESTWISE SMTW,SENSITIVEMEDICINE SM');
                                   sql.Add('WHERE SR.SMTWID=SMTW.SMTWID');
                                   sql.Add('AND SM.SENSITIVEMEDICINEID=SMTW.SENSITIVEMEDICINEID');
                                   sql.Add('AND PATIENTTESTID=' + IntToStr(LastPatientTestID));
                                   open;
                                   MyTable.Append;
                                   MyTable.fieldbyname('Test').Asstring := 'Antimicrobial susceptibility test';
                                   MyTable.Post;
                                   while Not Eof do
                                   begin
                                        with MyTable do
                                        begin
                                        Append;
                                        fieldbyname('TestNameId').Asinteger := Qry.fieldbyname('TestNameId').Asinteger;
                                        fieldbyname('TestId').Asinteger := Qry.fieldbyname('TestId').Asinteger;
                                        fieldbyname('Test').Asstring := '     ' + QrySR.fieldbyname('Medicine').Asstring;
                                        fieldbyname('Finding').Asstring := QrySR.fieldbyname('Result').Asstring;
                                        Post;
                                        end;
                                        Next;
                                   end;
                              end;
                              IF LastTestId <> TestID Then
                                   TestID := 0;
                         End;

                         IF LastTestId <> TestID Then
                              Qry.Prior;
                    end
                    { ************************************************************************************************ }
                    else
                    begin
                         fieldbyname('Finding').Asstring := Qry.fieldbyname('Finding').Asstring;
                         if Qry.fieldbyname('SPECIALRANGEMAIN').Asstring <> '' then
                              Range := Qry.fieldbyname('SPECIALRANGEMAIN').Asstring
                         else
                              Range := Qry.fieldbyname('RefRange').Asstring;
                         Suffix := StrPos(PChar(Range), '@');
                         Range := StringReplace(Range, Suffix, '', [rfReplaceAll]);
                         Suffix := StringReplace(Suffix, '@', '', [rfReplaceAll]);
                         Suffix := ' ' + trim(copy(Suffix, 1, 999));
                         // Range := StripAlpha(Qry.FieldByName('RefRange').AsString);
                         // Suffix:= Qry.FieldByName('Suffix').AsString;
                         // Range:=Range+' '+Suffix;

                         // if IsStrANumber(Qry.FieldByName('Finding').AsString) Xor (Qry.FieldByName('Finding').AsString = '')
                         // then
                         // Finding := Qry.FieldByName('Finding').AsFloat;
                         // if (Range <> '-') and (Range <> '') and (Range <> '0-0') then
                         // begin
                         // HRange := StrToFloat(StringReplace(StrPos(PChar(Range), '-'), '-', '', [rfReplaceAll]));
                         // LRange := StrToFloat
                         // (StringReplace(StringReplace(Range, (StringReplace(StrPos(PChar(Range), '-'), '-', '',
                         // [rfReplaceAll])), '', [rfReplaceAll]), '-', '', [rfReplaceAll]));
                         // if Finding < LRange then
                         // FieldByName('Flag').AsString := 'L'
                         // else if Finding > HRange then
                         // FieldByName('Flag').AsString := 'H'
                         // else if (Finding >= LRange) or (Finding <= HRange) then
                         // FieldByName('Flag').AsString := 'N';
                         // end;
                         if IsStrANumber(StringReplace(Qry.fieldbyname('finding').Asstring, ',', '', [rfReplaceAll])) and
                           (Qry.fieldbyname('finding').Asstring <> '') then
                              Finding := StrToFloat(StringReplace(Qry.fieldbyname('finding').Asstring, ',', '', [rfReplaceAll]));

                         if IsStrANumberExtended(StringReplace(trim(Range), '-', '', [rfReplaceAll])) and (trim(Range) <> '') then
                         begin
                              HRangeS := StringReplace(StrPos(PChar(Range), '-'), '-', '', [rfReplaceAll]);
                              LRangeS := StringReplace(StringReplace(Range, (StringReplace(StrPos(PChar(Range), '-'), '-', '', [rfReplaceAll])), '',
                                        [rfReplaceAll]), '-', '', [rfReplaceAll]);
                              if LRangeS = '' then
                                   fieldbyname('Range').Asstring := HRangeS + Suffix
                              else if HRangeS = '' then
                                   fieldbyname('Range').Asstring := LRangeS + Suffix
                              else
                                   fieldbyname('Range').Asstring := StringReplace(Qry.fieldbyname('RefRange').Asstring, '@', '', [rfReplaceAll]);
                              if LRangeS <> '' then
                              begin
                                   if copy(LRangeS, 1, 1) = '>' then
                                   begin
                                        LSign := '>';
                                        LRange := StrToFloat(copy(LRangeS, 2, 999));
                                   end
                                   else if copy(LRangeS, 1, 1) = '<' then
                                   begin
                                        LSign := '<';
                                        LRange := StrToFloat(copy(LRangeS, 2, 999));
                                   end
                                   else
                                   begin
                                        LSign := '';
                                        LRange := StrToFloat(StringReplace(LRangeS, ',', '', [rfReplaceAll]));
                                   end;
                              end;
                              if HRangeS <> '' then
                              begin
                                   if copy(HRangeS, 1, 1) = '>' then
                                   begin
                                        HSign := '>';
                                        HRange := StrToFloat(copy(HRangeS, 2, 999));
                                   end
                                   else if copy(HRangeS, 1, 1) = '<' then
                                   begin
                                        HSign := '<';
                                        HRange := StrToFloat(copy(HRangeS, 2, 999));
                                   end
                                   else
                                   begin
                                        HSign := '';
                                        HRange := StrToFloat(StringReplace(HRangeS, ',', '', [rfReplaceAll]));
                                   end;
                              end;

                              if (trim(Qry.fieldbyname('finding').Asstring) <> '') then
                              Begin
                                   if LSign = '>' then
                                   begin
                                        if Finding < LRange then
                                        begin
                                        fieldbyname('Flag').Asstring := 'L'
                                        end
                                        else
                                        fieldbyname('Flag').Asstring := 'N';
                                   end
                                   else if LSign = '<' then
                                   begin
                                        if Finding > LRange then
                                        begin
                                        fieldbyname('Flag').Asstring := 'H'
                                        end
                                        else
                                        fieldbyname('Flag').Asstring := 'N';
                                   end
                                   else if HSign = '>' then
                                   begin
                                        if Finding < HRange then
                                        begin
                                        fieldbyname('Flag').Asstring := 'L'
                                        end
                                        else
                                        fieldbyname('Flag').Asstring := 'N';
                                   end
                                   else if HSign = '<' then
                                   begin
                                        if Finding > HRange then
                                        begin
                                        fieldbyname('Flag').Asstring := 'H'
                                        end
                                        else
                                        fieldbyname('Flag').Asstring := 'N';
                                   end
                                   else
                                   begin
                                        if Finding < LRange then
                                        fieldbyname('Flag').Asstring := 'L'
                                        else if Finding > HRange then
                                        fieldbyname('Flag').Asstring := 'H'
                                        else if (Finding >= LRange) and (Finding <= HRange) then
                                        fieldbyname('Flag').Asstring := 'N'
                                        else
                                        fieldbyname('Flag').Asstring := '';
                                   end;
                                   // else
                                   // begin
                                   // if Finding > HRange then
                                   // begin
                                   // FieldByName('Flag').AsString := 'H'
                                   // end
                                   // else if Finding < LRange then
                                   // begin
                                   // FieldByName('Flag').AsString := 'L'
                                   // end
                                   // else if (Finding >= LRange) and (Finding <= HRange) then
                                   // FieldByName('Flag').AsString := 'N'
                                   // else
                                   // FieldByName('Flag').AsString := '';
                                   // end;
                              End;
                         end
                         else
                              fieldbyname('Range').Asstring := Range;
                         fieldbyname('Unit').Asstring := Qry.fieldbyname('Unit').Asstring;
                         fieldbyname('Extra').Asstring := Qry.fieldbyname('Extra').Asstring;
                         fieldbyname('ExtraFinding').Asstring := Qry.fieldbyname('ExtraFinding').Asstring;
                         if fieldbyname('Flag').Asstring <> '' then
                              fieldbyname('SampleNo').Asstring := Qry.fieldbyname('SampleNo').Asstring;
                         Post;
                         gi_PatientTestID := Qry.fieldbyname('PatientTestID').Asinteger;
                    end;
               end;
               if gs_CalledFrom <> 'VERIFICATION' then // SHOULD NOT UPDATE FROM VERIFICATION
                    UpdateTestProgressStatus(gi_PatientTestID, gi_Printing);
               Next;
          end;
     end;
     { ****************** if Triglyceride>400  non - HDL Cholesterol should be shown and LDL Cholesterol (cal)******** }
     { ****************** and VLDL Cholesterol (cal) should be removed *********************************************** }
     { ****************** Similarly if Triglyceride<400 then non - HDL Cholesterol should be shown******************** }
     { ****************** and LDL Cholesterol (cal) and VLDL Cholesterol (cal) should be removed ********************* }
     with Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_temppath;
          sql.Add('Select Finding from Findings Where TestNameid=39 and TestId=60');
          open;
          if fieldbyname('finding').Asstring <> '' then
          begin
               if StrToFloat(fieldbyname('finding').Asstring) > 400 then
               begin
                    sql.Clear;
                    sql.Add('Delete from Findings Where Testid in (61,63)');
                    ExecSQL;
               end
               else
               begin
                    sql.Clear;
                    sql.Add('Delete from Findings Where Testid=64');
                    ExecSQL;
               end;
          end;
     end;
     { *************************************************************************************************************** }
     Qry.free;
end;

Function SensitivityResultExist(PatientTestID: integer): Boolean;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT COUNT(PATIENTTESTID)Count FROM SENSITIVITYRESULT');
          sql.Add(' WHERE PATIENTTESTID=' + IntToStr(PatientTestID));
          open;
          if fieldbyname('Count').Asinteger > 0 then
               Result := true
          else
               Result := false;
     end;
     Qry.free;
end;

Function SensitiveTest(TestNameID: integer): Boolean; Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT COUNT(TESTNAMEID)Count FROM SENSITIVEMEDICINETESTWISE');
          sql.Add(' WHERE TESTNAMEID=' + IntToStr(TestNameID));
          open;
          if fieldbyname('Count').Asinteger > 0 then
               Result := true
          else
               Result := false;
     end;
     Qry.free;
end;

Function GetTotalDepositRefNo(ReferenceNo: String): Double; stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SUM(DRAMOUNT-CRAMOUNT)AMOUNT FROM DEPOSIT');
          if copy(ReferenceNo, 1, 2) = 'CS' then
               sql.Add('WHERE REFERENCENO IN (' + #39 + ReferenceNo + #39 + ',GETTPBILLNO(' + #39 + ReferenceNo + #39 + '))')
          else
               sql.Add(' WHERE REFERENCENO=' + #39 + ReferenceNo + #39);
          open;
          Result := Abs(fieldbyname('Amount').AsFloat);
     end;
     Qry.free;
end;

Function GetTotalDepositDepNo(DepNo: String): Double; stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SUM(DRAMOUNT-CRAMOUNT)AMOUNT FROM DEPOSIT');
          sql.Add(' WHERE DEPOSITNO=' + #39 + DepNo + #39);
          open;
          Result := fieldbyname('Amount').AsFloat;
     end;
     Qry.free;
end;

Procedure LoadDepartmentINCheckListBox(CheckListBox: TCheckListBox); stdcall;
Var
     Qry: Tquery;
     I: integer;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Depname,DepId from Department Order by DepName');
          open;
          CheckListBox.Items.Clear;
          I := 0;
          SetLength(Arr_CLB_DepartmentID, RecordCount);
          while not Eof do
          begin
               SetLength(Arr_CLB_DepartmentID[I], 2);
               CheckListBox.Items.Add(fieldbyname('DepName').Asstring);
               Arr_CLB_DepartmentID[I, 0] := fieldbyname('DepId').Asstring;
               Arr_CLB_DepartmentID[I, 1] := fieldbyname('DepName').Asstring;
               Inc(I);
               Next;
          end;
     end;
     Qry.free;
end;

Function GetFindingFromCode(Code: String): String; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Findings from TestFinding Where findingCode= Upper(' + #39 + Code + #39 + ')');
          open;
          Result := fieldbyname('Findings').Asstring;
          if trim(Result) = '' then
               Result := Code;
     End;
     Qry.free;
end;

Procedure LoadFindingFooter(TableName: TTable; PatientTestID: integer; PrintSelected: Boolean; Date, SELECTEDTESTID: String); stdcall;
Var
     Qry: Tquery;
     ls_date: String;
begin
     // if gi_datesystem = 0 then
     // ls_date := TodaysDateVS
     // else
     // ls_date := TodaysDate;
     TableName.close;
     TableName.open;
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT DISTINCT SC.SAMPLENO,SC.SAMPLETAKENDATE,SC.SAMPLETAKENTIME');
          sql.Add(',(SELECT SAMPLESOURCE FROM SAMPLESOURCE WHERE SAMPLESOURCEID IN (SELECT SAMPLESOURCEID FROM TESTNAME WHERE TESTNAMEID IN');
          sql.Add('(SELECT TESTNAMEID FROM PATIENTTEST WHERE PATIENTTESTID=SC.PATIENTTESTID)))SAMPLESOURCE');
          sql.Add(',(SELECT USERNAME FROM USERMAIN WHERE USERID=SC.SAMPLETAKENBY)SAMPLETAKENBY');
          sql.Add(',(SELECT USERNAME FROM USERMAIN WHERE USERID=SC.FINDINGPOSTBY)FINDINGPOSTBY');
          sql.Add(',SC.FINDINGPOSTDATE');
          sql.Add('FROM SAMPLECOLLECTION SC,PATIENTTEST PT');
          sql.Add('WHERE PT.PATIENTTESTID=SC.PATIENTTESTID');
          sql.Add('AND PT.TESTPROGRESSSTATUS>=4');
          if PrintSelected then
               sql.Add('AND sc.PatientTestID=' + IntToStr(PatientTestID))
          else
          Begin
               sql.Add('AND sc.PatientID=' + IntToStr(gi_PatientID));

               if trim(SELECTEDTESTID) <> '' then
               Begin
                    sql.Add('AND SC.PatientTestID IN (' + SELECTEDTESTID + ')');
               End;
          End;
          sql.Add('And Sc.SampleTakenDate=' + #39 + Date + #39);
          open;
          while not Eof do
          begin
               with TableName do
               begin
                    Append;
                    fieldbyname('SampleNo').Asstring := Qry.fieldbyname('SampleNo').Asstring;
                    fieldbyname('SampleSource').Asstring := Qry.fieldbyname('SampleSource').Asstring;
                    fieldbyname('Collected').Asstring := Qry.fieldbyname('SampleTakenDate').Asstring + ' ' + Qry.fieldbyname('SampleTakenTime')
                      .Asstring;
                    fieldbyname('Collectedby').Asstring := Qry.fieldbyname('SampleTakenBy').Asstring;
                    fieldbyname('Received').Asstring := Qry.fieldbyname('FindingPostDate').Asstring;
                    fieldbyname('ReceivedBy').Asstring := Qry.fieldbyname('FindingPostBy').Asstring;
                    Post;
               end;
               Next;
          end;
     end;
     Qry.free;
end;

Function GetRefDoc(Billno: String): String;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          if copy(Billno, 1, 2) = 'TP' then
               sql.Add(
                    'Select DOCNAME||'', ''||QUALIFICATION DOCNAME from Doctor Where DocCode in (Select RefDocCode from ServiceBillmaster Where billno='
                      + #39 + Billno + #39 + ')')
          else if copy(Billno, 1, 2) = 'CS' then
               sql.Add('Select DOCNAME||'', ''||QUALIFICATION DOCNAME from Doctor Where DocCode in(Select RefDocCode from BillMaster Where billno=' +
                      #39 + Billno + #39 + ')');
          open;
          Result := fieldbyname('DocName').Asstring;
     end;
     Qry.free;
end;

function IsStrANumberExtended(S: string): Boolean;
var
     P: PChar;
begin
     Result := false;
     if S = '' then
     begin
          Exit;
     end;

     S := StringReplace(S, ' ', '', [rfReplaceAll]);

     P := PChar(S);
     while P^ <> #0 do
     begin
          if not(P^ in ['0' .. '9', '>', '<', ',', '=', DecimalSeparator]) then
               Exit;
          Inc(P);
     end;
     Result := true;
end;

Function GetMinMaxSampleNobyDate(MinMax, Date: String): String; stdcall;
Var
     ls_date, day: String;
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select sampleno,to_number(Substr(sampleno,9,10))serial from samplecollection');
          sql.Add('WHERE sampletakendate=' + #39 + Date + #39);
          sql.Add('and sampleno is not null');
          if UpperCase(MinMax) = 'MAX' then
               sql.Add('order by serial desc');
          if UpperCase(MinMax) = 'MIN' then
               sql.Add('order by serial');
          open;
          Result := fieldbyname('sampleno').Asstring;
     end;
end;

Procedure LoadPatientTestinListBox(ListBox: TListBox; PatientID: integer; Date: String);
Var
     Qry: Tquery;
     ls_date: String;
     I: integer;
begin
     { if gi_datesystem = 0 then
       ls_date := TodaysDateVS
       else
       ls_date := TodaysDate; }
     ls_date := Date;
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select * from vw_patientservicebill');
          sql.Add('where patientid=' + IntToStr(gi_PatientID));
          sql.Add('And BillDate=' + #39 + ls_date + #39);
          open;
          ListBox.Items.Clear;
          I := 1;
          while not Eof do
          begin
               ListBox.Items.Add(IntToStr(I) + '. ' + fieldbyname('Test').Asstring);
               Next;
               Inc(I);
          end;
     end;
     Qry.free;
end;

Function GetSampleRegesteredDate(SampleNo: String): String; stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Distinct SampleTakenDate from SampleCollection Where SampleNO=' + #39 + SampleNo + #39);
          open;
          Result := fieldbyname('SampleTakenDate').Asstring;
     end;
     Qry.free;
end;

Function CalculateNeutrophils(Lympho, Mono, Eosinophils, Basophils, Band, Myeloblasts, Promyelocytes, Myelocytes, Metamyelocytes, Monoblasts,
     Lymphoblasts, Prolymphocyes: Double): Double; Stdcall;
Var
     Tot: Double;
begin
     Tot := Lympho + Mono + Eosinophils + Basophils + Band + Myeloblasts + Promyelocytes + Myelocytes + Metamyelocytes + Monoblasts + Lymphoblasts +
       Prolymphocyes;
     Result := 100 - Tot;
end;

Function CalculateLDLCholesterol(TotalCholesterol, HDLCholesterol, Triglyceride: Double): Double; Stdcall;
Var
     I, J: Double;
begin
     I := (Triglyceride / 5);
     J := TotalCholesterol - HDLCholesterol;
     Result := J - I;
end;

Function CalculateVLDLCholesterol(Triglyceride: Double): Double; Stdcall;
begin
     Result := Triglyceride / 5;
end;

Function CalculateNonHDLCholesterol(TotalCholesterol, HDLCholesterol: Double): Double; stdcall;
begin
     Result := TotalCholesterol - HDLCholesterol;
end;

Function CalculateUnconjugatedBilirubin(TotalBilirubin, ConjugatedBilirubin: Double): Double; stdcall;
begin
     Result := TotalBilirubin - ConjugatedBilirubin;
end;

Function CalculateCreatinineclearance(UrineCreatinine, UrineVolume, SerumCreatinine: Double): Double; stdcall;
Var
     I, J: Double;
begin
     I := UrineCreatinine * UrineVolume;
     J := SerumCreatinine * 1440;
     Try
          Result := I / J;
     Except
          Result := 0;
     End;
end;

Function CalculateGlobulin(Protein, Albumin: Double): Double; Stdcall;
begin
     Result := Protein - Albumin;
end;

Function CalculateAGRation(Albumin, Globulin: Double): Double; Stdcall;
begin
     if (Albumin = 0) and (Globulin = 0) then
          Result := 0
     else
          Result := Albumin / Globulin;
end;

Procedure IncreaseVisitCount(PatientID: integer); stdcall;
Var
     Qry: Tquery;
     Max: integer;
     ls_date: String;
begin
     if gi_datesystem = 0 then
          ls_date := TodaysDateVS
     else
          ls_date := TodaysDate;
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Nvl(Max(VisitCount),0)+1 Mx from PatientMain Where PatientID= ' + IntToStr(PatientID));
          open;
          Max := fieldbyname('Mx').Asinteger;
          sql.Clear;
          sql.Add('select Count(Patientid)C from servicebillmaster');
          sql.Add('where patientid=' + IntToStr(PatientID));
          sql.Add('and billdate=' + #39 + ls_date + #39);
          open;
          if fieldbyname('C').Asinteger = 1 then
          begin
               sql.Clear;
               sql.Add('Update PatientMain set VisitCount=' + IntToStr(Max) + 'Where PatientID=' + IntToStr(PatientID));
               ExecSQL;
          end;
     end;
     Qry.free;
end;

Procedure SimulateKeyPress(MyHandle: Hwnd; Key: Word); stdcall;
begin
     PostMessage(MyHandle, WM_KEYDOWN, Key, 0);
end;

Function GetCommentFromCode(Code: String): WideString; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select CommentName from CommentTable Where CommentCode= Upper(' + #39 + Code + #39 + ')');
          open;
          Result := fieldbyname('Findings').AsWideString;
     End;
     Qry.free;
end;

Procedure LoadFootnoteinRichBox(TestNameID: integer; RichBox: TRichEdit); stdcall;
Var
     Qry: Tquery;
     mymemo: TMemo;
Begin
     Qry := Tquery.Create(nil);
     mymemo := TMemo.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Footer from Footer Where TestNameID=' + IntToStr(TestNameID) + 'And IsActive=''Y''');
          open;
          mymemo.text := fieldbyname('Footer').Asstring;
          mymemo.Lines.SaveToFile('C:\footer.txt');
          RichBox.Lines.LoadFromFile('c:\footer.txt');
          DeleteFile('c:\footer.txt');
     End;
     Qry.free;
end;

Procedure AddRemoveFootnote(PatientID, PatientTestID, UpdateType: integer); Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Update PatientTest Set AddFootnote=');
          if UpdateType = 0 then
               sql.Add('''N''')
          else
               sql.Add('''Y''');
          sql.Add('Where PatientID=' + IntToStr(PatientID) + 'And PatientTestID=' + IntToStr(PatientTestID));
          ExecSQL;
     End;
     Qry.free;
end;

Function IsValidTime(str: string): Boolean;
var
     dt: TDateTime;
begin
     Result := true;
     try
          dt := StrToTime(str);
     except
          Result := false;
     end;
end;

Function CheckFootnoteStatus(PatientTestID: integer): Boolean; stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select AddFootnote from PatientTest Where PatientTestID=' + IntToStr(PatientTestID));
          open;
          if fieldbyname('AddFootnote').Asstring = 'Y' then
               Result := true
          else
               Result := false;
     End;
     Qry.free;
end;

Procedure LoadPatientFootnoteinQRRichBox(PatientID, PatientTestID: integer; TableName: TTable; TestDate, SELECTEDTESTID: String;
     PrintSelected: Boolean); stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select tn.testname,p.*');
          sql.Add(',(Select Footer from Footer Where TestNameid=P.testnameid and isactive=''Y'')footer');
          sql.Add('from patienttest p,testname Tn');
          sql.Add('where p.testnameid=tn.testnameid');
          sql.Add('And NVL(AddFootNote,''N'')=''Y''');
          // if PrintSelected then
          sql.Add('And PatientTestID=' + IntToStr(PatientTestID));
          // else
          // sql.Add('And PatientID=' + IntToStr(PatientID));
          // if SELECTEDTESTID <> '' then
          // sql.Add('AND PATIENTTESTID IN (' + SELECTEDTESTID + ')');
          // sql.Add('And TestDate=' + #39 + TestDate + #39);
          open;
          TableName.close;
          TableName.open;
          while Not Eof do
          begin
               TableName.Append;
               TableName.fieldbyname('Footnote').Asstring := fieldbyname('Footer').Asstring;
               TableName.Post;
               Next;
          end;
     End;
     Qry.free;
End;

//Procedure SaveQrAsBmp(Qrpt: TQuickRep; Location: String); Stdcall;
//Var
//     StoredUnits: TQRUnit;
//     I: integer;
//     Bmp: Tbitmap;
//     MySearch: TSearchRec;
//     APath: String;
//begin
//     // Quickreport to BMP
//     APath := Location;
//     if not DirectoryExists(APath) then
//          MkDir(APath);
//     FindFirst(APath + '\*.*', faAnyFile, MySearch);
//     DeleteFile(APath + '\' + MySearch.Name);
//     while FindNext(MySearch) = 0 do
//     begin
//          DeleteFile(APath + '\' + MySearch.Name);
//     end;
//     FindClose(MySearch);
//     Qrpt.Prepare;
//     StoredUnits := Qrpt.Units;
//     Qrpt.Units := Pixels;
//     try
//          for I := 1 to Qrpt.QRPrinter.PageCount do
//          begin
//               Bmp := Tbitmap.Create;
//               try
//                    Location := gs_temppath + '\InvRep\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.bmp';
//                    Bmp.Width := Round(Qrpt.Page.Width);
//                    Bmp.Height := Round(Qrpt.Page.length);
//                    Qrpt.QRPrinter.PageNumber := I;
//                    Bmp.Canvas.Draw(0, 0, Qrpt.QRPrinter.GetPage(I));
//                    // Bmp.Canvas.Draw(0, 0, Qrpt.QRPrinter.Page);
//                    Bmp.SaveToFile(Location);
//                    Application.ProcessMessages;
//               finally
//                    Bmp.free;
//               end;
//          end;
//     finally
//          Qrpt.Units := StoredUnits;
//     end;
//end;
//
//Procedure SaveQrAsJPG(Qrpt: TQuickRep; Location: String); Stdcall;
//Var
//     StoredUnits: TQRUnit;
//     I: integer;
//     Bmp: Tbitmap;
//     MySearch: TSearchRec;
//     APath, BmpImage, JpgImage, FileName: String;
//     Qry: Tquery;
//begin
//     // Quickreport to BMP
//     // APath := Location;
//     // if not DirectoryExists(APath) then
//     // MkDir(APath);
//     // FindFirst(APath + '\*.*', faAnyFile, MySearch);
//     // DeleteFile(APath + '\' + MySearch.Name);
//     // while FindNext(MySearch) = 0 do
//     // begin
//     // DeleteFile(APath + '\' + MySearch.Name);
//     // end;
//     // FindClose(MySearch);
//     Qry := Tquery.Create(Nil);
//     Qrpt.Prepare;
//     StoredUnits := Qrpt.Units;
//     Qrpt.Units := Pixels;
//     try
//          for I := 1 to Qrpt.QRPrinter.PageCount do
//          begin
//               Bmp := Tbitmap.Create;
//               try
//                    FileName := gs_OrganizationID + '_' + gs_SubOrganizationID + '_' + IntToStr(gi_PatientID) + '_' + gs_SampleNo + '_' + format
//                      ('%.2d', [I]) + '_' + format('%.3d', [Random(999)]);
//                    Location := gs_temppath + '\InvRep\' + FileName + '.bmp';
//                    Bmp.Width := Round(Qrpt.Page.Width);
//                    Bmp.Height := Round(Qrpt.Page.length);
//                    Qrpt.QRPrinter.PageNumber := I;
//                    Bmp.Canvas.Draw(0, 0, Qrpt.QRPrinter.GetPage(I));
//                    // Bmp.Canvas.Draw(0, 0, Qrpt.QRPrinter.Page);
//                    Bmp.SaveToFile(Location);
//                    Application.ProcessMessages;
//               finally
//                    Bmp.free;
//               end;
//               BmpImage := gs_temppath + '\InvRep\' + FileName + '.bmp';
//               JpgImage := gs_temppath + '\InvRep\' + FileName + '.jpg';
//               BMPtoJPG(BmpImage, JpgImage);
//               DeleteFile(gs_temppath + '\InvRep\' + FileName + '.bmp');
//
//               { ********************************Posting Log***************************** }
//               Qry := Tquery.Create(nil);
//               with Qry do
//               begin
//                    close;
//                    DatabaseName := gs_DatabaseName;
//                    sql.Clear;
//                    sql.Add('Insert into Image_Status (ID,Org_ID,Sub_Org_Id,Image_Name,Status,DateTime) Values (');
//                    sql.Add('(Select NVL(Max(Id),0)+1 From Image_Status)');
//                    sql.Add(',' + gs_OrganizationID + ',' + gs_SubOrganizationID);
//                    sql.Add(',' + #39 + FileName + '.JPG' + #39 + ',' + #39 + '0' + #39 + ',' + #39 + TodaysDate + ' ' + TodaysTime + #39 + ')');
//                    ExecSQL;
//               end;
//          end;
//     finally
//          Qrpt.Units := StoredUnits;
//          Qry.free;
//     end;
//end;

Function BMPtoJPG(BMPpic, JPGpic: string): Boolean;
var
     Bitmap: Tbitmap;
     JpegImg: TJpegImage;
begin
     Result := false;
     Bitmap := Tbitmap.Create;
     try
          Bitmap.LoadFromFile(BMPpic);
          JpegImg := TJpegImage.Create;
          try
               JpegImg.Assign(Bitmap);
               JpegImg.SaveToFile(JPGpic);
               Result := true;
          finally
               JpegImg.free
          end;
     finally
          Bitmap.free
     end;
end;

Function MailInvResult(PatientID: integer; Billno: String): Boolean; Stdcall;
// var
// mailman: TChilkatMailMan2;
// success, pi_portno: integer;
// email: CHILKATMAILLib2_TLB.IChilkatEmail2;
// I: integer;
// Query_mailaddress: Tquery;
// Query_Update: Tquery;
// ls_htmlpath: String;
// SystemTime: TSystemTime;
// NewDate, NewTime, olddate, ps_mailhost, ps_username, ps_password, ps_from, ps_to, ps_body, ps_subject, ps_cc,
// ps_filename1, ps_filename2, ps_filename3, ps_filename4, ps_filename5: string;
begin
     // Result := False;
     // Query_mailaddress := Tquery.Create(nil);
     // Query_Update := Tquery.Create(nil);
     // ls_htmlpath := ExtractFilePath(Application.ExeName);
     //
     // With Query_mailaddress Do
     // Begin
     // close;
     // DatabaseName := gs_DatabaseName;
     // sql.Clear;
     // sql.Add('select * from emailinfo');
     // Open;
     // ps_mailhost := FieldByName('mailhost').AsString;
     // ps_username := FieldByName('mailid').AsString;
     // ps_password := FieldByName('mpassword').AsString;
     // pi_portno := FieldByName('port').AsInteger;
     // ps_from := 'SIDDHI POLY PATH LAB<' + ps_username + '>';
     //
     // // pi_portno:=587;
     // // ps_from:='KU-ADMIN<'+ps_username+'>';
     //
     // end;
     // With Query_mailaddress Do
     // Begin
     // close;
     // DatabaseName := gs_DatabaseName;
     // sql.Clear;
     // sql.Add('SELECT LOWER(EMAIL) AS EMAIL FROM PATIENTMAIN WHERE PATIENTID=' + IntToStr(gi_PatientID));
     // Open;
     // ps_to := FieldByName('email').AsString;
     // // ps_to:='surching4u@gmail.com'; //REMOVE THIS LINE....TEST
     // End;
     // if ps_to = '' then
     // Exit;
     // ps_subject := 'INVESTIGATION RESULT';
     //
     // for I := 0 to gi_ReportCount - 1 do
     // begin
     // if I = 0 then
     // ps_filename1 := gs_temppath + '\InvRep' + '\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.jpg';
     // if I = 1 then
     // ps_filename2 := gs_temppath + '\InvRep' + '\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.jpg';
     // if I = 2 then
     // ps_filename3 := gs_temppath + '\InvRep' + '\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.jpg';
     // if I = 3 then
     // ps_filename4 := gs_temppath + '\InvRep' + '\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.jpg';
     // if I = 4 then
     // ps_filename5 := gs_temppath + '\InvRep' + '\' + IntToStr(gi_PatientID) + '-' + IntToStr(I) + '.jpg';
     // end;
     // ps_body := '';
     //
     // // The mailman object is used for sending and receiving email.
     // mailman := TChilkatMailMan2.Create(nil);
     //
     // // Any other string argument automatically begins the 30-day trial.
     // success := mailman.UnlockComponent('MAILT34MB34N_4BCCDD580UIG');
     // // ShowMessage(mailman.LastErrorText);
     // if (success <> 1) then
     // begin
     // ShowMessage('Component unlock failed');
     //
     // end;
     //
     // // Set the SMTP server.
     // mailman.SmtpHost := ps_mailhost;
     //
     // // Set the SMTP login/password (if required)
     // mailman.SmtpUsername := ps_username;
     // mailman.SmtpPassword := ps_password;
     // mailman.SmtpPort := pi_portno;
     //
     // // Create a new email object
     // email := CoChilkatEmail2.Create();
     //
     // email.Subject := ps_subject;
     // email.Body := ps_body;
     // email.From := ps_from;
     // email.AddTo('', ps_to);
     // email.AddCC('', ps_cc);
     // email.BounceAddress := ps_from;
     // for I := 0 to gi_ReportCount - 1 do
     // begin
     // if I = 0 then
     // email.AddFileAttachment(ps_filename1);
     // if I = 1 then
     // email.AddFileAttachment(ps_filename2);
     // if I = 2 then
     // email.AddFileAttachment(ps_filename3);
     // if I = 3 then
     // email.AddFileAttachment(ps_filename4);
     // if I = 4 then
     // email.AddFileAttachment(ps_filename5);
     // end;
     // // email.AddHtmlAlternativeBody(Memo_HtmlText.Text);
     // // email.LoadBodyFromFile(ps_filename,0,'*.jpg');
     // // email.Set_ReplyTo('no-reply@siddhi.com.np');
     // // email.Set_From('SIDDHI-ADMIN@no-reply.com');
     // // email.Set_Mailer('no-reply');
     // // email.ReplyTo:='no-reply@siddhi.com.np';
     //
     // // Call SendEmail to connect to the SMTP server and send.
     // // The connection (i.e. session) to the SMTP server remains
     // // open so that subsequent SendEmail calls may use the
     // // same connection.
     // success := mailman.SendEmail(email As CHILKATMAILLib2_TLB.IChilkatEmail2);
     // if (success <> 1) then
     // begin
     // // ShowMessage(mailman.LastErrorText);
     // ShowMessage('Sending Failed !' + #13 + 'Retry Again');
     // end
     // else
     // begin
     // with Query_Update do
     // begin
     // close;
     // DatabaseName := gs_DatabaseName;
     // sql.Clear;
     // sql.Add('UPDATE BILLMASTER SET SENTTOEMAIL =''Y''');
     // sql.Add('WHERE BILLNO =' + #39 + Billno + #39);
     // ExecSQL;
     // end;
     // Result := true;
     // end;
     //
     // // Some SMTP servers do not actually send the email until
     // // the connection is closed.  In these cases, it is necessary to
     // // call CloseSmtpConnection for the mail to be  sent.
     // // Most SMTP servers send the email immediately, and it is
     // // not required to close the connection.  We'll close it here
     // // for the example:
     // success := mailman.CloseSmtpConnection();
     // if (success <> 1) then
     // begin
     // ShowMessage('Connection to SMTP server not closed cleanly.');
     // end;
     // Query_mailaddress.Free;
     // Query_Update.Free;
end;

Function ValidDate(Date: String): Boolean; Stdcall;
var
     I, li_Count: integer;
begin
     Result := false;
     li_Count := length(Date);

     for I := 1 to li_Count do
     begin
          if Date[I] = ' ' then
          begin
               Exit;
          end;
     end;
     Result := true;
end;

Function AfterTodaysDate(DateEdit_Date: TDateEditX): Boolean; Stdcall;
var
     DateEdit_TodaysDate: TDateEditX;
begin
     Result := false;
     DateEdit_TodaysDate := TDateEditX.Create(nil);
     DateEdit_Date.systemOfDate := gi_datesystem;
     DateEdit_TodaysDate.systemOfDate := gi_datesystem;
     DateEdit_TodaysDate.text := TodaysDate;
     if DateEdit_Date.VSDateAsDays > DateEdit_TodaysDate.VSDateAsDays then
          Exit;
     Result := true;
     DateEdit_TodaysDate.free;
end;

Function ValidDateRange(FromDate, ToDate: String): Boolean; Stdcall;
var
     I, li_Count: integer;
     Date_From, Date_To: TDateEditX;
begin
     Result := false;
     li_Count := length(FromDate);

     for I := 1 to li_Count do
     begin
          if FromDate[I] = ' ' then
          begin
               Exit;
          end
     end;
     li_Count := length(ToDate);

     for I := 1 to li_Count do
     begin
          if ToDate[I] = ' ' then
          begin
               Exit;
          end
     end;
     Date_From := TDateEditX.Create(nil);
     Date_To := TDateEditX.Create(nil);
     Date_From.text := FromDate;
     Date_To.text := ToDate;
     Date_From.systemOfDate := gi_datesystem;
     Date_To.systemOfDate := gi_datesystem;
     if Date_From.VSDateAsDays > Date_To.VSDateAsDays then
     begin
          Exit;
     end;
     Result := true;
     Date_From.free;
     Date_To.free;
end;

Function GetLocalDiseaseID(LocalDeseaseName: String): integer; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from LocalDiseaseCode');
          sql.Add('Where LDNAME=''' + UpperCase(trim(LocalDeseaseName)) + '''');
          open;
          if fieldbyname('LDCodeId').Asstring <> '' then
          begin
               Result := fieldbyname('LDCodeId').Asinteger;
          end
          else
               Result := 0;
     End;
     Qry.free;
end;

Function EditableMedicalHistory(MedicalHistoryID: integer): Boolean; Stdcall;
Var
     Qry: Tquery;
     ls_DateTime: String;
Begin
     Result := false;
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from MedicalHistory');
          sql.Add('Where MedicalHistoryID=' + IntToStr(MedicalHistoryID));
          open;
          if fieldbyname('MedicalHistoryID').Asinteger < 1 then
               Exit;
          ls_DateTime := Qry.fieldbyname('DATAPOSTDATE').Asstring + ' ' + Qry.fieldbyname('DATAPOSTTIME').Asstring;
          if GetHourDifference(TodaysDate + ' ' + TodaysTime, ls_DateTime) > 24 then
               Exit;
     End;
     Result := true;
     Qry.free;
end;

Function GetHourDifference(FromDateTime, ToDateTime: String): Double; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select (to_date(''' + FromDateTime + ''',''yyyy/mm/dd hh24:mi:ss'')');
          sql.Add('-to_date(''' + ToDateTime + ''',''yyyy/mm/dd hh24:mi:ss''))*24 HrDiff from dual');
          open;
          Result := fieldbyname('HrDiff').AsFloat;
     End;
     Qry.free;
end;

Procedure LoadSensitiveMedicineInCheckListBox(CheckListBox: TCheckListBox); stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select * from sensitiveMedicine');
          sql.Add('Where isactive=''Y'' ');
          sql.Add('Order by SensitiveMedicineID');
          open;
          CheckListBox.Items.Clear;
          while not Eof do
          begin
               CheckListBox.Items.Add(fieldbyname('Medicine').Asstring);
               Next;
          end;
     End;
     Qry.free;
end;

Function GetDay(Date: String): String;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          if gb_isSql then
               sql.Add('SELECT CONVERT(VARCHAR(10),datename( weekday,' + #39 + Date + #39 + '))as mydate')
          else
               sql.Add('select to_char(to_date(' + #39 + Date + #39 + ',''yyyy/mm/dd''),''Day'') MyDate  from dual');
          open;
          // sql.savetofile('c:\tt.txt');
          Result := Qry.fieldbyname('mydate').Asstring;
     End;
     Qry.free;
end;

Procedure CheckSensitiveMedicineTestWiseInCheckListBox(TestNameID: integer; CheckListBox: TCheckListBox); stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select * from sensitivemedicinetestwise');
          sql.Add('where testnameid=' + IntToStr(TestNameID));
          open;
          while not Eof do
          begin
               CheckListBox.State[fieldbyname('SensitiveMedicineId').Asinteger - 1] := cbChecked;
               Next;
          end;
     End;
     Qry.free;
end;

Procedure LoadSensitiveMedicine(TestNameID: integer; Table: TTable); stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select SMTW.*,SM.MEDICINE');
          sql.Add('from SENSITIVEMEDICINETESTWISE SMTW,SENSITIVEMEDICINE SM');
          sql.Add('where SMTW.SENSITIVEMEDICINEID=SM.SENSITIVEMEDICINEID');
          sql.Add('AND SMTW.testnameid=' + IntToStr(TestNameID));
          open;
          Table.close;
          Table.open;
          while not Eof do
          begin
               with Table do
               begin
                    Append;
                    fieldbyname('ResultID').Asinteger := 0;
                    fieldbyname('PatientTestId').Asinteger := gi_PatientTestID;
                    fieldbyname('TestNameID').Asinteger := Qry.fieldbyname('TestNameID').Asinteger;
                    fieldbyname('SMTWID').Asinteger := Qry.fieldbyname('SMTWID').Asinteger;
                    fieldbyname('Medicine').Asstring := Qry.fieldbyname('Medicine').Asstring;
                    Post;
               end;
               Next;
          end;
     End;
     Qry.free;
end;

Function LoadPatientSensitiveMedicine(PatientTestID: integer; Table: TTable): Boolean; stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SR.*,A.MEDICINE,A.TESTNAMEID,A.ISACTIVE,A.SMTWID TESTWISEID');
          sql.Add('FROM SENSITIVITYRESULT SR,');
          sql.Add('(');
          sql.Add('SELECT SM.*,SMTW.*');
          sql.Add('FROM SENSITIVEMEDICINE SM,SENSITIVEMEDICINETESTWISE SMTW');
          sql.Add('WHERE SM.SENSITIVEMEDICINEID=SMTW.SENSITIVEMEDICINEID AND SMTW.TESTNAMEID=' + IntToStr(gi_TestNameId) + ' )A');
          sql.Add('WHERE SR.SMTWID(+)=A.SMTWID');
          sql.Add('AND SR.PATIENTTESTID(+)=' + IntToStr(PatientTestID));
          // SQL.SaveToFile('c:\tt.txt');
          open;
          Result := false;
          Table.close;
          Table.open;
          while not Eof do
          begin
               with Table do
               begin
                    Append;
                    fieldbyname('ResultID').Asinteger := Qry.fieldbyname('SensitivityResultID').Asinteger;
                    fieldbyname('PatientTestId').Asinteger := PatientTestID;
                    fieldbyname('TestNameID').Asinteger := Qry.fieldbyname('TestNameID').Asinteger;
                    fieldbyname('SMTWID').Asinteger := Qry.fieldbyname('TESTWISEID').Asinteger;
                    fieldbyname('Medicine').Asstring := Qry.fieldbyname('Medicine').Asstring;
                    fieldbyname('Result').Asstring := Qry.fieldbyname('Result').Asstring;
                    Post;
                    Result := true
               end;
               Next;
          end;
     End;
     Qry.free;
end;

Function GetTestName(PatientTestID: integer): String; stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT TESTNAME FROM TESTNAME WHERE TESTNAMEID IN');
          sql.Add('(SELECT TESTNAMEID FROM PATIENTTEST WHERE PATIENTTESTID=' + IntToStr(PatientTestID) + ')');
          open;
          Result := fieldbyname('TestName').Asstring;
     End;
     Qry.free;
end;

Function GetBillNoofRefundBill(RefundBillNo: String): String; stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT BILLNO FROM BILLDETAIL WHERE BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM REFUNDDETAIL WHERE BILLNO=' + #39 + RefundBillNo + #39 + ')');
          open;
          Result := fieldbyname('BillNo').Asstring;
     End;
     Qry.free;
end;

Function GetMonitorCount(): integer; Stdcall;
begin
     Result := Screen.MonitorCount;
end;

Function OpenCashDrawer(): Boolean; Stdcall;
Var
     Handle: Hwnd;
     f: TextFile;
begin
     ShellExecute(Handle, 'open', 'mode', 'com1:300,n,8,1', nil, 0);
     ShellExecute(Handle, 'open', 'echo', '"000000000000000000000">com1', nil, 0);
     Result := true;

     { **************************alternate**************************** }
     // AssignFile(f, 'LPT1');
     // Rewrite(f);
     // // Epson
     // Writeln(f, chr(27), chr(112), chr(0), chr(25), chr(250));
     // CloseFile(f);
end;

Function RefundBillExists(Billno: String): Boolean; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT COUNT(BILLDETAILID)COUNT FROM REFUNDDETAIL R WHERE R.BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM BILLDETAIL WHERE BILLNO=' + #39 + Billno + #39 + ')');
          open;
          if fieldbyname('Count').Asinteger > 0 then
               Result := true
          else
               Result := false;
     End;
     Qry.free;
End;

Function GetRefundBillofBill(Billno: String): String; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT BILLNO FROM REFUNDDETAIL R WHERE R.BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM BILLDETAIL WHERE BILLNO=' + #39 + Billno + #39 + ')');
          sql.Add('Order by BillNO Desc');
          open;
          if RecordCount > 0 then
               Result := fieldbyname('BILLNO').Asstring + '-' + IntToStr(RecordCount)
          else
               Result := fieldbyname('BILLNO').Asstring;
     End;
     Qry.free;
end;

Function GetTotalRefundAmt(Billno: String): Double; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SUM(TOTALAMOUNT)TOTALAMOUNT FROM REFUNDDETAIL RD');
          sql.Add('WHERE RD.BILLDETAILID IN (SELECT BILLDETAILID FROM BILLDETAIL WHERE BILLNO=' + #39 + Billno + #39 + ')');
          open;
          Result := fieldbyname('TOTALAMOUNT').AsFloat;
     End;
     Qry.free;
end;

Function GetTestProgressStatus(PatientTestID: integer): integer; Stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select TestProgressStatus from PatientTest where PatientTestID=' + IntToStr(PatientTestID));
          open;
          Result := fieldbyname('TestProgressStatus').Asinteger;
     End;
     Qry.free;
end;

Function FormulaExists(TestID: integer): Boolean; stdcall;
Var
     Qry: Tquery;
Begin
     Qry := Tquery.Create(nil);
     With Qry do
     Begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Count(TestID)C from TestFormula where TestId=' + IntToStr(TestID));
          open;
          if fieldbyname('C').Asinteger > 0 then
               Result := true
          else
               Result := false;
     End;
     Qry.free;
end;

Procedure PrepareCalculatedValue(MyTable: TTable; ForTestID: integer);
Var
     Qry, SubQry: Tquery;
     NumberValue, Calc: Double;
     OperatorSign: String;
     TestID: integer;
begin
     Qry := Tquery.Create(nil);
     SubQry := Tquery.Create(nil);
     With Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_DatabaseName;
          sql.Add('Select * from TestFormula Where ForTestId=' + IntToStr(ForTestID));
          open;
          while Not Eof do
          Begin
               if fieldbyname('NumberValue').Asstring <> '' then
                    NumberValue := fieldbyname('NumberValue').AsFloat
               else if fieldbyname('OperatorSign').Asstring <> '' then
                    OperatorSign := fieldbyname('OperatorSign').Asstring
               else if fieldbyname('TestId').Asstring <> '' then
                    TestID := fieldbyname('TestId').Asinteger;

               With SubQry do
               begin
                    close;
                    sql.Clear;
                    DatabaseName := MyTable.DatabaseName;
                    sql.Add('Update ' + MyTable.TableName + ' Set Finding=' + FloatToStr(Calc));
                    sql.Add('Where TestID=' + IntToStr(ForTestID));
                    ExecSQL;
               end;
               Next;
          End;
     end;
     Qry.free;
     SubQry.free;
end;

Procedure UpdateTestProgressStatus(PatientTestID, TestProgressStatus: integer); Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Update PatientTest Set ');
          sql.Add('TestProgressStatus=' + IntToStr(TestProgressStatus));
          sql.Add(' Where PatientTestId=' + IntToStr(PatientTestID));
          ExecSQL;
     end;
     Qry.free;
end;

Function GetNextQueueNo(): integer; Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT NVL(MAX(QUEUENO),0)+1 MX FROM SERVICEBILLMASTER');
          sql.Add('WHERE BILLDATE=' + #39 + TodaysDate + #39);
          open;
          Result := fieldbyname('Mx').Asinteger;
     end;
     Qry.free;
end;

Function GetFinalBillno(TPBillNo: String): String; Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT BILLNO FROM BILLDETAIL WHERE BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM SERVICEBILLDETAIL WHERE BILLNO=' + #39 + TPBillNo + #39 + ')');
          open;
          Result := fieldbyname('BillNo').Asstring;
     end;
end;

Function GetPatientIdFromBillNo(Billno: String): integer;
Var
     Qry: Tquery;
begin
     Result := 0;
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          if (copy(Billno, 1, 2) = 'CS') OR (copy(Billno, 1, 2) = 'CR') then
               sql.Add('SELECT PATIENTID FROM BILLMASTER WHERE BILLNO=' + #39 + Billno + #39)
          else if copy(Billno, 1, 2) = 'TP' then
               sql.Add('SELECT PATIENTID FROM SERVICEBILLMASTER WHERE BILLNO=' + #39 + Billno + #39)
          else if copy(Billno, 1, 2) = 'RF' then
               sql.Add('SELECT DISTINCT PATIENTID FROM REFUNDDETAIL WHERE BILLNO=' + #39 + Billno + #39)
          else if copy(Billno, 1, 2) = 'DP' then
               sql.Add('SELECT DISTINCT PATIENTID FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Billno + #39);
          if sql.text <> '' then
          begin
               open;
               Result := fieldbyname('PatientId').Asinteger;
          end;
     end;
end;

Function GetPatientIdFromSampleNo(SampleNo: String): integer;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT DISTINCT PATIENTID FROM SAMPLECOLLECTION WHERE SAMPLENO=' + #39 + SampleNo + #39);
          open;
          if fieldbyname('PatientId').Asstring <> '' then
               Result := fieldbyname('PatientId').Asinteger;
     end;
end;

Function GetBillDate(Billno: String): String;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('select billdate||''-''||Billtime billDate from billmaster where billno=' + #39 + Billno + #39);
          open;
          Result := fieldbyname('BillDate').Asstring;
     end;
end;

function MakeRNDString(Chars: string; Count: integer): string;
var
     I, x: integer;
begin
     Result := '';
     for I := 0 to Count - 1 do
     begin
          x := length(Chars) - Random(length(Chars));
          Result := Result + Chars[x];
          Chars := copy(Chars, 1, x - 1) + copy(Chars, x + 1, length(Chars));
     end;
end;

Function GetUPassword(Billno: String): String;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          if copy(Billno, 1, 2) = 'TP' then
               sql.Add('SELECT UPASSWORD FROM SERVICEBILLMASTER WHERE BILLNO=' + #39 + Billno + #39)
          else if copy(Billno, 1, 2) = 'DP' then
          Begin
               sql.Add('SELECT UPASSWORD FROM SERVICEBILLMASTER');
               sql.Add('WHERE BILLNO IN (SELECT REFERENCENO FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Billno + #39 + ')');
          End
          else if (copy(Billno, 1, 2) = 'CS') or (copy(Billno, 1, 2) = 'CR') then
          begin
               sql.Add('SELECT UPASSWORD FROM SERVICEBILLMASTER WHERE BILLNO = GETTPBILLNO(' + #39 + Billno + #39 + ')');
          end
          else if copy(Billno, 1, 2) = 'RF' then
          begin
               sql.Add(' SELECT UPASSWORD FROM SERVICEBILLMASTER');
               sql.Add(' WHERE BILLNO IN (SELECT BILLNO FROM SERVICEBILLDETAIL WHERE BILLDETAILID IN');
               sql.Add(' (SELECT BILLDETAILID FROM REFUNDDETAIL WHERE BILLNO=' + #39 + Billno + #39 + '))');
          end;
          open;
          Result := fieldbyname('UPASSWORD').Asstring;
     end;
end;

Procedure UpdatePatientTestDetailStatus(PtDetailID: integer; Status: String);
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Update PatientTestDetail Set IsActive=' + #39 + Status + #39);
          sql.Add('Where PtDetailID=' + IntToStr(PtDetailID));
          ExecSQL;
     end;
     Qry.free;
end;

Function GetTpBillno(Billno: String): String;
Var
     Qry: Tquery;
begin
     if copy(Billno, 1, 2) = 'TP' then
     begin
          Result := Billno;
          Exit;
     end;
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT DISTINCT BILLNO  FROM SERVICEBILLDETAIL SBD WHERE SERVICEBILLDETAILID IN');
          sql.Add('    (SELECT SERVICEBILLDETAILID FROM BILLDETAIL WHERE BILLDETAILID=SBD.BILLDETAILID');
          sql.Add('    AND BILLNO=' + #39 + Billno + #39 + ')');
          open;
          Result := fieldbyname('BillNo').Asstring;
     end;
     Qry.free;
end;

Function GetTestListCaption(PatientID: integer; Date: String): String;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT T.TESTNAME FROM PATIENTTEST PT,TESTNAME T');
          sql.Add('WHERE PT.TESTNAMEID=T.TESTNAMEID');
          sql.Add('  AND PT.PATIENTTESTID NOT IN');
          sql.Add('(SELECT PATIENTTESTID FROM PATIENTTEST WHERE BILLDETAILID IN');
          sql.Add('(SELECT BILLDETAILID FROM REFUNDDETAIL)UNION SELECT PATIENTTESTID FROM TESTCANCEL )');

          // SQL.Add('AND PT.TESTDATE='+#39+Date+#39);
          sql.Add('AND PT.TESTPROGRESSSTATUS=2');
          sql.Add('AND PT.PATIENTID=' + IntToStr(PatientID));
          open;
          while not Eof do
          begin
               if Result = '' then
                    Result := Result + fieldbyname('TestName').Asstring
               else
                    Result := Result + ',' + fieldbyname('TestName').Asstring;
               Next;
          end;
     end;
     Qry.free;
end;

Function MenuAccess(MenuName: String): Boolean;
Var
     Qry: Tquery;
begin
     if gi_compileValue = 1 then
     begin
          Result := true;
          Exit;
     end;

     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT ACTIVE FROM MENUACCESS WHERE MENUNAME=' + #39 + MenuName + #39);
          open;
          if fieldbyname('Active').Asstring = 'Y' then
               Result := true
          else
               Result := false;
     end;
     Qry.free;
end;

Procedure RefreshQuery(Qry: Tquery; DbName: String);
begin
     Qry.close;
     Qry.DatabaseName := DbName;
     Qry.open;
end;

Procedure CheckPackageDep;
Var
     Qry: Tquery;
     DEPID: integer;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select Count(DepId)C from Department');
          sql.Add('Where Depcode=''PACK''');
          open;
          if fieldbyname('C').Asinteger = 0 then
          begin
               sql.Clear;
               sql.Add('Insert into Department (DepID,DepCode,DepName,Deporder,ReportTitle) Values (');
               sql.Add('999,''PACK'',''PACKAGE'',999,''PACKAGE TEST REPORT'')');
               ExecSQL;
          end;
     end;
     Qry.free;
end;

function GetDrAmount(DepositNo: String): Double;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_DatabaseName;
          sql.Add('Select DrAmount from Deposit');
          sql.Add('Where DepositNo=' + #39 + DepositNo + #39);
          open;
          Result := fieldbyname('DrAmount').AsFloat;
     end;
end;

Function GetCrAmount(DepositNo: string): Double;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_DatabaseName;
          sql.Add('Select CrAmount from Deposit');
          sql.Add('Where DepositNo=' + #39 + DepositNo + #39);
          open;
          Result := fieldbyname('CrAmount').AsFloat;
     end;
end;

Function GetDepositRefType(DepositNo: String): String;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_DatabaseName;
          sql.Add('Select ReferenceType from Deposit');
          sql.Add('Where DepositNo=' + #39 + DepositNo + #39);
          open;
          Result := fieldbyname('Referencetype').Asstring;
     end;
end;

Function GetDepositUser(DepositNo: String): String;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          sql.Clear;
          DatabaseName := gs_DatabaseName;
          sql.Add('Select UserName From UserMain Where UserID In (Select DepositBy from Deposit');
          sql.Add('Where DepositNo=' + #39 + DepositNo + #39 + ')');
          open;
          Result := fieldbyname('UserName').Asstring;
     end;
end;

Function GetTotalMemberDeposit(PatientID: integer; ReferenceType: String): Double; stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SUM(DRAMOUNT-CRAMOUNT)AMOUNT FROM DEPOSIT');
          sql.Add('Where PatientID in(');
          sql.Add('Select PatientID from MemberMain');
          sql.Add('Where memberid in (select dependentof from membermain where patientid=' + IntToStr(PatientID) + '))');
          sql.Add('AND REFERENCETYPE=' + #39 + ReferenceType + #39);
          open;
          Result := fieldbyname('Amount').AsFloat;
     end;
     Qry.free;
end;

Function GetTotalPatientDeposit(PatientID: integer): Double; stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT SUM(DRAMOUNT-CRAMOUNT)AMOUNT FROM DEPOSIT');
          sql.Add('Where patientid=' + IntToStr(PatientID));
          open;
          Result := fieldbyname('Amount').AsFloat;
     end;
     Qry.free;
end;

Function GetBenefitPackageAmout(BenefitPackageID: integer): Double;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('SELECT PACKAGEAMOUNT FROM BENEFITPACKAGE WHERE BENEFITPACKAGEID=' + IntToStr(BenefitPackageID));
          open;
          Result := fieldbyname('PACKAGEAMOUNT').AsFloat;
     end;
     Qry.free;
end;

Procedure ClearMemberVariable;
begin
     gi_PatientID := 0;
     Gs_Title := '';
     Gs_Gender := '';
     Gs_Fname := '';
     Gs_Lname := '';
     Gs_PatientName := '';
     Gs_Age := '';
     Gs_agetype := '';
     Gs_DobVS := '';
     Gs_DobAD := '';
     Gs_MaritalStatus := '';
     Gi_ReligionID := 0;
     Gs_Religion := '';
     Gi_CountryID := 0;
     Gs_CountryName := '';
     Gi_DistrictID := 0;
     Gs_DistrictName := '';
     Gs_Email := '';
     Gi_VdcID := 0;
     Gs_VdcName := '';
     Gs_Address := '';
     Gs_WardNo := '';
     Gs_PhoneNo := '';
     Gs_MobileNo := '';
     Gi_OccupationID := 0;
     Gs_OccupationName := '';
     Gi_EducationID := 0;
     Gs_Education := '';
     Gs_NexttoKin := '';
     Gi_RelationID := 0;
     Gs_Relation := '';
     Gs_Company := '';
     Gs_Remarks := '';
     Gs_Regdate := '';
     Gs_Pinno := '';
     Gs_FamilyDoc := '';
     Gs_BloodGroup := '';
     Gs_EmerContactPerson1 := '';
     Gs_EmerContactPerson2 := '';
     Gs_EmerContactNo1 := '';
     Gs_EmerContactNo2 := '';
     Gs_MedicalCondition := '';
     Gs_MemberNo := '';
     Gb_MemberDataLoaded := false;
end;

Procedure LoadMemberData(MemberID: integer); Stdcall;
Var
     Qry: Tquery;
begin
     Qry := Tquery.Create(nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from Vw_MemberMain where MemberID=' + IntToStr(MemberID));
          open;
          gi_PatientID := fieldbyname('PatientID').Asinteger;
          Gs_Title := fieldbyname('Title').Asstring;
          Gs_Gender := fieldbyname('Gender').Asstring;
          Gs_Fname := fieldbyname('Fname').Asstring;
          Gs_Lname := fieldbyname('LName').Asstring;
          Gs_PatientName := Gs_Fname + ' ' + Gs_Lname;
          Gs_Age := fieldbyname('Age').Asstring;
          Gs_agetype := fieldbyname('AgeType').Asstring;
          Gs_DobVS := fieldbyname('DobVS').Asstring;
          Gs_DobAD := fieldbyname('DobAD').Asstring;
          Gs_MaritalStatus := fieldbyname('MaritalStatus').Asstring;
          Gi_ReligionID := fieldbyname('ReligionID').Asinteger;
          Gs_Religion := fieldbyname('Religion').Asstring;
          Gi_CountryID := fieldbyname('CountryID').Asinteger;
          Gs_CountryName := fieldbyname('CountryName').Asstring;
          Gi_DistrictID := fieldbyname('DistrictID').Asinteger;
          Gs_DistrictName := fieldbyname('DistrictName').Asstring;
          Gs_Email := fieldbyname('Email').Asstring;
          Gi_VdcID := fieldbyname('VDCID').Asinteger;
          Gs_VdcName := fieldbyname('VDCName').Asstring;
          Gs_Address := fieldbyname('Address').Asstring;
          Gs_WardNo := fieldbyname('WardNo').Asstring;
          Gs_PhoneNo := fieldbyname('PhoneNo').Asstring;
          Gs_MobileNo := fieldbyname('MobileNo').Asstring;
          Gi_OccupationID := fieldbyname('OccupationID').Asinteger;
          Gs_OccupationName := fieldbyname('OccupationName').Asstring;
          Gi_EducationID := fieldbyname('EducationID').Asinteger;
          Gs_Education := fieldbyname('Education').Asstring;
          Gs_NexttoKin := fieldbyname('NexttoKin').Asstring;
          Gi_RelationID := fieldbyname('RelationID').Asinteger;
          Gs_Relation := fieldbyname('Relation').Asstring;
          Gs_Company := fieldbyname('Company').Asstring;
          Gs_Remarks := fieldbyname('Remarks').Asstring;
          Gs_Regdate := fieldbyname('Regdate').Asstring;
          if fieldbyname('IsParty').Asstring = 'Y' then
               Gs_IsParty := true
          else
               Gs_IsParty := false;
          Gs_Pinno := fieldbyname('PinNo').Asstring;
          Gs_FamilyDoc := fieldbyname('Family_Doctor').Asstring;
          Gs_BloodGroup := fieldbyname('BloodGroup').Asstring;
          Gs_EmerContactPerson1 := fieldbyname('Emer_ContactPerson1').Asstring;
          Gs_EmerContactPerson2 := fieldbyname('Emer_ContactPerson2').Asstring;
          Gs_EmerContactNo1 := fieldbyname('Emer_ContactNo1').Asstring;
          Gs_EmerContactNo2 := fieldbyname('Emer_ContactNo2').Asstring;
          Gs_MedicalCondition := fieldbyname('MedicalCondition').Asstring;
          Gs_MemberNo := fieldbyname('MemberNo').Asstring;
     end;
     Gb_MemberDataLoaded := true;
end;

Function GetNoOfDecimalPartOfFloatNum(FloatNum: Double; NoOfDecPart: integer): Double;
Var
     ls_FloatNumber: String;
Begin
     ls_FloatNumber := FloatToStr(FloatNum);
     IF Pos('.', ls_FloatNumber) > 0 Then
          Result := StrToFloat(copy(ls_FloatNumber, 1, Pos('.', ls_FloatNumber) - 1) + '.' + copy(ls_FloatNumber, Pos('.', ls_FloatNumber) + 1,
                    NoOfDecPart))
     Else
          Result := FloatNum;
End;

Function RoundingAfterSecondPlace(FloatNumber:Double):Double;
var ls_FirstPartValue,ls_SecondPartValue,ls_ThirdValue:String;
    li_RoundedValue:Integer;
    ls_FloatNumber:String;
begin {*** This function round the 2 digit after decimal place eg. 467.789 -> keeps 7 as it is
         after . then only takes 89 as  8.9 then Use Round fxn and result would be 467.79 }
     ls_FloatNumber:=FloatToStr(FloatNumber);
     IF Pos('.',ls_FloatNumber) > 0 Then
     Begin
          ls_FirstPartValue:=copy(ls_FloatNumber,1,Pos('.',ls_FloatNumber)-1);
          ls_SecondPartValue:=copy(ls_FloatNumber,Pos('.',ls_FloatNumber)+1,1);
          ls_ThirdValue:=copy(ls_FloatNumber,Pos('.',ls_FloatNumber)+2,1)+'.'+copy(ls_FloatNumber,Pos('.',ls_FloatNumber)+3,1);
          //ls_SecondPartValue:=copy(ls_FloatNumber,Pos('.',ls_FloatNumber)+1,1)+'.'+copy(ls_FloatNumber,Pos('.',ls_FloatNumber)+2,1);
          li_RoundedValue:=Round(StrToFloat(ls_ThirdValue));
          IF ls_FirstPartValue='' Then
          ls_FirstPartValue:='0';
          IF li_RoundedValue=10 then
          Begin
               IF StrToFloat(ls_SecondPartValue)+1=10 Then
               Result:=StrToInt(ls_FirstPartValue)+1
               Else
               Result:=StrToFloat(ls_FirstPartValue+'.'+IntToStr(StrToInt(ls_SecondPartValue)+1));
          End
          else
          begin
               if li_RoundedValue=0 then
               Result:=StrToFloat(ls_FirstPartValue+'.'+ls_SecondPartValue)
               else
               Result:=StrToFloat(ls_FirstPartValue+'.'+ls_SecondPartValue+IntToStr(li_RoundedValue));
          end;
     End
     Else
     Result:=FloatNumber;
end;

Procedure ChangeToDefaultDate(DEX_FromDate,DEX_ToDate:TDateEditX);
Begin
     DEX_FromDate.SystemOfDate:=gi_DateSystem;
     DEX_ToDate.SystemOfDate:=gi_DateSystem;
End;

Procedure ChangeCaption(btn:Tbutton; DateSysetm:integer);
begin
   if DateSysetm=1 Then
      btn.Caption:='AD'
   Else if DateSysetm=0 Then
      btn.Caption:='BS'
end;

procedure AvoidMultipleDecimal(Edit_Text:TEdit; var Key:char);
var Position,DecPos:Integer;  {*** while typing float amount to control multiple decimal eg 22.32.1 just do only 22.321...}
    DecimalNum,Weight:String;
begin
  Weight:=Edit_Text.Text+Key;
  if (Key in['.']) or (Key in['0'..'9'])  then
  begin
    Position:=Pos('.',Edit_Text.Text);
    if Position<>0 then
    begin
      DecimalNum:=Copy(Weight,Position+1,Length(Weight));
      DecPos:=Pos('.',DecimalNum);
      if DecPos<>0 then
      begin
        Key:=#0;
      end;
    end;
  end
  else
  Key:=#0;
end;


Procedure ChangeCaptionSPB(btn:TSpeedButton; DateSysetm:integer);
begin
   if DateSysetm=1 Then
      btn.Caption:='AD'
   Else if DateSysetm=0 Then
      btn.Caption:='BS'
end;

exports Startup, ShowDoneMessage, MsgBox, LoadImageFromDB, SaveImageToDB, DeleteAllFiles, LoadPatientData, LoadSampleTobeCollected, LoadFindings,
     GetRefDocCode, LoadPatientFindings, LoadInvestigativeResult, GetTotalDepositRefNo, GetTotalDepositDepNo, LoadDepartmentINCheckListBox,
     GetFindingFromCode, LoadFindingFooter, GetRefDoc, GetMinMaxSampleNobyDate, LoadPatientTestinListBox, GetSampleRegesteredDate,
     CalculateNeutrophils, IncreaseVisitCount, SimulateKeyPress, LoadFootnoteinRichBox, LoadPatientFootnoteinQRRichBox, IsStrANumber;

end.
