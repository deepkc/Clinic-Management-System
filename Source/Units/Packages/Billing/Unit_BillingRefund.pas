unit Unit_BillingRefund;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate, Unit_Master, PatientClass,
     Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Spin, DBCtrls, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,
     DB, SMDBGrid,Unit_MasterFxnFraction,Unit_QrDepositSlip_Manipal,Unit_QrSticker, Unit_otherpatient;

type
     Tfrom_BillingRefund = class(TForm)
          Panel2: TPanel;
          Panel1: TPanel;
          Label4: TLabel;
          CB_Preview: TCheckBox;
          Label6: TLabel;
          Se_NoofPrint: TSpinEdit;
          BB_Save: TBitBtn;
          CheckBox9: TCheckBox;
          GroupBox4: TGroupBox;
          SP_PatientSearch: TSpeedButton;
          Label1: TLabel;
          Label10: TLabel;
          Le_HosNo: TLabeledEdit;
          CB_Scheme: TCheckBox;
          Table_FinalBill: TOraTable;
          DS_FinalBill: TDataSource;
          DS_RefDoc: TDataSource;
    Query_ReferingDocDept: TOraQuery;
          DS_Scheme: TDataSource;
          QueryScheme: TOraQuery;
          DS_Community: TDataSource;
          QueryCommunity: TOraQuery;
          DBLCB_RefDocCode: TDBLookupComboBox;
          DBLCB_Scheme: TDBLookupComboBox;
          DBGrid_Search: TDBGrid;
          Table_TempBilling: TOraTable;
          DS_Tempbilling: TDataSource;
          DS_Testname: TDataSource;
          Query_TestName: TOraQuery;
          Query_TempBilling: TOraQuery;
          Query_FinalBill: TOraQuery;
          BB_Reprint: TSpeedButton;
          Panel_Search: TPanel;
          cb_extended: TCheckBox;
          CheckBox3: TCheckBox;
          CB_DepCode: TComboBox;
          Edit_Doccode: TEdit;
          Edit_TestName: TEdit;
          Edit_UnitPrice: TEdit;
          Edit_Qty: TEdit;
    Edit_SvrTaxEntry: TEdit;
          Edit_Disper: TEdit;
    Edit_DisAmount: TEdit;
          BB_Close: TBitBtn;
          Timer1: TTimer;
          BB_TestSelection: TBitBtn;
          CB_Send2Web: TCheckBox;
          CB_Send2Sms: TCheckBox;
          CB_Send2Email: TCheckBox;
          Shape2: TShape;
          Label16: TLabel;
          Cb_Qty: TCheckBox;
          Label3: TLabel;
          lbl_deposit: TLabel;
    SPB_AddItem: TSpeedButton;
          DBGrid1: TSMDBGrid;
    Query_PackageTest: TOraQuery;
    Panel_BloodBagRefund: TPanel;
    Label14: TLabel;
    Edit_BloodBagCharge: TEdit;
    Label18: TLabel;
    BitBtn_SetCharge: TBitBtn;
    BitBtn_Close: TBitBtn;
    Query_TempProcess: TOraQuery;
    DS_RATETYPE: TDataSource;
    Query_RateType: TOraQuery;
    CB_BILLTYPE: TDBLookupComboBox;
    Query_Process: TOraQuery;
    Query_SubProcess: TOraQuery;
    Table_Fraction: TOraTable;
    Query_MutualDocForShare: TOraQuery;
    DBGrid_Doctor: TDBGrid;
    Query_GetFrctInvoPerson: TOraQuery;
    DS_GetFrctInvoPerson: TDataSource;
    SPB_DOCInvolvement: TSpeedButton;
    Cb_Label: TCheckBox;
    Le_MemberNo: TLabeledEdit;
    Label22: TLabel;
    Edit_BloodBagQty: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label_BagQty: TLabel;
    Label_BagAmt: TLabel;
    Label26: TLabel;
    Label_IPNO: TLabel;
    SpeedButton2: TSpeedButton;
    FontDialog1: TFontDialog;
    Label9: TLabel;
    Edit_Discount: TEdit;
    Label27: TLabel;
    Edit_SvrTax: TEdit;
    Label_DisPer: TLabel;
    Label29: TLabel;
    lbl_SvrTax: TLabel;
    CB_ViewOldBill: TCheckBox;
    CB_ViewOldTest: TCheckBox;
    GroupBox1: TGroupBox;
    Le_SubTotal: TLabeledEdit;
    Label7: TLabel;
    Le_Discount: TLabeledEdit;
    Le_Disper: TEdit;
    CB_DirectDiscountSet: TCheckBox;
    Le_NetTotal: TLabeledEdit;
    Le_SvrTax: TLabeledEdit;
    Le_GrandTotal: TLabeledEdit;
    le_TotalDeposit: TLabeledEdit;
    Le_NetBalance: TLabeledEdit;
    CB_PayType: TComboBox;
    Label8: TLabel;
    Le_Payment: TLabeledEdit;
    GB_PaymentInfo: TGroupBox;
    Label2: TLabel;
    Label19: TLabel;
    Lbl_TotalItems: TLabel;
    Label21: TLabel;
    Lbl_BillNo: TLabel;
    lbl_BenefitPackage: TLabel;
    Label11: TLabel;
    Label_DepositNo: TLabel;
    Label20: TLabel;
    Label_CoPaymentAmt: TLabel;
    Shape1: TShape;
    Image_Main: TImage;
    Label5: TLabel;
    Edit_AddDeposit: TEdit;
    Cb_DeductFromDeposit: TCheckBox;
    Edit_MemberDeposit: TEdit;
    Lbl_GrandTotal: TLabel;
    Label15: TLabel;
    lbl_DepositBalance: TLabel;
    Label12: TLabel;
    lbl_NetBalance: TLabel;
    Label13: TLabel;
    lbl_TenderAmt: TLabel;
    Label17: TLabel;
    Lbl_ReturnAmt: TLabel;
    GB_OldTest: TGroupBox;
    GB_OldBill: TGroupBox;
    Le_Remarks: TLabeledEdit;
    DBGrid_OldBill: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid_OldTest: TDBGrid;
    Query_OldBill: TOraQuery;
    DS_OldBill: TDataSource;
    Query_OldTest: TOraQuery;
    DS_OldTest: TDataSource;
    Label_MeicarePatient: TLabel;
    Query_BillList: TOraQuery;
    DS_BillList: TDataSource;
    Query_TestList: TOraQuery;
    DS_TestList: TDataSource;
    BitBtn_BarCode: TBitBtn;
    BB_RePrintBill: TBitBtn;
    CheckBox1: TCheckBox;
    BB_RefundBill: TBitBtn;
    BitBtn_RePrintIPAdvanceReceipt: TBitBtn;
    BitBtn_RePrintIPBarCode: TBitBtn;
    BB_CancelService: TBitBtn;
    Shape3: TShape;
    RB_OPBILL: TRadioButton;
    RB_IPBILL: TRadioButton;
    DBGrid2: TDBGrid;
    DS_OldBillList: TDataSource;
    Query_OldBillList: TOraQuery;
          procedure CB_SchemeClick(Sender: TObject);
          Procedure BB_SaveClick(Sender: TObject);
          procedure Edit_TestNameChange(Sender: TObject);
          procedure Edit_TestNameExit(Sender: TObject);
          procedure Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_QtyKeyPress(Sender: TObject; var Key: Char);
          procedure SPB_AddItemClick(Sender: TObject);
          procedure DBGrid_SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_QtyEnter(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_TestSelectionClick(Sender: TObject);
          procedure Timer1Timer(Sender: TObject);
          procedure BB_ReprintClick(Sender: TObject);
          procedure Le_PaymentKeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure cb_extendedClick(Sender: TObject);
          procedure Le_PaymentExit(Sender: TObject);
          procedure Edit_TestNameKeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid_SearchDblClick(Sender: TObject);
          procedure Le_DiscountExit(Sender: TObject);
          procedure Le_DisperExit(Sender: TObject);
          procedure bb_CustomerViewClick(Sender: TObject);
          procedure SB_EditClick(Sender: TObject);
          procedure CB_PayTypeChange(Sender: TObject);
          procedure CB_PayTypeKeyPress(Sender: TObject; var Key: Char);
          procedure Le_HosNoKeyPress(Sender: TObject; var Key: Char);
          procedure Le_PaymentKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Cb_DeductFromDepositClick(Sender: TObject);
          procedure Le_PaymentChange(Sender: TObject);
          procedure Le_DiscountKeyPress(Sender: TObject; var Key: Char);
          procedure Le_DisperKeyPress(Sender: TObject; var Key: Char);
          procedure Le_HosNoExit(Sender: TObject);
          procedure Edit_UnitPriceKeyPress(Sender: TObject; var Key: Char);
          procedure CB_PreviewClick(Sender: TObject);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure DBLCB_RefDocCodeKeyPress(Sender: TObject; var Key: Char);


    procedure Edit_BloodBagChargeKeyPress(Sender: TObject; var Key: Char);
    procedure CalculateBloodTaxDiscount;

    procedure BitBtn_SetChargeClick(Sender: TObject);
    procedure CB_BILLTYPEClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit_DisperKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_SchemeClick(Sender: TObject);
    procedure Edit_DoccodeChange(Sender: TObject);
    procedure Edit_DoccodeKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_DoccodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_BloodBagQtyKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_BloodBagQtyExit(Sender: TObject);
    procedure Edit_BloodBagChargeExit(Sender: TObject);
    procedure Edit_DisperExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CB_ViewOldBillClick(Sender: TObject);
    procedure CB_ViewOldTestClick(Sender: TObject);
    procedure BitBtn_BarCodeClick(Sender: TObject);
    procedure BB_RePrintBillClick(Sender: TObject);
    procedure BitBtn_RePrintIPBarCodeClick(Sender: TObject);
    procedure BitBtn_RePrintIPAdvanceReceiptClick(Sender: TObject);
    procedure BB_RefundBillClick(Sender: TObject);
    procedure RB_OPBILLClick(Sender: TObject);
    procedure RB_IPBILLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure Query_OldBillListAfterOpen(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
     private
          pf_TestPrice, pf_Dis, pf_SvrTax, pf_Qty, pf_TotalPrice, pf_disper, pf_discount, pf_DiscountTotal, pf_Total, pf_subtotal,
            pf_grandtotal, pf_SvrTaxTotal, pf_Payment, pf_NetTotal, pf_Return, pf_Deposit, pf_AdvancRefund,pf_balance, pf_MemberDeposit, Pf_TotalDeposit,
            Pf_FinalBillDiscount, Pf_FinalBillDisPer, Pf_DepositDeducted,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
          pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL,
          pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE: Double;
          pi_TotItems, pi_TotalItems, count: Integer;

          Pi_CommunityID, Pi_SchemeID: Integer;

          pi_MaxSaleMasterId, pi_MaxReturnMasterId,pi_InpatientId: Integer;

          pf_PercentageAmt, pf_CopayAmts: Double;

          ps_isCopaymentitem, ps_SampleNo,Ps_TempPath : string;

          Pi_CheckSum: Integer;

          Pb_NoDiscount, pb_MutualDocForShare: Boolean;

          pb_IsIndoorPatient, pb_BloodBagRefund: Boolean;

          ps_PatientTypeCode : String;
          Arr_SampleNo:Array of String;

          pb_IslabDep: Boolean;

          pb_IsMedicarePatient : String;


          ps_FinalBillNo, ps_RefBillNo, ps_DepositBillNo: String;

          Pb_ServiceBillMasterExist, pb_IsAdvanceExist: Boolean;
          pb_isdelete: Boolean;
          pb_IsFinalSelectedTestName: Boolean;
          ps_LoadedTestID, ps_BillType, Ps_TodaysDate, Ps_TodaysTime: String;
          Ps_HospitalBillNo,Ps_XrayBillNo,Ps_CtScanBillNo:string;
          { Private declarations }
          Procedure LoadBill;
          Procedure LoadMedicineCharge;
          Procedure UpdatePharmacyTable;
          Procedure LoadImage;


          procedure CreateTableTempFraction;

          procedure SaveServiceBill_Detail;
          Function SaveServiceBill: Boolean;
          Function SaveFinalBill: Boolean;
          procedure SaveFinalBill_Detail;
          procedure CheckServiceBillMaster;
          Procedure SaveDepositDetail(DrAmount, CrAmount: Double; DepositType, ReferenceType, Remarks: String);
          Procedure UpdateDepositDetail;
          Procedure LoadTestIDInVariable(TestNameID: string);
          Procedure RemoveTestNameIDInVariable(TestNameID: String);
          Procedure CalculateSum;
          Procedure CalculateLabels;
          procedure ReCalculateSumAmtAfterDeleteItem;
          Function GetMax_TempSno: Integer;
          Procedure UpdateCustomerPreview;
          Procedure ToogleCustomerView;
          Procedure CalculatePayment;
          Procedure SaveDepositData;
          Procedure SaveInvAdvanceDeposit(DrAmount, CrAmount :Double; DepositRemarks : String);
          Procedure PrintDepositSlip;
     public
          ProgressStatus, Pi_ClinicalDepId: Integer;
          Pb_IsPathoDep, pb_PharmacyRefundOnly: Boolean;
          { Public declarations }
          Function SaveBill(): Boolean;
          Procedure ClearCustomerPreview;
          Procedure PrintBill(CB_Preview: TCheckBox; NoOfPrint : Integer);
          Procedure LoadServiceWiseFraction(TestNameCode,TNCategoryCode:String; UnitTestCost,Qty:Double; DepId,TestNameId:Integer);
          Procedure SaveDoctorFraction;
          Procedure Mutually_Share_Fraction(doccode,ServiceType:string);
          Procedure Display_Frct_Involve_Person(IsFractionableItem,TestNameCode : string);

          Function GetPharmacyCost:Double;
          procedure GetReferralDocDepartment;
          procedure ReprintSticker(BillNo: String; CBPreview : TCheckBox);
          procedure CheckCoPaymentItem (TestCodeId:Integer; out IsCoPaymentitems:String);
          Procedure GetCoPaymentAmt;
          Procedure SaveCoPayReceipt;
          Procedure GetIPBasicInfo;
          Procedure ResetAllHistoryForNextNewBill;

          Procedure CreateTableFinalBill;
          procedure CreateTableTempBilling;
          procedure EnabledDisabledSearchField(Status : String);
     end;

var
from_BillingRefund :Tfrom_BillingRefund;

implementation

uses Unit_BillingParent, Unit_QrBill, Unit_QRDischargeBill, Unit_TestList, Unit_CustomerMonitor, Unit_QrDepositSlip, Unit_BillDetail,
  Unit_DrInvolveInOperation, Unit_QrBill_Manipal;
{$R *.dfm}
{ TFrame_Billing }

procedure Tfrom_BillingRefund.BB_CloseClick(Sender: TObject);
begin
     Form_BillingParent.BB_CloseClick(Sender);
end;

procedure Tfrom_BillingRefund.bb_CustomerViewClick(Sender: TObject);
begin
     ToogleCustomerView;
end;

procedure Tfrom_BillingRefund.BB_RefundBillClick(Sender: TObject);
begin
     if Copy(Query_BillList.FieldByName('BillNo').AsString,1,2)='TP' then
     begin
          gi_BillCase:=1;
          Gs_TempBillno:=Query_BillList.FieldByName('BillNo').AsString;
          LoadBill;
     end
     else
     begin
          gi_BillCase:=6;
          Gs_TempBillno:=Query_BillList.FieldByName('BillNo').AsString;
          LoadBill;
     end;

end;

procedure Tfrom_BillingRefund.BB_RePrintBillClick(Sender: TObject);
begin
     Gs_BillNo := Query_BillList.FieldByName('BillNo').AsString;
     gi_PatientID :=Query_BillList.FieldByName('PatientId').AsInteger;
     if (Copy(Gs_BillNo,1,2)='CS') or (Copy(Gs_BillNo,1,2)='ME') or (Copy(Gs_BillNo,1,2)='CR') then
     begin
          gi_BillCase:=2;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     Else if (Copy(Gs_BillNo,1,2)='TP') then
     begin
          gi_BillCase:=0;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     else if (Copy(Gs_BillNo,1,2)='RF') then
     begin
          gi_BillCase:=7;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     else if Copy(Gs_BillNo,1,2)='DP' then
     begin
          PrintDepositSlip;
     end;
     Gs_BillNo:='';
     gi_PatientID:=0;
end;

procedure Tfrom_BillingRefund.BB_ReprintClick(Sender: TObject);
begin
     if Trim(Le_HosNo.Text)='' then
     begin
          MessageDlg('Please put hospital no.',mtWarning,[mbok],0);
          Le_HosNo.SetFocus;
          Exit;
     end;

     Gb_IsReprint := true;
     if gi_BillCase = 6 then
     begin
          PrintBill(CB_Preview,1);;
          gi_BillCase := 2;
          Gb_RefundBillExists := true;
          PrintBill(CB_Preview,1);
          gi_BillCase := 6;
     end
     else if (gi_BillCase in [2, 4]) and (RefundBillExists(Gs_BillNo)) then
     begin
          Gb_RefundBillExists := true;
          // gi_BillCase := 6;
          // PrintBill;
          gi_BillCase := 2;
          PrintBill(CB_Preview,1);
     end
     else
          PrintBill(CB_Preview,1);
end;

Procedure Tfrom_BillingRefund.BB_SaveClick(Sender: TObject);
var
     lf_a, lf_b: Double;
     Key: Char;
     MyTable: TOraTable;
     MytableName: String;
     Ps_RefDocCode: String;
begin

     SaveBill;
     Exit;
     {if (not gb_IsBillingUser) and (gi_BillCase=2) then
     begin
          ShowMessage('Not authourized for billing');
          Exit;
     end;}
     // gi_billcase
     // 0--> Service Bill Entry/Save
     // 1--> Service Bill Load
     // 2--> Service Bill to  Final Bill
     // 3--> Final Bill Entry
     // 4--> Final Bill Load
     // 5-->Deposit bill
     // 6-->Refund bill entry

     // if Pi_CheckSum <> 0 then
     // begin
     // ShowMessage('Cannot Save Multiple times');
     // exit;
     // end;
     //
     // Inc(Pi_CheckSum);

     IF IsRegisteredHospitalNo(gi_PatientID)=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+IntToStr(gi_PatientID)+' )',
          mtWarning,[mbok],0);
          //MakeBlankPatientInfo;
          ResetAllHistoryForNextNewBill;
          Exit;
     End;

     if Trim(Le_HosNo.Text)='' then Le_HosNo.Text:='0';

     if StrToInt(Le_HosNo.Text)<>gi_PatientID then
     begin
          MessageDlg('Hospital No Mismatch ! The displaying no is " '+Le_HosNo.Text+' " but you are doing billing for this no " '+IntToStr(gi_PatientID)+' ".',
          mtWarning,[mbOK],0);
          Exit;
     end;


     if (gs_BillType='IPBILL') and (gi_BillCase<>1) then
     Begin
          if IsInpatient(gi_PatientID)=False then
          begin
               pi_InPatientId:=0;
               gi_InPatientId:=0;
               Label_IPNO.Caption:=IntToStr(gi_InpatientId);
               MessageDlg('Sorry this is not admitted patient.',mtWarning,[mbok],0);
               Exit;
          end;
          Label_IPNO.Caption:=IntToStr(gi_InpatientId);


          if ((QueryScheme.FieldByName('SCHE_ISIPBILLCRFACILITY').AsString='N') Or (Trim(DBLCB_Scheme.Text)='')) and (CB_BILLTYPE.KeyValue='GEN') then
          begin
               if Trim(Le_Payment.Text)='' then Le_Payment.Text:='0';
               (*if StrToFloat(Le_Payment.Text)=0 then
               begin
                    MessageDlg(' For General Patient Advance Amount is Compulsory.',mtWarning,[mbOK],0);
                    Le_Payment.SetFocus;
                    Exit;
               end;*)

               if Abs((pf_grandtotal-StrToFloat(Le_Payment.Text))) >=0.5   then
               begin
                    MessageDlg(' For General Patient Advance Amount Should be Equal to Grand Total Amount.',mtWarning,[mbOK],0);
                    Le_Payment.SetFocus;
                    Exit;
               end;
          end;
     End;



     (*if Gs_PatientName = '' then
     begin
          MsgBox(1028, 0, '', '', '');
          exit;
     end;*)

     if gi_BillCase = 0 then
     begin
          if (DBLCB_RefDocCode.KeyValue = Null) or (Trim(DBLCB_RefDocCode.Text) = '') then
          begin
               //ShowMessage('Please Choose Doctor');
               MessageDlg('You must have to select referral department.',mtwarning,[mbok],0);
               exit;
          end;
     end;

     if (gi_BillCase = 1) or (gi_BillCase=6) then
     begin
          if Trim(Le_Remarks.Text)='' then
          begin
               MessageDlg('You must have to mention refund or cancel reason',mtwarning,[mbok],0);
               Le_Remarks.SetFocus;
               exit;
          end;
     end;


     if (DBLCB_Scheme.KeyValue=22) and (pf_CopayAmts > 0) then //22 - Medicare
     Begin
          if Trim(Le_Payment.Text)='' then
          Le_Payment.Text:='0.0';
          IF Abs(StrToFloat(Le_Payment.Text)-pf_CopayAmts) > 0.5 Then
          Begin
               MessageDlg('Sorry ! Payment Amount Should Be Match With The Co-Pay Amount : ' +Label_CoPaymentAmt.Caption,mtWarning,[MbOk],0);
               Le_Payment.SetFocus;
               Exit;
          end;
     End;

     if Trim(Le_Discount.Text)='' then Le_Discount.Text:='0.00';
     if (pf_DiscountTotal > 0) and (Trim(DBLCB_Scheme.Text)='') then
     begin
          MessageDlg('Please put discount scheme for discount facility.',mtInformation,[mbOK],0);
          DBLCB_Scheme.SetFocus;
          Exit;
     end;




     if Trim(DBLCB_RefDocCode.Text)<>'' then
          Ps_RefDocCode := DBLCB_RefDocCode.KeyValue
     else
          Ps_RefDocCode := '';

     if gi_BillCase in [2, 3] then
     begin
          MyTable := Table_FinalBill;
          MytableName := 'FinalBill.db';
     end
     else if gi_BillCase in [0, 1] then
     begin
          MyTable := Table_TempBilling;
          MytableName := 'TempBilling.db';
     end;



     if gi_BillCase = 3 then
     begin
          Pf_FinalBillDiscount := StrToFloat(StringReplace(Le_Discount.Text, ',', '', [rfReplaceAll]));
          // Pf_finalbilldiscount variable added cuz pf_discount:=0 on load
          if Trim(Le_Disper.Text)='' then Le_Disper.Text:='0';
          Pf_FinalBillDisPer := StrToFloat(Le_Disper.Text);
     end;

     IF Not(MessageDlg('Are you ready to do billing ?',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
     Exit;

     Ps_TodaysDate:=TodaysDate;
     Ps_TodaysTIme:=TodaysTime;

     if pb_isdelete then
     begin
          if gi_BillCase in [1, 3] then
          begin
               Try
                    DM_Hospital.DB.StartTransaction;
                    with MyTable do
                    begin
                         Close;
                         Open;
                         while not eof do
                         begin
                              if FieldByName('Status').AsString = 'C' then
                                   CancelServiceTest(MyTable.FieldByName('ServiceBillDetailId').AsInteger,0,Le_Remarks.Text);
                              Next;
                         end;
                    end;

                    if (pf_AdvancRefund > 0) Then//and (Gs_ Like 'TP%') then
                    Begin
                         gs_BillNo:=StringReplace(gs_TempBillNo,'''','',[rfReplaceAll]);
                         SaveInvAdvanceDeposit(0,pf_AdvancRefund,Le_Remarks.Text);
                         Label_DepositNo.Caption:=gs_BillNo;
                         Label_DepositNo.Visible:=True;
                         Label11.Visible:=True;
                    End
                    Else
                    Begin
                         Label_DepositNo.Visible:=False;
                         Label11.Visible:=False;
                    End;

                    ShowDoneMessage;
                    DBGrid1.OnKeyDown := nil;
                    // Form_BillingParent.OnKeyDown := nil;
                    DM_Hospital.DB.Commit;
               Except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not Saved');
                    exit;
               End;

               if pf_AdvancRefund >0 then
               PrintDepositSlip;

          end
          else if gi_BillCase = 6 then
          begin
               ps_FinalBillNo := Gs_BillNo;
               try
                    DM_Hospital.DB.StartTransaction;
                    with Table_FinalBill do
                    begin
                         Close;
                         Open;
                         Gs_BillNo := GetNextBillNo('RF', 'HS_REDE_RefundDetail','REDE_REFUNDBILLNO');
                         while not eof do
                         begin
                              if (FieldByName('Status').AsString = 'R') and (FieldByName('RefundbillNo').AsString = '') then
                              begin
                                   if Table_FinalBill.FieldByName('TestNameCode').AsString<>'ONE001' then
                                   SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,0,0,0,0,Le_Remarks.Text,'N')
                                   Else
                                   Begin
                                        (*SaveRefundDetail(BillDetailID, RefundQty,RefundAmount,RefundVatAmt,RefundDiscount: Integer;
                                                  RefundRemarks,IsBloodRefund : String);*)
                                        IF StrToFloat(Edit_BloodBagQty.Text) > 0 Then
                                        SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,StrToFloat(Edit_BloodBagQty.Text),StrToFloat(Edit_BloodBagCharge.Text),
                                                            StrToFloat(Edit_Discount.Text),StrToFloat(Edit_SvrTax.Text),Le_Remarks.Text,'Y')
                                        Else
                                        SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,0,0,0,0,Le_Remarks.Text,'N');
                                   End;

                                   // CancelFinalTest(Table_FinalBill.FieldByName('BillDetailID').AsInteger);

                                   // CancelFinalTest(Table_FinalBill.FieldByName('BillDetailID').AsInteger);
                                   // save refund fraction

                                   if gs_ISFractionSharingActive='Y' then
                                   Begin
                                        (*with Qry do
                                        begin
                                             Close;
                                             DatabaseName:=gs_DatabaseName;
                                             SQL.Clear;
                                             SQL.Add('select * from fractiondetail where Billdetailid='+inttostr(Table_FinalBill.FieldByName('BillDetailID').AsInteger));
                                             Open;
                                             while not Qry.Eof  do
                                             begin
                                                  SaveFractionRefunddetail(Qry.FieldByName('TestNameCode').AsString,Qry.FieldByName('DocCode').AsString,
                                                       Qry.FieldByName('Isoperation').AsString,Qry.FieldByName('Ischargedivide').AsString,Qry.FieldByName('Isaddlumpsum').AsString,
                                                       Qry.FieldByName('Isfractionpropwithdisper').AsString,'N',Qry.FieldByName('Qty').AsFloat, Qry.FieldByName('DisPer').AsFloat,
                                                       Qry.FieldByName('UnitTestCost').AsFloat,Qry.FieldByName('UnitTestCost').AsFloat,
                                                       0, gf_TDSPercent, Qry.FieldByName('FractionAmount').AsFloat,  Qry.FieldByName('FractionRate').AsFloat,0, 0,
                                                       Qry.FieldByName('TestNameId').AsInteger,gi_RefundDetailID,Qry.FieldByName('DepId').AsInteger,
                                                       Qry.FieldByName('PatientId').AsInteger,0,Qry.FieldByName('DocId').AsInteger,gi_UserID,gi_UserID ,
                                                       Qry.FieldByName('PositionWiseFractionId').AsInteger,Qry.FieldByName('FractionId').AsInteger,Qry.FieldByName('FractionDetailId').AsInteger,
                                                       TodaysDate,Gs_BillNo,'B',Qry.FieldByName('PayType').AsString,'','',TodaysDate,
                                                       TodaysTime,TodaysDate,'',gs_MacID);
                                                       Qry.next;
                                             end;
                                        end;*)
                                   End;
                              end;
                              Next;
                         end;
                    end;
                    DecreaseDocReferralCount(Ps_RefDocCode);
                    ps_RefBillNo := Gs_BillNo;
                    LoadBill;
                    ShowDoneMessage;
                    DM_Hospital.DB.Commit;
               except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not saved');
                    exit;
               end;
               // if MsgBox(1009, 1, '', '', '') then
               //if MessageDlg('Do you want to Print ?',mtConfirmation,[mbyes,MbNo],0)=mrYes then
               //begin
                    Gs_BillNo := ps_RefBillNo;
                    PrintBill(CB_Preview,1);
                    gi_BillCase := 2;
                    if MessageDlg('Are you sure to print original bill ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                    Begin
                         Gb_RefundBillExists := true; // Print Invoice Bill with Refund Information
                         Gs_BillNo := ps_FinalBillNo;
                         PrintBill(CB_Preview,1);
                         Gs_BillNo := ps_RefBillNo;
                    End;
                    gi_BillCase := 6;
               //end;
          end;
          (* Self.Parent.SendToBack;
            FreeAndNil(Self);
            FrameCleared := true; *)
          LoadBill;
          exit;
     end;
     if (gi_BillCase = 0) then
     begin
          Table_TempBilling.Close;
          Table_TempBilling.Open;
          if Table_TempBilling.Recordcount = 0 then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               exit;
          end;

          pb_IsIndoorPatient := False;
          if IsInpatient(gi_PatientID) then
          Begin
               Pi_ClinicalDepId := gi_ClinicalDepId;
               ProgressStatus := 2;
               pb_IsIndoorPatient := true;
               ps_BillType:='IP';
          End
          else
          Begin
               Pi_ClinicalDepId := GetOPDCliniCalDepId(gi_PatientID);
               ProgressStatus := 1;
               pb_IsIndoorPatient := False;
               ps_BillType:='B';
          End;

          if not SaveServiceBill then
          begin
               ShowMessage('Bill not Saved');
               exit;
          end;

          //IncreaseVisitCount(gi_PatientID);
          // IncreaseDocReferralCount(Ps_RefDocCode);
          //SimulateKeyPress(Self.Parent.Handle, VK_F5);
          // Self.Parent.SendToBack;
          //if GetMonitorCount > 1 then
            //   Frame_Billing.ClearCustomerPreview;


          Lbl_BillNo.Visible:=True;
          Label21.Visible:=True;
          Lbl_BillNo.Caption:=ps_FinalBillNo;

          if Trim(ps_DepositBillNo)<>'' then
          Begin
               Label11.Visible:=True;
               Label_DepositNo.Visible:=True;
               Label_DepositNo.Caption:=ps_DepositBillNo;
          End;

          if pb_IslabDep then
          begin
               if Cb_Label.Checked=True then
               ReprintSticker(ps_FinalBillNo,CB_Preview);
          end;

          if MessageDlg('Do You Want to Print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          Begin
               gs_BillNo:=ps_FinalBillNo;
               PrintBill(CB_Preview,1);
          End;


          (*if Edit_AddDeposit.Text <> '' then
          begin
               Gs_BillNo := ls_DepositBillNo;
               PrintDepositSlip;
          end;*)
     end
     else if gi_BillCase in [2, 3] then
     begin
          Table_FinalBill.Close;
          Table_FinalBill.Open;
          if Table_FinalBill.Recordcount = 0 then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               exit;
          end;

          (*if CB_PayType.ItemIndex = 1 then
          begin
               if (CB_Scheme.Checked = False) or (DBLCB_Scheme.KeyValue < 0) then
               begin
                    count := 0;
                    MsgBox(1025, 0, '', '', '');
                    exit;
               end;
          end;*)

          if (Le_Payment.Text = '') and (CB_PayType.ItemIndex = 0) and (Edit_MemberDeposit.Text = '') then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               Le_Payment.SetFocus;
               exit;
          end;


          (*if (pf_Payment < pf_grandtotal) and (CB_PayType.ItemIndex = 0) then
          begin
               MessageDlg('Payment [Rs. ' + FormatFloat('#0,0.00', pf_Payment) + '] is Less than GrandTotal [Rs. ' + FormatFloat
                      ('#0,0.00', pf_grandtotal) + ']', mtInformation, [mbok], 0);
               Le_Payment.SetFocus;
               exit;
          end;*)

          (* if (pf_Payment < pf_grandtotal) and (CB_PayType.ItemIndex = 0) then
            begin // for deposit
            if MsgBox(1007, 1, 'Rs. ' + FormatFloat('#0,0.00', pf_Payment), 'Rs. ' + FormatFloat('#0,0.00', pf_grandtotal), '') then
            begin
            Try
            DM_Hospital.DB.StartTransaction;
            if gi_BillCase = 3 then
            begin
            GB_isDepositBill := false;
            SaveServiceBill_Detail;
            gi_BillCase := 2;
            LoadBill;
            end;
            GB_isDepositBill := true;
            SaveDepositDetail(pf_Payment, 0, 'ADVANCE', 'BILL', 'ADVANCE BILL');
            if Pf_DepositDeducted > 0 then
            SaveDepositDetail(0, Pf_DepositDeducted, 'DEPOSIT', lbl_BenefitPackage.Caption, 'DEPOSIT ADJUSTED');
            ShowDoneMessage;
            DM_Hospital.DB.Commit;
            Except
            DM_Hospital.DB.Rollback;
            ShowMessage('Bill not Saved');
            exit;
            End;
            end
            else
            begin
            count := 0;
            exit;
            end;
            end
            else *)
          begin
               if IsInpatient(gi_PatientID) then
               Begin
                    Pi_ClinicalDepId := gi_ClinicalDepId;
                    ProgressStatus := 2;
                    pb_IsIndoorPatient := true;
                    ps_BillType:='IP';
               End
               else
               Begin
                    Pi_ClinicalDepId := GetOPDCliniCalDepId(gi_PatientID);
                    ProgressStatus := 1;
                    pb_IsIndoorPatient := False;
                    ps_BillType:='B';
               End;

               Try
                    DM_Hospital.DB.StartTransaction;
                    GB_isDepositBill := False;
                    if gi_BillCase = 3 then
                    begin
                         SaveServiceBill_Detail;
                         gi_BillCase := 2;
                         LoadBill;
                         // pf_Dis := Pf_FinalBillDiscount;
                         // pf_disper := Pf_FinalBillDisPer;
                    end;
                    // if not SaveFinalBill then
                    // begin
                    // ShowMessage('Bill not Saved');
                    // exit;
                    // end;
                    SaveFinalBill_Detail;

                    if (pf_CopayAmts > 0)  then
                    Begin
                         SaveCoPayReceipt;

                         ps_FinalBillNo := Gs_BillNo;
                         SaveDepositData;
                         ps_DepositBillNo := Gs_BillNo;
                         Label21.Visible:=True;
                         Lbl_BillNo.Visible:=True;
                         Lbl_BillNo.Caption:=ps_FinalBillNo;
                    End;
                    ShowDoneMessage;
                    DM_Hospital.DB.Commit;
               except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not Saved');
                    exit;
               End;
               // ShowMessage('1');
          end;

          // if MsgBox(1009, 1, '', '', '') then
          begin

               Gs_BillNo := ps_FinalBillNo;

               if pb_IslabDep then
               begin
                    if Cb_Label.Checked=True then
                    ReprintSticker(ps_FinalBillNo,CB_Preview);
               end;

               Label21.Visible:=True;
               Lbl_BillNo.Visible:=True;
               Lbl_BillNo.Caption:=gs_BillNo;

               if MessageDlg('Do You Want to Print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
               Begin
                    PrintBill(CB_Preview,1);
                    (*if Edit_AddDeposit.Text <> '' then
                    begin
                         Gs_BillNo := ls_DepositBillNo;
                         PrintDepositSlip;
                    end;*)
               End;
          end;

          //IncreaseVisitCount(gi_PatientID);
          //IncreaseDocReferralCount(Ps_RefDocCode);
          //SimulateKeyPress(Self.Parent.Handle, VK_F5);

          //Self.Parent.SendToBack;
          // Form_BillingParent.Panel_Parent.SendToBack;
          //if GetMonitorCount > 1 then
            //   Frame_Billing.ClearCustomerPreview;
          //FreeAndNil(Self);
          //FrameCleared := true;
          //if gi_BillCase in [2, 3] then
            //   exit;
          // Frame_BillList.BB_RefreshClick(Sender);
          //ClearVariable;
          // Frame_BillList.Lbl_BillNo.Caption := Gs_BillNo;
          (*with Form_BillingParent do
          begin
               try
                    lbl_Hosno.Caption := IntToStr(gi_PatientID);
                    lbl_patientname.Caption := Gs_PatientName;
                    lbl_InpatientNo.Caption := IntToStr(gi_InPatientID);
               except

               end;
          end;*)
     end;
     case gi_BillCase of // Clearing Form for new service entry because form is not free
          0:
               begin
                    with Table_TempBilling do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'TempBilling.db';
                         EmptyTable;
                         Open;
                    end;
                    Table_TempBilling.Close;
                    Table_TempBilling.DatabaseName := ps_Temppath;
                    Table_TempBilling.Open;
               end;
          2, 3:
               begin
                    with Table_FinalBill do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'Finalbill.db';
                         EmptyTable;
                         Open;
                    end;
               end;
     end;
     ClearAll(Panel1);
     ps_LoadedTestID := '';
     pi_TotItems := 0;
     pi_TotalItems := 0;
     pf_TestPrice := 0;
     pf_SvrTax := 0;
     pf_Qty := 0;
     pf_TotalPrice := 0;
     pf_Total := 0;
     pf_subtotal := 0;
     pf_grandtotal := 0;
     pf_SvrTaxTotal := 0;
     pi_TotItems := 0;
     pf_discount := 0;
     pf_DiscountTotal := 0;
     pf_CopayAmts:=0;

     if Trim(ps_FinalBillNo)<>'' then
     begin
          Label21.Visible:=True;
          Lbl_BillNo.Visible:=True;
          Lbl_BillNo.Caption:=ps_FinalBillNo;
     end;

     if Trim(ps_DepositBillNo)<>'' then
     begin
          Label11.Visible:=True;
          Label_DepositNo.Visible:=True;
          Label_DepositNo.Caption:=ps_DepositBillNo;
     end;

     if gs_BillType='IPBILL' then
     CB_PayType.ItemIndex:=1
     Else
     CB_PayType.ItemIndex:=0;

     Cb_Label.Checked:=True;
     Le_HosNo.SetFocus;
end;

procedure Tfrom_BillingRefund.cb_extendedClick(Sender: TObject);
begin
     Edit_TestName.SetFocus;
end;


procedure Tfrom_BillingRefund.CB_PayTypeChange(Sender: TObject);
begin
     if CB_PayType.ItemIndex = 2 then
     begin
          CB_PayType.Color := clWebRed;
          Le_Payment.Enabled := False;
     end
     else
     begin
          CB_PayType.Color := clWindow;
          Le_Payment.Enabled := true;
     end;
end;

procedure Tfrom_BillingRefund.CB_PayTypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Le_Payment.Enabled then
               Le_Payment.SetFocus
          else
               Le_Remarks.SetFocus;
     end;

end;

procedure Tfrom_BillingRefund.CB_PreviewClick(Sender: TObject);
begin
     if CB_Preview.Checked then
          Gb_IsPreview := true
     else
          Gb_IsPreview := False;

end;

procedure Tfrom_BillingRefund.CB_SchemeClick(Sender: TObject);
begin
     (*if CB_Scheme.Checked = true then
     begin
          QueryScheme.Close;
          QueryScheme.Open;


          DBLCB_Scheme.Enabled := True;
          Edit_Disper.Color:=clWhite;
          Edit_Disper.ReadOnly:=False;

     end
     else
     begin
          DBLCB_Scheme.Enabled := False;
          DBLCB_Scheme.KeyValue:=-1;

          Edit_Disper.Text:='0';

          if gs_BillType='IPBILL' then
          CB_PayType.ItemIndex:=1
          else
          CB_PayType.ItemIndex:=0;

          Edit_Disper.Color:=clMenu;
          Edit_Disper.ReadOnly:=True;
     end;*)
end;

procedure Tfrom_BillingRefund.CB_ViewOldBillClick(Sender: TObject);
begin
     if CB_ViewOldBill.Checked=True then
     Begin
          if (Trim(Le_HosNo.Text)='') or (Le_HosNo.Text='0') then
          begin
               MessageDlg('Please Put Hospital No First.',mtWarning,[mbOK],0);
               Exit;
          end;

          CB_ViewOldTest.Checked:=False;
          GB_OldBill.Visible:=True;
          GB_OldBill.BringToFront;
          GB_OldTest.Visible:=False;
          GB_PaymentInfo.Visible:=False;


          if gs_BillType='OPBILL' then
          begin
               With Query_BillList do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select BIDE_BillNo BillNo,BIDE_BillDate BillDate,BIDE_PatientID PatientID,BIDE_BillBy BillBy,Sum(BIDE_Amount*BIDE_Qty) as Total,Sum(BIDE_VatAmt) as VatAmt,Sum(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100) as Discount,');
                    SQL.Add(' Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100)) as NetTotal,');
                    SQL.Add(' (Select USMA_UserName From HS_USMA_UserMain Where USMA_UserId=BIDE_BillBy) UserName');
                    SQL.Add(' From HS_BIDE_BillDetail');
                    SQL.Add(' where BIDE_PatientId='+Le_HosNo.Text+' and BIDE_BillType=''B'' and BIDE_Service Not In (''OPDBC01'',''BLUBC01'')');
                    SQL.Add(' Group By BIDE_BillNo,BIDE_BillDate,BIDE_BillBy,BIDE_PatientID');
                    SQL.Add(' Order by BIDE_BillNo Desc');
                    Open;
               End;
          end
          else
          begin
               With Query_BillList do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select SEBD_BillNo BillNo,SEBD_BillDate BillDate,SEBD_PatientID PatientId, SEBD_BillBy BillBy,Sum(SEBD_Amount*SEBD_Qty) as Total,Sum(SEBD_VatAmt) as VatAmt,Sum(SEBD_Amount*SEBD_Qty*SEBD_DisPer/100) as Discount,');
                    SQL.Add(' Sum((SEBD_Amount*SEBD_Qty)+SEBD_VatAmt-(SEBD_Amount*SEBD_Qty*SEBD_DisPer/100)) as NetTotal,');
                    SQL.Add(' (Select USMA_UserName From HS_USMA_UserMain Where USMA_UserId=SEBD_BillBy) UserName');
                    SQL.Add(' From HS_SEBD_ServiceBillDetail');
                    SQL.Add(' where SEBD_PatientId='+Le_HosNo.Text+' and SEBD_BillType=''IP''');
                    SQL.Add(' Group By SEBD_BillNo,SEBD_BillDate,SEBD_BillBy,SEBD_PatientID');
                    SQL.Add(' Order by SEBD_BillNo Desc');
                    Open;
               End;
          end;
     End
     else
     begin
          GB_PaymentInfo.Visible:=True;
          GB_PaymentInfo.BringToFront;
          GB_OldBill.Visible:=False;
          GB_OldTest.Visible:=False;
     end;
end;

procedure Tfrom_BillingRefund.CB_ViewOldTestClick(Sender: TObject);
begin
     if CB_ViewOldTest.Checked=True then
     Begin
          if (Trim(Le_HosNo.Text)='') or (Le_HosNo.Text='0') then
          begin
               MessageDlg('Please Put Hospital No First.',mtWarning,[mbOK],0);
               Exit;
          end;

          CB_ViewOldBill.Checked:=False;
          GB_OldBill.Visible:=False;
          GB_OldTest.Visible:=True;
          GB_OldTest.BringToFront;
          GB_PaymentInfo.Visible:=False;


          if gs_BillType='OPBILL' then
          begin
               With Query_TestList do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select BIDE_BillNo BillNo,BIDE_BillDate BillDate,BIDE_PatientID PatientID,BIDE_BillBy BillBy,Sum(BIDE_Amount*BIDE_Qty) as Total,Sum(BIDE_VatAmt) as VatAmt,Sum(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100) as Discount,');
                    SQL.Add(' Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100)) as NetTotal,');
                    SQL.Add(' (Select USMA_UserName From HS_USMA_UserMain Where USMA_UserId=BIDE_BillBy) UserName');
                    SQL.Add(' From HS_BIDE_BillDetail');
                    SQL.Add(' where BIDE_PatientId='+Le_HosNo.Text+' and BIDE_BillType=''B'' and BIDE_Service Not In (''OPDBC01'',''BLUBC01'')');
                    SQL.Add(' Group By BIDE_BillNo,BIDE_BillDate,BIDE_BillBy,BIDE_PatientID');
                    SQL.Add(' Order by BIDE_BillNo Desc');
                    Open;
               End;
          end
          else
          begin
               With Query_TestList do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select SEBD_BillNo BillNo,SEBD_BillDate BillDate,SEBD_PatientID PatientId, SEBD_BillBy BillBy,Sum(SEBD_Amount*SEBD_Qty) as Total,Sum(SEBD_VatAmt) as VatAmt,Sum(SEBD_Amount*SEBD_Qty*SEBD_DisPer/100) as Discount,');
                    SQL.Add(' Sum((SEBD_Amount*SEBD_Qty)+SEBD_VatAmt-(SEBD_Amount*SEBD_Qty*SEBD_DisPer/100)) as NetTotal,');
                    SQL.Add(' (Select USMA_UserName From HS_USMA_UserMain Where USMA_UserId=SEBD_BillBy) UserName');
                    SQL.Add(' From HS_SEBD_ServiceBillDetail');
                    SQL.Add(' where SEBD_PatientId='+Le_HosNo.Text+' and SEBD_BillType=''IP''');
                    SQL.Add(' Group By SEBD_BillNo,SEBD_BillDate,SEBD_BillBy,SEBD_PatientID');
                    SQL.Add(' Order by SEBD_BillNo Desc');
                    Open;
               End;
          end;

     End
     else
     begin
          GB_PaymentInfo.Visible:=True;
          GB_PaymentInfo.BringToFront;
          GB_OldBill.Visible:=False;
          GB_OldTest.Visible:=False;
     end;
end;

procedure Tfrom_BillingRefund.CheckServiceBillMaster;
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(nil);
     with Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select Count(SEBM_Billno)n from HS_SEBM_ServiceBillMaster Where SEBM_Billno=' + #39 + Gs_BillNo + #39);
          Open;
          if FieldByName('n').AsInteger > 0 then
               Pb_ServiceBillMasterExist := true
          else
               Pb_ServiceBillMasterExist := False;
     end;
     Qry.Free;
end;

procedure Tfrom_BillingRefund.ClearCustomerPreview;
begin
     with Form_CustomerMonitor do
     begin
          DBGrid1.DataSource := nil;
          lbl_patientid.Caption := '';
          lbl_patientname.Caption := '';
          Lbl_GrandTotal.Caption := '00.00';
          lbl_DepositBalance.Caption := '00.00';
          lbl_NetBalance.Caption := '00.00';
          Lbl_ReturnAmt.Caption := '00.00';
          lbl_TenderAmt.Caption := '00.00';
          Lbl_TotalItems.Caption := '00.00';
          Image_Main.Picture.Assign(nil);
     end;
end;

procedure Tfrom_BillingRefund.GetReferralDocDepartment;
begin
     if gi_HospitalId=562 then // 562 - Manipal
     begin
          With Query_ReferingDocDept do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add(' Select DEPT_DEPID ID,DEPT_DEPCODE CODE, Dept_DepName NAME From HS_DEPT_Department');
               SQL.Add(' Where DEPT_IsReferralDept=''Y''');
               SQL.Add(' Order by Dept_DepName');
               Open;
          End;
          Label4.Caption:='Ref. Dept.';
     end
     else
     Begin
          With Query_ReferingDocDept do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add(' Select Doct_DocId Id,DOCT_DOCCODE Code,DOCT_DOCNAME Name From HS_DOCT_DOCTOR');
               SQL.Add(' where DOCT_IsActive=''Y''');
               SQL.Add(' Order by DOCT_DOCNAME');
               Open;
          End;
          Label4.Caption:='Ref. Doc.';
     End;
end;

Procedure Tfrom_BillingRefund.GetIPBasicInfo;
Begin
     With Query_Process do
     Begin
          Close;
          sql.Clear;
          sql.Clear;
          sql.add(' Select * From  VW_HS_ADMNPATIENTCURRENTINFO where InpatientId='+IntToStr(pi_InPatientId));
          Open;
     End;

     DBLCB_RefDocCode.KeyValue:=Query_Process.FieldByName('CurDepId').AsInteger;
     //CB_BILLTYPE.KeyValue:=Query_Process.FieldByName('CurPatientTypeCode').AsString;
     gi_SchemeId:=Query_Process.FieldByName('SchemeId').AsInteger;
     gi_CommunityId:=Query_Process.FieldByName('CommunityId').AsInteger;

     if Trim(CB_BILLTYPE.KeyValue)='' then
     CB_BILLTYPE.KeyValue:='GEN';

     QueryScheme.Close;
     QueryScheme.Open;

     if Query_Process.FieldByName('SchemeId').AsInteger > 0 then
     Begin
          CB_Scheme.Checked:=True;
          DBLCB_Scheme.KeyValue:=Query_Process.FieldByName('SchemeId').AsInteger;
     End
     Else
     CB_Scheme.Checked:=False;

     gi_ClinicalDepId:=Query_Process.FieldByName('CurDepId').AsInteger;
     Pi_ClinicalDepId := Query_Process.FieldByName('CurDepId').AsInteger;
End;



procedure Tfrom_BillingRefund.CreateTableFinalBill;
Var
     Table: TOraTable;
begin
     Table := TOraTable.Create(nil);

     if FileExists(ps_Temppath + '\FinalBill.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'FinalBill.db';
               DeleteTable;
          end;
     end;

     with Table do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := 'FinalBill.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('SNO', ftInteger);
          FieldDefs.Add('DepID', ftInteger);
          FieldDefs.Add('PatientID', ftInteger);
          FieldDefs.Add('ServiceBillDetailID', ftInteger);
          FieldDefs.Add('BillDetailID', ftInteger);
          FieldDefs.Add('BillNo', ftString, 15);
          FieldDefs.Add('InPatientID', ftInteger);
          FieldDefs.Add('PatientTestID', ftInteger);
          FieldDefs.Add('DocCode', ftString, 10);
          FieldDefs.Add('TestNameCode', ftString, 32);
          FieldDefs.Add('TNCategoryCode', ftString, 32);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('TestPackageId', ftInteger);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestPrice', ftFloat);
          FieldDefs.Add('TestPriceAfterDiscount', ftFloat);
          FieldDefs.Add('TestPriceWithTax', ftFloat);
          FieldDefs.Add('SvrTax', ftFloat);
          FieldDefs.Add('Qty', ftFloat);
          FieldDefs.Add('QtyOld', ftFloat);
          FieldDefs.Add('TotalPrice', ftFloat);
          FieldDefs.Add('DisPer', ftFloat);
          FieldDefs.Add('Discount', ftFloat);
          FieldDefs.Add('NetTotal', ftFloat);
          FieldDefs.Add('PharmacyCost', ftFloat);
          FieldDefs.Add('CommunityID', ftInteger);
          FieldDefs.Add('SchemeID', ftInteger);
          FieldDefs.Add('RefDocCode', ftString, 10);
          FieldDefs.Add('Status', ftString, 1);
          FieldDefs.Add('RefundBillNo', ftString, 15);
          FieldDefs.Add('IsDiscountable', ftString, 1);
          FieldDefs.Add('IsVatable', ftString, 1);
          FieldDefs.Add('ISPACKAGETEST', ftString, 1);
          FieldDefs.Add('ISFractionableTest', ftString, 1);
          FieldDefs.Add('User', ftString, 32);
          FieldDefs.Add('ChargeType', ftString, 32);
          FieldDefs.Add('TestProgressStatus', ftInteger);
          FieldDefs.Add('BillDate', ftString, 10);
          FieldDefs.Add('BillTime', ftString, 12);
          FieldDefs.Add('DisplayOrder', ftInteger);
          FieldDefs.Add('DepType', ftString, 32);
          FieldDefs.Add('LabDepID', ftInteger);
          FieldDefs.Add('RateType', ftString, 5);
          FieldDefs.add('VerifiedBy', ftInteger);
          FieldDefs.Add('OrgBillCategory', ftString, 3);
          FieldDefs.Add('HOSPARTPER', ftString, 3);
          Fielddefs.add('IsCoPaymentItem',ftString,1);
          Fielddefs.add('CoPaymentItemPercent',ftFloat);
          CreateTable;
     end;

     with Table_FinalBill do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := 'FinalBill.db';
     end;
     Table.Free;
end;

procedure Tfrom_BillingRefund.CreateTableTempBilling;
Var
     Table: TOraTable;
begin
     Table := TOraTable.Create(nil);

     if FileExists(ps_Temppath + '\TempBilling.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'TempBilling.db';
               DeleteTable;
          end;
     end;
     with Table do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableType := ttDefault;
          TableName := 'TempBilling.db';
          FieldDefs.Clear;
          FieldDefs.Add('SNO', ftInteger);
          FieldDefs.Add('DepID', ftInteger);
          FieldDefs.Add('PatientID', ftInteger);
          FieldDefs.Add('InpatientID', ftInteger);
          FieldDefs.Add('PatientTestId', ftInteger);
          FieldDefs.Add('CommunityID', ftInteger);
          FieldDefs.Add('SchemeId', ftInteger);
          FieldDefs.Add('ServiceBillDetailID', ftInteger);
          FieldDefs.Add('TestNameID', ftInteger);
          FieldDefs.Add('TestPackageId', ftInteger);
          FieldDefs.Add('Doccode', ftString, 32);
          FieldDefs.Add('RefDoccode', ftString, 32);
          FieldDefs.Add('TestNameCode', ftString, 32);
          FieldDefs.Add('TNCategoryCode', ftString, 32);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestPrice', ftFloat);
          FieldDefs.Add('TestPriceWithTax', ftFloat);
          FieldDefs.Add('TotalPrice', ftFloat);
          FieldDefs.Add('Disper', ftFloat);
          FieldDefs.Add('Discount', ftFloat);
          FieldDefs.Add('Qty', ftFloat);
          FieldDefs.Add('QtyOld', ftFloat);
          FieldDefs.Add('SvrTax', ftFloat);
          FieldDefs.Add('NetTotal', ftFloat);
          FieldDefs.Add('Status', ftString, 1);
          FieldDefs.Add('DepType', ftString, 32);
          FieldDefs.Add('LabDepID', ftInteger);
          FieldDefs.Add('RateType', ftString, 5);
          FieldDefs.Add('ISPACKAGETEST', ftString, 1);
          FieldDefs.Add('ISFractionableTest', ftString, 1);
          FieldDefs.Add('OrgBillCategory', ftString, 20);
          FieldDefs.Add('HOSPARTPER', ftString, 20);
          Fielddefs.add('IsCoPaymentItem',ftString,1);
          Fielddefs.add('CoPaymentItemPercent',ftFloat);
          CreateTable;
          Open;
     end;

     if FileExists(ps_Temppath + '\TempTest.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'TempTest.db';
               DeleteTable;
          end;
     end;
     with Table Do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := 'TempTest.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('KeyValue', ftInteger);
          FieldDefs.Add('DepId', ftInteger);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('TestNameCode', ftString, 32);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestPrice', ftFloat);
          FieldDefs.Add('SvrTax', ftFloat);
          FieldDefs.Add('TotalPrice', ftFloat);
          CreateTable;
     end;
     with Table_TempBilling do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := 'Tempbilling.db';
     end;
     Table.Free;
end;

procedure Tfrom_BillingRefund.CreateTableTempFraction;
Var
     Table: TOraTable;
begin
     Table := TOraTable.Create(nil);
     if FileExists(ps_Temppath + '\ServiceWiseFraction.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'ServiceWiseFraction.db';
               DeleteTable;
          end;
     end;

     With Table do
     begin
          Close;
          databasename:=ps_Temppath;
          tablename:='ServiceWiseFraction.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('Sno',ftInteger);
          Fielddefs.add('InpatientId',ftInteger);
          Fielddefs.add('BillDetailId',ftInteger);
          Fielddefs.add('DepId',ftInteger);
          Fielddefs.add('TestNameId',ftInteger);
          Fielddefs.add('TestNameCode',ftstring,25);
          Fielddefs.add('DocCode',ftstring,8);
          Fielddefs.add('DocId',ftinteger);
          Fielddefs.add('DocName',ftstring,50);
          Fielddefs.add('Description',ftstring,50);

          Fielddefs.add('FractionId',ftinteger);
          Fielddefs.add('PositionWiseFractionId',ftinteger);
          Fielddefs.add('FractionRate',ftFloat);
          Fielddefs.add('FractionAmount',ftFloat);
          Fielddefs.add('FractionAmountOrg',ftFloat);
          Fielddefs.add('UnitTestCost',ftFloat);
          Fielddefs.add('DisPer',ftFloat);
          Fielddefs.add('Qty',ftFloat);

          Fielddefs.add('IsFixedPersonForFraction',ftString,1);
          Fielddefs.add('IsFractionPropWithDisPer',ftString,1);
          Fielddefs.add('IsDocCompAtBillingForSingFrct',ftString,1);
          Fielddefs.add('IsFrctPostAtReportingTime',ftString,1);

          Fielddefs.add('ISCOMPFORFRACTION',ftString,1);
          Fielddefs.add('IsOperation',ftString,1);
          Fielddefs.add('IsHospitalPart',ftString,1);

          createtable;
     End;
end;



procedure Tfrom_BillingRefund.DBGrid1CellClick(Column: TColumn);
begin
{
     IF gs_IsDoctorFractionActive='Y' Then
     Begin
          if gi_BillCase in [1] then
          Display_Frct_Involve_Person(Query_TempBilling.FieldbyName('ISFractionableTest').AsString,Query_TempBilling.FieldByName('TestNameCode').AsString)
          else if gi_BillCase in [2, 3, 4, 6] then
          Display_Frct_Involve_Person(Query_FinalBill.FieldbyName('ISFractionableTest').AsString,Query_FinalBill.FieldByName('TestNameCode').AsString);
     End;     }
end;

procedure Tfrom_BillingRefund.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
     State: TGridDrawState);
begin
     if gi_BillCase in [1] then
     begin
          IF (Table_TempBilling.FieldByName('Status').AsString = 'C') then
          Begin
               DBGrid1.Canvas.Brush.Color := clOlive;
               DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
          End;
     end;
     if gi_BillCase in [2, 3, 4, 6] then
     begin
          IF (Table_FinalBill.FieldByName('Status').AsString = 'R') or (Table_FinalBill.FieldByName('RefundBillNo').AsString <> '') Then
          Begin
               DBGrid1.Canvas.Brush.Color := clOlive;
               DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State);
          End;
     end;
end;

procedure Tfrom_BillingRefund.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
     Query: TOraQuery;
     CheckQry:TOraTable;
     li_TestNameId : Integer;
begin

     Try
          CheckQry := TOraTable.Create(Nil);
          if gi_BillCase in [0, 1] then
               CheckQry := Table_TempBilling
          Else if gi_BillCase in [3, 6] then
               CheckQry := Table_FinalBill;
          if Key=13 then
          begin
              if gi_BillCase=6 then
              begin
                  Table_FinalBill.Edit;
    //              Table_FinalBill.FieldByName('qty').AsInteger:=DBGrid1.Fields[4].Value;
                  Table_FinalBill.Post;
                  if Table_FinalBill.FieldByName('qty').AsInteger>Table_FinalBill.FieldByName('qtyOld').AsInteger then
                  begin
                       Table_FinalBill.Edit;
                       Table_FinalBill.FieldByName('qty').AsInteger:=Table_FinalBill.FieldByName('qtyOld').AsInteger;
                       Table_FinalBill.Post;
                       ShowMessage('Refund Quantity cannot be Greater than Actual Quantity');
                       Exit;
                  end
                  else if Table_FinalBill.FieldByName('qty').AsInteger<>Table_FinalBill.FieldByName('qtyOld').AsInteger then
                  begin

                  {     Table_FinalBill.Close;
                       Table_FinalBill.Open; }
                       Table_FinalBill.Edit;
                       Table_FinalBill.FieldByName('Discount').asfloat:=((Table_FinalBill.FieldByName('TestPrice').asfloat*Table_FinalBill.FieldByName('Qty').asfloat)*
                       Table_FinalBill.FieldByName('Disper').asfloat/100);

                       Table_FinalBill.FieldByName('SvrTax').asfloat:=((Table_FinalBill.FieldByName('TestPrice').asfloat*Table_FinalBill.FieldByName('Qty').asfloat)-
                       (Table_FinalBill.FieldByName('TestPrice').asfloat*Table_FinalBill.FieldByName('Qty').asfloat*Table_FinalBill.FieldByName('Disper').asfloat/100)
                       )*gf_TaxPercent/100;

                       Table_FinalBill.FieldByName('NetTotal').asfloat:=((Table_FinalBill.FieldByName('TestPrice').asfloat*
                       Table_FinalBill.FieldByName('Qty').asfloat)-
                        ((Table_FinalBill.FieldByName('TestPrice').asfloat*Table_FinalBill.FieldByName('Qty').asfloat)*
                       Table_FinalBill.FieldByName('Disper').asfloat/100))+Table_FinalBill.FieldByName('SvrTax').asfloat;
                       Table_FinalBill.Post;
                       key:=VK_DELETE;
                  end;
              end
              else
              begin
                  Table_TempBilling.Edit;
    //              Table_FinalBill.FieldByName('qty').AsInteger:=DBGrid1.Fields[4].Value;
                  Table_TempBilling.Post;
                  if Table_TempBilling.FieldByName('qty').AsInteger>Table_TempBilling.FieldByName('qtyOld').AsInteger then
                  begin
                       Table_TempBilling.Edit;
                       Table_TempBilling.FieldByName('qty').AsInteger:=Table_TempBilling.FieldByName('qtyOld').AsInteger;
                       Table_TempBilling.Post;
                       ShowMessage('Refund Quantity cannot Be Greater Than Actual Quantity');
                       Exit;
                  end
                  else
                  begin
                       Table_TempBilling.Edit;
                       Table_TempBilling.FieldByName('Discount').asfloat:=((Table_TempBilling.FieldByName('TestPrice').asfloat*Table_TempBilling.FieldByName('Qty').asfloat)*
                       Table_TempBilling.FieldByName('Disper').asfloat/100);

                       Table_TempBilling.FieldByName('SvrTax').asfloat:=((Table_TempBilling.FieldByName('TestPrice').asfloat*Table_TempBilling.FieldByName('Qty').asfloat)-
                       (Table_TempBilling.FieldByName('TestPrice').asfloat*Table_TempBilling.FieldByName('Qty').asfloat*Table_TempBilling.FieldByName('Disper').asfloat/100)
                       )*gf_TaxPercent/100;

                       Table_TempBilling.FieldByName('NetTotal').asfloat:=((Table_TempBilling.FieldByName('TestPrice').asfloat*
                       Table_TempBilling.FieldByName('Qty').asfloat)-
                        ((Table_TempBilling.FieldByName('TestPrice').asfloat*Table_TempBilling.FieldByName('Qty').asfloat)*
                       Table_TempBilling.FieldByName('Disper').asfloat/100))+Table_TempBilling.FieldByName('SvrTax').asfloat;
                       Table_TempBilling.Post;
                       key:=VK_DELETE;
                  end;
              end;
          end;

          if (Key = VK_DELETE) and (gi_BillCase in [0, 3]) then
          begin
               if MsgBox(1002, 1, '', '', '') then
               begin
                    Query := TOraQuery.Create(nil);
                    with Query do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         SQL.Clear;
                         if gi_BillCase = 0 then
                         begin
                              SQL.Add('Delete from  TempBilling');
                              SQL.Add('Where TestNameID=' + IntToStr(table_TempBilling.FieldByName('TestNameID').AsInteger));
                              li_TestNameId:=table_TempBilling.FieldByName('TestNameID').AsInteger;
                         end
                         else if gi_BillCase = 3 then
                         begin
                              SQL.Add('Delete from  FinalBill');
                              SQL.Add('Where TestNameID=' + IntToStr(table_FinalBill.FieldByName('TestNameID').AsInteger));
                              li_TestNameId:=table_FinalBill.FieldByName('TestNameID').AsInteger;
                         end;
                         ExecSQL;

                         (*if gs_IsDoctorFractionActive='Y' then
                         Begin
                              Close;
                              DatabaseName := ps_Temppath;
                              SQL.Clear;
                              SQL.Add(' Delete From  ServiceWiseFraction');
                              SQL.Add(' Where TestNameID=' + IntToStr(Query_TempBilling.FieldByName('TestNameID').AsInteger));
                              ExecSQL;
                         End;*)
                    end;
                    if gi_BillCase = 0 then
                         RemoveTestNameIDInVariable(table_TempBilling.FieldByName('TestNameID').AsString)
                    else if gi_BillCase = 3 then
                         RemoveTestNameIDInVariable(table_FinalBill.FieldByName('TestNameID').AsString);

                    // ReCalculateSumAmtAfterDeleteItem;
                    CalculateLabels;
               end;


               if li_TestNameId=159 then //ONE001 - ONE UNIT OF BLOOD PER BAG
               begin
                    pb_BloodBagRefund:=True;
                    Panel_BloodBagRefund.BringToFront;
                    Panel_BloodBagRefund.Visible:=True;
                    Edit_BloodBagQty.Text:=FloatToStr(table_FinalBill.FieldByName('Qty').AsFloat);
                    Edit_BloodBagCharge.Text:=FloatToStr(table_FinalBill.FieldByName('TestPrice').AsFloat);
                    Label_DisPer.Caption:=FloatToStr(table_FinalBill.FieldByName('DisPer').AsFloat);
                    lbl_SvrTax.Caption:=FloatToStr(table_FinalBill.FieldByName('SvrTax').AsFloat);
                    Label_BagQty.Caption:=Edit_BloodBagQty.Text;
                    Label_BagAmt.Caption:=Edit_BloodBagCharge.Text;
                    Panel_BloodBagRefund.Top:=393;
                    Panel_BloodBagRefund.Left:=308;
                    Edit_BloodBagQty.SetFocus;
               end
               else
               Panel_BloodBagRefund.Visible:=False;

               // Query_TempBilling.Close;
               // Query_TempBilling.DatabaseName := ps_Temppath;
               // Query_TempBilling.Open;
               //
               // Query_FinalBill.Close;
               // Query_FinalBill.DatabaseName := ps_Temppath;
               // Query_FinalBill.Open;
               CheckQry.Close;
               CheckQry.DatabaseName := ps_Temppath;
               CheckQry.Open;
               Query.Free;
               CheckQry := nil;
               CheckQry.Free;
          end
          else if (Key = VK_DELETE) and (gi_BillCase in [1, 6]) and (CheckQry.FieldByName('Status').AsString <> 'R') then
          begin
               if gi_BillCase = 6 then
               begin
                    if CheckQry.FieldByName('RefundBillNo').AsString <> '' then
                    begin
                         exit;
                    end;
               end;
               if not MsgBox(1002, 1, '', '', '') then
                    exit;
               pb_isdelete := true;

               // ReCalculateSumAmtAfterDeleteItem;
               Query := TOraQuery.Create(nil);
               with Query do
               begin
                    Close;
                    DatabaseName := ps_Temppath;
                    SQL.Clear;
                    if gi_BillCase = 1 then
                    begin
                         SQL.Add('Update TempBilling Set Status=''C''');
                         SQL.Add('Where ServiceBillDetailID=' + IntToStr(CheckQry.FieldByName('ServiceBillDetailID').AsInteger));
                         li_TestNameId:=CheckQry.FieldByName('TestNameID').AsInteger;
                    end
                    else if gi_BillCase = 6 then
                    begin
                         SQL.Add('Update FinalBill Set Status=''R''');
                         SQL.Add('Where BillDetailID=' + IntToStr(CheckQry.FieldByName('BillDetailID').AsInteger));
                         li_TestNameId:=CheckQry.FieldByName('TestNameID').AsInteger;
                    end;
                    ExecSQL;
               end;

               if li_TestNameId=159 then //ONE001 - ONE UNIT OF BLOOD PER BAG
               begin
                    pb_BloodBagRefund:=True;
                    Panel_BloodBagRefund.BringToFront;
                    Panel_BloodBagRefund.Visible:=True;
                    Edit_BloodBagQty.Text:=FloatToStr(table_FinalBill.FieldByName('Qty').AsFloat);
                    Edit_BloodBagCharge.Text:=FloatToStr(table_FinalBill.FieldByName('TestPrice').AsFloat);
                    Label_BagQty.Caption:=Edit_BloodBagQty.Text;
                    Label_BagAmt.Caption:=Edit_BloodBagCharge.Text;
                    Panel_BloodBagRefund.Top:=393;
                    Panel_BloodBagRefund.Left:=308;
                    Edit_BloodBagQty.SetFocus;
               end
               else
               Panel_BloodBagRefund.Visible:=False;
               // Query_TempBilling.Close;
               // Query_TempBilling.DatabaseName := ps_Temppath;
               // Query_TempBilling.Open;
               //
               // Query_FinalBill.Close;
               // Query_FinalBill.DatabaseName := ps_Temppath;
               // Query_FinalBill.Open;
               CalculateLabels;
               CheckQry.Close;
               CheckQry.DatabaseName := ps_Temppath;
               CheckQry.Open;
               Query.Free;
               CheckQry := nil;
               CheckQry.Free;
          end;
     Except
     End;
end;

procedure Tfrom_BillingRefund.DBGrid2CellClick(Column: TColumn);
begin
     if gi_BillCase=6 then
     begin
          Gs_BillNo:=Query_OldBillList.FieldByName('BillNo').AsString;
          Gs_TempBillno:='';
     end
     else
     begin
          Gs_TempBillno:=Query_OldBillList.FieldByName('BillNo').AsString;
          Gs_BillNo:='';
     end;
     loadbill;
end;

procedure Tfrom_BillingRefund.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_DOWN then
     Query_OldBillList.Next;

     if Key=VK_UP then
     Query_OldBillList.Prior;

     if gi_BillCase=6 then
     begin
          Gs_BillNo:=Query_OldBillList.FieldByName('BillNo').AsString;
          Gs_TempBillno:='';
     end
     else
     begin
          Gs_TempBillno:=Query_OldBillList.FieldByName('BillNo').AsString;
          Gs_BillNo:='';
     end;
end;

procedure Tfrom_BillingRefund.DBGrid_SearchDblClick(Sender: TObject);
begin
     pb_IsFinalSelectedTestName := true;
     Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
     SPB_AddItemClick(Sender);
     DBGrid_Search.Visible := False;
     pb_IsFinalSelectedTestName := False;
     Edit_TestName.SetFocus;
end;

procedure Tfrom_BillingRefund.DBGrid_SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 13 then
     begin
          pb_IsFinalSelectedTestName := true;
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
          SPB_AddItemClick(Sender);
          DBGrid_Search.Visible := False;
          pb_IsFinalSelectedTestName := False;
     end;
end;

procedure Tfrom_BillingRefund.DBLCB_RefDocCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          //Edit_TestName.SetFocus;
          Edit_Doccode.SetFocus;
end;

procedure Tfrom_BillingRefund.DBLCB_SchemeClick(Sender: TObject);
begin
     if Trim(DBLCB_Scheme.Text)<>'' then
     Begin
          if (gs_BillType='OPBILL')  Then
          Begin
               IF QueryScheme.FieldbyName('SCHE_ISOPBILLCRFACILITY').AsString='Y' then
               CB_PayType.ItemIndex:=1
               else
               CB_PayType.ItemIndex:=0;
          End
          Else if (gs_BillType='IPBILL') then
          CB_PayType.ItemIndex:=1;
     End;
end;

procedure Tfrom_BillingRefund.DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then
     DBLCB_Scheme.KeyValue:=-1;
end;

procedure Tfrom_BillingRefund.Edit_BloodBagChargeExit(Sender: TObject);
begin
     if Edit_BloodBagCharge.Text='' then Edit_BloodBagCharge.Text:='0';
     if StrToFloat(Edit_BloodBagCharge.Text) > 0  then
     Begin
          IF StrToFloat(Edit_BloodBagCharge.Text) > StrToFloat(Label_BagAmt.Caption)  then
          begin
               MessageDlg('Actual Qty is '+Label_BagAmt.Caption+'. You are trying to refund more than that.',mtWarning,[mbOK],0);
               Edit_BloodBagCharge.SetFocus;
               Exit;
          end;
          CalculateBloodTaxDiscount;
     End;
end;

procedure Tfrom_BillingRefund.Edit_BloodBagChargeKeyPress(Sender: TObject; var Key: Char);
begin
     if (key=#13) and (Trim(Edit_BloodBagCharge.Text)<>'') Then
     Begin
          //BitBtn_SetCharge.SetFocus;
          CalculateBloodTaxDiscount;
          Le_Remarks.SetFocus;
          Exit;
     End;

     IF key=#8  then exit;
     AvoidMultipleDecimal(Edit_BloodBagCharge,key);
     key:=Key;
end;

procedure Tfrom_BillingRefund.CalculateBloodTaxDiscount;
Begin
     IF StrToFloat(Label_DisPer.Caption) > 0 Then
     Edit_Discount.Text:=FloatToStr(StrToFloat(Edit_BloodBagCharge.Text)*StrToFloat(Edit_BloodBagQty.Text)* StrToFloat(Label_DisPer.Caption)/100)
     else
     Edit_Discount.Text:='0';

     if StrToFloat(lbl_SvrTax.Caption) > 0 then
     Edit_SvrTax.Text:=FloatToStr(StrToFloat(Edit_BloodBagCharge.Text)*gf_TaxPercent/100)
     else
     Edit_SvrTax.Text:='0';
End;

procedure Tfrom_BillingRefund.Edit_BloodBagQtyExit(Sender: TObject);
begin
     if Edit_BloodBagQty.Text='' then Edit_BloodBagQty.Text:='0';
     if StrToFloat(Edit_BloodBagQty.Text) > 0  then
     Begin
          IF StrToFloat(Edit_BloodBagQty.Text) > StrToFloat(Label_BagQty.Caption)  then
          begin
               MessageDlg('Actual Qty is '+Label_BagQty.Caption+'. You are trying to refund more than that.',mtWarning,[mbOK],0);
               Edit_BloodBagQty.SetFocus;
               Exit;
          end;
     End;
end;

procedure Tfrom_BillingRefund.Edit_BloodBagQtyKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then Edit_BloodBagCharge.SetFocus;
end;

procedure Tfrom_BillingRefund.Edit_DisperExit(Sender: TObject);
begin
     if Trim(Edit_Disper.Text)='' then Edit_Disper.Text:='0';

     if StrToFloat(Edit_Disper.Text) > 100 then
     Begin
          MessageDlg('Discount % Should not be More Than 100.',mtWarning,[mbok],0);
          Edit_Disper.SetFocus;
          Exit;
     End;
end;

procedure Tfrom_BillingRefund.Edit_DisperKeyPress(Sender: TObject; var Key: Char);
begin
     if key in [#8] then Exit;
     if Key=#13 then
     SPB_AddItemClick(Sender);
     AvoidMultipleDecimal(Edit_Disper,Key);
end;

procedure Tfrom_BillingRefund.Edit_DoccodeChange(Sender: TObject);
begin
     if (Trim(Edit_Doccode.Text) <> '') then
     begin
          with DBGrid_Search do
          begin
               left := 63;//153;
               Top := 118;
               Height := 175;
               Width := 650;//560;
               Visible := true;
               BringToFront;
          end;

          with Query_TestName do
          begin
               Close;
               if pb_IsFinalSelectedTestName = true then
                    SQL[1] := 'Where IsActive=''Y'' and Trim(TestNameCode)=' + #39 + Trim(Edit_Doccode.Text) + #39
               Else
               Begin
                    if cb_extended.Checked = true then
                         SQL[1] := 'Where IsActive=''Y'' and Trim(TestNameCode) like' + #39 + '%' + Trim(Edit_Doccode.Text) + '%' + #39
                    else
                         SQL[1] := 'Where IsActive=''Y'' and Trim(TestNameCode) Like ' + #39 + Trim(Edit_Doccode.Text) + '%' + #39;
               End;
               if Trim(ps_LoadedTestID) <> '' then
                    //SQL[2] := 'And TestNameid||TestNameCode not in (' + #39 + ps_LoadedTestID + #39 + ')'
                    SQL[2] := 'And TestNameid not in ('+ps_LoadedTestID+ ')'
               else
                    SQL[2] := 'And 99=99';

               sql[3]:=' And PATIENTTYPECODE='+QuotedStr(CB_BILLTYPE.KeyValue);

               if gs_IsPhysionBillingUser='Y' then
               sql[4]:=' And DepId=56'
               Else
               sql[4]:=' ';

               if gi_HospitalId=562 then  // 562 - Manipal
               SQL[5]:=' Order by TestNameCode'
               Else
               SQL[5]:=' Order by TestName';

               Open;
          end;
        //NO IDEA
        {
          if CB_BillType.ItemIndex=0 then
          Begin
               DBGrid_Search.Columns[2].Visible:=True;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=1 then
          Begin
               DBGrid_Search.Columns[3].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=2 then
          Begin
               DBGrid_Search.Columns[4].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=3 then
          Begin
               DBGrid_Search.Columns[5].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
          End
          Else
          Begin
               DBGrid_Search.Columns[2].Visible:=True;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End;}
     end
     else
          DBGrid_Search.Visible := False;
end;

procedure Tfrom_BillingRefund.Edit_DoccodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = vk_up then
          Query_TestName.Prior
     else if Key = vk_down then
          Query_TestName.Next
     else if (Key = 13) and (Edit_Doccode.Text <> '') then
     begin
          pb_IsFinalSelectedTestName := true;
          Edit_Doccode.Text := Query_TestName.FieldByName('TestNameCode').AsString;
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;

          if Query_TestName.FieldByName('TestPrice').AsFloat > 0  then
          Begin
               Edit_UnitPrice.Text:=FloatToStr(Query_TestName.FieldByName('TestPrice').AsFloat);
               Edit_UnitPrice.ReadOnly:=True;
               Edit_UnitPrice.Color:=clMenu;
          End
          Else
          Begin
               Edit_UnitPrice.ReadOnly:=False;
               Edit_UnitPrice.Color:=clWhite;
          End;

          DBGrid_Search.Visible := False;
          pb_IsFinalSelectedTestName := False;
     end;
     (*else if Key = VK_F12 then
     begin
          BB_SaveClick(Sender);
          Key := 0;
     end;*)
end;

procedure Tfrom_BillingRefund.Edit_DoccodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Trim(Edit_Doccode.Text)='' then
          Begin
               Edit_Doccode.SetFocus;
               Exit;
          End;
          //if Edit_TestName.Text='' then Edit_TestName.SetFocus;

          Edit_UnitPrice.Clear;
          if Cb_Qty.Checked then
          begin
               Edit_Qty.Clear;
               Edit_Qty.Text := '1';
               Edit_Qty.SetFocus;
          end
          else
               SPB_AddItemClick(Sender);
          Edit_Disper.Clear;
          UpdateCustomerPreview;

          Edit_TestName.SetFocus;
     end;
end;

procedure Tfrom_BillingRefund.Edit_QtyEnter(Sender: TObject);
begin
     // Edit_Qty.Text := '1';
end;

procedure Tfrom_BillingRefund.Edit_QtyKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if StrToFloat(Edit_Qty.Text) > 0 then
          begin
               if Query_TestName.FieldByName('TotalPrice').AsFloat = 0 then
               begin
                    if gb_HideDetailInServiceBilling then
                    Begin
                         MessageDlg('No Price is Available.', mtWarning, [mbok], 0);
                         Edit_TestName.Clear;
                         Edit_TestName.SetFocus;
                    End
                    Else
                    Begin
                         Edit_UnitPrice.Text := '0';
                         Edit_UnitPrice.Enabled := true;
                         Edit_UnitPrice.SetFocus;
                    End;
               end
               else if Query_TestName.FieldByName('ISTESTPRICEEDITABLE').AsString = 'Y' then
               begin
                    Edit_UnitPrice.Text := '0';
                    Edit_UnitPrice.Enabled := true;
                    Edit_UnitPrice.SetFocus;
               end
               else
               begin
                    //SpeedButton1Click(Sender);
                    if Trim(DBLCB_Scheme.Text)<>'' then
                    Edit_Disper.SetFocus
                    else
                    SPB_AddItemClick(Sender);
               end;
          end;
     end;
end;

procedure Tfrom_BillingRefund.Edit_TestNameChange(Sender: TObject);
begin
     if (Trim(Edit_TestName.Text) <> '') then
     begin
          with DBGrid_Search do
          begin
               left := 137;//153;
               Top := 118;
               Height := 175;
               Width := 560;
               Visible := true;
               BringToFront;
          end;

          with Query_TestName do
          begin
               Close;
               if pb_IsFinalSelectedTestName = true then
                    SQL[1] := 'Where IsActive=''Y'' and Trim(TestName)=' + #39 + Trim(Edit_TestName.Text) + #39
               Else
               Begin
                    if cb_extended.Checked = true then
                         SQL[1] := 'Where IsActive=''Y'' and Trim(TestName) like' + #39 + '%' + Trim(Edit_TestName.Text) + '%' + #39
                    else
                         SQL[1] := 'Where IsActive=''Y'' and Trim(TestName) Like ' + #39 + Trim(Edit_TestName.Text) + '%' + #39;
               End;

               if ps_LoadedTestID <> '' then
                    SQL[2] := 'And TestNameid||TestNameCode not in (' + #39 + ps_LoadedTestID + #39 + ')'
               else
                    SQL[2] := 'And 99=99';

               sql[3]:=' And PATIENTTYPECODE='+QuotedStr(CB_BILLTYPE.KeyValue);

               if gs_IsPhysionBillingUser='Y' then
               sql[4]:=' And DepId=56'
               Else
               sql[4]:=' ';

               if gi_HospitalId=562 then  // 562 - Manipal
               SQL[5]:=' Order by TestNameCode'
               Else
               SQL[5]:=' Order by TestName';

               Open;
          end;
        //NO IDEA
        {
          if CB_BillType.ItemIndex=0 then
          Begin
               DBGrid_Search.Columns[2].Visible:=True;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=1 then
          Begin
               DBGrid_Search.Columns[3].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=2 then
          Begin
               DBGrid_Search.Columns[4].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End
          Else if CB_BillType.ItemIndex=3 then
          Begin
               DBGrid_Search.Columns[5].Visible:=True;
               DBGrid_Search.Columns[2].Visible:=False;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
          End
          Else
          Begin
               DBGrid_Search.Columns[2].Visible:=True;
               DBGrid_Search.Columns[3].Visible:=False;
               DBGrid_Search.Columns[4].Visible:=False;
               DBGrid_Search.Columns[5].Visible:=False;
          End;}
     end
     else
          DBGrid_Search.Visible := False;
end;

procedure Tfrom_BillingRefund.Edit_TestNameExit(Sender: TObject);
begin
     // DBGrid_Search.Visible := false;
end;

procedure Tfrom_BillingRefund.Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = vk_up then
          Query_TestName.Prior
     else if Key = vk_down then
          Query_TestName.Next
     else if (Key = 13) and (Edit_TestName.Text <> '') then
     begin
          pb_IsFinalSelectedTestName := true;
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
          DBGrid_Search.Visible := False;
          pb_IsFinalSelectedTestName := False;
          if Query_TestName.FieldByName('TestPrice').AsFloat > 0  then
          Begin
               Edit_UnitPrice.Text:=FloatToStr(Query_TestName.FieldByName('TestPrice').AsFloat);
               Edit_UnitPrice.ReadOnly:=True;
               Edit_UnitPrice.Color:=clMenu;
          End
          Else
          Begin
               Edit_UnitPrice.ReadOnly:=False;
               Edit_UnitPrice.Color:=clWhite;
          End;
     end
     else if Key = VK_F12 then
     begin
          BB_SaveClick(Sender);
          Key := 0;
     end;
end;

procedure Tfrom_BillingRefund.Edit_TestNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Edit_TestName.Text='' then
          Begin
               Edit_TestName.SetFocus;
               Exit;
          End;

          Edit_UnitPrice.Clear;
          if Cb_Qty.Checked then
          begin
               Edit_Qty.Clear;
               Edit_Qty.Text := '1';
               Edit_Qty.SetFocus;
          end
          else
               SPB_AddItemClick(Sender);
          Edit_Disper.Clear;
          UpdateCustomerPreview;
     end;
end;

procedure Tfrom_BillingRefund.Edit_UnitPriceKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if StrToFloat(Edit_UnitPrice.Text) > 0 then
          begin
               if Trim(DBLCB_Scheme.Text)<>'' then
               Edit_Disper.SetFocus
               Else
               Begin
                    SPB_AddItemClick(Sender);
                    Edit_UnitPrice.Clear;
               End;
          end;
     end;
end;

procedure Tfrom_BillingRefund.Le_DiscountExit(Sender: TObject);
Var
     Discount, tot, DISPER, TestPriceWithDis, SvrTaxWithDis, Qty: Double;
     lf_Discount: Double;
begin
     //exit;

     if Trim(Le_Discount.Text) = '' then
          Le_Disper.Text := '0.00';

     if StrToFloat(Le_Discount.Text) > pf_subtotal then
     Begin
          MessageDlg('Discount Percent(100) Exceed !', mtWarning, [mbok], 0);
          Le_Disper.SetFocus;
          exit;
     End;

     if (Le_Discount.Text <> '') and (Le_SubTotal.Text <> '') then
     begin
          lf_Discount := StrToFloat(StringReplace(Le_Discount.Text, ',', '', [rfReplaceAll]));
          lf_Discount := GetNoOfDecimalPartOfFloatNum(lf_Discount, 2);
          DISPER := GetNoOfDecimalPartOfFloatNum((lf_Discount / pf_subtotal) * 100, 2);
          lf_Discount := GetNoOfDecimalPartOfFloatNum((DISPER / 100) * pf_subtotal, 2);
          Le_Discount.Text := FormatFloat('#0.00', (lf_Discount));
          Le_Disper.Text := FloatToStr(GetNoOfDecimalPartOfFloatNum(DISPER, 2));
     end;
     With Table_FinalBill do
     begin
          Close;
          Open;
          while not eof do
          begin
               Edit;
               FieldByName('Disper').AsFloat := StrToFloat(FormatFloat('#0.00', DISPER));
               Discount := (DISPER / 100) * FieldByName('TestPrice').AsFloat;
               FieldByName('Discount').AsFloat := StrToFloat(FormatFloat('#0.00', Discount));
               TestPriceWithDis := FieldByName('TestPrice').AsFloat - ((DISPER / 100) * FieldByName('TestPrice').AsFloat);
               SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
               FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithDis + SvrTaxWithDis)));
               Qty := FieldByName('Qty').AsInteger;
               FieldByName('SvrTax').AsFloat := GetNoOfDecimalPartOfFloatNum(SvrTaxWithDis, 2);
               Post;
               Next;
          end;
     end;
     //RefreshQuery(table_FinalBill, ps_Temppath);
     table_FinalBill.Close;
     table_FinalBill.Open;
     CalculateLabels;
     Le_Payment.Clear;

     { if (Le_Discount.Text <> '') and (Le_NetBalance.Text <> '') then
       begin
       lf_Discount:=0;
       lf_Discount:=StrToFloat(StringReplace(Le_Discount.Text,',','',[rfReplaceAll]));
       Le_Disper.Clear;
       Le_Disper.Text := FormatFloat('0.00', (0));
       Le_DisperExit(Sender);

       lf_Discount:=GetNoOfDecimalPartOfFloatNum(lf_Discount/(1+gf_TaxPercent/100),4);

       DISPER := (100 * lf_Discount) / pf_subtotal;
       Le_Disper.Text := FloatToStr(GetNoOfDecimalPartOfFloatNum(DISPER,4));
       //Le_Disper.Text := FormatFloat('0.00', (DISPER));
       // pf_disper := DISPER;
       //pf_discount := dis;
       //CalculateSum;
       //Le_Payment.SetFocus;
       Le_DisperExit(Sender);
       end; }
end;

procedure Tfrom_BillingRefund.Le_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     Le_DiscountExit(Sender);

     OnlyNumeric(Sender, Key);
end;

procedure Tfrom_BillingRefund.Le_DisperExit(Sender: TObject);
Var
     Discount, tot, DISPER: Double;
     TestPriceWithDis, SvrTaxWithDis, NetTotal, Qty: Double;
begin
   //  exit;

     if Trim(Le_Disper.Text) = '' then
          Le_Disper.Text := '0.00';

     if StrToFloat(Le_Disper.Text) > 100 then
     Begin
          MessageDlg('Discount Percent(100) Exceed !', mtWarning, [mbok], 0);
          Le_Disper.SetFocus;
          exit;
     End;

     if (Le_Disper.Text <> '') and (Le_SubTotal.Text <> '') then
     begin
          DISPER := StrToFloat(Le_Disper.Text);
          Discount := (DISPER / 100) * pf_Total;
          Le_Discount.Text := FormatFloat('0.00', (Discount));
          With Table_FinalBill do
          begin
               Close;
               Open;
               while not eof do
               begin
                    Edit;
                    FieldByName('Disper').AsFloat := StrToFloat(FormatFloat('#0.00', DISPER));
                    Discount := (DISPER / 100) * FieldByName('TestPrice').AsFloat;
                    FieldByName('Discount').AsFloat := StrToFloat(FormatFloat('#0.00', Discount));
                    TestPriceWithDis := FieldByName('TestPrice').AsFloat - ((DISPER / 100) * FieldByName('TestPrice').AsFloat);
                    SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
                    FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithDis + SvrTaxWithDis)));
                    Qty := FieldByName('Qty').AsInteger;
                    FieldByName('SvrTax').AsFloat := GetNoOfDecimalPartOfFloatNum(SvrTaxWithDis, 2);
                    Post;
                    Next;
               end;
          end;
         // RefreshQuery(table_FinalBill, ps_Temppath);
          table_FinalBill.close;
          table_FinalBill.Open;

          CalculateLabels;
          Le_Payment.Clear;
          Le_Payment.SetFocus;
     end;
end;

procedure Tfrom_BillingRefund.Le_DisperKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #8 then
          exit;
     if key=#13 then
     Le_DisperExit(sender);
     AvoidMultipleDecimal(Le_Disper, Key);
     Key := Key;
end;

procedure Tfrom_BillingRefund.Le_HosNoExit(Sender: TObject);
Var
     Key: Char;
begin
     (*Key := #13;
     Le_HosNoKeyPress(Sender, Key);
     DBLCB_RefDocCode.SetFocus;*)
end;

procedure Tfrom_BillingRefund.Le_HosNoKeyPress(Sender: TObject; var Key: Char);
Var
     Qry: TOraQuery;
begin
     if Key = #13 then
     begin
           if (Trim(Le_HosNo.Text) <> '') and (Trim(Le_HosNo.Text) <> '0') then
          begin
               gi_PatientID := StrToInt(Le_HosNo.Text);
               IF IsRegisteredHospitalNo(gi_PatientID)=False Then
               Begin
                    MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+Le_HosNo.Text+').',
                    mtWarning,[mbok],0);
                    //MakeBlankPatientInfo;
                    ResetAllHistoryForNextNewBill;
                    Exit;
               End;
          end;
          LoadPatientData(gi_PatientID);


          with Query_OldBillList do
          begin
               close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               if gi_BillCase=6 then
               begin
                    SQL.Add('select distinct bide_billdate billdate,bide_BillNo billno');
                    SQL.Add('From Hs_Bide_Billdetail');
                    SQL.Add('where Bide_PatientId='+Inttostr(gi_PatientID));
                    SQL.Add('order by bide_billdate desc');
                    Open;
                    DBGrid1.DataSource:=DS_FinalBill;
               end
               else
               begin
                    SQL.Add('select distinct sebd_billdate billdate,sebd_BillNo billno');
                    SQL.Add('From Hs_sebd_serviceBilldetail');
                    SQL.Add('where sebd_PatientId='+Inttostr(gi_PatientID));
                    SQL.Add('and SEBD_BILLDETAILID=0');
                    SQL.Add('order by sebd_billdate desc');
                    Open;
                    DBGrid1.DataSource:=DS_Tempbilling;
               end;
          end;
          exit;
          if (gi_BillCase=1) or (gi_BillCase=6) then
          Begin
               MessageDlg('Sorry You Are in Refund Billing. Please Go To OP or IP Billing For New Bill.',mtInformation,[mbOK],0);
               Le_HosNo.SetFocus;
               Exit;
          End;

          EnabledDisabledSearchField('ENABLED');
          ResetAllHistoryForNextNewBill;
          Label_IPNO.Caption:='NA';

          if (Trim(Le_HosNo.Text) <> '') and (Trim(Le_HosNo.Text) <> '0') then
          begin
               gi_PatientID := StrToInt(Le_HosNo.Text);
               IF IsRegisteredHospitalNo(gi_PatientID)=False Then
               Begin
                    MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+Le_HosNo.Text+').',
                    mtWarning,[mbok],0);
                    //MakeBlankPatientInfo;
                    ResetAllHistoryForNextNewBill;
                    Exit;
               End;



               if gs_BillType='OPBILL' then
               Begin
                    if IsInpatient(gi_PatientID) then
                    begin
                         pi_InPatientId:=0;
                         gi_InPatientId:=0;
                         IF MessageDlg('This Patient is Currently Admitted. Do You Want to Continue ?',mtWarning,[mbYes,mbNo],0)=mrNo Then
                         begin
                              Le_HosNo.SetFocus;
                              Exit;
                         end;
                         Label_IPNO.Caption:=IntToStr(gi_InpatientId);
                    end;

                    gi_SchemeId:=79;
                    gi_CommunityId:=73;
                    pi_CommunityId:=79;
                    pi_SchemeId:=73;

                    CB_Scheme.Checked:=True;
                    DBLCB_Scheme.KeyValue:=79;
               End;

               if gs_BillType='IPBILL' then
               Begin
                    if IsInpatient(gi_PatientID)=False then
                    begin
                         pi_InPatientId:=0;
                         gi_InPatientId:=0;
                         Label_IPNO.Caption:=IntToStr(gi_InpatientId);
                         MessageDlg('Sorry this is not admitted patient.',mtWarning,[mbok],0);
                         Exit;
                    end;
                    Label_IPNO.Caption:=IntToStr(gi_InpatientId);

                    gi_SchemeId:=77;  // CONCESSION 2010 MAY
                    gi_CommunityId:=71; // CONCESSION 2010 MAY

                    pi_CommunityId:=71;
                    pi_SchemeId:=77;
                    DBLCB_Scheme.KeyValue:=77;
               End;


               //Form_MainPatientAdministration.LoadPatientBasicInfo;


               //Gi_MemberID := GetMemberID(gi_PatientID);
               With Query_Process do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    SQL.Add(' Select MemberId,PatientId,MemberNo From Member where PatientId='+IntToStr(gi_PatientID));
                    SQL.Add(' and IsActiveMember=''Y''');
                    Open;
                    if Query_Process.FieldByName('MemberId').AsInteger >0 then
                    Begin
                         gi_SchemeId:=22;
                         gi_CommunityId:=18;
                         gs_memberNo:=Query_Process.FieldByName('MemberNo').AsString;
                         Le_MemberNo.Text:=Query_Process.FieldByName('MemberNo').AsString;
                         pi_CommunityId:=18;
                         pi_SchemeId:=22;
                         CB_Scheme.Checked:=True;
                         DBLCB_Scheme.KeyValue:=pi_SchemeId;
                         CB_PayType.ItemIndex:=1;

                         if gs_BillType='IPBILL' then
                         Begin
                              if Copy(gs_memberNo,1,1)='A' then
                              CB_BILLTYPE.KeyValue:='SPL'
                              Else if Copy(gs_memberNo,1,1)='B' then
                              CB_BILLTYPE.KeyValue:='PVT'
                              Else
                              CB_BILLTYPE.KeyValue:='GEN';
                         End
                         Else
                         CB_BILLTYPE.KeyValue:='GEN';

                         Label_MeicarePatient.Visible:=True;

                         Edit_Disper.Color:=clMenu;
                         Edit_Disper.ReadOnly:=True;

                         Le_MemberNo.Text:=Gs_MemberNo;
                         Le_Payment.EditLabel.Caption:='Co-Payment';
                    End
                    Else
                    Begin
                         if gs_BillType='OPBILL' then
                         Begin
                              Close;
                              SQL.Clear;
                              SQL.Add(' Select PAVI_PatientVisitID,PAVI_SchemeId,PAVI_CommunityId,');
                              SQL.Add(' NVL(S.SCHE_ISOPBILLCRFACILITY,''N'') IsOPCreditFacility,NVL(S.SCHE_ISOPBILLDISEDITABLE,''N'') IsDiscountFacility');
                              SQL.Add(' From  HS_PAVI_PatientVisit,HS_SCHE_Scheme S where PAVI_PatientVisitID In (');
                              SQL.Add(' Select Max(PAVI_PatientVisitID) From HS_PAVI_PatientVisit PV');
                              SQL.Add(' where PAVI_PatientId='+IntToStr(gi_PatientID)+' and PAVI_ISVISITCANCEL=''N'') and PAVI_SchemeId=S.Sche_SchemeId(+)');
                              Open;

                              if Query_Process.FieldByName('PAVI_SchemeId').AsInteger > 0 then
                              Begin
                                   gi_SchemeId:=Query_Process.FieldByName('PAVI_SchemeId').AsInteger;
                                   gi_CommunityId:=Query_Process.FieldByName('PAVI_CommunityId').AsInteger;
                                   CB_Scheme.Checked:=True;
                                   DBLCB_Scheme.KeyValue:=pi_SchemeId;
                                   CB_PayType.ItemIndex:=0;
                              End
                              else
                              Begin
                                   gi_SchemeId:=77;  // CONCESSION 2010 MAY
                                   gi_CommunityId:=71; // CONCESSION 2010 MAY

                                   pi_CommunityId:=71;
                                   pi_SchemeId:=77;
                                   DBLCB_Scheme.KeyValue:=77;

                                   gs_memberNo:='';
                                   CB_Scheme.Checked:=False;

                                   CB_PayType.ItemIndex:=0;
                              End;

                              Edit_Disper.Color:=clWhite;
                              Edit_Disper.ReadOnly:=False;
                              Le_Payment.EditLabel.Caption:='Payment';
                         End;
                    End;
               End;

               (*With Query_Process do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    SQL.Add(' Select InpatientId From InpatientReg where PatientId='+IntToStr(gi_PatientID));
                    SQL.Add(' and IsDischarged=''N''');
                    Open;
               End;*)
               if gs_BillType<>'OPBILL' then
               Begin
                    Qry := TOraQuery.Create(Nil);
                    with Qry do
                    begin
                         Close;
                         DatabaseName := gs_DatabaseName;
                         SQL.Clear;
                         SQL.Add(' Select * from  VW_HS_ADMNPATIENTCURRENTINFO');
                         SQL.Add(' Where PatientID=' + IntToStr(gi_PatientID));
                         SQL.Add(' and ISDISCHARGED=''N''');
                         Open;
                         if Qry.FieldByName('ISDISCHARGED').AsString='N' then
                         Begin
                              gi_InPatientID := FieldByName('InPatientId').AsInteger;
                              pi_InPatientId := FieldByName('InPatientId').AsInteger;
                              GS_WardRoomType:= FieldByName('WardRoomType').AsString;
                              GS_Consultant:=FieldByName('Consultant').AsString;
                              Gs_AdmittedDate:=FieldByName('AdmnDate').AsString;
                              Gs_DischargeDate:=FieldByName('DisDate').AsString;
                              Gi_TotalDaysOfStay:=FieldByName('TotalDaysOfStay').AsInteger;

                              CB_BillType.KeyValue:=Qry.FieldByName('CurPatientTypeCode').AsString;
                         End
                         Else
                         Begin
                              gi_InPatientID := 0;
                              GS_WardRoomType:= '';
                              GS_Consultant:='';
                              Gs_AdmittedDate:='';
                              Gs_DischargeDate:='';
                              Gi_TotalDaysOfStay:=0;
                              CB_BillType.KeyValue:=Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                         End;
                         GetIPBasicInfo;
                    end;

                    if gi_SchemeId=22 then // 22 -Medicare
                    Begin
                         Edit_Disper.Color:=clMenu;
                         Edit_Disper.ReadOnly:=True;
                    End
                    else
                    begin
                         Edit_Disper.Color:=clWhite;
                         Edit_Disper.ReadOnly:=False;
                    end;

                    Le_Payment.EditLabel.Caption:='(F1)Advance Amt';
                    CB_PayType.ItemIndex:=1;
                    CB_PayType.Enabled:=False;
               End;

               ps_PatientTypeCode:=CB_BillType.KeyValue;

               (*if gb_IsFinManConnected=True then
               //lbl_DepositBalance.Caption:=FloatToStr(GetPatientDepositFromFinman(gi_PatientID));
               //lbl_remainingbalance.Caption :='0'; //FloatToStr(GetDepositBalance(gi_PatientID));
               le_TotalDeposit.Text := '0';//lbl_remainingbalance.Caption;
               if Gi_MemberID > 0 then
               begin
                    lbl_BenefitPackage.Caption := '';//GetBenefitPackageName(Gi_MemberID);
                    lbl_BenefitPackage.Visible := true;
                    pf_MemberDeposit :=0; //GetTotalMemberDeposit(gi_PatientID, lbl_BenefitPackage.Caption);
                    Cb_DeductFromDeposit.Checked := true;
                    Pi_CommunityID := 0;//GetMemberCommunityID(Gi_MemberID);
                    Pi_SchemeID := 0;//GetMemberSchemeID(Gi_MemberID);
                    if (Pi_CommunityID > 0) and (Pi_SchemeID > 0) then
                    begin
                         CB_Scheme.Checked := true;
                         DBLCB_Community.KeyValue := Pi_CommunityID;
                         DBLCB_CommunityClick(Sender);
                         DBLCB_Scheme.KeyValue := Pi_SchemeID;
                    end;
               end;
               Le_MemberNo.Text := IntToStr(Gi_MemberID);



               if (pf_MemberDeposit > 0) then
                    Pb_NoDiscount := true
               else
               begin
                    Pb_NoDiscount := False;
                    Cb_DeductFromDeposit.Checked := False;
               end;

               *)

               //Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
               //LoadPatientData(gi_PatientID);
               if Gs_PatientName = '' then
               begin
                    Le_HosNo.SetFocus;
                    exit;
               end
               else
               begin
                    LoadImage;
               end;
               // with Form_BillingParent do
               // begin
               // lbl_Hosno.Caption:=IntToStr(gi_PatientID);
               // lbl_patientname.Caption:=Gs_PatientName;
               // end;
          end
          else
          begin
               if gi_BillCase=3 then
               begin
                    Try
                         Form_otherPatient:=TForm_otherPatient.Create(Nil);
                         With Form_otherPatient do
                         begin
                              ShowModal;
                         end;
                    Finally
                         Form_otherPatient.Free;
                    End;
                    LoadPatientData(gi_PatientID);
                    Le_HosNo.Text:=IntToStr(gi_PatientId);
                    Le_HosNoExit(Sender);
                    DBLCB_RefDocCode.SetFocus;
               end;
          end;


          Label21.Visible:=False;
          Lbl_BillNo.Visible:=False;
          Label11.Visible:=False;
          Label_DepositNo.Visible:=False;
          //Edit_TestName.SetFocus;
          DBLCB_RefDocCode.SetFocus;
     end;
