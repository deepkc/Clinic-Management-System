unit Unit_PatientSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, OleCtrls,ServerDate,
  DateEditXControl_TLB, DBCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DM,Fxn,UnitSendToExcel, dblookup;

type
  TForm_PatientSearch = class(TForm)
    StatusBarPatientSearch: TStatusBar;
    Panel1: TPanel;
    BtnCancel: TBitBtn;
    PageControlOutPatient: TPageControl;
    TabSheet1: TTabSheet;
    EditHospitalNo: TEdit;
    Shape2: TShape;
    GroupBoxFollowUp: TGroupBox;
    DBGridOutPatient: TDBGrid;
    EditPatientId: TEdit;
    EditName: TEdit;
    EditAgeSerch: TEdit;
    EditDate: TEdit;
    EditDistrict: TEdit;
    EditPAddress: TEdit;
    EditCareOf: TEdit;
    Label1: TLabel;
    QueryAdmission: TOraQuery;
    DataSourceAdmnDisList: TDataSource;
    QueryOutPatient: TOraQuery;
    DataSourcePatientList: TDataSource;
    PageControlInpatient: TPageControl;
    TabSheet2: TTabSheet;
    GroupBoxInpatient: TGroupBox;
    EditHosIP: TEdit;
    EditIPNo: TEdit;
    EditIPName: TEdit;
    EditIPAgeSex: TEdit;
    EditIPDep: TEdit;
    EditWardRoom: TEdit;
    EditAdmDate: TEdit;
    DBGridMain: TDBGrid;
    EditInTime: TEdit;
    EditIPDistrict: TEdit;
    BitBtnPreview: TBitBtn;
    BitBtnExcel: TBitBtn;
    QueryFindInptTime: TOraQuery;
    QueryOutStandingPt: TOraQuery;
    DataSourceOutStdPt: TDataSource;
    EditIPAddress: TEdit;
    QueryFindInptTimeINPATIENTID: TFloatField;
    QueryFindInptTimeINTIME: TStringField;
    QueryFindInptTimeINPTDATE: TStringField;
    QueryFindInptTimeWARDROOM: TStringField;
    QueryCommunity: TOraQuery;
    QueryDischarge: TOraQuery;
    DataSourceDischarge: TDataSource;
    GroupBoxDischarge: TGroupBox;
    EditDisHospNo: TEdit;
    EditDisIPNo: TEdit;
    EditDisPtName: TEdit;
    EditDisPtAgeSex: TEdit;
    EditDisPtDept: TEdit;
    EditDisWard: TEdit;
    EditDisAdmnDate: TEdit;
    DBGridDischarge: TDBGrid;
    EditDisInTime: TEdit;
    EditDisTime: TEdit;
    EditDisAddress: TEdit;
    EditDisDate: TEdit;
    Shape3: TShape;
    Label6: TLabel;
    Label8: TLabel;
    DateEditX_OPFrom: TDateEditX;
    Button_OPFrom: TButton;
    DateEditX_OPTo: TDateEditX;
    Button_OPTo: TButton;
    SPB_SearchOP: TSpeedButton;
    Shape7: TShape;
    RB_New: TRadioButton;
    RB_Old: TRadioButton;
    RB_Both: TRadioButton;
    EditDept: TEdit;
    EditTime: TEdit;
    QueryNewPt: TOraQuery;
    CheckBoxExtended: TCheckBox;
    QueryOldPt: TOraQuery;
    EditIPCareOf: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    EditInpatientNo: TEdit;
    EditSearch: TEdit;
    CheckBoxAll: TCheckBox;
    SPB_SearchIP: TSpeedButton;
    Shape4: TShape;
    Shape6: TShape;
    RB_OutStanding: TRadioButton;
    RB_Admission: TRadioButton;
    RB_Discharge: TRadioButton;
    Shape5: TShape;
    Label3: TLabel;
    Label4: TLabel;
    DateEditX_From: TDateEditX;
    Button_DateFrom: TButton;
    DateEditX_To: TDateEditX;
    Button_To: TButton;
    Edit_Relation: TEdit;
    CB_MedicarePatient: TCheckBox;
    CB_OPMedicarePatient: TCheckBox;
    Edit_MedicareNo: TEdit;
    Edit_MemberNoDis: TEdit;
    Edit_MedicareNoOP: TEdit;
    Edit_BillDate: TEdit;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    Query_Scheme: TOraQuery;
    DS_Scheme: TDataSource;
    DBLCB_OPScheme: TDBLookupComboBox;
    DBLCB_IPScheme: TDBLookupComboBox;
    Label9: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AdmissionDischargeList;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditSearchLastNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPatientIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHosIPKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure EditIPNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIPNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIPAgeSexKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIPDepKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure EditWardRoomKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure EditAdmDateKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure EditInTimeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditDisDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditDisTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditAgeSerchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDistrictKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
    procedure EditVDCMPCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPAddressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCareOfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditSearchLastNameKeyPress(Sender: TObject; var Key: Char);
    procedure EditInpatientIdKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosIPChange(Sender: TObject);
    procedure EditIPNoChange(Sender: TObject);
    procedure EditIPNameChange(Sender: TObject);
    procedure EditIPAgeSexChange(Sender: TObject);
    procedure EditIPDepChange(Sender: TObject);
    procedure EditWardRoomChange(Sender: TObject);
    procedure EditAdmDateChange(Sender: TObject);
    procedure EditInTimeChange(Sender: TObject);
    procedure BitBtnRefreshClick(Sender: TObject);
    procedure EditIPDistrictChange(Sender: TObject);
    procedure EditIPDistrictKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure SPB_SearchIPClick(Sender: TObject);
    procedure RefreshOutStanding;
    procedure OutStandingPatientSearch;
    procedure EditIPAddressChange(Sender: TObject);
    procedure BitBtnExcelClick(Sender: TObject);
    procedure RB_AdmissionClick(Sender: TObject);
    procedure RB_OutStandingClick(Sender: TObject);
    procedure CheckBoxAllKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridMainKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button_DateFromClick(Sender: TObject);
    procedure Button_ToClick(Sender: TObject);
    procedure EditIPAddressKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EditDisHospNoChange(Sender: TObject);
    procedure EditDisHospNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisIPNoChange(Sender: TObject);
    procedure EditDisPtNameChange(Sender: TObject);
    procedure EditDisPtAgeSexChange(Sender: TObject);
    procedure EditDisPtDeptChange(Sender: TObject);
    procedure EditDisWardChange(Sender: TObject);
    procedure EditDisAdmnDateChange(Sender: TObject);
    procedure EditDisDateChange(Sender: TObject);
    procedure EditDisTimeChange(Sender: TObject);
    procedure EditDisAddressChange(Sender: TObject);
    procedure DBGridDischargeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RefreshDischarge;
    procedure EditDisIPNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisPtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisPtAgeSexKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisPtDeptKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisWardKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisAdmnDateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisInTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisAddressKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button_OPFromClick(Sender: TObject);
    procedure Button_OPToClick(Sender: TObject);
    procedure SPB_SearchOPClick(Sender: TObject);
    procedure OutPatientSearch;
    procedure CheckBoxExtendedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDeptKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    Procedure RefreshOutPatient;
    procedure EditSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditInpatientNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditSearchKeyPress(Sender: TObject; var Key: Char);
    procedure RB_NewClick(Sender: TObject);
    procedure RB_OldClick(Sender: TObject);
    procedure RB_BothClick(Sender: TObject);
    procedure EditHospitalNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditTimeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPatientIdChange(Sender: TObject);
    procedure EditNameChange(Sender: TObject);
    procedure EditAgeSerchChange(Sender: TObject);
    procedure EditDeptChange(Sender: TObject);
    procedure EditDateChange(Sender: TObject);
    procedure EditPAddressChange(Sender: TObject);
    procedure EditDistrictChange(Sender: TObject);
    procedure EditCareOfChange(Sender: TObject);
    procedure EditTimeChange(Sender: TObject);
    procedure DBGridOutPatientKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIPCareOfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditIPCareOfChange(Sender: TObject);
    procedure Edit_MemberNoDisChange(Sender: TObject);
    procedure Edit_MedicareNoOPChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLCB_IPSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLCB_OPSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CB_MedicarePatientClick(Sender: TObject);
    procedure CB_OPMedicarePatientClick(Sender: TObject);
  private
    { Private declarations }
  public
      IsNumeric:Boolean;
      ps_ReportType,ps_ReportTitle,ps_TodaysDate:String;
      ps_InptTimeStr,ps_OutstptStr:String;

      procedure ShowPatientCountStatus;

    { Public declarations }
  end;

var
  Form_PatientSearch: TForm_PatientSearch;

implementation

{$R *.DFM}


