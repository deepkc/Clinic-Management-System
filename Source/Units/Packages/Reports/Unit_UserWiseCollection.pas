unit Unit_UserWiseCollection;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate,
     Dialogs, StdCtrls, ExtCtrls, OleCtrls, DateEditXControl_TLB, ComCtrls,
     DBCtrls,UnitSendToExcel,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Buttons, CheckLst, Mask;

type
     TForm_UserWiseCollection = class(TForm)
          StatusBar1: TStatusBar;
          Panel1: TPanel;
          Panel2: TPanel;
          Label3: TLabel;
          DBLCB_UserName: TDBLookupComboBox;
          GroupBox1: TGroupBox;
          label2: TLabel;
          DateEditXTo: TDateEditX;
          Chk_Detail: TCheckBox;
          Ds_Username: TDataSource;
          Label1: TLabel;
          BtnTo: TSpeedButton;
          BtnFrom: TSpeedButton;
          DateEditxFrom: TDateEditX;
    CB_AllUserDetail: TCheckBox;
    CheckListBox_Department: TCheckListBox;
    CB_BillingOnly: TCheckBox;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    CheckBoxTime: TCheckBox;
    BitBtnPreview: TBitBtn;
    CB_DirectPrint: TCheckBox;
    CB_RegCollection: TCheckBox;
    BitBtnCancel: TBitBtn;
    RG_Category: TRadioGroup;
    QueryUserName: TOraQuery;
    Query_Checklist: TOraQuery;
          procedure FormDestroy(Sender: TObject);
          procedure BtnfromClick(Sender: TObject);
          procedure BtnToClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure DBLCB_UserNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure CB_AllUserDetailClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBoxTimeClick(Sender: TObject);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure CB_BillingOnlyClick(Sender: TObject);
    procedure CB_RegCollectionClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure CheckListBox_DepartmentClickCheck(Sender: TObject);
    procedure GetPatientInfo(ArrayIndex, InfoIndex: Integer);
     private
          DeptPrivateData: Array[0..100] of String;
          { Private declarations }
     public

          pb_IsSendToExcel : Boolean;

          ps_DateFrom, ps_DateTo : String;

          procedure SummarizeRegUserColn;

          { Public declarations }
     end;

var
     Form_UserWiseCollection: TForm_UserWiseCollection;

implementation

uses UnitDeptWiseReport, Unit_QRUserWiseColnDetail,Unit_QRRegBillwiseUserColn,
     UnitNoofTestDone,
     Unit_QRUserWiseColnSummary, Unit_QRUserWiseColnSummaryManipal,Unit_QRUserWiseColnDetail_Manipal;

{$R *.dfm}

