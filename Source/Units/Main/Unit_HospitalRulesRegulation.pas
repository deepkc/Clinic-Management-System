unit Unit_HospitalRulesRegulation;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,DM,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn, ServerDate;

type
  TForm_HospitalRulesRegulation = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    QueryVoid: TOraQuery;
    GroupBox2: TGroupBox;
    CB_IsIntegratedPharmacy: TCheckBox;
    GB_DoctorFraction: TGroupBox;
    CB_IsFarctionSharingActive: TCheckBox;
    GroupBox4: TGroupBox;
    CB_AppointmentSystem: TCheckBox;
    GroupBox5: TGroupBox;
    RB_MedicalDischargeFirst: TRadioButton;
    RB_FinancialDischargeFirst: TRadioButton;
    CB_MakeNillAtDischargeBilling: TCheckBox;
    GroupBox6: TGroupBox;
    CB_IsServiceBillingConcepInOPD: TCheckBox;
    GroupBox7: TGroupBox;
    CB_IsDocCompAtAdmn: TCheckBox;
    CB_IsDoctorCompForRegFollowup: TCheckBox;
    CB_IsDoctorCompulsoryForBilling: TCheckBox;
    BtnCancel: TBitBtn;
    BtnSave: TBitBtn;
    CB_IsAdvanceSystemforIPBilling: TCheckBox;
    GroupBox3: TGroupBox;
    RB_DepositOnly: TRadioButton;
    RB_DepositWithInptChrg: TRadioButton;
    RB_OnlyInptChrg: TRadioButton;
    CB_IsOPDBookChrg: TCheckBox;
    CB_IsRegQuotaSystem: TCheckBox;
    CB_IsMultiOrgBilling: TCheckBox;
    CB_DocRateTimeWise: TCheckBox;
    CB_IsDutyDocCompForEmrVisit: TCheckBox;
    CB_OxygenChargeAuto: TCheckBox;
    CB_IsQueueNoGenarateForRegReVisit: TCheckBox;
    GroupBox8: TGroupBox;
    CB_IsIPVisitChargeConcept: TCheckBox;
    CB_IsAutoIPRoundVisitCharge: TCheckBox;
    CB_IsAutoIPVisitCharge2ndDoc: TCheckBox;
    CB_IsAutoNursingCharge: TCheckBox;
    CB_IsUserDefineAdmissionDate: TCheckBox;
    CB_IsInpatientStickerPrint: TCheckBox;
    CB_IsWristBandPrint: TCheckBox;
    CB_IsPHClearanceBeforeDisBilling: TCheckBox;
    Label1: TLabel;
    BitBtn_SetNoofSticker: TBitBtn;
    Edit_NoofStickerBio: TEdit;
    BitBtn1: TBitBtn;
    Edit_NoofStickerPatho: TEdit;
    Label2: TLabel;
    BitBtn_StartHospital: TBitBtn;
    Query_Process: TOraQuery;
    CB_IsContHosNoFromOthPatReg: TCheckBox;
    GroupBox9: TGroupBox;
    CB_IsReferralDoctorInBilling: TCheckBox;
    CB_IsReferralDeptInBilling: TCheckBox;
    Label3: TLabel;
    CB_IsPatientCardGenerate: TCheckBox;
    CB_IsOPDStickerGenerate: TCheckBox;
    GroupBox10: TGroupBox;
    CB_IsRefundInSvrDeptApproval: TCheckBox;
    CB_IsMKTGreferral: TCheckBox;
    grp1: TGroupBox;
    RG_PatientIdType: TRadioGroup;
    CB_IsIntegratedAccount: TCheckBox;
    CB_IsOPDBillGenerate: TCheckBox;
    CB_IsAmtShowInRegSticker: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit_StickerHeight: TEdit;
    BitBtn_SetStickerHeight: TBitBtn;
    Edit_Admn: TEdit;
    CB_IsPoliceCaseInfoNeeded: TCheckBox;
    procedure BtnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure CB_IsIPVisitChargeConceptClick(Sender: TObject);
    procedure BitBtn_SetNoofStickerClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn_StartHospitalClick(Sender: TObject);
    procedure CB_IsReferralDoctorInBillingClick(Sender: TObject);
    procedure CB_IsReferralDeptInBillingClick(Sender: TObject);
    procedure BitBtn_SetStickerHeightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_HospitalRulesRegulation: TForm_HospitalRulesRegulation;

implementation

uses Unit_Message;

{$R *.DFM}

