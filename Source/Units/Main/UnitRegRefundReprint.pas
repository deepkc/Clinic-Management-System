unit UnitRegRefundReprint;

interface

uses
  Windows, Messages, SysUtils,Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, OleCtrls,Preview,Unit_MasterFxnFraction,
  DateEditXControl_TLB, ExtCtrls, Buttons, Grids, DBGrids,ServerDate,Unit_Master_Hos, Fxn,
  Unit_QrBill_Manipal, Unit_QrOpSticker;


type
  TFormRegRefundReprint = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtnCancel: TBitBtn;
    PageControlBillRefund: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    EditHospitalNo: TEdit;
    Label3: TLabel;
    EditRemarks: TEdit;
    CmbDdepartment: TDBLookupComboBox;
    Label98: TLabel;
    EditRegDis: TEdit;
    Label99: TLabel;
    Label14: TLabel;
    EditCharge: TEdit;
    PageControlBillReprint: TPageControl;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    EditHosNo: TEdit;
    Label5: TLabel;
    EditBillNo: TEdit;
    DBGridBillList: TDBGrid;
    QueryBillMaster: TOraQuery;
    Query_Community: TOraQuery;
    DataSource_Community: TDataSource;
    Label53: TLabel;
    CombPayType: TComboBox;
    Label6: TLabel;
    LabelName: TLabel;
    Label7: TLabel;
    LabelName2nd: TLabel;
    QueryRegBillList: TOraQuery;
    DataSourceBillList: TDataSource;
    Label8: TLabel;
    DateEditXRefundDate: TDateEditX;
    BitBtnRefundDate: TBitBtn;
    QueryDetail: TOraQuery;
    QueryDetailBILLNO: TStringField;
    QueryDetailSERVICE: TStringField;
    QueryDetailSERVICETYPE: TStringField;
    QueryDetailTOTALAMOUNT: TFloatField;
    QueryDetailDISCOUNT: TFloatField;
    QueryDetailVATAMT: TFloatField;
    QueryDetailBILLDATE: TStringField;
    QueryDetailBILLTIME: TStringField;
    QueryDetailMODIFYBY: TFloatField;
    QueryDetailUserName: TStringField;
    QueryDetailNETAMOUNT: TFloatField;
    QueryDetailCOMMUNITYID: TFloatField;
    QueryDetailCommunity: TStringField;
    QueryDetailPAYTYPE: TStringField;
    BtnSave: TBitBtn;
    CB_NewBill: TCheckBox;
    LabelMedCap: TLabel;
    LabelMedNo: TLabel;
    QueryDetailCANCELREMARKS: TStringField;
    Label9: TLabel;
    DBLC_Schemes: TDBLookupComboBox;
    DS_Schemes: TDataSource;
    Query_Schemes: TOraQuery;
    SPB_ListOfBills: TSpeedButton;
    SPB_NewCharge: TSpeedButton;
    SPB_Refund: TSpeedButton;
    QueryDetailBILLTYPE: TStringField;
    QueryDetailQTY: TFloatField;
    QueryDetailAMOUNT: TFloatField;
    QueryDetailMEMBERNO: TStringField;
    QueryDetailSCHEMEID: TFloatField;
    QueryDetailDIS: TFloatField;
    QueryDetailDEPID: TFloatField;
    QueryDetailRATETYPE: TStringField;
    QueryDetailDOLLARAMOUNT: TFloatField;
    QueryDetailDOLLARDISCOUNT: TFloatField;
    QueryDetailDOLLARVATAMT: TFloatField;
    QueryDetailDOLLAREXRATE: TFloatField;
    QueryDetailSCHEME: TStringField;
    DBLookupComboBoxDoctor: TDBLookupComboBox;
    QueryDocRoutine: TOraQuery;
    DataSourceQueryDocRoutine: TDataSource;
    Label_DollarRs: TLabel;
    LabelExRate: TLabel;
    Edit_ExchangeRate: TEdit;
    Label25: TLabel;
    Query_Process: TOraQuery;
    QueryQueNo: TOraQuery;
    QueryQueNoCOUNT: TFloatField;
    Query_DocShareDivision: TOraQuery;
    Edit_Remarks: TEdit;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    CheckBoxPreview: TCheckBox;
    CB_OPDBookCharge: TCheckBox;
    CB_BlueBookCard: TCheckBox;
    CB_ChargeWithCard: TCheckBox;
    Query_Fraction: TOraQuery;
    BitBtn_BarCode: TBitBtn;
    BB_RePrintBill: TBitBtn;
    Label_BookCharge: TLabel;
    Query_BlueBookCharge: TOraQuery;
    Query_OPDCardCharge: TOraQuery;
    Query_OPDVisitCharge: TOraQuery;
    Query_Department: TOraQuery;
    DS_Department: TDataSource;
    Query_PatientType: TOraQuery;
    DS_PatientType: TDataSource;
    DBLCB_PatientType: TDBLookupComboBox;
    CB_PrintPreview: TCheckBox;
    Label18: TLabel;
    DEX_From: TDateEditX;
    Btn_From: TButton;
    Label17: TLabel;
    DEX_To: TDateEditX;
    Btn_To: TButton;
    BB_Refresh: TBitBtn;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SPB_NewChargeClick(Sender: TObject);
    procedure BitBtnPrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure RefreshBillRefund;
    procedure BtnSaveClick(Sender: TObject);
//    Function MakeBillNo:String;
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure CmbDdepartmentClick(Sender: TObject);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure EditHosNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SPB_ListOfBillsClick(Sender: TObject);
    procedure EditPreBillNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbDdepartmentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbCommunityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRegDisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditChargeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CombPayTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRemarksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditBillNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridBillListCellClick(Column: TColumn);
    procedure DBGridBillListColEnter(Sender: TObject);
    procedure FormRefresh;
    procedure BitBtnRefundDateClick(Sender: TObject);
//    procedure AlternateBillPrint(PatientId:Integer; BillNo :String; CheckBox:TCheckBox);
//    procedure CustomBillPrintManamohan(PatientId:Integer; BillNo :String; CheckBox:TCheckBox);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CB_NewBillClick(Sender: TObject);
    procedure RefreshForm;
    procedure Timer2Timer(Sender: TObject);
    procedure CB_NewBillKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLC_SchemesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLC_SchemesClick(Sender: TObject);
    procedure SPB_RefundClick(Sender: TObject);
    procedure Edit_ExchangeRateExit(Sender: TObject);
    procedure Edit_ExchangeRateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ExchangeRateKeyPress(Sender: TObject; var Key: Char);
    procedure CB_ChargCardClick(Sender: TObject);
    procedure PostOPDCardCharge;
    Procedure FindCotaQueNo;
    procedure EditRegDisKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BB_RePrintBillClick(Sender: TObject);
    procedure BitBtn_BarCodeClick(Sender: TObject);
    procedure CB_BlueBookCardClick(Sender: TObject);
    procedure DBLCB_PatientTypeClick(Sender: TObject);
    procedure DBLCB_PatientTypeKeyPress(Sender: TObject; var Key: Char);
    procedure BB_RefreshClick(Sender: TObject);
    procedure Btn_FromClick(Sender: TObject);
    procedure Btn_ToClick(Sender: TObject);
  private

          pb_MutualDocForShare : Boolean;

      { Private declarations }
      ps_DocCode:String;
      pi_DocID : Integer;
  public
      { Public declarations }
      pi_PatientId,pi_VisitId, pi_CommunityId,pi_SchemeId,pi_DepId,pi_ClinicalDepId, pi_DocCommId,pi_NoOfVisit,QueNo:Integer;
      ps_BillType,ps_MyBillNo,ps_PayType,ps_MemberNo, ps_PatientTypeCode:String;
      ps_Service, ps_ServiceType,ps_RateType,ps_TodaysDate,ps_TodaysTime,ps_PatientType, ps_Initial, ps_RefDocCode,ps_DEPCODE, ps_Remarks:String;

      pf_Amount, pf_VatAmt,pf_RegCharge,pf_DisAmt,pf_TotalAmt,pf_ExchangeRate, pf_DisPer:Double;

      b_Reprint:Boolean;


      pf_GrossTotal,pf_TaxTotal,pf_DiscountTotal,pf_NetTotal,pf_ServiceChargeTotal,pf_DollarExRate : Double;


      Function SetTextWidth(sName: String; iLength: Integer): String;
      procedure PostGenHealthPackageInvItems;
      Procedure Mutually_Share_Fraction(doccode:string);
      procedure PrintOPSticker(CBCheckBox : TCheckBox);
      procedure PrintBill(CB_Preview :TCheckBox);
      procedure MeidcareNo;
      procedure SchemeWiseDiscountCalculation;
      procedure AlternativeOPStricker(CBCheckBox: TCheckBox);
  end;

var
  FormRegRefundReprint: TFormRegRefundReprint;

implementation

uses DM,Unit_Message, Unit_Preview;

{$R *.DFM}