procedure TForm_PatientSearch.BtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_PatientSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if ps_ReportType='IP' then
     Begin
          if Key=VK_F7 then
          CB_MedicarePatient.Checked:=not(CB_MedicarePatient.Checked);

          IF ps_ReportType<>'EMERGENCY' Then
          begin
               IF key=VK_F1 Then
               Begin
                    RB_OutStanding.Checked:=True;
                    RB_OutStandingClick(Sender);
               End;

               IF (Key=VK_F2) Then
               Begin
                    RB_Admission.Checked:=True;
                    RB_AdmissionClick(Sender);
               End;

               IF Key=VK_F3 Then
               Begin
                    RB_Discharge.Checked:=True;
                    RB_AdmissionClick(Sender);
               End;

               IF key=VK_F4 Then
               CheckBoxAll.Checked:=Not(CheckBoxAll.Checked);

               IF key=VK_F5 Then
               SPB_SearchIPClick(Sender);
          end;


          IF ps_ReportType='EMERGENCY' Then
          Begin
                IF key=VK_F4 Then
                CheckBoxAll.Checked:=Not(CheckBoxAll.Checked);
                IF key=VK_F5 Then
                SPB_SearchIPClick(Sender);
          end;
     End
     else
     begin
          IF key=VK_F5 Then
          SPB_SearchOPClick(Sender);

          IF key=VK_F1 Then
          Begin
               RB_Both.Checked:=True;
               RB_BothClick(Sender);
          End;

          IF key=VK_F2 Then
          Begin
               RB_New.Checked:=True;
               RB_NewClick(Sender);
          End;

          IF key=VK_F3 Then
          Begin
              RB_Old.Checked:=True;
              RB_OldClick(Sender);
          End;

          IF key=VK_F4 Then
          CheckBoxExtended.Checked:=Not(CheckBoxExtended.Checked);

          IF key=VK_F7 Then
          CB_OPMedicarePatient.Checked:=Not(CB_OPMedicarePatient.Checked);
     end;

     IF key=27 Then
     Begin
          IF (ps_ReportType='IP') or (ps_ReportType='EMERGENCY') Then
          Begin
               if (RB_OutStanding.Checked=True) or (RB_Admission.Checked=True) then
               RefreshOutStanding
               Else
               RefreshDischarge;
          End
          Else IF ps_ReportType='OP' Then
          RefreshOutPatient;
     End;

     IF ((ActiveControl=DateEditX_From) and (Key=13)) or ((ActiveControl=DateEditX_To) and (Key=13)) Then
     SPB_SearchIPClick(Sender);

     IF (ActiveControl=DateEditX_From) and (Key=VK_Down) Then
     DateEditX_To.SetFocus;
     IF (ActiveControl=DateEditX_To) and (Key=VK_UP) Then
     DateEditX_From.SetFocus;

     IF ((ActiveControl=DateEditX_OPFrom) and (Key=13)) or ((ActiveControl=DateEditX_OPTo) and (Key=13)) Then
     SPB_SearchOPClick(Sender);
   
     IF (ActiveControl=DateEditX_OPFrom) and (Key=VK_Down) Then
     DateEditX_OPTo.SetFocus;
     IF (ActiveControl=DateEditX_OPTo) and (Key=VK_UP) Then
     DateEditX_OPFrom.SetFocus;
end;

procedure TForm_PatientSearch.RefreshOutStanding;
Begin
   IF (Trim(EditSearch.Text)<>'') or (Trim(EditInpatientNo.Text)<>'') or (DateEditX_From.Text<>DateEditX_To.Text)
   or (DateEditX_From.Text<>ServerDate.TodaysDate)
   or (Trim(EditHosIP.Text)<>'') or (Trim(EditIPNo.Text)<>'') or (Trim(EditIPName.Text)<>'')
   or (Trim(EditIPAgeSex.Text)<>'') or (Trim(EditIPDep.Text)<>'') or (Trim(EditWardRoom.Text)<>'')
   or (Trim(EditAdmDate.Text)<>'') or (Trim(EditInTime.Text)<>'') or (Trim(EditIPAddress.Text)<>'')
   or (CheckBoxAll.Checked=True) or (Trim(EditIPDistrict.Text)<>'') or (Trim(EditIPCareOf.Text)<>'')
   Then
   Begin
      EditSearch.Text:='';
      EditInpatientNo.Text:='';
      CheckBoxAll.Checked:=False;
      EditHosIP.Text:='';
      EditIPNo.Text:='';
      EditIPName.Text:='';
      EditIPAgeSex.Text:='';
      EditIPDep.Text:='';
      EditWardRoom.Text:='';
      EditAdmDate.Text:='';
      EditInTime.Text:='';
      EditIPAddress.Text:='';
      EditIPDistrict.Text:='';
      EditIPDistrict.text:='';
      EditIPCareOf.text:='';
      ps_TodaysDate:=ServerDate.TodaysDate;
      DateEditX_From.Text:=ps_TodaysDate;
      DateEditX_To.Text:=ps_TodaysDate;
      QueryOutStandingPt.Close;
      EditSearch.SetFocus;
   End
   Else
   Begin
      IF MessageDlg(' Are you sure to exit from this window ?',mtConfirmation,[mbyes,mbno],0)=mrYes Then
      Close
      Else
      EditSearch.SetFocus;
   End;
End;


procedure TForm_PatientSearch.RefreshDischarge;
Begin
   IF (Trim(EditSearch.Text)<>'') or (Trim(EditInpatientNo.Text)<>'') or (DateEditX_From.Text<>DateEditX_To.Text)
   or (DateEditX_From.Text<>ServerDate.TodaysDate)
   or (Trim(EditDisHospNo.Text)<>'') or (Trim(EditDisIPNo.Text)<>'') or (Trim(EditDisPtName.Text)<>'')
   or (Trim(EditDisPtAgeSex.Text)<>'') or (Trim(EditDisPtDept.Text)<>'') or (Trim(EditDisWard.Text)<>'')
   or (Trim(EditDisAdmnDate.Text)<>'') or (Trim(EditDisInTime.Text)<>'') or (Trim(EditDisDate.Text)<>'')
   or (Trim(EditDisTime.Text)<>'') or (Trim(EditDisAddress.Text)<>'') or (CheckBoxAll.Checked=True) Then
   Begin
      EditSearch.Text:='';
      EditInpatientNo.Text:='';
      CheckBoxAll.Checked:=False;
      EditDisHospNo.Text:='';
      EditDisIPNo.Text:='';
      EditDisPtName.Text:='';
      EditDisPtAgeSex.Text:='';
      EditDisPtDept.Text:='';
      EditDisWard.Text:='';
      EditDisAdmnDate.Text:='';
      EditDisInTime.Text:='';
      EditDisDate.Text:='';
      EditDisTime.Text:='';
      EditDisAddress.Text:='';
      ps_TodaysDate:=ServerDate.TodaysDate;
      DateEditX_From.Text:=ps_TodaysDate;
      DateEditX_To.Text:=ps_TodaysDate;
      QueryDischarge.Close;
      EditSearch.SetFocus;
   End
   Else
   Begin
      IF MessageDlg(' Are you sure to exit from this window ?',mtConfirmation,[mbyes,mbno],0)=mrYes Then
      Close
      Else
      EditSearch.SetFocus;
   End;
End;

Procedure TForm_PatientSearch.RefreshOutPatient;
Begin
   IF (Trim(EditHospitalNo.Text)<>'') or (Trim(EditPatientId.Text)<>'') or (DateEditX_OPFrom.Text<>DateEditX_OPTo.Text)
   or (DateEditX_OPFrom.Text<>ServerDate.TodaysDate)    
   or (Trim(EditName.Text)<>'') or (Trim(EditAgeSerch.Text)<>'') or (Trim(EditDept.Text)<>'')
   or (Trim(EditDate.Text)<>'') or (Trim(EditPAddress.Text)<>'') or (Trim(EditDistrict.Text)<>'')
   or (Trim(EditTime.Text)<>'') or (Trim(EditCareOf.Text)<>'') or (CheckBoxExtended.Checked=True) Then
   Begin
      EditHospitalNo.Text:='';
      EditPatientId.Text:='';
      CheckBoxExtended.Checked:=False;
      EditName.Text:='';
      EditAgeSerch.Text:='';
      EditDept.Text:='';
      EditDate.Text:='';
      EditPAddress.Text:='';
      EditDistrict.Text:='';
      EditCareOf.Text:='';
      ps_TodaysDate:=ServerDate.TodaysDate;
      DateEditX_OPFrom.Text:=ps_TodaysDate;
      DateEditX_OPTo.Text:=ps_TodaysDate;
      QueryOutPatient.Close;
      EditHospitalNo.SetFocus;
   End
   Else
   Begin
      IF MessageDlg(' Are you sure to exit from this window ?',mtConfirmation,[mbyes,mbno],0)=mrYes Then
      Close
      Else
      EditHospitalNo.SetFocus;
   End;
End;


