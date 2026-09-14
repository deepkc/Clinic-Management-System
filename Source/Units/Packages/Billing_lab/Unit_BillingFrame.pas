unit Unit_BillingFrame;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate, Unit_Master,
     Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Spin, DBCtrls, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,
     DB;

type
     TFrame_Billing = class(TFrame)
          Panel2: TPanel;
          Panel1: TPanel;
          DBGrid1: TDBGrid;
          Label4: TLabel;
          CB_Preview: TCheckBox;
          Label6: TLabel;
          Se_NoofPrint: TSpinEdit;
          BB_Save: TBitBtn;
          Label13: TLabel;
          lbl_TenderAmt: TLabel;
          Label15: TLabel;
          Lbl_TotalAmt: TLabel;
          Label17: TLabel;
          Lbl_ReturnAmt: TLabel;
          Le_Total: TLabeledEdit;
          Le_Discount: TLabeledEdit;
          Le_Disper: TEdit;
          Label7: TLabel;
          Le_SubTotal: TLabeledEdit;
          Le_SvrTax: TLabeledEdit;
          Le_GrandTotal: TLabeledEdit;
          Label8: TLabel;
          CB_PayType: TComboBox;
          Le_Payment: TLabeledEdit;
          Le_Remarks: TLabeledEdit;
          Shape1: TShape;
          Image_Main: TImage;
          CB_DirectDiscountSet: TCheckBox;
          Label11: TLabel;
          lbl_deposit: TLabel;
          Label12: TLabel;
          lbl_balance: TLabel;
          CheckBox9: TCheckBox;
          BitBtn_BringPending: TSpeedButton;
          BitBtnPending: TSpeedButton;
          Label19: TLabel;
          Lbl_TotalItems: TLabel;
          Label21: TLabel;
          Lbl_BillNo: TLabel;
          SpeedButton2: TSpeedButton;
          GroupBox4: TGroupBox;
          SP_PatientSearch: TSpeedButton;
          Label1: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Le_HosNo: TLabeledEdit;
          CB_Scheme: TCheckBox;
          Le_MemberNo: TLabeledEdit;
          Label2: TLabel;
          Lbl_GrandTotal: TLabel;
          DS_FinalBill: TDataSource;
          DS_RefDoc: TDataSource;
          QueryRefDoc: TOraQuery;
          DS_Scheme: TDataSource;
          QueryScheme: TOraQuery;
          DS_Community: TDataSource;
          QueryCommunity: TOraQuery;
          DBLCB_RefDocCode: TDBLookupComboBox;
          DBLCB_Community: TDBLookupComboBox;
          DBLCB_Scheme: TDBLookupComboBox;
          CB_BillType: TComboBox;
          DBGrid_Search: TDBGrid;
          DS_Tempbilling: TDataSource;
          DS_Testname: TDataSource;
          Query_TestName: TOraQuery;
          BB_Reprint: TSpeedButton;
          Panel_Search: TPanel;
          cb_extended: TCheckBox;
          CheckBox3: TCheckBox;
          CB_DepCode: TComboBox;
          Edit_Doccode: TEdit;
          Edit_TestName: TEdit;
          Edit6: TEdit;
          Edit_Qty: TEdit;
          Edit7: TEdit;
          Edit_Disper: TEdit;
          Edit2: TEdit;
          SpeedButton1: TSpeedButton;
          BB_Close: TBitBtn;
          Timer1: TTimer;
          le_TotalDeposit: TLabeledEdit;
          BB_TestSelection: TBitBtn;
          CB_Send2Web: TCheckBox;
          CB_Send2Sms: TCheckBox;
          CB_Send2Email: TCheckBox;
          bb_CustomerView: TSpeedButton;
          Shape2: TShape;
          Label16: TLabel;
          Cb_Qty: TCheckBox;
          lbl_BenefitPackage: TLabel;
          Cb_DeductFromDeposit: TCheckBox;
          Edit_MemberDeposit: TEdit;
          Le_NetTotal: TLabeledEdit;
    Table_TempBilling: TTable;
    Table_FinalBill: TTable;
    Query_TempBilling: TQuery;
    Query_FinalBill: TQuery;
          procedure DBLCB_CommunityClick(Sender: TObject);
          procedure CB_SchemeClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure Edit_TestNameChange(Sender: TObject);
          procedure Edit_TestNameExit(Sender: TObject);
          procedure Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_QtyKeyPress(Sender: TObject; var Key: Char);
          procedure SpeedButton1Click(Sender: TObject);
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
          procedure SpeedButton2Click(Sender: TObject);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure CB_PayTypeChange(Sender: TObject);
          procedure CB_PayTypeKeyPress(Sender: TObject; var Key: Char);
          procedure Le_HosNoKeyPress(Sender: TObject; var Key: Char);
          procedure Le_PaymentKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Cb_DeductFromDepositClick(Sender: TObject);
          procedure Le_PaymentChange(Sender: TObject);
          procedure Le_DiscountKeyPress(Sender: TObject; var Key: Char);
          procedure Le_DisperKeyPress(Sender: TObject; var Key: Char);
          procedure Le_HosNoExit(Sender: TObject);
     private
          pf_TestPrice, pf_Dis, pf_SvrTax, pf_Qty, pf_TotalPrice, pf_disper, pf_discount, pf_DiscountTotal, pf_Total, pf_subtotal, pf_grandtotal,
            pf_SvrTaxTotal, pf_Payment, pf_NetTotal, pf_Return, pf_Deposit, pf_balance, pf_MemberDeposit, Pf_TotalDeposit, Pf_FinalBillDiscount,
            Pf_FinalBillDisPer, Pf_DepositDeducted: Double;
          pi_TotItems, pi_TotalItems, count: Integer;

          Pi_CommunityID, Pi_SchemeID: Integer;

          Pi_CheckSum: Integer;

          Pb_NoDiscount: Boolean;

          Pb_ServiceBillMasterExist: Boolean;
          pb_isdelete: Boolean;
          pb_isreprint: Boolean;
          pb_IsFinalSelectedTestName: Boolean;
          ps_LoadedTestID: String;
          { Private declarations }
          Procedure LoadBill;
          Procedure LoadImage;
          Procedure CreateTableFinalBill;
          procedure CreateTableTempBilling;
          procedure SaveServiceBill_Detail;
          Function SaveServiceBill: Boolean;
          Function SaveFinalBill: Boolean;
          procedure SaveFinalBill_Detail;
          procedure CheckServiceBillMaster;
          Procedure PrintBill;
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
     public
          { Public declarations }
          constructor Create(AOwner: TComponent); Override;
          destructor Destroy; Override;
          Procedure ClearCustomerPreview;
     end;

implementation

uses Unit_BillingParent, Unit_QrBill, Unit_TestList, Unit_CustomerMonitor, Unit_QrDepositSlip;
{$R *.dfm}
{ TFrame_Billing }

procedure TFrame_Billing.BB_CloseClick(Sender: TObject);
begin
     Form_BillingParent.BB_CloseClick(Sender);
end;

procedure TFrame_Billing.bb_CustomerViewClick(Sender: TObject);
begin
     ToogleCustomerView;
end;

procedure TFrame_Billing.BB_ReprintClick(Sender: TObject);
begin
     pb_isreprint := true;
     if gi_BillCase = 6 then
     begin
          PrintBill;
          gi_BillCase := 2;
          Gb_RefundBillExists := true;
          PrintBill;
          gi_BillCase := 6;
     end
     else if (gi_BillCase in [2, 4]) and (RefundBillExists(Gs_BillNo)) then
     begin
          Gb_RefundBillExists := true;
          // gi_BillCase := 6;
          // PrintBill;
          gi_BillCase := 2;
          PrintBill;
     end
     else
          PrintBill;
end;

procedure TFrame_Billing.BB_SaveClick(Sender: TObject);
var
     lf_a, lf_b: Double;
     ls_FinalBillNo, ls_RefBillNo: String;
     Key: Char;
     MyTable: TTable;
     MytableName: String;
     Ps_RefDocCode: String;