procedure TFormRegRefundReprint.BB_RefreshClick(Sender: TObject);
begin
     if Trim(EditHosNo.Text)='' Then
     Begin
          MessageDlg('Please Put Hospital No.',mtInformation,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;

     EditHosNoExit(Sender);
     BB_RePrintBill.Enabled:=True;
     BitBtn_BarCode.Enabled:=True;
     SPB_Refund.Enabled:=True;
end;

procedure TFormRegRefundReprint.BB_RePrintBillClick(Sender: TObject);
begin
     Gs_BillNo := QueryRegBillList.FieldByName('BillNo').AsString;
     gi_PatientID := QueryRegBillList.FieldByName('PatientId').AsInteger;
     //MyPatient := TPatient.Create;
     //MyPatient.LoadData(gi_PatientID);
     if (Copy(Gs_BillNo,1,2)='CS') or (Copy(Gs_BillNo,1,2)='CR') or (Copy(Gs_BillNo,1,2)='ME') or
     (Copy(Gs_BillNo,1,3)='LCS') or (Copy(Gs_BillNo,1,3)='LCR') or (Copy(Gs_BillNo,1,3)='XCS')or (Copy(Gs_BillNo,1,3)='XCR')or (Copy(Gs_BillNo,1,3)='CCS')or (Copy(Gs_BillNo,1,3)='CCR') then
     begin
          gi_BillCase:=2;
          Gb_IsPreview:=True;
          Gb_IsReprint:=True;
          //Frame_Billing.PrintBill;
     end
     else if (Copy(Gs_BillNo,1,2)='RF') OR (Copy(Gs_BillNo,1,3)='LRF') OR (Copy(Gs_BillNo,1,3)='XRF') OR (Copy(Gs_BillNo,1,3)='CRF') then
     begin
          gi_BillCase:=7;
          Gb_IsPreview:=True;
          Gb_IsReprint:=True;
          //Frame_Billing.PrintBill;
     end;

     if MessageDlg('Are You Sure to Print Bill ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
          gi_noOfPrint:=0;
          PrintBill(CheckBoxPreview);
          Gb_IsReprint:=True;
          PrintBill(CheckBoxPreview);
     end;

     Gs_BillNo := '';
     gi_PatientID :=0;
end;

procedure TFormRegRefundReprint.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TFormRegRefundReprint.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key=27 Then Close;

   IF (Key=VK_F1) and (PageControlBillRefund.Visible=True) Then
   SPB_ListOfBillsClick(Sender)
   Else IF (Key=VK_F1) and (PageControlBillReprint.Visible=True) Then
   SPB_NewChargeClick(Sender);



   IF (Key=VK_F2) and (PageControlBillRefund.Visible=True) Then
   CB_OPDBookCharge.Checked:=Not(CB_OPDBookCharge.Checked);

   IF (Key=VK_F3) and (PageControlBillRefund.Visible=True) Then
   CB_BlueBookCard.Checked:=Not(CB_BlueBookCard.Checked);


   IF (Key=VK_F4) and (PageControlBillRefund.Visible=True) Then
   CB_NewBill.Checked:=Not(CB_NewBill.Checked);


   IF (Key=VK_F2) and (PageControlBillReprint.Visible=True) Then
   SPB_RefundClick(Sender);

   IF (Key=VK_F3) and (PageControlBillReprint.Visible=True) Then
   BB_RePrintBillClick(Sender);

   IF (Key=VK_F4) and (PageControlBillReprint.Visible=True) Then
   BitBtn_BarCodeClick(Sender);

   //CheckBoxPreview.Checked:=Not(CheckBoxPreview.Checked);

   IF (key=VK_F12) and (BtnSave.Enabled=True) Then//and (PageControlBillRefund.Visible=True) Then
   BtnSaveClick(Sender);

   IF (key=13) and (ActiveControl=DateEditXRefundDate) Then
   EditHospitalNo.SetFocus;

   IF (key=VK_Prior) and (ActiveControl=DateEditXRefundDate) Then
   CB_NewBill.SetFocus;

end;

procedure TFormRegRefundReprint.SPB_NewChargeClick(Sender: TObject);
begin
     PageControlBillReprint.Visible:=False;
     PageControlBillRefund.Visible:=True;

     IF Trim(EditHosNo.Text)<>'' Then
     EditHospitalNo.Text:=EditHosNo.Text;


     DBLCB_PatientType.KeyValue:='GEN';

     BtnSave.Caption:='&Save (F12)';
     BtnSave.Enabled:=True;
     EditHospitalNo.SetFocus;
end;

procedure TFormRegRefundReprint.BitBtnPrintClick(Sender: TObject);
begin
//
end;

procedure TFormRegRefundReprint.FormShow(Sender: TObject);
begin
     ChangeToDefaultDate(DEX_From,DEX_To);
     ChangeToDefaultCaption(Btn_From,Btn_To);
     DEX_From.text:=ServerDate.TodaysDate;
     DEX_To.text:=DEX_From.text;

     Query_PatientType.Close;
     Query_PatientType.Open;

     Query_Department.Close;
     Query_Department.Open;

     Query_Community.Close;
     Query_Community.Open;

     Query_Schemes.Close;
     Query_Schemes.Open;

     With Query_Process do
     begin
          Close;
          SQL.Clear;
          SQL.Add(' Select  * From HS_USPR_USERPRIVILEGE where USPR_UserId='+IntToStr(gi_UserId)+' and USPR_AcessType=''FUNCTION''');
          SQL.Add(' and USPR_AcessControlId In (Select SYFU_FunctionId From HS_SYFU_SYSTEMFUNCTION where SYFU_FunctionName=''REG REFUND'')');
          Open;
     end;

     if Query_Process.FieldByName('USPR_USERPRIVILEGEID').AsInteger > 0 then
     Begin
          SPB_Refund.Enabled:=True;
          Edit_Remarks.ReadOnly:=False;
          Label10.Enabled:=True;
          Edit_Remarks.Color:=clWhite;
     End
     Else
     Begin
          SPB_Refund.Enabled:=False;
          Edit_Remarks.ReadOnly:=True;
          Label10.Enabled:=False;
          Edit_Remarks.Color:=clMenu;
     End;
     RefreshBillRefund;

     (*if gi_UserID=1 then
     begin
          SpeedButton4.Enabled:=True;
          SpeedButton4.Visible:=True;
     end;*)

     CmbDdepartment.Enabled:=False;
     CmbDdepartment.Color:=clMenu;
     CmbDdepartment.KeyValue:=null;

     DBLC_Schemes.Enabled:=False;
     DBLC_Schemes.Color:=ClMenu;

     EditRegDis.Enabled:=False;
     EditRegDis.Color:=clMenu;
     EditRegDis.Text:='0';

     EditCharge.Text:='0';

     CombPayType.Color:=clMenu;
     CombPayType.Enabled:=False;

     DateEditXRefundDate.SystemOfDate:=gi_DateSystem;
     DateEditXRefundDate.text:=ServerDate.TodaysDate;


     (*if gs_IsDocCompForRegFollowup='Y' then
     DBGridBillList.Columns[7].Visible:=True
     else
     DBGridBillList.Columns[7].Visible:=False;*)


     if gi_PatientId > 0 then
     Begin
          EditHosNo.Text:=IntToStr(gi_PatientId);
          EditHosNoExit(Sender);
     End;

     PageControlBillRefund.Visible:=False;
     Label4.Caption:=Gs_HosNoCaptionName;
     EditHosNo.SetFocus;
end;

Procedure TFormRegRefundReprint.RefreshBillRefund;
Begin
   DateEditXRefundDate.Text:=ServerDate.TodaysDate;
   //EditHospitalNo.SetFocus;
   EditHospitalNo.Text:='';
   CB_NewBill.Checked:=False;
   CmbDdepartment.KeyValue:=NULL;
   EditRegDis.Text:='0';
   EditCharge.Text:='';
   EditRemarks.Text:='';
   LabelName.Caption:='?????';
   CombPayType.ItemIndex:=0;
   //PageControlBillRefund.BringToFront;
   //PageControlBillRefund.Visible:=True;
   PageControlBillReprint.BringToFront;
   PageControlBillReprint.Visible:=True;
End;

procedure TFormRegRefundReprint.BtnSaveClick(Sender: TObject);
var  Initial,ls_refbillno:string;
     li_RefDocID : Integer;
begin
     if PageControlBillReprint.Visible=True then
     Begin
          IF not QueryRegBillList.Active Then QueryRegBillList.Active:=True;
          IF QueryRegBillList.RecordCount <= 0 Then
          Begin
               MessageDlg('No Record To Refund !',mtWarning,[mbok],0);
               EditHosNo.SetFocus;
               Exit;
          End;

          if Copy(QueryRegBillList.FieldByName('BillNo').AsString,1,2)='RF' then
          begin
               MessageDlg('Sorry ! This is Refund Bill !',mtWarning,[mbok],0);
               EditHosNo.SetFocus;
               Exit;
          end;


          if Copy(QueryRegBillList.FieldByName('RefBillNo').AsString,1,2)='RF' then
          begin
               MessageDlg('Sorry ! This is bill is aleady refunded.',mtWarning,[mbok],0);
               EditHosNo.SetFocus;
               Exit;
          end;

          if Trim(Edit_Remarks.Text)='' then
          begin
               MessageDlg('Refund Reason is Compulsory',mtWarning,[mbok],0);
               Edit_Remarks.SetFocus;
               Exit;
          end;

          BtnSave.Enabled:=True;
          EditHospitalNo.Text:=QueryRegBillList.FieldByName('PatientId').AsString;

          if EditHospitalNo.text='' then
          begin
               ShowMessage('Hospital No Can Not Be Blank');
               Exit;
          end;
          gi_patientid:=strtoint(EditHospitalNo.text);
          with Query_Process do
          begin
               Close;
               Session := DM_Hospital.DB;
               SQL.Clear;
               SQL.Add(' select * from hs_bide_Billdetail where (bide_billtype=''R'' or BIDE_SERVICE=''OPDBC01'' or BIDE_SERVICE=''BLUBC01'')');
               SQL.Add(' and  bide_Billno='+#39+QueryRegBillList.FieldByName('BillNo').AsString+#39);
               Open;
          end;


          if MessageDlg('Are You Sure to Save Refund ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          Begin

          try
               DM_Hospital.DB.StartTransaction;
               Gs_BillNo := GetNextBillNo('RF', 'Hs_Rede_RefundDetail','REDE_REFUNDBILLNO');
               ls_refbillno:=Gs_BillNo;
               while not Query_Process.Eof do
               begin
                    SaveRegRefundDetail(Query_Process.FieldByName('bide_BillDetailId').AsInteger,Edit_Remarks.Text);
                    if gs_ISFractionSharingActive='Y' then
                    Begin
                         with Query_Fraction do
                         begin
                              Close;
                              Session := DM_Hospital.DB;
                              SQL.Clear;
                              SQL.Add('Select * From HS_FRDE_FractionDetail where FRDE_Billdetailid='+inttostr(Query_Process.FieldByName('Bide_BillDetailID').AsInteger));
                              Open;
                         end;

                         Query_Fraction.First;
                         while not Query_Fraction.Eof  do
                         begin
                              (*
                              SaveRefundFractiondetail(FRACTIONDETAILID,PATIENTID,INPATIENTID,REFUNDDETAILID,SERVICEBILLDETAILID,
                                   DEPID,DOCID,TESTNAMEID,FRACTIONID,POSITIONWISEFRACTIONID,DATAPOSTBY : Integer;
                                   UNITTESTCOST,QTY,FRACTIONAMOUNT,FRACTIONRATE,DISPER:Double;
                                   TESTNAMECODE,REFUNDBILLNO,REFUNDDATE,BILLTYPE,PAYTYPE,ISFRACTIONPROPWITHDISPER,DESCRIPTION,ISADDLUMPSUM,
                                   ISCHARGEDIVIDE,REMARKS,DATAPOSTDATE,DATAPOSTTIME :String);
                              *)
                              SaveRefundFractiondetail(Query_Fraction.FieldByName('FRDE_FractionDetailId').AsInteger,Gi_PATIENTID,
                                        Gi_INPATIENTID,gi_RefundDetailID,0,
                                        Query_Fraction.FieldByName('FRDE_DepId').AsInteger,Query_Fraction.FieldByName('FRDE_DOCId').AsInteger,
                                        Query_Fraction.FieldByName('FRDE_TestNameId').AsInteger,Query_Fraction.FieldByName('FRDE_FractionId').AsInteger,
                                        Query_Fraction.FieldByName('FRDE_PositionWiseFractionId').AsInteger,Gi_UserId,Query_Fraction.FieldByName('FRDE_UnitTestCost').AsFloat,
                                        Query_Fraction.FieldByName('FRDE_Qty').AsFloat,Query_Fraction.FieldByName('FRDE_FractionAmount').AsFloat,Query_Fraction.FieldByName('FRDE_FractionRate').AsFloat,
                                        Query_Fraction.FieldByName('FRDE_DisPer').AsFloat,
                                        Query_Fraction.FieldByName('FRDE_TestNameCode').AsString,Gs_BillNo,TodaysDate,Query_Fraction.FieldByName('FRDE_BillType').AsString,
                                        Query_Fraction.FieldByName('FRDE_PayType').AsString,Query_Fraction.FieldByName('FRDE_Isfractionpropwithdisper').AsString,'',Query_Fraction.FieldByName('FRDE_Isaddlumpsum').AsString,
                                        Query_Fraction.FieldByName('FRDE_Ischargedivide').AsString,StringReplace(Edit_Remarks.Text,'''','''''',[rfReplaceAll]),todaysdate,TodaysTime);
                              Query_Fraction.next;
                         end;
                    end;
                    Query_Process.Next;
               end;

               With Query_Process do
               begin
                    Close;
                    Session := DM_Hospital.DB;
                    SQL.Clear;
                    SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_IsVisitCancel=''Y'' ,PAVI_VisitCancelDate='+#39+TodaysDate+#39);
                    SQL.Add(' where PAVI_PatientID='+IntToStr(Gi_PATIENTID)+' and PAVI_VisitDate='+#39+QueryRegBillList.FieldByName('BillDate').AsString+#39);
                    SQL.Add(' and PAVI_VisitTime='+#39+QueryRegBillList.FieldByName('BillTime').AsString+#39);
                    ExecSQL;
               end;

                    {
                    if CheckBoxRefundNewBill.Checked=true then
                    begin
                         (*SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, 100, 11.5, 0, Copy(Qry.FieldByName('BillNo').AsString,0,2), TodaysDate,
                         TodaysTime,Qry.FieldByName('REFDOCCODE').AsString,'R',Qry.FieldByName('PAYTYPE').AsString, 'GENERAL','GENERAL','MAN', gs_MacID, 'N',
                         'N', 'N');

                         SaveBillDetail(gi_PatientID, gi_ServiceBillDetailid, gi_InPatientID, gi_PatientTestID, gi_UserID, Qry.FieldByName('CommunityId').AsInteger,Qry.FieldByName('SchemeId').AsInteger,
                                             Qry.FieldByName('DepID').AsInteger, 0, 0, 88.5, 1, 11.5,100, 0,0, Gs_BillNo, TodaysDate, TodaysTime, 'Doc1',
                                             'DOCTOR CHARGE', 'R', Qry.FieldByName('Paytype').AsString, 'GENERAL','GENERAL', Gs_MemberNo, Qry.FieldByName('Doccode').AsString,Qry.FieldByName('RefDoccode').AsString,
                                              '', '', '', '', '');*)
                         UpdateBillDetail(gi_BillDetailId,Qry.FieldByName('BillNo').AsString);
                    end;                                                              }
               DM_Hospital.DB.Commit;
               ShowDoneMessage;
          except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to save.',mtWarning,[mbOK],0);
          end;


          if MessageDlg('Are you sure to print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          Begin
               gi_BillCase := 6;
               Gs_BillNo := ls_RefBillNo;
               PrintBill(CheckBoxPreview);

               (*gi_BillCase := 2;
               Gb_RefundBillExists := true; // Print Invoice Bill with Refund Information
               Gs_BillNo := QueryRegBillList.FieldByName('BillNo').AsString;
               PrintBill;*)
          End;
          EditHosNoExit(sender);

          if PageControlBillReprint.Visible=True then
          EditHosNo.SetFocus;
          BtnSave.Enabled:=False;
          End;
     End
     else
     begin
          if (CB_OPDBookCharge.Checked=False) and (CB_BlueBookCard.Checked=False) and (CB_NewBill.Checked=False) then
          begin
               MessageDlg('You Must Have Check Any OPD Book, Blue Book or New Bill.',mtWarning,[mbOK],0);
               Exit;
          end;

          if Trim(EditHospitalNo.Text)='' then
          begin
               MessageDlg('You Must Have to Put Hospital No. First.',mtWarning,[mbOK],0);
               EditHospitalNo.SetFocus;
               Exit;
          end;

          IF IsRegisteredHospitalNo(StrToInt(EditHospitalNo.Text))=False Then
          Begin
               MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHospitalNo.Text+').',
               mtWarning,[mbok],0);
               EditHospitalNo.SetFocus;
               Exit;
          End;

          pi_PatientId:=StrToInt(EditHospitalNo.Text);
          MeidcareNo;
          pi_VisitId:=0;
          ps_RefDocCode:='';
          ps_Remarks:=StringReplace(EditRemarks.Text,'''','''''',[rfReplaceAll]);
          pf_DollarExRate:=0;
          pf_ServiceChargeTotal:=0;
          ps_DOCCODE:='HOS01';
          pi_DOCID :=0;

          IF (CB_OPDBookCharge.Checked=True) or (CB_BlueBookCard.Checked=True) Then
          Begin
               ps_BillType:='B';
               ps_Initial:='CS';
               ps_PayType:='CASH';

               pi_CommunityId:=0;
               pi_SchemeId:=0;
               ps_PatientTypeCode:='GEN';

               if CB_OPDBookCharge.Checked=True then
               begin
                    pi_DepId:=Query_OPDCardCharge.FieldByName('DepId').AsInteger;
                    pi_ClinicalDepId:=17; //17 - Medicine

                    pf_Amount:=Query_OPDCardCharge.FieldByName('TestPrice').AsFloat;
                    pf_VatAmt:=Query_OPDCardCharge.FieldByName('VatAmt').AsFloat;
                    pf_DisPer:=0;
                    pf_DisAmt:=0;
                    pf_TotalAmt:=pf_Amount+pf_VatAmt-pf_DisAmt;
                    ps_Service:='OPDBC01';
                    ps_ServiceType:='OPD BOOK CHARGE';
               end
               else
               begin
                    pi_DepId:=Query_BlueBookCharge.FieldByName('DepId').AsInteger;
                    pi_ClinicalDepId:=17; //17 - Medicine

                    pf_Amount:=Query_BlueBookCharge.FieldByName('TestPrice').AsFloat;
                    pf_VatAmt:=Query_BlueBookCharge.FieldByName('VatAmt').AsFloat;
                    pf_DisPer:=0;
                    pf_DisAmt:=0;
                    pf_TotalAmt:=pf_Amount+pf_VatAmt-pf_DisAmt;
                    ps_Service:='BLUBC01';
                    ps_ServiceType:='BLUE BOOK CHARGE';
               end;
          End
          else
          Begin

               if Trim(DBLCB_PatientType.Text)='' then
               Begin
                    MessageDlg('Patient Type is Complusory.',mtWarning,[mbok],0);
                    DBLCB_PatientType.SetFocus;
                    Exit;
               End;


               if Trim(CmbDdepartment.Text)='' then
               Begin
                    MessageDlg('Department is Complusory.',mtWarning,[mbok],0);
                    CmbDdepartment.SetFocus;
                    Exit;
               End;


               ps_BillType:='R';
               if CombPayType.ItemIndex=0 then
               Begin
                    ps_Initial:='CS';
                    ps_PayType:='CASH';
               End
               else
               begin
                    ps_PayType:='CREDIT';
                    if DBLC_Schemes.KeyValue=22 then // Medicare Pateint
                    ps_Initial:='ME'
                    else
                    ps_Initial:='CR';
               end;

               if Trim(DBLC_Schemes.Text)<>'' then
               Begin
                    pi_SchemeID:=DBLC_Schemes.KeyValue;
                    pi_communityid:=Query_Schemes.FieldByName('SCHE_CommunityId').AsInteger;
               End
               else
               Begin
                    pi_SchemeID:=0;
                    pi_communityid:=0;
               End;


               ps_DEPCODE:=Query_Department.FieldByName('DepCode').AsString;
               pi_DepId:=Query_Department.FieldByName('DepId').AsInteger;
               pi_ClinicalDepId:=Query_Department.FieldByName('DepId').AsInteger;

               ps_PatientTypeCode:=DBLCB_PatientType.KeyValue;

               with Query_OPDVisitCharge do
               begin
                    Close;
                    SQL.Clear;
                    SQL.Add(' Select * From VW_HS_SETUP_DEPTWISECHARGE Where PATIENTTYPECODE='+#39+ps_PatientTypeCode+#39);
                    SQL.Add(' and DEPCODE='+#39+ps_DEPCODE+#39);
                    Open;
               end;

               pf_Amount:=Query_OPDVisitCharge.FieldByName('NewVisitCharge').AsFloat;
               pf_VatAmt:=Query_OPDVisitCharge.FieldByName('NewVisitTax').AsFloat;

               if Trim(EditRegDis.Text)='' then EditRegDis.Text:='0';
               pf_DisPer:=StrToFloat(EditRegDis.Text);
               pf_DisAmt:=0;
               if pf_DisPer > 0 then
               Begin
                    pf_DisAmt:=pf_Amount * pf_DisPer/100;
                    if Gs_TaxRule='TAD' then
                    pf_VatAmt:=((pf_Amount - pf_Amount * pf_DisPer/100)* gf_TaxPercent/100);
               End;

               pf_TotalAmt:=pf_Amount+pf_VatAmt-pf_DisAmt;
               ps_Service:=ps_DEPCODE;
               ps_ServiceType:='Re-Visit';

          End;

          if MessageDlg('Do You Want to Save ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          Begin
               ps_TodaysDate:=TodaysDate;
               ps_TodaysTime:=TodaysTime;




          Try
               DM_Hospital.DB.StartTransaction;


               Try
                    SaveBillMaster(pi_PatientId, 0, gi_UserID, li_RefDocID, pi_VisitId, pf_GrossTotal, pf_TaxTotal,
                         pf_DiscountTotal,pf_NetTotal, pf_ServiceChargeTotal,  pf_DollarExRate,
                         0, 0,0,0,0,ps_Initial, ps_TodaysDate, ps_TodaysTime, 'R', ps_PayType, ps_PatientTypeCode,
                         ps_PatientTypeCode,ps_Remarks,'', '', '',GetPatientCagetory(pi_PatientId));
               Except
                    SaveBillMaster(gi_PatientId, 0, gi_UserID, li_RefDocID, gi_VisitId, pf_GrossTotal, pf_TaxTotal,
                         pf_DiscountTotal,pf_NetTotal, pf_ServiceChargeTotal,  pf_DollarExRate,
                         0, 0,0,0,0,ps_Initial, ps_TodaysDate, ps_TodaysTime, 'R', ps_PayType, ps_PatientTypeCode,
                         ps_PatientTypeCode,ps_Remarks,'', '', '',GetPatientCagetory(pi_PatientId));
               End;

               (*
                    SaveBillDetail(SERVICEBILLDETAILID, PATIENTID, INPATIENTID, PATIENTTESTID, BILLBY, DISCOMMUNITYID, DISSCHEMEID, CRCOMMUNITYID, CRSCHEMEID,
                         DEPID,CLINICALDEPID, REFDEPID,DOCID, REFDOCID, EMRDUTYDOCID, ACCHEADID: Integer;
                         AMOUNT, QTY, VATAMT, TOTALAMOUNT, DISPER, DISCOUNT, SERVICECHARGE, DOLLAREXRATE,DOLLARAMOUNT,DOLLARVATAMT,DOLLARTOTALAMOUNT,DOLLARDISCOUNT,DOLLARSERVICECHARGE: Double;
                         BILLNO, BILLDATE, BILLTIME,SERVICE, SERVICETYPE, BILLTYPE, PAYTYPE, RATETYPE, PATIENTTYPE, MEMBERNO,
                         ISVATABLETEST, ISDISCOUNTABLETEST, ISFRACTIONABLETEST, ISPACKAGETEST,TESTNAMETYPE,OrgBillCategory,HOSPARTPER: String); stdcall;
               *)

               Try
                    SaveBillDetail(0,pi_PatientId, 0, 0, gi_UserID, pi_communityid, pi_SchemeID, pi_communityid, pi_SchemeID,
                         pi_DepId, pi_DepId,pi_DepId, li_RefDocID, pi_DocID,0, 0, 0,0, pf_Amount, 1, pf_VatAmt, pf_TotalAmt, pf_DisPer, pf_DisAmt,
                         0,0,0,0,0,0,0, Gs_BillNo, ps_TodaysDate, ps_TodaysTime, ps_Service, ps_ServiceType, ps_BillType, ps_PayType,
                         ps_PatientTypeCode,ps_PatientTypeCode, Gs_MemberNo,'Y','Y','N','N','N','HOS','100','N',GetPatientCagetory(pi_PatientId));
               Except
                    SaveBillDetail(0,pi_PatientId, 0, 0, gi_UserID, pi_communityid, pi_SchemeID, pi_communityid, pi_SchemeID,
                         pi_DepId, pi_DepId,pi_DepId, li_RefDocID, pi_DocID,0, 0, 0,0, pf_Amount, 1, pf_VatAmt, pf_TotalAmt, pf_DisPer, pf_DisAmt,
                         0,0,0,0,0,0,0, Gs_BillNo, ps_TodaysDate, ps_TodaysTime, ps_Service, ps_ServiceType, ps_BillType, ps_PayType,
                         ps_PatientTypeCode,ps_PatientTypeCode, Gs_MemberNo,'Y','Y','N','N','N','HOS','100','N',GetPatientCagetory(pi_PatientId));
               End;

               DM_Hospital.DB.Commit;
               ShowDoneMessage;
          except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to save.',mtWarning,[mbOK],0);
          end;
               Begin
                    if MessageDlg('Do You Want to Print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                    begin
                         gi_PatientID:=pi_PatientId;
                         gi_BillCase:=2;
                         PrintBill(CB_PrintPreview);
                         Gs_BillNo:='';
                    end;
               End;
          End;
     end;
end;

procedure TFormRegRefundReprint.Btn_FromClick(Sender: TObject);
begin
     ChangeDateSystem(Dex_From,Btn_From);
     ChangeDateSystem(Dex_To,Btn_To);
end;

procedure TFormRegRefundReprint.Btn_ToClick(Sender: TObject);
begin
     ChangeDateSystem(Dex_From,Btn_From);
     ChangeDateSystem(Dex_To,Btn_To);
end;

procedure TFormRegRefundReprint.MeidcareNo;
Begin
     With Query_Process do
     Begin
          Close;
          Session := DM_Hospital.DB;
          sql.Clear;
          SQL.Add(' Select MemberId,PatientId,MemberNo From Member where PatientId='+IntToStr(pi_PatientID));
          SQL.Add(' and IsActiveMember=''Y''');
          Open;
          if Query_Process.FieldByName('MemberId').AsInteger > 0 then
          Begin
               ps_memberNo:=Query_Process.FieldByName('MemberNo').AsString;

               LabelMedNo.Visible:=True;
               LabelMedNo.Caption:=ps_memberNo;
               LabelMedCap.Visible:=True;

               pi_CommunityId:=18;
               pi_SchemeId:=22;
               DBLC_Schemes.KeyValue:=22;

               CombPayType.ItemIndex:=1;

          End
          else
          begin
               ps_memberNo:='';
               LabelMedNo.Visible:=False;
               LabelMedNo.Caption:='NA';
               LabelMedCap.Visible:=False;

               pi_CommunityId:=0;
               pi_SchemeId:=0;
               DBLC_Schemes.KeyValue:=-1;
               CombPayType.ItemIndex:=0;
          end;
     End;
End;

(*procedure TFormRegRefundReprint.BtnSaveClick(Sender: TObject);
var
Qry:TOraQuery;
Initial,ls_refbillno:string;
begin
     IF not QueryRegBillList.Active Then QueryRegBillList.Active:=True;
     IF QueryRegBillList.RecordCount <= 0 Then
     Begin
          MessageDlg('No Record To Refund !',mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;
   //  PageControlBillReprint.Visible:=False;
    // PageControlBillRefund.Visible:=True;
     BtnSave.Enabled:=True;
     CheckBoxRefundBillOnly.Checked:=True;
     EditHospitalNo.Text:=QueryRegBillList.FieldByName('PatientId').AsString;
     EditPreBillNo.Text:=QueryRegBillList.FieldByName('BillNo').AsString;
   //  EditRemarks.SetFocus;
     if EditHospitalNo.text='' then
     begin
          ShowMessage('Hospital No Can Not Be Blank');
          Exit;
     end;
     gi_patientid:=strtoint(EditHospitalNo.text);
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
         Close;
         DatabaseName:=gs_DatabaseName;
         SQL.Clear;
         SQL.Add('select * from hs_bide_Billdetail where bide_billtype=''R'' and  bide_Billno='+#39+QueryRegBillList.FieldByName('BillNo').AsString+#39);
         Open;
     end;
     try
     DM_Hospital.DB.StartTransaction;
     while not Qry.Eof do
     begin
         Gs_BillNo := GetNextBillNo('RF', 'Hs_Rede_RefundDetail','REDE_REFUNDBILLNO');
         ls_refbillno:=Gs_BillNo;
         SaveRefundDetail(Qry.FieldByName('bide_BillDetailId').AsInteger);
         Qry.Next;
     end;
     {
     if CheckBoxRefundNewBill.Checked=true then
     begin
          (*SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, 100, 11.5, 0, Copy(Qry.FieldByName('BillNo').AsString,0,2), TodaysDate,
          TodaysTime,Qry.FieldByName('REFDOCCODE').AsString,'R',Qry.FieldByName('PAYTYPE').AsString, 'GENERAL','GENERAL','MAN', gs_MacID, 'N',
          'N', 'N');

          SaveBillDetail(gi_PatientID, gi_ServiceBillDetailid, gi_InPatientID, gi_PatientTestID, gi_UserID, Qry.FieldByName('CommunityId').AsInteger,Qry.FieldByName('SchemeId').AsInteger,
                    Qry.FieldByName('DepID').AsInteger, 0, 0, 88.5, 1, 11.5,100, 0,0, Gs_BillNo, TodaysDate, TodaysTime, 'Doc1',
                    'DOCTOR CHARGE', 'R', Qry.FieldByName('Paytype').AsString, 'GENERAL','GENERAL', Gs_MemberNo, Qry.FieldByName('Doccode').AsString,Qry.FieldByName('RefDoccode').AsString,
                     '', '', '', '', '');*)
(*          UpdateBillDetail(gi_BillDetailId,Qry.FieldByName('BillNo').AsString);
     end;                                }
     DM_Hospital.DB.Commit;
     ShowDoneMessage;
     begin
          //Gs_BillNo := ls_RefBillNo;
          PrintBill;
          gi_BillCase := 2;
          Gb_RefundBillExists := true; // Print Invoice Bill with Refund Information
          Gs_BillNo := QueryRegBillList.FieldByName('BillNo').AsString;
          PrintBill;
          gi_BillCase := 6;
          Gs_BillNo := ls_RefBillNo;
     end;
     EditHosNoExit(sender);
     except
     DM_Hospital.DB.Rollback;
     ShowMessage('Data Can Not Be Saved!!!!');
     end;
end;   *)


Procedure TFormRegRefundReprint.FindCotaQueNo;
Var
    SRTime,TDTime: String;
    days: array[1..7] of string;
Begin
     {days[1] := 'SUNDAY';
     days[2] := 'MONDAY';
     days[3] := 'TUESDAY';
     days[4] := 'WEDNESDAY';
     days[5] := 'THURSDAY';
     days[6] := 'FRIDAY';
     days[7] := 'SATURDAY';
     TDay:=days[DayOfWeek(ServerDate.SystemDate)];
     SRTime:=ServerDate.TodaysTime;
     If SRTime<='12:00:00' then
           TDTime:='MORNING';
     If SRTime>'12:00:00' Then
           TDTime:='AFTERNOON';  }

     With QueryQueNo do
     Begin
          Close;
          ParamByName('Date1').AsString:=SerVerDate.TodaysDate;
          ParamByName('DepCode').AsString:=CmbDdepartment.KeyValue;
          if TDTime='MORNING' then
          Begin
               ParamByName('FTIME').AsString:='00:00:00';
               ParamByName('TTIME').AsString:='12:00:00';
          End
          Else
          Begin
               ParamByName('FTIME').AsString:='12:00:00';
               ParamByName('TTIME').AsString:='24:59:59';
          End; 
          Open;
     End;
     QueNo:=QueryQueNo.FieldByname('Count').AsInteger+1;
     {if (QueNo>75) and (CmbDepartment.Text='MEDICAL OPD') Then
     Begin
          IF (FrmUserLogin.BillCancel='T') then
          Begin
               IF MessageDlg('Cota for this department is  '+IntToStr(75)+' and Running No is '+IntTostr(QueNo) +' , Do you want to Proceed ?',MTConfirmation,[mbyes,mbno],0)=mryes Then
               Begin
                    BitBtnRe.Caption:='&Yes';
                    LabelQueNo.Caption:=IntToStr(QueNo);
               End;
          End
          Else
          Begin
               ShowMessage('Cota is finished Please Do not try again');
               BitBtnRe.Caption:='Close';
          End;
     End
     Else
     Begin
          BitBtnRe.Caption:='&Yes';
          LabelQueNo.Caption:=IntToStr(QueNo);
     End;}
End;





procedure TFormRegRefundReprint.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8 Then Exit;
     IF Not (key IN['0'..'9']) Then Key:=#0;
end;

procedure TFormRegRefundReprint.CmbDdepartmentClick(Sender: TObject);
var DayOfWeek:Byte;
begin
     if Trim(CmbDdepartment.Text)<>'' then
     begin
          with Query_OPDVisitCharge do
          begin
               Close;
               SQL.Clear;
               SQL.Add(' Select * From VW_HS_SETUP_DEPTWISECHARGE Where ');
               if Trim(DBLCB_PatientType.Text)<>'' then
               SQL.Add(' PATIENTTYPECODE='+#39+DBLCB_PatientType.KeyValue+#39)
               else
               SQL.Add(' PATIENTTYPECODE=''GEN''');
               SQL.Add(' and DEPCODE='+#39+CmbDdepartment.KeyValue+#39);
               Open;
          end;

          pf_Amount:=Query_OPDVisitCharge.FieldByName('NewVisitCharge').AsFloat;
          pf_VatAmt:=Query_OPDVisitCharge.FieldByName('NewVisitTax').AsFloat;

          EditCharge.Text:=FloatToStr(pf_Amount+pf_VatAmt);
     end;


(*        IF gi_HospitalId=5 Then // 5 - Om Hospital
        Begin
             IF CMB_PtType.Text='GENERAL' Then
             Begin
                  pf_RegCharge:=QueryDepartment.FieldByName('Charge').AsFloat;
                  pf_VatAmt:=QueryDepartment.FieldByName('CVat').AsFloat;
             End
             Else IF CMB_PtType.Text='CHINESE' Then
             Begin
                  pf_RegCharge:=(QueryDepartment.FieldByName('Charge').AsFloat) * 2;
                  pf_VatAmt:=(QueryDepartment.FieldByName('CVat').AsFloat) * 2 ;
             End
             Else IF CMB_PtType.Text='FOREIGNER' Then
             Begin
                  pf_RegCharge:=(QueryDepartment.FieldByName('ChargeFRG').AsFloat);
                  pf_VatAmt:=(QueryDepartment.FieldByName('CVatFRG').AsFloat);
             End; 

             (*IF (CB_ChargCard.Checked=True) and (CmbDdepartment.KeyValue<>'EMR01') Then
             EditCharge.Text:=Format('%.2f',[(QueryDepartment.FieldByName('Charge').AsFloat+pf_VatAmt+QueryOPDCardCharge.FieldByName('TestPrice').AsFloat
             +QueryOPDCardCharge.FieldByName('Vat').AsFloat)])
             Else
             EditCharge.Text:=Format('%.2f',[(QueryDepartment.FieldByName('Charge').AsFloat+pf_VatAmt)]);*)
(*        End
        Else
        Begin
             pf_RegCharge:=QueryDepartment.FieldByName('Charge').AsFloat;
             pf_VatAmt:=QueryDepartment.FieldByName('CVat').AsFloat;
             
             EditCharge.Text:=Format('%.2f',[QueryDepartment.FieldByName('Charge').AsFloat+pf_VatAmt]);
        End;
        pi_DepId:=QueryDepartment.FieldByName('DepID').AsInteger;
       // EditRegDisExit(Sender);

        DayOfWeek:=DateEditXRefundDate.DayOfWeek;
          With QueryDocRoutine do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select DR.DocCode,D.DepCode,DR.DocName,DR.Unit ');
               sql.add(' ,Case When (Select DRSBDID From DocShareBreakDown where ServiceType=''OPD'' and DocCode=DR.DocCode) > 0 Then ''Y'' Else ''N'' End as MutualDocForShare');
               sql.add(' from DocRoutine DR,Doctor D where ');
               Sql.Add('DR.DocCode=D.DocCode And D.DActive=''Y'' And ');
               IF CmbDdepartment.KeyValue<>NULL Then
                 sql.add(' DR.DepName='+#39+CmbDdepartment.Text+#39+' and ');

               If DayOfWeek=1 then
               Begin
                    Sql.Add(' DR.CSunDay=''1'' And ');
                    sql.add(' (Trim(DR.SunShift) is NULL or DR.SunShift=''FULL DAY'') and ');
               End
               Else If DayOfWeek=2 then
               Begin
                    Sql.Add(' DR.CMonDay=''1'' And ');
                    sql.add(' (Trim(DR.MonShift) is NULL or DR.MonShift=''FULL DAY'') and ');
               End
               Else If DayOfWeek=3 then
               Begin
                    Sql.Add(' DR.CTuesDay=''1'' And ');
                    sql.add(' (Trim(DR.TueShift) is NULL or DR.TueShift=''FULL DAY'') and ');
               End
               Else If DayOfWeek=4 then
               Begin
                    Sql.Add(' DR.CWednesDay=''1'' And ');
                    sql.add(' (Trim(DR.WedShift) is NULL or DR.WedShift=''FULL DAY'') and ');
               End
               Else If DayOfWeek=5 then
               Begin
                    Sql.Add(' DR.CThusDay=''1'' And ');
                    sql.add(' (Trim(DR.ThuShift) is NULL or DR.ThuShift=''FULL DAY'') and ');
               End
               Else If DayOfWeek=6 then
               Begin
                    Sql.Add(' DR.CFriDay=''1'' And ');
                    sql.add(' (Trim(DR.FriShift) is NULL or DR.FriShift=''FULL DAY'') and ');
               End
               Else
               Begin
                    Sql.Add(' DR.CSaturDay=''1'' And ');
                    sql.add(' (Trim(DR.SatShift) is NULL or DR.SatShift=''FULL DAY'') and ');
               End;
               sql.add(' (0=0) Order By D.Drdisplayorder,DR.DocName');
               Open;
               DBLookupComboBoxDoctor.KeyValue:=QueryDocRoutine.FieldbyName('DocCode') .AsVariant;
          End; *)
end;

procedure TFormRegRefundReprint.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key In['0'..'9']) Then Key:=#0;
end;

procedure TFormRegRefundReprint.EditHosNoExit(Sender: TObject);
begin
     IF Trim(EditHosNo.Text)<>'' Then
     Begin
          LoadPatientData(StrToInt(EditHosNo.Text));
          LabelName2nd.Update;
          LabelName2nd.Caption:=Gs_PatientName;
          with QueryRegBillList do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select bide_BillDetailId BillDetailId,bide_PatientId Patientid,bide_BillDate Billdate,BIDE_BillTime BillTime,bide_BillNo billno,bide_depid Depid,');
               sql.add(' bide_doccode Doccode,bide_Amount amount,bide_VatAmt vatamt,(bide_Amount*bide_DisPer/100) as Discount,');
               SQL.Add(' (select dept_depname from hs_dept_department where dept_depid=hs_bide_billdetail.bide_depid)Depname,');
               SQL.Add(' (select doct_DocName from Hs_Doct_Doctor where Doct_docID=hs_bide_billdetail.bide_docID)DocName,');
               sql.add(' ((Bide_Amount+Bide_VatAmt)-(Bide_Amount*Bide_DisPer/100)) as NetAmount,');
               sql.add(' (Select Distinct REDE_RefundBillNo From hs_REDE_RefundDetail where  REDE_BillDetailId=bide_BillDetailId) as RefBillNo,');
               sql.add(' (Select Distinct REDE_RefundDate From hs_REDE_RefundDetail where  REDE_BillDetailId=bide_BillDetailId) as RefundDate');
               sql.add(' From hs_bide_BillDetail');
               sql.add(' where Bide_PatientId='+EditHosNo.Text);
               sql.add(' and BIDE_BillDate>='+#39+DEX_From.Text+#39+' and BIDE_BillDate<='+#39+DEX_To.Text+#39);
               sql.add(' and (Bide_BillType=''R'' Or BIDE_SERVICE=''OPDBC01'' or BIDE_SERVICE=''BLUBC01'')');
               sql.add(' Union ');
               sql.add(' Select REDE_BillDetailId BillDetailId,REDE_PatientId Patientid,REDE_RefundDate Billdate,REDE_RefundTime BillTime,REDE_RefundBillNo billno,');
               sql.add(' REDE_depid Depid,REDE_doccode Doccode,REDE_Amount amount,REDE_VatAmt vatamt,(REDE_Amount*REDE_DisPer/100) as Discount,');
               SQL.Add(' (select dept_depname from hs_dept_department where dept_depid=REDE_depid)Depname,');
               SQL.Add(' (select doct_DocName from Hs_Doct_Doctor where Doct_docID=REDE_docID)DocName,');
               sql.add(' ((REDE_Amount+REDE_VatAmt)-(REDE_Amount*REDE_DisPer/100)) as NetAmount,');
               sql.add(' (Select Distinct BIDE_BillNo From hs_BIDE_BillDetail where  BIDE_BillDetailId=REDE_BillDetailId) as RefBillNo,');
               sql.add(' (Select Distinct BIDE_BillDate From hs_BIDE_BillDetail where  BIDE_BillDetailId=REDE_BillDetailId) as RefundDate');
               sql.add(' From hs_REDE_RefundDetail');
               sql.add(' where REDE_PatientId='+EditHosNo.Text);
               sql.add(' and REDE_RefundDate>='+#39+DEX_From.Text+#39+' and REDE_RefundDate<='+#39+DEX_To.Text+#39);
               sql.add(' and (REDE_BillType=''R'' Or REDE_SERVICE=''OPDBC01'' or REDE_SERVICE=''BLUBC01'')');
               sql.add(' Order By BillDate Desc, BillNo');
               //SQL.SaveToFile('C:\tt.txt');
               Open;
          End;
          EditBillNo.Text:=QueryRegBillList.FieldByName('BillNo').AsString;
     End
     Else
     LabelName2nd.Caption:='?????';
end;

procedure TFormRegRefundReprint.EditHosNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   Begin
      EditHosNoExit(Sender);
      if Edit_Remarks.ReadOnly=True then
      EditBillNo.SetFocus
      else
      Edit_Remarks.SetFocus;
   End;
end;

procedure TFormRegRefundReprint.EditHospitalNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     Begin
          if Trim(EditHospitalNo.Text)='' then
          begin
               MessageDlg('You Must Have to Put Hospital No. First.',mtWarning,[mbOK],0);
               EditHospitalNo.SetFocus;
               Exit;
          end;

          IF IsRegisteredHospitalNo(StrToInt(EditHospitalNo.Text))=False Then
          Begin
               MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHospitalNo.Text+').',
               mtWarning,[mbok],0);
               EditHospitalNo.SetFocus;
               Exit;
          End;

          LoadPatientData(StrToInt(EditHospitalNo.Text));

          LabelName.Update;
          LabelName.Caption:=Gs_PatientName;
          MeidcareNo;

          if CB_NewBill.Checked=True then
          DBLCB_PatientType.SetFocus
          Else
          EditRemarks.SetFocus;
     End;

     IF key=VK_Prior Then
     DateEditXRefundDate.SetFocus;
end;

procedure TFormRegRefundReprint.SPB_ListOfBillsClick(Sender: TObject);
begin
     PageControlBillRefund.Visible:=False;
     PageControlBillReprint.Visible:=True;

     BtnSave.Caption:='&Refund Save (F12)';
     BtnSave.Enabled:=False;
     EditHosNo.SetFocus;
     LabelName2nd.Caption:='?????';
     CheckBoxPreview.Checked:=False;
end;


procedure TFormRegRefundReprint.EditPreBillNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

   IF key=VK_Prior Then
   EditHospitalNo.SetFocus;
end;

procedure TFormRegRefundReprint.CmbDdepartmentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   DBLC_Schemes.SetFocus;

   IF key=VK_Prior Then
   EditHospitalNo.SetFocus;

   IF key=VK_Delete Then
   CmbDdepartment.KeyValue:=NULL;

end;

procedure TFormRegRefundReprint.CmbCommunityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     DBLC_Schemes.SetFocus;

     IF key=VK_Prior Then
     CmbDdepartment.SetFocus;

     IF key=VK_Delete Then
     begin
         Query_Schemes.Close;
         EditRegDis.Text:='0';
         EditRegDis.ReadOnly:=True;
         EditRegDis.Color:=clScrollBar;
         CombPayType.ItemIndex:=0;
         //EditRegDisExit(Sender);
     end;
End;

procedure TFormRegRefundReprint.EditRegDisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     Begin
          if Trim(EditRegDis.Text)='' then EditRegDis.Text:='0';
          SchemeWiseDiscountCalculation;
          EditRemarks.SetFocus;
     End;

     IF key=VK_Prior Then
     DBLC_Schemes.SetFocus;
end;

procedure TFormRegRefundReprint.SchemeWiseDiscountCalculation;
Begin
     pf_DisPer:=StrToFloat(EditRegDis.Text);

     if (Gs_TaxRule='TAD') and (pf_DisPer > 0) then
     Begin
          pf_DisAmt:=pf_Amount * pf_DisPer/100;
          pf_VatAmt:=GetNoOfDecimalPartOfFloatNum(((pf_Amount - pf_Amount * pf_DisPer/100)* gf_TaxPercent/100),4);
     End;
     EditCharge.Text:=FloatToStr(RoundingAfterSecondPlace(pf_Amount+pf_VatAmt-pf_DisAmt));
End;

procedure TFormRegRefundReprint.EditChargeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     CombPayType.SetFocus;
     IF key=VK_Prior Then
     EditRegDis.SetFocus;
end;

procedure TFormRegRefundReprint.CombPayTypeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   EditRemarks.SetFocus;
   IF key=VK_Prior Then
   EditCharge.SetFocus;
end;

procedure TFormRegRefundReprint.EditRemarksKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   BtnSave.SetFocus
   Else
   Begin
      IF (key=VK_Prior) and (CB_NewBill.Checked=True) Then
      CombPayType.SetFocus;
   End;
end;

procedure TFormRegRefundReprint.EditBillNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Prior Then
   EditHosNo.SetFocus;
end;

procedure TFormRegRefundReprint.DBGridBillListCellClick(Column: TColumn);
begin
     IF QueryRegBillList.RecordCount > 0 Then
     begin
          gs_LastVisitDate := QueryRegBillList.FieldByName('Billdate').AsString;
          EditBillNo.Text:=QueryRegBillList.FieldByName('BillNo').AsString;
     end;
end;

procedure TFormRegRefundReprint.DBGridBillListColEnter(Sender: TObject);
begin
   IF QueryRegBillList.RecordCount > 0 Then
   EditBillNo.Text:=QueryRegBillList.FieldByName('BillNo').AsString;
end;

procedure TFormRegRefundReprint.FormRefresh;
Begin
   EditHospitalNo.SetFocus;
   EditHospitalNo.Text:='';

   CB_NewBill.Checked:=False;
   EditRemarks.Text:='';
   CombPayType.ItemIndex:=0;   
End;

procedure TFormRegRefundReprint.BitBtnRefundDateClick(Sender: TObject);
begin
   ChangeDateSystem(DateEditXRefundDate,BitBtnRefundDate);
end;

procedure TFormRegRefundReprint.BitBtn_BarCodeClick(Sender: TObject);
Var Column : TColumn;
begin
     DBGridBillListCellClick(Column);
     if Trim(EditHosNo.Text)='' then
     begin
          MessageDlg('Please Put Hospital No. First.',mtWarning,[mbOK],0);
          EditHosNo.SetFocus;
          Exit;
     end;

     IF IsRegisteredHospitalNo(StrToInt(EditHosNo.Text))=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;

     (*if gs_IsCounterUser='Y' then
     begin
          if QueryRegBillList.FieldByName('BillDate').AsString < TodaysDate  then
          begin
               MessageDlg('Sorry You Are Not Authorized To Re-Print The Sticke Of Back Date.',mtWarning,[mbOK],0);
               Exit;
          end;
     end;*)

     if MessageDlg('Are You Sure to Print Sticker ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Begin
          gi_PatientID:=StrToInt(EditHosNo.Text);
          SetPrinter('STICKERPRINTER');

          if gs_IsCustomRegStickePrint='Y' then
          AlternativeOPStricker(CheckBoxPreview)
          Else
          printOPSticker(CheckBoxPreview);
          //
     End;
end;


procedure TFormRegRefundReprint.PrintOPSticker(CBCheckBox : TCheckBox);
begin
     gi_VisitID:=GetPatientVisitID(gi_PatientID,QueryRegBillList.FieldByName('BillDate').AsString,QueryRegBillList.FieldByName('BillTime').AsString);

     try
          Form_opSticker:=TForm_OPSticker.Create(Nil);
          if CBCheckBox.Checked=True then
          Form_OPSticker.QrOpSticker.PreviewModal
          else
          Form_OPSticker.QrOpSticker.Print;
     finally
          Form_OPSticker.Free;
     end;
end;

Function TFormRegRefundReprint.SetTextWidth(sName: String; iLength: Integer): String;
var
    whitespace  :String;
    iLoop       :Integer;
begin
    Whitespace:='';
    For iLoop:=1 To iLength do
        Whitespace:= Whitespace+' ';
    Result:= whitespace + sName ;
end;

procedure TFormRegRefundReprint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Query_Department.Close;
     Query_Schemes.Close;
     Query_Community.Close;
end;

procedure TFormRegRefundReprint.CB_NewBillClick(Sender: TObject);
begin
     IF CB_NewBill.Checked=True Then
     Begin
          CB_OPDBookCharge.Checked:=False;
          CB_BlueBookCard.Checked:=False;

          CmbDdepartment.Enabled:=True;
          CmbDdepartment.Color:=clWhite;

          DBLC_Schemes.Enabled:=True;
          DBLC_Schemes.Color:=ClWhite;

          EditRegDis.Enabled:=True;
          EditRegDis.Color:=clWhite;
          EditRegDis.Text:='0';

          EditCharge.Color:=clWhite;
          EditCharge.Text:='0';

          DBLCB_PatientType.Enabled:=True;
          DBLCB_PatientType.Color:=clwhite;

          DBLookupComboBoxDoctor.Enabled:=True;
          DBLookupComboBoxDoctor.Color:=clWhite;

          CombPayType.Color:=clWhite;
          CombPayType.Enabled:=True;

          CombPayType.ItemIndex:=0;

          EditHospitalNo.SetFocus;
     End
     Else
     Begin
          CmbDdepartment.Enabled:=False;
          CmbDdepartment.Color:=clMenu;

          DBLC_Schemes.Enabled:=False;
          DBLC_Schemes.Color:=clMenu;

          EditRegDis.Enabled:=False;
          EditRegDis.Color:=clMenu;
          EditRegDis.Text:='0';

          EditCharge.Color:=clMenu;
          EditCharge.Text:='0';

          DBLCB_PatientType.Enabled:=False;
          DBLCB_PatientType.Color:=clMenu;

          DBLookupComboBoxDoctor.Enabled:=False;
          DBLookupComboBoxDoctor.Color:=clMenu;

          CombPayType.Color:=clMenu;
          CombPayType.Enabled:=False;
     End;
end;


procedure TFormRegRefundReprint.RefreshForm;
begin
     //CheckBoxRefundBillOnly.Checked:=False;
     //CheckBoxRefundNewBill.Checked:=False;
     //CB_NewBill.Checked:=False;
     EditHospitalNo.Text:='';
     LabelName.Caption:='?????';
     CmbDdepartment.KeyValue:=NULL;
     EditRegDis.Text:='';
     EditCharge.Text:='';
     CombPayType.ItemIndex:=0;
     EditRemarks.Text:='';
End;



{procedure TFormRegRefundReprint.AlternateBillPrint(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount:Double;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sGTotal, sName,sParticulars:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    sNo,sAmount:String;
    yval,y,il,iLength,YItemsEnd:Integer;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=12;
            TextOut(275,y+20,gs_HosName);   // pixel

            Font.Size:=8;
            TextOut(620,y+20,'Email  : '+gs_HosEmail);   // pixel
            TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel

            //TextOut(390,y+120,'Email   :'+gs_HosEmail);   // pixel
            //TextOut(390,y+135,'Website :'+gs_HosWebSite);   // pixel

            Font.Size:=9;
            TextOut(210,y+45,gs_HosSloganTitle);
            Font.Size:=10;
            TextOut(337,y+60,gs_HosAddress);
            TextOut(245,y+80,gs_HosPhone);

            //Font.Style:=[fsBold];
            TextOut(345,y+100,'TPIN : 300449161');
            Font.Size:=12;
            TextOut(75,y+120,'INVOICE');

            Font.Size:=10;
            GetTextAlign(TA_LEFT);
            IF (QueryName.FieldByName('MemberNo').AsString<>'') and (QueryName.FieldByName('MemberNo').AsString<>'0') Then
            TextOut(60,y+170, 'MEDICARE NO : '+QueryName.FieldByName('MemberNo').AsString);
            TextOut(60,y+195, 'HOSP.NO    : '+QueryName.FieldByName('PatientId').AsString);

            GetTextAlign(TA_LEFT);
            TextOut(60,y+220, 'NAME          : '+QueryName.FieldByName('Name').AsString);
            TextOut(60,y+245,'AGE/SEX     : '+QueryName.FieldByName('AgeSex').AsString);
            IF Length(ls_PtAddress) > 30 Then
            Begin
               TextOut(60,y+265, 'ADDRESS   : '+Copy(ls_PtAddress,1,30));
               TextOut(155,y+280,Copy(ls_PtAddress,31,Length(ls_PtAddress)));
            End
            Else
            TextOut(60,y+270, 'ADDRESS   : '+ls_PtAddress);
            TextOut(470,y+195,'INVOICE NO     : '+QueryDetail.FieldByName('BillNo').AsString+'  '+QueryDetail.FieldByName('PayType').AsString);
            TextOut(470,y+220,'INVOICE DATE  : '+QueryDetail.FieldByName('BillDate').AsString);
            TextOut(470,y+245,'INVOICE TIME   : '+QueryDetail.FieldByName('BillTime').AsString);

        End;
    End;
    Procedure PrintColumnHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            TextOut(60,y+310,format('%-s',['SNO']));
            MoveTo(58, y+335);
            LineTo(88, y+335);

            TextOut(100,y+310,format('%-s',['PARTICULARS']));
            MoveTo(100, y+335);
            LineTo(220, y+335);

            TextOut(610,y+310,format('%-s',['AMOUNT']));
            MoveTo(610, y+335);
            LineTo(670, y+335);
        end;
    end;
begin
    y:=-20;
    With QueryName Do
    Begin
        Close;
        ParamByName('PatientID').ASInteger:=PatientId;
        Open;
    End;
    //QueryUser1.Close;
    //QueryUser1.Open;
    With QueryVisitDepartment Do
    Begin
        Close;
        ParamByName('PatientId').ASInteger:=PatientId;
        Open;
    End;
    With QueryDetail Do
    Begin
        Close;
        ParamByName('BillNo').ASString:=BillNo;
        Open;
    End;
    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
        //Font.Name:='Arial Narrow';
        FormRoboPreview.WindowState:=wsMaximized;
        QueryDetail.First;

        IF CheckBoxPreview.Checked=False Then
        DirectPrint:=True                           
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=780;  // in pixel
        PaperWidth:=800;//2500;
        BeginDoc;
        yval:=325;
            With canvas do
            begin
                //Printer.Canvas.Font.Handle:=GetStockObject(DEVICE_DEFAULT_FONT);
                GetPrinterOptions;
                UpdateAnnotation;
                {***********************************************************}
                {                         Page header                       }
                {***********************************************************}
{                PrintPageHeader;
                {***********************************************************}
                {                       column header                       }
                {***********************************************************}
{               PrintColumnHeader;

                Font.Size:=10;

                QueryDetail.First;//50,125
                While Not QueryDetail.Eof  do
                begin
                    Inc(il);
                    {If il in [1,16,31] Then
                        yval:=142;
                    If il in [16,31] Then
                    Begin
                        NewPage;
                        PrintPageHeader;
                        PrintColumnHeader;
                    End;}
{                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    sParticulars:='REGISTRATION CHARGE : OPD (FOR TEN DAYS)';
                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    sAmount:= FormatFloat('0.00',QueryDetail.fieldbyname('TotalAmount').asFloat);
                    iLength:= TextWidth(sAmount);
                    iLength:= 74 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength>0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    
                    TextOut(58,y+yval+20,format(' %-s',[sNo]));
                    // Particulars

                    TextOut(100,y+yval+20,format(' %-s',[sParticulars]));
                    // amount

                    TextOut(590,y+yval+20,format(' %-s',[sAmount]));
                    //Font.Size:=13;
                    //if il=1 Then LineTo(50,yval); //50------------4d,10,10                                 //'+IntToStr(round(nLength))+'
                    //Total:= Total + (qty*rate);
                    Inc(yval,22);
                    QueryDetail.Next;

                end;


                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
{                yval:=y+yval+150;
                MoveTo(450,y+yval);
                LineTo(700,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;
                Font.Size:=10;



                TextOut(60,y+yval,'In Words   :'+UpperCase(InWords(QueryDetail.FieldByName('NetAmount').AsFloat)+'.only'));

                Inc(yval,20);
                //

                //Font.Style:=[];

                TextOut(290,y+yval,'DEP. CODE :  '+QueryDetail.FieldByName('Service').AsString);
                Inc(yval,20);


                TextOut(60,y+yval,'USER                 : '+QueryDetail.FieldByName('UserName').AsString);
                Inc(yval,20);

                IF Trim(QueryDetail.FieldByName('Community').AsString)<>'' Then
                TextOut(60,y+yval,'COMMUNITY      : '+QueryDetail.FieldByName('Community').AsString)
                Else
                TextOut(60,y+yval,'COMMUNITY      : -');

                Font.Style:=[fsBold];
                Inc(yval,20);
                IF QueryDetail.FieldByName('ServiceType').AsString='REG' Then
                TextOut(60,y+yval,'NEW REGISTRATION')
                Else
                TextOut(60,y+yval,'OLD REGISTRATION');

                Font.Style:=[];
                lf_TotalAmount:=QueryDetail.FieldByName('TotalAmount').AsFloat;
                ls_TotalAmount:=QueryDetail.FieldByName('TotalAmount').AsString;

                lf_VatAmt:=QueryDetail.FieldByName('VatAmt').AsFloat;
                ls_VatAmt:=QueryDetail.FieldByName('VatAmt').AsString;

                lf_Discount:=QueryDetail.FieldByName('Discount').AsFloat;
                ls_Discount:=QueryDetail.FieldByName('Discount').AsString;


                yval:=YItemsEnd;
                iLength:=TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=50-iLength;
                iLength:= Round(iLength / 4);
                //Inc(yval,20);
                TextOut(460,y+yval,'AMOUNT                     :');
                TextOut(615,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
                IF CheckBoxTBD.Checked=True Then
                Begin
                   Inc(yval,20);
                   iLength:=TextWidth(ls_VatAmt);
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'HEALTH SVR TAX @ '+FloatToStr(gf_VatPer)+' %:');
                   TextOut(615,y+yval,SetTextWidth(ls_VatAmt,iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(ls_Discount);
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'DISCOUNT  :');
                   TextOut(615,y+yval,SetTextWidth(ls_Discount,iLength));

                   Font.Size:=11;
                   Inc(yval,20);
                   iLength:=TextWidth(QueryDetail.FieldByName('NetAmount').AsString);
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'TOTAL        :');
                   TextOut(615,y+yval,SetTextWidth(QueryDetail.FieldByName('NetAmount').AsString,iLength));
                End
                Else
                Begin
                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'DISCOUNT                   :');
                   TextOut(615,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'SUB TOTAL                 :');
                   TextOut(615,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',QueryDetail.FieldByName('VatAmt').AsFloat));
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'HEALTH SVR TAX @ '+FloatToStr(gf_VatPer)+' %:');
                   TextOut(615,y+yval,SetTextWidth(FormatFloat('0.00',(QueryDetail.FieldByName('VatAmt').AsFloat)),iLength));

                   Font.Style:=[fsBold];
                   Font.Size:=11;
                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',QueryDetail.FieldByName('NetAmount').AsFloat));
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(460,y+yval,'TOTAL                       :');
                   TextOut(615,y+yval,SetTextWidth(FormatFloat('0.00',QueryDetail.FieldByName('NetAmount').AsFloat),iLength));
                End;

            End;
        EndDoc;
    end;
    IF CheckBoxPreview.Checked=True Then
    FormRoboPreview.ShowModal;
end; }



{procedure TFormRegRefundReprint.AlternateBillPrint(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount:Double;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sGTotal, sName,sParticulars:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    sNo,sAmount:String;
    yval,y,il,iLength,YItemsEnd:Integer;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=15;
            TextOut(269,y+20,gs_HosName);   // pixel

            Font.Size:=8;
            //TextOut(620,y+20,'Email  : '+gs_HosEmail);   // pixel
            //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel

            TextOut(590,y+60,'Email    : '+gs_HosEmail);   // pixel
            TextOut(590,y+80,'Website  : '+gs_HosWebSite);   // pixel            

            Font.Size:=10;
            TextOut(205,y+45,gs_HosSloganTitle);
            Font.Size:=10;
            TextOut(337,y+60,gs_HosAddress);
            TextOut(245,y+80,gs_HosPhone);

            Font.Style:=[fsBold];
            TextOut(345,y+100,'TPIN : 300449161');
            Font.Size:=13;
            IF b_Reprint=False Then
            TextOut(75,y+120,'INVOICE')
            Else
            TextOut(75,y+120,'INVOICE COPY');

            Font.Style:=[];

            Font.Size:=10;
            GetTextAlign(TA_LEFT);
            IF (QueryName.FieldByName('MemberNo').AsString<>'') and (QueryName.FieldByName('MemberNo').AsString<>'0') Then
            TextOut(60,y+170, 'MEDICARE NO : '+QueryName.FieldByName('MemberNo').AsString);
            TextOut(60,y+195, 'HOSPITAL NO : '+QueryName.FieldByName('PatientId').AsString);

            GetTextAlign(TA_LEFT);
            TextOut(60,y+220, 'NAME             : '+QueryName.FieldByName('Name').AsString);
            TextOut(350,y+220,'AGE/SEX : '+QueryName.FieldByName('AgeSex').AsString);
            IF Length(ls_PtAddress) > 50 Then
            Begin
               TextOut(60,y+245, 'ADDRESS       : '+Copy(ls_PtAddress,1,41));
               TextOut(155,y+265,Copy(ls_PtAddress,42,Length(ls_PtAddress)));
            End
            Else
            TextOut(60,y+245, 'ADDRESS       : '+ls_PtAddress);
            TextOut(500,y+195,'INVOICE DATE    : '+QueryDetail.FieldByName('BillDate').AsString+' ( '+ADTOVSS(QueryDetail.FieldByName('BillDate').AsString)+' )');
            TextOut(500,y+220,'INVOICE TIME     : '+QueryDetail.FieldByName('BillTime').AsString);
            TextOut(500,y+245,'INVOICE NO        : '+QueryDetail.FieldByName('BillNo').AsString+'    '+QueryDetail.FieldByName('PayType').AsString);
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            MoveTo(30,y+295);
            LineTo(770,y+295);
            Font.Size:=10;
            TextOut(55,y+300,format(' %-s',['SNO']));
            TextOut(100,y+300,format(' %-s',['PARTICULARS']));
            TextOut(620,y+300,format(' %-s',['AMOUNT']));
            //TextOut(690,300,format(' %-s',['Remarks']));

            MoveTo(30,y+320);
            LineTo(770,y+320);
        end;
    end;
begin
    y:=-20;
    With QueryName Do
    Begin
        Close;
        ParamByName('PatientID').ASInteger:=PatientId;
        Open;
    End;
    With QueryVisitDepartment Do
    Begin
        Close;
        ParamByName('PatientId').ASInteger:=PatientId;
        Open;
    End;
    With QueryDetail Do
    Begin
        Close;
        ParamByName('BillNo').ASString:=BillNo;
        Open;
    End;
    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
        FormRoboPreview.WindowState:=wsMaximized;
        QueryDetail.First;

        IF CheckBoxPreview.Checked=False Then
        DirectPrint:=True
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=780;  // in pixel
        PaperWidth:=800;//2500;
        BeginDoc;
        yval:=325;
            With canvas do
            begin
                GetPrinterOptions;
                UpdateAnnotation;
                {***********************************************************}
                {                         Page header                       }
                {***********************************************************}
{                PrintPageHeader;
                {***********************************************************}
                {                       column header                       }
                {***********************************************************}
{                PrintColumnHeader;

                Font.Size:=10;

                QueryDetail.First;//50,125
                While Not QueryDetail.Eof  do
                begin
                    Inc(il);
                    {If il in [1,16,31] Then
                        yval:=142;
                    If il in [16,31] Then
                    Begin
                        NewPage;
                        PrintPageHeader;
                        PrintColumnHeader;
                    End;}
{                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    sParticulars:='REGISTRATION CHARGE : OPD (FOR TEN DAYS)';
                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    sAmount:= FormatFloat('0.00',QueryDetail.fieldbyname('TotalAmount').asFloat);
                    iLength:= TextWidth(sAmount);
                    iLength:= 74 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength>0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    TextOut(58,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    TextOut(100,y+yval,format(' %-s',[sParticulars]));
                    // amount
                    TextOut(590,y+yval,format(' %-s',[sAmount]));
                    //Font.Size:=13;
                    //if il=1 Then LineTo(50,yval); //50------------4d,10,10                                 //'+IntToStr(round(nLength))+'
                    //Total:= Total + (qty*rate);
                    Inc(yval,22);
                    QueryDetail.Next;

                end;


                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
{                yval:=y+yval+100;
                MoveTo(30,y+yval);
                LineTo(770,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;
                Font.Size:=10;


                TextOut(60,y+yval,'In Words   :'+UpperCase(InWords(QueryDetail.FieldByName('NetAmount').AsFloat)+'.only'));

                Inc(yval,20);
                Font.Style:=[fsBold];
                IF QueryDetail.FieldByName('ServiceType').AsString='REG' Then
                TextOut(60,y+yval,'NEW REGISTRATION')
                Else
                TextOut(60,y+yval,'OLD REGISTRATION');
                Font.Style:=[];
                TextOut(290,y+yval,'DEP. CODE :  '+QueryDetail.FieldByName('Service').AsString);
                Inc(yval,20);

                TextOut(60,y+yval,'USER             : '+QueryDetail.FieldByName('UserName').AsString);
                Inc(yval,20);

                IF Trim(QueryDetail.FieldByName('Community').AsString)<>'' Then
                TextOut(60,y+yval,'COMMUNITY   : '+QueryDetail.FieldByName('Community').AsString)
                Else
                TextOut(60,y+yval,'COMMUNITY   : -');

                lf_TotalAmount:=QueryDetail.FieldByName('TotalAmount').AsFloat;
                ls_TotalAmount:=QueryDetail.FieldByName('TotalAmount').AsString;

                lf_VatAmt:=QueryDetail.FieldByName('VatAmt').AsFloat;
                ls_VatAmt:=QueryDetail.FieldByName('VatAmt').AsString;

                lf_Discount:=QueryDetail.FieldByName('Discount').AsFloat;
                ls_Discount:=QueryDetail.FieldByName('Discount').AsString;


                yval:=YItemsEnd;
                iLength:=TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=74-iLength;
                iLength:= Round(iLength / 4);
                //Inc(yval,20);
                TextOut(465,y+yval,'AMOUNT                 :');
                TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
                IF CheckBoxTBD.Checked=True Then
                Begin
                   Inc(yval,20);
                   iLength:=TextWidth(ls_VatAmt);
                   iLength:=50-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'HEALTH SVR TAX @ '+FloatToStr(gf_VatPer)+' %:');
                   TextOut(615,y+yval,SetTextWidth(ls_VatAmt,iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(ls_Discount);
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'DISCOUNT  :');
                   TextOut(590,y+yval,SetTextWidth(ls_Discount,iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(QueryDetail.FieldByName('NetAmount').AsString);
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'TOTAL        :');
                   TextOut(590,y+yval,SetTextWidth(QueryDetail.FieldByName('NetAmount').AsString,iLength));
                End
                Else
                Begin
                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=73-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'DISCOUNT              :');
                   TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'SUB TOTAL             :');
                   TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',QueryDetail.FieldByName('VatAmt').AsFloat));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'HEALTH SVR TAX @ '+FloatToStr(gf_VatPer)+' %:');
                   TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',(QueryDetail.FieldByName('VatAmt').AsFloat)),iLength));

                   Font.Style:=[fsBold];
                   Inc(yval,20);
                   iLength:=TextWidth(FormatFloat('0.00',QueryDetail.FieldByName('NetAmount').AsFloat));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);
                   TextOut(465,y+yval,'TOTAL                    :');
                   TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',QueryDetail.FieldByName('NetAmount').AsFloat),iLength));
                End;

            End;
        EndDoc;
    end;
    b_Reprint:=False;
    IF CheckBoxPreview.Checked=True Then
    FormRoboPreview.ShowModal;
end;}



procedure TFormRegRefundReprint.Timer2Timer(Sender: TObject);
begin
   IF LabelMedNo.Visible=True Then
   LabelMedNo.Visible:=False
   Else
   LabelMedNo.Visible:=True;
end;


procedure TFormRegRefundReprint.CB_NewBillKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF (key=13) and (CB_NewBill.Checked=True) Then
   EditHospitalNo.SetFocus;
      IF key=VK_Down Then
   DateEditXRefundDate.SetFocus;
end;

procedure TFormRegRefundReprint.DBLC_SchemesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF Key=13 Then
     Begin
          if Trim(DBLC_Schemes.Text)<>'' then
          EditRegDis.SetFocus
          else
          EditRemarks.SetFocus;
     End;

     IF key=VK_Delete Then
     Begin
          DBLC_Schemes.KeyValue:=NULL;
          EditRegDis.Text:='0';
          EditRegDis.ReadOnly:=True;
          EditRegDis.Color:=clScrollBar;
          //EditRegDisExit(Sender);
     End;
end;

procedure TFormRegRefundReprint.DBLCB_PatientTypeClick(Sender: TObject);
begin
     CmbDdepartmentClick(Sender);
     IF DBLCB_PatientType.KeyValue='FRG' Then // Foreigner
     Begin
          LabelExRate.Enabled:=True;
          Edit_ExchangeRate.Enabled:=True;
          Edit_ExchangeRate.Color:=clWhite;
          Label_DollarRs.Visible:=True;
     End
     Else
     Begin
          LabelExRate.Enabled:=False;
          Edit_ExchangeRate.Enabled:=False;
          Edit_ExchangeRate.Color:=clMenu;
          Label_DollarRs.Visible:=False;
          Edit_ExchangeRate.Text:='';
     End;
end;

procedure TFormRegRefundReprint.DBLCB_PatientTypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then CmbDdepartment.SetFocus;

end;

procedure TFormRegRefundReprint.DBLC_SchemesClick(Sender: TObject);
begin
     if Trim(DBLC_Schemes.Text)<>'' then
     Begin
          EditRegDis.Text:=FloatToStr(Query_Schemes.FieldByName('SCHE_REGDISPER').AsFloat);
          EditRegDis.ReadOnly:=False;
          EditRegDis.Color:=clWhite;
          if Query_Schemes.FieldByName('SCHE_ISREGCRFACILITY').AsString='Y' then
          Begin
               CombPayType.Enabled:=True;
               CombPayType.ItemIndex:=1;
               CombPayType.Color:=clWhite;
          End
          else
          begin
               CombPayType.Enabled:=False;
               CombPayType.ItemIndex:=0;
               CombPayType.Color:=clSilver;
          end;
          SchemeWiseDiscountCalculation;
          DBLC_Schemes.SetFocus;
     End
     Else
     Begin
          EditRegDis.Text:='0';
          SchemeWiseDiscountCalculation;
          EditRegDis.Color:=clScrollBar;
          EditRegDis.ReadOnly:=True;
     End;
end;

procedure TFormRegRefundReprint.SPB_RefundClick(Sender: TObject);
begin
     IF QueryRegBillList.RecordCount <= 0 Then
     Begin
          MessageDlg('No Record To Refund !',mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;

     if Copy(QueryRegBillList.FieldByName('BillNo').AsString,1,2)='RF' then
     begin
          MessageDlg('Sorry ! This is Refund Bill !',mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     end;


     if Copy(QueryRegBillList.FieldByName('RefBillNo').AsString,1,2)='RF' then
     begin
          MessageDlg('Sorry ! This is bill is aleady refunded.',mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     end;
     Edit_Remarks.SetFocus;
     BtnSave.Enabled:=True;

     (*IF not QueryRegBillList.Active Then QueryRegBillList.Active:=True;
     IF QueryRegBillList.RecordCount <= 0 Then
     Begin
          MessageDlg('No Record To Refund !',mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;
     PageControlBillReprint.Visible:=False;
     PageControlBillRefund.Visible:=True;
     BtnSave.Enabled:=True;
     CheckBoxRefundBillOnly.Checked:=True;
     EditHospitalNo.Text:=QueryRegBillList.FieldByName('PatientId').AsString;
     EditPreBillNo.Text:=QueryRegBillList.FieldByName('BillNo').AsString;
     EditRemarks.SetFocus;*)
end;


procedure TFormRegRefundReprint.SpeedButton4Click(Sender: TObject);
begin
     ps_TodaysDate:=TodaysDate;
     ps_TodaysTime:=TodaysTime;

     With Query_Process do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add(' Select * From HS_BIDE_BillDetail where BIDE_BillNo=''CS71/72-0008673''');
          Open;
          First;
          Gs_BillNo := GetNextBillNo('RF', 'HS_REDE_RefundDetail','REDE_REFUNDBILLNO');
          while Not EOF do
          begin
               SaveRefundDetail(Query_Process.FieldByName('BIDE_BillDetailID').AsInteger,0,0,0,0,'Mistakenly Discharge of Other Patient','N',ps_TodaysDate,ps_TodaysTime);
               Query_Process.Next;
          end;
     end;
     ShowDoneMessage;
     Gs_BillNo:='';
end;

procedure TFormRegRefundReprint.Edit_ExchangeRateExit(Sender: TObject);
begin
     (*IF (DBLCB_PatientType.Text='FOREIGNER') and (Trim(Edit_ExchangeRate.Text)<>'') and (Edit_ExchangeRate.Text<>'0') Then
     Begin
          IF DBLCB_PatientType.Text='GENERAL' Then
          Begin
               pf_RegCharge:=QueryDepartment.FieldByName('Charge').AsFloat;
               pf_VatAmt:=QueryDepartment.FieldByName('CVat').AsFloat;
          End
          Else IF DBLCB_PatientType.Text='CHINESE' Then
          Begin
               pf_RegCharge:=(QueryDepartment.FieldByName('Charge').AsFloat) * 2;
               pf_VatAmt:=(QueryDepartment.FieldByName('CVat').AsFloat) * 2 ;
          End
          Else IF DBLCB_PatientType.Text='FOREIGNER' Then
          Begin
               pf_RegCharge:=(QueryDepartment.FieldByName('ChargeFRG').AsFloat);
               pf_VatAmt:=(QueryDepartment.FieldByName('CVatFRG').AsFloat);
          End;
          //EditRegDisExit(Sender);
          BtnSave.SetFocus;
     End;*)
end;

procedure TFormRegRefundReprint.Edit_ExchangeRateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     Begin
          IF (DBLCB_PatientType.Text='FOREIGNER') and (Trim(Edit_ExchangeRate.Text)='') Then
          Edit_ExchangeRate.Text:='0';
          IF DBLCB_PatientType.Text='GENERAL' Then
          Begin
               pf_Amount:=Query_OPDVisitCharge.FieldByName('NewVisitCharge').AsFloat;
               pf_VatAmt:=Query_OPDVisitCharge.FieldByName('NewVisitTax').AsFloat;
          End
          Else IF DBLCB_PatientType.Text='CHINESE' Then
          Begin
               pf_Amount:=Query_OPDVisitCharge.FieldByName('NewVisitCharge').AsFloat*2;
               pf_VatAmt:=Query_OPDVisitCharge.FieldByName('NewVisitTax').AsFloat*2;
          End
          Else IF DBLCB_PatientType.Text='FOREIGNER' Then
          Begin
               pf_Amount:=Query_OPDVisitCharge.FieldByName('NewVisitCharge').AsFloat;
               pf_VatAmt:=Query_OPDVisitCharge.FieldByName('NewVisitTax').AsFloat;
          End;
          BtnSave.SetFocus;
     End;
end;

procedure TFormRegRefundReprint.Edit_ExchangeRateKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8  then exit;
     AvoidMultipleDecimal(Edit_ExchangeRate,key);
     key:=Key;
end;

procedure TFormRegRefundReprint.CB_BlueBookCardClick(Sender: TObject);
begin
     if CB_BlueBookCard.Checked=True then
     begin
          CB_OPDBookCharge.Checked:=False;
          CB_NewBill.Checked:=False;

          Query_BlueBookCharge.Close;
          Query_BlueBookCharge.Open;
          Label_BookCharge.Visible:=True;
          Label_BookCharge.Caption:='Blue Book Charge : Rs. '+FormatFloat('0.00',(Query_BlueBookCharge.FieldByName('TestPrice').AsFloat+Query_BlueBookCharge.FieldByName('VatAmt').AsFloat));
          CB_OPDBookCharge.Checked:=False;
          CB_NewBill.Checked:=False;
     end
     else
     Label_BookCharge.Visible:=False;
end;

procedure TFormRegRefundReprint.CB_ChargCardClick(Sender: TObject);
begin
     //IF CmbDdepartment.KeyValue<>NULL Then
     //CmbDdepartmentClick(Sender);
     if CB_OPDBookCharge.Checked=True then
     begin
          Query_OPDCardCharge.Close;
          Query_OPDCardCharge.Open;
          Label_BookCharge.Visible:=True;
          Label_BookCharge.Caption:='OPD Book Charge : Rs. '+FormatFloat('0.00',(Query_OPDCardCharge.FieldByName('TestPrice').AsFloat+Query_OPDCardCharge.FieldByName('VatAmt').AsFloat));
          CB_BlueBookCard.Checked:=False;
          CB_NewBill.Checked:=False;
     end
     Else
     Label_BookCharge.Visible:=False;
end;

procedure TFormRegRefundReprint.PostOPDCardCharge;
Begin
     {     Saving billdetail      }
     {     SaveBillDetail(PatientId,InPatientId,SchemeId,CommunityId,PatientTestId,DepID,ClinicalDepId,UserId:Integer;
               BillNo,RateType,DepCode,TestNameCode,MemberNo,PayType,BillType,BillDate,BillTime:String;
               Quatity,CurQty,VatAmt,CurVatAmt,Amount,TotalAmount,Dis:Double;DocCode,RefDocCode,LabNo:String);        }
//     Try
//          SaveBillDetail(
//                    pi_PatientId, 0,pi_SchemeId,pi_CommunityId,0,QueryOPDCardCharge.FieldByName('DepId').AsInteger,
//                    pi_DepId,gi_UserId ,ps_MyBillNo,ps_RateType,QueryOPDCardCharge.FieldByName('TestNameCode').AsString,
//                    QueryOPDCardCharge.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,'B',
//                    ps_TodaysDate,ps_TodaysTime,1,1,QueryOPDCardCharge.FieldByName('Vat').AsFloat,
//                    QueryOPDCardCharge.FieldByName('Vat').AsFloat,QueryOPDCardCharge.FieldByName('TestPrice').AsFloat,
//                    QueryOPDCardCharge.FieldByName('TestPrice').AsFloat+QueryOPDCardCharge.FieldByName('Vat').AsFloat,
//                    0,ps_DocCode,'','');
//     Except
//          SaveBillDetail(
//                    pi_PatientId, 0,pi_SchemeId,pi_CommunityId,0,QueryOPDCardCharge.FieldByName('DepId').AsInteger,
//                    pi_DepId,gi_UserId ,ps_MyBillNo,ps_RateType,QueryOPDCardCharge.FieldByName('TestNameCode').AsString,
//                    QueryOPDCardCharge.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,'B',
//                    ps_TodaysDate,ps_TodaysTime,1,1,QueryOPDCardCharge.FieldByName('Vat').AsFloat,
//                    QueryOPDCardCharge.FieldByName('Vat').AsFloat,QueryOPDCardCharge.FieldByName('TestPrice').AsFloat,
//                    QueryOPDCardCharge.FieldByName('TestPrice').AsFloat+QueryOPDCardCharge.FieldByName('Vat').AsFloat,
//                    0,ps_DocCode,'','');
//     End;
End;


procedure TFormRegRefundReprint.PostGenHealthPackageInvItems;
Var li_PatientTestID,li_TestNameId,li_RefPTestId : Integer;
    lf_TestPrice : Double;
    ls_TestNameCode : String;
begin
     With Query_Process do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select PT.MTestNameCode,TN.TestNameCode,TN.TestName,TN.TESTPRICE,TN.TestPriceForeigner,TN.DepId, ');
          sql.add(' TN.TestNameId From TestName TN,PackageTest PT where PT.DTestNameCode=TN.TestNameCode and ');
          IF CmbDdepartment.keyValue='GEN' Then
          Begin
               sql.add(' PT.MTESTNAMECODE=''GHPK01''');
               ls_TestNameCode:='GHPK01';
               li_TestNameId:=533;
          End
          Else IF CmbDdepartment.keyValue='GE2' Then
          Begin
               sql.add(' PT.MTESTNAMECODE=''GHPK02''');
               ls_TestNameCode:='GHPK02';
               li_TestNameId:=534;
          End
          Else IF CmbDdepartment.keyValue='GE3' Then
          Begin
               sql.add(' PT.MTESTNAMECODE=''GHP3''');
               ls_TestNameCode:='GHP3';
               li_TestNameId:=1053;
          End;
          Open;

          li_PatientTestID:=GetMaxId('PatientTest','PatientTestID');

          IF DBLCB_PatientType.Text='FOREIGNER' Then
          lf_TestPrice:=Query_Process.FieldByName('TestPrice').asFloat
          Else
          lf_TestPrice:=Query_Process.FieldByName('TestPriceForeigner').asFloat;


          li_PatientTestID:=GetMaxId('PatientTest','PatientTestID');
          li_RefPTestId:=li_PatientTestID;
//          SavePatientTest(
//                    li_PatientTestID,0, pi_PatientId, 0,
//                    QueryDepartment.FieldByName('DepID').asInteger,
//                    li_TestNameId,lf_TestPrice,ps_MyBillNo, CmbDdepartment.KeyValue,
//                    ls_TestNameCode,ps_TodaysDate,ps_PayType, 'TRUE' , 'REG'   );

          First;
          while Not EOF Do
          Begin
               IF DBLCB_PatientType.Text='FOREIGNER' Then
               lf_TestPrice:=Query_Process.FieldByName('TestPrice').asFloat
               Else
               lf_TestPrice:=Query_Process.FieldByName('TestPriceForeigner').asFloat;

//               Try
//                    li_PatientTestID:=GetMaxId('PatientTest','PatientTestID');
//                    {  SavePatientTest(PatientTestID,RefPatientTestId,PatientID,InPatientId,DepID,TestNameID:Integer;
//                              TestAmount:Double;BillNo,DepCode,TestNameCode,TestDate,PayStatus,Special,WorkingStatus:String); }
//                    SavePatientTest(
//                         li_PatientTestID,li_RefPTestId, pi_PatientId, 0,
//                         QueryProcess.FieldByName('DepID').asInteger,
//                         QueryProcess.FieldByName('TestNameID').asInteger,
//                         lf_TestPrice,ps_MyBillNo, CmbDdepartment.KeyValue,
//                         QueryProcess.FieldByName('TestNameCode').AsString,
//                         ps_TodaysDate,ps_PayType, 'TRUE' , 'REG'   );
//               Except
//                    li_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
//                    SavePatientTest(
//                         li_PatientTestID,li_RefPTestId, pi_PatientId, 0,
//                         QueryProcess.FieldByName('DepID').asInteger,
//                         QueryProcess.FieldByName('TestNameID').asInteger,
//                         lf_TestPrice,ps_MyBillNo, CmbDdepartment.KeyValue,
//                         QueryProcess.FieldByName('TestNameCode').AsString,
//                         ps_TodaysDate,ps_PayType, 'TRUE' , 'REG'   );
//               End;
               Query_Process.Next;
          End;
     end;
end;


procedure TFormRegRefundReprint.EditRegDisKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key in [#8] then Exit;
     AvoidMultipleDecimal(EditRegDis,key);
     key:=Key;
end;

Procedure TFormRegRefundReprint.Mutually_Share_Fraction(doccode:string);
begin
     With Query_DocShareDivision do
     begin
          close;
          sql.clear;
          sql.add(' select DRSBDID,DocCode,DocRate,ISREFCHRGDIVIDE From DocShareBreakDown where DRSGID=');
          sql.add(' (select DRSGID From DocShareBreakDown Where DocCode='+#39+doccode+#39+' and ServiceType=''OPD'') and ServiceType=''OPD''');
          open;
     end;
end;

procedure TFormRegRefundReprint.PrintBill(CB_Preview :TCheckBox);
Var
     i: Integer;
begin
     try
          Form_QRBill_Manipal := TForm_QRBill_Manipal.Create(nil);
          (*if Gb_IsReprint then
          Form_QRBill_Manipal.lbl_reprint.Enabled := True;*)

          with Form_QRBill_Manipal do
          begin
               QrBill.Prepare;
               //lbl_totpage.Caption := IntToStr(QrBill.QRPrinter.PageCount);
               if CB_Preview.Checked then
               QrBill.PreviewModal
               else
               QrBill.Print;
          end;

     finally
          Form_QRBill_Manipal.Free;
     end;

end;


procedure TFormRegRefundReprint.AlternativeOPStricker(CBCheckBox: TCheckBox);
var
y,X:Integer;
tm: TTextMetric;
     Qry:TOraQuery;
     ls_DocName,ls_Address,ls_Phone,ls_Mobile,ls_FirstDepartment,ls_Gender:string;

BitMap1,BitMap2 :TBitMap;

     Procedure PrintPageHeader;
     begin
          With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
          begin
          End;
     End;

     Procedure PrintColumnHeader;
     begin
          With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
          begin

          end;
     end;
begin
     Qry := TOraQuery.Create(Nil);
     gi_VisitID:=GetPatientVisitID(gi_PatientID,QueryRegBillList.FieldByName('BillDate').AsString,QueryRegBillList.FieldByName('BillTime').AsString);
     with Qry do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          if gi_VisitID > 0 then
          begin
               SQL.Add(' Select PAVI_DepId,(Select DEPT_DepName From HS_DEPT_Department where DEPT_DepId=PAVI_DepId) as DepName,');
               SQL.Add(' PAVI_DocId,(Select Doct_Desig||'' ''||DOCT_DocName From HS_DOCT_Doctor where DOCT_DocId=PAVI_DocId) as DocName');
               SQL.Add(' From HS_PAVI_PatientVisit where PAVI_PatientId='+IntToStr(gi_PatientID)+' and PAVI_PatientVisitId='+IntToStr(gi_VisitID)+' and PAVI_IsVisitCancel=''N''');
          end
          Else
          Begin
               SQL.Add(' Select DEPT_DepName From HS_Dept_Department where DEPT_DepID,'''' as DocName In (');
               SQL.Add(' Select PAVI_DepID From HS_PAVI_PatientVisit where PAVI_PatientVisitID In (Select Min(PAVI_PatientVisitID) From');
               SQL.Add(' HS_PAVI_PatientVisit where PAVI_PatientId='+IntToStr(gi_PatientID)+' and NVL(PAVI_DepID,0) > 0 and PAVI_IsVisitCancel=''N''))');
          End;
          Open;

          ls_FirstDepartment:=Qry.FieldByName('DepName').AsString;
          ls_DocName:=Qry.FieldByName('DocName').AsString;

          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add(' Select * from VW_HS_PATIENTMAIN');
          SQL.Add(' Where PatientID='+IntToStr(gi_PatientID));
          Open;

          ls_Phone:=Trim(FieldByName('PhoneNo').AsString);
          if ls_Phone='' then
               ls_Phone:=FieldByName('MobileNo').AsString;

          if Trim(FieldByName('DistrictName').AsString)<>'' then
          ls_Address:=FieldByName('DistrictName').AsString;

          if Trim(FieldByName('VdcName').AsString)<>'' then
          Begin
               if Trim(ls_Address)<>'' then
               ls_Address:=ls_Address+','+FieldByName('VdcName').AsString
               Else
               ls_Address:=FieldByName('DistrictName').AsString;
          End;

          if Trim(FieldByName('WardNo').AsString)<>'' then
          Begin
               if Trim(ls_Address)<>'' then
               ls_Address:=ls_Address+'-'+FieldByName('WardNo').AsString
               Else
               ls_Address:=FieldByName('WardNo').AsString;
          End;

          if Trim(FieldByName('Address').AsString)<>'' then
          Begin
               if Trim(ls_Address)<>'' then
               ls_Address:=ls_Address+','+FieldByName('Address').AsString
               Else
               ls_Address:=FieldByName('Address').AsString;
          End;
     end;

     FormRoboPreview := TFormRoboPreview.Create(Nil);
     With FormRoboPreview.PrintPreviewRoboPrint do
     begin
          FormRoboPreview.WindowState:=wsMaximized;
          IF CheckBoxPreview.Checked=False Then
               DirectPrint:=True
          Else
               DirectPrint:=False;

          PaperType:= pCustom;
          FastPrint:=True;
          Units:= mmPixel;
          Zoom:=100;
          PaperHeight:=144; //in pixel
          PaperWidth:=361;//2500;
          BeginDoc;
          With canvas do
          begin
               GetPrinterOptions;
               UpdateAnnotation;
               {***********************************************************}
               {                         Page header                       }
               {***********************************************************}
               PrintPageHeader;
               {***********************************************************}
               {                       column header                       }
               {***********************************************************}

               PrintColumnHeader;

               y:=2;
               //Font.Name :='Verdana';
               Font.Size:=10;
               Font.Style:=[];
               TextOut(X+30,y+14,'Date/Time :'+TodaysDate+'('+TodaysDateAD+')'+' / '+TodaysTime);
               Inc(y,20);
               Font.Style:=[fsBold];
               TextOut(X+30,y+10,ls_DocName);

               Inc(y,17);

               Font.Style:=[];
               TextOut(X+30,y+10,'Hospital No');
               Font.Style:=[fsBold];
               TextOut(X+110,y+10,': '+IntToStr(gi_PatientID));

               Font.Style:=[];

               Inc(y,17);
               TextOut(X+30,y+10,'Name       ');
               Font.Style:=[fsBold];
               TextOut(X+110,y+10,': '+Qry.FieldByName('Title').AsString+'- '+Qry.FieldByName('PatientName').AsString);
               Font.Style:=[];
               Inc(y,17);
               ls_Gender:=Copy(Qry.FieldByName('Gender').AsString,1,1);
               TextOut(X+30,y+10,'Age/Sex    ');
               TextOut(X+110,y+10,': '+Qry.FieldByName('CURRENTAGE').AsString+'/'+ls_Gender+'          '+ls_Phone);
               //TextOut(X+200,y+10,Qry.FieldByName('username').AsString);

               //Inc(y,20);

               TextOut(X+30,y+27,'Address    ');
               TextOut(X+110,y+27,': '+ ls_Address);
               //Inc(y,19);
               ///TextOut(X+30,y+10,'Address    ');
               Inc(y,19);
          end;
          EndDoc;
     end;

     if CheckBoxPreview.Checked=True then
     FormRoboPreview.ShowModal;
end;


END.
