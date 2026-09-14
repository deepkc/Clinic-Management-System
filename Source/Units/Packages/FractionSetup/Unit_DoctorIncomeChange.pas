unit Unit_DoctorIncomeChange;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ComCtrls, ExtCtrls, StdCtrls, Buttons, DBCtrls, Db, DBTables, OleCtrls,
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
          Query_PrevDoctor: TQuery;
          DS_PrevDoctor: TDataSource;
          DBLCB_Doctor: TDBLookupComboBox;
          DateEditXPaymentDate: TDateEditX;
          BitBtn_FromDate: TBitBtn;
          EditBillNo: TEdit;
          EditRemarks: TEdit;
          Query_Void: TQuery;
          QueryDoctorBill: TQuery;
          Label5: TLabel;
          DBLCB_DeservedDoctor: TDBLookupComboBox;
          DBGrid1: TDBGrid;
          DSDoctorBill: TDataSource;
          Query_Department: TQuery;
          DS_Department: TDataSource;
          Query_ActDoctor: TQuery;
          DS_ActulaDoctor: TDataSource;
          Query_ActualDept: TQuery;
          DS_ActualDept: TDataSource;
          Query_Process: TQuery;
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
               sql.add(' Select IsFractionLocked From FractionDetail where BillNo=' + #39 + EditBillNo.Text + #39);
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
                    sql.add(' Update BillDetail Set RefDocCode=' + #39 + DBLCB_DeservedDoctor.KeyValue + #39);
                    sql.add(' where BillNo=' + #39 + EditBillNo.Text + #39 + ' and RefDocCode=' + #39 + DBLCB_Doctor.KeyValue + #39);
                    ExecSQL;
               End;


               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update servicebilldetail Set RefDocCode='+#39+DBLCB_DeservedDoctor.KeyValue+#39);
                    sql.Add('where billdetailid in(select billdetailid from billdetail where BillNo='+#39 + EditBillNo.Text+#39);
                    sql.Add(' and RefDocCode='+#39+DBLCB_Doctor.KeyValue+#39+')');
                    ExecSQL;
               End;

          end
          else
          begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update servicebilldetail Set RefDocCode=' + #39 + DBLCB_DeservedDoctor.KeyValue + #39);
                    sql.add(' where BillNo=' + #39 + EditBillNo.Text + #39 + ' and RefDocCode=' + #39 + DBLCB_Doctor.KeyValue + #39);
                    ExecSQL;
               End;
          end;


          if Copy(EditBillNo.Text,0,2)='CS' Then
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update FractionDetail Set DocCode=' + #39 + DBLCB_DeservedDoctor.KeyValue + #39);
                    sql.add(' ,DocId=' + IntToStr(Query_ActDoctor.FieldByName('DocId').AsInteger));
                    sql.add(' where DocId=' + IntToStr(Query_PrevDoctor.FieldByName('DocId').AsInteger));
                    sql.add(' and BillNo=' + #39 + EditBillNo.Text + #39);
                   // sql.add(' and BillType=''R''');
                    ExecSQL;
               End;
          End;

          ls_Remarks:='Change Ref.DocCode From '+DBLCB_Doctor.KeyValue+ ' To '+ DBLCB_DeservedDoctor.KeyValue+' Of PatientId  '+Edit_PatientId.Text+ '   And BillNo '+EditBillNo.Text;
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
          sql.add('Select DepId,BillNo,BillDate,BillTime,PatientId,PayType,Service,Sum((Qty*Amount)+VatAmt-(Qty*Amount*DisPer/100)) as TotalAmt,');
          sql.add('(Select REFDOCCODE From BillDetail where BillNo=BD.BillNo');
          sql.add('and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1) as DocCode,');
          sql.add('(Select DocName From Doctor where DocCode In (Select REFDOCCODE From BillDetail where BillNo=BD.BillNo');
          sql.add('and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DocName,');
          sql.add('(Select DepName From Department');
          sql.add('where DepId In (Select DepId From BillDetail where BillNo=BD.BillNo and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DepName');
          sql.add('From BillDetail BD where BillNo In (Select BillNo From BillDetail where');
          sql.add(' PatientId=' + Edit_PatientId.Text);
          IF Trim(DBLCB_Doctor.Text)<>'' Then
          sql.add(' and Refdoccode=' + #39 + DBLCB_Doctor.KeyValue +#39);
          sql.add('and BillType=''B'' )');
          sql.add('and billdetailid not in(select billdetailid from refunddetail)');
          sql.add('Group By DepId,BillNo,BillTime,BillDate,PatientId,PayType,Service');
          sql.add('union');
          sql.add('Select DepId,BillNo,BillDate,BillTime,PatientId,PayType,Service,Sum((Qty*Amount)+VatAmt-(Qty*Amount*DisPer/100)) as TotalAmt,');
          sql.add('(Select REFDOCCODE From servicebilldetail where BillNo=BD.BillNo');
          sql.add('and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1) as DocCode,');
          sql.add('(Select DocName From Doctor where DocCode In (Select REFDOCCODE From servicebilldetail where BillNo=BD.BillNo');
          sql.add('and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DocName,');
          sql.add('(Select DepName From Department');
          sql.add('where DepId In (Select DepId From servicebilldetail where BillNo=BD.BillNo and NVL(REFDOCCODE,''HOS01'') Not In (''HOS'',''HOS01'') and RowNum=1)) as DepName');
          sql.add('From servicebilldetail BD where BillNo In (Select BillNo From servicebilldetail where');
          sql.add(' PatientId=' + Edit_PatientId.Text);
          IF Trim(DBLCB_Doctor.Text)<>'' Then
          sql.add(' and RefDOcCode=' + #39 + DBLCB_Doctor.KeyValue +#39);
          sql.add('and billdetailId=0  )');
          sql.add('Group By DepId,BillNo,BillTime,BillDate,PatientId,PayType,Service ');
          sql.add('order by billno');


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
          Query_PrevDoctor.Locate('DocCode',QueryDoctorBill.FieldByName('DocCode').AsString,[]);
          DBLCB_Doctor.KeyValue:=QueryDoctorBill.FieldByName('DocCode').AsString;
          //DBLCB_PrevDocDept.KeyValue:=Query_PrevDoctor.FieldByName('DepId').AsInteger;

     End;
end;

procedure TForm_DoctorIncomeCorrect.DBGrid1CellClick(Column: TColumn);
begin
     SetBillNoDepDocInfo;
end;

procedure TForm_DoctorIncomeCorrect.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF (Key = VK_UP) or (Key = VK_Down) Then
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
