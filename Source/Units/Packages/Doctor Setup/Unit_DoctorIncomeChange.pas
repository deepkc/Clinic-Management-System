unit Unit_DoctorIncomeChange;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ComCtrls, ExtCtrls, StdCtrls, Buttons, DBCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, OleCtrls,
     DateEditXControl_TLB, ServerDate, Grids, DBGrids, Fxn, Variants, DM, Unit_Master;

type
     TForm_DoctorIncomeCorrect = class(TForm)
          Panel1: TPanel;
          StatusBar1: TStatusBar;
          Panel2: TPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Query_PrevDoctor: TOraQuery;
          DS_PrevDoctor: TDataSource;
          DBLCB_Doctor: TDBLookupComboBox;
          DateEditXPaymentDate: TDateEditX;
          BitBtn_FromDate: TBitBtn;
          EditBillNo: TEdit;
          EditRemarks: TEdit;
          Query_Void: TOraQuery;
          QueryDoctorBill: TOraQuery;
          Label5: TLabel;
          DBLCB_DeservedDoctor: TDBLookupComboBox;
          DBGrid1: TDBGrid;
          DSDoctorBill: TDataSource;
          Query_Department: TOraQuery;
          DS_Department: TDataSource;
          Query_ActDoctor: TOraQuery;
          DS_ActulaDoctor: TDataSource;
          Query_ActualDept: TOraQuery;
          DS_ActualDept: TDataSource;
          Query_Process: TOraQuery;
          Edit_PatientId: TEdit;
          Label8: TLabel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
    Label_PatientName: TLabel;
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure BitBtn_FromDateClick(Sender: TObject);
          procedure DBLCB_DoctorClick(Sender: TObject);
          procedure DBGrid1CellClick(Column: TColumn);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_PatientIdKeyPress(Sender: TObject; var Key: Char);
          procedure DBLCB_PrevDocDeptKeyPress(Sender: TObject; var Key: Char);
          procedure DBLCB_ActualDocDeptKeyPress(Sender: TObject; var Key: Char);
          procedure DBLCB_DeservedDoctorKeyPress(Sender: TObject; var Key: Char);
          procedure BB_SaveClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure GetRegBillList;
          procedure SetBillNoDepDocInfo;
    procedure Edit_PatientIdExit(Sender: TObject);
    procedure EditBillNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          b_FlagNew: Boolean;
          pi_OldDocPaymentId, pi_PatientId: Integer;
          ps_AccessFrom: String;
          { Public declarations }
     end;

var
     Form_DoctorIncomeCorrect: TForm_DoctorIncomeCorrect;

implementation

{$R *.DFM}

procedure TForm_DoctorIncomeCorrect.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = 27 Then
          Close;
end;

procedure TForm_DoctorIncomeCorrect.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_DoctorIncomeCorrect.BB_SaveClick(Sender: TObject);
Var
     li_DRIncomeCorrectionLogId, li_PatientId: Integer;
     ls_ServiceType,ls_Remarks: String;
     DEX_BillDate,DEX_Today :TDateEditX;