end;

procedure Tfrom_BillingRefund.Le_PaymentChange(Sender: TObject);
begin
     CalculatePayment;
end;

procedure Tfrom_BillingRefund.Le_PaymentExit(Sender: TObject);
begin
     (*if Le_Payment.Text <> '' then
     begin
          if StrToFloat(Le_Payment.Text) = 0 then
          begin
               MsgBox(1011, 0, '', '', '');
               //Le_Payment.SetFocus;
          end;
     end;*)
     // else
     // Le_Payment.SetFocus
end;

procedure Tfrom_BillingRefund.Le_PaymentKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if gi_compileValue = 2 then
     begin
          if Key = VK_F12 then
               BB_SaveClick(Sender);
     end;
end;

procedure Tfrom_BillingRefund.Le_PaymentKeyPress(Sender: TObject; var Key: Char);
begin
     if not(Key in [#8, #13, '0' .. '9', '-', DecimalSeparator]) then
          Key := #0
     else if ((Key = DecimalSeparator) or (Key = '-')) and (Pos(Key, (Sender as TLabeledEdit).Text) > 0) then
          Key := #0
     else if (Key = '-') and ((Sender as TLabeledEdit).SelStart <> 0) then
          Key := #0;
     (*if Key = #13 then
          BB_Save.SetFocus;*)
end;

procedure Tfrom_BillingRefund.LoadBill;
Var
     Qry: TOraQuery;
     ls_RefDoc: string;
     li_Communityid, li_SchemdID, li_RefDepID: Integer;
     TestPriceWithDis, SvrTaxWithDis, TotalPriceWithDis,lf_DiscountTotal: Double;
     Sender: TObject;

Label JumpTo;

begin

     if (gb_IncludePharmacyChargeOnly = true) and (gi_BillCase in [2, 4, 6, 7]) then
          Goto JumpTo;

     Qry := TOraQuery.Create(nil);
     case gi_BillCase of
          1, 5:
               begin
                    with Table_TempBilling do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'TempBilling.db';
                         EmptyTable;
                         Open;
                    end;
               end;
          2, 3, 4, 6, 7:
               begin
                    with Table_FinalBill do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'FinalBill.db';
                         EmptyTable;
                         Open;
                    end;
               end;
     end;

     with Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          if gi_BillCase in [1, 2] then
          begin
               SQL.Add('SELECT SBD.SEBD_REFDOCCODE REFDOCCODE,SBD.SEBD_DISCOMMUNITYID COMMUNITYID,SBD.SEBD_DISSCHEMEID SCHEMEID,SBD.SEBD_SERVICEBILLDETAILID SERVICEBILLDETAILID');
               SQL.Add(',SBD.SEBD_AMOUNT AMOUNT,SBD.SEBD_VATAMT VATAMT,SBD.SEBD_QTY QTY,SBD.SEBD_TOTALAMOUNT TOTALAMOUNT,SBD.SEBD_DISPER DISPER,SBD.SEBD_BILLNO BILLNO');
               SQL.Add(',SBD.SEBD_PATIENTTESTID PATIENTTESTID,SBD.SEBD_PATIENTID PATIENTID,SBD.SEBD_INPATIENTID INPATIENTID,SBD.SEBD_DEPID DEPID,SBD.SEBD_DOCCODE DOCCODE');
               SQL.Add(',SBD.SEBD_SERVICE SERVICE,SBD.SEBD_SERVICETYPE SERVICETYPE,SBD.SEBD_DISCOUNT DISPERADD,SBD.SEBD_RATETYPE RATETYPE,SBD.SEBD_BILLDETAILID BILLDETAILID');
               SQL.Add(',SBD.SEBD_BILLDATE BILLDATE,SBD.SEBD_BILLTIME BILLTIME,SBD.SEBD_BILLBY VERIFIEDBY,SBD.SEBD_ORGBILLCATEGORY ORGBILLCATEGORY');
               SQL.Add(',(SELECT ORBC_HOSPARTPER FROM HS_ORBC_ORGBILLCATEGORY WHERE ORBC_ORGBILLCATEGORYCODE=SBD.SEBD_ORGBILLCATEGORY)HOSPARTPER');
               SQL.Add(',(SELECT TESTNAMEID FROM PATIENTTEST WHERE PATIENTTESTID=SBD.SEBD_PATIENTTESTID)TESTNAMEID');
               SQL.Add(',(SELECT TENA_TNCategoryCode FROM HS_TENA_TestName WHERE TENA_TestNameCode=SBD.SEBD_Service) TNCategoryCode');
               // SQL.Add(',(SELECT PATIENTTESTID FROM PATIENTTEST WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)PATIENTTESTIDMAIN');
               // SQL.Add(',PT.PATIENTTESTID AS PATIENTTESTIDMAIN');
               SQL.Add(',SBD.SEBD_ISFRACTIONABLETEST ISFRACTIONABLETEST,(SELECT SEBM_TOBESENTTOWEB FROM HS_SEBM_SERVICEBILLMASTER WHERE SEBM_BILLNO=SBD.SEBD_BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT SEBM_TOBESENTTOSMS FROM HS_SEBM_SERVICEBILLMASTER WHERE SEBM_BILLNO=SBD.SEBD_BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT SEBM_TOBESENTTOEMAIL FROM HS_SEBM_SERVICEBILLMASTER WHERE SEBM_BILLNO=SBD.SEBD_BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(' ,(SELECT DISTINCT TENP_ISVATABLE FROM HS_TENP_TESTNAMEPRICE WHERE  TENP_TESTNAMEID=(SELECT TENA_TESTNAMEID From HS_TENA_TestName WHERE TENA_TestNameCode=SBD.SEBD_Service) and Trim(TENP_PATIENTTYPECODE)=SBD.SEBD_PatientType)IsVatable');
               SQL.Add(' ,(SELECT Max(TestProgressStatus)TestProgressStatus From PatientTest Where ServiceBillDetailID=SBD.SEBD_ServiceBillDetailID)TestProgressStatus');
               SQL.Add(' ,(SELECT Distinct TENP_ISDISCOUNTABLE FROM HS_TENP_TESTNAMEPRICE WHERE  TENP_TESTNAMEID=(SELECT TENA_TESTNAMEID From HS_TENA_TestName WHERE TENA_TestNameCode=SBD.SEBD_Service) and Trim(TENP_PATIENTTYPECODE)=SBD.SEBD_PatientType)IsDiscountable');
               SQL.Add(' ,(SELECT USMA_UserName From HS_USMA_USERMAIN Where USMA_UserID=SBD.SEBD_BillBy)UserName');
               SQL.Add(' ,Case when NVL((SELECT TENA_LABDepId From HS_TENA_TestName WHERE TENA_TestNameCode=SBD.SEBD_Service),0) > 0 Then ''P'' ELSE ');
               SQL.Add(' (SELECT DEPT_DepType FROM HS_DEPT_Department WHERE DEPT_DepID=SBD.SEBD_DepID) End DepType,');
               SQL.Add(' NVL((SELECT TENA_LABDepId From HS_TENA_TestName WHERE TENA_TestNameCode=SBD.SEBD_Service),0) LabDepId');
               if Trim(Gs_TempBillno) <> '' then
                    SQL.Add(' FROM HS_SEBD_SERVICEBILLDETAIL SBD WHERE SBD.SEBD_BILLNO in (' + #39 + Gs_TempBillno + #39+ ')')
               else
                    SQL.Add(' FROM HS_SEBD_SERVICEBILLDETAIL SBD WHERE SBD.SEBD_BILLNO =' + #39 + Gs_BillNo + #39);
               // SQL.Add('AND SBD.SERVICEBILLDETAILID=PT.SERVICEBILLDETAILID');
               SQL.Add(
                    'AND SEBD_BillDetailId<>-1111 AND SBD.SEBD_PatientTestId NOT IN (SELECT TEca_PatientTestId FROM HS_TECA_TESTCANCEL WHERE TECA_SERVICEBILLDETAILID=SBD.SEBD_SERVICEBILLDETAILID)');
          end
          else if gi_BillCase in [4, 6] then
          begin
//               SQL.Add('SELECT BD.*');

               SQL.Add('SELECT BD.BIDE_REFDOCCODE REFDOCCODE,BD.BIDE_DISCOMMUNITYID COMMUNITYID,BD.BIDE_DISSCHEMEID SCHEMEID,BD.BIDE_SERVICEBILLDETAILID SERVICEBILLDETAILID');
               SQL.Add(',BD.BIDE_AMOUNT AMOUNT,BD.BIDE_VATAMT VATAMT,BD.BIDE_QTY QTY,BD.BIDE_TOTALAMOUNT TOTALAMOUNT,BD.BIDE_DISPER DISPER,BD.BIDE_BILLNO BILLNO');
               SQL.Add(',BD.BIDE_PATIENTTESTID PATIENTTESTID,BD.BIDE_PATIENTID PATIENTID,BD.BIDE_INPATIENTID INPATIENTID,BD.BIDE_DEPID DEPID,BD.BIDE_DOCCODE DOCCODE');
               SQL.Add(',BD.BIDE_SERVICE SERVICE,BD.BIDE_SERVICETYPE SERVICETYPE,BD.BIDE_DISCOUNT DISPERADD,BD.BIDE_RATETYPE RATETYPE,BD.BIDE_BILLDETAILID BILLDETAILID');
               SQL.Add(',BD.BIDE_BILLDATE BILLDATE,BD.BIDE_BILLTIME BILLTIME,BD.BIDE_BILLBY VERIFIEDBY,BD.BIDE_ORGBILLCATEGORY ORGBILLCATEGORY,BIDE_ISVATABLETEST ISVATABLE,Bide_HosPartPer HOSPARTPER');

               SQL.Add(',BD.BIDE_ISFRACTIONABLETEST ISFRACTIONABLETEST,(SELECT TENA_TESTNAMEID FROM HS_TENA_TESTNAME WHERE TENA_TESTNAMECODE=BD.BIDE_SERVICE)TESTNAMEID');
               SQL.Add(',(SELECT TENA_TNCATEGORYCODE FROM HS_TENA_TESTNAME WHERE TENA_TESTNAMECODE=BD.BIDE_Service) TNCategoryCode');
               SQL.Add(' ,(SELECT BIMA_TOBESENTTOWEB FROM HS_BIMA_BILLMASTER WHERE BIMA_BILLNO=BD.BIDE_BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT BIMA_TOBESENTTOSMS FROM HS_BIMA_BILLMASTER WHERE BIMA_BILLNO=BD.BIDE_BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT BIMA_TOBESENTTOEMAIL FROM HS_BIMA_BILLMASTER WHERE BIMA_BILLNO=BD.BIDE_BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(',(SELECT REDE_REFUNDBILLNO FROM HS_REDE_REFUNDDETAIL WHERE REDE_BILLDETAILID=BD.BIDE_BILLDETAILID)REFUNDBILLNO');
               SQL.Add(' FROM HS_BIDE_BILLDETAIL BD WHERE BIDE_BILLNO=' + #39 + Gs_BillNo + #39);
               SQL.Add('AND BIDE_BILLDETAILID NOT IN (SELECT TECA_BILLDETAILID FROM HS_TECA_TESTCANCEL WHERE TECA_BILLDETAILID=BD.BIDE_BILLDETAILID)');

          end
          else if gi_BillCase = 5 then
          begin
               SQL.Add('SELECT SBD.*');
               SQL.Add(',(SELECT TESTNAMEID FROM TESTNAME WHERE TESTNAMECODE=SBD.SERVICE)TESTNAMEID');
               SQL.Add(',(SELECT TNCategoryCode FROM TestName WHERE TestNameCode=BD.Service) TNCategoryCode');
               // SQL.Add(',(SELECT PATIENTTESTID FROM PATIENTTEST WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)PATIENTTESTIDMAIN');
               SQL.Add(' ,(SELECT TOBE_SENTTOWEB FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT TOBE_SENTTOSMS FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT TOBE_SENTTOEMAIL FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(' FROM SERVICEBILLDETAIL SBD WHERE BILLNO IN (SELECT REFERENCENO FROM DEPOSIT');
               SQL.Add(' WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')');
               SQL.Add('AND BillDetailId<>-1111 AND SERVICEBILLDETAILID NOT IN (SELECT SERVICEBILLDETAILID FROM TESTCANCEL WHERE BILLNO=SBD.BILLNO)');
          end
          else if gi_BillCase = 7 then
          begin
               SQL.Add('SELECT RD.*');
               SQL.Add(',(SELECT TNCategoryCode FROM TestName WHERE TestNameCode=RD.Service) TNCategoryCode');
               SQL.Add(',(SELECT TESTNAMEID FROM TESTNAME WHERE TESTNAMECODE=RD.SERVICE)TESTNAMEID');
               SQL.Add(' FROM REFUNDDETAIL RD WHERE BILLNO=' + #39 + Gs_BillNo + #39);
          end;
          SQL.SaveToFile('C:\BILL.TXT');
          Open;
          if gi_BillCase in [1, 2, 4, 5, 6] then
          begin
               if Qry.FieldByName('ToBe_SenttoWeb').AsString = 'Y' then
                    CB_Send2Web.Checked := true
               else
                    CB_Send2Web.Checked := False;

               if Qry.FieldByName('ToBe_senttosms').AsString = 'Y' then
                    CB_Send2Sms.Checked := true
               else
                    CB_Send2Sms.Checked := False;

               if Qry.FieldByName('ToBe_senttoemail').AsString = 'Y' then
                    CB_Send2Email.Checked := true
               else
                    CB_Send2Email.Checked := False;
          end;

          if gi_BillCase=1 then // IP Service Cancel
          gi_InpatientID:=Qry.FieldByName('InpatientId').AsInteger;


          ls_RefDoc := '';
          //ls_RefDoc := Qry.FieldByName('RefDocCode').AsString;
          li_Communityid := Qry.FieldByName('CommunityId').AsInteger;
          li_SchemdID := Qry.FieldByName('SchemeId').AsInteger;

          QueryScheme.Close;
          QueryScheme.Open;



          DBLCB_Scheme.KeyValue:=Qry.FieldByName('SchemeId').AsInteger;
          DBLCB_Scheme.Enabled:=True;

          Query_ReferingDocDept.Close;
          Query_ReferingDocDept.Open;

          Try
               IF Trim(Qry.FieldByName('RefDocCode').AsString)<>'' then
               li_RefDepID:=Qry.FieldByName('RefDocCode').AsInteger
               else
               li_RefDepID:=0;
          except
               li_RefDepID:=0;
          End;

          DBLCB_RefDocCode.KeyValue := li_RefDepID;
          pf_TestPrice := 0;
          pf_SvrTax := 0;
          pf_Qty := 0;
          pf_TotalPrice := 0;
          pf_Total := 0;
          pf_subtotal := 0;
          pf_grandtotal := 0;
          pf_SvrTaxTotal := 0;
          pi_TotItems := 0;
          pf_discount := 0;
          pf_DiscountTotal := 0;
          while not eof do
          begin
               pf_TestPrice := Qry.FieldByName('Amount').AsFloat;
               pf_SvrTax := Qry.FieldByName('VatAmt').AsFloat;
               pf_Qty := Qry.FieldByName('Qty').AsFloat;
               pf_disper := Qry.FieldByName('DisPer').AsFloat;
               pf_TotalPrice := pf_TestPrice * pf_Qty + pf_SvrTax;

               lf_DiscountTotal:=GetNoOfDecimalPartOfFloatNum((Qry.FieldByName('Amount').AsFloat * Qry.FieldByName('Qty').AsFloat * Qry.FieldByName('DisPer').AsFloat/100),4);

               if Gs_TaxRule = 'TAD' then
               begin
                    TestPriceWithDis := pf_TestPrice - ((pf_disper / 100) * pf_TestPrice);
                    if Qry.FieldByName('IsVatable').AsString = 'Y' then
                         SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis
                    Else
                         SvrTaxWithDis := 0;
                    TotalPriceWithDis := (TestPriceWithDis + SvrTaxWithDis) * pf_Qty;
               end
               else if Gs_TaxRule = 'TBD' then
               begin
                    TotalPriceWithDis := pf_TestPrice * pf_Qty + pf_SvrTax - ((pf_disper / 100) * pf_TestPrice * pf_Qty);
               end;

               (* if (pf_disper > 0) and (Gs_TaxRule='TAD') then
                 begin
                 TestPriceWithDis := pf_TestPrice - ((pf_disper / 100) * pf_TestPrice);
                 SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
                 TotalPriceWithDis := TestPriceWithDis + SvrTaxWithDis;
                 end
                 else
                 begin
                 TotalPriceWithDis := pf_TestPrice * pf_Qty + pf_SvrTax-((pf_disper / 100) * pf_TestPrice * pf_Qty);
                 end; *)

               case gi_BillCase of
                    1, 5:
                         begin
                              with Table_TempBilling do
                              begin
                                   Append;
                                   pi_TotItems := pi_TotItems + 1;
                                   FieldByName('ServiceBillDetailID').AsInteger := Qry.FieldByName('ServiceBillDetailID').AsInteger;
                                   FieldByName('PatientId').AsInteger := Qry.FieldByName('PatientId').AsInteger;
                                   FieldByName('InPatientId').AsInteger := Qry.FieldByName('InPatientId').AsInteger;
                                   FieldByName('DepId').AsInteger := Qry.FieldByName('DepId').AsInteger;
                                   FieldByName('PatientTestID').AsInteger := Qry.FieldByName('PatientTestId').AsInteger;
                                   FieldByName('TestNameId').AsInteger := Qry.FieldByName('TestNameId').AsInteger;
                                   FieldByName('Doccode').AsString := Qry.FieldByName('Doccode').AsString;
                                   FieldByName('TestNameCode').AsString := Qry.FieldByName('Service').AsString;
                                   FieldByName('TestName').AsString := Qry.FieldByName('ServiceType').AsString;
                                   FieldByName('TNCategoryCode').AsString := Qry.FieldByName('TNCategoryCode').AsString;
                                   FieldByName('TestPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TestPrice));
                                   FieldByName('Qty').AsFloat := pf_Qty;
                                   FieldByName('QtyOld').AsFloat := pf_Qty;
                                   FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TotalPrice));
                                   FieldByName('DisPer').AsFloat := Qry.FieldByName('DisPer').AsFloat;
                                   FieldByName('Discount').AsFloat := lf_DiscountTotal;
                                   FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', (pf_SvrTax)));
                                   FieldByName('ISFRACTIONABLETEST').AsString:=Qry.FieldByName('ISFRACTIONABLETEST').AsString;
                                   FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', TotalPriceWithDis));
                                   FieldByName('CommunityId').AsInteger := Qry.FieldByName('CommunityId').AsInteger;
                                   FieldByName('SchemeId').AsInteger := Qry.FieldByName('SchemeId').AsInteger;
                                   FieldByName('RefDocCode').AsString := Qry.FieldByName('RefDocCode').AsString;
                                   FieldByName('RateType').AsString := Qry.FieldByName('RateType').AsString;
                                   FieldByName('OrgBillCategory').AsString := Qry.FieldByName('OrgBillCategory').AsString;
                                   FieldByName('HOSPARTPER').AsString := Qry.FieldByName('HOSPARTPER').AsString;
                                   Post;
                                   // pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                   // pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                   // pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                   // pf_grandtotal := pf_Total;
                              end;
                         end;
                    2, 4, 6, 7:
                         begin
                              with Table_FinalBill do
                              begin
                                   Append;
                                   if gi_BillCase = 2 then
                                        FieldByName('ServiceBillDetailID').AsInteger := Qry.FieldByName('ServiceBillDetailID').AsInteger;
                                   if Qry.FieldByName('BillDetailID').AsString <> '' then
                                        FieldByName('BillDetailID').AsInteger := Qry.FieldByName('BillDetailID').AsInteger;
                                   FieldByName('BillNo').AsString := Qry.FieldByName('BillNo').AsString;
                                   FieldByName('PatientId').AsInteger := Qry.FieldByName('PatientId').AsInteger;
                                   FieldByName('InPatientId').AsInteger := Qry.FieldByName('InPatientId').AsInteger;
                                   FieldByName('DepId').AsInteger := Qry.FieldByName('DepId').AsInteger;
                                   FieldByName('PatientTestID').AsInteger := Qry.FieldByName('PatientTestId').AsInteger;
                                   FieldByName('Doccode').AsString := Qry.FieldByName('Doccode').AsString;
                                   FieldByName('TestNameCode').AsString := Qry.FieldByName('Service').AsString;
                                   FieldByName('TNCategoryCode').AsString := Qry.FieldByName('TNCategoryCode').AsString;
                                   FieldByName('TestNameId').AsInteger := Qry.FieldByName('TestNameId').AsInteger;
                                   FieldByName('TestName').AsString := Qry.FieldByName('ServiceType').AsString;
                                   FieldByName('TestPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TestPrice));
                                   FieldByName('TestPriceAfterDiscount').AsFloat := StrToFloat(FormatFloat('#0.00', TestPriceWithDis));
                                   FieldByName('ISFRACTIONABLETEST').AsString:=Qry.FieldByName('ISFRACTIONABLETEST').AsString;
                                   FieldByName('Qty').AsFloat := pf_Qty;
                                   FieldByName('QtyOld').AsFloat := pf_Qty;
                                   FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TotalPrice));
                                   FieldByName('DisPer').AsFloat := Qry.FieldByName('DisPer').AsFloat;
                                   pf_disper := Qry.FieldByName('DisPer').AsFloat;
                                   FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', pf_SvrTax));
                                   FieldByName('Discount').AsFloat := Qry.FieldByName('DisperAdd').AsFloat;
                                   pf_discount := Qry.FieldByName('DisperAdd').AsFloat;
                                   FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', TotalPriceWithDis));
                                   FieldByName('CommunityId').AsInteger := Qry.FieldByName('CommunityId').AsInteger;
                                   FieldByName('SchemeId').AsInteger := Qry.FieldByName('SchemeId').AsInteger;
                                   FieldByName('RefDocCode').AsString := Qry.FieldByName('RefDocCode').AsString;
                                   FieldByName('RateType').AsString := Qry.FieldByName('RateType').AsString;
                                   FieldByName('OrgBillCategory').AsString := Qry.FieldByName('OrgBillCategory').AsString;
                                   FieldByName('HOSPARTPER').AsString := Qry.FieldByName('HOSPARTPER').AsString;
                                   if gi_BillCase = 2 then
                                   begin
                                        FieldByName('IsDiscountable').AsString := Qry.FieldByName('IsDiscountable').AsString;
                                        FieldByName('IsVatable').AsString := Qry.FieldByName('IsVatable').AsString;
                                        FieldByName('User').AsString := Qry.FieldByName('UserName').AsString;
                                        FieldByName('TestProgressStatus').AsInteger := Qry.FieldByName('TestProgressStatus').AsInteger;

                                        FieldByName('BillDate').AsString := Qry.FieldByName('BillDate').AsString;
                                        FieldByName('BillTime').AsString := Qry.FieldByName('BillTime').AsString;
                                        FieldByName('BillNo').AsString := Qry.FieldByName('BillNo').AsString;
                                        FieldByName('DisplayOrder').AsInteger := 1;
                                        FieldByName('DepType').AsString := Qry.FieldByName('DepType').AsString;
                                        FieldByName('LabDepId').AsInteger := Qry.FieldByName('LabDepID').AsInteger;
                                        FieldByName('VerifiedBy').AsInteger := Qry.FieldByName('VerifiedBy').AsInteger;
                                   end;
                                   if gi_BillCase in [4, 6] then
                                   begin
                                        pi_TotItems := pi_TotItems + 1;
                                        FieldByName('RefundBillNo').AsString := Qry.FieldByName('RefundBillNo').AsString;
                                        if Qry.FieldByName('RefundBillNo').AsString = '' then
                                        begin
                                        // pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                        // pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                        // pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                        // pf_DiscountTotal := pf_DiscountTotal + pf_discount;
                                        // pf_grandtotal := pf_Total - pf_DiscountTotal;
                                        end;
                                   end
                                   else
                                   begin
                                        // pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                        // pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                        // pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                        // // pf_DiscountTotal := pf_DiscountTotal + pf_discount;
                                        // // pf_grandtotal := pf_Total - pf_DiscountTotal;
                                        // pf_grandtotal := pf_Total;
                                   end;
                                   Post;
                              end;
                         end;
               end;
               Next;
          end;
     end;

JumpTo :

     pb_PharmacyRefundOnly:=False;
     if (gb_IncludePharmacyCharge) or (gb_IncludePharmacyChargeOnly = true) then
     begin
          (*if gi_BillCase in [2, 4, 6, 7] then
               LoadMedicineCharge;*)
     end;

     Lbl_BillNo.Caption := Gs_BillNo;
     Lbl_TotalItems.Caption := IntToStr(pi_TotItems);

     (* if gi_BillCase = 5 then
       pf_Deposit := GetTotalDepositDepNO(Gs_BillNo)
       else
       pf_Deposit := GetTotalDepositRefNo(Gs_BillNo); *)

     // pf_Deposit:=GetDepositBalance(gi_PatientID);

     //lbl_remainingbalance.Caption := FormatFloat('#0,0.00', (GetDepositBalance(gi_PatientID)));

     pf_MemberDeposit := 0;//GetTotalMemberDeposit(gi_PatientID, lbl_BenefitPackage.Caption);
     //Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
     // pf_balance := pf_grandtotal - pf_Deposit;
     // lbl_deposit.Caption := FormatFloat('#0,0.00', pf_Deposit);
     // lbl_balance.Caption := FormatFloat('#0,0.00', pf_balance);
     // le_TotalDeposit.Text := FormatFloat('#0,0.00', pf_Deposit);
     // Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);

     CalculateLabels;
     { Le_NetBalance.Text := FormatFloat('#0,0.00', pf_Total);
       //Le_Disper.Text := FormatFloat('#0,0.00', pf_disper);
       pf_discount := (pf_disper / 100) * pf_Total;
       Le_Discount.Text := FormatFloat('#0,0.00', pf_discount);
       Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
       Le_NetTotal.Text:=FormatFloat('#0,0.00', pf_NetTotal);
       Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTaxTotal);
       pf_grandtotal := pf_balance;
       Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
       Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
       Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', pf_grandtotal); }

     // Qry.Free;
     case gi_BillCase of
          1, 5:
               begin
                    table_TempBilling.Close;
                    table_TempBilling.DatabaseName := ps_Temppath;
                    table_TempBilling.Open;
               end;
          2, 4, 6, 7:
               begin
                    table_FinalBill.Close;
                    table_FinalBill.DatabaseName := ps_Temppath;
                    table_FinalBill.Open;
               end;
     end;
end;

procedure Tfrom_BillingRefund.LoadImage;
begin
     try
          Image_Main.Picture.Assign(nil);
          if LoadImageFromDB(gi_PatientID) then
               Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
     except
     end;

end;

procedure Tfrom_BillingRefund.LoadMedicineCharge;
Var
     lf_TestPrice, lf_TotalPrice, lf_SvrTax, lf_NetTotal,lf_PharmacyCost: Double;
     Qry: TOraQuery;
Begin
     Qry := TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select * from vw_hs_MedicineCharge Where PatientiD=' + IntToStr(gi_PatientID));
          Open;

          pi_MaxSaleMasterId := FieldByName('SaleMasterID').AsInteger;
          pi_MaxReturnMasterId := FieldByName('ReturnMasterID').AsInteger;
          lf_SvrTax := 0;
          lf_TestPrice := FieldByName('Total').AsFloat;
          lf_TotalPrice := FieldByName('Total').AsFloat;
          lf_NetTotal := FieldByName('NetTotal').AsFloat;
          lf_PharmacyCost := FieldByName('PharmacyCost').AsFloat;

          if lf_NetTotal < 0 then
          pb_PharmacyRefundOnly:=True;

          if lf_TestPrice > 0 then
          begin
               with Table_FinalBill do
               begin
                    (* SQL.Add('Select Count(TestPrice)C, Sum(TestPrice*Qty)SubTotal,Sum(TestPriceAfterDiscount*Qty)NetTotal
                      ,Sum(SvrTax)SvrTaxTotal,Sum(Discount)DiscountTotal');
                      SQL.Add('from FinalBill Where Status is Null And RefundBillNo is Null'); *)
                    Append;
                    FieldByName('PatientId').AsInteger := Qry.FieldByName('PatientId').AsInteger;
                    FieldByName('DepId').AsInteger := 50;
                    FieldByName('Doccode').AsString := 'HOS01';
                    FieldByName('TestNameCode').AsString := 'PHACH';
                    FieldByName('TestName').AsString := 'PHARMACY CHARGES';
                    FieldByName('TestPrice').AsFloat := StrToFloat(FormatFloat('#0.00', lf_TestPrice));
                    // FieldByName('TestPriceAfterDiscount').AsFloat := StrToFloat(FormatFloat('#0.00', lf_TestPrice));
                    FieldByName('Qty').AsFloat := 1;
                    FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', lf_TotalPrice));
                    FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', lf_SvrTax));
                    FieldByName('DisPer').AsFloat := Qry.FieldByName('DisPer').AsFloat;
                    FieldByName('Discount').AsFloat := Qry.FieldByName('Discount').AsFloat;
                    FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', lf_NetTotal));
                    FieldByName('PharmacyCost').AsFloat := StrToFloat(FormatFloat('#0.00', lf_PharmacyCost));
                    FieldByName('TestPriceAfterDiscount').AsFloat := StrToFloat(FormatFloat('#0.00', lf_NetTotal));
                    FieldByName('IsDiscountable').AsString := 'N';
                    FieldByName('IsVatable').AsString := 'N';
                    FieldByName('User').AsString := 'Pharmacy';
                    Post;
               end;
          end;
     end;
end;

procedure Tfrom_BillingRefund.LoadTestIDInVariable(TestNameID: string);
begin
     ps_LoadedTestID := ps_LoadedTestID + ',' + TestNameID;
     ps_LoadedTestID := Trim(ps_LoadedTestID);
     if copy(ps_LoadedTestID, 1, 1) = ',' then
     begin
          ps_LoadedTestID := copy(ps_LoadedTestID, 2, 999);
     end;
end;

procedure Tfrom_BillingRefund.PrintBill(CB_Preview: TCheckBox; NoOfPrint : Integer);
Var
     i: Integer;
begin
     if IsIndoorDischargePatientBill(gs_BillNo)=False then
     Begin
     try
          Form_QRBill_Manipal := TForm_QRBill_Manipal.Create(nil);
          if Gb_IsReprint then
               Form_QRBill_Manipal.lbl_reprint.Enabled := true;
          //if Gb_IsPreview then
          //begin
               with Form_QRBill_Manipal do
               begin
                    QrBill.Prepare;
                    lbl_totpage.Caption := IntToStr(QrBill.QRPrinter.PageCount);

                    for i := 0 to NoOfPrint - 1 do
                    begin
                         IF CB_Preview.Checked=True Then
                         QrBill.PreviewModal
                         Else
                         QrBill.Print;
                    end;
               end;
     finally
          Gb_IsReprint := False;
          Form_QRBill_Manipal.Free;
     end;
     End
     Else
     Begin
          LoadDischargeBillDetail(gs_BillNo);
          Try
               Form_QRDischargeBill := TForm_QRDischargeBill.Create(Nil);
               With Form_QRDischargeBill do
               Begin
                    pf_Deposit := GetDepositTotal(gs_BillNo);

                    pi_Sno := 0;
                    pb_IsDischargedBill := True;

                    if Gb_IsReprint = True then
                    Begin
                         pb_IsReprint:=True;
                         lbl_reprint.Enabled := True;
                    End
                    Else
                    Begin
                         pb_IsReprint:=False;
                         lbl_reprint.Enabled := False;
                    End;

                    LoadPatientInfo;
                    Qr_DischargeBill.Preview;
               End;
          Finally
               Form_QRDischargeBill.Free;
          End;
     End;
end;

procedure Tfrom_BillingRefund.PrintDepositSlip;
Var
     i: Integer;
begin
     try
          //MyPatient := TPatient.Create;
          //MyPatient.LoadData(gi_PatientID);
          Form_QrDepositSlip_Manipal := TForm_QrDepositSlip_Manipal.Create(nil);
          if Gb_IsReprint then
               Form_QrDepositSlip_Manipal.lbl_reprint.Enabled := true;
          with Form_QrDepositSlip_Manipal do
          begin
               QrDepositSlip.Prepare;
               lbl_totpage.Caption := IntToStr(QrDepositSlip.QRPrinter.PageCount);
               QrDepositSlip.PreviewModal;
          end;
     finally
          Gb_IsReprint := False;
          Form_QrDepositSlip_Manipal.Free;
     end;
end;

 procedure Tfrom_BillingRefund.Query_OldBillListAfterOpen(DataSet: TDataSet);
begin
     Gs_BillNo:=Query_OldBillList.FieldByName('BillNo').AsString;
     loadbill;
end;

procedure Tfrom_BillingRefund.RemoveTestNameIDInVariable(TestNameID: String);
begin
     ps_LoadedTestID := StringReplace(ps_LoadedTestID, TestNameID, '-1', [rfReplaceAll]);
end;

function Tfrom_BillingRefund.SaveBill(): Boolean;
var
     lf_a, lf_b: Double;
     ls_FinalBillNo, ls_RefBillNo, ls_DepositBillNo: String;
     Key: Char;
     MyTable: TOraTable;
     MytableName: String;
     Ps_RefDocCode: String;
     Li_NetQty,Li_RefundQty:Integer;
begin
     {if (not gb_IsBillingUser) and (gi_BillCase=2) then
     begin
          ShowMessage('Not authourized for billing');
          Exit;
     end;}
     // gi_billcase
     // 0--> Service Bill Entry/Save
     // 1--> Service Bill Load
     // 2--> Service Bill to  Final Bill
     // 3--> Final Bill Entry
     // 4--> Final Bill Load
     // 5-->Deposit bill
     // 6-->Refund bill entry

     // if Pi_CheckSum <> 0 then
     // begin
     // ShowMessage('Cannot Save Multiple times');
     // exit;
     // end;
     //
     // Inc(Pi_CheckSum);

     gs_BillType:='';
     Result := False;
     if Gs_PatientName = '' then
     begin
          MsgBox(1028, 0, '', '', '');
          exit;
     end;


     IF IsRegisteredHospitalNo(gi_PatientID)=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+IntToStr(gi_PatientID)+' )',
          mtWarning,[mbok],0);
          //MakeBlankPatientInfo;
          ResetAllHistoryForNextNewBill;
          Exit;
     End;


     IF IntToStr(gi_PatientID)<>Trim(Le_HosNo.Text) Then
     Begin
          MessageDlg('The Patient Doesn''t Belongs to This Hospital No. Please Check Hospital No Properly.',
          mtWarning,[mbok],0);
          Exit;
     End;


     if gs_BillType='IPBILL' then
     Begin
          if IsInpatient(gi_PatientID)=False then
          begin
               pi_InPatientId:=0;
               gi_InPatientId:=0;
               Label_IPNO.Caption:=IntToStr(gi_InpatientId);
               MessageDlg('Sorry this is not admitted patient.',mtWarning,[mbok],0);
               Exit;
          end;
          Label_IPNO.Caption:=IntToStr(gi_InpatientId);


          if ((QueryScheme.FieldByName('SCHE_ISIPBILLCRFACILITY').AsString='N') Or (Trim(DBLCB_Scheme.Text)='')) and (CB_BILLTYPE.KeyValue='GEN') then
          begin
               if Trim(Le_Payment.Text)='' then Le_Payment.Text:='0';
               (*if StrToFloat(Le_Payment.Text)=0 then
               begin
                    MessageDlg(' For General Patient Advance Amount is Compulsory.',mtWarning,[mbOK],0);
                    Le_Payment.SetFocus;
                    Exit;
               end;*)

               if Abs((pf_grandtotal-StrToFloat(Le_Payment.Text))) >=0.5   then
               begin
                    MessageDlg(' For General Patient Advance Amount Should be Equal to Grand Total Amount.',mtWarning,[mbOK],0);
                    Le_Payment.SetFocus;
                    Exit;
               end;
          end;
     End;

             {
     if Trim(Le_Discount.Text)='' then Le_Discount.Text:='0.00';
     if (pf_DiscountTotal>0) and (Trim(DBLCB_Scheme.Text)='') then
     begin
          MessageDlg('Please put discount scheme for discount facility.',mtInformation,[mbOK],0);
          DBLCB_Scheme.SetFocus;
          Exit;
     end;   }

     if DBLCB_RefDocCode.KeyValue <> Null then
          Ps_RefDocCode := DBLCB_RefDocCode.KeyValue
     else
          Ps_RefDocCode := '';

     if gi_BillCase in [2, 3] then
     begin
          MyTable := Table_FinalBill;
          MytableName := 'FinalBill.db';
     end
     else if gi_BillCase in [0, 1] then
     begin
          MyTable := Table_TempBilling;
          MytableName := 'TempBilling.db';
     end;

     if (gi_BillCase = 1) or (gi_BillCase=6) then
     begin
          if Trim(Le_Remarks.Text)='' then
          begin
               MessageDlg('You must have to mention refund or cancel reason',mtwarning,[mbok],0);
               Le_Remarks.SetFocus;
               exit;
          end;
     end;

     if gi_BillCase = 3 then
     begin
          if Le_Discount.Text <> '' then
               Pf_FinalBillDiscount := StrToFloat(StringReplace(Le_Discount.Text, ',', '', [rfReplaceAll]))
          else
               Pf_FinalBillDiscount := 0;
          // Pf_finalbilldiscount variable added cuz pf_discount:=0 on load
          if Le_Disper.Text <> '' then
               Pf_FinalBillDisPer := StrToFloat(Le_Disper.Text)
          else
               Pf_FinalBillDisPer := 0;
     end;

     if (DBLCB_Scheme.KeyValue=22) and (pf_CopayAmts > 0) then //22 - Medicare
     Begin
          if Trim(Le_Payment.Text)='' then
          Le_Payment.Text:='0.0';
          IF Abs(StrToFloat(Le_Payment.Text)-pf_CopayAmts) > 0.5 Then
          Begin
               MessageDlg('Sorry ! Payment Amount Should Be Match With The Co-Pay Amount : ' +Label_CoPaymentAmt.Caption,mtWarning,[MbOk],0);
               Le_Payment.SetFocus;
               Exit;
          end;
     End;

     if IsInpatient(gi_PatientID) then
     Begin
          Pi_ClinicalDepId := gi_ClinicalDepId;
          ProgressStatus := 2;
          pb_IsIndoorPatient := true;
          ps_BillType:='IP';
     End
     else
     Begin
          Pi_ClinicalDepId := GetOPDCliniCalDepId(gi_PatientID);
          ProgressStatus := 1;
          pb_IsIndoorPatient := False;
          ps_BillType:='B';
     End;

     Ps_TodaysDate:=TodaysDate;
     Ps_TodaysTIme:=TodaysTime;
     SetLength(Arr_SampleNo,1);


     if Trim(CB_PayType.Text)='' then
     Begin
          MessageDlg('Compulsory to choose pay type.',mtwarning,[mbok],0);
          Exit;
     End;


     if StrToInt(Le_HosNo.Text)<>gi_PatientID then
     begin
          MessageDlg('Hospital No Mismatch ! The displaying no is " '+Le_HosNo.Text+' " but you are doing billing for this no " '+IntToStr(gi_PatientID)+' ".',
          mtWarning,[mbOK],0);
          Exit;
     end;


     IF Not(MessageDlg('Are you ready to do billing ?',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
     Exit;


     if pb_isdelete then
     begin
          if gi_BillCase in [1, 3] then
          begin
               Try
                    DM_Hospital.DB.StartTransaction;
                    with MyTable do
                    begin
                         Close;
                         Open;
                         while not eof do
                         begin
                              if FieldByName('Status').AsString = 'C' then
                              begin
                                   Li_NetQty:=(Table_TempBilling.FieldByName('QtyOld').AsInteger-Table_TempBilling.FieldByName('Qty').AsInteger);
                                   if Li_NetQty=0 then
                                   Li_RefundQty:=1
                                   else
                                   Li_RefundQty:=Table_TempBilling.FieldByName('QtyOld').AsInteger-Table_TempBilling.FieldByName('Qty').AsInteger;

                                   if Li_NetQty=0 then
                                   Li_NetQty:=1
                                   else
                                   Li_NetQty:=Table_TempBilling.FieldByName('Qty').AsInteger;
                                   CancelServiceTest(Table_TempBilling.FieldByName('ServiceBillDetailId').AsInteger,Li_RefundQty,Le_Remarks.Text);
                              end;
                              Next;
                         end;
                    end;
                    ShowDoneMessage;
                    DBGrid1.OnKeyDown := nil;
                    // Form_BillingParent.OnKeyDown := nil;
                    DM_Hospital.DB.Commit;
                    Result := true;
               Except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not Saved');
                    exit;
               End;

               if pf_AdvancRefund > 0 then
               PrintDepositSlip;

          end
          else if gi_BillCase = 6 then
          begin
               ls_FinalBillNo := Gs_BillNo;
               try
                    DM_Hospital.DB.StartTransaction;
                    with Table_FinalBill do
                    begin
                         Close;
                         Open;
                         if copy(ls_FinalBillNo,0,2)='CS' then
                         Gs_BillNo := GetNextBillNo('RF', 'HS_REDE_REFUNDDETAIL','REDE_REFUNDBILLNO')
                         Else if copy(ls_FinalBillNo,0,2)='LC' then
                         Gs_BillNo := GetNextBillNo('LRF', 'HS_REDE_REFUNDDETAIL','REDE_REFUNDBILLNO')
                         else if copy(ls_FinalBillNo,0,2)='XC' then
                         Gs_BillNo := GetNextBillNo('XRF', 'HS_REDE_REFUNDDETAIL','REDE_REFUNDBILLNO')
                         else if copy(ls_FinalBillNo,0,2)='CC' then
                         Gs_BillNo := GetNextBillNo('CRF', 'HS_REDE_REFUNDDETAIL','REDE_REFUNDBILLNO');
                         while not eof do
                         begin
                              if (FieldByName('Status').AsString = 'R') and (FieldByName('RefundbillNo').AsString = '') then
                              begin
                                   Li_NetQty:=(Table_FinalBill.FieldByName('QtyOld').AsInteger-Table_FinalBill.FieldByName('Qty').AsInteger);
                                   if Li_NetQty=0 then
                                   Li_RefundQty:=1
                                   else
                                   Li_RefundQty:=Table_FinalBill.FieldByName('QtyOld').AsInteger-Table_FinalBill.FieldByName('Qty').AsInteger;

                                   if Li_NetQty=0 then
                                   Li_NetQty:=1
                                   else
                                   Li_NetQty:=Table_FinalBill.FieldByName('Qty').AsInteger;

                                   if Table_FinalBill.FieldByName('TestNameCode').AsString<>'ONE001' then
                                   SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,Li_RefundQty,Table_FinalBill.FieldByName('TestPrice').AsFloat,
                                   (Table_FinalBill.FieldByName('SvrTax').AsFloat/Li_NetQty)*Li_RefundQty,
                                        Table_FinalBill.FieldByName('DIscount').AsFloat/Li_NetQty,Le_Remarks.Text,'N')
                                   Else
                                   Begin
                                        (*SaveRefundDetail(BillDetailID, RefundQty,RefundAmount,RefundVatAmt,RefundDiscount: Integer;
                                                  RefundRemarks,IsBloodRefund : String);*)
                                        IF StrToFloat(Edit_BloodBagQty.Text) > 0 Then
                                        SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,StrToFloat(Edit_BloodBagQty.Text),StrToFloat(Edit_BloodBagCharge.Text),
                                                            StrToFloat(Edit_Discount.Text),StrToFloat(Edit_SvrTax.Text),Le_Remarks.Text,'Y')
                                        Else
                                        SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger,Li_NetQty,Table_FinalBill.FieldByName('TestPrice').AsFloat,
                                        Table_FinalBill.FieldByName('DIscount').AsFloat/Li_NetQty,Table_FinalBill.FieldByName('SvrTax').AsFloat/Li_NetQty,Le_Remarks.Text,'N');
                                   End;

                                   // CancelFinalTest(Table_FinalBill.FieldByName('BillDetailID').AsInteger);
                                   if gs_ISFractionSharingActive='Y' then
                                   Begin
                                        if (FieldByName('ISFRACTIONABLETEST').AsString='Y') or (FieldByName('TestNameCode').AsString='DOCCH') then
                                        begin
                                            with Qry do
                                            begin
                                                 Close;
                                                 DatabaseName:=gs_DatabaseName;
                                                 SQL.Clear;
                                                 SQL.Add('Select * From HS_FRDE_FractionDetail where FRDE_Billdetailid='+inttostr(Table_FinalBill.FieldByName('BillDetailID').AsInteger));
                                                 Open;
                                            end;
                                            while not Qry.Eof  do
                                            begin
                                                 SaveRefundFractiondetail(Qry.FieldByName('FRDE_FractionDetailId').AsInteger,Gi_PATIENTID,
                                                 Gi_INPATIENTID,gi_RefundDetailID,0,Qry.FieldByName('FRDE_FractionId').AsInteger,Qry.FieldByName('FRDE_PositionWiseFractionId').AsInteger,
                                                 Qry.FieldByName('FRDE_DepId').AsInteger,Gi_UserId,Qry.FieldByName('FRDE_UnitTestCost').AsFloat,
                                                 Qry.FieldByName('FRDE_Qty').AsFloat,Qry.FieldByName('FRDE_FractionAmount').AsFloat,Qry.FieldByName('FRDE_FractionRate').AsFloat,Qry.FieldByName('FRDE_DisPer').AsFloat,
                                                 Qry.FieldByName('FRDE_DocCode').AsString,Qry.FieldByName('FRDE_TestNameCode').AsString,Gs_BillNo,TOdaysdate,Qry.FieldByName('FRDE_BillType').AsString,
                                                 Qry.FieldByName('FRDE_PayType').AsString,Qry.FieldByName('FRDE_Isfractionpropwithdisper').AsString,'',Qry.FieldByName('FRDE_Isaddlumpsum').AsString,
                                                 Qry.FieldByName('FRDE_Ischargedivide').AsString,'',todaysdate,TodaysTime);
                                                 Qry.next;
                                            end;
                                        end;
                                   End;
                              end;
                              Next;
                         end;
                    end;
                  //  DecreaseDocReferralCount(Ps_RefDocCode);
                    ls_RefBillNo := Gs_BillNo;
                    LoadBill;
                    ShowDoneMessage;
                    DM_Hospital.DB.Commit;
                    Result := true;
               except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not saved');
                    exit;
               end;
               // if MsgBox(1009, 1, '', '', '') then
               begin
                    Gs_BillNo := ls_RefBillNo;
                    PrintBill(CB_Preview,1);
                    gi_BillCase := 2;
                    if MessageDlg('Are you sure to print original bill ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
                    Begin
                         Gb_RefundBillExists := true; // Print Invoice Bill with Refund Information
                         Gs_BillNo := ls_FinalBillNo;
                         PrintBill(CB_Preview,1);
                         Gs_BillNo := ls_RefBillNo;
                    End;
                    gi_BillCase := 6;
               end;
          end;
          (* Self.Parent.SendToBack;
            FreeAndNil(Self);
            FrameCleared := true; *)
          //LoadBill;
          exit;
     end;


     if (gi_BillCase = 0) then
     begin
          Table_TempBilling.Close;
          Table_TempBilling.Open;
          if Table_TempBilling.Recordcount = 0 then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               exit;
          end;

          if ((QueryScheme.FieldByName('SCHE_ISIPBILLCRFACILITY').AsString='N') Or (Trim(DBLCB_Scheme.Text)='')) and (CB_BILLTYPE.KeyValue='GEN') then
          begin
                    if Trim(Le_Payment.Text)='' then Le_Payment.Text:='0';
                    if (pf_grandtotal-StrToFloat(Le_Payment.Text)) >=0.5   then
                    begin
                         MessageDlg('          Sorry ! You must Have to Enter the Advance Amount as Much as of Service Bill Total.'+#13+#13+
                               'Reason -> Community is Empty OR Community is not Related to Credit Party.',mtWarning,[Mbok],0);
                         Le_Payment.SetFocus;
                         Exit;
                    end;
          end;

          if not SaveServiceBill then
          begin
               ShowMessage('Bill not Saved');
               exit;
          end;


          Lbl_BillNo.Visible:=True;
          Label21.Visible:=True;
          Lbl_BillNo.Caption:=ps_FinalBillNo;

          if Trim(ps_DepositBillNo)<>'' then
          Begin
               Label11.Visible:=True;
               Label_DepositNo.Visible:=True;
               Label_DepositNo.Caption:=ps_DepositBillNo;
          End;

          if pb_IslabDep then
          begin
               if Cb_Label.Checked=True then
               ReprintSticker(ps_FinalBillNo,CB_Preview);
          end;

          if MessageDlg('Do You Want to Print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          Begin
               gs_BillNo:=ps_FinalBillNo;
               PrintBill(CB_Preview,1);
               //pb_IslabDep:=False;
          End;



          //IncreaseVisitCount(gi_PatientID);
          // IncreaseDocReferralCount(Ps_RefDocCode);
          SimulateKeyPress(Self.Parent.Handle, VK_F5);
          // Self.Parent.SendToBack;
          //if GetMonitorCount > 1 then
             //  Frame_Billing.ClearCustomerPreview;
          // Self.Free;
          // FrameCleared := true;
     end
     else if gi_BillCase in [2, 3] then
     begin
          Table_FinalBill.Close;
          Table_FinalBill.Open;
          if Table_FinalBill.Recordcount = 0 then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               exit;
          end;

          if CB_PayType.ItemIndex = 1 then
          begin
               if Trim(DBLCB_Scheme.Text)='' then
               begin
                    MessageDlg('For Credit You Must Have to Mention Credit Scheme(Party)',mtWarning,[mbOK],0);
                    Exit;
               end;

               if (QueryScheme.FieldByName('SCHE_ISIPBILLCRFACILITY').AsString='N') then
               Begin
                    MessageDlg('Sorry This is not Credit Scheme.',mtWarning,[mbOK],0);
                    Exit;
               End;


               if (CB_Scheme.Checked = False) or (DBLCB_Scheme.KeyValue < 0) then
               begin
                    count := 0;
                    MsgBox(1025, 0, '', '', '');
                    exit;
               end;
          end;
          { *
          if  (CB_PayType.ItemIndex = 0) and (Edit_MemberDeposit.Text = '') then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               Le_Payment.SetFocus;
               exit;
          end;

          if (pf_Payment < pf_grandtotal) and (CB_PayType.ItemIndex = 0) then
          begin
               MessageDlg('Payment [Rs. ' + FormatFloat('#0,0.00', pf_Payment) + '] is Less than GrandTotal [Rs. ' + FormatFloat
                      ('#0,0.00', pf_grandtotal) + ']', mtInformation, [mbok], 0);
               Le_Payment.SetFocus;
               exit;
          end;* }

          (* if (pf_Payment < pf_grandtotal) and (CB_PayType.ItemIndex = 0) then
            begin // for deposit
            if MsgBox(1007, 1, 'Rs. ' + FormatFloat('#0,0.00', pf_Payment), 'Rs. ' + FormatFloat('#0,0.00', pf_grandtotal), '') then
            begin
            Try
            DM_Hospital.DB.StartTransaction;
            if gi_BillCase = 3 then
            begin
            GB_isDepositBill := false;
            SaveServiceBill_Detail;
            gi_BillCase := 2;
            LoadBill;
            end;
            GB_isDepositBill := true;
            SaveDepositDetail(pf_Payment, 0, 'ADVANCE', 'BILL', 'ADVANCE BILL');
            if Pf_DepositDeducted > 0 then
            SaveDepositDetail(0, Pf_DepositDeducted, 'DEPOSIT', lbl_BenefitPackage.Caption, 'DEPOSIT ADJUSTED');
            ShowDoneMessage;
            DM_Hospital.DB.Commit;
            Except
            DM_Hospital.DB.Rollback;
            ShowMessage('Bill not Saved');
            exit;
            End;
            end
            else
            begin
            count := 0;
            exit;
            end;
            end
            else *)
          begin
               Try
                    DM_Hospital.DB.StartTransaction;
                    GB_isDepositBill := False;
                    if gi_BillCase = 3 then
                    begin
                         SaveServiceBill_Detail;
                         gi_BillCase := 2;
                         LoadBill;
                    end;
                    SaveFinalBill_Detail;
                    ps_FinalBillNo := Gs_BillNo;
                    SaveDepositData;

                    ps_DepositBillNo:='';
                    if (pf_CopayAmts > 0)  then
                    Begin
                         SaveCoPayReceipt;
                         ps_DepositBillNo := Gs_BillNo;
                    End;
                    ShowDoneMessage;
                    DM_Hospital.DB.Commit;
                    Result := true;
               except
                    DM_Hospital.DB.Rollback;
                    gi_BillCase:=3;
                    Pb_ServiceBillMasterExist:=False;
                    ShowMessage('Bill not Saved');
                    exit;
               End;
               // ShowMessage('1');
          end;

          // if MsgBox(1009, 1, '', '', '') then
          {
          begin
               Gs_BillNo := ls_FinalBillNo;
               PrintBill;
               if Edit_AddDeposit.Text <> '' then
               begin
                    Gs_BillNo := ls_DepositBillNo;
                    PrintDepositSlip;
               end;
          end;}
               if pb_IslabDep then
               begin
                    if Cb_Label.Checked=True then
                    ReprintSticker(ps_FinalBillNo,CB_Preview);
               end;


               Lbl_BillNo.Visible:=True;
               Label21.Visible:=True;
               Lbl_BillNo.Caption:=gs_BillNo;
               if MessageDlg('Do you want to print ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
               Begin
                    gs_BillNo:=ps_FinalBillNo;
                    PrintBill(CB_Preview,1);
               End;

               if gi_BillCase<>2 then
               Begin
                    if Trim(Edit_AddDeposit.Text) <> '' then
                    begin
                         Gs_BillNo := ls_DepositBillNo;
                         PrintDepositSlip;
                    end;
               End;



          (*if Ps_LabBillNo<>'' then
          begin
               Gs_BillNo := Ps_LabBillNo;
               PrintBill;
               if Edit_AddDeposit.Text <> '' then
               begin
                    Gs_BillNo := ls_DepositBillNo;
                    PrintDepositSlip;
               end;
          end;

          if Ps_XrayBillNo<>'' then
          begin
               Gs_BillNo := Ps_XrayBillNo;
               PrintBill;
               if Edit_AddDeposit.Text <> '' then
               begin
                    Gs_BillNo := ls_DepositBillNo;
                    PrintDepositSlip;
               end;
          end;

          if Ps_CtScanBillNo<>'' then
          begin
               Gs_BillNo := Ps_CtScanBillNo;
               PrintBill;
               if Edit_AddDeposit.Text <> '' then
               begin
                    Gs_BillNo := ls_DepositBillNo;
                    PrintDepositSlip;
               end;
          end; *)


          //IncreaseVisitCount(gi_PatientID);
          //IncreaseDocReferralCount(Ps_RefDocCode);


          (**********************
          SimulateKeyPress(Self.Parent.Handle, VK_F5);

          Self.Parent.SendToBack;
          // Form_BillingParent.Panel_Parent.SendToBack;
          if GetMonitorCount > 1 then
               Frame_Billing.ClearCustomerPreview;
          FreeAndNil(Self);
          FrameCleared := true;
          if gi_BillCase in [2, 3] then
               exit;
          // Frame_BillList.BB_RefreshClick(Sender);
          ClearVariable;
          // Frame_BillList.Lbl_BillNo.Caption := Gs_BillNo;
          with Form_BillingParent do
          begin
               try
                    lbl_Hosno.Caption := IntToStr(gi_PatientID);
                    lbl_patientname.Caption := Gs_PatientName;
                    lbl_InpatientNo.Caption := IntToStr(gi_InPatientID);
               except

               end;
          end; *****************)
     end;
     case gi_BillCase of // Clearing Form for new service entry because form is not free
          0:
               begin
                    with Table_TempBilling do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'TempBilling.db';
                         EmptyTable;
                         Open;
                    end;
                    Table_TempBilling.Close;
                    Table_TempBilling.DatabaseName := ps_Temppath;
                    Table_TempBilling.Open;
               end;
          2, 3:
               begin
                    with Table_FinalBill do
                    begin
                         Close;
                         DatabaseName := ps_Temppath;
                         TableName := 'Finalbill.db';
                         EmptyTable;
                         Open;
                    end;
                    Query_FinalBill.Close;
                    Query_FinalBill.DatabaseName := ps_Temppath;
                    Query_FinalBill.Open;
               end;
     end;

     ClearAll(Panel1);
     //Lbl_TotalItems.Caption := '00.00';
     Lbl_BillNo.Caption := gs_BillNo;
     ps_LoadedTestID := '';
     (*Lbl_GrandTotal.Caption := '00.00';
     lbl_DepositBalance.Caption := '00.00';
     lbl_NetBalance.Caption := '00.00';
     Lbl_ReturnAmt.Caption := '00.00';
     lbl_TenderAmt.Caption := '00.00';*)
     pi_TotItems := 0;
     pi_TotalItems := 0;
     pf_TestPrice := 0;
     pf_SvrTax := 0;
     pf_Qty := 0;
     pf_TotalPrice := 0;
     pf_Total := 0;
     pf_subtotal := 0;
     pf_grandtotal := 0;
     pf_SvrTaxTotal := 0;
     pi_TotItems := 0;
     pf_discount := 0;
     pf_DiscountTotal := 0;
     gi_BillCase:=3;
     if Trim(ps_FinalBillNo)<>'' then
     begin
          Label21.Visible:=True;
          Lbl_BillNo.Visible:=True;
          Lbl_BillNo.Caption:=ps_FinalBillNo;
     end;

     if Trim(ps_DepositBillNo)<>'' then
     begin
          Label11.Visible:=True;
          Label_DepositNo.Visible:=True;
          Label_DepositNo.Caption:=ps_DepositBillNo;
     end;

     if gs_BillType='OPBILL' then
     CB_PayType.ItemIndex:=0
     Else
     CB_PayType.ItemIndex:=1;

     Pb_ServiceBillMasterExist:=False;
     Cb_Qty.Checked:=True;
     Cb_Label.Checked:=True;

     if gs_BillType='IPBILL' then
     begin
          gi_BillCase:=0;
          with Table_TempBilling do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'TempBilling.db';
               EmptyTable;
               Open;
          end;
          Query_TempBilling.Close;
          Query_TempBilling.DatabaseName:=ps_Temppath;
          Query_TempBilling.Open;
          DBGrid1.DataSource := DS_Tempbilling;
     end;
     Le_HosNo.SetFocus;
end;


procedure Tfrom_BillingRefund.SaveInvAdvanceDeposit(DrAmount,CrAmount :Double; DepositRemarks : String);
var li_DepositHeadId : Integer;
begin
     li_DepositHeadId:=8; // INVESTIGATION CHARGE
     GB_isDepositBill := true;
     SaveDeposit(li_DepositHeadId, gi_InPatientID, gi_PatientId, 0, gi_UserID,0, DrAmount,CrAmount,
                         'INVESTIGATION CHARGE' , 'ADVANCE DEPOSIT',Gs_BillNo, '',DepositRemarks , Ps_TodaysDate, Ps_TodaysTime,'N');
end;



procedure Tfrom_BillingRefund.SaveDepositData;
Var
     lf_CrAmount, lf_DrAmount: Double;
     li_DepositHeadId : Integer;
begin
     GB_isDepositBill := true;

     li_DepositHeadId:=0;

     if pf_Deposit > 0 then
     begin
          if pf_Deposit <= pf_grandtotal then
          Begin
               lf_CrAmount := pf_Deposit;
               lf_DrAmount := 0;
          End
          else if pf_Deposit > pf_grandtotal then
          Begin
               lf_CrAmount := pf_grandtotal;
               lf_DrAmount := 0;
          End;

          SaveDeposit(li_DepositHeadId, gi_InPatientID, gi_PatientId, 0, gi_UserID,0, lf_CrAmount,lf_DrAmount,
                         '' , '','', '', '', Ps_TodaysDate, Ps_TodaysTime,'N');
     end;

     (*
       if Edit_AddDeposit.Text <> '' then
       begin
       lf_DrAmount := StrToFloat(Edit_AddDeposit.Text);
       { SaveDeposit(DEPOSITHEADID, INPATIENTID, PATIENTID, DEPOSITBY: Integer; DRAMOUNT, CRAMOUNT: Double;
       DEPOSITTYPE, REFERENCETYPE, REFERENCENO, DEPOSITDATE, DEPOSITTIME, REMARKS: String) }
       SaveDeposit(0, gi_InPatientID, gi_PatientID, gi_UserID, lf_DrAmount, 0, 'DEPOSIT', 'DIRECT', '', ps_TodaysDate, ls_BillTime,
       'PATIENT DEPOSIT');
       end; *)
     GB_isDepositBill := False;
end;

procedure Tfrom_BillingRefund.SaveDepositDetail(DrAmount, CrAmount: Double; DepositType, ReferenceType, Remarks: String);
Var
     // lf_DrAmount, lf_CrAmount: Double;
     ls_DepositType, ls_ReferenceType, ls_ReferenceNo, ls_TodaysDate, ls_Remarks: String;
     ls_tempbillno: String;
begin
     // if Le_Payment.Text <> '' then
     // lf_DrAmount := StrToFloat(Le_Payment.Text);
     // lf_CrAmount := Abs(pf_grandtotal);
     ls_ReferenceNo := Gs_BillNo;
     if gi_datesystem = 0 then
          ls_TodaysDate := TodaysDateVS
     else
          ls_TodaysDate := TodaysDate;
     // ls_Remarks := 'DEPOSIT FOR SERVICE BILL';
     ls_Remarks := Remarks;
     ls_tempbillno := Gs_BillNo;

     (*
     SaveDeposit(DEPOSITHEADID,INPATIENTID,PATIENTID,BANKID,DEPOSITBY : Integer ;DRAMOUNT,CRAMOUNT :Double;
                 DEPOSITTYPE,REFERENCETYPE,REFERENCENO,CHEQUENO,REMARKS,DEPOSITDATE,DEPOSITTIME :string); Stdcall;
     *)
     SaveDeposit(0, gi_InPatientID, gi_PatientId, 0, gi_UserID,0, DrAmount,CrAmount,
                         DepositType , ReferenceType, ls_ReferenceNo, '', '', Ps_TodaysDate, Ps_TodaysTime,'N');
     (*Try
          SaveDeposit(0, gi_InPatientID, gi_PatientID, gi_UserID, DrAmount, CrAmount, DepositType, ReferenceType, ls_ReferenceNo,
               ls_TodaysDate, TodaysTime, ls_Remarks);
     except
          SaveDeposit(0, gi_InPatientID, gi_PatientID, gi_UserID, DrAmount, CrAmount, DepositType, ReferenceType, ls_ReferenceNo,
               ls_TodaysDate, TodaysTime, ls_Remarks);
     end;*)
     UpdateTestProgressStatus(ls_tempbillno, '', 0, gi_Billed);
end;

Function Tfrom_BillingRefund.SaveFinalBill: Boolean;
begin
     Result := False;
     { Save Bill Master }
     try
          DM_Hospital.DB.StartTransaction;
          try
               SaveFinalBill_Detail;
          except
               SaveFinalBill_Detail;
          end;
          DM_Hospital.DB.Commit;
          Result := true;
          ShowDoneMessage;
          Lbl_BillNo.Caption := Gs_BillNo;
     except
          DM_Hospital.DB.Rollback;
     end;
end;

procedure Tfrom_BillingRefund.SaveFinalBill_Detail;
Var
     ls_sendtoweb, ls_sendtosms, ls_sendtoemail, INITIAL, ls_IsVatable: String;
     ls_RefDocCode, ls_FinalBillNo, Ls_NewSampleNo: String;
     Qty, i, J, li_Community, li_Scheme,pi_DocFraDepId,li_testNameid, li_Qty: Integer;
     lf_PharmacyCost,lf_FrctRate,lf_FrctAmt : Double;

     ls_RateType: String;
     Query_IsTestDeptInCommSetup:TOraQuery;

begin
     if CB_Send2Web.Checked = true then
          ls_sendtoweb := 'Y'
     else
          ls_sendtoweb := 'N';
     if CB_Send2Sms.Checked = true then
          ls_sendtosms := 'Y'
     else
          ls_sendtosms := 'N';
     if CB_Send2Email.Checked = true then
          ls_sendtoemail := 'Y'
     else
          ls_sendtoemail := 'N';


     if DBLCB_RefDocCode.KeyValue = Null then
          ls_RefDocCode := ''
     else
          ls_RefDocCode := DBLCB_RefDocCode.KeyValue;

     if (DBLCB_Scheme.Text='') or (CB_Scheme.Checked = False) then
     Begin
          li_Scheme := 0;
          li_Community:=0;
     End
     else
     begin
          li_Scheme := DBLCB_Scheme.KeyValue;
          li_Community:=QueryScheme.FieldByName('Sche_CommunityId').AsInteger;
     end;
     if CB_PayType.ItemIndex in [0] then
          INITIAL := 'CS'
     else
     Begin
          if (DBLCB_Scheme.KeyValue=22) or (Gs_MemberNo<>'') then
          INITIAL := 'ME'
          Else
          INITIAL := 'CR';
     End;

     {
     if CB_BillType.ItemIndex=0 then
     ls_RateType:='GEN'
     Else if CB_BillType.ItemIndex=1 then
     ls_RateType:='PVT'
     Else if CB_BillType.ItemIndex=2 then
     ls_RateType:='FRG'
     Else if CB_BillType.ItemIndex=3 then
     ls_RateType:='FRP'
     Else
     ls_RateType:='GEN'; }
     ls_RateType:=CB_BillType.KeyValue;
     SetLength(Arr_SampleNo,1);


     gs_IsMultiOrgBilling:='N';
     Query_IsTestDeptInCommSetup:=TOraQuery.Create(nil);
     if gs_IsMultiOrgBilling='N' then
     begin

         // if Pf_FinalBillDiscount = 0 then
         // begin
         // pf_disper := StrToFloat(Le_Disper.Text);
         // pf_Dis := StrToFloat(Le_Discount.Text);
         // end;

         CheckServiceBillMaster;
         SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax, pf_Dis,pf_NETTOTAL,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
          pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL, INITIAL, Ps_TodaysDate,
              ps_TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Le_Remarks.Text, ls_sendtoweb,
              ls_sendtosms, ls_sendtoemail);



         with Table_FinalBill do
         begin
              Close;
              Open;
              while not eof do
              begin
                   Qty := FieldByName('Qty').AsInteger;
                   gi_ServiceBillDetailid := Table_FinalBill.FieldByName('ServiceBillDetailId').AsInteger;
                   gi_PatientTestID := Table_FinalBill.FieldByName('PatientTestID').AsInteger;
                   pf_disper := Table_FinalBill.FieldByName('DisPer').AsFloat;
                   pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat * Qty; // FieldByName('NetTotal').AsFloat;
                   ls_IsVatable := FieldByName('IsVatable').AsString;

                   SaveBillDetail(gi_ServiceBillDetailid,gi_PatientID, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme,
                        FieldByName('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                          ('NetTotal').AsFloat, pf_disper, pf_Dis,pf_SERVICECHARGETOTAL, pf_DOLLAREXRATE,pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,
                          Gs_BillNo, Ps_TodaysDate, Ps_TodaysTime, FieldByName('TestNameCode').AsString,
                        FieldByName('TestName').AsString, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Gs_MemberNo, FieldByName('Doccode')
                          .AsString, ls_RefDocCode, '',ls_IsVatable, '', '', '','',FieldByName('OrgBillCategory').AsString,FieldByName('HOSPARTPER').AsString);


                   if gi_BillCase = 2 then
                   begin
                        // if pf_Deposit> pf_grandtotal then
                        UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                        UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
                   End;

                   if gi_BillCase = 4 then
                   begin
                        if IsPathoRadioDep(FieldByName('DepID').AsInteger) then // save patienttest for Pathological dep only
                        begin
                             if Qty > 1 then
                             begin
                                  for i := 0 to Qty - 1 do
                                  begin
                                       SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                            FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                            gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                            FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, Ps_TodaysDate, ps_TodaysTime,
                                            CB_PayType.Text, Le_Remarks.Text, 'RE', Ps_TodaysDate, ps_TodaysTime);
                                  end;
                             end
                             else
                                  SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                       FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                       gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                       FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysTime, TodaysTime,
                                       CB_PayType.Text, Le_Remarks.Text, 'RE', Ps_TodaysDate, TodaysTime);

                        end;
                   end;
                   ps_FinalBillNo:=Gs_BillNo;
                   Next;
              end;
         end;
     end
     else
     begin

           Qry:=TOraQuery.Create(Nil);
           with Qry do
           begin
                Close;
                DatabaseName:=ps_Temppath;
                (*Saving Hospital Bill*)
                SQL.Clear;
                SQL.Add('Select * from FinalBill Where OrgBillCategory=''HOS''');
                Open;
                if FieldByName('ServiceBillDetailID').AsInteger>0 then
                begin
                     if CB_PayType.ItemIndex in [0, 1] then
                          INITIAL := 'CS'
                     else
                          INITIAL := 'CR';

                     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax, pf_Dis,pf_NETTOTAL,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
                     pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL, INITIAL, ps_TodaysDate,
                     ps_TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Le_Remarks.Text, ls_sendtoweb,
                     ls_sendtosms, ls_sendtoemail);
                     Ps_HospitalBillNo:=Gs_BillNo;
                end;
                while not eof do
                begin
                     Qty := FieldByName('Qty').AsInteger;
                     gi_ServiceBillDetailid := FieldByName('ServiceBillDetailId').AsInteger;
                     gi_PatientTestID :=FieldByName('PatientTestID').AsInteger;
                     pf_disper := FieldByName('DisPer').AsFloat;
                     pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat * Qty; // FieldByName('NetTotal').AsFloat;
                     ls_IsVatable := FieldByName('IsVatable').AsString;

                     SaveBillDetail(gi_ServiceBillDetailid,gi_PatientID, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme,
                        FieldByName('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                          ('NetTotal').AsFloat, pf_disper, pf_Dis,pf_SERVICECHARGETOTAL, pf_DOLLAREXRATE,pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,
                          Gs_BillNo, ps_TodaysDate, ps_TodaysTime, FieldByName('TestNameCode').AsString,
                        FieldByName('TestName').AsString, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Gs_MemberNo, FieldByName('Doccode')
                          .AsString, ls_RefDocCode, '',ls_IsVatable, '', '', '','',FieldByName('OrgBillCategory').AsString,FieldByName('HOSPARTPER').AsString);

                     (*if FieldByName('ISFractionableTest').AsString='Y'  then
                     begin
                          li_testNameid:=GetTestNameIdFromTestCode(FieldByName('TestNameCode').AsString);
                          With Query_IsTestDeptInCommSetup Do
                          Begin
                               Close;
                               databasename:=gs_databasename;
                               sql.Clear;
                               sql.add(' select FRAC_FRACTIONID Fractionid,Frac_depid Depid,Frac_TestNameId TestNameId,Frac_FractionAmount FractionAmount');
                               sql.add(',Frac_FractionRate FractionRate,Frac_IsRateAmt IsRateAmt From hs_frac_Fraction Where ');
                               sql.add(' Frac_TestNameId='+IntToStr(li_testNameid));
                               Open;
                               pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('TestNameId').AsInteger
                          End;
                          if pi_DocFraDepId>0 then
                          begin
                               IF Query_IsTestDeptInCommSetup.FieldByName('IsRateAmt').AsString = 'A' Then
                               lf_FrctAmt :=Query_IsTestDeptInCommSetup.FieldByName('FractionAmount').AsFloat
                               Else
                               begin
                                    lf_FrctAmt := RoundingAfterSecondPlace
                                    ((FieldByName('TestPrice').AsFloat * Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat)/ 100);
                                    lf_FrctRate:=Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat;
                               end;
      //                         SaveFractiondetail(FieldByName('TestNameCode').AsString, ls_RefDocCode, 'N', 'N', 'N', 'Y', 'N', Qty, FieldByName('Disper').AsFloat,FieldByName('TestPrice').AsFloat, FieldByName('TestPrice').AsFloat, 0, gf_TDSPercent,
      //                         lf_FrctAmt, lf_FrctRate, 0, 0, 0, gi_BillDetailId, FieldByName('DepId').AsInteger, gi_PatientId, 0,  FieldByName('DepId').AsInteger, gi_UserID, 0, 0, Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
      //                         TodaysDate, Gs_BillNo, 'B', CB_PayType.Text, '', '', TodaysDate, TodaysTime, '', '', gs_MacID);

                               SaveFractiondetail(gi_PatientId,gi_InPatientID,gi_BillDetailId,gi_ServiceBillDetailid,Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
                               0,FieldByName('DepId').AsInteger,gi_UserID,
                               FieldByName('TestPrice').AsFloat,Qty,lf_FrctAmt,lf_FrctRate,FieldByName('Disper').AsFloat,
                               ls_RefDocCode,FieldByName('TestNameCode').AsString,Gs_BillNo,Ps_TodaysDate,'B',CB_PayType.Text,'','TEST WISE FRACTION','N',
                               '','',Ps_TodaysDate,Ps_TodaysTime);
                          end;
                     end;*)

                     if gi_BillCase = 2 then
                     begin
                          // if pf_Deposit> pf_grandtotal then
                          UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                          UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
                     end;

                     if gi_BillCase = 4 then
                     begin
                          if IsPathoRadioDep(FieldByName('DepID').AsInteger) then // save patienttest for Pathological dep only
                          begin
                               if Qty > 1 then
                               begin
                                    for i := 0 to Qty - 1 do
                                    begin
                                         SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                              FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                              gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                              FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                              CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);
                                    end;
                               end
                               else
                                    SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId,  FieldByName('DepID').AsInteger,
                                         FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                         gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                         FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                         CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);

                          end;
                     end;
                     SaveDoctorFraction;
                     Next;

                end;
           end;

           with Qry do
           begin
                Close;
                DatabaseName:=ps_Temppath;
                (*Saving Hospital Bill*)
                SQL.Clear;
                SQL.Add('Select * from FinalBill Where OrgBillCategory=''LAB''');
                Open;
                if FieldByName('ServiceBillDetailID').AsInteger>0 then
                begin
                     if CB_PayType.ItemIndex in [0, 1] then
                          INITIAL := 'LCS'
                     else
                          INITIAL := 'LCR';

                     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax, pf_Dis,pf_NETTOTAL,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
                     pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL, INITIAL, Ps_TodaysDate,
                     ps_TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Le_Remarks.Text, ls_sendtoweb,
                     ls_sendtosms, ls_sendtoemail);
                     ps_FinalBillNo:=Gs_BillNo;
                end;
                while not eof do
                begin
                     Qty := FieldByName('Qty').AsInteger;
                     gi_ServiceBillDetailid := FieldByName('ServiceBillDetailId').AsInteger;
                     gi_PatientTestID :=FieldByName('PatientTestID').AsInteger;
                     pf_disper := FieldByName('DisPer').AsFloat;
                     pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat * Qty; // FieldByName('NetTotal').AsFloat;
                     ls_IsVatable := FieldByName('IsVatable').AsString;

                     SaveBillDetail(gi_ServiceBillDetailid,gi_PatientID, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme,
                        FieldByName('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                          ('NetTotal').AsFloat, pf_disper, pf_Dis,pf_SERVICECHARGETOTAL, pf_DOLLAREXRATE,pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,
                          Gs_BillNo, ps_TodaysDate, ps_TodaysTime, FieldByName('TestNameCode').AsString,
                        FieldByName('TestName').AsString, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Gs_MemberNo, FieldByName('Doccode')
                          .AsString, ls_RefDocCode, '',ls_IsVatable, '', '', '','',FieldByName('OrgBillCategory').AsString,FieldByName('HOSPARTPER').AsString);
                     if FieldByName('ISFractionableTest').AsString='Y'  then
                     begin
                          li_testNameid:=GetTestNameIdFromTestCode(FieldByName('TestNameCode').AsString);
                          With Query_IsTestDeptInCommSetup Do
                          Begin
                               Close;
                               databasename:=gs_databasename;
                               sql.Clear;
                               sql.add(' select FRAC_FRACTIONID Fractionid,Frac_depid Depid,Frac_TestNameId TestNameId,Frac_FractionAmount FractionAmount');
                               sql.add(',Frac_FractionRate FractionRate,Frac_IsRateAmt IsRateAm From hs_frac_Fraction Where ');
                               sql.add(' Frac_TestNameId='+IntToStr(li_testNameid));
                               Open;
                               pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('TestNameId').AsInteger
                          End;
                          if pi_DocFraDepId>0 then
                          begin
                               IF Query_IsTestDeptInCommSetup.FieldByName('IsRateAmt').AsString = 'A' Then
                               lf_FrctAmt :=Query_IsTestDeptInCommSetup.FieldByName('FractionAmount').AsFloat
                               Else
                               begin
                                    lf_FrctAmt := RoundingAfterSecondPlace
                                    ((FieldByName('TestPrice').AsFloat * Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat)/ 100);
                                    lf_FrctRate:=Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat;
                               end;
      //                         SaveFractiondetail(FieldByName('TestNameCode').AsString, ls_RefDocCode, 'N', 'N', 'N', 'Y', 'N', Qty, FieldByName('Disper').AsFloat,FieldByName('TestPrice').AsFloat, FieldByName('TestPrice').AsFloat, 0, gf_TDSPercent,
      //                         lf_FrctAmt, lf_FrctRate, 0, 0, 0, gi_BillDetailId, FieldByName('DepId').AsInteger, gi_PatientId, 0,  FieldByName('DepId').AsInteger, gi_UserID, 0, 0, Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
      //                         TodaysDate, Gs_BillNo, 'B', CB_PayType.Text, '', '', TodaysDate, TodaysTime, '', '', gs_MacID);

                               SaveFractiondetail(gi_PatientId,gi_InPatientID,gi_BillDetailId,gi_ServiceBillDetailid,Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
                               0,FieldByName('DepId').AsInteger,gi_UserID,
                               FieldByName('TestPrice').AsFloat,Qty,lf_FrctAmt,lf_FrctRate,FieldByName('Disper').AsFloat,
                               ls_RefDocCode,FieldByName('TestNameCode').AsString,Gs_BillNo,Ps_TodaysDate,'B',CB_PayType.Text,'','TEST WISE FRACTION','N',
                               '','',Ps_TodaysDate,Ps_TodaysTime);
                          end;
                     end;

                     if gi_BillCase = 2 then
                     begin
                          // if pf_Deposit> pf_grandtotal then
                          UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                          UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
                     end;

                     if (gi_BillCase = 4) or (gi_BillCase = 2) then
                     begin
                          if IsPathoRadioDep(FieldByName('DepID').AsInteger) then // save patienttest for Pathological dep only
                          begin
                               if Qty > 1 then
                               begin
                                    for i := 0 to Qty - 1 do
                                    begin
                                         SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                              FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                              gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                              FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                              CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);
                                    end;
                               end
                               else
                                    SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId,  FieldByName('DepID').AsInteger,
                                         FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                         gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                         FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                         CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);

                          end;
                     end;
                     Next;
                end;
           end;

           with Qry do
           begin
                Close;
                DatabaseName:=ps_Temppath;
                (*Saving Hospital Bill*)
                SQL.Clear;
                SQL.Add('Select * from FinalBill Where OrgBillCategory=''XRA''');
                Open;
                if FieldByName('ServiceBillDetailID').AsInteger>0 then
                begin
                     if CB_PayType.ItemIndex in [0, 1] then
                          INITIAL := 'XCS'
                     else
                          INITIAL := 'XCR';

                     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax, pf_Dis,pf_NETTOTAL,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
                     pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL, INITIAL, ps_TodaysDate,
                     ps_TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Le_Remarks.Text, ls_sendtoweb,
                     ls_sendtosms, ls_sendtoemail);
                     Ps_XrayBillNo:=Gs_BillNo;
                end;
                while not eof do
                begin
                     Qty := FieldByName('Qty').AsInteger;
                     gi_ServiceBillDetailid := FieldByName('ServiceBillDetailId').AsInteger;
                     gi_PatientTestID :=FieldByName('PatientTestID').AsInteger;
                     pf_disper := FieldByName('DisPer').AsFloat;
                     pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat * Qty; // FieldByName('NetTotal').AsFloat;
                     ls_IsVatable := FieldByName('IsVatable').AsString;

                     SaveBillDetail(gi_ServiceBillDetailid,gi_PatientID, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme,
                        FieldByName('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                          ('NetTotal').AsFloat, pf_disper, pf_Dis,pf_SERVICECHARGETOTAL, pf_DOLLAREXRATE,pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,
                          Gs_BillNo, ps_TodaysDate, ps_TodaysTime, FieldByName('TestNameCode').AsString,
                        FieldByName('TestName').AsString, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Gs_MemberNo, FieldByName('Doccode')
                          .AsString, ls_RefDocCode, '',ls_IsVatable, '', '', '','',FieldByName('OrgBillCategory').AsString,FieldByName('HOSPARTPER').AsString);
                     if FieldByName('ISFractionableTest').AsString='Y'  then
                     begin
                          li_testNameid:=GetTestNameIdFromTestCode(FieldByName('TestNameCode').AsString);
                          With Query_IsTestDeptInCommSetup Do
                          Begin
                               Close;
                               databasename:=gs_databasename;
                               sql.Clear;
                               sql.add(' select FRAC_FRACTIONID Fractionid,Frac_depid Depid,Frac_TestNameId TestNameId,Frac_FractionAmount FractionAmount');
                               sql.add(',Frac_FractionRate FractionRate,Frac_IsRateAmt IsRateAm From hs_frac_Fraction Where ');
                               sql.add(' Frac_TestNameId='+IntToStr(li_testNameid));
                               Open;
                               pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('TestNameId').AsInteger
                          End;
                          if pi_DocFraDepId>0 then
                          begin
                               IF Query_IsTestDeptInCommSetup.FieldByName('IsRateAmt').AsString = 'A' Then
                               lf_FrctAmt :=Query_IsTestDeptInCommSetup.FieldByName('FractionAmount').AsFloat
                               Else
                               begin
                                    lf_FrctAmt := RoundingAfterSecondPlace
                                    ((FieldByName('TestPrice').AsFloat * Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat)/ 100);
                                    lf_FrctRate:=Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat;
                               end;
      //                         SaveFractiondetail(FieldByName('TestNameCode').AsString, ls_RefDocCode, 'N', 'N', 'N', 'Y', 'N', Qty, FieldByName('Disper').AsFloat,FieldByName('TestPrice').AsFloat, FieldByName('TestPrice').AsFloat, 0, gf_TDSPercent,
      //                         lf_FrctAmt, lf_FrctRate, 0, 0, 0, gi_BillDetailId, FieldByName('DepId').AsInteger, gi_PatientId, 0,  FieldByName('DepId').AsInteger, gi_UserID, 0, 0, Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
      //                         TodaysDate, Gs_BillNo, 'B', CB_PayType.Text, '', '', TodaysDate, TodaysTime, '', '', gs_MacID);

                               SaveFractiondetail(gi_PatientId,gi_InPatientID,gi_BillDetailId,gi_ServiceBillDetailid,Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
                               0,FieldByName('DepId').AsInteger,gi_UserID,
                               FieldByName('TestPrice').AsFloat,Qty,lf_FrctAmt,lf_FrctRate,FieldByName('Disper').AsFloat,
                               ls_RefDocCode,FieldByName('TestNameCode').AsString,Gs_BillNo,Ps_TodaysDate,'B',CB_PayType.Text,'','TEST WISE FRACTION','N',
                               '','',Ps_TodaysDate,Ps_TodaysTime);
                          end;
                     end;

                     if gi_BillCase = 2 then
                     begin
                          // if pf_Deposit> pf_grandtotal then
                          UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                          UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
                     end;

                     if (gi_BillCase = 2) or (gi_BillCase = 2)  then
                     begin
                          if IsPathoRadioDep(FieldByName('DepID').AsInteger) then // save patienttest for Pathological dep only
                          begin
                               if Qty > 1 then
                               begin
                                    for i := 0 to Qty - 1 do
                                    begin
                                         SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                              FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                              gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                              FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                              CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);
                                    end;
                               end
                               else
                                    SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                         FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                         gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                         FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                         CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);

                          end;
                     end;
                     Next;

                end;
           end;

           with Qry do
           begin
                Close;
                DatabaseName:=ps_Temppath;
                (*Saving Hospital Bill*)
                SQL.Clear;
                SQL.Add('Select * from FinalBill Where OrgBillCategory=''CTS''');
                Open;
                if FieldByName('ServiceBillDetailID').AsInteger>0 then
                begin
                     if CB_PayType.ItemIndex in [0, 1] then
                          INITIAL := 'CCS'
                     else
                          INITIAL := 'CCR';

                     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax, pf_Dis,pf_NETTOTAL,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
                     pf_DOLLARGROSSTOTAL, pf_DOLLARTAXAMT, pf_DOLLARDISCOUNTTOTAL, pf_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL, INITIAL, ps_TodaysDate,
                     ps_TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Le_Remarks.Text, ls_sendtoweb,
                     ls_sendtosms, ls_sendtoemail);
                     Ps_CtScanBillNo:=Gs_BillNo;
                end;
                while not eof do
                begin
                     Qty := FieldByName('Qty').AsInteger;
                     gi_ServiceBillDetailid := FieldByName('ServiceBillDetailId').AsInteger;
                     gi_PatientTestID :=FieldByName('PatientTestID').AsInteger;
                     pf_disper := FieldByName('DisPer').AsFloat;
                     pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat * Qty; // FieldByName('NetTotal').AsFloat;
                     ls_IsVatable := FieldByName('IsVatable').AsString;

                     SaveBillDetail(gi_ServiceBillDetailid,gi_PatientID, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme,
                        FieldByName('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                          ('NetTotal').AsFloat, pf_disper, pf_Dis,pf_SERVICECHARGETOTAL, pf_DOLLAREXRATE,pf_DOLLARAMOUNT,pf_DOLLARVATAMT,pf_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,
                          Gs_BillNo, ps_TodaysDate, ps_TodaysTime, FieldByName('TestNameCode').AsString,
                        FieldByName('TestName').AsString, 'B', CB_PayType.Text, ls_RateType, ls_RateType, Gs_MemberNo, FieldByName('Doccode')
                          .AsString, ls_RefDocCode, '',ls_IsVatable, '', '', '','',FieldByName('OrgBillCategory').AsString,FieldByName('HOSPARTPER').AsString);

                     if FieldByName('ISFractionableTest').AsString='Y'  then
                     begin
                          li_testNameid:=GetTestNameIdFromTestCode(FieldByName('TestNameCode').AsString);
                          With Query_IsTestDeptInCommSetup Do
                          Begin
                               Close;
                               databasename:=gs_databasename;
                               sql.Clear;
                               sql.add(' select FRAC_FRACTIONID Fractionid,Frac_depid Depid,Frac_TestNameId TestNameId,Frac_FractionAmount FractionAmount');
                               sql.add(',Frac_FractionRate FractionRate,Frac_IsRateAmt IsRateAm From hs_frac_Fraction Where ');
                               sql.add(' Frac_TestNameId='+IntToStr(li_testNameid));
                               Open;
                               pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('TestNameId').AsInteger
                          End;
                          if pi_DocFraDepId>0 then
                          begin
                               IF Query_IsTestDeptInCommSetup.FieldByName('IsRateAmt').AsString = 'A' Then
                               lf_FrctAmt :=Query_IsTestDeptInCommSetup.FieldByName('FractionAmount').AsFloat
                               Else
                               begin
                                    lf_FrctAmt := RoundingAfterSecondPlace
                                    ((FieldByName('TestPrice').AsFloat * Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat)/ 100);
                                    lf_FrctRate:=Query_IsTestDeptInCommSetup.FieldByName('FractionRate').AsFloat;
                               end;
      //                         SaveFractiondetail(FieldByName('TestNameCode').AsString, ls_RefDocCode, 'N', 'N', 'N', 'Y', 'N', Qty, FieldByName('Disper').AsFloat,FieldByName('TestPrice').AsFloat, FieldByName('TestPrice').AsFloat, 0, gf_TDSPercent,
      //                         lf_FrctAmt, lf_FrctRate, 0, 0, 0, gi_BillDetailId, FieldByName('DepId').AsInteger, gi_PatientId, 0,  FieldByName('DepId').AsInteger, gi_UserID, 0, 0, Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
      //                         TodaysDate, Gs_BillNo, 'B', CB_PayType.Text, '', '', TodaysDate, TodaysTime, '', '', gs_MacID);

                               SaveFractiondetail(gi_PatientId,gi_InPatientID,gi_BillDetailId,gi_ServiceBillDetailid,Query_IsTestDeptInCommSetup.FieldByName('FractionId').AsInteger,
                               0,FieldByName('DepId').AsInteger,gi_UserID,
                               FieldByName('TestPrice').AsFloat,Qty,lf_FrctAmt,lf_FrctRate,FieldByName('Disper').AsFloat,
                               ls_RefDocCode,FieldByName('TestNameCode').AsString,Gs_BillNo,Ps_TodaysDate,'B',CB_PayType.Text,'','TEST WISE FRACTION','N',
                               '','',Ps_TodaysDate,Ps_TodaysTime);
                          end;
                     end;


                     if gi_BillCase = 2 then
                     begin
                          // if pf_Deposit> pf_grandtotal then
                          UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                          UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
                     end;

                     if gi_BillCase = 4 then
                     begin
                          if IsPathoRadioDep(FieldByName('DepID').AsInteger) then // save patienttest for Pathological dep only
                          begin
                               if Qty > 1 then
                               begin
                                    for i := 0 to Qty - 1 do
                                    begin
                                         SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                              FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                              gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                              FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                              CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);
                                    end;
                               end
                               else
                                    SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, FieldByName('DepID').AsInteger,
                                         FieldByName('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID,
                                         gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo,
                                         FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ps_TodaysDate, ps_TodaysTime,
                                         CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate, ps_TodaysTime);

                          end;
                     end;
                     Next;

                end;
           end;
     end;


     if gb_IncludePharmacyCharge then
     begin
          if (pi_MaxSaleMasterId > 0) or (pi_MaxReturnMasterId > 0) then
          Begin
               UpdatePharmacyTable;
               lf_PharmacyCost:=GetPharmacyCost;
               if lf_PharmacyCost > 0 then
               UpdatePharmacyCost(gi_PatientID, gi_InPatientID,lf_PharmacyCost,'PHACH',Gs_BillNo,'SALES')
               Else
               UpdatePharmacyCost(gi_PatientID, gi_InPatientID,lf_PharmacyCost,'PHACH',Gs_BillNo,'REFUND');
          End;
     end;


     ls_FinalBillNo := Gs_BillNo;
     // if pf_Deposit > 0 then
     // SaveDepositDetail(0, pf_Deposit, 'ADVANCE', 'BILL', 'ADVANCE FOR BILL');
     // if Pf_DepositDeducted > 0 then
     // SaveDepositDetail(0, Pf_DepositDeducted, 'DEPOSIT', lbl_BenefitPackage.Caption, 'DEPOSIT ADJUSTED');
     // Gs_BillNo := ls_FinalBillNo;
     // Pf_FinalBillDiscount := 0;
end;

Function Tfrom_BillingRefund.SaveServiceBill: Boolean;
begin
     Result := False;
     { Save Bill Master }
     try
          DM_Hospital.DB.StartTransaction;
          try
               SaveServiceBill_Detail;
          except
               SaveServiceBill_Detail;
          end;

          ps_FinalBillNo:=Gs_BillNo;

          ps_DepositBillNo:='';
          if Trim(Le_Payment.Text)='' then Le_Payment.Text:='0';
          if StrToFloat(Le_Payment.Text) > 0 then
          Begin
               SaveInvAdvanceDeposit(StrToFloat(Le_Payment.Text),0,Le_Remarks.Text);
               Label_DepositNo.Caption:=gs_BillNo;
               Label_DepositNo.Visible:=True;
               Label11.Visible:=True;
               ps_DepositBillNo:=Gs_BillNo;
          End;

          DM_Hospital.DB.Commit;
          Result := true;
          ShowDoneMessage;
     except
          DM_Hospital.DB.Rollback;
     end;
end;

procedure Tfrom_BillingRefund.SaveServiceBill_Detail;
Var
     ps_TodaysDate,ls_RateType, Ls_NewSampleNo, ls_WorkingSatus: String;
     ls_RefDocCode, ls_sendtoweb, ls_sendtosms, ls_sendtoemail, UPASSWORD: String;
     Qty, i, J, li_Community, li_Scheme, li_QueueNo,li_LabDepId : Integer;
     QrySave: TOraQuery;
     Qry: TOraQuery;

begin
     QrySave := TOraQuery.Create(nil);
     if CB_Send2Web.Checked = true then
          ls_sendtoweb := 'Y'
     else
          ls_sendtoweb := 'N';
     if CB_Send2Sms.Checked = true then
          ls_sendtosms := 'Y'
     else
          ls_sendtosms := 'N';
     if CB_Send2Email.Checked = true then
          ls_sendtoemail := 'Y'
     else
          ls_sendtoemail := 'N';
     if gi_datesystem = 0 then
          ps_TodaysDate := TodaysDateVS
     else
          ps_TodaysDate := TodaysDate;
     if DBLCB_RefDocCode.KeyValue = Null then
          ls_RefDocCode := ''
     else
          ls_RefDocCode := DBLCB_RefDocCode.KeyValue;
     if Trim(DBLCB_Scheme.Text)='' then
     begin
          li_Scheme := 0;
          li_Community := 0;
     end
     else
     Begin
          li_Scheme := DBLCB_Scheme.KeyValue;
          li_Community := QueryScheme.FieldByName('SCHE_CommunityId').AsInteger;
     End;

     J:=0;
     i:=0;
     SetLength(Arr_SampleNo,1);

     if gs_BillType='OPBILL' then
     ls_WorkingSatus:='REG'
     Else
     ls_WorkingSatus:='INPATIENT';

     pb_IslabDep:=False;

     {if CB_BillType.ItemIndex=0 then
     ls_RateType:='GEN'
     Else if CB_BillType.ItemIndex=1 then
     ls_RateType:='PVT'
     Else if CB_BillType.ItemIndex=2 then
     ls_RateType:='FRG'
     Else if CB_BillType.ItemIndex=3 then
     ls_RateType:='FRP'
     Else
     ls_RateType:='GEN';  }
     ls_RateType:=CB_BillType.KeyValue;

     // CheckServiceBillMaster;
     //li_QueueNo := GetNextQueueNo;
     UPASSWORD := MakeRNDString('5WCNtuYIr+UH7Bb2', 8);
     if gi_BillCase = 1 then
          Pb_ServiceBillMasterExist := true;

     // if IsInpatient(gi_PatientID) then
     // Begin
     // li_ClinicalDepId:=gi_ClinicalDepId;
     // ProgressStatus:=2;
     // End
     // else
     // Begin
     // li_ClinicalDepId:=GetOPDCliniCalDepId(gi_PatientID);
     // ProgressStatus:=1;
     // End;

     {SaveServiceBillMaster(PATIENTID, INPATIENTID, BILLBY, QUEUENO, VISITID: Integer;
     GROSSTOTAL, TAXAMT, DISCOUNTTOTAL: Double; INITIAL, BILLDATE, BILLTIME, REFDOCCODE, BILLTYPE, PAYTYPE, RATETYPE,
     PATIENTTYPE, REMARKS, MacID, SEND2WEB, SEND2SMS, SEND2EMAIL, UPASSWORD: String); stdcall;}

     if not Pb_ServiceBillMasterExist then
          SaveServiceBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, gi_VisitId, pf_grandtotal, pf_SvrTax,
               Pf_FinalBillDiscount,pf_NetTotal,pf_SERVICECHARGETOTAL,pf_DOLLAREXRATE,
          PF_DOLLARGROSSTOTAL, PF_DOLLARTAXAMT, PF_DOLLARDISCOUNTTOTAL, PF_DOLLARNETTOTAL,pf_DOLLORSERVICECHARGETOTAL,
           'TP', ps_TodaysDate, Ps_TodaysTime, ls_RefDocCode, ps_BillType, CB_PayType.Text, ls_RateType, ls_RateType,
               Le_Remarks.Text,ls_sendtoweb, ls_sendtosms, ls_sendtoemail)
     else
          UpdateServiceBillMaster(gi_UserID, pf_grandtotal, pf_SvrTax, pf_discount, Gs_BillNo, ps_TodaysDate, Ps_TodaysTime, ls_RefDocCode,
               ps_BillType, CB_PayType.Text, ls_RateType, 'GENERAL', Le_Remarks.Text);

     with QrySave do
     begin
          Close;
          DatabaseName := ps_Temppath;
          if gi_BillCase = 0 then
               SQL.Add('Select * from TempBilling')
          else if gi_BillCase = 3 then
               SQL.Add('Select * from FinalBill');
          Open;
          while not eof do
          begin

               Qty := FieldByName('Qty').AsInteger;
               SaveServiceBillDetail(gi_PatientID, gi_InPatientID, 0, gi_UserID, li_Community, li_Scheme,li_Community, li_Scheme, FieldByName('DepID').AsInteger,
                    Pi_ClinicalDepId, 0,FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName
                      ('NetTotal').AsFloat, FieldByName('Disper').AsFloat, FieldByName('Discount').AsFloat,pf_SERVICECHARGETOTAL, PF_DOLLAREXRATE,PF_DOLLARAMOUNT,PF_DOLLARVATAMT,
                      PF_DOLLARTOTALAMOUNT,pf_DOLLARDISCOUNT,pf_DOLLARSERVICECHARGE,Gs_BillNo, ps_TodaysDate,
                    Ps_TodaysTime, FieldByName('TestNameCode').AsString, FieldByName('TestName').AsString, ps_BillType, CB_PayType.Text,
                    ls_RateType, ls_RateType, Gs_MemberNo, ls_RefDocCode, ls_RefDocCode, '', '', '', FieldByName('isfractionabletest').AsString,'','',FieldByName('ORGBILLCATEGORY').AsString);

               if FieldByName('ISPACKAGETEST').AsString='Y' then
               Begin
                    With Query_PackageTest do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select TPD.TestNameId,TN.TESTNAMECODE,TN.DepId,TN.TestName From TestPackageDetail TPD,TestName TN where');
                         sql.add(' TPD.TestNameId=TN.TestNameId and');
                         sql.add(' TPD.TestPackageId In (Select TestNameID From TestName where TestNameCode='+#39+QrySave.FieldByName('TestNameCode').AsString+#39+')');
                         sql.add(' and TPD.TestPackageId Not In (692,948,950)'); // LIPID PANEL,RENAL FUNCTION PANEL,HEPATIC FUNCTION PANEL
                         Open;
                         First;
                         while Not EOF do
                         Begin
                              Try
                                   SaveServiceBillDetailPackage(gi_PatientID, gi_InPatientID, 0, gi_UserID, li_Community, li_Scheme, Query_PackageTest.FieldByName('DepID').AsInteger,
                                        Pi_ClinicalDepId, 0, ProgressStatus, 1, Qty, 0,0, 0, 0, Gs_BillNo, ps_TodaysDate,
                                        ps_TodaysTime, Query_PackageTest.FieldByName('TestNameCode').AsString, Query_PackageTest.FieldByName('TestName').AsString,
                                        ps_BillType, CB_PayType.Text,ls_RateType, ls_RateType, Gs_MemberNo, ls_RefDocCode, ls_RefDocCode, '', '', '', '');
                              Except
                                   SaveServiceBillDetailPackage(gi_PatientID, gi_InPatientID, 0, gi_UserID, li_Community, li_Scheme, FieldByName('DepID').AsInteger,
                                        Pi_ClinicalDepId, 0, ProgressStatus, 1, Qty, 0, 0, 0, 0, Gs_BillNo, ps_TodaysDate,
                                        ps_TodaysTime, FieldByName('TestNameCode').AsString, FieldByName('TestName').AsString, ps_BillType, CB_PayType.Text,
                                        ls_RateType, ls_RateType, Gs_MemberNo, ls_RefDocCode, ls_RefDocCode, '', '', '', '');

                              End;

                              Try
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, Query_PackageTest.FieldByName('DepID').AsInteger,
                                             Query_PackageTest.FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                             gi_BillingInvCtrl, 0, Gs_BillNo, QrySave.FieldByName('Doccode').AsString,
                                             Query_PackageTest.FieldByName('TestNameCode').AsString, Ps_TodaysDate, ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                             ls_WorkingSatus, Ps_TodaysDate, ps_TodaysTime);
                              Except
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, Pi_ClinicalDepId, Query_PackageTest.FieldByName('DepID').AsInteger,
                                             Query_PackageTest.FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                             gi_BillingInvCtrl, 0, Gs_BillNo, QrySave.FieldByName('Doccode').AsString,
                                             Query_PackageTest.FieldByName('TestNameCode').AsString, Ps_TodaysDate, ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                             ls_WorkingSatus, Ps_TodaysDate, ps_TodaysTime);
                              End;
                              Query_PackageTest.Next;
                         End;
                    End;
               End;


               // if IsPathoRadioDep(FieldByName('DepID').AsInteger) then     // Save patienttest for pathological dep only
               if (Trim(FieldByName('DepType').AsString) = 'P') or (Trim(FieldByName('DepType').AsString) = 'R') then
               begin
                    pb_IslabDep:=True;
                    if FieldByName('LabDepID').AsInteger=0 then
                    li_LabDepId:=FieldByName('DepID').AsInteger
                    else
                    li_LabDepId:=FieldByName('LabDepID').AsInteger;
                    for i := 0 to Qty - 1 do
                    begin

                         (*SavePatientTest(RefPatientTestId, BillDetailID, SERVICEBILLDETAILID, PATIENTID, INPATIENTID, RfDepid, DEPID, TestNameID,
                              TestPackageID, PRINTCOUNT, DATAPOSTBY, TestProgressStatus, SyncStatus, ControlStatus: Integer; TestAmount: Double;
                              BILLNO, DOCCODE, TestNameCode, TestDate, TestTime, PayStatus, REMARKS, WorkingStatus, DATAPOSTDATE, DATAPOSTTIME: String);*)

                         Try
                              SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, pi_ClinicalDepId,li_LabDepId,
                                   FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                                   gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                   FieldByName('TestNameCode').AsString, Ps_TodaysDate, ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                   ls_WorkingSatus, Ps_TodaysDate, ps_TodaysTime);
                         Except
                              SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, pi_ClinicalDepId, li_LabDepId,
                                   FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                                   gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                   FieldByName('TestNameCode').AsString, Ps_TodaysDate, ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                   ls_WorkingSatus, Ps_TodaysDate, ps_TodaysTime);
                         End;


                         try
                              if i=0 then
                              begin
                                   if Trim(ps_SampleNo)='' then
                                        ps_SampleNo:=GetNextSampleNo;
                                   SaveSampleCollection(gi_PatientTestID, gi_PatientId, gi_UserId,Gs_BillNo, ps_SampleNo, ps_TodaysDate, ps_TodaysTime);
                                   Arr_SampleNo[i]:=ps_SampleNo;
                              end
                              else
                              begin
                                   Ls_NewSampleNo:=GetNextSampleNo;
                                   SaveSampleCollection(gi_PatientTestID, gi_PatientId, gi_UserId,Gs_BillNo, Ls_NewSampleNo, ps_TodaysDate, ps_TodaysTime);
                                   SetLength(Arr_SampleNo,length(Arr_SampleNo)+1);
                                   Arr_SampleNo[J+1]:=Ls_NewSampleNo;
                                   Inc(J);
                              end;
                         except
                              if i=0 then
                              begin
                                   if Trim(ps_SampleNo)='' then
                                        ps_SampleNo:=GetNextSampleNo;
                                   SaveSampleCollection(gi_PatientTestID, gi_PatientId, gi_UserId,Gs_BillNo, ps_SampleNo, ps_TodaysDate, ps_TodaysTime);
                              end
                              else
                              begin
                                   for j:=1 to Qty do
                                   begin
                                        Ls_NewSampleNo:=GetNextSampleNo;
                                        SaveSampleCollection(gi_PatientTestID, gi_PatientId, gi_UserId,Gs_BillNo, Ls_NewSampleNo, ps_TodaysDate, ps_TodaysTime);
                                   end;
                              end;
                         end;
                    end;
                              //end;
                         //end;
                    (*end
                    else
                    begin
                         { ************************ Package Test ******************************************** }
                         // if FieldByName('TestnameCode').AsString = 'PACK' then
                         // begin
                         // Qry := TOraQuery.Create(Nil);
                         // with Qry do
                         // begin
                         // Close;
                         // SQL.Clear;
                         // DatabaseName := gs_DatabaseName;
                         // SQL.Add('Select * from TestName Where TestNameID In');
                         // SQL.Add('(Select TestNameID from TestPackageDetail');
                         // SQL.Add('Where TestPackageID=' + QrySave.FieldByName('TestNameId').AsString + ')');
                         // Open;
                         // while not eof do
                         // begin
                         // SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, Qry.FieldByName('DepID').AsInteger,
                         // 0,Qry.FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl,
                         // Qry.FieldByName('TestPrice').AsFloat, Gs_BillNo, QrySave.FieldByName('Doccode').AsString, Qry.FieldByName
                         // ('TestNameCode').AsString, ps_TodaysDate, TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ps_TodaysDate,
                         // TodaysTime);
                         // Next;
                         // end;
                         // end;
                         // end
                         { ************************ Package Test ******************************************** }
                         // else
                         if FieldByName('TestnameCode').AsString = 'PACK' then
                         begin
                              if (pf_balance > 0) or (pb_IsIndoorPatient = true) { IsInpatient(gi_PatientID) } then
                              Begin
                                   Try
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, 0, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   Except
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, 0, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   End;
                              End
                              else
                              Begin
                                   Try
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, 0, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation,
                                        gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode')
                                        .AsString, FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text,
                                        Le_Remarks.Text, 'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   Except
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, 0, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation,
                                        gi_DoNotSync, gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode')
                                        .AsString, FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text,
                                        Le_Remarks.Text, 'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   End;
                              End;
                         end
                         else
                         begin
                              if (pf_balance > 0) or (pb_IsIndoorPatient = true) { IsInpatient(gi_PatientID) } then
                              Begin
                                   Try
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   Except
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Billed, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, Ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', Ps_TodaysDate, Ps_TodaysTime);
                                   End;
                              End
                              else
                              Begin
                                   Try
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', ps_TodaysDate, Ps_TodaysTime);
                                   Except
                                        SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID')
                                        .AsInteger, FieldByName('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                                        gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString,
                                        FieldByName('TestNameCode').AsString, ps_TodaysDate, Ps_TodaysTime, CB_PayType.Text, Le_Remarks.Text,
                                        'RE', ps_TodaysDate, Ps_TodaysTime);
                                   End;
                              End;
                         end;
                    end;*)
               end;
               Next;
          end;
     end;
