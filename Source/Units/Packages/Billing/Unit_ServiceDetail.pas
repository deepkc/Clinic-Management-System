unit Unit_ServiceDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,ServerDate,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, OleCtrls, DateEditXControl_TLB,
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
    Rb_All: TRadioButton;
    Rb_OnlyMe: TRadioButton;
    DS_List: TDataSource;
    Query_List: TOraQuery;
    Label25: TLabel;
    lbl_HosNO: TLabel;
    Label26: TLabel;
    lbl_Name: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    lbl_IpNo: TLabel;
    SpeedButton1: TSpeedButton;
    SPB_ServiceCancel: TSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit_ServiceType: TEdit;
    SPB_RefDocChange: TSpeedButton;
    procedure BB_RefreshClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SPB_FromClick(Sender: TObject);
    procedure SPB_ToClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelClick(Sender: TObject);
    procedure DBGrid_ServiceChargeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SPB_ServiceCancelClick(Sender: TObject);
    procedure Edit_ServiceTypeChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select (Select USMA_UserName from HS_USMA_UserMain Where USMA_UserID=Sbd.SEBD_BillBy)UserName');
          SQL.Add(',(Select Max(TestProgressStatus) From PatientTest Where servicebilldetailid=Sbd.SEBD_servicebilldetailid)TestProgressStatus');
          SQL.Add(',(Select BIDE_Billno From HS_BIDE_BillDetail Where BIDE_BillDetailID=SBD.SEBD_BillDetailID)FinalBillNo');
          SQL.Add(' ,Sbd.* from HS_SEBD_ServiceBillDetail Sbd');
          SQL.Add('Where SEBD_Patientid='+IntToStr(gi_PatientID));
          SQL.Add('And SEBD_Service<>''REG''');
          SQL.Add('And SEBD_BillDate Between '+#39+DEX_From.ADDateAsText+#39+' And '+#39+DEX_To.ADDateAsText+#39);
          if Rb_OnlyMe.Checked then
               SQL.Add('And SEBD_BillBy='+IntToStr(gi_UserID));
          SQL.Add('And SEBD_ServiceBillDetailId not in (Select TECA_ServiceBillDetailId From HS_TECA_TestCancel)');
          SQL.Add('Order by SEBD_ServiceBillDetailID');
          Open;
     end;
     DBGrid_ServiceCharge.DataSource:=DS_List;
end;

procedure TForm_ServiceDetail.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_ServiceDetail.DBGrid_ServiceChargeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     IF Query_List.FieldByName('TestProgressStatus').AsInteger = 1 Then
     Begin
          DBGrid_ServiceCharge.Canvas.Font.Color := clBlue;
          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
      IF Query_List.FieldByName('SEBD_BillDetailID').AsInteger >0 Then
     Begin
          DBGrid_ServiceCharge.Canvas.Font.Color := $008000FF;
          DBGrid_ServiceCharge.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
end;

procedure TForm_ServiceDetail.Edit_ServiceTypeChange(Sender: TObject);
begin
     Edit_ServiceType.Text := StringReplace(Edit_ServiceType.Text, '''', '''''', [rfReplaceAll]);
     with Query_List do
     Begin
          IF Trim(Edit_ServiceType.Text) <> '' Then
          Begin
               Filter := 'SEBD_ServiceType =' + #39 + Edit_ServiceType.Text + '*' + #39;
               Filtered := True;
          End
          Else
               Filtered := False;
     End;
end;

procedure TForm_ServiceDetail.FormCreate(Sender: TObject);
begin
     DEX_From.ADDateAsText:=TodaysDate;
     DEX_From.SystemOfDate:=gi_datesystem;
     DEX_To.ADDateAsText:=TodaysDate;
     DEX_To.SystemOfDate:=gi_datesystem;

     LoadPatientData(gi_PatientID);
     lbl_HosNO.Caption:=IntToStr(gi_PatientID);
     lbl_Name.Caption:=Gs_PatientName;

     lbl_IpNo.Caption:=IntToStr(gi_InPatientID)

end;

procedure TForm_ServiceDetail.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BtnCancelClick(Sender);
end;

procedure TForm_ServiceDetail.FormShow(Sender: TObject);
begin
     (*if gs_IsCancelServiceEntry='Y' then
     SPB_ServiceCancel.Enabled:=True
     Else
     SPB_ServiceCancel.Enabled:=False;*)
end;

procedure TForm_ServiceDetail.SPB_FromClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_From,SPB_From);
end;

procedure TForm_ServiceDetail.SPB_ToClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_To,SPB_To);
end;

procedure TForm_ServiceDetail.SpeedButton1Click(Sender: TObject);
Var
     Qry:TOraQuery;
begin
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select Max(TestProgressStatus)TestProgressStatus from PatientTest' );
          SQL.Add('Where ServiceBillDetailID='+IntToStr(Query_List.FieldByName('ServiceBillDetailID').AsInteger));
          Open;
          if FieldByName('TestProgressStatus').AsInteger<>1 then
          begin
               ShowMessage('Cannot Perform');
               Exit;
          end;
          SQL.Clear;
          SQL.Add('Update PatientTest Set TestProgressStatus ='+IntToStr(gi_Billed));
          SQL.Add('Where ServiceBillDetailID='+IntToStr(Query_List.FieldByName('ServiceBillDetailID').AsInteger));
          ExecSQL;
     end;
     Qry.Free;
     ShowDoneMessage;
     BB_RefreshClick(Sender);
end;

procedure TForm_ServiceDetail.SPB_ServiceCancelClick(Sender: TObject);
begin
     if Query_List.FieldByName('SEBD_BillDetailId').AsInteger > 0 then
     Begin
          MessageDlg('Sorry ! Final Billing Has Been Already Done.',mtWarning,[mbok],0);
          Exit;
     End;

     if MessageDlg('Do You Really Want to Cancel Service " '+Query_List.FieldByName('ServiceType').AsString+' "'+Char(10)+
     'Service Entered On Date " '+Query_List.FieldByName('SEBD_BillDate').AsString+' "  and by User " '+Query_List.FieldByName('UserName').AsString+' " ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Begin
          CancelServiceTest(Query_List.FieldByName('SEBD_ServiceBillDetailId').AsInteger,0,'');

          BB_RefreshClick(Sender);
     End;
end;

end.