begin
     // gi_billcase
     // 0--> Service Bill Entry/Save
     // 1--> Service Bill Load
     // 2--> Service Bill to  Final Bill
     // 3--> Final Bill Entry
     // 4--> Final Bill Load
     // 5-->Deposit bill
     // 6-->Refund bill entry
     // if count <> 0 then
     // Self.Free;
     // count := 1;
     if Pi_CheckSum <> 0 then
     begin
          ShowMessage('Cannot Save Multiple times');
          exit;
     end;

     Inc(Pi_CheckSum);
     if Gs_PatientName = '' then
     begin
          MsgBox(1028, 0, '', '', '');
          exit;
     end;

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

     IF Trim(Le_Discount.Text) = '' Then
          Le_Discount.Text := '0.00';
     IF Trim(Le_Discount.Text) = '' Then
          Le_Discount.Text := '0.00';

     if gi_BillCase = 3 then
     begin
          Pf_FinalBillDiscount := StrToFloat(StringReplace(Le_Discount.Text, ',', '', [rfReplaceAll]));
          // Pf_finalbilldiscount variable added cuz pf_discount:=0 on load
          Pf_FinalBillDisPer := StrToFloat(Le_Disper.Text);
     end;

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
                                   CancelServiceTest(MyTable.FieldByName('ServiceBillDetailId').AsInteger);
                              Next;
                         end;
                    end;
                    ShowDoneMessage;
                    DBGrid1.OnKeyDown := nil;
                    Form_BillingParent.OnKeyDown := nil;
                    DM_Hospital.DB.Commit;
               Except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not Saved');
                    exit;
               End;
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
                         Gs_BillNo := GetNextBillNo('RF', 'RefundDetail');
                         while not eof do
                         begin
                              if (FieldByName('Status').AsString = 'R') and (FieldByName('RefundbillNo').AsString = '') then
                              begin
                                   SaveRefundDetail(Table_FinalBill.FieldByName('BillDetailID').AsInteger);
                                   // CancelFinalTest(Table_FinalBill.FieldByName('BillDetailID').AsInteger);
                              end;
                              Next;
                         end;
                    end;
                    //DecreaseDocReferralCount(Ps_RefDocCode);
                    ls_RefBillNo := Gs_BillNo;
                    Gs_BillNo := ls_FinalBillNo;
                    LoadBill;
                    ShowDoneMessage;
                    DM_Hospital.DB.Commit;
               except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Bill not saved');
                    exit;
               end;
               // if MsgBox(1009, 1, '', '', '') then
               begin
                    Gs_BillNo := ls_RefBillNo;
                    PrintBill;
                    gi_BillCase := 2;
                    Gb_RefundBillExists := true; // Print Invoice Bill with Refund Information
                    Gs_BillNo := ls_FinalBillNo;
                    PrintBill;
                    gi_BillCase := 6;
                    Gs_BillNo := ls_RefBillNo;
               end;
          end;
          Self.Parent.SendToBack;
          FreeAndNil(Self);
          FrameCleared := true;
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

          if not SaveServiceBill then
          begin
               ShowMessage('Bill not Saved');
               exit;
          end;

          IncreaseVisitCount(gi_PatientID);
          IncreaseDocReferralCount(Ps_RefDocCode);
          SimulateKeyPress(Self.Parent.Handle, VK_F5);
          // Self.Parent.SendToBack;
          if GetMonitorCount > 1 then
               Frame_Billing.ClearCustomerPreview;
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
          if CB_PayType.ItemIndex = 2 then
          begin
               if (CB_Scheme.Checked = false) or (DBLCB_Community.KeyValue < 0) or (DBLCB_Scheme.KeyValue < 0) then
               begin
                    count := 0;
                    MsgBox(1025, 0, '', '', '');
                    exit;
               end;
          end;
          if (Le_Payment.Text = '') and (CB_PayType.ItemIndex = 0) and (Edit_MemberDeposit.Text = '') then
          begin
               count := 0;
               MsgBox(1006, 0, '', '', '');
               Le_Payment.SetFocus;
               exit;
          end;

          if (pf_Payment < pf_grandtotal) and (CB_PayType.ItemIndex = 0) then
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
          else
          begin
               GB_isDepositBill := false;
               if gi_BillCase = 3 then
               begin
                    SaveServiceBill_Detail;
                    gi_BillCase := 2;
                    LoadBill;
                    // pf_Dis := Pf_FinalBillDiscount;
                    // pf_disper := Pf_FinalBillDisPer;
               end;
               if not SaveFinalBill then
               begin
                    ShowMessage('Bill not Saved');
                    exit;
               end;
               // ShowMessage('1');
          end;

          // if MsgBox(1009, 1, '', '', '') then
          begin
               PrintBill;
          end;

          IncreaseVisitCount(gi_PatientID);
          IncreaseDocReferralCount(Ps_RefDocCode);
          SimulateKeyPress(Self.Parent.Handle, VK_F5);

          Self.Parent.SendToBack;
          // Form_BillingParent.Panel_Parent.SendToBack;
          if GetMonitorCount > 1 then
               Frame_Billing.ClearCustomerPreview;
          Self.Free;
          FrameCleared := true;
          if gi_BillCase in [2, 3] then
               exit;
          Frame_BillList.BB_RefreshClick(Sender);
          ClearVariable;
          Frame_BillList.Lbl_BillNo.Caption := Gs_BillNo;
          with Form_BillingParent do
          begin
               try
                    lbl_Hosno.Caption := IntToStr(gi_PatientID);
                    lbl_patientname.Caption := Gs_PatientName;
                    lbl_InpatientNo.Caption := IntToStr(gi_InPatientID);
               except

               end;
          end;
     end;
     case gi_BillCase of // Clearing Form for new service entry because form is not free
          0, 3:
               begin
                    with Table_TempBilling do
                    begin
                         Close;
                         DatabaseName := gs_temppath;
                         TableName := 'TempBilling.db';
                         EmptyTable;
                         Open;
                    end;
                    with Table_FinalBill do
                    begin
                         Close;
                         DatabaseName := gs_temppath;
                         TableName := 'Finalbill.db';
                         EmptyTable;
                         Open;
                    end;
                    Query_TempBilling.Close;
                    Query_TempBilling.DatabaseName := gs_temppath;
                    Query_TempBilling.Open;

                    Query_FinalBill.Close;
                    Query_FinalBill.DatabaseName := gs_temppath;
                    Query_FinalBill.Open;

                    ClearAll(Panel1);
                    ps_LoadedTestID := '';
                    Lbl_GrandTotal.Caption := '00.00';
                    Lbl_TotalAmt.Caption := '00.00';
                    Lbl_ReturnAmt.Caption := '00.00';
                    lbl_TenderAmt.Caption := '00.00';
                    Lbl_TotalItems.Caption := '00.00';
                    Lbl_BillNo.Caption := '';
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
                    Le_HosNo.SetFocus;
               end;
     end;

end;

procedure TFrame_Billing.cb_extendedClick(Sender: TObject);
begin
     Edit_TestName.SetFocus;
end;

procedure TFrame_Billing.CB_PayTypeChange(Sender: TObject);
begin
     if CB_PayType.ItemIndex = 2 then
     begin
          CB_PayType.Color := clWebRed;
          Le_Payment.Enabled := false;
     end
     else
     begin
          CB_PayType.Color := clWindow;
          Le_Payment.Enabled := true;
     end;
end;

procedure TFrame_Billing.CB_PayTypeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Le_Payment.Enabled then
               Le_Payment.SetFocus
          else
               Le_Remarks.SetFocus;
     end;

end;

procedure TFrame_Billing.CB_SchemeClick(Sender: TObject);
begin
     if CB_Scheme.Checked = true then
     begin
          DBLCB_Community.Enabled := true;
          DBLCB_Scheme.Enabled := true;
          QueryCommunity.Close;
          QueryCommunity.Open;
     end
     else
     begin
          DBLCB_Community.Enabled := false;
          DBLCB_Scheme.Enabled := false;
     end;
end;

procedure TFrame_Billing.CheckServiceBillMaster;
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select Count(Billno)n from ServiceBillMaster Where Billno=' + #39 + Gs_BillNo + #39);
          Open;
          if FieldByName('n').AsInteger > 0 then
               Pb_ServiceBillMasterExist := true
          else
               Pb_ServiceBillMasterExist := false;
     end;
     Qry.Free;
end;

procedure TFrame_Billing.ClearCustomerPreview;
begin
     with Form_CustomerMonitor do
     begin
          DBGrid1.DataSource := nil;
          lbl_patientid.Caption := '';
          lbl_patientname.Caption := '';
          Lbl_GrandTotal.Caption := '00.00';
          Lbl_TotalAmt.Caption := '00.00';
          Lbl_ReturnAmt.Caption := '00.00';
          lbl_TenderAmt.Caption := '00.00';
          Lbl_TotalItems.Caption := '00.00';
          Image_Main.Picture.Assign(nil);
     end;
end;

constructor TFrame_Billing.Create(AOwner: TComponent);
Var
     Sender: TObject;
     Key: Char;