end;

procedure Tfrom_BillingRefund.SPB_AddItemClick(Sender: TObject);
Var
     Qty, TestPrice, TestPriceWithDis, SvrTaxWithDis, TestPriceWithTaxWithDis, TestPriceWithTax, SvrTax: Double;
     li_MaxSno: Integer;
     MyTable: TOraTable;
     MytableName: String;
     DISPER, Discount: Double;
begin
     if Edit_Qty.Text = '' then
          Edit_Qty.Text := '1';

     if gi_BillCase = 0 then
     begin
          MyTable := Table_TempBilling;
          MytableName := 'TempBilling.db';
     end
     else if gi_BillCase = 3 then
     begin
          MyTable := Table_FinalBill;
          MytableName := 'FinalBill.db';
     end;

     with MyTable do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := MytableName;
          Open;
     end;
     if (Edit_TestName.Text = '') or (Edit_Qty.Text = '') or (StrToInt(Edit_Qty.Text) <= 0) then
     begin
          MsgBox(1006, 0, '', '', '');
          if Edit_TestName.Text = '' then
               Edit_TestName.SetFocus
          else
               Edit_Qty.SetFocus;
          exit;
     end;

     Qty := StrToFloat(Edit_Qty.Text);

     if Edit_UnitPrice.Text <> '' then
     TestPrice := StrToFloat(Edit_UnitPrice.Text)
     else
     Begin
          {
          IF CB_BillType.ItemIndex=0 then
          TestPrice := Query_TestName.FieldByName('TestPrice').AsFloat
          Else IF CB_BillType.ItemIndex=1 then
          TestPrice := Query_TestName.FieldByName('TestPriceSAARC').AsFloat
          Else IF CB_BillType.ItemIndex=2 then
          TestPrice := Query_TestName.FieldByName('TestPriceFRGGEN').AsFloat
          Else IF CB_BillType.ItemIndex=3 then
          TestPrice := Query_TestName.FieldByName('TestPriceFRGPVT').AsFloat
          Else  }
          TestPrice := Query_TestName.FieldByName('TestPrice').AsFloat;
     End;

