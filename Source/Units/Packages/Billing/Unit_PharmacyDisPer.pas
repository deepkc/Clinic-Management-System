unit Unit_PharmacyDisPer;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, dblookup, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Unit_Master,
     Fxn,DM,
     OleCtrls, DateEditXControl_TLB, ServerDate, DBCtrls;

type
     TForm_SetPharmacyDisPer = class(TForm)
          Panel2: TPanel;
    BtnSave: TBitBtn;
          BB_Close: TBitBtn;
          Panel1: TPanel;
          Label1: TLabel;
          Label2: TLabel;
          Label5: TLabel;
          Label7: TLabel;
          Edit_HospitalNo: TEdit;
          Edit_IPNo: TEdit;
          DBLookupCombo2: TDBLookupCombo;
          Label4: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          Label13: TLabel;
          Query_Save: TOraQuery;
          DEX_InpatientDate: TDateEditX;
    Query_Community: TOraQuery;
    DS_Community: TDataSource;
    Query_Scheme: TOraQuery;
    DS_Scheme: TDataSource;
    Label_Patientname: TLabel;
    LabelInpatientDate: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Lbl_Ward: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Lbl_RoomType: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Lbl_BedNo: TLabel;
    Edit_DisPer: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    DBLCB_Scheme: TDBLookupComboBox;
    DBLCB_Community: TDBLookupComboBox;
          procedure BB_CloseClick(Sender: TObject);
          procedure BtnSaveClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure Edit_HospitalNoExit(Sender: TObject);
    procedure Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_IPNoExit(Sender: TObject);
    procedure Edit_IPNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_SchemeKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_CommunityKeyPress(Sender: TObject; var Key: Char);
    procedure CB_NewConsultantKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_CommunityClick(Sender: TObject);
    procedure DBLCB_CommunityKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          pi_Patientid,pi_InpatientId: Integer;
          ps_IsDischarged,ps_IsDischargeInDeposit: String;

          ps_CurrDocCode,ps_NewDocCode,ps_NewDepCode :String;

          pi_DepId, pi_CCLogID : Integer;

          procedure GetInpatientInfo(PatientId,InpatientId : Integer);
          { Public declarations }
     end;

var
     Form_SetPharmacyDisPer: TForm_SetPharmacyDisPer;

implementation

{$R *.dfm}

procedure TForm_SetPharmacyDisPer.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_SetPharmacyDisPer.BtnSaveClick(Sender: TObject);
var
     li_HospitalNo, li_IPNo: Integer;
     ls_InpatientDate, ls_Hospital:string;
     li_Department:Integer;
     li_CurrentConsultant:Integer;
     li_NewConsultant:Integer;
     lf_DisPer : Double;