procedure TForm_PatientSearch.FormShow(Sender: TObject);
begin
     Query_Scheme.Close;
     Query_Scheme.Open;

     IF (ps_ReportType='IP') or (ps_ReportType='EMERGENCY') Then
     Begin
          PageControlOutPatient.Visible:=False;
          PageControlInpatient.BringToFront;
          PageControlInpatient.Visible:=True;

          IF ps_ReportType='EMERGENCY' Then
          Begin
               RB_Admission.Checked:=True;
               RB_Admission.Visible:=False;
               RB_OutStanding.Visible:=False;
               Shape6.Visible:=False;
          End
          Else
          Begin
               RB_OutStanding.Checked:=True;
               CheckBoxAll.Enabled:=False;
               DateEditX_To.Enabled:=False;
               DateEditX_To.Color:=clMenu;
               Label4.Enabled:=False;
               Button_To.Enabled:=False;
          End;

          GroupBoxInpatient.Top:=61;
          GroupBoxInpatient.Left:=0;
          GroupBoxInpatient.Top:=61;
          GroupBoxInpatient.Left:=0;
          GroupBoxInpatient.Height:=419;
          DateEditX_From.SystemOfDate:=gi_DateSystem;
          DateEditX_From.Text:=ServerDate.TodaysDate;
          ChangeCaption(Button_DateFrom);

          DateEditX_To.SystemOfDate:=gi_DateSystem;
          DateEditX_To.Text:=ServerDate.TodaysDate;
          ChangeCaption(Button_To);


          IF ps_ReportType='DISCHARGE' Then
          Begin
               PageControlInpatient.BringToFront;
               GroupBoxDischarge.BringToFront;
               DateEditX_From.SystemOfDate:=gi_DateSystem;
               DateEditX_From.Text:=ServerDate.TodaysDate;
               ChangeCaption(Button_DateFrom);

               DateEditX_To.SystemOfDate:=gi_DateSystem;
               DateEditX_To.Text:=ServerDate.TodaysDate;
               ChangeCaption(Button_To);

               CheckBoxAll.Enabled:=True;
               Shape6.Visible:=False;
               RB_OutStanding.Visible:=False;
               RB_Admission.Visible:=False;
          End;
          GroupBoxInpatient.BringToFront;
          PageControlInpatient.BringToFront;
          EditSearch.SetFocus;
     End
     Else IF ps_ReportType='OP' Then
     Begin
          PageControlInpatient.Visible:=False;
          PageControlOutPatient.BringToFront;
          PageControlOutPatient.Visible:=True;

          PageControlOutPatient.BringToFront;
          EditHospitalNo.SetFocus;
          DateEditX_OPFrom.SystemOfDate:=gi_DateSystem;
          DateEditX_OPFrom.Text:=ServerDate.TodaysDate;
          ChangeCaption(Button_OPFrom);

          DateEditX_OPTo.SystemOfDate:=gi_DateSystem;
          DateEditX_OPTo.Text:=ServerDate.TodaysDate;
          ps_ReportTitle:='New and Old Patient List';
          ChangeCaption(Button_OPTo);
          EditHospitalNo.SetFocus;
     End;
end;

procedure TForm_PatientSearch.EditSearchLastNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditHospitalNo.SetFocus;
end;

procedure TForm_PatientSearch.EditPatientIdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Right Then EditName.SetFocus;
   IF key=VK_UP Then EditHospitalNo.SetFocus;
   IF key=VK_Down Then
   Begin
      IF not QueryOutPatient.Active Then Exit;
      IF QueryOutPatient.RecordCount > 0 Then
      Begin
         ActiveControl:=DBGridOutPatient;
         DBGridOutPatient.SelectedIndex:=0;
      End;
   End;   
end;

procedure TForm_PatientSearch.EditHosIPKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_UP Then
   EditInpatientNo.SetFocus;
   IF key=VK_Right Then
   EditIPNo.SetFocus;
   IF key=VK_Down Then
   Begin
      IF (ps_ReportType='INPATIENT') or (ps_ReportType='EMERGENCY') Then
      Begin
         IF RB_OutStanding.Checked=True Then
         Begin
            IF QueryOutStandingPt.RecordCount > 0 Then
            Begin
               ActiveControl:=DBGridMain;
               DBGridMain.SelectedIndex:=0;
            End;
         End
         Else
         Begin
            IF QueryAdmission.RecordCount > 0 Then
            Begin
               ActiveControl:=DBGridMain;
               DBGridMain.SelectedIndex:=0;
            End;
         End;
      End;
   End;
end;

procedure TForm_PatientSearch.EditIPNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditHosIP.SetFocus;
   IF key=VK_Right Then EditIPName.SetFocus;
end;

procedure TForm_PatientSearch.EditIPNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditIPNo.SetFocus;
   IF key=VK_Right Then
   EditIPAgeSex.SetFocus;
end;

procedure TForm_PatientSearch.EditIPAgeSexKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditIPName.SetFocus;
   IF key=VK_Right Then
   EditIPDep.SetFocus;
end;

procedure TForm_PatientSearch.EditIPDepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditIPAgeSex.SetFocus;
   IF key=VK_Right Then
   EditWardRoom.SetFocus;
end;

procedure TForm_PatientSearch.EditWardRoomKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditIPDep.SetFocus;
   IF key=VK_Right Then
   EditAdmDate.SetFocus;
end;

procedure TForm_PatientSearch.Edit_MedicareNoOPChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(Edit_MedicareNoOP.Text)<>'' Then
      Begin
         Filter:=' MemberNo = '+#39+Edit_MedicareNoOP.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TForm_PatientSearch.Edit_MemberNoDisChange(Sender: TObject);
begin
     With QueryDischarge do
     Begin
          IF Trim(EditDisIPNo.Text)<>'' Then
          Begin
               Filter:=' MemberNo = '+#39+EditDisIPNo.Text+'*'+#39;
               Filtered:=True;
          End
          Else
          Filtered:=False;
     End;
     StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditAdmDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditWardRoom.SetFocus;
   IF key=VK_Right Then
   EditInTime.SetFocus;
end;

procedure TForm_PatientSearch.EditInTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditAdmDate.SetFocus;
   IF key=VK_Right Then
   EditIPAddress.SetFocus;
end;

procedure TForm_PatientSearch.EditDisDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisInTime.SetFocus;
   IF key=VK_Right Then EditDisTime.SetFocus;
end;

procedure TForm_PatientSearch.EditDisTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisDate.SetFocus;
   IF key=VK_Right Then EditDisAddress.SetFocus;
end;

procedure TForm_PatientSearch.EditNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditPatientId.SetFocus;
   IF key=VK_Right Then EditAgeSerch.SetFocus;
end;

procedure TForm_PatientSearch.EditAgeSerchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditName.SetFocus;
   IF key=VK_Right Then EditDept.SetFocus;
end;

procedure TForm_PatientSearch.EditDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDept.SetFocus;
   IF key=VK_Right Then EditTime.SetFocus;
end;

procedure TForm_PatientSearch.EditDistrictKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditPAddress.SetFocus;
   IF key=VK_Right Then EditCareOf.SetFocus;
end;

procedure TForm_PatientSearch.EditVDCMPCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then
   EditDistrict.SetFocus;
   IF key=VK_Right Then
   EditPAddress.SetFocus;
end;

procedure TForm_PatientSearch.EditPAddressKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditTime.SetFocus;
   IF key=VK_Right Then EditDistrict.SetFocus;
end;

procedure TForm_PatientSearch.EditCareOfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDistrict.SetFocus;
end;

procedure TForm_PatientSearch.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
var li_HospitalNo:Integer;
begin
     If key=#13 then
     SPB_SearchOPClick(Sender);
end;

procedure TForm_PatientSearch.EditSearchLastNameKeyPress(Sender: TObject;
  var Key: Char);
begin
     If key=#13 then
     BitBtnRefreshClick(Sender);
end;

procedure TForm_PatientSearch.EditInpatientIdKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   If key=#13 then
   SPB_SearchIPClick(Sender);
   IF Not( key IN['0'..'9']) Then
   Key:=#0;
end;

procedure TForm_PatientSearch.EditHosIPChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditHosIP.Text)<>'' Then
         Begin
            Filter:=' PatientIdStr = '+#39+EditHosIP.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditHosIP.Text)<>'' Then
         Begin
            Filter:=' PatientIdS = '+#39+EditHosIP.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditIPNoChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPNo.Text)<>'' Then
         Begin
            Filter:=' InPatientIdStr = '+#39+EditIPNo.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPNo.Text)<>'' Then
         Begin
            Filter:=' InPatientIdS = '+#39+EditIPNo.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);   
   End;
end;

procedure TForm_PatientSearch.EditIPNameChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPName.Text)<>'' Then
         Begin
            Filter:=' PatientName = '+#39+EditIPName.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPName.Text)<>'' Then
         Begin
            Filter:=' Name = '+#39+EditIPName.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditIPAgeSexChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPAgeSex.Text)<>'' Then
         Begin
            Filter:=' AgeGender = '+#39+EditIPAgeSex.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPAgeSex.Text)<>'' Then
         Begin
            Filter:=' AgeGender = '+#39+EditIPAgeSex.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditIPDepChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPDep.Text)<>'' Then
         Begin
            Filter:=' DepCode = '+#39+EditIPDep.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPDep.Text)<>'' Then
         Begin
            Filter:=' DepCode = '+#39+EditIPDep.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditWardRoomChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditWardRoom.Text)<>'' Then
         Begin
            Filter:=' WardRoomType = '+#39+EditWardRoom.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditWardRoom.Text)<>'' Then
         Begin
            Filter:=' WardRoom = '+#39+EditWardRoom.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditIPDistrictChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPDistrict.Text)<>'' Then
         Begin
            Filter:=' DistrictName = '+#39+EditIPDistrict.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPDistrict.Text)<>'' Then
         Begin
            Filter:=' DistrictName = '+#39+EditIPDistrict.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