(*     if Trim(DBLCB_Scheme.Text)<>'' then
     begin
          DISPER:=GetSchemeTestWiseDiscount(DBLCB_Scheme.KeyValue,Query_TestName.FieldByName('TestNameCode').AsString,Query_TestName.FieldByName('PatientTypeCode').AsString);
               (*if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
                    DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'PACKAGE')
               else
                    DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'TEST')*)
(*     end
     else
     begin
          if (Gi_MemberID > 0) and (Pb_NoDiscount = False) then
          begin
               if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
                    DISPER := GetMemberDiscount(Gi_MemberID, Query_TestName.FieldByName('TestNameID').AsInteger, 'PACKAGE')
               else
                    DISPER := GetMemberDiscount(Gi_MemberID, Query_TestName.FieldByName('TestNameID').AsInteger, 'TEST');
          end;

          // if DBLCB_Scheme.KeyValue <> Null then
          // begin
          // if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
          // DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'PACKAGE')
          // else
          // DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'TEST')
          // end;
     end;*)


     if Query_TestName.FieldByName('TestPrice').AsFloat > 0 then
     Begin
          {
          IF CB_BillType.ItemIndex=0 then
          SvrTax := Query_TestName.FieldByName('Tax').AsFloat * Qty
          Else IF CB_BillType.ItemIndex=1 then
          SvrTax := Query_TestName.FieldByName('VATSAARC').AsFloat * Qty
          Else IF CB_BillType.ItemIndex=2 then
          SvrTax := Query_TestName.FieldByName('VATFRGGEN').AsFloat * Qty
          Else IF CB_BillType.ItemIndex=3 then
          SvrTax := Query_TestName.FieldByName('VATFRGPVT').AsFloat * Qty
          Else }
          SvrTax := Query_TestName.FieldByName('VATAMT').AsFloat;

          if Query_TestName.FieldByName('IsVatable').AsString='N' then
          SvrTax := 0;

          TestPriceWithTax := TestPrice + SvrTax;//Query_TestName.FieldByName('Tax').AsFloat; // (gf_TaxPercent/100)*TestPrice;
     End
     Else
     Begin
          if Query_TestName.FieldByName('IsVatable').AsString='Y' then
          Begin
               SvrTax := (gf_TaxPercent / 100) * TestPrice;
               TestPriceWithTax := TestPrice + ((gf_TaxPercent / 100) * TestPrice);
          End
          Else
          Begin
               SvrTax := 0;
               TestPriceWithTax := TestPrice; //+ ((gf_TaxPercent / 100) * TestPrice);
          End;
     End;
     // TestPriceWithTax := Query_TestName.FieldByName('TotalPrice').AsFloat;

     if Edit_Disper.Text <> '' then
          DISPER := StrToFloat(Edit_Disper.Text);



     if (DISPER > 0) then
     begin
          Discount := (DISPER / 100) * TestPrice;
          TestPriceWithDis := TestPrice - Discount;
          //TestPriceWithDis:=TestPriceWithDis;
          //Discount:=Discount*Qty;
          SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
          //SvrTaxWithDis:=SvrTaxWithDis*Qty;
          TestPriceWithTaxWithDis := TestPriceWithDis + SvrTaxWithDis;
          Le_Discount.Enabled := False;
          Le_Disper.Enabled := False;
     end;

     with MyTable do
     begin
          Append;
          FieldByName('SNO').AsInteger := GetMax_TempSno;
          FieldByName('DepID').AsInteger := Query_TestName.FieldByName('DepID').AsInteger;

          if Query_TestName.FieldByName('LABDEPID').AsInteger > 0 then
          Begin
               FieldByName('DepType').AsString := 'P';
               FieldByName('LabDepID').AsInteger := Query_TestName.FieldByName('LabDepID').AsInteger;
          End
          else
          begin
               FieldByName('DepType').AsString := Query_TestName.FieldByName('DepType').AsString;
               FieldByName('LabDepID').AsInteger := 0;
          end;
          FieldByName('TestNameID').AsInteger := Query_TestName.FieldByName('TestNameID').AsInteger;
          FieldByName('ISPACKAGETEST').AsString :=Query_TestName.FieldByName('ISPACKAGETEST').AsString;
          if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
               FieldByName('TestPackageID').AsInteger := Query_TestName.FieldByName('TestNameID').AsInteger;
          //LoadTestIDInVariable(Query_TestName.FieldByName('TestNameID').AsString + Query_TestName.FieldByName('TestNameCode').AsString);
          LoadTestIDInVariable(Query_TestName.FieldByName('TestNameID').AsString);
          FieldByName('Doccode').AsString := 'HOS';
          FieldByName('TestNameCode').AsString := StringReplace(Query_TestName.FieldByName('TestNameCode').AsString, '''', '''''',
               [rfReplaceAll]);
          FieldByName('TestName').AsString := StringReplace(Query_TestName.FieldByName('TestName').AsString, '''', '''''', [rfReplaceAll]);
          FieldByName('TestPrice').AsFloat := TestPrice;
          FieldByName('TestPriceWithTax').AsFloat := TestPriceWithTax;
          FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax * Qty)));
          if (DISPER > 0) and (Gs_TaxRule = 'TAD') then
               FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', SvrTaxWithDis*Qty))
          else
               FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', SvrTax*Qty));

          FieldByName('OrgBillCategory').AsString := Query_TestName.FieldByName('OrgBillCategory').AsString;
          FieldByName('Disper').AsFloat := StrToFloat(FormatFloat('#0.00', DISPER));
          FieldByName('Discount').AsFloat := StrToFloat(FormatFloat('#0.00', Discount*Qty));
          FieldByName('ISFRACTIONABLETEST').AsString:=Query_TestName.FieldByName('ISFRACTIONABLEITEM').AsString;
          FieldByName('Qty').AsFloat := Qty;
          if (DISPER > 0) then
          begin
               if (Gs_TaxRule = 'TAD') then
                    //FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTaxWithDis * Qty)))
                    FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTaxWithDis*Qty)))
               else
                    //FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax * Qty - Discount)));
                    FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax - Discount)*Qty));
          end
          else
               FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax * Qty)));

          if DBLCB_Scheme.KeyValue = '22' then //22 - Medicare Scheme
          begin
                if (Query_TestName.FieldByName('TestNameID').AsInteger <>0) or (Query_TestName.FieldByName('TestNameID').AsInteger <> Null) then
                begin
                       pf_PercentageAmt :=0;
                       CheckCoPaymentItem(Query_TestName.FieldByName('TestNameID').AsInteger,ps_isCopaymentitem);
                       if (ps_isCopaymentitem = 'Y')  and (pf_percentageamt <> 0)   then
                       begin
                             MyTable.FieldByName('IsCoPaymentItem').AsString:=ps_iscoPaymentitem;
                             MyTable.FieldByName('CoPaymentItemPercent').AsFloat:=pf_percentageAmt;
                       end
                       else
                       begin
                             MyTable.FieldByName('IsCoPaymentItem').AsString:=ps_iscoPaymentitem;
                             MyTable.FieldByName('CoPaymentItemPercent').AsFloat:=pf_percentageAmt;
                       end;
                end;
          end;
          Post;
          pi_TotalItems := pi_TotalItems + 1;
          Lbl_TotalItems.Caption := IntToStr(pi_TotalItems);
     end;


     pb_IsFinalSelectedTestName:=False;
     if DBLCB_Scheme.KeyValue = '22' then //22 - Medicare Scheme
     GetCoPaymentAmt;


     { Doctor Fraction }
     (*IF (gs_IsDoctorFractionActive='Y') Then
     Begin
          IF Query_TestName.FieldbyName('IsFractionableItem').AsString='Y' Then
          Begin
               LoadServiceWiseFraction(Query_TestName.FieldByName('TestNameCode').AsString,Query_TestName.FieldByName('TNCategoryCode').AsString
               ,TestPrice,Qty,Query_TestName.FieldByName('DepID').AsInteger,Query_TestName.FieldByName('TestNameId').AsInteger);
               Display_Frct_Involve_Person(Query_TestName.FieldbyName('IsFractionableItem').AsString,Query_TestName.FieldByName('TestNameCode').AsString);
          End
          Else
          Begin
               Label_Fraction.Visible:=False;
               DBGrid_DocInvolved.Visible:=False;
          End;
     End
     else
     begin
          Label_Fraction.Visible:=False;
          DBGrid_DocInvolved.Visible:=False;
     end;  *)

     CalculateLabels;
     // { ------------------------------------------- }
     // if (DISPER > 0) and (Gs_TaxRule='TAD') then
     // begin
     // pf_subtotal := pf_subtotal + (TestPriceWithDis * Qty);
     // pf_SvrTaxTotal := pf_SvrTaxTotal + (SvrTaxWithDis * Qty);
     // end
     // else
     // begin
     // pf_subtotal := pf_subtotal + (TestPrice * Qty);
     // pf_SvrTaxTotal := pf_SvrTaxTotal + (SvrTax * Qty);
     // end;
     // pf_NetTotal := pf_subtotal + pf_SvrTaxTotal;
     // pf_disper := pf_disper + DISPER;
     // pf_discount := pf_discount + Discount;
     //
     // pf_grandtotal:=pf_NetTotal-pf_discount;
     //
     // if le_TotalDeposit.Text <> '' then
     // pf_Deposit := StrToFloat(le_TotalDeposit.Text);
     // pf_balance := pf_Deposit - pf_grandtotal;
     //
     //
     //
     // Le_Discount.Text := '00.00';
     // Le_Disper.Text := '00.00';
     // Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
     // Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTaxTotal);
     // Le_NetTotal.Text := FormatFloat('#0,0.00', pf_NetTotal);
     // Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
     // Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
     // Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
     // lbl_DepositBalance.Caption := FormatFloat('#0,0.00', pf_Deposit);
     // Le_NetBalance.Text := FormatFloat('#0,0.00', pf_balance);
     // lbl_NetBalance.Caption := FormatFloat('#0,0.00', pf_balance);
     // { ------------------------------------------- }

     Edit_TestName.Clear;
     Edit_Qty.Clear;
     Edit_UnitPrice.Clear;
     Edit_Doccode.Clear;
     if gi_BillCase = 0 then
     begin
          Query_TempBilling.Close;
          Query_TempBilling.DatabaseName := ps_Temppath;
          Query_TempBilling.Open;
     end;
     if gi_BillCase = 3 then
     begin
          Query_FinalBill.Close;
          Query_FinalBill.DatabaseName := ps_Temppath;
          Query_FinalBill.Open;
     end;

     //Edit_TestName.SetFocus;
     Edit_Doccode.SetFocus;
     DBGrid_Search.Visible := False;
     if Cb_DeductFromDeposit.Checked = true then
          Cb_DeductFromDepositClick(Sender);
end;

procedure Tfrom_BillingRefund.SpeedButton2Click(Sender: TObject);
begin
     if FontDialog1.Execute then
     begin
          DBGrid_Search.Font.Style:=FontDialog1.Font.Style;
          DBGrid_Search.Font.Name:=FontDialog1.Font.Name;
          DBGrid_Search.Font.Color:=FontDialog1.Font.Color;
          DBGrid_Search.Font.Size:=FontDialog1.Font.Size;
     end;
end;

procedure Tfrom_BillingRefund.SB_EditClick(Sender: TObject);
begin
     // OpenCashDrawer;
     Try
          Form_BillDetail := TForm_BillDetail.Create(Nil);
          Form_BillDetail.ShowModal;
     Finally
          Form_BillDetail.Free;
          LoadBill;
     End;
end;

procedure Tfrom_BillingRefund.BB_TestSelectionClick(Sender: TObject);
begin
     try
          Form_Departmentlist := TForm_Departmentlist.Create(nil);
          Form_Departmentlist.ShowModal;
     finally
          Form_Departmentlist.Free;
          Timer1.Enabled := true;
     end;
end;

procedure Tfrom_BillingRefund.BitBtn_BarCodeClick(Sender: TObject);
begin
     if MessageDlg('Are you sure to re-print barcode sticker ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     ReprintSticker(Query_BillList.FieldByName('BillNo').AsString,CB_Preview);
end;

procedure Tfrom_BillingRefund.BitBtn_RePrintIPAdvanceReceiptClick(Sender: TObject);
begin
     Gs_BillNo := Query_BillList.FieldByName('BillNo').AsString;
     gi_PatientID :=Query_BillList.FieldByName('PatientId').AsInteger;
     if (Copy(Gs_BillNo,1,2)='CS') or (Copy(Gs_BillNo,1,2)='ME') or (Copy(Gs_BillNo,1,2)='CR') then
     begin
          gi_BillCase:=2;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     Else if (Copy(Gs_BillNo,1,2)='TP') then
     begin
          gi_BillCase:=0;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     else if (Copy(Gs_BillNo,1,2)='RF') then
     begin
          gi_BillCase:=7;
          Gb_IsReprint:=True;
          PrintBill(CB_Preview,1);
     end
     else if Copy(Gs_BillNo,1,2)='DP' then
     begin
          PrintDepositSlip;
     end;
     Gs_BillNo:='';
     gi_PatientID:=0;
end;

procedure Tfrom_BillingRefund.BitBtn_RePrintIPBarCodeClick(Sender: TObject);
begin
     if MessageDlg('Are you sure to re-print barcode sticker ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     ReprintSticker(Query_BillList.FieldByName('BillNo').AsString,CB_Preview);
end;

procedure Tfrom_BillingRefund.BitBtn_SetChargeClick(Sender: TObject);
Var ls_TestName,ls_TestNameCode : String;
    lf_TestPrice,lf_TestPriceWithTax, lf_VatAmt : Double;
begin
(*    if Trim(Edit_ChargeAmount.Text)='' then
     Edit_ChargeAmount.Text:='0';

     if StrToInt(Edit_ChargeAmount.Text) <=0 then
     Begin
          MessageDlg('Please Check Total Extra Charge for Transportation.',mtWarning,[mbok],0);
          Exit;
     End;

     if Trim(Edit_DistanceDescription.Text)='' then
     Begin
          MessageDlg('Extra Transportation Distance is Compulsory.',mtWarning,[mbok],0);
          Exit;
     End;


     Table_TempBilling.Locate('DepId',65,[]);
     ls_TestName:=Table_TempBilling.FieldByName('TestName').AsString;
     ls_TestNameCode:=Table_TempBilling.FieldByName('TestNameCode').AsString;

     lf_TestPrice:= GetNoOfDecimalPartOfFloatNum(StrToFloat(Edit_ChargeAmount.Text)/(1+gf_TaxPercent/100),3);
     lf_VatAmt:=StrToFloat(Edit_ChargeAmount.Text) - lf_TestPrice;


     lf_TestPrice:= lf_TestPrice + Table_TempBilling.FieldByName('TestPrice').AsFloat;
     lf_VatAmt:=lf_VatAmt + Table_TempBilling.FieldByName('SvrTax').AsFloat;

     lf_TestPriceWithTax:=lf_TestPrice+lf_VatAmt;


     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=ps_Temppath;
          sql.Clear;
          sql.Add(' Update TempBilling.db Set TestName='+#39+ls_TestName+' + '+Edit_DistanceDescription.Text+#39);
          sql.Add(' ,TestPrice='+FloatToStr(lf_TestPrice)+',SvrTax='+FloatToStr(lf_VatAmt));
          sql.Add(' ,TotalPrice='+FloatToStr(lf_TestPriceWithTax));
          sql.Add(' ,TestPriceWithTax='+FloatToStr(lf_TestPriceWithTax*Table_TempBilling.FieldByName('Qty').AsFloat));
          sql.Add(' ,NetTotal='+FloatToStr(lf_TestPriceWithTax*Table_TempBilling.FieldByName('Qty').AsFloat));
          sql.Add(' Where TestNameCode='+#39+ls_TestNameCode+#39);
          ExecSQL;
     End;

     Query_TempBilling.Close;
     Query_TempBilling.DatabaseName := ps_Temppath;
     Query_TempBilling.Open;
     Query_TempBilling.Locate('TestNameCode',ls_TestNameCode,[]);
     Panel_Transportation.Visible:=False;
     CalculateLabels;*)
end;

procedure Tfrom_BillingRefund.CalculateLabels;
Var
     TestPriceWithDis, SvrTaxWithDis: Double;
     Qry: TOraQuery;
begin
     pf_TestPrice := 0;
     pf_SvrTax := 0;
     pf_Qty := 0;
     pf_TotalPrice := 0;
     pf_disper := 0;
     pf_discount := 0;
     pf_NetTotal := 0;

     pf_SvrTaxTotal := 0;
     pf_Total := 0;
     pf_DiscountTotal := 0;
     pf_grandtotal := 0;
     pf_subtotal := 0;

     pi_TotalItems := 0;

     Qry := TOraQuery.Create(Nil);

     With Qry do
     begin
          Close;
          SQL.Clear;
          DatabaseName := ps_Temppath;
          if gi_BillCase in [0, 1] then
          begin
               SQL.Add(
                    'Select Count(TestPrice)C,Sum(TestPrice*Qty)SubTotal,Sum(SvrTax)SvrTaxTotal,Sum(TestPrice*Qty)NetTotal,Sum(Discount)DiscountTotal ');
               SQL.Add('from TempBilling Where Status is Null');
          end
          else
          begin
               SQL.Add(
                    'Select Count(TestPrice)C, Sum(TestPrice*Qty)SubTotal,Sum(NETTOTAL)NetTotal,Sum(SvrTax)SvrTaxTotal,Sum(Discount)DiscountTotal');
               SQL.Add('from FinalBill Where Status is Null And RefundBillNo is Null');
          end;

          Open;
          begin
               pf_subtotal := FieldByName('Subtotal').AsFloat;
               pf_SvrTaxTotal := FieldByName('SvrTaxTotal').AsFloat;
               pf_DiscountTotal := FieldByName('DiscountTotal').AsFloat;

               pi_TotalItems := FieldByName('C').AsInteger;
          end;

          if Gs_TaxRule = 'TBD' then
          begin
               pf_NetTotal := pf_subtotal + pf_SvrTaxTotal;
               pf_grandtotal := pf_NetTotal - pf_DiscountTotal;
          end
          else if Gs_TaxRule = 'TAD' then
          begin
               pf_NetTotal := FieldByName('SubTotal').AsFloat-pf_DiscountTotal;
               pf_grandtotal := pf_NetTotal + pf_SvrTaxTotal;
          end;

          pf_Deposit := 0;//GetTotalDeposit(gi_PatientID);
          (*if gb_IsFinManConnected=True then
          Begin
               if pf_Deposit <=0 then
               pf_Deposit:=GetPatientDepositFromFinman(gi_PatientID);
          End;*)

          if gi_BillCase=1 then
          Begin
               Close;
               DatabaseName := ps_Temppath;
               sql.Clear;
               (*SQL.Add(' Select Sum((TestPrice*Qty)+SvrTax-Discount) AdvanceRefund');
               SQL.Add(' from TempBilling where Status is Null');*)
               SQL.Add(
                    'Select Sum(TestPrice*Qty)SubTotal,Sum(SvrTax)SvrTaxTotal,Sum(TestPrice*Qty)NetTotal,Sum(Discount)DiscountTotal ');
               SQL.Add('from TempBilling Where Status is Not Null');
               Open;

               if pb_IsAdvanceExist=True then
               Begin
                    pf_AdvancRefund:=FieldByName('Subtotal').AsFloat+FieldByName('SvrTaxTotal').AsFloat-FieldByName('DiscountTotal').AsFloat;
                    Label21.Visible:=True;
                    Label21.Caption:='Refund AMT:';
                    Lbl_BillNo.Visible:=true;
                    Lbl_BillNo.Caption:=FloatToStr(pf_AdvancRefund);
               End
               Else
               Begin
                    Label21.Visible:=True;
                    Label21.Caption:='Refund AMT:';
                    Lbl_BillNo.Visible:=true;
                    Lbl_BillNo.Caption:='No Advance Taken';
                    pf_AdvancRefund:=0;
               End;
          End;

          pf_balance := pf_Deposit - pf_grandtotal;

          Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
          Le_NetTotal.Text := FormatFloat('#0,0.00', pf_NetTotal);
          Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTaxTotal);
          Le_NetBalance.Text := FormatFloat('#0,0.00', pf_balance);
          Le_Discount.Text := FormatFloat('#0,0.00', pf_DiscountTotal);
          Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
          le_TotalDeposit.Text := '0.00';//FormatFloat('#0,0.00', pf_Deposit);

          Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          lbl_DepositBalance.Caption := FormatFloat('#0,0.00', pf_Deposit);
          lbl_NetBalance.Caption := FormatFloat('#0,0.00', pf_balance);
          Lbl_TotalItems.Caption := IntToStr(pi_TotalItems);
     end;
end;

procedure Tfrom_BillingRefund.CalculatePayment;
Var
     Payment: Double;
begin
     if (Le_Payment.Text = '') and (Edit_MemberDeposit.Text = '') then
          exit;

     if Le_GrandTotal.Text = '' then
          Le_GrandTotal.Text := '0';

     pf_grandtotal := StrToFloat(StringReplace(Le_GrandTotal.Text, ',', '', [rfReplaceAll]));

     if Le_Payment.Text <> '' then
          Payment := StrToFloat(Le_Payment.Text);

     if Cb_DeductFromDeposit.Checked then
     begin
          pf_Payment := Payment + pf_MemberDeposit;
          if pf_grandtotal < pf_MemberDeposit then
          begin
               Pf_DepositDeducted := pf_grandtotal;
          end
          else
          begin
               Pf_DepositDeducted := pf_MemberDeposit;
          end;
     end
     else
     begin
          pf_Payment := Payment;
          Pf_DepositDeducted := 0;
     end;

     pf_Return := Abs(pf_Payment - pf_grandtotal);
     lbl_TenderAmt.Caption := FormatFloat('#0,0.00', pf_Payment);
     if pf_Payment > pf_grandtotal then
     begin
          Label17.Caption := 'Return Amt :';
          Lbl_ReturnAmt.Font.Color := clAqua;
     end
     else
     begin
          Label17.Caption := 'Due Amt :';
          Lbl_ReturnAmt.Font.Color := clRed;
     end;
     Lbl_ReturnAmt.Caption := FormatFloat('#0,0.00', pf_Return);
     UpdateCustomerPreview;
end;

procedure Tfrom_BillingRefund.CalculateSum;
Var
     i: Double;
begin
     i := 0;
     i := pf_grandtotal - pf_discount;
     Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', i);
     lbl_DepositBalance.Caption := FormatFloat('#0,0.00', i);
     Le_GrandTotal.Text := FormatFloat('#0,0.00', i);
end;

procedure Tfrom_BillingRefund.CB_BILLTYPEClick(Sender: TObject);
begin
     if CB_BILLTYPE.KeyValue<>'' then
     begin
          Query_TestName.Close;
          Query_TestName.DatabaseName:=gs_DatabaseName;
          Query_TestName.SQL[3]:='AND PATIENTTYPECODE='+QuotedStr(CB_BILLTYPE.KeyValue);
          Query_TestName.Open;

          ps_PatientTypeCode:=CB_BILLTYPE.KeyValue;
     end;

end;

procedure Tfrom_BillingRefund.Cb_DeductFromDepositClick(Sender: TObject);
begin
     if Cb_DeductFromDeposit.Checked then
     begin
          pf_MemberDeposit := GetTotalMemberDeposit(gi_PatientID, lbl_BenefitPackage.Caption);
          Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
          Pb_NoDiscount := true;
     end
     else
     begin
          pf_MemberDeposit := 0;
          Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
          Pb_NoDiscount := False;
     end;
     CalculatePayment;
end;

procedure Tfrom_BillingRefund.Timer1Timer(Sender: TObject);
Var
     Qry: TOraQuery;
begin
     if Gb_TestListClosed then
     begin
          Table_TempBilling.Close;
          Table_TempBilling.DatabaseName := ps_Temppath;
          Table_TempBilling.Open;
          Qry := TOraQuery.Create(nil);
          with Qry do
          begin
               Close;
               DatabaseName := ps_Temppath;
               SQL.Clear;
               SQL.Add('Select sum(TestPrice*Qty)Total,sum(Svrtax*Qty)Svrtax from TempBilling');
               Open;
               pf_Total := FieldByName('total').AsFloat;
               pf_subtotal := pf_Total;
               pf_SvrTax := FieldByName('SvrTax').AsFloat;
               pf_grandtotal := pf_subtotal + pf_SvrTax;
          end;
          Qry.Free;
          { ------------------------------------------- }

          Le_NetBalance.Text := FormatFloat('#0,0.00', pf_Total);
          Le_Discount.Text := '0.00';
          Le_Disper.Text := '0.00';
          Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
          Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTax);
          Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
          lbl_DepositBalance.Caption := FormatFloat('#0,0.00', pf_Deposit);
          lbl_NetBalance.Caption := FormatFloat('#0,0.00', pf_balance);
          { ------------------------------------------- }
     end;
     Timer1.Enabled := False;
end;

procedure Tfrom_BillingRefund.ToogleCustomerView;
begin
     
end;

procedure Tfrom_BillingRefund.UpdateCustomerPreview;
begin
     if GetMonitorCount = 1 then
          exit;
     with Form_CustomerMonitor do
     begin
          DBGrid1.DataSource := Self.DBGrid1.DataSource;
          lbl_patientid.Caption := IntToStr(gi_PatientID);
          lbl_patientname.Caption := Gs_PatientName;
          Lbl_GrandTotal.Caption := Self.Lbl_GrandTotal.Caption;
          lbl_DepositBalance.Caption := Self.lbl_DepositBalance.Caption;
          lbl_NetBalance.Caption := Self.lbl_NetBalance.Caption;
          Lbl_ReturnAmt.Caption := Self.Lbl_ReturnAmt.Caption;
          lbl_TenderAmt.Caption := Self.lbl_TenderAmt.Caption;
          Lbl_TotalItems.Caption := Self.Lbl_TotalItems.Caption;
          Image_Main.Picture.Assign(Self.Image_Main.Picture);
          Label17.Caption := Self.Label17.Caption;
          Lbl_ReturnAmt.Font.Color := Self.Lbl_ReturnAmt.Font.Color;
     end;
end;

procedure Tfrom_BillingRefund.UpdateDepositDetail;
Var
     lf_CrAmount: Double;
     ls_DepositType, ls_ReferenceType, ls_ReferenceNo, ls_TodaysDate, ls_Remarks: String;
begin
     lf_CrAmount := StrToFloat(Le_Payment.Text);
     ls_DepositType := 'BILL GENERATE';
     ls_ReferenceType := 'BILL';
     ls_ReferenceNo := Gs_BillNo;
     if gi_datesystem = 0 then
          ls_TodaysDate := TodaysDateVS
     else
          ls_TodaysDate := TodaysDate;
     ls_Remarks := 'DEPOSIT FOR SERVICE BILL';
     Try
          UpdateDeposit(0, gi_UserID, lf_CrAmount, ls_ReferenceNo, ls_Remarks);
     except
          UpdateDeposit(0, gi_UserID, lf_CrAmount, ls_ReferenceNo, ls_Remarks);
     End;
end;

procedure Tfrom_BillingRefund.UpdatePharmacyTable;
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(Nil);
     With Qry do
     Begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add(' Update SaleMaster Set Cashed=''Y'',BillNo=' + #39 + Gs_BillNo + #39);
          SQL.Add(' where PatientTypeID=0 and ST=''N'' and STATUS1=1 and Cashed=''N''');
          SQL.Add(' and CustomerId=' + IntToStr(gi_PatientID));
          SQL.Add(' and SaleMasterId <=' + IntToStr(pi_MaxSaleMasterId));
          ExecSQL;

          if pb_PharmacyRefundOnly=False then
          Begin
               { Retrun master }
               Close;
               SQL.Clear;
               SQL.Add(' Update ReturnMaster Set Cashed=''Y'',BillNo=' + #39 + Gs_BillNo + #39);
               SQL.Add(' where PatientTypeID=0 and ST=''N'' and Credit1=1 and Cashed=''N''');
               SQL.Add(' and CustomerId=' + IntToStr(gi_PatientID));
               SQL.Add(' and ReturnMasterId <=' + IntToStr(pi_MaxReturnMasterId));
               ExecSQL;
          End;
     End;
end;

procedure Tfrom_BillingRefund.RB_IPBILLClick(Sender: TObject);
var
key:Char;
begin
     BB_Save.Visible:=True;
     BB_Close.Visible:=True;
     gi_BillCase:=1;
      if Not FileExists(Ps_temppath+'\TempBilling.db') then
      CreateTableTempBilling;

      with Table_TempBilling do
      begin
           Close;
           DatabaseName := Ps_temppath;
           TableName := 'TempBilling.db';
           EmptyTable;
           Open;
      end;
      Table_TempBilling.Close;
      Table_TempBilling.DatabaseName:=Ps_TempPath;
      Table_TempBilling.Open;
      DBGrid1.DataSource := DS_Tempbilling;
     Le_HosNoKeyPress(Sender,Key);
end;

procedure Tfrom_BillingRefund.RB_OPBILLClick(Sender: TObject);
var
Key:Char;
begin
     BB_Save.Visible:=True;
     BB_Close.Visible:=True;
     gi_BillCase:=6;
     if Not FileExists(ps_Temppath+'\FinalBill.db') then
     CreateTableFinalBill;

     with Table_FinalBill do
     begin
          Close;
          DatabaseName := ps_Temppath;
          TableName := 'FinalBill.db';
          EmptyTable;
          Open;
     end;
     Table_FinalBill.Close;
     Table_FinalBill.Open;
     DBGrid1.DataSource := DS_FinalBill;
     CB_BILLTYPE.KeyValue:='GEN';
     RB_OPBIll.Checked:=True;
     Le_HosNoKeyPress(Sender,Key);
end;

procedure Tfrom_BillingRefund.ReCalculateSumAmtAfterDeleteItem;
Var
     TestPrice, Qty, SvrTax: Double;
Begin
     if gi_BillCase in [0, 1] then
     begin
          Qty := Table_TempBilling.FieldByName('Qty').AsFloat;
          TestPrice := Table_TempBilling.FieldByName('TestPrice').AsFloat;
          SvrTax := Table_TempBilling.FieldByName('SvrTax').AsFloat;
     end;
     if gi_BillCase in [3, 6] then
     begin
          Qty := Query_FinalBill.FieldByName('Qty').AsFloat;
          TestPrice := Query_FinalBill.FieldByName('TestPrice').AsFloat;
          SvrTax := Query_FinalBill.FieldByName('SvrTax').AsFloat;
     end;

     { ------------------------------------------- }
     pf_subtotal := pf_subtotal - (TestPrice * Qty);
     // pf_SvrTax := pf_SvrTax - (SvrTax * QTY);
     pf_SvrTaxTotal := pf_SvrTaxTotal - (SvrTax * Qty);
     pf_SvrTax := pf_SvrTaxTotal;
     pf_Total := pf_subtotal + pf_SvrTax;

     pf_grandtotal := pf_Total - pf_Deposit;

     Le_NetBalance.Text := FormatFloat('#0,0.00', pf_Total);
     Le_Discount.Text := '0.00';
     Le_Disper.Text := '0.00';
     Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
     Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTax);
     Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
     Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
     lbl_DepositBalance.Caption := FormatFloat('#0,0.00', pf_Deposit);

     pi_TotItems := pi_TotItems - 1;
     Lbl_TotalItems.Caption := IntToStr(pi_TotItems);
     { ------------------------------------------- }
