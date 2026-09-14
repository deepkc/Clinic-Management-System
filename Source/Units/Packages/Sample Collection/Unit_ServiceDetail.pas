unit Unit_ServiceDetail;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn, ServerDate,
     Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, dm, OleCtrls,UnitSendToExcel, DateEditXControl_TLB,
     Unit_Master, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_ServiceDetail = class(TForm)
          Panel3: TPanel;
          BtnCancel: TBitBtn;
          Panel1: TPanel;
          DBGrid_ServiceCharge: TSMDBGrid;
          GroupBox1: TGroupBox;
          Label4: TLabel;
          SPB_From: TSpeedButton;
          Label5: TLabel;
          SPB_To: TSpeedButton;
          DEX_From: TDateEditX;
          DEX_To: TDateEditX;
          BB_Refresh: TSpeedButton;
          DS_List: TDataSource;
          Query_List: TOraQuery;
          Label1: TLabel;
          Edit1: TEdit;
          Edit2: TEdit;
          Label2: TLabel;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Rg_Status: TRadioGroup;
    Edit3: TEdit;
    Label3: TLabel;
          procedure BB_RefreshClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure SPB_FromClick(Sender: TObject);
          procedure SPB_ToClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BtnCancelClick(Sender: TObject);
          procedure DBGrid_ServiceChargeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Rg_StatusClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_ServiceDetail: TForm_ServiceDetail;

implementation

{$R *.dfm}