begin
     inherited;
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
     if not CheckAccess('DISCOUNT') then
     begin
          Le_Discount.Enabled := false;
          Le_Disper.Enabled := false;
     end;
     if not MenuAccess('CAMERA') then
     begin
          bb_CustomerView.Visible := false;
     end;
     count := 0;
     Le_HosNo.Text := IntToStr(gi_PatientID);
     // Key:=#13;
     // Le_HosNoKeyPress(Sender,Key);
     case gi_BillCase of
          0:
               begin
                    gi_PatientID := gi_NewPatientID;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    CreateTableTempBilling;
                    CB_BillType.ItemIndex := 0;
                    pi_TotalItems := 0;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    pf_Total := 0;
                    pf_Dis := 0;
                    pf_disper := 0;
                    pf_subtotal := 0;
                    pf_SvrTax := 0;
                    pf_grandtotal := 0;
                    DBGrid1.DataSource := DS_Tempbilling;
                    if gi_PatientID > 0 then
                         LoadImage;
                    Label8.Visible := false;
                    CB_PayType.Visible := false;
                    // Edit4.Visible := false;
                    Le_Payment.Visible := false;
                    Le_Remarks.Visible := false;
                    CB_Preview.Visible := false;
                    Label6.Visible := false;
                    Se_NoofPrint.Visible := false;
                    BB_Reprint.Visible := false;
                    Label11.Visible := false;
                    Label12.Visible := false;
                    lbl_deposit.Visible := false;
                    lbl_balance.Visible := false;
                    Panel_Search.SendToBack;
               end;
          1:
               begin
                    CreateTableTempBilling;
                    pi_TotalItems := 0;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    pf_Total := 0;
                    pf_Dis := 0;
                    pf_disper := 0;
                    pf_subtotal := 0;
                    pf_SvrTax := 0;
                    pf_grandtotal := 0;
                    DBGrid1.DataSource := DS_Tempbilling;
                    LoadBill;
                    LoadImage;
                    Label8.Visible := false;
                    CB_PayType.Visible := false;
                    // Edit4.Visible := false;
                    Le_Payment.Visible := false;
                    Le_Remarks.Visible := false;
                    CB_BillType.ItemIndex := 0;

                    Label11.Visible := false;
                    Label12.Visible := false;
                    lbl_deposit.Visible := false;
                    lbl_balance.Visible := false;
                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    BB_Reprint.Visible := true;
                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
          2:
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Le_HosNoKeyPress(Sender, Key);
                    Le_MemberNo.Text := Gs_MemberNo;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    CB_BillType.ItemIndex := 0;
                    CB_PayType.ItemIndex := 0;

                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;
                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    BB_Reprint.Visible := false;
                    Le_Payment.Visible := true;
                    Le_Remarks.Visible := true;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
          3: // Direct Final Bill Entry
               begin
                    gi_PatientID := gi_NewPatientID;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    CreateTableFinalBill;
                    CB_BillType.ItemIndex := 0;
                    pi_TotalItems := 0;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
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
                    Le_Remarks.Visible := true;
                    CB_Preview.Visible := false;
                    Label6.Visible := false;
                    Se_NoofPrint.Visible := false;
                    BB_Reprint.Visible := false;
                    Label11.Visible := false;
                    Label12.Visible := false;
                    lbl_deposit.Visible := false;
                    lbl_balance.Visible := false;

                    Le_Discount.Visible := true;
                    Le_Disper.Visible := true;
                    Panel_Search.SendToBack;
               end;
          4: // Direct Final Bill Load
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Form_BillingParent.BB_RefundBill.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := false;
                    BB_Reprint.Visible := true;
                    CB_BillType.ItemIndex := 0;
                    CB_PayType.ItemIndex := 0;

                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Shape2.Visible := true;
                    Label16.Visible := true;

                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
          5:
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableTempBilling;
                    DBGrid1.DataSource := DS_Tempbilling;
                    LoadBill;
                    LoadImage;

                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    BB_Save.Visible := false;
                    BB_Reprint.Visible := true;
                    CB_BillType.ItemIndex := 0;
                    CB_PayType.ItemIndex := 0;
                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
          6:
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Form_BillingParent.BB_RefundBill.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := true;
                    BB_Reprint.Visible := false;
                    CB_BillType.ItemIndex := 0;
                    CB_PayType.ItemIndex := 0;

                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;

                    Shape2.Visible := true;
                    Label16.Visible := true;

                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
          7:
               begin
                    Form_BillingParent.BB_FinalBilling.Enabled := false;
                    Form_BillingParent.BB_RefundBill.Enabled := false;
                    Le_HosNo.Text := IntToStr(gi_PatientID);
                    Le_MemberNo.Text := Gs_MemberNo;
                    QueryRefDoc.Close;
                    QueryRefDoc.Open;
                    QueryCommunity.Close;
                    QueryCommunity.Open;
                    QueryScheme.Close;
                    QueryScheme.Open;
                    CreateTableFinalBill;
                    DBGrid1.DataSource := DS_FinalBill;
                    LoadBill;
                    LoadImage;
                    BB_Save.Visible := false;
                    BB_Reprint.Visible := true;
                    CB_BillType.ItemIndex := 0;
                    CB_PayType.ItemIndex := 0;

                    BB_TestSelection.Visible := false;
                    cb_extended.Visible := false;
                    CB_Send2Web.Visible := false;
                    CB_Send2Sms.Visible := false;
                    CB_Send2Email.Visible := false;
                    DBGrid1.Top := DBGrid1.Top - 45;
                    DBGrid1.Height := DBGrid1.Height + 45;

                    Panel_Search.BringToFront;
                    DBGrid1.BringToFront;
               end;
     end;
     Le_HosNo.EditLabel.Caption := Gs_PatientIdCaption;
     if MenuAccess('CAMERA') then
          ToogleCustomerView;
     Shape2.Brush.Color := clOlive;
end;

procedure TFrame_Billing.CreateTableFinalBill;
Var
     Table: TTable;
