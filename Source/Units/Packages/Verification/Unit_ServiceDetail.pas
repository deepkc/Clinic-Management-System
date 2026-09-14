unit Unit_ServiceDetail;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn, ServerDate,
     Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, dm, OleCtrls, DateEditXControl_TLB,
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
          procedure BB_RefreshClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure SPB_FromClick(Sender: TObject);
          procedure SPB_ToClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BtnCancelClick(Sender: TObject);
          procedure DBGrid_ServiceChargeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
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
     With Query_List do
     begin
          Close;
          Session := Dm_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select (Select UserName from ' + gs_Hos_DB_UserName + '.lab_UserMain Where UserID=Bd.ModifyBy)UserName');
          SQL.Add(',(Select PatientName from ' + gs_Hos_DB_UserName + '.PatientMain Where PatientID=Bd.PatientID)PatientName');
          SQL.Add(',(Select Max(TestProgressStatus) From ' + gs_Hos_DB_UserName + '.PatientTest Where PatientTestID=Bd.PatientTestId)TestProgressStatus');
          SQL.Add(',BillNo as FinalBillNo');
          SQL.Add(' ,Bd.* from ' + gs_Hos_DB_UserName + '.BillDetail Bd');
          // SQL.Add('Where Patientid='+IntToStr(gi_PatientID));
          SQL.Add('Where (BillNo Like ''CS%'' or BillNo Like ''TP%'')');
          SQL.Add('And BillDate Between ' + #39 + DEX_From.ADDateAsText + #39 + ' And ' + #39 + DEX_To.ADDateAsText + #39);
          // if Rb_OnlyMe.Checked then
          // SQL.Add('And BillBy='+IntToStr(gi_UserID));
          SQL.Add('And BillDetailId not in (SELECT   BillDetailID FROM   ' + gs_Hos_DB_UserName + '.BILLDETAIL');
          SQL.Add('WHERE   PatientTestID > 0 AND CANCELSTATUS=''Y'' AND PATIENTID=Bd.PATIENTID)');
          SQL.Add('And DepID in (Select Depid from ' + gs_Hos_DB_UserName + '.Department Where DepType=' + #39 + GetUserDepType(gi_UserID) + #39 + ')');
          SQL.Add('Order by Bd.BillDate Desc,Bd.BillTime Desc,Bd.PatientID');
          Open;
     end;
     DBGrid_ServiceCharge.DataSource := DS_List;
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
     if Query_List.FieldByName('TestProgressStatus').AsInteger = 3 Then
     Begin
          DBGrid_ServiceCharge.Canvas.Font.Color := clBlue;
          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
end;

procedure TForm_ServiceDetail.FormCreate(Sender: TObject);
begin
     DEX_From.ADDateAsText := TodaysDate;
     DEX_From.SystemOfDate := gi_datesystem;
     DEX_To.ADDateAsText := TodaysDate;
     DEX_To.SystemOfDate := gi_datesystem;
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

end.
