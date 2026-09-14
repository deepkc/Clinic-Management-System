unit UnitDeptTestWiseReport;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     DBCtrls, OleCtrls, DateEditXControl_TLB, StdCtrls, serverdate, Buttons,
     ExtCtrls,
     Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, Variants;

type
     TFormDeptTestWiseReport = class(TForm)
          Panel1: TPanel;
          Panel2: TPanel;
          Bevel1: TBevel;
          BitBtnPreview: TBitBtn;
          BitBtnExcel: TBitBtn;
          BitBtnCancel: TBitBtn;
          Label1: TLabel;
          Label2: TLabel;
          Label_Identification: TLabel;
          CMBDepartment: TDBLookupComboBox;
          StatusBar1: TStatusBar;
          Query_SubProcess: TOraQuery;
          Query_Process: TOraQuery;
          Label3: TLabel;
          DBLCBTestName: TDBLookupComboBox;
          Query_Department: TOraQuery;
          DataSource_Department: TDataSource;
          Query_TestName: TOraQuery;
          DataSource_TestName: TDataSource;
          GroupBox1: TGroupBox;
          RB_DepartmentWise: TRadioButton;
          RB_TestWise: TRadioButton;
          CheckBox_WithQty: TCheckBox;
          Table_TestWiseDeptWise: TOraTable;
          Query_Master: TOraQuery;
          DS_Master: TDataSource;
          Query_Detail: TOraQuery;
          Query_Void: TOraQuery;
          DateEditX_FromDate: TDateEditX;
          DateEditX_ToDate: TDateEditX;
          BtnFrom: TSpeedButton;
          BtnTo: TSpeedButton;
    qry_refdetail: TOraQuery;
          procedure BitBtnCancelClick(Sender: TObject);
          procedure BitBtnExcelClick(Sender: TObject);
          procedure BitBtnPreviewClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure CMBDepartmentKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure DBLCBTestNameKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure CMBDepartmentClick(Sender: TObject);
          procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
     private
          { Private declarations }
     public
          b_SendToExcel: Boolean;
          gs_SecManageDate: String;
          { Public declarations }
     end;

var
     FormDeptTestWiseReport: TFormDeptTestWiseReport;

implementation

uses Fxn,UnitSendToExcel,dm;
{$R *.DFM}

procedure TFormDeptTestWiseReport.BitBtnCancelClick(Sender: TObject);
begin
     close;
end;

procedure TFormDeptTestWiseReport.BitBtnPreviewClick(Sender: TObject);
begin
     DateEditX_FromDate.SystemOfDate := gi_datesystem;
     DateEditX_ToDate.SystemOfDate := gi_datesystem;
     gs_From := DateEditX_FromDate.text;
     gs_to := DateEditX_ToDate.text;
     DateEditX_FromDate.SystemOfDate := 0;
     DateEditX_ToDate.SystemOfDate := 0;
     with Query_Master Do
     Begin
          Close;
          Session:=dm_Hospital.db;
          sql.Clear;
          sql.Add('Select Distinct BD.DEPID,(Select Depname from department where depid=bd.depid)department From BillDetail BD');
          sql.Add('Where BD.BillDate>='+Quotedstr(gs_From)+' and BD.BillDate<='+Quotedstr(gs_to));
          if CMBDepartment.KeyValue<>NUll then
          sql.add (' and bd.depid='+inttostr(CMBDepartment.KeyValue));
          sql.Add('and (BD.BillType=''B'')');
          Open;
     End;
     With Query_Detail do
     Begin
          Close;
          Session:=dm_Hospital.db;
          Sql.Clear;
          sql.add('Select billno,billdate,(Select BSDATE from NEPALIEQUIVALENTENGLISHDATE where ADDATE=billdetail.billdate)nepalibilldate,');
          sql.add('patientid as labno,(select fname||'' ''||Lname from patientmain where patientid=billdetail.patientid)patientname,');
          sql.add('Servicetype,(Select depname from department where depid=billdetail.depid)Category,disper,amount as rate,');
          sql.add('sum(amount*qty-amount*qty*DISPER/100)amount,');
          sql.Add('sum((amount*qty-amount*qty*DISPER/100)*0.05)tax,');
          sql.Add('sum((amount*qty-amount*qty*DISPER/100)+((amount*qty-amount*qty*DISPER/100)*0.05)) GrandTotal,');
          sql.add('paytype,cancelstatus,(select DOCNAME from doctor where doccode=billdetail.REFDOCCODE)ReferBy,');
          sql.add('(select username from LAB_USERMAIN where userid=billdetail.BILLBY)ISSUEDBY,');
          sql.Add('(select username from LAB_USERMAIN where userid=(Select VERIFIEDBY from patienttest where billno=billdetail.billno and rownum=1))||'', ''||');
          sql.Add('(Select DOCNAME from doctor where docid=(Select docid from VerificationDoctor where sampleno=(Select Distinct sampleno from samplecollection where billno=billdetail.billno)))verifiedby from billdetail');
          sql.add('where BillDate>='+Quotedstr(gs_From)+' and BillDate<='+Quotedstr(gs_to));
          //sql.add('and cancelstatus=''N''');
          sql.Add('and depid=:depid');
          sql.add('Group by billno,billdate,patientid,Servicetype,depid,disper,amount,paytype,cancelstatus,REFDOCCODE,BILLBY');