begin
     Table := TTable.Create(nil);
     if FileExists(gs_temppath + '\FinalBill.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'FinalBill.db';
               DeleteTable;
          end;
     end;

     with Table do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'FinalBill.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('SNO', ftInteger);
          FieldDefs.Add('DepID', ftInteger);
          FieldDefs.Add('PatientID', ftInteger);
          FieldDefs.Add('ServiceBillDetailID', ftInteger);
          FieldDefs.Add('BillDetailID', ftInteger);
          FieldDefs.Add('InPatientID', ftInteger);
          FieldDefs.Add('PatientTestID', ftInteger);
          FieldDefs.Add('DocCode', ftString, 10);
          FieldDefs.Add('TestNameCode', ftString, 32);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('TestPackageId', ftInteger);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestPrice', ftFloat);
          FieldDefs.Add('TestPriceWithTax', ftFloat);
          FieldDefs.Add('SvrTax', ftFloat);
          FieldDefs.Add('Qty', ftFloat);
          FieldDefs.Add('TotalPrice', ftFloat);
          FieldDefs.Add('DisPer', ftFloat);
          FieldDefs.Add('Discount', ftFloat);
          FieldDefs.Add('NetTotal', ftFloat);
          FieldDefs.Add('CommunityID', ftInteger);
          FieldDefs.Add('SchemeID', ftInteger);
          FieldDefs.Add('RefDocCode', ftString, 10);
          FieldDefs.Add('Status', ftString, 1);
          FieldDefs.Add('RefundBillNo', ftString, 15);
          CreateTable;
     end;

     with Table_FinalBill do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'FinalBill.db';
     end;
     Table.Free;
end;

procedure TFrame_Billing.CreateTableTempBilling;
Var
     Table: TTable;
begin
     Table := TTable.Create(nil);
     if FileExists(gs_temppath + '\TempBilling.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'TempBilling.db';
               DeleteTable;
          end;
     end;
     with Table do
     begin
          Close;
          DatabaseName := gs_temppath;
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
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestPrice', ftFloat);
          FieldDefs.Add('TestPriceWithTax', ftFloat);
          FieldDefs.Add('TotalPrice', ftFloat);
          FieldDefs.Add('Disper', ftFloat);
          FieldDefs.Add('Discount', ftFloat);
          FieldDefs.Add('Qty', ftFloat);
          FieldDefs.Add('SvrTax', ftFloat);
          FieldDefs.Add('NetTotal', ftFloat);
          FieldDefs.Add('Status', ftString, 1);
          CreateTable;
          Open;
     end;

     if FileExists(gs_temppath + '\TempTest.db') then
     begin
          with Table do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'TempTest.db';
               DeleteTable;
          end;
     end;
     with Table Do
     begin
          Close;
          DatabaseName := gs_temppath;
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
          DatabaseName := gs_temppath;
          TableName := 'Tempbilling.db';
     end;
     Table.Free;
end;

procedure TFrame_Billing.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if gi_BillCase in [4, 6] then
     begin
          if (Trim(Query_FinalBill.FieldByName('RefundBillNO').AsString) <> '') or (Query_FinalBill.FieldByName('Status').AsString = 'R') then
          begin
               with DBGrid1.Canvas do
               begin
                    Brush.Color := clOlive;
                    Font.Color := clWhite;
               end;
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end;
end;

procedure TFrame_Billing.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
     Query, CheckQry: TQuery;
begin
     Try
          CheckQry := TQuery.Create(Nil);
          if gi_BillCase = 1 then
               CheckQry := Query_TempBilling
          Else if gi_BillCase in [3, 6] then
               CheckQry := Query_FinalBill;

          if (Key = VK_DELETE) and (gi_BillCase in [0, 3]) then
          begin
               if MsgBox(1002, 1, '', '', '') then
               begin
                    Query := TQuery.Create(nil);
                    with Query do
                    begin
                         Close;
                         DatabaseName := gs_temppath;
                         SQL.Clear;
                         if gi_BillCase = 0 then
                         begin
                              SQL.Add('Delete from  TempBilling');
                              SQL.Add('Where TestNameID=' + IntToStr(Query_TempBilling.FieldByName('TestNameID').AsInteger));
                         end
                         else if gi_BillCase = 3 then
                         begin
                              SQL.Add('Delete from  FinalBill');
                              SQL.Add('Where TestNameID=' + IntToStr(Query_FinalBill.FieldByName('TestNameID').AsInteger));
                         end;
                         ExecSQL;
                    end;
                    if gi_BillCase = 0 then
                         RemoveTestNameIDInVariable(Query_TempBilling.FieldByName('TestNameID').AsString)
                    else if gi_BillCase = 3 then
                         RemoveTestNameIDInVariable(Query_FinalBill.FieldByName('TestNameID').AsString);

                    // ReCalculateSumAmtAfterDeleteItem;
                    CalculateLabels;
               end;
               // Query_TempBilling.Close;
               // Query_TempBilling.//DatabaseName := gs_temppath;
               // Query_TempBilling.Open;
               //
               // Query_FinalBill.Close;
               // Query_FinalBill.//DatabaseName := gs_temppath;
               // Query_FinalBill.Open;
               CheckQry.Close;
               CheckQry.DatabaseName := gs_temppath;
               CheckQry.Open;
               Query.Free;
               CheckQry := nil;
               CheckQry.Free;
          end
          else if (Key = VK_DELETE) and (gi_BillCase in [1, 6]) and (CheckQry.FieldByName('Status').AsString <> 'R') then
          begin
               if gi_BillCase = 6 then
               begin
                    if Query_FinalBill.FieldByName('RefundBillNo').AsString <> '' then
                    begin
                         exit;
                    end;
               end;
               if not MsgBox(1002, 1, '', '', '') then
                    exit;
               pb_isdelete := true;

               // ReCalculateSumAmtAfterDeleteItem;
               Query := TQuery.Create(nil);
               with Query do
               begin
                    Close;
                    DatabaseName := gs_temppath;
                    SQL.Clear;
                    if gi_BillCase = 1 then
                    begin
                         SQL.Add('Update TempBilling Set Status=''C''');
                         SQL.Add('Where ServiceBillDetailID=' + IntToStr(Query_TempBilling.FieldByName('ServiceBillDetailID').AsInteger));
                    end
                    else if gi_BillCase = 6 then
                    begin
                         SQL.Add('Update FinalBill Set Status=''R''');
                         SQL.Add('Where BillDetailID=' + IntToStr(Query_FinalBill.FieldByName('BillDetailID').AsInteger));
                    end;
                    ExecSQL;
               end;
               // Query_TempBilling.Close;
               // Query_TempBilling.//DatabaseName := gs_temppath;
               // Query_TempBilling.Open;
               //
               // Query_FinalBill.Close;
               // Query_FinalBill.//DatabaseName := gs_temppath;
               // Query_FinalBill.Open;
               CalculateLabels;
               CheckQry.Close;
               CheckQry.DatabaseName := gs_temppath;
               CheckQry.Open;
               Query.Free;
               CheckQry := nil;
               CheckQry.Free;
          end;
     Except
     End;
end;

procedure TFrame_Billing.DBGrid_SearchDblClick(Sender: TObject);
begin
     pb_IsFinalSelectedTestName := true;
     Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
     SpeedButton1Click(Sender);
     DBGrid_Search.Visible := false;
     pb_IsFinalSelectedTestName := false;
     Edit_TestName.SetFocus;
end;

procedure TFrame_Billing.DBGrid_SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 13 then
     begin
          pb_IsFinalSelectedTestName := true;
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
          SpeedButton1Click(Sender);
          DBGrid_Search.Visible := false;
          pb_IsFinalSelectedTestName := false;
     end;
end;

procedure TFrame_Billing.DBLCB_CommunityClick(Sender: TObject);
begin
     with QueryScheme do
     begin
          Close;
          SQL[1] := 'Where CommunityID=' + IntToStr(DBLCB_Community.KeyValue);
          Open;
     end;
end;

destructor TFrame_Billing.Destroy;
begin
     try
          if Form_BillingParent.BB_FinalBilling.Enabled = false then
               Form_BillingParent.BB_FinalBilling.Enabled := true;
          if Form_BillingParent.BB_RefundBill.Enabled = false then
               Form_BillingParent.BB_RefundBill.Enabled := true;
     except
     end;
     BillingClosed := true;
     ServiceBillOpened := false;
     inherited;
end;

procedure TFrame_Billing.Edit_QtyEnter(Sender: TObject);
begin
     // Edit_Qty.Text := '1';
end;

procedure TFrame_Billing.Edit_QtyKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          SpeedButton1Click(Sender);
end;

procedure TFrame_Billing.Edit_TestNameChange(Sender: TObject);
begin
     if (Trim(Edit_TestName.Text) <> '') then
     begin
          with DBGrid_Search do
          begin
               left := 153;
               Top := 118;
               Height := 175;
               Width := 405;
               Visible := true;
          end;
          with Query_TestName do
          begin
               Close;
               if pb_IsFinalSelectedTestName = true then
                    SQL[1] := 'Where Trim(TestName)=' + #39 + Trim(Edit_TestName.Text) + #39
               Else
               Begin
                    if cb_extended.Checked = true then
                         SQL[1] := 'Where Trim(TestName) like' + #39 + '%' + Trim(Edit_TestName.Text) + '%' + #39
                    else
                         SQL[1] := 'Where Trim(TestName) Like ' + #39 + Trim(Edit_TestName.Text) + '%' + #39;
               End;
               if ps_LoadedTestID <> '' then
                    SQL[2] := 'And TestNameid||TestNameCode not in (' +#39+ ps_LoadedTestID +#39+ ')'
               else
                    SQL[2] := 'And 99=99';
               Open;
          end;
     end
     else
          DBGrid_Search.Visible := false;
end;

procedure TFrame_Billing.Edit_TestNameExit(Sender: TObject);
begin
     // DBGrid_Search.Visible := false;
end;

procedure TFrame_Billing.Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = vk_up then
          Query_TestName.Prior
     else if Key = vk_down then
          Query_TestName.Next
     else if (Key = 13) and (Edit_TestName.Text <> '') then
     begin
          pb_IsFinalSelectedTestName := true;
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;
          DBGrid_Search.Visible := false;
          pb_IsFinalSelectedTestName := false;
     end
     else if Key = VK_F12 then
     begin
          BB_SaveClick(Sender);
          Key := 0;
     end;
end;

procedure TFrame_Billing.Edit_TestNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Cb_Qty.Checked then
               Edit_Qty.Clear
          else
               SpeedButton1Click(Sender);
          Edit_Disper.Clear;
          UpdateCustomerPreview;
     end;
end;

procedure TFrame_Billing.Le_DiscountExit(Sender: TObject);
Var
     Discount, tot, DISPER, TestPriceWithDis, SvrTaxWithDis, Qty: Double;
     lf_Discount: Double;
begin
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
          lf_Discount := GetNoOfDecimalPartOfFloatNum(lf_Discount, 5);
          DISPER := GetNoOfDecimalPartOfFloatNum((lf_Discount / pf_subtotal) * 100, 5);
          lf_Discount := GetNoOfDecimalPartOfFloatNum((DISPER / 100) * pf_subtotal, 5);
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
               FieldByName('SvrTax').AsFloat := GetNoOfDecimalPartOfFloatNum(SvrTaxWithDis, 5);
               Post;
               Next;
          end;
     end;
     RefreshQuery(Query_FinalBill, gs_temppath);
     CalculateLabels;
     Le_Payment.Clear;

     { if (Le_Discount.Text <> '') and (Le_Total.Text <> '') then
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

procedure TFrame_Billing.Le_DiscountKeyPress(Sender: TObject; var Key: Char);
begin
     OnlyNumeric(Sender, Key);
end;

procedure TFrame_Billing.Le_DisperExit(Sender: TObject);
Var
     Discount, tot, DISPER: Double;
     TestPriceWithDis, SvrTaxWithDis, NetTotal, Qty: Double;
begin
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
                    FieldByName('SvrTax').AsFloat := GetNoOfDecimalPartOfFloatNum(SvrTaxWithDis, 5);
                    Post;
                    Next;
               end;
          end;
          RefreshQuery(Query_FinalBill, gs_temppath);
          CalculateLabels;
          Le_Payment.Clear;
          Le_Payment.SetFocus;
     end;
end;

procedure TFrame_Billing.Le_DisperKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #8 then
          exit;
     AvoidMultipleDecimal(Le_Disper, Key);
     Key := Key;
end;

procedure TFrame_Billing.Le_HosNoExit(Sender: TObject);
Var
     Key: Char;
begin
     Key := #13;
     Le_HosNoKeyPress(Sender, Key);
end;

procedure TFrame_Billing.Le_HosNoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if Le_HosNo.Text <> '' then
          begin
               gi_PatientID := StrToInt(Le_HosNo.Text);
               Gi_MemberID := GetMemberID(gi_PatientID);
               if Gi_MemberID > 0 then
               begin
                    lbl_BenefitPackage.Caption := GetBenefitPackageName(Gi_MemberID);
                    lbl_BenefitPackage.Visible := true;
                    pf_MemberDeposit := GetTotalMemberDeposit(gi_PatientID, lbl_BenefitPackage.Caption);
                    Cb_DeductFromDeposit.Checked := true;
                    Pi_CommunityID := GetMemberCommunityID(Gi_MemberID);
                    Pi_SchemeID := GetMemberSchemeID(Gi_MemberID);
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
                    Pb_NoDiscount := false;
                    Cb_DeductFromDeposit.Checked := false;
               end;

               Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
               LoadPatientData(gi_PatientID);
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
          end;
          Edit_Doccode.SetFocus;
     end;
end;

procedure TFrame_Billing.Le_PaymentChange(Sender: TObject);
begin
     CalculatePayment;
end;

procedure TFrame_Billing.Le_PaymentExit(Sender: TObject);
begin
     if Le_Payment.Text <> '' then
     begin
          if StrToFloat(Le_Payment.Text) = 0 then
          begin
               MsgBox(1011, 0, '', '', '');
               Le_Payment.SetFocus;
          end;
     end;
     // else
     // Le_Payment.SetFocus
end;

procedure TFrame_Billing.Le_PaymentKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if gi_compileValue = 2 then
     begin
          if Key = VK_F12 then
               BB_SaveClick(Sender);
     end;
end;

procedure TFrame_Billing.Le_PaymentKeyPress(Sender: TObject; var Key: Char);
begin
     if not(Key in [#8, #13, '0' .. '9', '-', DecimalSeparator]) then
          Key := #0
     else if ((Key = DecimalSeparator) or (Key = '-')) and (Pos(Key, (Sender as TLabeledEdit).Text) > 0) then
          Key := #0
     else if (Key = '-') and ((Sender as TLabeledEdit).SelStart <> 0) then
          Key := #0;
     if Key = #13 then
          BB_Save.SetFocus;
end;

procedure TFrame_Billing.LoadBill;
Var
     Qry: TOraQuery;
     ls_RefDoc: string;
     li_Communityid, li_SchemdID: Integer;
     TestPriceWithDis, SvrTaxWithDis, TotalPriceWithDis: Double;
     Sender: TObject;
begin
     Qry := TOraQuery.Create(nil);
     case gi_BillCase of
          1, 5:
               begin
                    with Table_TempBilling do
                    begin
                         Close;
                         DatabaseName := gs_temppath;
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
                         DatabaseName := gs_temppath;
                         TableName := 'FinalBill.db';
                         EmptyTable;
                         Open;
                    end;
               end;
     end;
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          if gi_BillCase in [1, 2] then
          begin
               SQL.Add('SELECT SBD.*');
               SQL.Add(',(SELECT TESTNAMEID FROM PATIENTTEST WHERE PATIENTTESTID=SBD.PATIENTTESTID)TESTNAMEID');
               // SQL.Add(',(SELECT PATIENTTESTID FROM PATIENTTEST WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)PATIENTTESTIDMAIN');
               // SQL.Add(',PT.PATIENTTESTID AS PATIENTTESTIDMAIN');
               SQL.Add(' ,(SELECT TOBE_SENTTOWEB FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT TOBE_SENTTOSMS FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT TOBE_SENTTOEMAIL FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(' FROM SERVICEBILLDETAIL SBD WHERE SBD.BILLNO=' + #39 + Gs_BillNo + #39);
               // SQL.Add('AND SBD.SERVICEBILLDETAILID=PT.SERVICEBILLDETAILID');
               SQL.Add(
                    'AND SBD.SERVICEBILLDETAILID NOT IN (SELECT SERVICEBILLDETAILID FROM TESTCANCEL WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)');
          end
          else if gi_BillCase in [4, 6] then
          begin
               SQL.Add('SELECT BD.*');
               SQL.Add(',(SELECT TESTNAMEID FROM TESTNAME WHERE TESTNAMECODE=BD.SERVICE)TESTNAMEID');
               SQL.Add(' ,(SELECT TOBE_SENTTOWEB FROM BILLMASTER WHERE BILLNO=BD.BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT TOBE_SENTTOSMS FROM BILLMASTER WHERE BILLNO=BD.BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT TOBE_SENTTOEMAIL FROM BILLMASTER WHERE BILLNO=BD.BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(',(SELECT BILLNO FROM REFUNDDETAIL WHERE BILLDETAILID=BD.BILLDETAILID)REFUNDBILLNO');
               SQL.Add(' FROM BILLDETAIL BD WHERE BILLNO=' + #39 + Gs_BillNo + #39);
               SQL.Add('AND BILLDETAILID NOT IN (SELECT BILLDETAILID FROM TESTCANCEL WHERE BILLDETAILID=BD.BILLDETAILID)');
          end
          else if gi_BillCase = 5 then
          begin
               SQL.Add('SELECT SBD.*');
               SQL.Add(',(SELECT TESTNAMEID FROM TESTNAME WHERE TESTNAMECODE=SBD.SERVICE)TESTNAMEID');
               // SQL.Add(',(SELECT PATIENTTESTID FROM PATIENTTEST WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)PATIENTTESTIDMAIN');
               SQL.Add(' ,(SELECT TOBE_SENTTOWEB FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOWEB');
               SQL.Add(' ,(SELECT TOBE_SENTTOSMS FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOSMS');
               SQL.Add(' ,(SELECT TOBE_SENTTOEMAIL FROM SERVICEBILLMASTER WHERE BILLNO=SBD.BILLNO)TOBE_SENTTOEMAIL');
               SQL.Add(' FROM SERVICEBILLDETAIL SBD WHERE BILLNO IN (SELECT REFERENCENO FROM DEPOSIT');
               SQL.Add(' WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')');
               SQL.Add('AND SERVICEBILLDETAILID NOT IN (SELECT SERVICEBILLDETAILID FROM TESTCANCEL WHERE BILLNO=SBD.BILLNO)');
          end
          else if gi_BillCase = 7 then
          begin
               SQL.Add('SELECT RD.*');
               SQL.Add(',(SELECT TESTNAMEID FROM TESTNAME WHERE TESTNAMECODE=RD.SERVICE)TESTNAMEID');
               SQL.Add(' FROM REFUNDDETAIL RD WHERE BILLNO=' + #39 + Gs_BillNo + #39);
          end;
          Open;
          if gi_BillCase in [1, 2, 4, 5, 6] then
          begin
               if Qry.FieldByName('ToBe_SenttoWeb').AsString = 'Y' then
                    CB_Send2Web.Checked := true
               else
                    CB_Send2Web.Checked := false;

               if Qry.FieldByName('ToBe_senttosms').AsString = 'Y' then
                    CB_Send2Sms.Checked := true
               else
                    CB_Send2Sms.Checked := false;

               if Qry.FieldByName('ToBe_senttoemail').AsString = 'Y' then
                    CB_Send2Email.Checked := true
               else
                    CB_Send2Email.Checked := false;
          end;

          ls_RefDoc := '';
          li_Communityid := 0;
          li_SchemdID := 0;
          ls_RefDoc := Qry.FieldByName('RefDocCode').AsString;
          li_Communityid := Qry.FieldByName('CommunityId').AsInteger;
          li_SchemdID := Qry.FieldByName('SchemeId').AsInteger;
          if li_Communityid > 0 then
               CB_Scheme.Checked := true;
          DBLCB_RefDocCode.KeyValue := ls_RefDoc;
          DBLCB_Community.KeyValue := li_Communityid;
          DBLCB_CommunityClick(Sender);
          DBLCB_Scheme.KeyValue := li_SchemdID;
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
               pf_TotalPrice := pf_TestPrice + pf_SvrTax;
               if pf_disper > 0 then
               begin
                    TestPriceWithDis := pf_TestPrice - ((pf_disper / 100) * pf_TestPrice);
                    SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
                    TotalPriceWithDis := TestPriceWithDis + SvrTaxWithDis;
               end
               else
               begin
                    TotalPriceWithDis := (pf_TestPrice + pf_SvrTax) * pf_Qty;
               end;
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
                                   FieldByName('TestPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TestPrice));
                                   FieldByName('Qty').AsFloat := pf_Qty;
                                   FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TotalPrice));
                                   FieldByName('DisPer').AsFloat := Qry.FieldByName('DisPer').AsFloat;
                                   FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', (pf_SvrTax)));
                                   // FieldByName('Discount').AsFloat:=Qry.FieldByName('Discount').AsFloat;
                                   FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', TotalPriceWithDis));
                                   FieldByName('CommunityId').AsInteger := Qry.FieldByName('CommunityId').AsInteger;
                                   FieldByName('SchemeId').AsInteger := Qry.FieldByName('SchemeId').AsInteger;
                                   FieldByName('RefDocCode').AsString := Qry.FieldByName('RefDocCode').AsString;
                                   Post;
                                   pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                   pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                   pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                   pf_grandtotal := pf_Total;
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
                                   FieldByName('PatientId').AsInteger := Qry.FieldByName('PatientId').AsInteger;
                                   FieldByName('InPatientId').AsInteger := Qry.FieldByName('InPatientId').AsInteger;
                                   FieldByName('DepId').AsInteger := Qry.FieldByName('DepId').AsInteger;
                                   FieldByName('PatientTestID').AsInteger := Qry.FieldByName('PatientTestId').AsInteger;
                                   FieldByName('Doccode').AsString := Qry.FieldByName('Doccode').AsString;
                                   FieldByName('TestNameCode').AsString := Qry.FieldByName('Service').AsString;
                                   FieldByName('TestNameId').AsInteger := Qry.FieldByName('TestNameId').AsInteger;
                                   FieldByName('TestName').AsString := Qry.FieldByName('ServiceType').AsString;
                                   FieldByName('TestPrice').AsFloat := StrToFloat(FormatFloat('#0.00', pf_TestPrice));
                                   FieldByName('Qty').AsFloat := pf_Qty;
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
                                   if gi_BillCase in [4, 6] then
                                   begin
                                        pi_TotItems := pi_TotItems + 1;
                                        FieldByName('RefundBillNo').AsString := Qry.FieldByName('RefundBillNo').AsString;
                                        if Qry.FieldByName('RefundBillNo').AsString = '' then
                                        begin
                                        pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                        pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                        pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                        pf_DiscountTotal := pf_DiscountTotal + pf_discount;
                                        pf_grandtotal := pf_Total - pf_DiscountTotal;
                                        end;
                                   end
                                   else
                                   begin
                                        pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
                                        pf_SvrTaxTotal := pf_SvrTaxTotal + (pf_SvrTax * pf_Qty);
                                        pf_Total := pf_subtotal + pf_SvrTaxTotal;
                                        // pf_DiscountTotal := pf_DiscountTotal + pf_discount;
                                        // pf_grandtotal := pf_Total - pf_DiscountTotal;
                                        pf_grandtotal := pf_Total;
                                   end;
                                   Post;
                              end;
                         end;
               end;
               Next;
          end;
     end;
     Lbl_BillNo.Caption := Gs_BillNo;
     Lbl_TotalItems.Caption := IntToStr(pi_TotItems);
     if gi_BillCase = 5 then
          pf_Deposit := GetTotalDepositDepNO(Gs_BillNo)
     else
          pf_Deposit := GetTotalDepositRefNo(Gs_BillNo);

     pf_MemberDeposit := GetTotalMemberDeposit(gi_PatientID, lbl_BenefitPackage.Caption);
     Edit_MemberDeposit.Text := FormatFloat('#0,0.00', pf_MemberDeposit);
     pf_balance := pf_grandtotal - pf_Deposit;
     lbl_deposit.Caption := FormatFloat('#0,0.00', pf_Deposit);
     lbl_balance.Caption := FormatFloat('#0,0.00', pf_balance);
     le_TotalDeposit.Text := FormatFloat('#0,0.00', pf_Deposit);
     Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);

     CalculateLabels;
     { Le_Total.Text := FormatFloat('#0,0.00', pf_Total);
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

     Qry.Free;
     case gi_BillCase of
          1, 5:
               begin
                    Query_TempBilling.Close;
                    Query_TempBilling.DatabaseName := gs_temppath;
                    Query_TempBilling.Open;
               end;
          2, 4, 6, 7:
               begin
                    Query_FinalBill.Close;
                    Query_FinalBill.DatabaseName := gs_temppath;
                    Query_FinalBill.Open;
               end;
     end;
end;

procedure TFrame_Billing.LoadImage;
begin
     try
          Image_Main.Picture.Assign(nil);
          if LoadImageFromDB(gi_PatientID) then
               Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
     except
     end;

end;

procedure TFrame_Billing.LoadTestIDInVariable(TestNameID: string);
begin
     ps_LoadedTestID := ps_LoadedTestID + ',' + TestNameID;
     ps_LoadedTestID := Trim(ps_LoadedTestID);
     if copy(ps_LoadedTestID, 1, 1) = ',' then
     begin
          ps_LoadedTestID := copy(ps_LoadedTestID, 2, 999);
     end;
end;

procedure TFrame_Billing.PrintBill;
Var
     i: Integer;
begin
     try
          Form_QRBill := TForm_QRBill.Create(nil);
          if pb_isreprint then
               Form_QRBill.lbl_reprint.Enabled := true;
          if CB_Preview.Checked = true then
          begin
               with Form_QRBill do
               begin
                    QrBill.Prepare;
                    lbl_totpage.Caption := IntToStr(QrBill.QRPrinter.PageCount);
                    QrBill.PreviewModal;
               end;
          end
          else
          begin
               Form_QRBill.QrBill.Prepare;
               for i := 0 to StrToInt(Se_NoofPrint.Text) - 1 do
                    Form_QRBill.QrBill.Print;
          end;
     finally
          pb_isreprint := false;
          Form_QRBill.Free;
     end;
end;

procedure TFrame_Billing.RemoveTestNameIDInVariable(TestNameID: String);
begin
     ps_LoadedTestID := StringReplace(ps_LoadedTestID, TestNameID, '-1', [rfReplaceAll]);
end;

procedure TFrame_Billing.SaveDepositDetail(DrAmount, CrAmount: Double; DepositType, ReferenceType, Remarks: String);
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
     Try
          SaveDeposit(0, gi_InPatientID, gi_PatientID, gi_UserID, DrAmount, CrAmount, DepositType, ReferenceType, ls_ReferenceNo, ls_TodaysDate,
               TodaysTime, ls_Remarks);
     except
          SaveDeposit(0, gi_InPatientID, gi_PatientID, gi_UserID, DrAmount, CrAmount, DepositType, ReferenceType, ls_ReferenceNo, ls_TodaysDate,
               TodaysTime, ls_Remarks);
     end;
     UpdateTestProgressStatus(ls_tempbillno, '', 0, gi_Billed);
end;

Function TFrame_Billing.SaveFinalBill: Boolean;
begin
     Result := false;
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

procedure TFrame_Billing.SaveFinalBill_Detail;
Var
     ls_billdate, ls_sendtoweb, ls_sendtosms, ls_sendtoemail, INITIAL: String;
     ls_RefDocCode, ls_FinalBillNo: String;
     Qty, i, li_Community, li_Scheme: Integer;
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

     if gi_datesystem = 0 then
          ls_billdate := TodaysDateVS
     else
          ls_billdate := TodaysDate;
     if DBLCB_RefDocCode.KeyValue = Null then
          ls_RefDocCode := ''
     else
          ls_RefDocCode := DBLCB_RefDocCode.KeyValue;
     if (DBLCB_Community.KeyValue = Null) or (CB_Scheme.Checked = false) then
          li_Community := 0
     else
          li_Community := DBLCB_Community.KeyValue;
     if (DBLCB_Scheme.KeyValue = Null) or (CB_Scheme.Checked = false) then
          li_Scheme := 0
     else
          li_Scheme := DBLCB_Scheme.KeyValue;
     if CB_PayType.ItemIndex in [0, 1] then
          INITIAL := 'CS'
     else
          INITIAL := 'CR';

     // if Pf_FinalBillDiscount = 0 then
     // begin
     // pf_disper := StrToFloat(Le_Disper.Text);
     // pf_Dis := StrToFloat(Le_Discount.Text);
     // end;

     CheckServiceBillMaster;
     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, pf_grandtotal, pf_SvrTax, pf_Dis, INITIAL, ls_billdate, TodaysTime, ls_RefDocCode, 'B',
          CB_PayType.Text, CB_BillType.Text, 'GENERAL', Le_Remarks.Text, gs_MacID, ls_sendtoweb, ls_sendtosms, ls_sendtoemail);
     with Table_FinalBill do
     begin
          Close;
          Open;
          while not eof do
          begin
               Qty := FieldByName('Qty').AsInteger;
               gi_ServiceBillDetailid := Table_FinalBill.FieldByName('ServiceBillDetailId').AsInteger;
               gi_PatientTestID := Table_FinalBill.FieldByName('PatientTestID').AsInteger;
               pf_Dis := (FieldByName('Disper').AsFloat / 100) * FieldByName('TestPrice').AsFloat; // FieldByName('NetTotal').AsFloat;
               SaveBillDetail(gi_PatientID, gi_ServiceBillDetailid, gi_InPatientID, gi_PatientTestID, gi_UserID, li_Community, li_Scheme, FieldByName
                      ('DepID').AsInteger, 0, 0, FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName('NetTotal')
                      .AsFloat, FieldByName('Disper').AsFloat, pf_Dis, Gs_BillNo, ls_billdate, TodaysTime, FieldByName('TestNameCode').AsString, FieldByName('TestName')
                      .AsString, 'B', CB_PayType.Text, CB_BillType.Text, 'GENERAL', Gs_MemberNo, FieldByName('Doccode').AsString, ls_RefDocCode, '',
                    '', '', '');
               if gi_BillCase = 2 then
               begin
                    if pf_Deposit <= 0 then
                         UpdatePatientTest(gi_ServiceBillDetailid, gi_BillDetailId, gi_Billed, gi_BillingInvCtrl, Gs_BillNo);
                    UpdateServiceBillDetail(gi_ServiceBillDetailid, gi_BillDetailId);
               end;

               if gi_BillCase = 4 then
               begin
                    if Qty > 1 then
                    begin
                         for i := 0 to Qty - 1 do
                         begin
                              SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, FieldByName('DepID').AsInteger, FieldByName
                                     ('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                                   gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString, FieldByName
                                     ('TestNameCode').AsString, ls_billdate, TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate,
                                   TodaysTime);
                         end;
                    end
                    else
                         SavePatientTest(0, gi_BillDetailId, 0, gi_PatientID, gi_InPatientID, FieldByName('DepID').AsInteger, FieldByName
                                ('TestNameID').AsInteger, FieldByName('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation, gi_DoNotSync,
                              gi_BillingInvCtrl, FieldByName('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString, FieldByName
                                ('TestNameCode').AsString, ls_billdate, TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate, TodaysTime);
               end;
               Next;
          end;
     end;
     ls_FinalBillNo := Gs_BillNo;
     if pf_Deposit > 0 then
          SaveDepositDetail(0, pf_Deposit, 'ADVANCE', 'BILL', 'ADVANCE FOR BILL');
     if Pf_DepositDeducted > 0 then
          SaveDepositDetail(0, Pf_DepositDeducted, 'DEPOSIT', lbl_BenefitPackage.Caption, 'DEPOSIT ADJUSTED');
     Gs_BillNo := ls_FinalBillNo;
     Pf_FinalBillDiscount := 0;
end;

Function TFrame_Billing.SaveServiceBill: Boolean;
begin
     Result := false;
     { Save Bill Master }
     try
          DM_Hospital.DB.StartTransaction;
          try
               SaveServiceBill_Detail;
          except
               SaveServiceBill_Detail;
          end;
          DM_Hospital.DB.Commit;
          Result := true;
          ShowDoneMessage;
          Lbl_BillNo.Caption := Gs_BillNo;
     except
          DM_Hospital.DB.Rollback;
     end;
end;

procedure TFrame_Billing.SaveServiceBill_Detail;
Var
     ls_billdate: String;
     ls_RefDocCode, ls_sendtoweb, ls_sendtosms, ls_sendtoemail, UPASSWORD: String;
     Qty, i, li_Community, li_Scheme, li_QueueNo: Integer;
     QrySave: TQuery;
     Qry: TOraQuery;
begin
     QrySave := TQuery.Create(nil);
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
          ls_billdate := TodaysDateVS
     else
          ls_billdate := TodaysDate;
     if DBLCB_RefDocCode.KeyValue = Null then
          ls_RefDocCode := ''
     else
          ls_RefDocCode := DBLCB_RefDocCode.KeyValue;
     if DBLCB_Community.KeyValue = Null then
          li_Community := 0
     else
          li_Community := DBLCB_Community.KeyValue;
     if DBLCB_Scheme.KeyValue = Null then
          li_Scheme := 0
     else
          li_Scheme := DBLCB_Scheme.KeyValue;
     // CheckServiceBillMaster;
     li_QueueNo := GetNextQueueNo;
     UPASSWORD := MakeRNDString('5WCNtuYIr+UH7Bb2', 8);
     if gi_BillCase = 1 then
          Pb_ServiceBillMasterExist := true;

     if not Pb_ServiceBillMasterExist then
          SaveServiceBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, li_QueueNo, pf_grandtotal, pf_SvrTax, Pf_FinalBillDiscount, 'TP',
               ls_billdate, TodaysTime, ls_RefDocCode, 'B', CB_PayType.Text, CB_BillType.Text, 'GENERAL', Le_Remarks.Text, gs_MacID, ls_sendtoweb,
               ls_sendtosms, ls_sendtoemail, UPASSWORD)
     else
          { MODIFYBY : Integer;
            GROSSTOTAL,TAXAMT,DISCOUNTTOTAL : Double;
            BILLNO,MODIFYDATE,MODIFYTIME,REFDOCCODE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE
            ,REMARKS,MODIFYMACID:String }
          UpdateServiceBillMaster(gi_UserID, pf_grandtotal, pf_SvrTax, pf_discount, Gs_BillNo, ls_billdate, TodaysTime, ls_RefDocCode, 'B',
               CB_PayType.Text, CB_BillType.Text, 'GENERAL', Le_Remarks.Text, gs_MacID);
     with QrySave do
     begin
          Close;
          DatabaseName := gs_temppath;
          if gi_BillCase = 0 then
               SQL.Add('Select * from TempBilling')
          else if gi_BillCase = 3 then
               SQL.Add('Select * from FinalBill');
          Open;
          while not eof do
          begin
               Qty := FieldByName('Qty').AsInteger;
               SaveServiceBillDetail(gi_PatientID, gi_InPatientID, 0, gi_UserID, li_Community, li_Scheme, FieldByName('DepID').AsInteger, 0, 0,
                    FieldByName('TestPrice').AsFloat, Qty, FieldByName('SvrTax').AsFloat, FieldByName('NetTotal').AsFloat, FieldByName('Disper')
                      .AsFloat, FieldByName('Discount').AsFloat, Gs_BillNo, ls_billdate, TodaysTime, FieldByName('TestNameCode').AsString, FieldByName
                      ('TestName').AsString, 'GENERAL', CB_PayType.Text, CB_BillType.Text, 'B', Gs_MemberNo, FieldByName('Doccode').AsString,
                    ls_RefDocCode, '', '', '', '');
               if Qty > 1 then
               begin
                    for i := 0 to Qty - 1 do
                    begin
                         SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID').AsInteger, FieldByName
                                ('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName
                                ('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ls_billdate,
                              TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate, TodaysTime);
                    end;
               end
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
                    // ('TestNameCode').AsString, ls_billdate, TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate,
                    // TodaysTime);
                    // Next;
                    // end;
                    // end;
                    // end
                    { ************************ Package Test ******************************************** }
                    // else
                    if FieldByName('TestnameCode').AsString = 'PACK' then
                         SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID').AsInteger, 0, FieldByName
                                ('TestPackageID').AsInteger, 0, gi_UserID, gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName
                                ('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ls_billdate,
                              TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate, TodaysTime)
                    else
                         SavePatientTest(0, 0, gi_ServiceBillDetailid, gi_PatientID, gi_InPatientID, FieldByName('DepID').AsInteger, FieldByName
                                ('TestNameID').AsInteger, 0, 0, gi_UserID, gi_Recommendation, gi_DoNotSync, gi_BillingInvCtrl, FieldByName
                                ('TestPrice').AsFloat, Gs_BillNo, FieldByName('Doccode').AsString, FieldByName('TestNameCode').AsString, ls_billdate,
                              TodaysTime, CB_PayType.Text, Le_Remarks.Text, 'RE', ls_billdate, TodaysTime);
               end;

               Next;
          end;
     end;
end;

procedure TFrame_Billing.SpeedButton1Click(Sender: TObject);
Var
     Qty, TestPrice, TestPriceWithDis, SvrTaxWithDis, TestPriceWithTaxWithDis, TestPriceWithTax, SvrTax: Double;
     li_MaxSno: Integer;
     MyTable: TTable;
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
          DatabaseName := gs_temppath;
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
     TestPrice := Query_TestName.FieldByName('TestPrice').AsFloat;
     TestPriceWithTax := Query_TestName.FieldByName('TotalPrice').AsFloat;
     SvrTax := Query_TestName.FieldByName('Tax').AsFloat;

     if Edit_Disper.Text <> '' then
          DISPER := StrToFloat(Edit_Disper.Text);

     if Pi_CommunityID = 4 then // Collection Center
     begin
          if DBLCB_Scheme.KeyValue <> Null then
          begin
               if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
                    DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'PACKAGE')
               else
                    DISPER := GetSchemeDiscount(Query_TestName.FieldByName('TestNameID').AsInteger, DBLCB_Scheme.KeyValue, 'TEST')
          end;
     end
     else
     begin
          if (Gi_MemberID > 0) and (Pb_NoDiscount = false) then
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
     end;

     if DISPER > 0 then
     begin
          Discount := (DISPER / 100) * TestPrice;
          TestPriceWithDis := TestPrice - Discount;
          SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;
          TestPriceWithTaxWithDis := TestPriceWithDis + SvrTaxWithDis;
          Le_Discount.Enabled := false;
          Le_Disper.Enabled := false;
     end;

     with MyTable do
     begin
          Append;
          FieldByName('SNO').AsInteger := GetMax_TempSno;
          FieldByName('DepID').AsInteger := Query_TestName.FieldByName('DepID').AsInteger;
          FieldByName('TestNameID').AsInteger := Query_TestName.FieldByName('TestNameID').AsInteger;
          if Query_TestName.FieldByName('TestNameCode').AsString = 'PACK' then
               FieldByName('TestPackageID').AsInteger := Query_TestName.FieldByName('TestNameID').AsInteger;
          LoadTestIDInVariable(Query_TestName.FieldByName('TestNameID').AsString+Query_TestName.FieldByName('TestNameCode').AsString);
          FieldByName('Doccode').AsString := 'HOS';
          FieldByName('TestNameCode').AsString := StringReplace(Query_TestName.FieldByName('TestNameCode').AsString, '''', '''''', [rfReplaceAll]);
          FieldByName('TestName').AsString := StringReplace(Query_TestName.FieldByName('TestName').AsString, '''', '''''', [rfReplaceAll]);
          FieldByName('TestPrice').AsFloat := TestPrice;
          FieldByName('TestPriceWithTax').AsFloat := TestPriceWithTax;
          FieldByName('TotalPrice').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax * Qty))); ;
          if DISPER > 0 then
               FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', SvrTaxWithDis))
          else
               FieldByName('SvrTax').AsFloat := StrToFloat(FormatFloat('#0.00', SvrTax));
          FieldByName('Disper').AsFloat := StrToFloat(FormatFloat('#0.00', DISPER));
          FieldByName('Discount').AsFloat := StrToFloat(FormatFloat('#0.00', Discount));
          FieldByName('Qty').AsFloat := Qty;
          if DISPER > 0 then
               FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTaxWithDis * Qty)))
          else
               FieldByName('NetTotal').AsFloat := StrToFloat(FormatFloat('#0.00', (TestPriceWithTax * Qty)));
          Post;
          pi_TotalItems := pi_TotalItems + 1;
          Lbl_TotalItems.Caption := IntToStr(pi_TotalItems);
     end;

     { ------------------------------------------- }
     if DISPER > 0 then
     begin
          pf_subtotal := pf_subtotal + (TestPriceWithDis * Qty);
          pf_SvrTaxTotal := pf_SvrTaxTotal + (SvrTaxWithDis * Qty);
     end
     else
     begin
          pf_subtotal := pf_subtotal + (TestPrice * Qty);
          pf_SvrTaxTotal := pf_SvrTaxTotal + (SvrTax * Qty);
     end;
     pf_Total := pf_subtotal + pf_SvrTaxTotal;
     pf_disper := pf_disper + DISPER;
     pf_discount := pf_discount + Discount;

     pf_grandtotal := pf_Total - pf_Deposit;

     Le_Total.Text := FormatFloat('#0,0.00', pf_Total);
     Le_NetTotal.Text := FormatFloat('#0,0.00', pf_Total);
     Le_Discount.Text := '00.00';
     Le_Disper.Text := '00.00';
     Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
     Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTaxTotal);
     Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
     Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
     Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', pf_grandtotal);
     { ------------------------------------------- }

     Edit_TestName.Clear;
     Edit_Qty.Clear;
     if gi_BillCase = 0 then
     begin
          Query_TempBilling.Close;
          Query_TempBilling.DatabaseName := gs_temppath;
          Query_TempBilling.Open;
     end;
     if gi_BillCase = 3 then
     begin
          Query_FinalBill.Close;
          Query_FinalBill.DatabaseName := gs_temppath;
          Query_FinalBill.Open;
     end;

     Edit_Doccode.SetFocus;
     DBGrid_Search.Visible := false;
     if Cb_DeductFromDeposit.Checked = true then
          Cb_DeductFromDepositClick(Sender);
end;

procedure TFrame_Billing.SpeedButton2Click(Sender: TObject);
begin
     OpenCashDrawer;
end;

procedure TFrame_Billing.BB_TestSelectionClick(Sender: TObject);
begin
     try
          Form_Departmentlist := TForm_Departmentlist.Create(nil);
          Form_Departmentlist.ShowModal;
     finally
          Form_Departmentlist.Free;
          Timer1.Enabled := true;
     end;
end;

procedure TFrame_Billing.CalculateLabels;
Var
     TestPriceWithDis, SvrTaxWithDis: Double;
     Qry: TQuery;
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

     Qry := TQuery.Create(Nil);

     With Qry do
     begin
          Close;
          SQL.Clear;
          DatabaseName := gs_temppath;
          SQL.Add('Select * from FinalBill Where Status is Null');
          Open;
          while not eof do
          begin
               pf_TestPrice := FieldByName('TestPrice').AsFloat;
               pf_Qty := FieldByName('Qty').AsInteger;
               pf_SvrTax := FieldByName('SvrTax').AsFloat;
               pf_TotalPrice := FieldByName('TotalPrice').AsFloat;

               pf_disper := FieldByName('Disper').AsFloat;
               pf_discount := FieldByName('Discount').AsFloat;

               TestPriceWithDis := pf_TestPrice - pf_discount;
               SvrTaxWithDis := (gf_TaxPercent / 100) * TestPriceWithDis;

               // pf_subtotal := pf_subtotal + TestPriceWithDis;
               pf_subtotal := pf_subtotal + (pf_TestPrice * pf_Qty);
               pf_SvrTaxTotal := pf_SvrTaxTotal + SvrTaxWithDis;
               pf_DiscountTotal := pf_DiscountTotal + pf_discount;

               Inc(pi_TotalItems);
               Next;
          end;
          pf_NetTotal := pf_subtotal - pf_DiscountTotal;
          pf_Total := pf_NetTotal + pf_SvrTaxTotal;
          pf_grandtotal := pf_Total - (pf_Deposit);

          // Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
          Le_NetTotal.Text := FormatFloat('#0,0.00', pf_NetTotal);
          Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTaxTotal);
          Le_Total.Text := FormatFloat('#0,0.00', pf_Total);
          Le_Discount.Text := FormatFloat('#0,0.00', pf_DiscountTotal);
          Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);

          Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          Lbl_TotalItems.Caption := IntToStr(pi_TotalItems);
     end;
end;

procedure TFrame_Billing.CalculatePayment;
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

procedure TFrame_Billing.CalculateSum;
Var
     i: Double;
begin
     i := 0;
     i := pf_grandtotal - pf_discount;
     Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', i);
     Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', i);
     Le_GrandTotal.Text := FormatFloat('#0,0.00', i);
end;

procedure TFrame_Billing.Cb_DeductFromDepositClick(Sender: TObject);
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
          Pb_NoDiscount := false;
     end;
     CalculatePayment;
end;

procedure TFrame_Billing.Timer1Timer(Sender: TObject);
Var
     Qry: TQuery;
begin
     if Gb_TestListClosed then
     begin
          Query_TempBilling.Close;
          Query_TempBilling.DatabaseName := gs_temppath;
          Query_TempBilling.Open;
          Qry := TQuery.Create(nil);
          with Qry do
          begin
               Close;
               DatabaseName := gs_temppath;
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

          Le_Total.Text := FormatFloat('#0,0.00', pf_Total);
          Le_Discount.Text := '0.00';
          Le_Disper.Text := '0.00';
          Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
          Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTax);
          Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
          Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', pf_grandtotal);
          { ------------------------------------------- }
     end;
     Timer1.Enabled := false;
end;

procedure TFrame_Billing.ToogleCustomerView;
begin
     if GetMonitorCount = 1 then
          exit;

     if Form_CustomerMonitor = nil then
          Form_CustomerMonitor := TForm_CustomerMonitor.Create(nil);
     if Form_CustomerMonitor <> nil then
     begin
          if bb_CustomerView.Caption = 'Customer Preview [OFF]' then
          begin
               with Form_CustomerMonitor do
               begin
                    WindowState := wsNormal;
                    Show;
                    left := -1200;
                    WindowState := wsMaximized;
               end;
               bb_CustomerView.Caption := 'Customer Preview [ON]';
          end
          else
          begin
               Form_CustomerMonitor.WindowState := wsNormal;
               Form_CustomerMonitor.Hide;
               bb_CustomerView.Caption := 'Customer Preview [OFF]';
          end;
     end;
end;

procedure TFrame_Billing.UpdateCustomerPreview;
begin
     if GetMonitorCount = 1 then
          exit;
     with Form_CustomerMonitor do
     begin
          DBGrid1.DataSource := Self.DBGrid1.DataSource;
          lbl_patientid.Caption := IntToStr(gi_PatientID);
          lbl_patientname.Caption := Gs_PatientName;
          Lbl_GrandTotal.Caption := Self.Lbl_GrandTotal.Caption;
          Lbl_TotalAmt.Caption := Self.Lbl_TotalAmt.Caption;
          Lbl_ReturnAmt.Caption := Self.Lbl_ReturnAmt.Caption;
          lbl_TenderAmt.Caption := Self.lbl_TenderAmt.Caption;
          Lbl_TotalItems.Caption := Self.Lbl_TotalItems.Caption;
          Image_Main.Picture.Assign(Self.Image_Main.Picture);
          Label17.Caption := Self.Label17.Caption;
          Lbl_ReturnAmt.Font.Color := Self.Lbl_ReturnAmt.Font.Color;
     end;
end;

procedure TFrame_Billing.UpdateDepositDetail;
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

procedure TFrame_Billing.ReCalculateSumAmtAfterDeleteItem;
Var
     TestPrice, Qty, SvrTax: Double;
Begin
     if gi_BillCase in [0, 1] then
     begin
          Qty := Query_TempBilling.FieldByName('Qty').AsFloat;
          TestPrice := Query_TempBilling.FieldByName('TestPrice').AsFloat;
          SvrTax := Query_TempBilling.FieldByName('SvrTax').AsFloat;
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

     Le_Total.Text := FormatFloat('#0,0.00', pf_Total);
     Le_Discount.Text := '0.00';
     Le_Disper.Text := '0.00';
     Le_SubTotal.Text := FormatFloat('#0,0.00', pf_subtotal);
     Le_SvrTax.Text := FormatFloat('#0,0.00', pf_SvrTax);
     Lbl_GrandTotal.Caption := FormatFloat('#0,0.00', pf_grandtotal);
     Le_GrandTotal.Text := FormatFloat('#0,0.00', pf_grandtotal);
     Lbl_TotalAmt.Caption := FormatFloat('#0,0.00', pf_grandtotal);

     pi_TotItems := pi_TotItems - 1;
     Lbl_TotalItems.Caption := IntToStr(pi_TotItems);
     { ------------------------------------------- }
End;

Function TFrame_Billing.GetMax_TempSno: Integer;
Var
     Qry:Tquery;
Begin
     Qry:=TQuery.Create(Nil);
     With Qry do
     Begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          if gi_BillCase = 0 then
               SQL.Add(' Select Max(SNo) MaxNo From TempBilling.db');
          if gi_BillCase = 3 then
               SQL.Add(' Select Max(SNo) MaxNo From FinalBill.db');
          Open;
     End;
     Result := Qry.FieldByName('MaxNo').AsInteger + 1;
     Qry.Free;
End;

end.