End;

Function Tfrom_BillingRefund.GetMax_TempSno: Integer;
Begin
     With QueryTemp do
     Begin
          Close;
          DatabaseName := ps_Temppath;
          SQL.Clear;
          if gi_BillCase = 0 then
               SQL.Add(' Select Max(SNo) MaxNo From TempBilling.db');
          if gi_BillCase = 3 then
               SQL.Add(' Select Max(SNo) MaxNo From FinalBill.db');
          Open;
     End;
     Result := QueryTemp.FieldByName('MaxNo').AsInteger + 1;
End;

Procedure Tfrom_BillingRefund.SaveDoctorFraction;
Var li_BAECId:Integer;
    ls_DocCode,ls_DocDep:String;
    lf_FrctRate,lf_FrctAmt,lf_DisPer:Double;
Begin
     IF (Table_FinalBill.FieldbyName('ISFractionableTest') .AsString='Y') Then
     Begin
          With Query_TempProcess Do
          Begin
               Close;
               DatabaseName:=ps_Temppath;
               Sql.Clear;
               Sql.Add(' Select * From ServiceWiseFraction.db');
               Sql.Add(' Where TestNameCode='+#39+Table_FinalBill.FieldByName('TestNameCode').AsString+#39);
               Open;
               First;
               while not Query_TempProcess.EOF Do
               Begin
                    lf_FrctRate:=Query_TempProcess.FieldbyName('FractionRate') .AsFloat;
                    lf_FrctAmt:=Query_TempProcess.FieldbyName('FractionAmount') .AsFloat;

                    (*IF TablePTTestTemp.FieldByName('IsDiscountable').AsString='Y' Then // IF item is discountable then only frct. should be discountable.
                    Begin
                         IF Query_TempProcess.FieldbyName('IsFractionPropWithDisPer') .AsString='Y' Then
                         lf_DisPer:=TablePTTestTemp.FieldByName('DisPer').AsFloat
                         Else
                         lf_DisPer:=0;
                    End
                    Else
                    lf_DisPer:=0;*)


                    (*pb_MutualDocForShare:=False;
                    IF (Query_TempProcess.FieldbyName('IsShareAutoFrctInMutual') .AsString='Y') and (ls_DocCode<>'HOS01') Then
                    Begin
                         IF RadioButton_IPBilling.Checked=True Then
                         Mutually_Share_Fraction(ls_DocCode,'INVIP')
                         Else
                         Mutually_Share_Fraction(ls_DocCode,'INVOP');
                         IF TablePTTestTemp.FieldByName('DepId').AsInteger=8 Then // 8 - USG Department
                         Mutually_Share_Fraction(ls_DocCode,'USG');
                    End; *)

                    pb_MutualDocForShare:=False;
                    Mutually_Share_Fraction(Table_Fraction.FieldByName('DocCode').AsString,'OT');

                    if pb_MutualDocForShare=False then
                    Begin
                         (*SaveFractiondetail(Query_TempProcess.FieldByName('TestNameCode').AsString, Query_TempProcess.FieldByName('DocCode').AsString,
                              Query_TempProcess.FieldByName('IsOperation').AsString, 'N', 'N',
                              Query_TempProcess.FieldByName('ISFRACTIONPROPWITHDISPER').AsString, 'N',
                              Query_TempProcess.FieldByName('Qty').AsFloat, Table_FinalBill.FieldByName('DisPer').AsFloat,
                              Query_TempProcess.FieldByName('UnitTestCost').AsFloat,Query_TempProcess.FieldByName('UnitTestCost').AsFloat,
                              0, gf_TDSPercent, Query_TempProcess.FieldByName('FractionAmount').AsFloat,
                              Query_TempProcess.FieldByName('FractionRate').AsFloat,0, 0,
                              Query_TempProcess.FieldByName('TestNameId').AsInteger,
                              gi_BillDetailId, Query_TempProcess.FieldByName('DepId').AsInteger,
                              pi_PatientId, pi_InPatientId,Query_TempProcess.FieldByName('DocId').AsInteger,
                              gi_UserID, 0,Query_TempProcess.FieldByName('PositionWiseFractionId').AsInteger,
                              Query_TempProcess.FieldByName('FractionId').AsInteger, ps_TodaysDate,
                              Gs_BillNo, 'B',CB_PayType.Text, '', '', ps_TodaysDate, ps_TodaysTime, '', '',
                              gs_MacID);*)

                         (*SaveFractiondetail(PATIENTID,INPATIENTID,BILLDETAILID,SERVICEBILLDETAILID,FRACTIONID,POSITIONWISEFRACTIONID,DEPID,DATAPOSTBY : Integer;
                              UNITTESTCOST,QTY,FRACTIONAMOUNT,FRACTIONRATE,DISPER:Double;
                              DOCCODE,TESTNAMECODE,BILLNO,BILLDATE,BILLTYPE,PAYTYPE,ISFRACTIONPROPWITHDISPER,DESCRIPTION,ISADDLUMPSUM,
                              ISCHARGEDIVIDE,REMARKS,DATAPOSTDATE,DATAPOSTTIME :String); *)

                         SaveFractiondetail(gi_PatientId,pi_InpatientId,gi_BillDetailId,gi_ServiceBillDetailid,Query_TempProcess.FieldByName('FractionId').AsInteger
                              ,Query_TempProcess.FieldByName('PositionWiseFractionId').AsInteger,Query_TempProcess.FieldByName('DepId').AsInteger,gi_UserId,
                              Query_TempProcess.FieldByName('UnitTestCost').AsFloat,Query_TempProcess.FieldByName('Qty').AsFloat,
                              Query_TempProcess.FieldByName('FractionAmount').AsFloat,Query_TempProcess.FieldByName('FractionRate').AsFloat,
                              Query_TempProcess.FieldByName('DisPer').AsFloat,Query_TempProcess.FieldByName('DocCode').AsString,
                              Query_TempProcess.FieldByName('TestNameCode').AsString,Gs_BillNo,ps_TodaysDate,'IP',CB_PayType.Text,
                              'Y','','N','N','',ps_TodaysDate,ps_TodaysTime);
                    End
                    Else
                    Begin
                         Query_MutualDocForShare.First;
                         While not Query_MutualDocForShare.Eof do
                         begin
                              IF Query_MutualDocForShare.FieldByName('DocRate').AsFloat > 0 Then
                              Begin
                                   (*SaveFractiondetail(Query_TempProcess.FieldByName('TestNameCode').AsString, Query_TempProcess.FieldByName('DocCode').AsString,
                                        Query_TempProcess.FieldByName('IsOperation').AsString, 'N', 'N',
                                        Query_TempProcess.FieldByName('ISFRACTIONPROPWITHDISPER').AsString, 'N',
                                        Query_TempProcess.FieldByName('Qty').AsFloat, Table_FinalBill.FieldByName('DisPer').AsFloat,
                                        Query_TempProcess.FieldByName('UnitTestCost').AsFloat,Query_TempProcess.FieldByName('UnitTestCost').AsFloat,
                                        0, gf_TDSPercent,
                                        Query_TempProcess.FieldByName('FractionAmount').AsFloat * Query_MutualDocForShare.FieldByName('DocRate').AsFloat/100,
                                        Query_TempProcess.FieldByName('FractionRate').AsFloat * Query_MutualDocForShare.FieldByName('DocRate').AsFloat/100,
                                        0, 0,Query_TempProcess.FieldByName('TestNameId').AsInteger,
                                        gi_BillDetailId, Query_TempProcess.FieldByName('DepId').AsInteger,
                                        pi_PatientId, pi_InPatientId,Query_TempProcess.FieldByName('DocId').AsInteger,
                                        gi_UserID, 0,Query_TempProcess.FieldByName('PositionWiseFractionId').AsInteger,
                                        Query_TempProcess.FieldByName('FractionId').AsInteger, ps_TodaysDate,
                                        Gs_BillNo, 'B',CB_PayType.Text, '', '', ps_TodaysDate, ps_TodaysTime, '', '',gs_MacID);*)

                                   SaveFractiondetail(gi_PatientId,pi_InpatientId,gi_BillDetailId,gi_ServiceBillDetailid,Query_TempProcess.FieldByName('FractionId').AsInteger
                                        ,Query_TempProcess.FieldByName('PositionWiseFractionId').AsInteger,Query_TempProcess.FieldByName('DepId').AsInteger,gi_UserId,
                                        Query_TempProcess.FieldByName('UnitTestCost').AsFloat,Query_TempProcess.FieldByName('Qty').AsFloat,
                                        Query_TempProcess.FieldByName('FractionAmount').AsFloat * Query_MutualDocForShare.FieldByName('DocRate').AsFloat/100,
                                        Query_TempProcess.FieldByName('FractionRate').AsFloat * Query_MutualDocForShare.FieldByName('DocRate').AsFloat/100,
                                        Query_TempProcess.FieldByName('DisPer').AsFloat,Query_TempProcess.FieldByName('DocCode').AsString,
                                        Query_TempProcess.FieldByName('TestNameCode').AsString,Gs_BillNo,ps_TodaysDate,'IP',CB_PayType.Text,
                                        'Y','','N','N','',ps_TodaysDate,ps_TodaysTime);
                              End;
                              Query_MutualDocForShare.Next;
                         end;
                    End;
                    Query_TempProcess.Next;
               End;
          End;
     End;
end;

Procedure Tfrom_BillingRefund.LoadServiceWiseFraction(TestNameCode,TNCategoryCode:String; UnitTestCost,Qty:Double; DepId,TestNameId:Integer);
Var li_DocId,li_Sno,li_TotNoForFract:Integer;
    b_IsSingleCondt,lb_IsDoctorWiseFraction:Boolean;
    lf_FractionRate, lf_FractionAmount : Double;
    ls_DocCode : string;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=ps_Temppath;
          sql.Clear;
          sql.add(' Select * From  ServiceWiseFraction.db where TestNameCode='+#39+TestNameCode+#39);
          Open;
     End;

     IF Query_TempProcess.RecordCount <=0 Then
     Begin
          IF Trim(DBLCB_RefDocCode.Text)<>'' Then
          Begin
               li_DocId:=Query_ReferingDocDept.FieldByName('ID').AsInteger;
               ls_DocCode:=Query_ReferingDocDept.FieldByName('Code').AsString;
          End
          Else
          Begin
               li_DocId:=-1; // IF Doctor is not selected
               ls_DocCode:='';
          End;




          { Identify Either Test wise or Dept. Wise Commession Set Up }
          (*With Query_SubProcess do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select DepId From Fraction where TestNameId='+IntToStr(TestNameId));
               Open;
          End;*)

          b_IsSingleCondt:=True;
          (*b_IsSingleCondt:=False;
          IF Query_SubProcess.RecordCount > 1 Then   // Test Name Wise Setup Exist
          Begin
               With QueryVoid do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select DepId,FractionFor');
                    sql.add(' From Fraction where TestNameId='+IntToStr(TestNameId));
                    IF RadioButton_OPBilling.Checked=True Then
                    sql.add(' and Upper(FractionFor)=''OUTDOOR''')
                    Else
                    sql.add(' and Upper(FractionFor)=''INDOOR''');
                    Open;
               End;

               IF QueryVoid.RecordCount <=0 Then
               b_IsSingleCondt:=False
               Else
               b_IsSingleCondt:=True;
          End;*)

          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select PWC.*,DC.FRAC_DepId,DC.FRAC_FIXEDAMTDEDUCTONTESTPRICE From HS_POWF_PositionWiseFraction PWC, HS_FRAC_Fraction DC,HS_TENA_TestName TN ');
               sql.add(' where PWC.POWF_FractionId = DC.FRAC_FractionId and DC.FRAC_TestNameId=TN.TENA_TestNameId and PWC.POWF_IsActive=''Y'' and ');
               sql.add(' TN.TENA_TESTNAMEID='+IntToStr(TestNameId));
               (*sql.add(' Select DC.IsDocCompAtBillingForSingFrct,DC.IsFrctPostAtReportingTime,PWC.PositionWiseCommId,PWC.IsFixedPersonForComm,');
               sql.add(' PWC.IsFractionPropWithDisPer,PWC.DRCommId,PWC.Name,PWC.IsHospitalPart,');
               sql.add(' PWC.PositionName,PWC.IsDefaultDoc,PWC.DocCode,PWC.CommRateA,PWC.CommAmtA,DC.IsRateAmt,DC.CommAmt,PWC.ISCOMPFORFRACTION,');
               sql.add(' DC.DepId From DoctorCommession DC,POSITIONWISECOMMESSION PWC where DC.DRCOMMID=PWC.DRCOMMID and PWC.ISACTIVE=''T''');
               sql.add(' and DC.TESTNAMEID='+IntToStr(TestNameId));
               (*IF Query_SubProcess.RecordCount > 0 Then // Test wise Comm. Setup
               sql.add(' and DC.TESTNAMEID='+IntToStr(TablePTTestTemp.FieldByName('TESTNAMEID').AsInteger))
               Else
               sql.add(' and DC.TestNameId=0 and DC.DepId='+IntToStr(DepId));

               IF RadioButton_OPBilling.Checked=True Then
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''OUTDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''OUTDOOR'')');
               End
               Else
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''INDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''INDOOR'')');
               End;*)
               //sql.add(' Order By IsFixedPersonForComm');
               //sql.saveToFile('C:\DocFractSetFromBilling.Txt');
               Open;
          End;

          if Query_Process.FieldByName('POWF_POSITIONWISEFRACTIONID').AsInteger <= 0 then // Search For Department Wise Setup
          Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select PWC.*,DC.FRAC_DepId,DC.FRAC_FIXEDAMTDEDUCTONTESTPRICE From HS_POWF_PositionWiseFraction PWC, HS_FRAC_Fraction DC,HS_TENA_TestName TN ');
               sql.add(' where PWC.POWF_FractionId = DC.FRAC_FractionId and DC.FRAC_TestNameId=TN.TENA_TestNameId and PWC.POWF_IsActive=''Y'' and ');
               sql.add(' DC.FRAC_DepId='+IntToStr(DepId)+' and FRAC_TestNameId=0');

               (*sql.add(' Select DC.IsDocCompAtBillingForSingFrct,DC.IsFrctPostAtReportingTime,PWC.PositionWiseCommId,PWC.IsFixedPersonForComm,');
               sql.add(' PWC.IsFractionPropWithDisPer,PWC.DRCommId,PWC.Name,PWC.IsHospitalPart,');
               sql.add(' PWC.PositionName,PWC.IsDefaultDoc,PWC.DocCode,PWC.CommRateA,PWC.CommAmtA,DC.IsRateAmt,DC.CommAmt,PWC.ISCOMPFORFRACTION,');
               sql.add(' DC.DepId From DoctorCommession DC,POSITIONWISECOMMESSION PWC where DC.DRCOMMID=PWC.DRCOMMID and PWC.ISACTIVE=''T''');
               sql.add(' and DC.TESTNAMEID='+IntToStr(TestNameId));
               (*IF Query_SubProcess.RecordCount > 0 Then // Test wise Comm. Setup
               sql.add(' and DC.TESTNAMEID='+IntToStr(TablePTTestTemp.FieldByName('TESTNAMEID').AsInteger))
               Else
               sql.add(' and DC.TestNameId=0 and DC.DepId='+IntToStr(DepId));

               IF RadioButton_OPBilling.Checked=True Then
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''OUTDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''OUTDOOR'')');
               End
               Else
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''INDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''INDOOR'')');
               End;*)
               //sql.add(' Order By IsFixedPersonForComm');
               //sql.saveToFile('C:\DocFractSetFromBilling.Txt');
               Open;
          End;
          End;



          if Query_Process.FieldByName('POWF_POSITIONWISEFRACTIONID').AsInteger > 0 then // Test Name Wise Fraction
          begin
               With Query_TempProcess do
               Begin
                    Close;
                    DatabaseName:=ps_Temppath;
                    sql.Clear;
                    sql.add(' Select Max(Sno) as Sno From  ServiceWiseFraction.db');
                    Open;
               End;

               li_Sno:=Query_TempProcess.FieldByName('Sno').AsInteger;

               li_TotNoForFract:=Query_Process.RecordCount;
               IF Not Table_Fraction.Active Then Table_Fraction.Active:=True;
               Query_Process.First;
               While Not Query_Process.Eof do
               Begin
                    { Check Particular Referral Doctor Wise or Not }
                    With Query_SubProcess do
                    Begin
                         Close;
                         DatabaseName:=gs_DatabaseName;
                         sql.Clear;
                         sql.add(' Select DOWF_DOCTORWISEFRACTIONID,DOWF_POSITIONWISEFRACTIONID,DOWF_FRACTIONRATE,DOWF_FRACTIONAMOUNT,DOWF_ISFRACTIONPROPWITHDISPER');
                         sql.add(' From HS_DOWF_DoctorwiseFraction where DOWF_POSITIONWISEFRACTIONID='+IntToStr(Query_Process.FieldByName('POWF_POSITIONWISEFRACTIONID').AsInteger));
                         sql.add(' and DOWF_DOCID='+IntToStr(li_DocId)+' and DOWF_ISACTIVE=''T''');
                         Open;
                    End;

                    if Query_SubProcess.FieldByName('DOWF_DOCTORWISEFRACTIONID').AsInteger=0 then
                    Begin
                         lb_IsDoctorWiseFraction:=False;
                         lf_FractionRate:=Query_Process.FieldByName('POWF_FRACTIONRATE').AsFloat;
                         lf_FractionAmount:=Query_Process.FieldByName('POWF_FRACTIONAMOUNT').AsFloat;
                    End
                    else
                    begin
                         lb_IsDoctorWiseFraction:=True;
                         lf_FractionRate:=Query_SubProcess.FieldByName('DOWF_FRACTIONRATE').AsFloat;
                         lf_FractionAmount:=Query_SubProcess.FieldByName('DOWF_FRACTIONAMOUNT').AsFloat;
                    end;

                    With Table_Fraction Do
                    Begin
                         Append;
                         li_Sno:=li_Sno+1;
                         FieldbyName('Sno') .AsInteger:=li_Sno;
                         FieldbyName('DocId') .AsInteger:=li_DocId;
                         FieldbyName('PositionWiseFractionId') .AsInteger:=Query_Process.FieldByName('POWF_POSITIONWISEFRACTIONID').AsInteger;
                         FieldbyName('IsFixedPersonForFraction') .AsString:=Query_Process.FieldbyName('POWF_ISFIXEDPERSONFORFRACTION') .AsString;
                         FieldbyName('IsFractionPropWithDisPer') .AsString:=Query_Process.FieldbyName('POWF_ISFRACTIONPROPWITHDISPER') .AsString;
                         FieldbyName('IsDocCompAtBillingForSing') .AsString:=Query_Process.FieldbyName('POWF_ISCOMPFORFRACTION').AsString;
                         //FieldbyName('IsFrctPostAtReportingTime') .AsString:=Query_Process.FieldbyName('IsFrctPostAtReportingTime').AsString;
                         //FieldbyName('IsHospitalPart') .AsString:=Query_Process.FieldbyName('IsHospitalPart') .AsString;
                         FieldbyName('TestNameCode') .AsString:=TestNameCode;
                         FieldbyName('TestNameId') .AsInteger:=TestNameId;
                         FieldbyName('DepId') .AsInteger:=DepId;
                         FieldbyName('UnitTestCost') .AsFloat:=UnitTestCost;
                         FieldbyName('Description') .AsString:=Query_Process.FieldByName('POWF_POSITIONNAME').AsString;
                         FieldbyName('ISCOMPFORFRACTION') .AsString:=Query_Process.FieldByName('POWF_ISCOMPFORFRACTION').AsString;
                         FieldbyName('Qty') .Asfloat:=Qty;
                         FieldbyName('InpatientId') .AsInteger:=pi_InpatientId;

                         FieldbyName('DocCode') .AsString:=DBLCB_RefDocCode.KeyValue;
                         FieldbyName('DocName') .AsString:=DBLCB_RefDocCode.Text;

                         IF lf_FractionAmount > 0 Then
                         Begin
                              FieldbyName('FractionRate') .Asfloat:=lf_FractionRate;
                              FieldbyName('FractionAmount') .AsFloat:=lf_FractionAmount;
                              FieldbyName('FractionAmountOrg') .AsFloat:=lf_FractionAmount;
                         End
                         Else
                         Begin
                              FieldbyName('FractionRate') .Asfloat:=lf_FractionRate;
                              FieldbyName('FractionAmount') .AsFloat:=StrToFloat(FormatFloat('0.00',(UnitTestCost * lf_FractionRate/100)));
                              FieldbyName('FractionAmountOrg') .AsFloat:=StrToFloat(FormatFloat('0.00',(UnitTestCost * lf_FractionRate/100)));
                         End;
                         Post;
                    end;
                    Query_Process.Next;
               End;
          end;
     End
     Else
     Begin
               (*{ Identify Either Test wise or Dept. Wise Commession Set Up }
               With Query_SubProcess do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select DepId From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
                    Open;
               End;

               b_IsSingleCondt:=False;
               IF Query_SubProcess.RecordCount > 1 Then
               Begin
                    With QueryVoid do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select DepId,FractionFor From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
                         IF RadioButton_OPBilling.Checked=True Then
                         sql.add(' and Upper(FractionFor)=''OUTDOOR''')
                         Else
                         sql.add(' and Upper(FractionFor)=''INDOOR''');
                         Open;
                    End;

                    IF QueryVoid.RecordCount <=0 Then
                    b_IsSingleCondt:=False
                    Else
                    b_IsSingleCondt:=True;
               End;

               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select PWC.PositionWiseCommId,DC.IsFrctPostAtReportingTime,PWC.IsFixedPersonForComm,PWC.IsFractionPropWithDisPer,PWC.DRCommId,PWC.Name,PWC.IsHospitalPart,');
                    sql.add(' PWC.PositionName,PWC.IsDefaultDoc,PWC.DocCode,PWC.CommRateA,PWC.CommAmtA,DC.IsRateAmt,DC.CommAmt,PWC.ISCOMPFORFRACTION,');
                    sql.add(' DC.DepId From DoctorCommession DC,POSITIONWISECOMMESSION PWC where DC.DRCOMMID=PWC.DRCOMMID and PWC.ISACTIVE=''T''');
                    IF Query_SubProcess.RecordCount > 0 Then // Test wise Comm. Setup
                    sql.add(' and DC.TESTNAMEID='+IntToStr(TablePTTestTemp.FieldByName('TESTNAMEID').AsInteger))
                    Else
                    sql.add(' and DC.TestNameId=0 and DC.DepId='+IntToStr(DepId));

                    IF RadioButton_OPBilling.Checked=True Then
                    Begin
                         IF b_IsSingleCondt=False Then
                         sql.add(' and ((Upper(PWC.FractionFor)=''OUTDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                         Else
                         sql.add(' and (Upper(PWC.FractionFor)=''OUTDOOR'')');
                    End
                    Else
                    Begin
                         IF b_IsSingleCondt=False Then
                         sql.add(' and ((Upper(PWC.FractionFor)=''INDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                         Else
                         sql.add(' and (Upper(PWC.FractionFor)=''INDOOR'')');
                    End;
                    sql.add(' Order By IsFixedPersonForComm');
                    //sql.saveToFile('C:\DocFractSetFromBilling.Txt');
                    Open;
               End;
               li_TotNoForFract:=Query_Process.RecordCount;


               with Qry_TempSub do
               Begin
                    Close;
                    DatabaseName:=ps_Temppath;
                    sql.Clear;
                    sql.add(' Select * From DrOperation.db Where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39+' Order By Sno');
                    Open;
               End;

               While not Qry_TempSub.EOF Do
               Begin
                    With Query_Temp Do
                    Begin
                         Close;
                         DatabaseName:=ps_Temppath;
                         sql.Clear;
                         sql.add(' Update DrOperation.db Set Qty='+TablePTTestTemp.FieldbyName('Qty').AsString);
                         sql.add(' ,UnitTestCost='+TablePTTestTemp.FieldbyName('CostPrice').AsString);
                         //IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)<>'HOS01') and (li_TotNoForFract=1) Then

                         IF Trim(Query_TempSub.FieldByName('IsFixedPersonForComm').AsString)='Y'Then
                         Begin
                              sql.add(',DrCode='+#39+Query_TempSub.FieldByName('DrCode').AsString+#39);
                              sql.add(',DrName='+#39+Query_TempSub.FieldByName('DrName').AsString+#39);
                              //sql.add(',DrName='+#39+ps_DocName+#39);
                         End
                         Else IF Trim(Query_TempSub.FieldByName('IsFrctPostAtReportingTime').AsString)='Y'Then
                         Begin
                              sql.add(',DrCode='+#39+'HOS01'+#39);
                              sql.add(',DrName='+#39+'HOSPITAL'+#39);
                              //sql.add(',DrName='+#39+ps_DocName+#39);
                         End
                         Else IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)<>'HOS01') and (li_TotNoForFract=1) Then
                         Begin
                              sql.add(',DrCode='+#39+TablePTTestTemp.FieldByName('DocCode').AsString+#39);
                              sql.add(',DrName='+#39+Get_DocName(TablePTTestTemp.FieldByName('DocCode').AsString)+#39);
                              //sql.add(',DrName='+#39+ps_DocName+#39);
                         End
                         Else IF (Query_TempSub.FieldbyName('Description') .AsString='REFERAL DOCTOR') and (DBLC_Doctor.KeyValue<>NULL) Then
                         Begin
                              sql.add(',DrCode='+#39+DBLC_Doctor.KeyValue+#39);
                              sql.add(',DrName='+#39+DBLC_Doctor.Text+#39);
                         End
                         Else IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)='HOS01') and (li_TotNoForFract=1) Then
                         sql.add(',DrCode='''',DrName=''''');

                         IF Query_TempSub.FieldbyName('DocAmount').AsFloat=0 Then
                         Begin
                              sql.add(' ,DocAmount='+FloatToStr((TablePTTestTemp.FieldbyName('CostPrice').AsFloat *
                                                  //TablePTTestTemp.FieldbyName('Qty').AsFloat *
                                                  Query_TempSub.FieldbyName('DocRatePer').AsFloat)/100));
                              sql.add(' ,DocAmountOrg='+FloatToStr((TablePTTestTemp.FieldbyName('CostPrice').AsFloat *
                                                  //TablePTTestTemp.FieldbyName('Qty').AsFloat  *
                                                  Query_TempSub.FieldbyName('DocRatePer').AsFloat)/100));
                         End
                         Else
                              sql.add(' ,DocAmount='+FloatToStr(Query_TempSub.FieldbyName('DocAmountOrg').AsFloat));// *
                                        //TablePTTestTemp.FieldbyName('Qty').AsFloat));
                              sql.add(' Where Sno='+IntToStr(Query_TempSub.FieldbyName('Sno').AsInteger));
                              //sql.saveToFile('C:\updatetemp.txt');
                         ExecSQL;
                    End;
                    Query_TempSub.Next;
               End;  *)
     End;
End;


Function Tfrom_BillingRefund.GetPharmacyCost:Double;
Begin
     with Query_TempProcess do
     begin
          Close;
          DatabaseName:=ps_Temppath;
          sql.Clear;
          sql.Add(' Select Sum(PharmacyCost) as PharmacyCost From FinalBill.db');
          Open;
     end;
     Result:=Query_TempProcess.FieldByName('PharmacyCost').AsFloat;
End;


Procedure Tfrom_BillingRefund.Mutually_Share_Fraction(doccode,ServiceType:string);
begin
     With Query_MutualDocForShare do
     begin
          close;
          sql.clear;
          sql.add(' select DRSBDID,DocCode,DocRate,ISREFCHRGDIVIDE From DocShareBreakDown where DRSGID=');
          sql.add(' (select DRSGID From DocShareBreakDown Where DocCode='+#39+doccode+#39+' and ServiceType='+#39+ServiceType+#39+')');
          sql.add(' and ServiceType='+#39+ServiceType+#39+' Order by DocRate Desc');
          open;
     end;

     IF Query_MutualDocForShare.fieldbyname('DRSBDID').AsInteger >=1 Then
     pb_MutualDocForShare:=True
     else
     pb_MutualDocForShare:=False;
end;

Procedure Tfrom_BillingRefund.Display_Frct_Involve_Person(IsFractionableItem,TestNameCode : string);
Begin
     (*IF (gs_IsDoctorFractionActive='Y') and (IsFractionableItem='Y') Then
     Begin
          With Query_GetFrctInvoPerson do
          Begin
               Close;
               DatabaseName:=ps_Temppath;
               sql.Clear;
               sql.add(' Select * From ServiceWiseFraction.db ');//Where IsFixedPersonForComm=''N''');
               sql.add(' Where TestNameCode='+#39+TestNameCode+#39);
               sql.add(' Order By DocName ');
               Open;
          End;
          Label_Fraction.Visible:=True;
          DBGrid_DocInvolved.Visible:=True;
          SPB_DOCInvolvement.Enabled:=True;
     End
     Else
     Begin
          Label_Fraction.Visible:=False;
          DBGrid_DocInvolved.Visible:=False;
          SPB_DOCInvolvement.Enabled:=False;
     End;  *)
End;



procedure Tfrom_BillingRefund.ReprintSticker(BillNo: String; CBPreview : TCheckBox);
Var
     Qry,Qry2:TOraQuery;
     PatientName,SAMPLENO:String;
     PatientID:integer;
begin
     Qry:=TOraQuery.Create(Nil);
     Qry2:=TOraQuery.Create(Nil);
     Try
     Form_Sticker:=TForm_Sticker.Create(Nil);
     with Form_Sticker do
     begin
          With Qry do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               Sql.Add('Select PatientID,PatientTestID,(Select PAMA_PatientName from HS_PAMA_PatientMain Where PAMA_PatientId=Sc.PatientId)PatientName');
               SQl.Add(' ,SampleNO from ManipalLab.SampleCollection Sc Where BillNo='+#39+BillNo+#39);
               //SQL.SaveToFile('C:\Bill.Txt');
               Open;
               PatientID:=fieldbyname('PatientId').AsInteger;
               PatientName:=fieldbyname('PatientName').AsString;
               Sql.Clear;
               Sql.Add('Select Distinct Sampleno from ManipalLab.SampleCollection Where BillNo='+#39+BillNo+#39);
               Open;
               (*bill sticker*)
               lbl_PatientName.Caption := IntToStr(PatientID);
               QrBarcode.Text:=IntToStr(PatientID);
               lbl_SampleNO.Caption:=LowerCase(PatientName);
               lbl_bottom.Caption := 'BILL';
               lbl_DepName.Caption:='';
               if CBPreview.Checked=True then
                    QrSticker.Preview
               else
                    QrSticker.Print;
               (***)
               Qry.First;
               While not Qry.eof do
               begin
                    SAMPLENO:=fieldbyname('SampleNo').AsString;
                    if SAMPLENO='' then
                         exit;
                    with Qry2 do
                    begin
                         Close;
                         DatabaseName:=gs_DatabaseName;
                         SQL.Clear;
                         (*Sql.Add('Select Distinct SampleSourceID');
                         Sql.Add(',Case When SampleSourceID is null then tn.TestName');
                         Sql.Add('Else (Select SampleSource From ManipalLab.SampleSource Where SampleSourceID=Tn.SampleSourceID)end as SampleSource');
                         Sql.Add(',Case When SampleSourceID is Null then (Select DepName from Department Where DepID=Tn.labDepID)');
                         Sql.Add('Else (Select DepName from Department Where DepID=Tn.DepID)end as DepName');
                         Sql.Add('from TestName Tn Where TestNameID in (Select TestNameId from PatientTest Where PatientTestID in');
                         Sql.Add(' (Select PatientTestId from ManipalLab.SampleCollection Where SampleNo='+#39+Qry.fieldbyname('SampleNo').AsString+#39+'))');*)
                         Sql.Add(' Select Distinct TENA_SampleSourceID ,Case When TENA_SampleSourceID is null then TN.TENA_TestName');
                         Sql.Add(' Else (Select SampleSource From ManipalLab.SampleSource Where SampleSourceID=TN.TENA_SampleSourceID)end as SampleSource');
                         Sql.Add(' ,Case When TENA_SampleSourceID is Null then (Select DEPT_DepName from HS_DEPT_Department Where DEPT_DepID=TN.TENA_labDepID)');
                         Sql.Add(' Else (Select DEPT_DepName from HS_DEPT_Department Where DEPT_DepID=Tn.TENA_DepID)end as DepName');
                         Sql.Add(' From HS_TENA_TestName Tn Where TENA_TestNameID in (Select TestNameId from PatientTest Where PatientTestID in');
                         Sql.Add(' (Select PatientTestId from ManipalLab.SampleCollection Where SampleNo='+#39+Qry.fieldbyname('SampleNo').AsString+#39+'))');
                         //SQL.SaveToFile('C:\Sample.Txt');
                         Open;
                         QrBarcode.Text := SAMPLENO;
                         lbl_SampleNO.Caption:=SampleNO+' ('+LowerCase(PatientName)+')';
                         Qry2.First;
                         While not Qry2.eof do
                         begin
                              lbl_PatientName.Caption := IntToStr(PatientID);
                              lbl_bottom.Caption := fieldbyname('SampleSource').AsString;
                              lbl_DepName.Caption:=fieldbyname('DepName').AsString;
                              if CBPreview.Checked=True then
                                   QrSticker.Preview
                              else
                              begin
                                   QrSticker.Print;
                              end;
                              Qry2.Next;
                         end;
                    end;
                    Qry.Next;
               end;
          end;
     end;
     Finally
          Form_Sticker.Free;
          SetPrinter('Bill Printer');
     end;
end;




Procedure Tfrom_BillingRefund.GetCoPaymentAmt;
var
     Qry_CopaymentAmt : TOraQuery;
begin
      // for coPayment
      Qry_CopaymentAmt := TOraQuery.Create(Nil);
      With Qry_CopaymentAmt do
      begin
           close;
           DatabaseName:= ps_Temppath;
           sql.clear;
           if gi_BillCase in [2, 3] then
           Begin
                sql.add('select Sum ((CoPaymentItemPercent/100) *((TestPrice * QTY)+SvrTax)) as TotalCopaymentAmts From FinalBill.db');
                sql.add(' where IsCoPaymentItem=''Y''');
           End
           else if gi_BillCase in [0, 1] then
           Begin
               sql.add('select Sum ((CoPaymentItemPercent/100) *((TestPrice * QTY)+SvrTax)) as TotalCopaymentAmts From TempBilling.db');
                sql.add(' where IsCoPaymentItem=''Y''');
           End;
           open;

           IF Qry_CopaymentAmt.FieldByName('TotalCopaymentAmts').AsFloat > 0 Then
           Begin
                Label20.visible := True;
                Label_CoPaymentAmt.Visible := True;
                pf_CopayAmts := StrToFloat(Format('%.2f',[FieldByName('TotalCopaymentAmts').AsFloat]));
                Label_CoPaymentAmt.Caption := FloatToStr(pf_CopayAmts);
           end
           Else
           Begin
                pf_CopayAmts := 0;
                Label_CoPaymentAmt.Caption := '0.00';
                Label20.visible := False;
                Label_CoPaymentAmt.Visible := False;
           End;
      End;
      Qry_CopaymentAmt.Free;

end;


procedure Tfrom_BillingRefund.CheckCoPaymentItem (TestCodeId:Integer; out IsCoPaymentitems:String);
var Qry_Check : TOraQuery;
begin
       //check Setup for Copayment Payable Percentage
       Qry_Check := TOraQuery.Create(Nil);
       With Qry_Check do
       begin
            close;
            DatabaseName := gs_DatabaseName;
            Sql.Add('select * from Member_Copaymentitemsetup');
            Sql.Add(' where testNameid ='+IntToStr(TestCodeId));
            open;
       end;
       if Qry_Check.FieldByName('MEMBERCOPAYMENTITEMID').AsInteger > 0 then
       begin
               pf_PercentageAmt:= Qry_Check.FieldByName('PAYABLEPERCENTAGE').asFloat;
               IsCoPaymentItems := Qry_Check.FieldByName('IsActive').AsString;
       end
       else
       begin
             IsCoPaymentItems :=  'N';
             pf_PercentageAmt := 0;
       end;
       Qry_Check.Free;
end;

procedure Tfrom_BillingRefund.SaveCoPayReceipt;
Var ps_Copaybillno :string;
begin
     if (DBLCB_Scheme.KeyValue = '22') and (pf_CopayAmts > 0) then
     begin
          if Label_CoPaymentAmt.Caption <>'0.00' then
          begin
               ps_Copaybillno:=Gs_BillNo;
               //if RadioButton_OPBilling.Checked=true then
                   (*saveCreditPayment(PATIENTID,INPATIENTID: Integer; BILLAMOUNT,RECEIVEDAMOUNT, RECEIVEDBY: Double;
          CRBILLNO,RECEIPTDATE, RECEIPTTIME, MACID,Billtype,paytype,Remarks,TransType,IsCopayReceipt: String);*)

                   saveCreditPayment(gi_PatientID,gi_InPatientID,pf_grandtotal,pf_CopayAmts,gi_UserId,Gs_BillNo,
                    ps_TodaysDate,ps_TodaysTime,gs_MacId,'OP','CASH','COLN','N','N');
               //else if RadioButton_IPBilling.Checked=true then
                 //   saveCreditPayment(gi_PatientID,gi_InPatientID,StrToFloat(Le_GrandTotal.Text),pf_CopayAmts,gi_UserId,Gs_BillNo,ps_TodaysDate,ps_TodaysTime,gs_MacId,'IP','CASH')
               //else if RadioButton_ERBilling.checked=true then
                   // saveCreditPayment(gi_PatientID,gi_InPatientID,StrToFloat(Le_GrandTotal.Text),pf_CopayAmts,gi_UserId,Gs_BillNo,ps_TodaysDate,ps_TodaysTime,gs_MacId,'ER','CASH');
          end;
     end;


(*          if CheckBoxOPRef.Checked=true then
          begin
               IF pf_CopayAmts > 0 Then
               Begin
                    pb_copayrefund:=true;
                    saveCreditPayment(pi_patientid,pi_InPatientId,StrToFloat(Edit_GrandTotal.Text),pf_CopayAmts,gi_UserId,ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,gs_MacId,'OP','REFUND');
               End;
          end
          else if CheckBoxIPRefund.Checked=true then
          begin
               IF pf_CopayAmts > 0 Then
               Begin
                    pb_copayrefund:=true;
                    saveCreditPayment(pi_patientid,pi_InPatientId,StrToFloat(Edit_GrandTotal.Text),pf_CopayAmts,gi_UserId,ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,gs_MacId,'IP','REFUND');
               End;
               end
               else if CheckBoxErRefund.checked=true then
               begin
                    IF pf_CopayAmts > 0 Then
                    Begin
                         pb_copayrefund:=true;
                         saveCreditPayment(pi_patientid,pi_InPatientId,StrToFloat(Edit_GrandTotal.Text),pf_CopayAmts,gi_UserId,ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,gs_MacId,'ER','REFUND');
                    End;
               end;
          end;  *)
end;


Procedure Tfrom_BillingRefund.ResetAllHistoryForNextNewBill;
Begin
     gs_BillNo:='';
     ps_SampleNo:='';
     Gs_TempBillno:='';
     ps_FinalBillNo:='';
     ps_DepositBillNo:='';
     ps_LoadedTestID:='';
     gi_InPatientID:=0;
     gi_PatientID:=0;
     CB_Scheme.Checked:=False;
     DBLCB_Scheme.KeyValue:=-1;
     gi_SchemeId:=0;
     gi_CommunityId:=0;
     pi_CommunityId:=0;
     pi_SchemeId:=0;
     pi_InPatientID:=0;
     Edit_Disper.Text:='0';
     Edit_Disper.Color:=clWhite;
     Edit_Disper.ReadOnly:=False;

     Lbl_GrandTotal.Caption := '00.00';
     lbl_DepositBalance.Caption := '00.00';
     lbl_NetBalance.Caption := '00.00';
     Lbl_ReturnAmt.Caption := '00.00';
     lbl_TenderAmt.Caption := '00.00';
     Lbl_TotalItems.Caption := '00.00';
     Lbl_BillNo.Caption := '';
     Label_IPNO.Caption:='0';

     QueryScheme.Close;
     QueryScheme.Open;

     Edit_BloodBagQty.Text:='0';
     Edit_BloodBagCharge.Text:='0';
     Edit_Discount.Text:='0';
     Edit_SvrTax.Text:='0';

     Le_Payment.Text:='0';

     gi_PatientID:=0;
     gi_Inpatientid:=0;
     gs_patientname:='';
     gs_address:='';
     Gs_CurrentAge:='';
     Gs_Gender:='';
     gs_phoneno:='';
     gs_Mobileno:='';
     Cb_Qty.Checked:=True;
     Cb_Qty.Enabled:=False;
     Cb_Qty.Visible:=False;
     Cb_Label.Checked:=True;
     GB_PaymentInfo.Visible:=True;
     GB_PaymentInfo.BringToFront;
     GB_OldBill.Visible:=False;
     GB_OldTest.Visible:=False;

     CB_BILLTYPE.KeyValue:='GEN';
     Label_MeicarePatient.Visible:=False;
     Le_MemberNo.Text:='';
     gs_MemberNo:='';
     pb_IsAdvanceExist:=False;

     IF CB_ViewOldBill.Checked Then CB_ViewOldBill.Checked:=False;
     IF CB_ViewOldTest.Checked Then CB_ViewOldTest.Checked:=False;

     if gi_BillCase=0 then
     Begin
          if Not FileExists(ps_Temppath+'\TempBilling.db') then
          CreateTableTempBilling;

          with Table_TempBilling do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'TempBilling.db';
               EmptyTable;
               Open;
          end;
          Query_TempBilling.Close;
          Query_TempBilling.DatabaseName:=ps_Temppath;
          Query_TempBilling.Open;
          DBGrid1.DataSource := DS_Tempbilling;
          Le_Payment.EditLabel.Caption:='(F1) Advance Amt :';
     End
     Else if gi_BillCase=3 then
     Begin
          if Not FileExists(ps_Temppath+'\FinalBill.db') then
          CreateTableFinalBill;

          with Table_FinalBill do
          begin
               Close;
               DatabaseName := ps_Temppath;
               TableName := 'FinalBill.db';
               EmptyTable;
               Open;
          end;
          Query_FinalBill.Close;
          Query_FinalBill.DatabaseName:=ps_Temppath;
          Query_FinalBill.Open;
          DBGrid1.DataSource := DS_FinalBill;
          Le_Payment.EditLabel.Caption:='(F1) Payment :';
     End;
End;

procedure Tfrom_BillingRefund.EnabledDisabledSearchField(Status : String);
Begin
     if Status='ENABLED' then
     Begin
          CB_DepCode.Enabled:=True;
          Edit_Doccode.Enabled:=True;
          Edit_TestName.Enabled:=True;
          Edit_Qty.Enabled:=True;
          Edit_UnitPrice.Enabled:=True;
          Edit_SvrTaxEntry.Enabled:=True;
          Edit_Disper.Enabled:=True;
          Edit_DisAmount.Enabled:=True;
          SPB_AddItem.Enabled:=True;
     End
     Else
     Begin
          CB_DepCode.Enabled:=False;
          Edit_Doccode.Enabled:=False;
          Edit_TestName.Enabled:=False;
          Edit_Qty.Enabled:=False;
          Edit_UnitPrice.Enabled:=False;
          Edit_SvrTaxEntry.Enabled:=False;
          Edit_Disper.Enabled:=True;
          Edit_DisAmount.Enabled:=True;
          SPB_AddItem.Enabled:=True;
     End;
End;


procedure Tfrom_BillingRefund.FormCreate(Sender: TObject);
Var
     Key: Char;
     i: Integer;
begin
     {Ps_Temppath := ExtractFilePath(Application.ExeName);
     if Not DirectoryExists(ps_Temppath + 'refund') Then
          MkDir(ps_Temppath + 'refund');
     ps_Temppath := ps_Temppath + 'refund';
     Query_RateType.Close;
     Query_RateType.DatabaseName:=gs_DatabaseName;
     Query_RateType.Open;

     CB_BILLTYPE.KeyValue:=Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
     ps_PatientTypeCode:=Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;

     Query_TestName.Close;
     Query_TestName.DatabaseName:=gs_DatabaseName;
     Query_TestName.SQL[3]:='AND PATIENTTYPECODE='+QuotedStr(CB_BILLTYPE.KeyValue);

     if gi_HospitalId=562 then  // 562 - Manipal
     Query_TestName.SQL[5]:='Order by TestNameCode'
     Else
     Query_TestName.SQL[5]:='Order by TestName';

     Query_TestName.Open;



     // gi_billcase
     // 0--> Service Bill Entry
     // 1--> Service Bill Load
     // 2--> Service Bill to  Final Bill
     // 3--> Direct Final Bill Entry
     // 4--> Direct Final Bill Load
     // 5-->Deposit bill
     // 6-->Refund Bill Entry
     // 7-->Redund Bill Load
     Pi_CheckSum := 0;
     (*if not CheckAccess('DISCOUNT') then
     begin
          Le_Discount.Enabled := False;
          Le_Disper.Enabled := False;
     end;*)

     count := 0;
     Gb_IsPreview := true;
     Le_HosNo.Text := IntToStr(gi_PatientID);
     //gb_HideDetailInServiceBilling := False;
     // Key:=#13;
     // Le_HosNoKeyPress(Sender,Key);
     BB_Save.Visible := False;
     if RB_OPBILL.Checked=true then
     gi_BillCase:=6;
     case gi_BillCase of
          0:
               begin
                    (*if gs_IsCounterUser = 'Y' then
                         gb_HideDetailInServiceBilling := False
                    Else
                         gb_HideDetailInServiceBilling := False;*)

                    //gi_PatientID := gi_NewPatientID;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    pi_InpatientId:=gi_InPatientID;
                    CreateTableTempBilling;
                    //CreateTableTempFraction;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    pi_TotalItems := 0;

                    GetReferralDocDepartment;
                    GetIPBasicInfo;


                    pf_Total := 0;
                    pf_Dis := 0;
                    pf_disper := 0;
                    pf_subtotal := 0;
                    pf_SvrTax := 0;
                    pf_grandtotal := 0;
                    DBGrid1.DataSource := DS_Tempbilling;
                    if gi_PatientID > 0 then
                         LoadImage;
                    Label8.Visible := True;
                    CB_PayType.Visible := True;
                    CB_PayType.ItemIndex:=1;
                    CB_PayType.Enabled:=False;
                    // Edit4.Visible := false;
                    Le_Payment.Visible := True;
                    Le_Payment.EditLabel.Caption:='(F1) Advance Amt :';
                    Le_Remarks.Visible := False;
                    //CB_Preview.Visible := False;
                    Label6.Visible := False;
                    Se_NoofPrint.Visible := False;
                    BB_Reprint.Visible := False;

                    //Label13.Visible := False;
                    //Label17.Visible := False;
                    //Lbl_ReturnAmt.Visible := False;
                    //lbl_TenderAmt.Visible := False;

                    // Label11.Visible := false;
                    // Label3.Visible := false;
                    // lbl_deposit.Visible := false;
                    // lbl_balance.Visible := false;
                    EnabledDisabledSearchField('ENABLED');
                    //Panel_Search.SendToBack;
               end;
          1:
               begin
                    (*if gs_IsCounterUser = 'Y' then
                         gb_HideDetailInServiceBilling := False
                    Else
                         gb_HideDetailInServiceBilling := False;*)
                    CreateTableTempBilling;
                   // CreateTableTempFraction;
                    pi_TotalItems := 0;

                    GetReferralDocDepartment;

                    pf_Total := 0;
                    pf_Dis := 0;
                    pf_disper := 0;
                    pf_subtotal := 0;
                    pf_SvrTax := 0;
                    pf_grandtotal := 0;
                    DBGrid1.DataSource := DS_Tempbilling;

                    With Query_Process Do
                    Begin
                         Close;
                         DatabaseName:=gs_DatabaseName;
                         sql.Clear;
                         sql.add(' Select NVL(Sum(DEPO_DrAmount-DEPO_CrAmount),0) as Total From HS_DEPO_Deposit where DEPO_ReferenceNo='+gs_TempBillNo);
                         Open;
                    End;

                    if Query_Process.FieldByName('Total').AsFloat <=0 then
                    pb_IsAdvanceExist:=False
                    Else
                    pb_IsAdvanceExist:=True;


                    LoadBill;
                    LoadImage;
                    Label8.Visible := False;
                    CB_PayType.Visible := False;
                    // Edit4.Visible := false;
                    Le_Payment.Visible := False;
                    Le_Remarks.Visible := True;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;

                    Label13.Visible := False;
                    Label17.Visible := False;
                    Lbl_ReturnAmt.Visible := False;
                    lbl_TenderAmt.Visible := False;

                    // Label11.Visible := false;
                    // Label12.Visible := false;
                    // lbl_deposit.Visible := false;
                    // lbl_balance.Visible := false;
                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;
                    //DBGrid1.Top := DBGrid1.Top - 45;
                    //DBGrid1.Height := DBGrid1.Height + 45;
                    //SB_Edit.Visible := False;

                    BB_Reprint.Visible := False;
                    DBGrid1.BringToFront;
                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
          2:
               begin
                    // Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Le_HosNoKeyPress(Sender, Key);
                    Le_MemberNo.Text := Gs_MemberNo;

                    GetReferralDocDepartment;

                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    CreateTableTempFraction;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;

                    CB_PayType.ItemIndex := 0;

                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;
                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    BB_Reprint.Visible := False;
                    Le_Payment.Visible := true;
                    Le_Payment.EditLabel.Caption:='(F1) Payment:';
                    Le_Remarks.Visible := true;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Label13.Visible := true;
                    Label17.Visible := true;
                    Lbl_ReturnAmt.Visible := true;
                    lbl_TenderAmt.Visible := true;

                    DBGrid1.BringToFront;
                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
          3: // Direct Final Bill Entry
               begin
                    //gi_PatientID := gi_NewPatientID;
                    pi_InpatientId:=0;
                    Le_HosNo.Text := IntToStr(gi_PatientID);

                    CreateTableFinalBill;
                    //CreateTableTempFraction;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;

                    pi_TotalItems := 0;


                    GetReferralDocDepartment;


                    pf_Total := 0;
                    pf_Dis := 0;
                    pf_disper := 0;
                    pf_subtotal := 0;
                    pf_SvrTax := 0;
                    pf_grandtotal := 0;
                    DBGrid1.DataSource := DS_FinalBill;
                    if gi_PatientID > 0 then
                         LoadImage;
                    Label8.Visible := true;
                    CB_PayType.Visible := true;
                    CB_PayType.ItemIndex := 0;
                    // Edit4.Visible := True;
                    Le_Payment.Visible := true;
                    Le_Payment.EditLabel.Caption:='(F1) Payment:';
                    Le_Remarks.Visible := true;
                    //CB_Preview.Visible := False;
                    Label6.Visible := False;
                    Se_NoofPrint.Visible := False;
                    BB_Reprint.Visible := False;
                    // Label11.Visible := false;
                    // Label12.Visible := false;
                    // lbl_deposit.Visible := false;
                    // lbl_balance.Visible := false;

                    Label13.Visible := true;
                    Label17.Visible := true;
                    Lbl_ReturnAmt.Visible := true;
                    lbl_TenderAmt.Visible := true;

                    Le_Discount.Visible := true;
                    Le_Disper.Visible := true;
                    //Panel_Search.SendToBack;
                    EnabledDisabledSearchField('ENABLED');
               end;
          4: // Direct Final Bill Load
               begin
                    // Form_BillingParent.BB_FinalBilling.Enabled := false;
                    // Form_BillingParent.BB_RefundBill.Enabled := false;
                    pi_InpatientId:=0;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;

                    GetReferralDocDepartment;

                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    CreateTableTempFraction;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := False;
                    BB_Reprint.Visible := true;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    CB_PayType.ItemIndex := 0;

                    Label13.Visible := true;
                    Label17.Visible := true;
                    Lbl_ReturnAmt.Visible := true;
                    lbl_TenderAmt.Visible := true;

                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Shape2.Visible := true;
                    Label16.Visible := true;
                    //SB_Edit.Visible := False;
                    DBGrid1.BringToFront;

                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
          5:
               begin
                    // Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;

                    GetReferralDocDepartment;

                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableTempBilling;
                    //CreateTableTempFraction;
                    DBGrid1.DataSource := DS_Tempbilling;
                    LoadBill;
                    LoadImage;

                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    BB_Save.Visible := False;
                    BB_Reprint.Visible := true;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    CB_PayType.ItemIndex := 0;
                    DBGrid1.BringToFront;

                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
          6:
               begin
                    // Form_BillingParent.BB_FinalBilling.Enabled := false;
                    // Form_BillingParent.BB_RefundBill.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;

                    GetReferralDocDepartment;


                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                //    CreateTableTempFraction;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := true;
                    BB_Reprint.Visible := False;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    CB_PayType.ItemIndex := 0;

                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;

                    Shape2.Visible := true;
                    Label16.Visible := true;
                    Le_Remarks.Visible:=True;

                    //DBGrid1.Top := DBGrid1.Top - 45;
                    //DBGrid1.Height := DBGrid1.Height + 45;
                    DBGrid1.BringToFront;

                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
          7:
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := False;
                    Form_BillingParent.BB_RefundBill.Enabled := False;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;

                    GetReferralDocDepartment;

                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                   // CreateTableTempFraction;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := False;
                    BB_Reprint.Visible := true;
                    CB_BillType.KeyValue := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    ps_PatientTypeCode := Query_RateType.FieldByName('PATY_PATIENTTYPECODE').AsString;
                    CB_PayType.ItemIndex := 0;

                    BB_TestSelection.Visible := False;
                    cb_extended.Visible := False;
                    CB_Send2Web.Visible := False;
                    CB_Send2Sms.Visible := False;
                    CB_Send2Email.Visible := False;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;


                    DBGrid1.BringToFront;

                    //Panel_Search.BringToFront;
                    EnabledDisabledSearchField('DISABLED');
               end;
     end;
     Le_HosNo.EditLabel.Caption := Gs_PatientIdCaption;


     Table_Fraction.Close;
     Table_Fraction.DatabaseName:=ps_Temppath;
     Table_Fraction.EmptyTable;
     Table_Fraction.Open;



     // if MenuAccess('CAMERA') then
     // ToogleCustomerView;
     Shape2.Brush.Color := clOlive;

     if gb_HideDetailInServiceBilling then
     begin
          for i := 5 to 9 do
          begin
               DBGrid1.Columns[i].Visible := False;
          end;
          Edit_UnitPrice.Visible := False;
          Edit_SvrTaxEntry.Visible := False;
          Edit_Disper.Visible := False;
          Edit_DisAmount.Visible := False;
          Le_SubTotal.Visible := False;
          Le_Discount.Visible := False;
          Le_Disper.Visible := False;
          Label7.Visible := False;
          Le_NetTotal.Visible := False;
          Le_SvrTax.Visible := False;
          Le_GrandTotal.Visible := False;
          le_TotalDeposit.Visible := False;
          Le_NetBalance.Visible := False;
          CB_PayType.Visible := False;
          Le_Payment.Visible := False;
          Le_Remarks.Visible := False;
          CB_DirectDiscountSet.Visible := False;
          DBGrid_Search.Columns[2].Visible := False;
     end;}
end;

procedure Tfrom_BillingRefund.FormShow(Sender: TObject);
begin
     Ps_Temppath := ExtractFilePath(Application.ExeName);
     if Not DirectoryExists(ps_Temppath + 'refund') Then
          MkDir(ps_Temppath + 'refund');
     ps_Temppath := ps_Temppath + 'refund';
     Le_HosNo.Text:='0';
     RB_OPBILLClick(Sender);
end;

end.