//          Sql.SaveToFile('C:\test.txt');
          Open;
     End;

     With qry_refdetail do
     begin
          Close;
          Session:=dm_Hospital.db;
          Sql.Clear;
          sql.add('Select billno,RefundDate,(Select BSDATE from NEPALIEQUIVALENTENGLISHDATE where ADDATE=RefundDetail.RefundDate)nepalirefunddate,');
          sql.add('patientid as labno,(select fname||'' ''||Lname from patientmain where patientid=RefundDetail.patientid)patientname,');
          sql.add('Servicetype,(Select depname from department where depid=RefundDetail.depid)Category,disper,amount as rate,');
          sql.add('sum(amount*qty-amount*qty*DISPER/100)amount,');
          sql.Add('sum((amount*qty-amount*qty*DISPER/100)*0.05)tax,');
          sql.Add('sum((amount*qty-amount*qty*DISPER/100)+((amount*qty-amount*qty*DISPER/100)*0.05)) GrandTotal,');
          sql.add('paytype,(select DOCNAME from doctor where doccode=RefundDetail.REFDOCCODE)ReferBy,');
          sql.add('(select username from LAB_USERMAIN where userid=RefundDetail.REFUNDBY)REFUNDBY');
          sql.Add('from RefundDetail');
          sql.add('where RefundDate>='+Quotedstr(gs_From)+' and RefundDate<='+Quotedstr(gs_to));
          //sql.add('and cancelstatus=''N''');
          sql.Add('and depid=:depid');
          sql.add('Group by billno,RefundDate,patientid,Servicetype,depid,disper,amount,paytype,REFDOCCODE,REFUNDBY');
//          Sql.SaveToFile('C:\test.txt');
          Open;
     end;
//     SendToExcelMasterDetail(Query_Master,Query_Detail,'Departmentwise/Testwise Report',Serverdate.TodaysDate,
//               '', gs_HospitalName, gs_HospitalAddress,'',6);
     SendToExcelMasterMultiDetail(Query_Master,Query_Detail,qry_refdetail,'Departmentwise/Testwise Report',Serverdate.TodaysDate,
               '', gs_HospitalName, gs_HospitalAddress,'',6);

End;

procedure TFormDeptTestWiseReport.BitBtnExcelClick(Sender: TObject);
Var
     ls_ReportTitle: String;
begin
     if MessageDlg('Are you sure to send in Excel ?', mtconfirmation,
          [mbyes, mbno], 0) = mryes then
     Begin
          b_SendToExcel := True;
          BitBtnPreviewClick(Sender);
     End;
End;

procedure TFormDeptTestWiseReport.FormShow(Sender: TObject);
begin
     DateEditX_FromDate.SystemOfDate := gi_datesystem;
     DateEditX_ToDate.SystemOfDate := gi_datesystem;
     DateEditX_FromDate.text := serverdate.TodaysDate;
     DateEditX_ToDate.text := serverdate.TodaysDate;
     DateEditX_FromDate.SystemOfDate := 0;
     DateEditX_ToDate.SystemOfDate := 0;
     Query_Department.Open;
     Query_TestName.Open;
     b_SendToExcel := False;
     CMBDepartment.SetFocus;
end;

procedure TFormDeptTestWiseReport.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_FromDate, BtnFrom);
end;

procedure TFormDeptTestWiseReport.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_ToDate, BtnTo);
end;

procedure TFormDeptTestWiseReport.FormCreate(Sender: TObject);
begin
     //
end;

procedure TFormDeptTestWiseReport.FormDestroy(Sender: TObject);
begin
     //
end;

procedure TFormDeptTestWiseReport.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     IF Key = 27 Then
          close;
     IF Key = VK_F1 Then
          BitBtnPreviewClick(Sender);
     IF Key = VK_F2 Then
          BitBtnExcelClick(Sender);
     IF Key = 13 Then
          keybd_event(9, 13, 0, 0);
end;

procedure TFormDeptTestWiseReport.CMBDepartmentKeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Delete Then
     Begin
          With Query_TestName Do
          Begin
               close;
               Sql[1] := ' Where 39=39 ';
               Open;
          End;
          CMBDepartment.KeyValue := NULL;
     End;
end;

procedure TFormDeptTestWiseReport.DBLCBTestNameKeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Delete Then
          DBLCBTestName.KeyValue := NULL;
end;

procedure TFormDeptTestWiseReport.CMBDepartmentClick(Sender: TObject);
begin
     With Query_TestName Do
     Begin
          close;
          Sql[1] := ' Where DepID=' + VarToStr(CMBDepartment.KeyValue);
          Open;
     End;
end;

end.