procedure TForm_PatientSearch.EditIPAddressChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPAddress.Text)<>'' Then
         Begin
            Filter:=' FullAddress = '+#39+EditIPAddress.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPAddress.Text)<>'' Then
         Begin
            Filter:=' FullAddress = '+#39+EditIPAddress.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);   
   End;
end;



procedure TForm_PatientSearch.EditAdmDateChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditAdmDate.Text)<>'' Then
         Begin
            Filter:=' AdmnDate = '+#39+EditAdmDate.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditAdmDate.Text)<>'' Then
         Begin
            Filter:=' InptDate = '+#39+EditAdmDate.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);      
   End;
end;

procedure TForm_PatientSearch.EditInTimeChange(Sender: TObject);
begin
   With QueryOutStandingPt do
   Begin
      IF Trim(EditInTime.Text)<>'' Then
      Begin
         Filter:=' InptTime = '+#39+EditInTime.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);   
end;

procedure TForm_PatientSearch.BitBtnRefreshClick(Sender: TObject);
var li_HospitalNo:Integer;
begin
   IF (CheckBoxExtended.Checked=True) and (Trim(EditHospitalNo.Text)='') Then
   Begin
      MessageDlg('You must have to enter either Hospital No or Patient Name.',mtWarning,[mbok],0);
      Exit;
   End;
   
   {IF (key=#13) and (RadioButtonDischargePt.Checked=True) and (CheckBoxExtended.Checked=True) and
   (Trim(EditHospitalNo.Text)='') and (Trim(EditSearchLastName.Text)='') and (Trim(EditInpatientId.Text)='') Then
   Begin
      MessageDlg('In case of discharge patient search from all '+Char(10)+Char(10)+
      'plz. put either Name , Cast ,Hospital No or Inpatient No.',mtWarning,[mbok],0);
      Exit;
   End Else IF (key=#13) and (RadioButtonOldPt.Checked=True) and (CheckBoxExtended.Checked=True) and
   (Trim(EditHospitalNo.Text)='') and (Trim(EditSearchLastName.Text)='')  Then
   Begin
      MessageDlg('In case of Re-Visit patient search from all '+Char(10)+Char(10)+
      'plz. put either Name , Cast ,Hospital No.',mtWarning,[mbok],0);
      Exit;
   End;}
   IF (0=0) Then
   Begin
      Try
         li_HospitalNo:=StrToInt(EditHospitalNo.Text);
         IsNumeric:=True;
      Except
         IsNumeric:=False;
      End;
      AdmissionDischargeList;
   End Else IF 0=0 Then
   Begin
      Try
         li_HospitalNo:=StrToInt(EditHospitalNo.Text);
         IsNumeric:=True;
      Except
         IsNumeric:=False;
      End;
   End;
end;


procedure TForm_PatientSearch.EditIPDistrictKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditIPAddress.SetFocus;
   IF key=VK_Right Then EditIPCareOf.SetFocus;
end;

procedure TForm_PatientSearch.SPB_SearchIPClick(Sender: TObject);
var ls_PatientNo:Integer;
begin
     IF (CheckBoxAll.Checked=True) and (Trim(EditSearch.Text)='')  Then
     Begin
          MessageDlg('You must have to enter either Hospital No Or In-Patient No or Patient Name.',mtWarning,[mbok],0);
          Exit;
     End;

     QueryAdmission.Filtered:=False;
     QueryOutStandingPt.Filtered:=False;
     QueryDischarge.Filtered:=False;
     IsNumeric:=True;
     Try
          ls_PatientNo:=StrToInt(EditSearch.Text);
          IsNumeric:=True;
     Except
          QueryOutStandingPt.Filtered:=False;
          IsNumeric:=False;
     End;


     IF (RB_OutStanding.Checked=True) Then//and (ps_ReportType='IP') Then
     OutStandingPatientSearch
     Else
     AdmissionDischargeList;
end;


procedure TForm_PatientSearch.AdmissionDischargeList;
Begin
     if RB_Admission.Checked=True then
     Begin
          With QueryAdmission do
          Begin
               Close;
               sql.Clear;
               Close;
               sql.Clear;
               sql.add(' Select PatientIdStr as PatientId,InpatientIDStr as InpatientId,MemberNo,Title,Upper(PatientName) as PatientName,AgeGender,DepCode,');
               sql.add(' WardRoomType,AdmnDate,AdmnTime,OutDate as DisDate,OutTime as DisTime,DisDate as BillDate,Upper(FullAddress) as FullAddress,Upper(DistrictName) DistrictName,');
               sql.add(' Upper(GName) as GName,Upper(GRelation) as GName,GMobileNo,SchemeName');
               sql.add(' From VW_HS_ADMNPATIENTCURRENTINFO where AdmnDate >='+#39+DateEditX_From.Text+#39+' and AdmnDate <='+#39+DateEditX_To.Text+#39);
               IF (IsNumeric=False) and (Trim(EditSearch.Text)<>'') Then
               Begin
                    sql.Add(' and ((Fname  like '+chr(39)+EditSearch.text+'%'+chr(39));
                    sql.Add(' Or Lname  like '+chr(39)+EditSearch.text+'%'+chr(39)+')');
                    sql.Add(' Or (Replace(PatientName,'' '','''') Like '+Char(39)+StringReplace(EditSearch.text,' ','',[rfReplaceAll])+'%'+chr(39)+'))');
                    IF Trim(EditInpatientNo.Text)<>'' Then
                    sql.add(' and InpatientId='+EditInpatientNo.Text);
               End
               Else
               Begin
                    IF (Trim(EditSearch.Text)<>'') Then
                    sql.add(' and PatientId='+EditSearch.Text);
                    IF Trim(EditInpatientNo.Text)<>'' Then
                    sql.add(' and InpatientId='+EditInpatientNo.Text);
               End;

               if CB_MedicarePatient.Checked=True then
               sql.add(' and NVL(MemberNo,''0'')<>''0''');

               if Trim(DBLCB_IPScheme.Text)<>'' then
               sql.Add(' and SchemeId='+IntToStr(DBLCB_IPScheme.KeyValue));

               sql.add(' Order by AdmnDate,InpatientId');
               //sql.saveToFile('C:\Admn.Txt');
               Open;
          End;

          IF CB_MedicarePatient.Checked=False Then
          StatusBarPatientSearch.Panels[0].Text:='Total Admission - '+IntToStr(QueryAdmission.RecordCount)
          Else
          StatusBarPatientSearch.Panels[0].Text:='Total Admission(MCP) - '+IntToStr(QueryAdmission.RecordCount);
     End
     else
     begin
          With QueryAdmission do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select PatientIdStr as PatientId,InpatientIDStr as InpatientId,MemberNo,Title,Upper(PatientName) as PatientName,AgeGender,DepCode,');
               sql.add(' WardRoomType,AdmnDate,AdmnTime,OutDate as DisDate,OutTime as DisTime,DisDate as BillDate,Upper(FullAddress) as FullAddress,Upper(DistrictName) DistrictName,');
               sql.add(' Upper(GName) as GName,Upper(GRelation) as GName,GMobileNo,SchemeName');
               sql.add(' From VW_HS_ADMNPATIENTCURRENTINFO ');
               sql.add(' where IsDischarged=''Y'' and');
               sql.add(' Case when DisInDepositDate is Null Then  DisDate Else DisInDepositDate End >='+#39+DateEditX_From.Text+#39+' and');
               sql.add(' Case when DisInDepositDate is Null Then  DisDate Else DisInDepositDate End <='+#39+DateEditX_To.Text+#39);

               IF (IsNumeric=False) and (Trim(EditSearch.Text)<>'') Then
               Begin
                    sql.Add(' and ((Fname  like '+chr(39)+EditSearch.text+'%'+chr(39));
                    sql.Add(' Or Lname  like '+chr(39)+EditSearch.text+'%'+chr(39)+')');
                    sql.Add(' Or (Replace(PatientName,'' '','''') Like '+Char(39)+StringReplace(EditSearch.text,' ','',[rfReplaceAll])+'%'+chr(39)+'))');
                    IF Trim(EditInpatientNo.Text)<>'' Then
                    sql.add(' and InpatientId='+EditInpatientNo.Text);
               End
               Else
               Begin
                    IF (Trim(EditSearch.Text)<>'') Then
                    sql.add(' and PatientId='+EditSearch.Text);
                    IF Trim(EditInpatientNo.Text)<>'' Then
                    sql.add(' and InpatientId='+EditInpatientNo.Text);
               End;

               if CB_MedicarePatient.Checked=True then
               sql.add(' and NVL(MemberNo,''0'')<>''0''');

               if Trim(DBLCB_IPScheme.Text)<>'' then
               sql.Add(' and SchemeId='+IntToStr(DBLCB_IPScheme.KeyValue));
               sql.add(' Order by DisDate,InpatientId');
               sql.saveToFile('C:\Dis.Txt');
               Open;
          End;

          IF CB_MedicarePatient.Checked=False Then
          StatusBarPatientSearch.Panels[0].Text:='Total Discharged - '+IntToStr(QueryAdmission.RecordCount)
          Else
          StatusBarPatientSearch.Panels[0].Text:='Total Admission(MCP) - '+IntToStr(QueryAdmission.RecordCount);




     end;
     StatusBarPatientSearch.Panels[1].Text:=' ';
     StatusBarPatientSearch.Panels[2].Text:=' ';
     StatusBarPatientSearch.Panels[3].Text:=' ';
End;

procedure TForm_PatientSearch.OutStandingPatientSearch;
Begin
     ps_InptTimeStr:='';
     ps_OutstptStr:='';
     with QueryOutStandingPt do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select PatientIdStr as PatientId,InpatientIDStr as InpatientId,MemberNo,Title,Upper(PatientName) as PatientName,AgeGender,DepCode,');
          sql.add(' WardRoomType,AdmnDate,AdmnTime,OutDate as DisDate,OutTime as DisTime,DisDate as BillDate,Upper(FullAddress) as FullAddress,Upper(DistrictName) DistrictName,');
          sql.add(' Upper(GName) as GName,Upper(GRelation) as GName,GMobileNo');
          sql.add(' From VW_HS_ADMNPATIENTCURRENTINFO where InpatientId In (');
          sql.add(' Select InpatientId From InpatientReg where IsDischarged<>''C'' and ADMNDate <='+#39+DateEditX_From.Text+#39);
          sql.add(' and (Case when Trim(DisInDepositDate) is null Then Trim(DisDate) Else DisInDepositDate End >'+#39+DateEditX_From.Text+#39+' or ' +'(Trim(DisDate) is NULL and IsDisInDeposit=''N'')))');
          IF (IsNumeric=False) and (Trim(EditSearch.Text)<>'') Then
          Begin
               sql.Add(' and ((Fname  like '+chr(39)+EditSearch.text+'%'+chr(39));
               sql.Add(' Or Lname  like '+chr(39)+EditSearch.text+'%'+chr(39)+')');
               sql.Add(' Or (Replace(PatientName,'' '','''') Like '+Char(39)+StringReplace(EditSearch.text,' ','',[rfReplaceAll])+'%'+chr(39)+'))');
               IF Trim(EditInpatientNo.Text)<>'' Then
               sql.add(' and InpatientId='+EditInpatientNo.Text);
          End
          Else
          Begin
               IF (Trim(EditSearch.Text)<>'') Then
               sql.add(' and PatientId='+EditSearch.Text);
               IF Trim(EditInpatientNo.Text)<>'' Then
               sql.add(' and InpatientId='+EditInpatientNo.Text);
          End;

          if CB_MedicarePatient.Checked=True then
          sql.add(' and NVL(MemberNo,''0'')<>''0''');

          if Trim(DBLCB_IPScheme.Text)<>'' then
          sql.Add(' and SchemeId='+IntToStr(DBLCB_IPScheme.KeyValue));

          sql.add(' Order by AdmnDate,InpatientId');
          //sql.saveToFile('C:\OutStd.Txt');
          Open;
     End;
     DBGridMain.DataSource:=DataSourceOutStdPt;
     if CB_MedicarePatient.Checked=False then
     StatusBarPatientSearch.Panels[0].Text:='Total Outstanding Pt. = '+IntToStr(QueryOutStandingPt.RecordCount)
     Else
     StatusBarPatientSearch.Panels[0].Text:='Total Med. Outstd. Pt. = '+IntToStr(QueryOutStandingPt.RecordCount);
     StatusBarPatientSearch.Panels[1].Text:=' ';
     StatusBarPatientSearch.Panels[2].Text:=' ';
     StatusBarPatientSearch.Panels[3].Text:=' ';
End;

procedure TForm_PatientSearch.BitBtnExcelClick(Sender: TObject);
begin
     IF (ps_ReportType='IP') or (ps_ReportType='EMERGENCY') Then
     Begin
          IF RB_OutStanding.Checked=True Then
          Begin
               IF Not QueryOutStandingPt.Active Then Exit;
               IF QueryOutStandingPt.RecordCount > 0 Then
               Begin
                    if CB_MedicarePatient.Checked=False then
                    Begin
                         if Trim(DBLCB_IPScheme.Text)='' then
                         SendToExcels(QueryOutStandingPt,nil,'Outstanding Inpatient List','Till : '+DateEditX_From.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                         else
                         SendToExcels(QueryOutStandingPt,nil,'Outstanding Inpatient List ('+DBLCB_IPScheme.Text+')','Till : '+DateEditX_From.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
                    End
                    else
                    SendToExcels(QueryOutStandingPt,nil,'Outstanding(MCP) Inpatient List','Till : '+DateEditX_From.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
               End;
          End
          Else IF RB_Admission.Checked=True Then
          Begin
               IF Not QueryAdmission.Active Then Exit;
               IF QueryAdmission.RecordCount > 0 Then
               Begin
                    IF ps_ReportType='EMERGENCY' Then
                    SendToExcels(QueryAdmission,nil,'Emergency Admitted Patient List',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                    Else
                    Begin
                         if CB_MedicarePatient.Checked=False then
                         Begin
                              if Trim(DBLCB_IPScheme.Text)='' then
                              SendToExcels(QueryAdmission,nil,'Admitted Patient List',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                              else
                              SendToExcels(QueryAdmission,nil,'Admitted Patient List ('+DBLCB_IPScheme.Text+')', DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
                         End
                         else
                         SendToExcels(QueryAdmission,nil,'Admitted(MCP) Patient List',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                    End;
               End;
          End
          else
          begin
               IF Not QueryAdmission.Active Then Exit;
               IF QueryAdmission.RecordCount > 0 Then
               Begin
                    if CB_MedicarePatient.Checked=False then
                    Begin
                         if Trim(DBLCB_IPScheme.Text)='' then
                         SendToExcels(QueryAdmission,nil,'Discharged Patient List',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                         else
                         SendToExcels(QueryAdmission,nil,'Discharged Patient List ('+DBLCB_IPScheme.Text+')',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
                    End
                    else
                    SendToExcels(QueryAdmission,nil,'Discharged(MCP) Patient List',DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
               End;
          end;
     End
     Else IF ps_ReportType='OP' Then
     Begin
          QueryOutPatient.Filtered:=False;
          //IF Not QueryOutPatient.Active Then Exit;
          //IF QueryOutPatient.RecordCount > 0 Then
          Begin
               if CB_OPMedicarePatient.Checked=False then
               Begin
                    if Trim(DBLCB_OPScheme.Text)='' then
                    SendToExcels(QueryOutPatient,nil,ps_ReportTitle,DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0)
                    else
                    Begin
                         ps_ReportTitle:=ps_ReportTitle+' ( '+DBLCB_OPScheme.Text+' )';
                         SendToExcels(QueryOutPatient,nil,ps_ReportTitle,DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
                    End;
               End
               else
               SendToExcels(QueryOutPatient,nil,ps_ReportTitle,DateEditX_From.Text+'-'+DateEditX_To.Text,'IGNORE',gs_HospitalName,gs_HospitalAddress,0);
          End;
     End;
end;

procedure TForm_PatientSearch.RB_AdmissionClick(Sender: TObject);
begin
     RB_OutStanding.Font.Color:=clBlack;
     RB_Admission.Font.Color:=clFuchsia;
     QueryOutStandingPt.Close;
     DateEditX_To.Enabled:=True;
     DateEditX_To.Color:=clWhite;
     Label4.Enabled:=True;
     Button_To.Enabled:=True;
     DBGridMain.DataSource:=DataSourceAdmnDisList;
     StatusBarPatientSearch.Panels[0].Text:='';
     StatusBarPatientSearch.Panels[1].Text:='';
     CheckBoxAll.Enabled:=True;
     EditSearch.SetFocus;
end;

procedure TForm_PatientSearch.RB_OutStandingClick(Sender: TObject);
begin
     RB_OutStanding.Font.Color:=clFuchsia;
     RB_Admission.Font.Color:=clBlack;
     QueryAdmission.Close;
     DateEditX_To.Enabled:=False;
     DateEditX_To.Color:=clMenu;
     Label4.Enabled:=False;
     Button_To.Enabled:=False;
     DBGridMain.DataSource:=DataSourceOutStdPt;
     StatusBarPatientSearch.Panels[0].Text:='';
     StatusBarPatientSearch.Panels[1].Text:='';
     EditSearch.SetFocus;
end;

procedure TForm_PatientSearch.CB_MedicarePatientClick(Sender: TObject);
begin
     if CB_MedicarePatient.Checked then DBLCB_IPScheme.KeyValue:=-1;
end;

procedure TForm_PatientSearch.CB_OPMedicarePatientClick(Sender: TObject);
begin
     if CB_OPMedicarePatient.Checked then DBLCB_OPScheme.KeyValue:=-1;
end;

procedure TForm_PatientSearch.CheckBoxAllKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF Key=VK_Left Then EditInpatientNo.SetFocus;
   IF key=VK_Down Then EditHosIP.SetFocus;
end;

procedure TForm_PatientSearch.DBGridMainKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF (key = vk_f12) or ((ssShift in Shift) and (key = vk_up)) then
   EditHosIP.setfocus;
end;

procedure TForm_PatientSearch.Button_DateFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From,Button_DateFrom);
     ChangeDateSystem(DateEditX_To,Button_To);
end;

procedure TForm_PatientSearch.Button_ToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From,Button_DateFrom);
     ChangeDateSystem(DateEditX_To,Button_To);
end;

procedure TForm_PatientSearch.EditIPAddressKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditInTime.SetFocus;
   IF key=VK_Right Then EditIPDistrict.SetFocus;   
end;

procedure TForm_PatientSearch.BitBtnPreviewClick(Sender: TObject);
begin
(*     IF (ps_ReportType='INPATIENT') or (ps_ReportType='EMERGENCY') Then
     Begin
          IF RB_OutStanding.Checked=True Then
          Begin
               IF Not QueryOutStandingPt.Active Then Exit;
               IF QueryOutStandingPt.RecordCount <= 0 Then
               Begin
                    MessageDlg('There is not any outstanding patient for to send in report.',mtinformation,[mbok],0);
                    Exit;
               End;
               With QRInpatientList do
               Begin
                    try
                         QueryCommunity.Close;
                         QueryCommunity.Open;

                         with QueryFindInptTime do
                         Begin
                              Close;
                              sql.Clear;
                              //sql.add(ps_InptTimeStr);
                              sql.add(' Select InpatientId,InTime,InptDate From InpatientDetail where ');
                              sql.add(' InpatientdId In (Select Min(InpatientdId) as Inpatientdid From');
                              sql.add(' InPatientDetail where InpatientId In (Select InpatientId From InpatientReg where');
                              sql.add(' InptDate <='+#39+DateEditX_From.Text+#39);
                              sql.add(' and (Trim(DisDate) > '+#39+DateEditX_From.Text+#39+' or Trim(DisDate) is NULL)');
                              sql.add(' )');
                              sql.add(' Group By InpatientId)');
                              Open;
                         End;

                         With QueryName do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Patientid,PAddress,DISTRICTID,(FName||'' ''||LName) as FullName ,');
                              sql.add(' (Age||'' / ''||SubStr(gender,1,1)) as AgeGender from patientMain where ');
                              sql.add(' PatientId In (Select PatientId From InpatientReg Where ');
                              sql.add(' InptDate <='+#39+DateEditX_From.Text+#39);
                              sql.add(' and (Trim(DisDate) > '+#39+DateEditX_From.Text+#39+' or Trim(DisDate) is NULL)');
                              sql.add(' )');
                              Open;
                         End;

                         with QueryMain do
                         Begin
                              Close;
                              sql.Clear;
                              //sql.add(ps_OutstptStr);
                              sql.add(' Select PatientId,InPatientId,WardCode,RoomTypeCode,DepCode,');
                              sql.add(' BedCharge,DisPer,(Select CommunityId From InpatientReg where ');
                              sql.add(' InpatientId=InPatientDetail.InpatientId) as CommunityId From InPatientDetail ');
                              sql.add(' where InPatientDID In (Select Max(InPatientDId) as InPatientDID From InPatientDetail');
                              sql.add(' where InpatientId In ( Select InpatientId From InpatientReg where ');
                              sql.add(' InptDate <='+#39+DateEditX_From.Text+#39);
                              sql.add(' and (Trim(DisDate) > '+#39+DateEditX_From.Text+#39+'  or Trim(DisDate) is NULL)');
                              sql.add(' )');
                              sql.add(' Group By InpatientId) Order By InPatientId');
                              //sql.saveToFile('C:\OutStanding.Txt');
                              Open;
                         End;

                         QRLabel1.Font.Color:=clWhite;
                         QRLabelFDate.Font.Color:=clWhite;
                         QRLabel2.Caption:=' On or Before Date : '+DateEditX_From.Text;
                         QRLabelTDate.Font.Color:=clWhite;
                         QRLabelTDate.Top:=2;
                         QRLabelCommunity.Font.Color:=clWhite;
                         QRLabelCommunityCap.Font.Color:=clWhite;
                         QRLabelDep.Caption:='All';
                         QRLabel14.Caption:='Outstanding Patient List';
                         QRLabelPDate.Caption:=ServerDate.TodaysDate;
                         Preview;
                    Finally
                         QueryFindInptTime.Close;
                         QueryName.Close;
                         QueryMain.Close;
                    End;
               End;
          End
          Else
          Begin
               IF Not QueryAdmission.Active Then Exit;
               IF QueryAdmission.RecordCount <= 0 Then
               Begin
                    MessageDlg('There is not any outstanding ptaient for to send in report.',mtinformation,[mbok],0);
                    Exit;
               End;
               With QRInpatientList do
               Begin
                    try
                         QRInpatientList.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextInptDate.DataSet:=FormPatientSearch.QueryAdmission;

                         QRDBTextInTime.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextInTime.DataField:='InptTime';

                         QRDBTextIPNo.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextIPNo.DataField:='INPATIENTIDS';

                         QRDBTextPatientId.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextPatientId.DataField:='PATIENTIDS';

                         QRDBTextName.DataSet:=FormPatientSearch.QueryAdmission;

                         QRDBTextAgeSex.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextAgeSex.DataField:='AGEGENDER';

                         QRDBTextDept.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextDept.DataField:='DEPCODE';

                         QRDBTextWard.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextWard.DataField:='WardCode';

                         QRDBTextAddress.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextAddress.DataField:='ADDRESS';

                         QRDBText5.DataSet:=FormPatientSearch.QueryAdmission;

                         QRLabel12.Left:=676;
                         QRLabel12.BringToFront;

                         QRDBTextComCode.Left:=675;
                         QRDBTextComCode.BringToFront;

                         QRDBTextComCode.DataSet:=FormPatientSearch.QueryAdmission;
                         QRDBTextComCode.DataField:='ComCode';

                         QRLabel8.Font.Color:=clWhite;
                         QRLabel1.Font.Color:=clBlack;
                         QRLabelFDate.Font.Color:=clBlack;
                         QRLabelFDate.Caption:=DateEditX_From.Text;
                         QRLabelTDate.Top:=22;
                         QRLabelTDate.Font.Color:=clBlack;
                         QRLabelTDate.Caption:=DateEditX_To.Text;
                         QRLabel2.Caption:='To :';

                         QRLabelCommunity.Font.Color:=clWhite;
                         QRLabelCommunityCap.Font.Color:=clWhite;

                         QRLabelDep.Caption:='All';
                         IF ps_ReportType='EMERGENCY' Then
                         QRLabel14.Caption:='Emergency Admitted Patient List'
                         Else
                         QRLabel14.Caption:='Admitted Patient List';
                         QRLabelPDate.Caption:=ServerDate.TodaysDate;
                         Preview;
                    Except
                    End;
               End;
          End;
     End
     Else IF ps_ReportType='DISCHARGE' Then
     Begin
          IF Not QueryDischarge.Active Then Exit;
          IF QueryDischarge.RecordCount <= 0 Then
          Begin
               MessageDlg('There is not any discharge ptaient for to send in report.',mtinformation,[mbok],0);
               Exit;
          End;

          With QRDischargeList do
          Begin
               try
                    QRDischargeList.DataSet:=FormPatientSearch.QueryDischarge;

                    QRDBTextInptDate.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextInptDate.DataField:='INPTDATE';

                    QRDBTextDisDate.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextDisDate.DataField:='DISDATE';


                    QRDBTextInptNo.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextInptNo.DataField:='INPATIENTIDS';

                    QRDBTextPatientId.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextPatientId.DataField:='PATIENTIDS';

                    QRDBTextName.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextName.DataField:='NAME';

                    QRDBTextAgeSex.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextAgeSex.DataField:='AGEGENDER';

                    QRDBTextDept.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextDept.DataField:='DEPCODE';

                    QRDBTextWard.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextWard.DataField:='WardCode';

                    QRDBTextAddress.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextAddress.DataField:='ADDRESS';

                    QRDBTextCat.DataSet:=FormPatientSearch.QueryDischarge;

                    QRDBTextComCode.DataSet:=FormPatientSearch.QueryDischarge;
                    QRDBTextComCode.DataField:='ComCode';

                    QRLabel8.Font.Color:=clWhite;
                    QRLabelFDate.Caption:=DateEditX_From.Text;
                    QRLabelTDate.Caption:=DateEditX_To.Text;

                    QRLabelCommunity.Font.Color:=clWhite;
                    QRLabelCommunityCap.Font.Color:=clWhite;
                    QRLabelDep.Caption:='All';
                    QRLabelPDate.Caption:=ServerDate.TodaysDate;
                    Preview;
               Except
               End;
          End;
     End
     Else
     Begin
          IF Not QueryOutPatient.Active Then Exit;
          IF QueryOutPatient.RecordCount <= 0 Then
          Begin
               MessageDlg('There is not any discharge ptaient for to send in report.',mtinformation,[mbok],0);
               Exit;
          End;

          With QRPatientDetails do
          Begin
               try
                    QRPatientDetails.DataSet:=FormPatientSearch.QueryOutPatient;

                    QRDBTextPatientId.DataSet:=FormPatientSearch.QueryOutPatient;
                    QRDBTextPatientId.DataField:='PatientIdS';

                    QRDBTextName.DataSet:=FormPatientSearch.QueryOutPatient;
                    QRDBTextName.DataField:='Name';


                    QRDBTextAgeSex.DataSet:=FormPatientSearch.QueryOutPatient;
                    QRDBTextAgeSex.DataField:='AgeGender';

                    QRDBTextDept.DataSet:=FormPatientSearch.QueryOutPatient;
                    QRDBTextDept.DataField:='DepCode';

                    QRDBTextAddress.DataSet:=FormPatientSearch.QueryOutPatient;
                    QRDBTextAddress.DataField:='ADDRESS';
                    QRDBTextAddress.Width:=220;

                    QRDBTextComCode.DataSet:=FormPatientSearch.QueryOutPatient;

                    QRLabel5.Font.Color:=clWhite;
                    QRLabel_Location.Font.Color:=clWhite;
                    QRLabel8.Font.Color:=clWhite;
                    QRLabel_Gender.Font.Color:=clWhite;
                    QRLabel9.Font.Color:=clWhite;
                    QRLabel_Age.Font.Color:=clWhite;
                    QRLabel16.Font.Color:=clWhite;

                    QRLabelFDate.Caption:=DateEditX_From.Text;
                    QRLabelTDate.Caption:=DateEditX_To.Text;
                    QRLabel_TotPatient.Caption:=IntToStr(QueryOutPatient.RecordCount);
                    QRLabel_Summary.Font.Color:=clWhite;
                    QRLabel_Date.Caption:=ServerDate.TodaysDate;
                    QRLabel_ReportTitle.Caption:=ps_ReportTitle;
                    Preview;
               Except
               End;
          End;
     End;  *)
end;

procedure TForm_PatientSearch.FormCreate(Sender: TObject);
begin
(*     Application.CreateForm(TQRInpatientList,QRInpatientList);
     Application.CreateForm(TQRDischargeList,QRDischargeList);
     Application.CreateForm(TQRPatientDetails,QRPatientDetails);
*)
end;

procedure TForm_PatientSearch.FormDestroy(Sender: TObject);
begin
(*     QRInpatientList.Free;
     QRDischargeList.Free;
     QRPatientDetails.Free;
*)
end;

procedure TForm_PatientSearch.EditDisHospNoChange(Sender: TObject);
begin
     With QueryDischarge do
     Begin
          IF Trim(EditDisHospNo.Text)<>'' Then
          Begin
               Filter:=' PatientId = '+#39+EditDisHospNo.Text+'*'+#39;
               Filtered:=True;
          End
          Else
          Filtered:=False;
     End;
     StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisHospNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=VK_UP Then EditInpatientNo.SetFocus;
     IF Key=VK_Right Then EditDisIPNo.SetFocus;
     IF key=VK_Down Then
     Begin
          IF not QueryDischarge.Active Then Exit;
          IF QueryDischarge.RecordCount > 0 Then
          Begin
               ActiveControl:=DBGridDischarge;
               DBGridDischarge.SelectedIndex:=0;
          End;
     End;
end;

procedure TForm_PatientSearch.EditDisIPNoChange(Sender: TObject);
begin
     With QueryDischarge do
     Begin
          IF Trim(EditDisIPNo.Text)<>'' Then
          Begin
               Filter:=' InPatientId = '+#39+EditDisIPNo.Text+'*'+#39;
               Filtered:=True;
          End
          Else
          Filtered:=False;
     End;
     StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisPtNameChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisPtName.Text)<>'' Then
         Begin
            Filter:=' Name = '+#39+EditDisPtName.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisPtAgeSexChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisPtAgeSex.Text)<>'' Then
         Begin
            Filter:=' AgeGender = '+#39+EditDisPtAgeSex.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisPtDeptChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisPtDept.Text)<>'' Then
         Begin
            Filter:=' DepCode = '+#39+EditDisPtDept.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisWardChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisWard.Text)<>'' Then
         Begin
            Filter:=' WardRoomType = '+#39+EditDisWard.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisAdmnDateChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisAdmnDate.Text)<>'' Then
         Begin
            Filter:=' AdmnDate = '+#39+EditDisAdmnDate.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisDateChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisDate.Text)<>'' Then
         Begin
            Filter:=' DisDate = '+#39+EditDisDate.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisTimeChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisTime.Text)<>'' Then
         Begin
            Filter:=' DisTime = '+#39+EditDisTime.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.EditDisAddressChange(Sender: TObject);
begin
      With QueryDischarge do
      Begin
         IF Trim(EditDisAddress.Text)<>'' Then
         Begin
            Filter:=' FullAddress = '+#39+EditDisAddress.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryDischarge.RecordCount);
end;

procedure TForm_PatientSearch.DBGridDischargeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF (key = vk_f12) or ((ssShift in Shift) and (key = vk_up)) then
   EditDisHospNo.setfocus;
end;

procedure TForm_PatientSearch.EditDisIPNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisIPNo.SetFocus;
   IF key=VK_Right Then Edit_MemberNoDis.SetFocus;
end;

procedure TForm_PatientSearch.EditDisPtNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then Edit_MemberNoDis.SetFocus;
   IF key=VK_Right Then EditDisPtAgeSex.SetFocus;
end;

procedure TForm_PatientSearch.EditDisPtAgeSexKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisPtName.SetFocus;
   IF key=VK_Right Then EditDisPtDept.SetFocus;
end;

procedure TForm_PatientSearch.EditDisPtDeptKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisPtAgeSex.SetFocus;
   IF key=VK_Right Then EditDisWard.SetFocus;
end;

procedure TForm_PatientSearch.EditDisWardKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisPtDept.SetFocus;
   IF key=VK_Right Then EditDisAdmnDate.SetFocus;
end;

procedure TForm_PatientSearch.EditDisAdmnDateKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisWard.SetFocus;
   IF key=VK_Right Then EditDisInTime.SetFocus;
end;

procedure TForm_PatientSearch.EditDisInTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisAdmnDate.SetFocus;
   IF key=VK_Right Then EditDisDate.SetFocus;
end;

procedure TForm_PatientSearch.EditDisAddressKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDisTime.SetFocus;
end;

procedure TForm_PatientSearch.Button_OPFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_OPFrom,Button_OPFrom);
     ChangeDateSystem(DateEditX_OPTo,Button_OPTo);
end;

procedure TForm_PatientSearch.Button_OPToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_OPFrom,Button_OPFrom);
     ChangeDateSystem(DateEditX_OPTo,Button_OPTo);
end;

procedure TForm_PatientSearch.SPB_SearchOPClick(Sender: TObject);
Var li_PatientNo:Integer;
begin
     IF (CheckBoxExtended.Checked=True) and (Trim(EditHospitalNo.Text)='')  Then
     Begin
          MessageDlg('You must have to enter either Hospital No or Patient Name.',mtWarning,[mbok],0);
          Exit;
     End;

     QueryOutPatient.Filtered:=False;
     IsNumeric:=True;
     Try
          li_PatientNo:=StrToInt(EditHospitalNo.Text);
          IsNumeric:=True;
     Except
          QueryOutPatient.Filtered:=False;
          IsNumeric:=False;
     End;
     OutPatientSearch;
end;

procedure TForm_PatientSearch.SpeedButton1Click(Sender: TObject);
Var li_SID : Integer;
    Serail : string;
begin
     With QueryAdmission do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('SELECT * FROM V$SESSION WHERE SID In (SELECT Session_Id FROM V$LOCKED_OBJECT)');
          Open;
          li_SID:= QueryAdmission.FieldByName('SID').AsInteger;

          Sleep(5000);

          Close;
          SQL.Clear;
          SQL.Add('SELECT R.*,SID||'',''||Serail# as LockedSession  FROM V$SESSION R WHERE SID In (SELECT Session_Id FROM V$LOCKED_OBJECT)');
          Open;

          Serail:=Copy(QueryAdmission.FieldByName('LockedSession').AsString,Pos(',',QueryAdmission.FieldByName('LockedSession').AsString)+1,15);



          IF li_SID = QueryAdmission.FieldByName('SID').AsInteger Then
          begin
               Try
                    DM_Hospital.DB.StartTransaction;
                    with QueryCommunity do
                    begin
                         Close;
                         SQL.Clear;
                         SQL.Add(' Insert Into Log_SessionLocked(SID,Serail,UserName,OSUser,MachineName,Program,ExecuteTime,LockedDateTime)');
                         SQL.Add(' Values('+IntToStr(QueryAdmission.FieldByName('SID').AsInteger));
                         SQL.Add(' ,'+#39+Serail+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('UserName').AsString+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('OSUser').AsString+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('Machine').AsString+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('Program').AsString+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('LogOn_Time').AsString+#39);
                         SQL.Add(' ,'+#39+QueryAdmission.FieldByName('Prev_Exec_Start').AsString+#39);
                         SQL.Add(' )');
                         ExecSQL;

                         Close;
                         SQL.Clear;
                         SQL.Add(' ALTER SYSTEM KILL SESSION '''+IntToStr(QueryAdmission.FieldByName('SID').AsInteger)+','+Serail+''' IMMEDIATE');
                         //SQL.SaveToFile('C:\SesssintKill.Txt');
                         ExecSQL;
                    end;
                    DM_Hospital.DB.Commit;
               except
                    DM_Hospital.DB.Rollback;
                    Exit;
               end;
          end;
     end;

     ShowDoneMessage;
end;

procedure TForm_PatientSearch.OutPatientSearch;
Begin
     With QueryOutPatient Do
     Begin
          Close;
          sql.Clear;
          SQL.Add(' SELECT PM.PATIENTIDSTR as PatientId,MemberNo,Upper(PATIENTNAME) PATIENTNAME,AGEGENDER,DEPCODE,VISITDATE,VISITTIME,');
          SQL.Add(' Trim((PM.VdcName)||'' ''||PM.wardNo||'' ''||(PM.Address)) as FullAddress,DISTRICTNAME,NEXTTOKIN,RELATION,MOBILENO,PHONENO,SchemeName');
          SQL.Add(' FROM VW_HS_PATIENTMAIN_ALL PM');
          IF RB_New.Checked=True Then
          SQL.Add(' Where NoOfVisit=1')
          Else IF RB_Old.Checked=True Then
          SQL.Add(' Where NoOfVisit > 1')
          Else
          SQL.Add(' where (0=0)');
          IF CheckBoxExtended.Checked=False Then
          Begin
               DateEditX_OPFrom.SystemOfDate:=gi_DateSystem;
               DateEditX_OPTo.SystemOfDate:=gi_DateSystem;
               sql.Add(' And VisitDate>='+#39+DateEditX_OPFrom.Text+#39);
               sql.Add(' AND VisitDate<='+#39+DateEditX_OPTo.Text+#39);
          End;
          IF (IsNumeric=True) and (Trim(EditHospitalNo.Text)<>'') Then
          sql.Add(' and PatientId = '+EditHospitalNo.Text)
          Else
          Begin
               IF Trim(EditHospitalNo.Text)<>'' Then
               Begin
                    sql.Add(' and ((FName Like '+#39+EditHospitalNo.Text+'%'+#39);
                    sql.Add(' Or LName Like '+#39+EditHospitalNo.Text+'%'+#39+')');
                    sql.Add(' Or Replace(PatientName,'' '','''') Like '+Char(39)+StringReplace(EditHospitalNo.text,' ','',[rfReplaceAll])+'%'+chr(39)+')');
               End;
          End;

          if CB_OPMedicarePatient.Checked=True then
          sql.Add(' and NVL(MemberNo,''0'')<>''0''');

          if Trim(DBLCB_OPScheme.Text)<>'' then
          sql.Add(' and SchemeId='+IntToStr(DBLCB_OPScheme.KeyValue));


          sql.add(' Order by VisitDate,VisitTime');
          //sql.saveToFile('C:\OPD.txt');
          Open;
     End;

     if CB_OPMedicarePatient.Checked=True then
     Begin
          if gs_From=gs_To then
          StatusBarPatientSearch.Panels[3].Text:='Total Medicare Patient : '+IntToStr(QueryOutPatient.RecordCount)+' of Date : '+DateEditX_OPFrom.text
          else
          StatusBarPatientSearch.Panels[3].Text:='Total Medicare Patient : '+IntToStr(QueryOutPatient.RecordCount)+' of Date Between '+DateEditX_OPFrom.text+' to '+DateEditX_OPTo.text;
     End;


     ShowPatientCountStatus;
End;


procedure TForm_PatientSearch.ShowPatientCountStatus;
Begin
     With QueryNewPt do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add(' Select Sum(NewTotal) as NewTotal,Sum(FollowUpTotal) as FollowUpTotal,Sum(Total) as Total');
          SQL.Add(' From VW_HS_STAT_RegVisitCount');
          SQL.Add(' where VisitDate>='+#39+DateEditX_OPFrom.text+#39+' and VisitDate<='+#39+DateEditX_OPTo.text+#39);
          Open;
     end;

     StatusBarPatientSearch.Panels[0].Text:='New Total : '+IntToStr(QueryNewPt.FieldByName('NewTotal').AsInteger);
     StatusBarPatientSearch.Panels[1].Text:='Follow Total : '+IntToStr(QueryNewPt.FieldByName('FollowUpTotal').AsInteger);
     if gs_From=gs_To then
     StatusBarPatientSearch.Panels[2].Text:='Total : '+IntToStr(QueryNewPt.FieldByName('Total').AsInteger)+' of Date : '+DateEditX_OPFrom.text
     else
     StatusBarPatientSearch.Panels[2].Text:='Total : '+IntToStr(QueryNewPt.FieldByName('Total').AsInteger)+' of Date Between '+DateEditX_OPFrom.text+' to '+DateEditX_OPTo.text;
End;



procedure TForm_PatientSearch.CheckBoxExtendedKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Up Then EditHospitalNo.SetFocus;
   IF key=VK_Down Then EditPatientId.SetFocus;   
end;

procedure TForm_PatientSearch.EditDeptKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditAgeSerch.SetFocus;
   IF key=VK_Right Then EditDate.SetFocus;
end;

procedure TForm_PatientSearch.EditSearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Down Then EditInpatientNo.SetFocus;
end;

procedure TForm_PatientSearch.EditInpatientNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_UP Then
   EditSearch.SetFocus;
   IF key=VK_Down Then
   Begin
      IF (ps_ReportType='INPATIENT') or (ps_ReportType='EMERGENCY') Then
      EditHosIP.SetFocus
      Else
      EditDisHospNo.SetFocus;
   End;
   IF key=VK_Right Then
   CheckBoxAll.SetFocus;
end;

procedure TForm_PatientSearch.EditSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF Key=#13 Then SPB_SearchIPClick(Sender);
end;

procedure TForm_PatientSearch.RB_NewClick(Sender: TObject);
begin
   RB_Both.Font.Color:=clBlack;
   RB_New.Font.Color:=clFuchsia;
   RB_Old.Font.Color:=clBlack;
   EditHospitalNo.SetFocus;
   ps_ReportTitle:='New Out Patient List';
end;

procedure TForm_PatientSearch.RB_OldClick(Sender: TObject);
begin
   RB_Both.Font.Color:=clBlack;
   RB_New.Font.Color:=clBlack;
   RB_Old.Font.Color:=clFuchsia;
   EditHospitalNo.SetFocus;
   ps_ReportTitle:='Old Out Patient List';   
end;

procedure TForm_PatientSearch.RB_BothClick(Sender: TObject);
begin
   RB_Both.Font.Color:=clFuchsia;
   RB_New.Font.Color:=clBlack;
   RB_Old.Font.Color:=clBlack;
   ps_ReportTitle:='New and Old Out Patient List';
   EditHospitalNo.SetFocus;
end;

procedure TForm_PatientSearch.EditHospitalNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Down Then EditPatientId.SetFocus;
end;

procedure TForm_PatientSearch.EditTimeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditDate.SetFocus;
   IF key=VK_Right Then EditPAddress.SetFocus;
end;

procedure TForm_PatientSearch.EditPatientIdChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditPatientId.Text)<>'' Then
      Begin
         Filter:=' PatientId = '+#39+EditPatientId.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditNameChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditName.Text)<>'' Then
      Begin
         Filter:=' PATIENTNAME = '+#39+EditName.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditAgeSerchChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditAgeSerch.Text)<>'' Then
      Begin
         Filter:=' AGEGENDER = '+#39+EditAgeSerch.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditDeptChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditDept.Text)<>'' Then
      Begin
         Filter:=' DEPCODE = '+#39+EditDept.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditDateChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditDate.Text)<>'' Then
      Begin
         Filter:=' VISITDATE = '+#39+EditDate.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditPAddressChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditPAddress.Text)<>'' Then
      Begin
         Filter:=' FullAddress = '+#39+EditPAddress.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditDistrictChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditDistrict.Text)<>'' Then
      Begin
         Filter:=' DISTRICTNAME = '+#39+EditDistrict.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditCareOfChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditCareOf.Text)<>'' Then
      Begin
         Filter:=' NEXTTOKIN = '+#39+EditCareOf.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.EditTimeChange(Sender: TObject);
begin
   With QueryOutPatient do
   Begin
      IF Trim(EditTime.Text)<>'' Then
      Begin
         Filter:=' VISITTIME = '+#39+EditTime.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
   //StatusBarPatientSearch.Panels[3].Text:='Patient No = '+IntToStr(QueryOutPatient.RecordCount);
end;

procedure TForm_PatientSearch.DBGridOutPatientKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF (key = vk_f12) or ((ssShift in Shift) and (key = vk_up)) then
   EditPatientId.setfocus;
end;

procedure TForm_PatientSearch.DBLCB_IPSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then DBLCB_IPScheme.KeyValue:=-1;
end;

procedure TForm_PatientSearch.DBLCB_OPSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then DBLCB_OPScheme.KeyValue:=-1;
end;

procedure TForm_PatientSearch.EditIPCareOfKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Left Then EditIPDistrict.SetFocus;
end;

procedure TForm_PatientSearch.EditIPCareOfChange(Sender: TObject);
begin
   IF RB_OutStanding.Checked Then
   Begin
      With QueryOutStandingPt do
      Begin
         IF Trim(EditIPCareOf.Text)<>'' Then
         Begin
            Filter:=' NEXTTOKIN = '+#39+EditIPCareOf.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryOutStandingPt.RecordCount);
   End
   Else
   Begin
      With QueryAdmission do
      Begin
         IF Trim(EditIPCareOf.Text)<>'' Then
         Begin
            Filter:=' NEXTTOKIN = '+#39+EditIPCareOf.Text+'*'+#39;
            Filtered:=True;
         End
         Else
         Filtered:=False;
      End;
      StatusBarPatientSearch.Panels[1].Text:='Patient No = '+IntToStr(QueryAdmission.RecordCount);
   End;
end;

end.