begin
     if trim(EditRemarks.Text)='' then
     begin
          MessageDlg(' You Must Have To Put Remarks To Change The Doctor.', mtWarning, [mbok], 0);
          editremarks.SetFocus;
          Exit;
     end;
     IF Trim(Edit_PatientId.Text) = '' Then
     Begin
          MessageDlg(' You Must Have To Put Patient No.', mtWarning, [mbok], 0);
          Edit_PatientId.SetFocus;
          Exit;
     End;

     IF Trim(DBLCB_Doctor.Text) = '' Then
     Begin
          MessageDlg(' Plz Select Prev. Doctor First.', mtInformation, [mbok], 0);
          DBLCB_Doctor.SetFocus;
          Exit;
     End;

     IF Trim(DBLCB_DeservedDoctor.Text)= '' Then
     Begin
          MessageDlg(' Plz Select Actual Doctor First.', mtInformation, [mbok], 0);
          DBLCB_DeservedDoctor.SetFocus;
          Exit;
     End;

     IF (Trim(EditBillNo.Text) = '') Then
     Begin
          MessageDlg(' Plz Put Bill No.', mtInformation, [mbok], 0);
          EditBillNo.SetFocus;
          Exit;
     End;

     if DBLCB_Doctor.KeyValue=DBLCB_DeservedDoctor.KeyValue then
     begin
          MessageDlg('Current Consultant and New Changing Consultant is Same !', mtConfirmation, [mbok], 0);
          DBLCB_DeservedDoctor.SetFocus;
          exit;
     end;

     DEX_BillDate:=TDateEditX.Create(Nil);
     DEX_Today:=TDateEditX.Create(Nil);

     DEX_BillDate.SystemOfDate:=gi_datesystem;
     DEX_Today.SystemOfDate:=gi_datesystem;

     DEX_BillDate.text:=QueryDoctorBill.FieldByName('BillDate').AsString;
     DEX_Today.text:=TodaysDate;


     IF (DEX_Today.ADDateAsDate- DEX_BillDate.ADDateAsDate) > 1 Then
     Begin
          MessageDlg('Sorry This Bill is Old More Than One Days.', mtWarning, [mbok], 0);
          EditBillNo.SetFocus;
          Exit;
     End;

     { whether Doctor Fraction Exist or not
       Find Is Fraction Locked or not }
     IF gs_IsDoctorFractionActive = 'Y' Then
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select frde_IsFractionLocked IsFractionLocked From HS_FRDE_FRACTIONDETAIL where frde_BillNo=' + #39 + EditBillNo.Text + #39);
               Open;
          End;

          IF Query_Process.FieldByName('IsFractionLocked').AsString = 'Y' Then
          Begin
               MessageDlg('Sorry ! You Cannot Change Doctor. Fraction is Already Locked(Booked) by Account.', mtWarning, [mbok], 0);
               Edit_PatientId.SetFocus;
               Exit;
          End;
     End;

     Try
          DM_Hospital.Db.StartTransaction;

          if Copy(EditBillNo.Text,0,2)='CS' then
          begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update hs_bide_BillDetail Set bide_RefDocid=' +inttostr(DBLCB_DeservedDoctor.KeyValue));
                    sql.add(' where bide_BillNo=' + #39 + EditBillNo.Text + #39 + ' and bide_RefDocid='+inttostr(DBLCB_Doctor.KeyValue));
                    ExecSQL;
               End;

               with Query_Process do
               begin
                    Close;
                    sql.Clear;
                    sql.Add('Update hs_bima_billmaster set bima_refdocid = '+IntToStr(DBLCB_DeservedDoctor.KeyValue));
                    sql.Add('where bima_billno ='+QuotedStr(EditBillNo.Text) +'and bima_refdocid= '+IntToStr(DBLCB_Doctor.KeyValue));
                    ExecSQL;
               end;


               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update hs_sebd_servicebilldetail Set sebd_RefDocid='+inttostr(DBLCB_DeservedDoctor.KeyValue));
                    sql.Add('where sebd_billdetailid in(select bide_billdetailid from hs_bide_billdetail where sebd_BillNo='+#39 + EditBillNo.Text+#39);
                    sql.Add(' and sebd_RefDocid='+inttostr(DBLCB_Doctor.KeyValue)+')');
                    ExecSQL;
               End;



          end
          else
          begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update hs_sebd_servicebilldetail Set sebd_RefDocid='+ inttostr(DBLCB_DeservedDoctor.KeyValue));
                    sql.add(' where sebd_BillNo=' + #39 + EditBillNo.Text + #39 + ' and sebd_RefDocid='+inttostr(DBLCB_Doctor.KeyValue));
                    ExecSQL;
               End;

               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update hs_sebm_servicebillmaster Set sebm_RefDocid='+ inttostr(DBLCB_DeservedDoctor.KeyValue));
                    sql.add(' where sebm_BillNo=' + #39 + EditBillNo.Text + #39 + ' and sebm_RefDocid='+inttostr(DBLCB_Doctor.KeyValue));
                    ExecSQL;
               End;
          end;


          if Copy(EditBillNo.Text,0,2)='CS' Then
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    //sql.add(' Update FractionDetail Set DocCode=' + #39 + DBLCB_DeservedDoctor.KeyValue + #39);
                    sql.Add('Update hs_frde_FractionDetail Set');
                    sql.add(' frde_DocId=' + IntToStr(Query_ActDoctor.FieldByName('doct_DocId').AsInteger));
                    sql.add(' where frde_DocId=' + IntToStr(Query_PrevDoctor.FieldByName('doct_DocId').AsInteger));
                    sql.add(' and frde_BillNo=' + #39 + EditBillNo.Text + #39);
                   // sql.add(' and BillType=''R''');
                    ExecSQL;
               End;
          End;

          ls_Remarks:='Change Ref.DocID From '+IntToStr(DBLCB_Doctor.KeyValue)+ ' To '+ IntToStr(DBLCB_DeservedDoctor.KeyValue)+' Of PatientId  '+Edit_PatientId.Text+ '   And BillNo '+EditBillNo.Text;
          SaveGlobalLog('BILLING','REFDOCCODECHANGE',IntToStr(GI_USERID),TodaysDate,TodaysTime,ls_Remarks);

          {    SaveConsultantCorrection(BILLDETAILID,PATIENTID,INPATIENTID,DATAPOSTBY:Integer;
          PATIENTTYPE,PREVDOCCODE,CURRDOCCODE,BILLNO,DATAPOSTDATE,DATAPOSTTIME,REMARKS:String);     }

          {SaveConsultantCorrection(Query_Void.FieldByName('BillDetailId').AsInteger
                    ,pi_PatientId,0,gi_UserId,'OP',
                    Query_PrevDoctor.FieldByName('DOCCODE').AsString,
                    Query_ActDoctor.FieldByName('DOCCODE').AsString,EditBillNo.Text,
                    TodaysDate,TodaysTime,EditRemarks.Text);  }


          DM_Hospital.Db.Commit;
          ShowDoneMessage;
     Except
          DM_Hospital.Db.RollBack;
          MessageDlg('Failure To Save Data.', mtWarning, [mbok], 0);
          Exit;
     End;

     DBLCB_Doctor.KeyValue := NULL;
     QueryDoctorBill.Close;
     DBLCB_DeservedDoctor.KeyValue := NULL;
     EditBillNo.Text := '';
     EditRemarks.Text := '';
     GetRegBillList;
End;

procedure TForm_DoctorIncomeCorrect.FormShow(Sender: TObject);
begin
     gs_IsDoctorFractionActive:='Y';
     Query_PrevDoctor.Close;
     Query_PrevDoctor.sql[1]:='';
     Query_PrevDoctor.Open;

     Query_ActDoctor.Close;
     Query_ActDoctor.Open;

     DBLCB_Doctor.KeyValue := NULL;
     DBLCB_DeservedDoctor.KeyValue := NULL;



     DateEditXPaymentDate.SystemOfDate := gi_DateSystem;
     DateEditXPaymentDate.Text := TodaysDate;
     ChangeCaption(BitBtn_FromDate);

     EditBillNo.Text := '';
     EditRemarks.Text := '';

     ps_AccessFrom := 'REG';

     Edit_PatientId.SetFocus;
end;

procedure TForm_DoctorIncomeCorrect.BitBtn_FromDateClick(Sender: TObject);
begin
    // ChangeDateSystem(DateEditXPaymentDate, BitBtn_FromDate);
end;

procedure TForm_DoctorIncomeCorrect.DBLCB_DoctorClick(Sender: TObject);
begin
     GetRegBillList;
end;


procedure TForm_DoctorIncomeCorrect.GetRegBillList;
Begin
     if Trim(Edit_PatientId.Text)='' then Exit;

     pi_PatientId:=StrToInt(Edit_PatientId.Text);

     With QueryDoctorBill do
     Begin
          Close;
          sql.Clear;
          {sql.add(' Select DepId,BillNo,BillDate,BillTime,PatientId,PayType,Service,Sum((Qty*Amount)+VatAmt-(Qty*Amount*DisPer/100)) as TotalAmt,');
          sql.add(' (Select DocCode From BillDetail where BillNo=BD.BillNo and NVL(DocCode,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1) as DocCode,');
          sql.add(' (Select DocName From Doctor where DocCode In (Select DocCode From BillDetail where BillNo=BD.BillNo');
          sql.add(' and NVL(DocCode,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DocName, ');
          sql.add(' (Select DepName From Department where DepId In (Select DepId From BillDetail where BillNo=BD.BillNo');
          sql.add(' and NVL(DocCode,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DepName');
          sql.add(' From BillDetail BD where BillNo In (Select BillNo From BillDetail where');
          sql.add(' PatientId=' + Edit_PatientId.Text);
          IF Trim(DBLCB_Doctor.Text)<>'' Then
          sql.add(' and DocCode=' + #39 + DBLCB_Doctor.KeyValue +#39);
          sql.add(' and BillType=''R''');
          sql.add(' ) Group By DepId,BillNo,BillTime,BillDate,PatientId,PayType,Service');
          sql.add(' Order By BillDate Desc ,BillNo Desc');}
          sql.add('Select BIDE_DepId DEPID,BIDE_BillNo BILLNO,BIDE_BillDate BILLDATE,BIDE_BillTime BILLTIME,BIDE_PatientId PATIENTID,BIDE_PayType PAYTYPE,BIDE_Service SERVICE,Sum((BIDE_Qty*BIDE_Amount)+BIDE_VatAmt-(BIDE_Qty*BIDE_Amount*BIDE_DisPer/100)) as TotalAmt,');
          sql.add('(Select BIDE_REFDOCID From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo');
          //sql.add('and NVL(BIDE_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1) as DocCode,');
          sql.add('and NVL(BIDE_REFDOCID,0) Not In (0) and RowNum=1) as DocID,');

          sql.add('(Select DOCT_DocName From HS_DOCT_Doctor where DOCT_DocID In (Select BIDE_REFDOCID From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo');
          //sql.add('and NVL(BIDE_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DocName,');
          sql.add('and NVL(BIDE_REFDOCID,0) Not In (0) and RowNum=1)) as DocName,');

          sql.add('(Select DEPT_DepName From HS_DEPT_Department');
          //sql.add('where DEPT_DepId In (Select BIDE_DepId From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo and NVL(BIDE_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DepName');
          sql.add('where DEPT_DepId In (Select BIDE_DepId From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo and  NVL(BIDE_REFDOCID,0) Not In (0) and RowNum=1)) as DepName');
          sql.add('From HS_BIDE_BillDetail BD where BIDE_BillNo In (Select BIDE_BillNo From HS_BIDE_BillDetail where');
          sql.add(' BIDE_PatientId=' + Edit_PatientId.Text);
          IF Trim(DBLCB_Doctor.Text)<>'' Then
          sql.add(' and BIDE_Refdoccode=' + #39 + DBLCB_Doctor.KeyValue +#39);
          sql.add('and BIDE_BillType=''B'' )');
          sql.add('and BIDE_billdetailid not in(select REDE_billdetailid from HS_REDE_refunddetail)');
          sql.add('Group By BIDE_DepId,BIDE_BillNo,BIDE_BillTime,BIDE_BillDate,BIDE_PatientId,BIDE_PayType,BIDE_Service');
          sql.add('union');
          sql.add('Select SEBD_DepId DEPID,SEBD_BillNo BILLNO,SEBD_BillDate BILLDATE,SEBD_BillTime BILLTIME,SEBD_PatientId PATIENTID,SEBD_PayType PAYTYPE,SEBD_Service SERVICE,Sum((SEBD_Qty*SEBD_Amount)+SEBD_VatAmt-(SEBD_Qty*SEBD_Amount*SEBD_DisPer/100)) as TotalAmt,');
          sql.add('(Select SEBD_REFDOCID From HS_SEBD_servicebilldetail where SEBD_BillNo=BD.SEBD_BillNo');
          //sql.add('and NVL(SEBD_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1) as DocCode,');
          sql.add('and NVL(SEBD_REFDOCID,0) Not In (0) and RowNum=1) as DocID,');

          sql.add('(Select DOCT_DocName From HS_DOCT_Doctor where DOCT_DocID In (Select SEBD_REFDOCCODE From HS_SEBD_servicebilldetail where SEBD_BillNo=BD.SEBD_BillNo');
          //sql.add('and NVL(SEBD_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DocName,');
          sql.add('and NVL(SEBD_REFDOCID,0) Not In (0) and RowNum=1)) as DocName,');

          sql.add('(Select DEPT_DepName From HS_DEPT_Department');
          //sql.add('where DEPT_DepId In (Select SEBD_DepId From HS_SEBD_servicebilldetail where SEBD_BillNo=BD.SEBD_BillNo and NVL(SEBD_REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DepName');
          sql.add('where DEPT_DepId In (Select SEBD_DepId From HS_SEBD_servicebilldetail where SEBD_BillNo=BD.SEBD_BillNo and NVL(SEBD_REFDOCID,0) Not In (0) and RowNum=1)) as DepName');
          sql.add('From HS_SEBD_servicebilldetail BD where SEBD_BillNo In (Select SEBD_BillNo From HS_SEBD_servicebilldetail where');
          sql.add(' SEBD_PatientId=' + Edit_PatientId.Text);
          IF Trim(DBLCB_Doctor.Text)<>'' Then
          sql.add(' and SEBD_RefDOcCode=' + #39 + DBLCB_Doctor.KeyValue +#39);
          sql.add('and SEBD_billdetailId=0  )');
          sql.add('Group By SEBD_DepId,SEBD_BillNo,SEBD_BillTime,SEBD_BillDate,SEBD_PatientId,SEBD_PayType,SEBD_Service ');
          sql.add('order by billno');
          sql.SaveToFile('c:\doc1.txt');

          Open;
     End;

     if QueryDoctorBill.RecordCount <=0 then
     EditBillNo.Text:='';

End;

procedure TForm_DoctorIncomeCorrect.SetBillNoDepDocInfo;
begin
     IF QueryDoctorBill.RecordCount > 0 Then
     Begin
          EditBillNo.Text := QueryDoctorBill.FieldByName('BillNo').AsString;
          Query_PrevDoctor.Locate('Doct_DocID',QueryDoctorBill.FieldByName('DocID').AsString,[]);
          DBLCB_Doctor.KeyValue:=QueryDoctorBill.FieldByName('DocID').AsString;
          //DBLCB_DocTOR.KeyValue:=Query_PrevDoctor.FieldByName('DepId').AsInteger;

     End;
end;

procedure TForm_DoctorIncomeCorrect.DBGrid1CellClick(Column: TColumn);
begin
     SetBillNoDepDocInfo;
end;

procedure TForm_DoctorIncomeCorrect.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     //IF (Key = VK_UP) or (Key = VK_Down) Then
     if Key=VK_Down then
     QueryDoctorBill.Next;

     if Key=VK_Up then
     QueryDoctorBill.Prior;

     SetBillNoDepDocInfo;
end;

procedure TForm_DoctorIncomeCorrect.EditBillNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=VK_Down then
     QueryDoctorBill.Next;

     if Key=VK_Up then
     QueryDoctorBill.Prior;

     SetBillNoDepDocInfo;
end;

procedure TForm_DoctorIncomeCorrect.Edit_PatientIdExit(Sender: TObject);
begin
     GetRegBillList;
end;

procedure TForm_DoctorIncomeCorrect.Edit_PatientIdKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
     Begin
          IF Trim(Edit_PatientId.Text) = '' Then
          Begin
               MessageDlg('Plz Put Patient No.', mtInformation, [mbok], 0);
               Edit_PatientId.SetFocus;
               Exit;
          End;

          GetRegBillList;
          EditBillNo.SetFocus;
     End;
end;

procedure TForm_DoctorIncomeCorrect.DBLCB_PrevDocDeptKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          DBLCB_Doctor.SetFocus;
end;

procedure TForm_DoctorIncomeCorrect.DBLCB_ActualDocDeptKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          DBLCB_DeservedDoctor.SetFocus;
end;

procedure TForm_DoctorIncomeCorrect.DBLCB_DeservedDoctorKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          EditBillNo.SetFocus;
end;

end.