procedure TForm_HospitalRulesRegulation.BtnSaveClick(Sender: TObject);
Var  ls_ISAPPOINTMENTSYSTEM,ls_IsDoctorCompForRegFollowup,ls_IsDutyDocCompForEMRVISIT, ls_ISOPDBOOKCHARGE, ls_IsMultiOrgBilling :string;
     ls_IsRegQuotaSystem,ls_IsQueueNoInReg, ls_ISTIMEWISEDOCTORCHARGE, ls_ISSERVICEBILLINGFOROPD, ls_IsDocCompAtAdmn:String;
     ls_IsDoctorCompForBilling,ls_IsReferalDocFORINV,ls_IsReferalDeptFORINV,ls_ISADVANCESYSTEMFORIPBILL : string;
     ls_ISINTEGRATEDAccount,ls_ISINTEGRATEDPHARMACY,ls_IsPHClearanceB4DisBill, ls_IsNillSystemInDisBill,ls_IsFractionSharingActive :string;
     ls_IsAutoOxygenCharge, ls_DischargeSystem, ls_IsContHosNoFromOthPatReg : string;

     ls_PatientIdType, ls_IsPoiliceCaseInfoNeeded:string;

     li_NewPrimaryId,li_DepInptChrgStatusAtAdmn:Integer;

     ls_IsIPVisitChargeConcept,ls_IsAutoIPRoundVisitCharge,ls_IsAutoIPVisitCharge2ndDoc,ls_IsAutoNursingCharge :String;
     ls_IsUserDefineAdmissionDate,ls_IsInpatientStickerPrint,ls_IsWristBandPrint, ls_IsPatientCardGenerate, ls_IsOPDStickerGenerate,
     ls_IsOPDBillGenerate,ls_IsAmtShowInRegSticker :string;
     ls_IsRefundInSvrDeptApproval, ls_IsMKTGReferralForInv : string;