begin
     If trim(Edit_HospitalNo.text) = '' then
     begin
          MessageDlg('Enter HospitalNo.', mtConfirmation, [mbok], 0);
          Edit_HospitalNo.SetFocus;
          exit;
     End;

     If trim(Edit_IPNo.text) = '' then
     begin
          MessageDlg('Enter Inpatient No .', mtConfirmation, [mbok], 0);
          Edit_HospitalNo.SetFocus;
          exit;
     End;

     If Trim(DBLCB_Community.Text) = '' then
     begin
          MessageDlg('Please Select Community.', mtWarning, [mbok], 0);
          DBLCB_Community.SetFocus;
          exit;
     End;

     If Trim(DBLCB_Scheme.Text) = '' then
     begin
          MessageDlg('Please Select Scheme.', mtWarning, [mbok], 0);
          DBLCB_Scheme.SetFocus;
          exit;
     End;

     if pi_PatientId<>StrToInt(Edit_HospitalNo.Text) then
     Begin
          MessageDlg('Please Check Hospital No Properly and Try Again.',mtWarning,[mbok],0);
          Edit_HospitalNo.SetFocus;
          Exit;
     End;

     if pi_InPatientId<>StrToInt(Edit_IPNo.Text) then
     Begin
          MessageDlg('Please Check Inpatient No Properly and Try Again.',mtWarning,[mbok],0);
          Edit_IPNo.SetFocus;
          Exit;
     End;

     if Trim(Edit_DisPer.Text)='' then Edit_DisPer.Text:='0';

     if StrToFloat(Edit_DisPer.Text) > 100 then
     Begin
          MessageDlg('Discount Pearcentage Cross The Limit !',mtWarning,[mbok],0);
          Edit_DisPer.SetFocus;
          Exit;
     End;

     lf_DisPer:= StrToFloat(Edit_DisPer.Text);


     if ps_IsDischarged='Y' then
     Begin
          MessageDlg('Sorry Patient is Already Discharged.',mtWarning,[mbok],0);
          Edit_HospitalNo.SetFocus;
          Exit;
     End;

     if ps_IsDischargeInDeposit='Y' then
     Begin
          IF MessageDlg('Patient is in " Dischared In Deposit " mode. Eventhough Do You Want to Change Consultant ?',mtConfirmation,[mbYes,mbNo],0)=mrNo Then
          Exit;
     End;

     try
          DM_Hospital.DB.StartTransaction;
          with Query_Save do
          begin
               Close;
               Session := DM_Hospital.DB;
               SQL.Clear;
               Sql.add(' Update SaleDetail Set Discount='+FloatToStr(lf_DisPer)+', CommunityId='+IntToStr(DBLCB_Community.KeyValue));
               sql.add(' ,SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' where SaleMasterID in (');
               Sql.add(' Select SaleMasterID From SaleMaster where CustomerId='+IntToStr(pi_PatientId)+' and BillNo is null)');
               ExecSQL;

               SQL.Clear;
               Sql.add(' Update ReturnDetail Set Discount=UnitPrice*'+FloatToStr(lf_DisPer/100));
               Sql.add(' ,SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' where ReturnMasterId In (');
               Sql.add(' Select ReturnMasterId From ReturnMaster where CustomerId='+IntToStr(pi_PatientId)+' and BillNo is null)');
               ExecSQL;

               SQL.Clear;
               Sql.add(' Update SaleMaster Set Discount=TotalAmount * '+FloatToStr(lf_DisPer/100));
               Sql.add(' ,CommunityId='+IntToStr(DBLCB_Community.KeyValue)+',SchemeId='+IntToStr(DBLCB_Scheme.KeyValue));
               Sql.add(' where CustomerId='+IntToStr(pi_PatientId)+'  and BillNo is null');
               ExecSQL;
          end;

          DM_Hospital.DB.Commit;
          ShowDoneMessage;
     Except
          DM_Hospital.DB.Rollback;
          ShowMessage('Error has Been Occured');
          exit;
     end;
end;

procedure TForm_SetPharmacyDisPer.DBLCB_CommunityClick(Sender: TObject);
begin
     if Trim(DBLCB_Community.Text)<>'' then
     Begin
          With Query_Scheme do
          Begin
               Close;
               ParamByName('CommunityID').AsInteger:=DBLCB_Community.KeyValue;
               Open;
          End;
     End;

end;

procedure TForm_SetPharmacyDisPer.DBLCB_CommunityKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=VK_Delete then
     DBLCB_Community.KeyValue:=-1;
end;

procedure TForm_SetPharmacyDisPer.DBLCB_CommunityKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key=#13 then
     DBLCB_Scheme.SetFocus;
end;

procedure TForm_SetPharmacyDisPer.DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=VK_Delete then
     DBLCB_Scheme.KeyValue:=-1;
end;

procedure TForm_SetPharmacyDisPer.DBLCB_SchemeKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
     BtnSave.SetFocus;
end;

procedure TForm_SetPharmacyDisPer.CB_NewConsultantKeyPress(
  Sender: TObject; var Key: Char);
begin
     if key=#13 then
     BtnSave.SetFocus;
end;

procedure TForm_SetPharmacyDisPer.Edit_HospitalNoExit(Sender: TObject);
var Query:TOraQuery;
begin
     if Trim(Edit_HospitalNo.Text)<>'' then
     GetInpatientInfo(StrToInt(Edit_HospitalNo.Text),0);
end;

procedure TForm_SetPharmacyDisPer.Edit_HospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key=#13 then
     Edit_IPNo.SetFocus;
end;

procedure TForm_SetPharmacyDisPer.Edit_IPNoExit(Sender: TObject);
begin
     if Trim(Edit_IPNo.Text)<>'' then
     GetInpatientInfo(0,StrToInt(Edit_IPNo.Text));
end;

procedure TForm_SetPharmacyDisPer.Edit_IPNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key=#13 then
     DBLCB_Community.SetFocus;
end;

procedure TForm_SetPharmacyDisPer.FormShow(Sender: TObject);
begin
      with Query_Community do
      begin
          Close;
          Session:=DM_Hospital.DB;
          Open;
      end;
end;

procedure TForm_SetPharmacyDisPer.GetInpatientInfo(PatientId,InpatientId : Integer);
Var Qry : TOraQuery;
    Sender :TObject;
begin
     Qry:=TOraQuery.Create(nil);
     With Qry Do
     Begin
          Close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.add(' Select * From VW_ADMITTEDPATIENTCURRENTINFO');
          if PatientId > 0 then
          sql.add(' Where PatientId='+IntToStr(PatientId))
          Else
          sql.add(' Where InPatientId='+IntToStr(InPatientId));
          sql.add(' Order by InpatientId Desc');
          Open;
     End;

     if Qry.FieldByName('InpatientId').AsInteger=0 then
     Begin
          if PatientId > 0 then
          MessageDlg(' No Patient Admitted With this Hospital No.',mtWarning,[mbok],0)
          Else
          MessageDlg(' No Patient Admitted With this Inpatient No.',mtWarning,[mbok],0);
          Exit;
     End;

     if PatientId > 0 then
     Edit_IPNo.Text:=IntToStr(Qry.FieldByName('InpatientId').AsInteger)
     Else
     Edit_HospitalNo.Text:=IntToStr(Qry.FieldByName('Patientid').AsInteger);

     pi_Patientid:=Qry.FieldByName('PatientId').AsInteger;
     pi_InpatientId:=Qry.FieldByName('InpatientId').AsInteger;

     Label_Patientname.Caption:=Qry.FieldByName('PatientName').AsString;
     LabelInpatientDate.Caption:=Qry.FieldByName('AdmnDate').AsString;
     Lbl_Ward.Caption:=Qry.FieldByName('Ward').AsString;
     Lbl_RoomType.Caption:=Qry.FieldByName('RoomType').AsString;
     Lbl_BedNo.Caption:=Qry.FieldByName('BedNo').AsString;

     ps_IsDischarged:=Qry.FieldByName('Discharged').AsString;
     ps_IsDischargeInDeposit:=Qry.FieldByName('Discharged').AsString;
     Qry.Free;
end;

end.