procedure TForm_UserWiseCollection.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TForm_UserWiseCollection.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_UserWiseCollection.BitBtnPreviewClick(Sender: TObject);
var
ls_ReportCategory,ls_PatientCategory:string;
I:Integer;
begin
     for I := 0 to CheckListBox_Department.Count - 1 do
     begin
          if CheckListBox_Department.Checked[I] then
          begin
               if ls_PatientCategory='' then
                    ls_PatientCategory:=Quotedstr(CheckListBox_Department.Items[I])
               else
               begin
                    ls_PatientCategory:=ls_PatientCategory+','+Quotedstr(CheckListBox_Department.Items[I]);
               end;
          end;
     end;
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     gs_From := DateEditxFrom.text;
     gs_to := DateEditXTo.text;


     if (Chk_Detail.Checked = True) and (DBLCB_UserName.KeyValue = Null) then
     begin
          ShowMessage('Please Select the User');
          DBLCB_UserName.SetFocus;
          exit;
     end;

     if gs_IsUserViewCollection='R' then
     begin
          SummarizeRegUserColn;
          Exit;
     end;


     //if Chk_Detail.Checked = false then
     if (Trim(DBLCB_UserName.Text)='') and (CB_AllUserDetail.Checked=False) then
     begin
          try
               with Form_QRUserWiseColnSummaryManipal do
               begin
                    With QueryMain do
                    begin
                         close;
                         Session := DM_Hospital.DB;
                         Sql.Clear;
                         Sql.Add('SELECT USERNAME,SUM(CASHAMOUNTOP)CASHAMOUNTOP,SUM(REFUNDAMOUNTOP)REFUNDAMOUNTOP,SUM(DEPOSITCOLLECTIONOP)DEPOSITCOLLECTIONOP,');
                         Sql.Add('SUM(DEPOSITADJUSTMENTOP)DEPOSITADJUSTMENTOP,SUM(NETOP)NETOP,SUM(CASHAMOUNTIP)CASHAMOUNTIP,SUM(REFUNDAMOUNTIP)REFUNDAMOUNTIP,');
                         Sql.Add('SUM(DEPOSITCOLLECTIONIP)DEPOSITCOLLECTIONIP,SUM(DEPOSITADJUSTMENTIP)DEPOSITADJUSTMENTIP,SUM(NETIP)NETIP,SUM(PharmacyAmount)PharmacyAmount,');
                         Sql.Add('SUM(REFUNDAMOUNTOP+REFUNDAMOUNTIP)NETREFUND,Sum(NetCollection-PharmacyAmount-receiptamount) as NetBILLINGCollection,Sum(NetCollection) as NetCollection,');
                         Sql.Add('sum(receiptamount)receiptamount FROM');
                         Sql.Add(' (Select UserName,Sum(CashAmount+CARDAMOUNT) as CASHAMOUNTOP,Sum(REFUNDAMOUNT) as REFUNDAMOUNTOP,');
                         Sql.Add(' Sum(DEPOSITCOLLECTION+ReceiptAmount) as DEPOSITCOLLECTIONOP,Sum(DEPOSITADJUSTMENT+ReceiptRefund) as DEPOSITADJUSTMENTOP,');
                         Sql.Add('SUM((CashAmount+CARDAMOUNT+DEPOSITCOLLECTION+ReceiptAmount)-(REFUNDAMOUNT+DEPOSITADJUSTMENT+ReceiptRefund))NETOP,0 AS CASHAMOUNTIP,0 AS REFUNDAMOUNTIP,');
                         Sql.Add(' 0 AS DEPOSITCOLLECTIONIP,0 AS DEPOSITADJUSTMENTIP,0 NETIP,Sum(PharmacyColn) as PharmacyAmount,Sum(NetCollection) as NetCollection,0 as receiptamount');
                         Sql.Add(' FROM VW_HS_USER_WISE_COLL_DETAIL_N');
                         Sql.Add(' Where BillDate between ' + #39 + gs_From + #39+' and ' + #39 + gs_to + #39);
                         Sql.Add(' AND BILLTYPE NOT IN(''IP'',''A'',''ID'')');
                         if CheckBoxTime.Checked=True then
                         Begin
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit1.Text+#39+' End >='+#39+MaskEdit1.Text+#39+')');
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit2.Text+#39+' End <='+#39+MaskEdit1.Text+#39+')');
                         end;
                         if ls_PatientCategory<>'' then
                              sql.add('and PatientCategory in ('+ls_PatientCategory+')')
                         else
                              sql.Add('and 1=1');
                         {if RG_Category.ItemIndex=1 then
                              sql.Add('and PatientCategory=''BNB''')
                         Else if RG_Category.ItemIndex=2 then
                              sql.Add('and PatientCategory=''BLK''')
                         Else
                              sql.Add('And 1=1');}

                         //SQL.Add('AND ORGBILLCATEGORY in('+ls_ReportCategory+''')');
                         if Trim(DBLCB_UserName.Text) <> '' then
                         Sql.Add(' AND USERID = ' + IntToStr(DBLCB_UserName.KeyValue));

                         if gs_IsCounterUser='Y' then
                         Sql.Add(' AND USERID = ' + IntToStr(gi_UserID));


                         if Trim(DBLCB_UserName.Text) = '' then
                         Begin
                              if gi_UserID<>1 then
                              Begin
                                   if gs_IsUserViewCollection='R' then
                                   Sql.Add('AND USERID In (Select UserId From LAB_UserMain where USAM_IsUserViewCollection=''R'')')
                                   else if gs_IsUserViewCollection='B' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')')
                                   Else
                                   begin
                                        if CB_BillingOnly.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                        if CB_RegCollection.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                                   end;
                              End
                              else
                              begin
                                   if CB_BillingOnly.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                   if CB_RegCollection.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                              end;
                         end;
                         Sql.Add('Group by UserName');
                         Sql.Add('UNION');
                         Sql.Add('Select UserName,0 AS CASHAMOUNTOP,0 AS REFUNDAMOUNTOP,');
                         Sql.Add(' 0 AS DEPOSITCOLLECTIONOP,0 AS DEPOSITADJUSTMENTOP,0 NETOP,Sum(CashAmount+CARDAMOUNT) as CASHAMOUNTIP,Sum(REFUNDAMOUNT) as REFUNDAMOUNTIP,');
                         Sql.Add(' Sum(DEPOSITCOLLECTION+ReceiptAmount) as DEPOSITCOLLECTIONIP,Sum(DEPOSITADJUSTMENT+ReceiptRefund) as DEPOSITADJUSTMENTIP,');
                         Sql.Add(' SUM((CashAmount+CARDAMOUNT+DEPOSITCOLLECTION+ReceiptAmount)-(REFUNDAMOUNT+DEPOSITADJUSTMENT+ReceiptRefund))NETIP,');
                         Sql.Add(' Sum(PharmacyColn) as PharmacyAmount,Sum(NetCollection) as NetCollection,0 as receiptamount');
                         Sql.Add(' FROM VW_HS_USER_WISE_COLL_DETAIL_N');
                         Sql.Add(' Where BillDate between ' + #39 + gs_From + #39+' and ' + #39 + gs_to + #39);
                         Sql.Add(' AND BILLTYPE  IN(''IP'',''A'',''ID'')');
                         if CheckBoxTime.Checked=True then
                         Begin
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit1.Text+#39+' End >='+#39+MaskEdit1.Text+#39+')');
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit2.Text+#39+' End <='+#39+MaskEdit1.Text+#39+')');
                         end;
                         if ls_PatientCategory<>'' then
                              sql.add('and PatientCategory in ('+ls_PatientCategory+')')
                         else
                              sql.Add('and 1=1');
                         {if RG_Category.ItemIndex=1 then
                              sql.Add('and PatientCategory=''BNB''')
                         Else if RG_Category.ItemIndex=2 then
                              sql.Add('and PatientCategory=''BLK''')
                         Else
                              sql.Add('And 1=1');}

                         //SQL.Add('AND ORGBILLCATEGORY in('+ls_ReportCategory+''')');
                         if Trim(DBLCB_UserName.Text)<>'' then
                         Sql.Add('AND USERID = ' + IntToStr(DBLCB_UserName.KeyValue));

                         if gs_IsCounterUser='Y' then
                         Sql.Add(' AND USERID = ' + IntToStr(gi_UserID));

                         if Trim(DBLCB_UserName.Text)='' then
                         Begin
                              if gi_UserID<>1 then
                              Begin
                                   if gs_IsUserViewCollection='R' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')')
                                   else if gs_IsUserViewCollection='B' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')')
                                   Else
                                   begin
                                        if CB_BillingOnly.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                        if CB_RegCollection.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                                   end;
                              End
                              else
                              begin
                                   if CB_BillingOnly.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                   if CB_RegCollection.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                              end;
                         end;
                         Sql.Add(' Group by UserName');
                         sql.Add('UNION');
                         sql.Add('Select UserName,0 AS CASHAMOUNTOP,0 AS REFUNDAMOUNTOP,0 AS DEPOSITCOLLECTIONOP,0 AS DEPOSITADJUSTMENTOP,');
                         sql.Add(' 0 NETOP,0 CASHAMOUNTIP,0 REFUNDAMOUNTIP,0 DEPOSITCOLLECTIONIP,0 as DEPOSITADJUSTMENTIP,0 NETIP,0 PharmacyAmount,');
                         sql.Add(' 0 as NetCollection,sum(receiptamount)receiptamount');
                         sql.Add(' FROM VW_HS_USER_WISE_COLL_DETAIL_N');
                         Sql.Add(' Where BillDate between ' + #39 + gs_From + #39+' and ' + #39 + gs_to + #39);
                         Sql.Add(' AND BILLTYPE  IN(''CP'')');
                         if CheckBoxTime.Checked=True then
                         Begin
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit1.Text+#39+' End >='+#39+MaskEdit1.Text+#39+')');
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit2.Text+#39+' End <='+#39+MaskEdit1.Text+#39+')');
                         end;
                         if ls_PatientCategory<>'' then
                              sql.add('and PatientCategory in ('+ls_PatientCategory+')')
                         else
                              sql.Add('and 1=1');
                         {if RG_Category.ItemIndex=1 then
                              sql.Add('and PatientCategory=''BNB''')
                         Else if RG_Category.ItemIndex=2 then
                              sql.Add('and PatientCategory=''BLK''')
                         Else
                              sql.Add('And 1=1');}

                         //SQL.Add('AND ORGBILLCATEGORY in('+ls_ReportCategory+''')');
                         if Trim(DBLCB_UserName.Text)<>'' then
                         Sql.Add('AND USERID = ' + IntToStr(DBLCB_UserName.KeyValue));

                         if gs_IsCounterUser='Y' then
                         Sql.Add(' AND USERID = ' + IntToStr(gi_UserID));

                         if Trim(DBLCB_UserName.Text)='' then
                         Begin
                              if gi_UserID<>1 then
                              Begin
                                   if gs_IsUserViewCollection='R' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')')
                                   else if gs_IsUserViewCollection='B' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')')
                                   Else
                                   begin
                                        if CB_BillingOnly.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                        if CB_RegCollection.Checked=True then
                                        Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                                   end;
                              End
                              else
                              begin
                                   if CB_BillingOnly.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''B'')');

                                   if CB_RegCollection.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                              end;
                         end;
                         Sql.Add(' Group by UserName');
                         Sql.Add(' )GROUP BY USERNAME');
                         Sql.Add(' ORDER BY USERNAME');
                        // sql.savetofile('C:\UserWiseSummary.txt');
                         Open;
                    end;

                    {
                    With QueryMain do
                    begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(' Select UserName,Sum(CashAmount) as CashAmount,Sum(CARDAMOUNT) as CARDAMOUNT,Sum(REFUNDAMOUNT) as REFUNDAMOUNT,');
                         Sql.Add(' Sum(DEPOSITCOLLECTION) as DEPOSITCOLLECTION,Sum(DEPOSITADJUSTMENT) as DEPOSITADJUSTMENT,');
                         Sql.Add(' Sum(ReceiptAmount) as ReceiptAmount,Sum(ReceiptRefund) as ReceiptRefund,');
                         Sql.Add(' Sum(PharmacyColn) as PharmacyAmount,Sum(NetCollection) as NetCollection');
                         Sql.Add(' FROM VW_HS_User_Wise_Coll_Detail');
                         Sql.Add(' Where BillDate between ' + #39 + gs_From + #39+' and ' + #39 + gs_to + #39);
                         if CheckBoxTime.Checked=True then
                         Begin
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit1.Text+#39+' End >='+#39+MaskEdit1.Text+#39+')');
                              Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit2.Text+#39+' End <='+#39+MaskEdit1.Text+#39+')');
                         end;

                         //SQL.Add('AND ORGBILLCATEGORY in('+ls_ReportCategory+''')');
                         if DBLCB_UserName.KeyValue <> Null then
                         Sql.Add('AND USERID = ' + IntToStr(DBLCB_UserName.KeyValue));
                         if DBLCB_UserName.KeyValue = Null then
                         Begin
                              if gi_UserID<>1 then
                              Begin
                                   if gs_IsRegUser='Y' then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USMA_IsRegUser=''Y'')')
                                   else
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USMA_IsRegUser=''N'')');
                              End
                              else
                              begin
                                   if CB_BillingOnly.Checked=True then
                                   Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USMA_IsRegUser=''N'')');
                              end;
                         end;
                         sql.add(' Group by UserName');
                         sql.add(' Order by UserName');
                         sql.savetofile('tt.txt');
                         Open;
                    end;                        }
                    QuickRepUsercollection.DataSet := QueryMain;
                    If gi_datesystem = 0 Then
                    Begin
                         ps_DateFrom := DateEditxFrom.VSDateAsText + ' BS(' +DateEditxFrom.ADDateAsText + ' AD)';
                         ps_DateTo := DateEditXTo.VSDateAsText + ' BS(' + DateEditXTo.ADDateAsText +' AD)';

                    End
                    Else
                    Begin
                         ps_DateFrom := DateEditxFrom.ADDateAsText + ' AD(' +DateEditxFrom.VSDateAsText + ' BS)';
                         ps_DateTo := DateEditXTo.ADDateAsText + ' AD(' + DateEditXTo.VSDateAsText +' BS)';
                    End;

                    if pb_IsSendToExcel=False then
                    Begin
                         QRLabel_FromDate.Caption :=ps_DateFrom;
                         QRLabel_To.Caption :=ps_DateTo;

                         QRLabelDate.Caption:=TodaysDate;
                         QRLabelTime.Caption:=TodaysTime;

                         if CB_DirectPrint.Checked=False then
                         QuickRepUsercollection.Preview
                         else
                         QuickRepUsercollection.Print;
                    End
                    Else
                    Begin
                         SendtoExcels(QueryMain,nil,'User Wise Collection(Summary)',ps_DateFrom+'-'+ps_DateTo,'Generated Date/Time/By :'+TodaysDate+'/'+TodaysTime+'/'+gs_UserName,
                                        gs_HospitalName,gs_HospitalAddress,3);
                         pb_IsSendToExcel:=False;
                    End;
               end;
          finally
          end;
     end
     else
     begin
          if Chk_Detail.Checked=False then
          Begin
               With Form_QRUserWiseCollnDetail_Manipal Do
               Begin
                    With Query_CashBill Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                                 ' and BillBy='+IntToStr(DBLCB_UserName.KeyValue)//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')'
                         Else
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')';
                         //SQL.SaveToFile('C:\CashOP.Txt');
                         Open;
                    End;

                    With Query_CashBillIP Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                                 ' and BillBy='+IntToStr(DBLCB_UserName.KeyValue)//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')'
                         Else
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')';
                         //SQL.SaveToFile('C:\CashIP.Txt');
                         Open;
                    End;

                    With Query_CashRefund Do
                    Begin
                         close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[9]:=' Where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                                DateEditXTo.text + #39+'And REDE_PayType=''CASH'' And REDE_RefundBy=' + IntToStr(DBLCB_UserName.KeyValue)//+'AND REDE_ORGBILLCATEGORY in('+ls_ReportCategory+''')'
                         Else
                         sql[9]:=' Where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                                DateEditXTo.text + #39+'And REDE_PayType=''CASH''';// AND REDE_ORGBILLCATEGORY in('+ls_ReportCategory+''')';
                         //SQL.SaveToFile('C:\CashRefund.Txt');
                         Open;
                    End;

                    With Query_Deposit Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         Begin
                              sql[5]:=' and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39+
                                      ' and DEPO_DepositBy='+IntToStr(DBLCB_UserName.KeyValue);