procedure TForm_ServiceDetail.BB_RefreshClick(Sender: TObject);
begin
    { With Query_List do
     begin
          Close;
          Session := Dm_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select (Select UserName from ' + gs_Hos_DB_UserName + '.UserMain Where UserID=Bd.ModifyBy)UserName');
          SQL.Add(',(Select PatientName from ' + gs_Hos_DB_UserName + '.PatientMain Where PatientID=Bd.PatientID)PatientName');
          SQL.Add(',(Select Max(TestProgressStatus) From ' + gs_Hos_DB_UserName + '.PatientTest Where PatientTestID=' +
            'Bd.PatientTestId)TestProgressStatus');
          SQL.Add(',(Select DailyNo From ' + gs_Hos_DB_UserName + '.PatientTest Where PatientTestID=' +
            'Bd.PatientTestId)DailyNo');
          SQL.Add(',Bd.BillNo as FinalBillNo');
          Sql.Add(',(Select Billno from '+gs_Hos_DB_UserName+'.billdetail where prevbillno=bd.billno and rownum=1)refundbillno');
          SQL.Add(',(Select Sampleno From SampleCollection Where PatientTestID in (select Patienttestid from ' + gs_Hos_DB_UserName + '.PatientTest Where PatientTestID=' +
            'Bd.PatientTestId and rownum=1))SampleNO');
          SQL.Add(' ,Bd.* from ' + gs_Hos_DB_UserName + '.BillDetail Bd,SampleCollection SC');
          // SQL.Add('Where Patientid='+IntToStr(gi_PatientID));
          Sql.Add('Where bd.Patienttestid=Sc.PatienttestID');
          //SQL.Add('Where (BillNo Like ''CS%'' or BillNo Like ''TP%'')');
          SQL.Add('And Sc.SampleTakenDate Between ' + #39 + DEX_From.ADDateAsText + #39 + ' And ' + #39 + DEX_To.ADDateAsText + #39);
          // if Rb_OnlyMe.Checked then
          // SQL.Add('And BillBy='+IntToStr(gi_UserID));
          SQL.Add('And Bd.BillDetailId not in (SELECT   BillDetailID FROM   ' + gs_Hos_DB_UserName + '.BILLDETAIL');
          SQL.Add('WHERE   Bd.PatientTestID > 0 AND CANCELSTATUS=''Y'' AND BD.PATIENTID=Bd.PATIENTID)');
          SQL.Add('And BD.DepID in (Select Depid from ' + gs_Hos_DB_UserName + '.Department Where DepType=' + #39 + GetUserDepType(gi_UserID) + #39 + ' And DepID in ('+gs_UserDepId+'))');
          SQL.Add('Order by Bd.BillDate Desc,DailyNO');
          Open;
     end;  }
     With Query_List do
     begin
          Close;
          Session := Dm_Hospital.DB;
          SQL.Clear;
          sql.add('select patientid,PATIENTNAME,testdate,testtime,billno,testname as servicetype,SAMPLENO,TESTPROGRESSSTATUS  from (');
          sql.Add('select patientid,PATIENTNAME,testdate,testtime,billno,testname,SAMPLENO,TESTPROGRESSSTATUS from vw_sample_collected');
          if gi_compileValue=12 then
          SQL.Add('where deptype='+QuotedStr(gs_DepType));
          sql.Add('union');
          SQL.Add(' select patientid,PATIENTNAME,testdate,testtime,billno,testname,'''' as sampleno,TESTPROGRESSSTATUS from vw_sample_to_be_collected');
          if gi_compileValue=12 then
          SQL.Add('where deptype='+QuotedStr(gs_DepType));
          SQL.Add(')');
          sql.Add(' where testdate between '+quotedstr(DEX_From.text)+' and '+quotedstr(DEX_To.text)+' order by patientname');
          //SQL.SaveToFile('D:\check.txt');
          Open;
     end;
     DBGrid_ServiceCharge.DataSource := DS_List;
     //Query_List.FetchAll:=True;
end;

procedure TForm_ServiceDetail.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_ServiceDetail.DBGrid_ServiceChargeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Query_List.FieldByName('TestProgressStatus').AsInteger < 3 Then
     Begin
          DBGrid_ServiceCharge.Canvas.Font.Color := clRed;
          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
     if Query_List.FieldByName('TestProgressStatus').AsInteger >= 3 Then
     Begin
          DBGrid_ServiceCharge.Canvas.Font.Color := clBlue;
          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
//     if Query_List.FieldByName('refundbillno').AsString<>'' Then
//     Begin
//          DBGrid_ServiceCharge.Canvas.Font.Color := $00808040;
//          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
//     End;
end;

procedure TForm_ServiceDetail.FormCreate(Sender: TObject);
begin
     CreateQuery;
     //DEX_From.SystemOfDate := gi_datesystem;
     DEX_From.text := TodaysDateVS;
     //DEX_To.SystemOfDate := gi_datesystem;
     DEX_To.text := TodaysDateVS;

     BB_RefreshClick(Sender);
     //LoadPatientData(gi_PatientID);
     // lbl_HosNO.Caption:=IntToStr(gi_PatientID);
     // lbl_Name.Caption:=Gs_PatientName;
     // lbl_IpNo.Caption:=IntToStr(gi_InPatientID)
end;

procedure TForm_ServiceDetail.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BtnCancelClick(Sender);
end;

procedure TForm_ServiceDetail.FormKeyPress(Sender: TObject; var Key: Char);
begin
     Key:=UpCase(Key)
end;

procedure TForm_ServiceDetail.Rg_StatusClick(Sender: TObject);
begin
     with Query_List do
     begin
          Filtered:=False;
          if Rg_Status.ItemIndex=0 then
          begin
               Filter:='TestProgressStatus>=3';
               Filtered:=True;
          end
          else if Rg_Status.ItemIndex=1 then
          begin
               Filter:='TestProgressStatus<3';
               Filtered:=True;
          end
          else if Rg_Status.ItemIndex=2 then
               Filtered:=False;
     end;
end;

procedure TForm_ServiceDetail.SPB_FromClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_From, SPB_From);
end;

procedure TForm_ServiceDetail.SPB_ToClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_To, SPB_To);
end;

procedure TForm_ServiceDetail.SpeedButton1Click(Sender: TObject);
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          Session := Dm_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select Max(TestProgressStatus)TestProgressStatus from PatientTest');
          SQL.Add('Where ServiceBillDetailID=' + IntToStr(Query_List.FieldByName('ServiceBillDetailID').AsInteger));
          Open;
          if FieldByName('TestProgressStatus').AsInteger <> 1 then
          begin
               ShowMessage('Cannot Perform');
               Exit;
          end;
          SQL.Clear;
          SQL.Add('Update PatientTest Set TestProgressStatus =' + IntToStr(gi_Billed));
          SQL.Add('Where ServiceBillDetailID=' + IntToStr(Query_List.FieldByName('ServiceBillDetailID').AsInteger));
          ExecSQL;
     end;
     Qry.Free;
     ShowDoneMessage;
     BB_RefreshClick(Sender);
end;

procedure TForm_ServiceDetail.SpeedButton2Click(Sender: TObject);
begin
     if Query_List.FieldByName('BillDetailId').AsInteger > 0 then
     Begin
          MessageDlg('Sorry ! Final Billing Has Been Already Done.', mtWarning, [mbok], 0);
          Exit;
     End;

     if MessageDlg('Do You Really Want to Cancel Service " ' + Query_List.FieldByName('ServiceType').AsString + ' "' + Char(10)
            + 'Service Entered On Date " ' + Query_List.FieldByName('BillDate').AsString + ' "  and by User " ' + Query_List.FieldByName('UserName')
            .AsString + ' " ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
          CancelServiceTest(Query_List.FieldByName('ServiceBillDetailId').AsInteger);

          BB_RefreshClick(Sender);
     End;
end;

procedure TForm_ServiceDetail.SpeedButton3Click(Sender: TObject);
begin
     if MessageDlg('Are you sure to export?',mtConfirmation,mbYesNo,0)=mrYes then
     begin
          SendToExcels(nil,DBGrid_ServiceCharge,'Service Detail',TodaysDate,'',gs_HospitalName,gs_HospitalAddress,0);
     end;
end;

end.