begin
     With QueryVoid do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select * From HS_HORU_HOSPITALRULES ');
          Open;
     End;

     IF CB_AppointmentSystem.Checked=True Then
     ls_ISAPPOINTMENTSYSTEM:='Y'
     Else
     ls_ISAPPOINTMENTSYSTEM:='N';

     IF CB_IsDoctorCompForRegFollowup.Checked=True Then
     ls_IsDoctorCompForRegFollowup:='Y'
     Else
     ls_IsDoctorCompForRegFollowup:='N';

     IF CB_IsDutyDocCompForEmrVisit.Checked=True Then
     ls_IsDutyDocCompForEMRVISIT:='Y'
     Else
     ls_IsDutyDocCompForEMRVISIT:='N';

     IF CB_IsOPDBookChrg.Checked=True Then
     ls_ISOPDBOOKCHARGE:='Y'
     Else
     ls_ISOPDBOOKCHARGE:='N';

     IF CB_IsRegQuotaSystem.Checked=True Then
     ls_IsRegQuotaSystem:='Y'
     Else
     ls_IsRegQuotaSystem:='N';


     IF CB_IsQueueNoGenarateForRegReVisit.Checked=True Then
     ls_IsQueueNoInReg:='Y'
     Else
     ls_IsQueueNoInReg:='N';

     if RG_PatientIdType.ItemIndex=0 then
     ls_PatientIdType:='NEP'
     else
     ls_PatientIdType:='ENG';


     IF CB_DocRateTimeWise.Checked=True Then
     ls_ISTIMEWISEDOCTORCHARGE:='Y'
     Else
     ls_ISTIMEWISEDOCTORCHARGE:='N';


     IF CB_IsPatientCardGenerate.Checked=True Then
     ls_IsPatientCardGenerate:='Y'
     Else
     ls_IsPatientCardGenerate:='N';


     IF CB_IsOPDStickerGenerate.Checked=True Then
     ls_IsOPDStickerGenerate:='Y'
     Else
     ls_IsOPDStickerGenerate:='N';


     IF CB_IsOPDBillGenerate.Checked=True Then
     ls_IsOPDBillGenerate:='Y'
     Else
     ls_IsOPDBillGenerate:='N';


     IF CB_IsAmtShowInRegSticker.Checked=True Then
     ls_IsAmtShowInRegSticker:='Y'
     Else
     ls_IsAmtShowInRegSticker:='N';

     IF CB_IsPoliceCaseInfoNeeded.Checked=True Then
     ls_IsPoiliceCaseInfoNeeded:='Y'
     Else
     ls_IsPoiliceCaseInfoNeeded:='N';






     { Billing Part }


     if CB_IsContHosNoFromOthPatReg.Checked=True then
     ls_IsContHosNoFromOthPatReg:='Y'
     else
     ls_IsContHosNoFromOthPatReg:='N';

     if CB_IsMultiOrgBilling.Checked=True then
     ls_IsMultiOrgBilling:='Y'
     else
     ls_IsMultiOrgBilling:='N';

     IF CB_IsServiceBillingConcepInOPD.Checked=True Then
     ls_ISSERVICEBILLINGFOROPD:='Y'
     Else
     ls_ISSERVICEBILLINGFOROPD:='N';

     IF CB_IsDoctorCompulsoryForBilling.Checked=True Then
     ls_IsDoctorCompForBilling:='Y'
     Else
     ls_IsDoctorCompForBilling:='N';

     IF CB_IsReferralDoctorInBilling.Checked=True Then
     ls_IsReferalDocFORINV:='Y'
     Else
     ls_IsReferalDocFORINV:='N';

     IF CB_IsReferralDeptInBilling.Checked=True Then
     ls_IsReferalDeptFORINV:='Y'
     Else
     ls_IsReferalDeptFORINV:='N';

     IF CB_IsMKTGreferral.Checked=True Then
     ls_IsMKTGReferralForInv:='Y'
     Else
     ls_IsMKTGReferralForInv:='N';

     IF CB_IsAdvanceSystemforIPBilling.Checked=True Then
     ls_ISADVANCESYSTEMFORIPBILL:='Y'
     Else
     ls_ISADVANCESYSTEMFORIPBILL:='N';


     IF CB_IsRefundInSvrDeptApproval.Checked=True Then
     ls_IsRefundInSvrDeptApproval:='Y'
     else
     ls_IsRefundInSvrDeptApproval:='N';

     { Admission Part }

     IF CB_IsUserDefineAdmissionDate.Checked=True Then
     ls_IsUserDefineAdmissionDate:='Y'
     Else
     ls_IsUserDefineAdmissionDate:='N';

     IF CB_IsDocCompAtAdmn.Checked=True Then
     ls_IsDocCompAtAdmn:='Y'
     Else
     ls_IsDocCompAtAdmn:='N';

     IF CB_IsInpatientStickerPrint.Checked=True Then
     ls_IsInpatientStickerPrint:='Y'
     Else
     ls_IsInpatientStickerPrint:='N';

     IF CB_IsWristBandPrint.Checked=True Then
     ls_IsWristBandPrint:='Y'
     Else
     ls_IsWristBandPrint:='N';


     IF RB_DepositWithInptChrg.Checked=True Then
     li_DepInptChrgStatusAtAdmn:=1
     Else IF RB_DepositOnly.Checked=True Then
     li_DepInptChrgStatusAtAdmn:=2
     Else IF RB_OnlyInptChrg.Checked=True Then
     li_DepInptChrgStatusAtAdmn:=3;

     { end of Admission }


     if CB_OxygenChargeAuto.Checked=True then
     ls_IsAutoOxygenCharge:='Y'
     Else
     ls_IsAutoOxygenCharge:='N';

     if CB_IsIPVisitChargeConcept.Checked=True then
     ls_IsIPVisitChargeConcept:='Y'
     Else
     ls_IsIPVisitChargeConcept:='N';

     if CB_IsAutoIPRoundVisitCharge.Checked=True then
     ls_IsAutoIPRoundVisitCharge:='Y'
     Else
     ls_IsAutoIPRoundVisitCharge:='N';


     if CB_IsAutoIPVisitCharge2ndDoc.Checked=True then
     ls_IsAutoIPVisitCharge2ndDoc:='Y'
     Else
     ls_IsAutoIPVisitCharge2ndDoc:='N';



     if CB_IsAutoNursingCharge.Checked=True then
     ls_IsAutoNursingCharge:='Y'
     Else
     ls_IsAutoNursingCharge:='N';


     IF RB_MedicalDischargeFirst.Checked=True Then
     ls_DischargeSystem:='MDF' //MDF-Medical Discharge First
     Else
     ls_DischargeSystem:='FDF'; // FDF-Financial Discharge First

     IF CB_MakeNillAtDischargeBilling.Checked=True Then
     ls_IsNillSystemInDisBill :='Y'
     Else
     ls_IsNillSystemInDisBill :='N';

     IF CB_IsFarctionSharingActive.Checked=True Then
     ls_IsFractionSharingActive:='Y'
     Else
     ls_IsFractionSharingActive:='N';


     { Pharmacy Part }

     IF CB_IsIntegratedPharmacy.Checked=True Then
     ls_ISINTEGRATEDPHARMACY:='Y'
     Else
     ls_ISINTEGRATEDPHARMACY:='N';

     IF CB_IsPHClearanceBeforeDisBilling.Checked=True Then
     ls_IsPHClearanceB4DisBill:='Y'
     Else
     ls_IsPHClearanceB4DisBill:='N';
     { End Pharmacy Part }

     { Accounting }
     if CB_IsIntegratedAccount.Checked=True then
     ls_ISINTEGRATEDAccount:='Y'
     Else
     ls_ISINTEGRATEDAccount:='N';


     IF QueryVoid.RecordCount = 0 Then
     Begin
         li_NewPrimaryId:=GetMaxId('HS_HORU_HOSPITALRULES','HORU_HOSPITALRULESID');
         With QueryVoid do
         Begin
              Close;
              Session := DM_Hospital.DB;
              sql.Clear;
              sql.add(' Insert Into HS_HORU_HOSPITALRULES(HORU_HOSPITALRULESID,HORU_ISAPPOINTMENTSYSTEM,HORU_IsDocCompForRegFollowup,');
              sql.add(' HORU_IsDutyDocCompForEMRVISIT,HORU_ISOPDBOOKCHARGE, HORU_ISREGQUOTASYSTEM,HORU_ISQUEUENOINREG,HORU_IsPatientCardGenerate,');
              sql.add(' HORU_IsOPDStickerGenerate,HORU_ISTIMEWISEDOCTORCHARGE,HORU_IsContHosNoFromOthPatReg, HORU_IsMultiOrgBilling,HORU_ISSERVICEBILLINGFOROPD,');
              sql.add(' HORU_IsDoctorCompForBilling,HORU_IsReferalDocFORINV,HORU_IsReferalDeptFORINV,HORU_IsMKTGReferalForINV,HORU_ISADVANCESYSTEMFORIPBILL,');
              sql.add(' HORU_IsRefundInSvrDeptApproval,HORU_ISINTEGRATEDPHARMACY,HORU_IsPHClearanceB4DisBill,HORU_IsDocCompAtAdmission,HORU_DepInptChrgStatusAtAdmn,');
              sql.add(' HORU_IsAutoOxygenCharge,HORU_IsAutoIPRoundVisitCharge,HORU_IsAutoNursingCharge,');
              sql.add(' HORU_DISCHARGESYSTEM,HORU_IsNillSystemInDisBill,HORU_ISFractionSharingActive,HORU_DataPostBy,');
              sql.add(' HORU_DataPostDate,HORU_DataPostTime,HORU_MACID,HORU_ORGID,HORU_IsIPVisitChargeConcept,');
              sql.add(' HORU_IsAutoIPVisitCharge2ndDoc,HORU_IsUserDefineAdmissionDate,HORU_IsInpatientStickerPrint,');
              sql.add(' HORU_IsWristBandPrint,HORU_PatientIdType,HORU_IsIntegratedAccount,HORU_IsOPDBillGenerate,');
              sql.add(' HORU_IsAmtShowInRegSticker,HORU_IsPoliceCaseInfoNeeded) Values ('+IntToStr(li_NewPrimaryId));
              sql.add(' ,'+#39+ls_ISAPPOINTMENTSYSTEM+#39+' ,'+#39+ls_IsDoctorCompForRegFollowup+#39);
              sql.add(' ,'+#39+ls_IsDutyDocCompForEMRVISIT+#39+','+#39+ls_ISOPDBOOKCHARGE+#39+','+#39+ls_IsRegQuotaSystem+#39);
              sql.add(' ,'+#39+ls_IsQueueNoInReg+#39+','+#39+ls_IsPatientCardGenerate+#39+','+#39+ls_IsOPDStickerGenerate+#39+','+#39+ls_ISTIMEWISEDOCTORCHARGE+#39);
              sql.add(' ,'+#39+ls_IsContHosNoFromOthPatReg+#39+','+#39+ls_IsMultiOrgBilling+#39+','+#39+ls_ISSERVICEBILLINGFOROPD+#39);
              sql.add(' ,'+#39+ls_IsDoctorCompForBilling+#39+','+#39+ls_IsReferalDocFORINV+#39+','+#39+ls_IsReferalDeptFORINV+#39);
              sql.add(' ,'+#39+ls_IsMKTGReferralForInv+#39+','+#39+ls_ISADVANCESYSTEMFORIPBILL+#39);
              sql.add(' ,'+#39+ls_IsRefundInSvrDeptApproval+#39+','+#39+ls_ISINTEGRATEDPHARMACY+#39+','+#39+ls_IsPHClearanceB4DisBill+#39);
              sql.add(' ,'+#39+ls_IsDocCompAtAdmn+#39+','+IntToStr(li_DepInptChrgStatusAtAdmn));
              sql.add(' ,'+#39+ls_IsAutoOxygenCharge+#39+','+#39+ls_IsAutoIPRoundVisitCharge+#39+','+#39+ls_IsAutoNursingCharge+#39);
              sql.add(' ,'+#39+ls_DischargeSystem+#39+','+#39+ls_IsNillSystemInDisBill+#39+','+#39+ls_ISFractionSharingActive+#39);
              sql.add(' ,'+IntToStr(gi_UserID)+','+#39+TodaysDate+#39+','+#39+TodaysTime+#39+','+#39+gs_MacId+#39+','+IntToStr(gi_compileValue));
              sql.add(' ,'+#39+ls_IsIPVisitChargeConcept+#39+','+#39+ls_IsAutoIPVisitCharge2ndDoc+#39);
              sql.add(' ,'+#39+ls_IsUserDefineAdmissionDate+#39+','+#39+ls_IsInpatientStickerPrint+#39);
              sql.add(' ,'+#39+ls_IsWristBandPrint+#39+','+QuotedStr(ls_PatientIdType)+','+QuotedStr(ls_ISINTEGRATEDAccount));//+','+#39+ls_IsInpatientStickerPrint+#39);    ,
              sql.add(' ,'+#39+ls_IsOPDBillGenerate+#39+','+#39+ls_IsAmtShowInRegSticker+#39+','+#39+ls_IsPoiliceCaseInfoNeeded+#39);
              sql.add(' )');
              ExecSQL;
         End;
     End
     Else
     Begin
          With QueryVoid do
          Begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.add(' Update HS_HORU_HOSPITALRULES Set HORU_ISAPPOINTMENTSYSTEM='+#39+ls_ISAPPOINTMENTSYSTEM+#39);
               sql.add(' ,HORU_IsDocCompForRegFollowup='+#39+ls_IsDoctorCompForRegFollowup+#39);
               sql.add(' ,HORU_IsDutyDocCompForEMRVISIT='+#39+ls_IsDutyDocCompForEMRVISIT+#39+',HORU_ISOPDBOOKCHARGE='+#39+ls_ISOPDBOOKCHARGE+#39);
               sql.add(' ,HORU_ISQUEUENOINREG='+#39+ls_IsQueueNoInReg+#39);
               sql.add(' ,HORU_IsPatientCardGenerate='+#39+ls_IsPatientCardGenerate+#39+',HORU_IsOPDStickerGenerate='+#39+ls_IsOPDStickerGenerate+#39);
               sql.add(' ,HORU_ISREGQUOTASYSTEM='+#39+ls_IsRegQuotaSystem+#39+',HORU_ISTIMEWISEDOCTORCHARGE='+#39+ls_ISTIMEWISEDOCTORCHARGE+#39);
               sql.add(' ,HORU_IsContHosNoFromOthPatReg='+#39+ls_IsContHosNoFromOthPatReg+#39);
               sql.add(' ,HORU_IsMultiOrgBilling='+#39+ls_IsMultiOrgBilling+#39+',HORU_ISSERVICEBILLINGFOROPD='+#39+ls_ISSERVICEBILLINGFOROPD+#39);
               sql.add(' ,HORU_IsDoctorCompForBilling='+#39+ls_IsDoctorCompForBilling+#39+',HORU_IsReferalDocFORINV='+#39+ls_IsReferalDocFORINV+#39);
               sql.add(' ,HORU_IsReferalDeptFORINV='+#39+ls_IsReferalDeptFORINV+#39+',HORU_IsMKTGReferalForINV='+#39+ls_IsReferalDocFORINV+#39);
               sql.add(' ,HORU_ISADVANCESYSTEMFORIPBILL='+#39+ls_ISADVANCESYSTEMFORIPBILL+#39+', HORU_IsRefundInSvrDeptApproval='+#39+ls_IsRefundInSvrDeptApproval+#39);
               sql.add(' ,HORU_ISINTEGRATEDPHARMACY='+#39+ls_ISINTEGRATEDPHARMACY+#39+',HORU_IsDocCompAtAdmission='+#39+ls_IsDocCompAtAdmn+#39);
               sql.add(' ,HORU_IsPHClearanceB4DisBill='+#39+ls_IsPHClearanceB4DisBill+#39);
               sql.add(' ,HORU_DepInptChrgStatusAtAdmn='+IntToStr(li_DepInptChrgStatusAtAdmn));
               sql.add(' ,HORU_IsAutoOxygenCharge='+#39+ls_IsAutoOxygenCharge+#39+',HORU_IsAutoIPRoundVisitCharge='+#39+ls_IsAutoIPRoundVisitCharge+#39);
               sql.add(' ,HORU_IsAutoNursingCharge='+#39+ls_IsAutoNursingCharge+#39);
               sql.add(' ,HORU_DISCHARGESYSTEM='+#39+ls_DischargeSystem+#39+',HORU_IsNillSystemInDisBill='+#39+ls_IsNillSystemInDisBill+#39);
               sql.add(' ,HORU_ISFractionSharingActive='+#39+ls_ISFractionSharingActive+#39);
               sql.add(' ,HORU_DataPostBy='+IntToStr(gi_UserID)+',HORU_DataPostDate='+#39+TodaysDate+#39);
               sql.add(' ,HORU_DataPostTime='+#39+TodaysTime+#39+',HORU_MACID='+#39+gs_MacId+#39);
               sql.add(' ,HORU_IsIPVisitChargeConcept='+#39+ls_IsIPVisitChargeConcept+#39+',HORU_IsAutoIPVisitCharge2ndDoc='+#39+ls_IsAutoIPVisitCharge2ndDoc+#39);
               sql.add(' ,HORU_IsUserDefineAdmissionDate='+#39+ls_IsUserDefineAdmissionDate+#39+',HORU_IsInpatientStickerPrint='+#39+ls_IsInpatientStickerPrint+#39);
               sql.add(' ,HORU_IsWristBandPrint='+#39+ls_IsWristBandPrint+#39);//+','+#39+ls_IsInpatientStickerPrint+#39);    ,
               SQL.Add(' ,HORU_PatientIdType='+QuotedStr(ls_PatientIdType));
               SQL.Add(' ,HORU_IsOPDBillGenerate='+QuotedStr(ls_IsOPDBillGenerate)+' , HORU_IsIntegratedAccount='+QuotedStr(ls_ISINTEGRATEDAccount));
               SQL.Add(' ,HORU_IsAmtShowInRegSticker='+#39+ls_IsAmtShowInRegSticker+#39+',HORU_IsPoliceCaseInfoNeeded='+#39+ls_IsPoiliceCaseInfoNeeded+#39);
               sql.add(' where HORU_HOSPITALRULESID=1');
               ExecSQL;
          End;
     End;
     ShowDoneMessage;
end;

procedure TForm_HospitalRulesRegulation.CB_IsIPVisitChargeConceptClick(Sender: TObject);
begin
     if CB_IsIPVisitChargeConcept.Checked=True then
     Begin
          CB_IsAutoIPRoundVisitCharge.Enabled:=True;
          CB_IsAutoIPVisitCharge2ndDoc.Enabled:=True;
     End
     Else
     Begin
          CB_IsAutoIPRoundVisitCharge.Checked:=False;
          CB_IsAutoIPRoundVisitCharge.Enabled:=False;

          CB_IsAutoIPVisitCharge2ndDoc.Checked:=False;
          CB_IsAutoIPVisitCharge2ndDoc.Enabled:=False;
     End;

end;

procedure TForm_HospitalRulesRegulation.CB_IsReferralDeptInBillingClick(Sender: TObject);
begin
     if CB_IsReferralDeptInBilling.Checked=True then CB_IsReferralDoctorInBilling.Checked:=False;
end;

procedure TForm_HospitalRulesRegulation.CB_IsReferralDoctorInBillingClick(Sender: TObject);
begin
     if CB_IsReferralDoctorInBilling.Checked=True then CB_IsReferralDeptInBilling.Checked:=False;
end;

procedure TForm_HospitalRulesRegulation.FormShow(Sender: TObject);
begin
     if gi_compileValue<>15 then
     begin
          with QueryVoid do
          Begin
               close;
               Session := DM_Hospital.DB;
               sql.clear;
               sql.add(' Select * From HS_STHE_StickerHeight');
               Open;
          End;

          Edit_StickerHeight.Text:=IntToStr(QueryVoid.FieldByName('STHE_OPDStickerHeight').AsInteger);
          Edit_Admn.Text:=IntToStr(QueryVoid.FieldByName('STHE_IPDStickerHeight').AsInteger);
     end;

     with QueryVoid do
     Begin
          close;
          Session := DM_Hospital.DB;
          sql.clear;
          sql.add(' Select * From HS_HORU_HOSPITALRULES');
          Open;
     End;


     Edit_NoofStickerBio.Text:=IntToStr(QueryVoid.FieldByName('HORU_NoofStickerBioChemistry').AsInteger);
     Edit_NoofStickerPatho.Text:=IntToStr(QueryVoid.FieldByName('HORU_NoofStickerPathology').AsInteger);

     IF QueryVoid.FieldByName('HORU_ISAPPOINTMENTSYSTEM').AsString='Y' Then
     CB_AppointmentSystem.Checked:=True
     Else
     CB_AppointmentSystem.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsDocCompForRegFollowup').AsString='Y' Then
     CB_IsDoctorCompForRegFollowup.Checked:=True
     Else
     CB_IsDoctorCompForRegFollowup.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsDutyDocCompForEMRVISIT').AsString='Y' Then
     CB_IsDutyDocCompForEmrVisit.Checked:=True
     Else
     CB_IsDutyDocCompForEmrVisit.Checked:=False;

     if QueryVoid.FieldByName('HORU_PatientIdType').AsString='NEP' then
     RG_PatientIdType.ItemIndex:=0
     else
     RG_PatientIdType.ItemIndex:=1;


     IF QueryVoid.FieldByName('HORU_ISOPDBOOKCHARGE').AsString='Y' Then
     CB_IsOPDBookChrg.Checked:=True
     Else
     CB_IsOPDBookChrg.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsRegQuotaSystem').AsString='Y' Then
     CB_IsRegQuotaSystem.Checked:=True
     Else
     CB_IsRegQuotaSystem.Checked:=False;

     IF QueryVoid.FieldByName('HORU_ISQUEUENOINREG').AsString='Y' Then
     CB_IsQueueNoGenarateForRegReVisit.Checked:=True
     else
     CB_IsQueueNoGenarateForRegReVisit.Checked:=False;


     IF QueryVoid.FieldByName('HORU_ISTIMEWISEDOCTORCHARGE').AsString='Y' Then
     CB_DocRateTimeWise.Checked:=True
     Else
     CB_DocRateTimeWise.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsContHosNoFromOthPatReg').AsString='Y' Then
     CB_IsContHosNoFromOthPatReg.Checked:=True
     Else
     CB_IsContHosNoFromOthPatReg.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsPatientCardGenerate').AsString='Y' Then
     CB_IsPatientCardGenerate.Checked:=True
     Else
     CB_IsPatientCardGenerate.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsOPDStickerGenerate').AsString='Y' Then
     CB_IsOPDStickerGenerate.Checked:=True
     Else
     CB_IsOPDStickerGenerate.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsAmtShowInRegSticker').AsString='Y' Then
     CB_IsAmtShowInRegSticker.Checked:=True
     Else
     CB_IsAmtShowInRegSticker.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsOPDBillGenerate').AsString='Y' Then
     CB_IsOPDBillGenerate.Checked:=True
     Else
     CB_IsOPDBillGenerate.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsPoliceCaseInfoNeeded').AsString='Y' Then
     CB_IsPoliceCaseInfoNeeded.Checked:=True
     Else
     CB_IsPoliceCaseInfoNeeded.Checked:=False;





     IF QueryVoid.FieldByName('HORU_IsMultiOrgBilling').AsString='Y' Then
     CB_IsMultiOrgBilling.Checked:=True
     Else
     CB_IsMultiOrgBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_ISSERVICEBILLINGFOROPD').AsString='Y' Then
     CB_IsServiceBillingConcepInOPD.Checked:=True
     Else
     CB_IsServiceBillingConcepInOPD.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsDoctorCompForBilling').AsString='Y' Then
     CB_IsDoctorCompulsoryForBilling.Checked:=True
     Else
     CB_IsDoctorCompulsoryForBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsReferalDocFORINV').AsString='Y' Then
     CB_IsReferralDoctorInBilling.Checked:=True
     Else
     CB_IsReferralDoctorInBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsReferalDeptFORINV').AsString='Y' Then
     CB_IsReferralDeptInBilling.Checked:=True
     Else
     CB_IsReferralDeptInBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsMKTGReferalForINV').AsString='Y' Then
     CB_IsMKTGreferral.Checked:=True
     Else
     CB_IsMKTGreferral.Checked:=False;

     IF QueryVoid.FieldByName('HORU_ISADVANCESYSTEMFORIPBILL').AsString='Y' Then
     CB_IsAdvanceSystemforIPBilling.Checked:=True
     Else
     CB_IsAdvanceSystemforIPBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsRefundInSvrDeptApproval').AsString='Y' Then
     CB_IsRefundInSvrDeptApproval.Checked:=True
     else
     CB_IsRefundInSvrDeptApproval.Checked:=False;

     IF QueryVoid.FieldByName('HORU_ISINTEGRATEDPHARMACY').AsString='Y' Then
     CB_IsIntegratedPharmacy.Checked:=True
     Else
     CB_IsIntegratedPharmacy.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsPHClearanceB4DisBill').AsString='Y' Then
     CB_IsPHClearanceBeforeDisBilling.Checked:=True
     Else
     CB_IsPHClearanceBeforeDisBilling.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsDocCompAtAdmission').AsString='Y' Then
     CB_IsDocCompAtAdmn.Checked:=True
     Else
     CB_IsDocCompAtAdmn.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsUserDefineAdmissionDate').AsString='Y' Then
     CB_IsUserDefineAdmissionDate.Checked:=True
     else
     CB_IsUserDefineAdmissionDate.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsInpatientStickerPrint').AsString='Y' Then
     CB_IsInpatientStickerPrint.Checked:=True
     else
     CB_IsInpatientStickerPrint.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsWristBandPrint').AsString='Y' Then
     CB_IsWristBandPrint.Checked:=True
     else
     CB_IsWristBandPrint.Checked:=False;

     IF QueryVoid.FieldByName('HORU_DepInptChrgStatusAtAdmn').Asinteger=1 Then
     RB_DepositWithInptChrg.Checked:=True
     Else IF QueryVoid.FieldByName('HORU_DepInptChrgStatusAtAdmn').Asinteger=2 Then
     RB_DepositOnly.Checked:=True
     Else
     RB_OnlyInptChrg.Checked:=True;


     IF QueryVoid.FieldByName('HORU_IsAutoOxygenCharge').AsString='Y' Then
     CB_OxygenChargeAuto.Checked:=True
     Else
     CB_OxygenChargeAuto.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsIPVisitChargeConcept').AsString='Y' Then
     CB_IsIPVisitChargeConcept.Checked:=True
     Else
     CB_IsIPVisitChargeConcept.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsAutoIPRoundVisitCharge').AsString='Y' Then
     CB_IsAutoIPRoundVisitCharge.Checked:=True
     Else
     CB_IsAutoIPRoundVisitCharge.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsAutoIPVisitCharge2ndDoc').AsString='Y' Then
     CB_IsAutoIPVisitCharge2ndDoc.Checked:=True
     Else
     CB_IsAutoIPVisitCharge2ndDoc.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsAutoNursingCharge').AsString='Y' Then
     CB_IsAutoNursingCharge.Checked:=True
     Else
     CB_IsAutoNursingCharge.Checked:=False;


     IF QueryVoid.FieldByName('HORU_DischargeSystem').AsString='MDF' Then //MDF-Medical Discharge First
     RB_MedicalDischargeFirst.Checked:=True
     Else // FDF-Financial Discharge First
     RB_FinancialDischargeFirst.Checked:=True;


     IF QueryVoid.FieldByName('HORU_IsNillSystemInDisBill').AsString='Y' Then
     CB_MakeNillAtDischargeBilling.Checked:=True
     Else
     CB_MakeNillAtDischargeBilling.Checked:=False;


     IF QueryVoid.FieldByName('HORU_IsFractionSharingActive').AsString='Y' Then
     CB_IsFarctionSharingActive.Checked:=True
     Else
     CB_IsFarctionSharingActive.Checked:=False;

     IF QueryVoid.FieldByName('HORU_IsIntegratedAccount').AsString='Y' Then
     CB_IsIntegratedAccount.Checked:=True
     Else
     CB_IsIntegratedAccount.Checked:=False;


end;

procedure TForm_HospitalRulesRegulation.BitBtn1Click(Sender: TObject);
begin
     if Trim(Edit_NoofStickerPatho.Text)='' then
     begin
          MessageDlg('You Must Have To Put at Least 1 Sticker to Print.',mtWarning,[mbOK],0);
          Edit_NoofStickerPatho.SetFocus;
          Exit;
     end;

     With QueryVoid do
     begin
          Close;
          SQL.Clear;
          Session := DM_Hospital.DB;
          SQL.Add(' Update HS_HORU_HospitalRules Set HORU_NoofStickerPathology='+Edit_NoofStickerPatho.Text);
          ExecSQL;
     end;
     ShowDoneMessage;
end;

procedure TForm_HospitalRulesRegulation.BitBtn_SetNoofStickerClick(Sender: TObject);
begin
     if Trim(Edit_NoofStickerBio.Text)='' then
     begin
          MessageDlg('You Must Have To Put at Least 1 Sticker to Print.',mtWarning,[mbOK],0);
          Edit_NoofStickerBio.SetFocus;
          Exit;
     end;

     With QueryVoid do
     begin
          Close;
          SQL.Clear;
          Session := DM_Hospital.DB;
          SQL.Add(' Update HS_HORU_HospitalRules Set HORU_NoofStickerBioChemistry='+Edit_NoofStickerBio.Text);
          ExecSQL;
     end;
     ShowDoneMessage;

end;

procedure TForm_HospitalRulesRegulation.BitBtn_SetStickerHeightClick(
  Sender: TObject);
begin
     with QueryVoid do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add(' Select * From HS_STHE_StickerHeight');
          Open;

          IF (QueryVoid.FieldByName('STHE_OPDStickerHeight').AsInteger > 0) or  (QueryVoid.FieldByName('STHE_IPDStickerHeight').AsInteger > 0) Then
          Begin
               Close;
               SQL.Clear;
               SQL.Add(' Update HS_STHE_StickerHeight Set STHE_OPDStickerHeight='+Edit_StickerHeight.Text+',STHE_IPDStickerHeight='+Edit_Admn.Text);
               ExecSQL;
          End
          Else
          Begin
               Close;
               SQL.Clear;
               SQL.Add(' Insert Into HS_STHE_StickerHeight(STHE_OPDStickerHeight,STHE_IPDStickerHeight) Values('+Edit_StickerHeight.Text+','+Edit_Admn.Text+')');
               ExecSQL;
          end;
     end;
     ShowDoneMessage;


     with QueryVoid do
     Begin
          close;
          Session := DM_Hospital.DB;
          sql.clear;
          sql.add(' Select * From HS_STHE_StickerHeight');
          Open;
     End;

     gi_OPDStickerHeight:=QueryVoid.FieldByName('STHE_OPDStickerHeight').AsInteger;
     gi_IPDStickerHeight:=QueryVoid.FieldByName('STHE_IPDStickerHeight').AsInteger;
end;

procedure TForm_HospitalRulesRegulation.BitBtn_StartHospitalClick(Sender: TObject);
begin
     Exit;
     With QueryVoid do
     begin
          //DepCode = EME01 , DEPID=1 - Set Emergency Department As First Department
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add(' Select * From HS_DEPT_Department where DEPT_DEPID=1 and DEPT_DEPCODE<>''EME01''');
          Open;

          if QueryVoid.FieldByName('DEPT_DEPID').AsInteger > 0 then
          begin
               With Query_Process do
               begin
                    Close;
                    Session := DM_Hospital.DB;
                    SQL.Clear;
                    SQL.Add(' Update HS_DEPT_Department Set DEPT_DEPID=(Select NVL(Max(DEPT_DEPID),0)+1 From HS_DEPT_Department)');
                    SQL.Add(' where DEPT_DEPID=1 and DEPT_DEPCODE<>''EME01''');
                    Open;


                    Close;
                    Session := DM_Hospital.DB;
                    SQL.Clear;
                    SQL.Add(' Insert into HS_Dept_DEPARTMENT (Dept_DEPID,Dept_DEPCODE,Dept_DEPNAME,Dept_REPORTTITLE,');
                    SQL.Add(' DEPT_TESTNAMECODEPREFIX, Dept_DEPORDER,Dept_PARENTDEPID,');
                    SQL.Add(' Dept_SUBPARENTDEPID,Dept_DepType,Dept_ISPARENTDEP,Dept_DATAPOSTBY,Dept_DATAPOSTDATE,');
                    SQL.Add(' Dept_DATAPOSTTime) values (1,''EME01'',''EMERGENCY'','''','''',0,0,0,''C'',''N''');
                    SQL.Add(',' +IntToStr(gi_UserId)+','+#39+TodaysDate+#39+','+#39+TodaysTime+#39+ ')');
                    ExecSQL;
               end;
          end
          else
          begin
               Close;
               SQL.Clear;
               SQL.Add(' Select * From HS_DEPT_Department where DEPT_DEPID=1 and DEPT_DEPCODE=''EME01''');
               Open;

               if QueryVoid.FieldByName('DEPT_DEPID').AsInteger = 0 then
               begin
                    Close;
                    Session := DM_Hospital.DB;
                    SQL.Clear;
                    SQL.Add(' Insert into HS_Dept_DEPARTMENT (Dept_DEPID,Dept_DEPCODE,Dept_DEPNAME,Dept_REPORTTITLE,');
                    SQL.Add(' DEPT_TESTNAMECODEPREFIX, Dept_DEPORDER,Dept_PARENTDEPID,');
                    SQL.Add(' Dept_SUBPARENTDEPID,Dept_DepType,Dept_ISPARENTDEP,Dept_DATAPOSTBY,Dept_DATAPOSTDATE,');
                    SQL.Add(' Dept_DATAPOSTTime) values (1,''EME01'',''EMERGENCY'','''','''',0,0,0,''C'',''N''');
                    SQL.Add(',' +IntToStr(gi_UserId)+','+#39+TodaysDate+#39+','+#39+TodaysTime+#39+ ')');
                    ExecSQL;
               end;
          end;
     end;
end;

procedure TForm_HospitalRulesRegulation.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

end.