//                              sql[10]:=' and ReceiptDate >='+#39+DateEditxFrom.Text+#39+' and ReceiptDate<='+#39+DateEditXTo.Text+#39+
//                                      ' and ReceivedByID='+IntToStr(DBLCB_UserName.KeyValue);
                         End
                         Else
                         Begin
                              sql[5]:=' and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39;
//                              sql[10]:=' and ReceiptDate >='+#39+DateEditxFrom.Text+#39+' and ReceiptDate<='+#39+DateEditXTo.Text+#39;
                         End;
                         //SQL.SaveToFile('C:\Deposit.Txt');
                         Open;
                    End;

                    With Query_AdjustedDeposit Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         Begin
                              sql[6]:=' and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39+
                                      ' and DEPO_DepositBy='+IntToStr(DBLCB_UserName.KeyValue);
                              (*sql[11]:='and ReceiptDate >='+#39+DateEditxFrom.Text+#39+' and ReceiptDate<='+#39+DateEditXTo.Text+#39+
                                      ' and ReceivedByID='+IntToStr(DBLCB_UserName.KeyValue);
                              sql[16]:=' Where BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                                      ' and RefundBy='+IntToStr(DBLCB_UserName.KeyValue);*)
                              sql[13]:='and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39+
                                      ' and DEPO_DepositBy='+IntToStr(DBLCB_UserName.KeyValue);
                         End
                         Else
                         Begin
                              sql[6]:=' and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39;
                              (*sql[11]:='and ReceiptDate >='+#39+DateEditxFrom.Text+#39+' and ReceiptDate<='+#39+DateEditXTo.Text+#39;
                              sql[16]:=' Where BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;*)
                              sql[13]:='and DEPO_DEPOSITTYPE Not In (''FINALDISADJ'',''FINALDISBILL'') and DEPO_DepositDate >='+#39+DateEditxFrom.Text+#39+' and DEPO_DepositDate<='+#39+DateEditXTo.Text+#39;
                         End;
                         //sql.saveToFile('C:\AdjustedDepo.Txt');
                         Open;
                    End;

                    With Query_ReceiptColn Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[4]:=' and  DataPostDate >='+#39+DateEditxFrom.Text+#39+' and DataPostDate<='+#39+DateEditXTo.Text+#39+
                                 ' and DataPostBy='+IntToStr(DBLCB_UserName.KeyValue)
                         Else
                         sql[4]:=' and  DataPostDate >='+#39+DateEditxFrom.Text+#39+' and DataPostDate<='+#39+DateEditXTo.Text+#39;
                         //sql.saveToFile('C:\Receipt.Txt');
                         Open;
                    End;

                    With Query_ReceiptRefund Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         begin
                              sql[5]:=' and  RECEIPTDATE >='+#39+DateEditxFrom.Text+#39+' and RECEIPTDATE<='+#39+DateEditXTo.Text+#39+
                                 ' and RECEIVEDBY='+IntToStr(DBLCB_UserName.KeyValue);
                              sql[11]:=' where  billdate >='+#39+DateEditxFrom.Text+#39+' and billdate<='+#39+DateEditXTo.Text+#39+
                              ' and RefundBy='+IntToStr(DBLCB_UserName.KeyValue);
                         end
                         Else
                         begin
                              sql[5]:=' and  RECEIPTDATE >='+#39+DateEditxFrom.Text+#39+' and RECEIPTDATE<='+#39+DateEditXTo.Text+#39;
                              sql[11]:=' where  billdate >='+#39+DateEditxFrom.Text+#39+' and billdate<='+#39+DateEditXTo.Text+#39;
                         end;
                         //sql.saveToFile('C:\Receipt.Txt');
                         Open;
                    End;

                    With Query_CreditBill Do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                                 ' and BillBy='+IntToStr(DBLCB_UserName.KeyValue)
                         Else
                         sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;
                         //SQL.SaveToFile('C:\Credit.Txt');
                         Open;
                    End;


                    With Query_CreditRefund Do
                    Begin
                         close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[9]:=' where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                                DateEditXTo.text + #39+'And REDE_PayType=''CREDIT'' And REDE_RefundBy=' + IntToStr(DBLCB_UserName.KeyValue)
                         Else
                         sql[9]:=' where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                                DateEditXTo.text + #39+'And REDE_PayType=''CREDIT''';
                         //SQL.SaveToFile('C:\CreditBill.Txt');
                         Open;
                    End;


                    With Query_ServiceTPBill Do
                    Begin
                         close;
                         Session := DM_Hospital.DB;
                         if CB_AllUserDetail.Checked=False then
                         sql[6]:=' and SEBD_BillDate >=' + #39 + DateEditxFrom.text + #39 + ' And SEBD_BillDate<=' + #39 +
                                DateEditXTo.text + #39+' And SEBD_BillBy=' + IntToStr(DBLCB_UserName.KeyValue)
                         Else
                         sql[6]:=' and SEBD_BillDate >=' + #39 + DateEditxFrom.text + #39 + ' And SEBD_BillDate<=' + #39+DateEditXTo.text + #39;
                         //SQL.SaveToFile('C:\CreditBill.Txt');
                         Open;
                    End;

                    QRLabelUser.Caption := DBLCB_UserName.text;
                    QRLabelDate.Caption := serverdate.TodaysDate;
                    QRLabelTime.Caption := serverdate.TodaysTime;


                    If gi_datesystem = 0 Then
                    Begin
                         ps_DateFrom := DateEditxFrom.VSDateAsText + ' BS(' +DateEditxFrom.ADDateAsText + ' AD)';
                         ps_DateTo := DateEditXTo.VSDateAsText + ' BS(' + DateEditXTo.ADDateAsText +' AD)';

                    End
                    Else
                    Begin
                         ps_DateFrom := DateEditxFrom.ADDateAsText + ' AD(' +DateEditxFrom.VSDateAsText + ' BS)';
                         ps_DateTo := DateEditXTo.ADDateAsText + ' AD(' + DateEditXTo.VSDateAsText +' BS)';
                    End;


                    Date1.Caption := ps_DateFrom;
                    Date2.Caption := ps_DateTo;
                    QuickRep1.Prepare;
                    QRLabel_TotalPage.Caption := IntToStr(QuickRep1.QRPrinter.PageCount);

                    pi_CashSno:=0;
                    pi_CashSnoIp:=0;
                    pi_RefundSno:=0;
                    pi_DepositSno:=0;
                    pi_DepositRefundSno:=0;

                    pi_ReceiptSno:=0;
                    pi_ReceiptRefundSno:=0;

                    pi_CreditSno:=0;
                    pi_CreditRefundSno:=0;
                    pi_ServiceTPSno:=0;

                    if CB_DirectPrint.Checked=False then
                    QuickRep1.Preview
                    else
                    QuickRep1.Print;

                    Query_CashBill.close;
                    Query_CashRefund.close;
                    Query_Deposit.close;
                    Query_AdjustedDeposit.close;
                    Query_CreditBill.close;
                    Query_CreditRefund.Close;
                    //QueryRefund.close;
               End;
          End
          Else
          Begin

          End;
     end;
end;

procedure TForm_UserWiseCollection.Button1Click(Sender: TObject);
begin
     try
          FormNoofTestDone := TFormNoofTestDone.Create(nil);
          FormNoofTestDone.ShowModal;
     finally
          FormNoofTestDone.Free;
     end;
end;

procedure TForm_UserWiseCollection.CB_AllUserDetailClick(Sender: TObject);
begin
     if CB_AllUserDetail.Checked then
     Begin
          DBLCB_UserName.KeyValue:=NULL;
          DBLCB_UserName.Color:=clScrollBar;
          DBLCB_UserName.Enabled:=False;
     End
     Else
     Begin
          DBLCB_UserName.KeyValue:=NULL;
          DBLCB_UserName.Color:=clWhite;
          DBLCB_UserName.Enabled:=True;
     End;

end;

procedure TForm_UserWiseCollection.CB_BillingOnlyClick(Sender: TObject);
begin
     if CB_BillingOnly.Checked=True then CB_RegCollection.Checked:=False;
end;

procedure TForm_UserWiseCollection.CB_RegCollectionClick(Sender: TObject);
begin
     if CB_RegCollection.Checked=True then CB_BillingOnly.Checked:=False;
end;

procedure TForm_UserWiseCollection.CheckBoxTimeClick(Sender: TObject);
begin
  (*if  CheckBoxTime.Checked then
  Begin
       DateEditX_ToDate.text:=ServerDate.TodaysDate;
       DateEditX_ToDate.Visible:=False;
       Label2.Visible:=False;
       MaskEdit1.Visible:=True;
       MaskEdit2.Visible:=True;
       Label4.Visible:=True;
  End
  Else
  Begin
    DateEditX_ToDate.text:=ServerDate.TodaysDate;
    DateEditX_ToDate.Visible:=True;
    Label2.Visible:=True;
    MaskEdit1.Visible:=False;
    MaskEdit2.Visible:=False;
    Label4.Visible:=False;
  End;*)
end;

procedure TForm_UserWiseCollection.CheckListBox_DepartmentClickCheck(
  Sender: TObject);
begin
      GetPatientInfo(CheckListBox_Department.ItemIndex,0);
end;

procedure TForm_UserWiseCollection.DBLCB_UserNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 8 then
     DBLCB_UserName.KeyValue := -1;

     if Key=VK_DELETE then
          DBLCB_UserName.KeyValue:=null;

end;

procedure TForm_UserWiseCollection.BitBtn1Click(Sender: TObject);
begin
     Try
          pb_IsSendToExcel:=True;
          BitBtnPreviewClick(Sender);
     Except
          pb_IsSendToExcel:=False;
     End;
end;

procedure TForm_UserWiseCollection.BtnfromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TForm_UserWiseCollection.FormCreate(Sender: TObject);
begin
     //Application.CreateForm(TForm_QRUserWiseCollnDetail,Form_QRUserWiseCollnDetail);
     Application.CreateForm(TForm_QRUserWiseCollnDetail_Manipal,Form_QRUserWiseCollnDetail_Manipal);
     //Application.CreateForm(TForm_QRUserWiseCollnDetailWithService,Form_QRUserWiseCollnDetailWithService);
     //Application.CreateForm(TForm_QRUserWiseColnSummary,Form_QRUserWiseColnSummary);
     Application.CreateForm(TForm_QRUserWiseColnSummaryManipal,Form_QRUserWiseColnSummaryManipal);

     //Application.CreateForm(TForm_AllUserCollectionReg,Form_AllUserCollectionReg);
     Application.CreateForm(TForm_QRRegBillwiseUserColn,Form_QRRegBillwiseUserColn);
end;

procedure TForm_UserWiseCollection.FormDestroy(Sender: TObject);
begin
     Form_QRUserWiseCollnDetail.Free;
     //Form_QRUserWiseCollnDetailWithService.Free;
     Form_QRUserWiseColnSummary.Free;
     //Form_AllUserCollectionReg.Free;
     Form_QRRegBillwiseUserColn.Free;
end;

procedure TForm_UserWiseCollection.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Close;
end;

procedure TForm_UserWiseCollection.FormShow(Sender: TObject);
var
i:Integer;
begin
     with Query_checklist do
     begin
          Close;
          Session := DM_Hospital.DB;
          Open;
     end;
     while not Query_checklist.Eof  do
     begin
          CheckListBox_Department.Items.add(Query_checklist.FieldByName('PACA_PATIENTCATEGORY').AsString);
          Query_checklist.Next;
     end;

     with QueryUserName do
     begin
          close;
          Session := DM_Hospital.DB;
          if gi_UserID=1 then
          SQL[1]:=' '
          else
          Begin
               if gs_IsUserViewCollection='R' then
               SQL[1]:=' Where USAM_IsUserViewCollection=''R'''
               else if gs_IsUserViewCollection='B' then
               SQL[1]:=' Where USAM_IsUserViewCollection=''B'''
               else
               SQL[1]:=' Where (0=0)';

               if gs_IsCounterUser='Y' then
               SQL[2]:=' and USMA_UserId='+IntToStr(gi_UserID)
               else
               SQL[2]:=' ';
          End;
          Open;
     end;


     if gs_IsUserViewCollection='R' then
     Begin
          CB_RegCollection.Checked:=True;
          CB_RegCollection.Visible:=False;

          CB_BillingOnly.Checked:=False;
          CB_BillingOnly.Visible:=False;
     End
     Else if gs_IsUserViewCollection='B' then
     Begin
          CB_RegCollection.Checked:=False;
          CB_RegCollection.Visible:=False;

          CB_BillingOnly.Checked:=True;
          CB_BillingOnly.Visible:=False;
     End
     else
     begin
          CB_RegCollection.Visible:=True;
          CB_BillingOnly.Visible:=True;
     end;
     //AddItemsInCheckListBox(CheckListBox1);


     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := serverdate.TodaysDate;
     DateEditXTo.text := serverdate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
end;

procedure TForm_UserWiseCollection.GetPatientInfo(ArrayIndex,
  InfoIndex: Integer);
  var  StrVal:TStringList;
begin
     StrVal := TStringList.Create;
     StrVal.CommaText := DeptPrivateData[ArrayIndex];
     StrVal.Free;
end;

procedure TForm_UserWiseCollection.SummarizeRegUserColn;
Var ls_TimeRange : string;
begin
     {if Trim(DBLCB_UserName.Text)='' then
     Begin
          With Form_AllUserCollectionReg Do
          Begin
               With QueryDisplay do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    Sql.Add(' Select UserName,SUM(CashAmount) as Amount,Sum(REFUNDAMOUNT) as RefAmount,SUM(CashAmount-REFUNDAMOUNT) as NetTotal');
                    Sql.Add(' FROM VW_HS_USER_WISE_COLL_DETAIL_N');
                    Sql.Add(' Where BillDate between ' + #39 + gs_From + #39+' and ' + #39 + gs_to + #39);
                    if CheckBoxTime.Checked=True then
                    Begin
                         Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit1.Text+#39+' End >='+#39+MaskEdit1.Text+#39+')');
                         Sql.Add(' and (Case when BillDate ='+#39 + gs_From + #39+' Then BillTime else '+#39+MaskEdit2.Text+#39+' End <='+#39+MaskEdit1.Text+#39+')');
                    end;

                    if DBLCB_UserName.KeyValue <> Null then
                    Sql.Add('AND USERID = ' + IntToStr(DBLCB_UserName.KeyValue))
                    else
                    Sql.Add('AND USERID In (Select USMA_UserId From HS_USMA_UserMain where USAM_IsUserViewCollection=''R'')');
                    Sql.Add(' Group by UserName');
                    Sql.Add(' ORDER BY USERNAME');
                    Open;
               end;

               QRLabelReportTitle.Caption:='User wise Collection Summary (Reg.)';
               QRLabelDate.Caption:=ServerDate.TodaysDate;

               If gi_datesystem = 0 Then
               Begin
                    ps_DateFrom := DateEditxFrom.VSDateAsText + ' BS(' +DateEditxFrom.ADDateAsText + ' AD)';
                    ps_DateTo := DateEditXTo.VSDateAsText + ' BS(' + DateEditXTo.ADDateAsText +' AD)';
               End
               Else
               Begin
                    ps_DateFrom := DateEditxFrom.ADDateAsText + ' AD(' +DateEditxFrom.VSDateAsText + ' BS)';
                    ps_DateTo := DateEditXTo.ADDateAsText + ' AD(' + DateEditXTo.VSDateAsText +' BS)';
               End;

               Date1.Caption:=ps_DateFrom;
               Date2.Caption:=ps_DateTo;
               QuickRep1.Preview;
               QueryDisplay.Close;
          End;
     End
     else
     begin
          With Form_QRRegBillwiseUserColn Do
          Begin
               With Query_CashBill Do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    if CB_AllUserDetail.Checked=False then
                    sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                            ' and BillBy='+IntToStr(DBLCB_UserName.KeyValue)//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')'
                    Else
                    sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;//+'AND ORGBILLCATEGORY in('+ls_ReportCategory+''')';
                    //SQL.SaveToFile('C:\Cash.Txt');
                    Open;
               End;

               With Query_CashRefund Do
               Begin
                    close;
                    DatabaseName := gs_DatabaseName;
                    if CB_AllUserDetail.Checked=False then
                    sql[9]:=' Where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                           DateEditXTo.text + #39+'And REDE_PayType=''CASH'' And REDE_RefundBy=' + IntToStr(DBLCB_UserName.KeyValue)//+'AND REDE_ORGBILLCATEGORY in('+ls_ReportCategory+''')'
                    Else
                    sql[9]:=' Where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                           DateEditXTo.text + #39+'And REDE_PayType=''CASH''';// AND REDE_ORGBILLCATEGORY in('+ls_ReportCategory+''')';
                    //SQL.SaveToFile('C:\CashRefund.Txt');
                    Open;
               End;

               With Query_CreditBill Do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    if CB_AllUserDetail.Checked=False then
                    sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39+
                            ' and BillBy='+IntToStr(DBLCB_UserName.KeyValue)
                    Else
                    sql[1]:=' and BillDate >='+#39+DateEditxFrom.Text+#39+' and BillDate<='+#39+DateEditXTo.Text+#39;
                    //SQL.SaveToFile('C:\Credit.Txt');
                    Open;
               End;


               With Query_CreditRefund Do
               Begin
                    close;
                    DatabaseName := gs_DatabaseName;
                    if CB_AllUserDetail.Checked=False then
                    sql[9]:=' where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                           DateEditXTo.text + #39+'And REDE_PayType=''CREDIT'' And REDE_RefundBy=' + IntToStr(DBLCB_UserName.KeyValue)
                    Else
                    sql[9]:=' where REDE_RefundDate >=' + #39 + DateEditxFrom.text + #39 + ' And REDE_RefundDate<=' + #39 +
                           DateEditXTo.text + #39+'And REDE_PayType=''CREDIT''';
                    SQL.SaveToFile('C:\CreditBill.Txt');
                    Open;
               End;

               QRLabelUser.Caption := DBLCB_UserName.text;
               QRLabelDate.Caption := serverdate.TodaysDate;
               QRLabelTime.Caption := serverdate.TodaysTime;


               If gi_datesystem = 0 Then
               Begin
                    ps_DateFrom := DateEditxFrom.VSDateAsText + ' BS(' +DateEditxFrom.ADDateAsText + ' AD)';
                    ps_DateTo := DateEditXTo.VSDateAsText + ' BS(' + DateEditXTo.ADDateAsText +' AD)';

               End
               Else
               Begin
                    ps_DateFrom := DateEditxFrom.ADDateAsText + ' AD(' +DateEditxFrom.VSDateAsText + ' BS)';
                    ps_DateTo := DateEditXTo.ADDateAsText + ' AD(' + DateEditXTo.VSDateAsText +' BS)';
               End;


               Date1.Caption := ps_DateFrom;
               Date2.Caption := ps_DateTo;
               QuickRep1.Prepare;
               QRLabel_TotalPage.Caption := IntToStr(QuickRep1.QRPrinter.PageCount);

               pi_CashSno:=0;
               pi_CashSnoIp:=0;
               pi_RefundSno:=0;
               pi_DepositSno:=0;
               pi_DepositRefundSno:=0;

               pi_ReceiptSno:=0;
               pi_ReceiptRefundSno:=0;

               pi_CreditSno:=0;
               pi_CreditRefundSno:=0;
               pi_ServiceTPSno:=0;

               if CB_DirectPrint.Checked=False then
               QuickRep1.Preview
               else
               QuickRep1.Print;

               Query_CashBill.close;
               Query_CashRefund.close;
               Query_CreditBill.close;
               Query_CreditRefund.Close;
          End;
     end;   }
end;

// Initialization
//
// RegisterClass(TFormUserWiseCollection);
//
// Finalization
//
// UnRegisterClass(TFormUserWiseCollection);

end.
