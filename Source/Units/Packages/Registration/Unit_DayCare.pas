unit Unit_DayCare;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, OleCtrls, Fxn, DM,Variants,
  DateEditXControl_TLB, ExtCtrls, Buttons, Grids, DBGrids,ServerDate;

type
  TForm_DayCare = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtnCancel: TBitBtn;
    PageControlBillReprint: TPageControl;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    EditHosNo: TEdit;
    DBGridBillList: TDBGrid;
    Query_PatientInfo: TOraQuery;
    Label7: TLabel;
    Lbl_Name: TLabel;
    Query_Process: TOraQuery;
    Label1: TLabel;
    Lbl_AgeSex: TLabel;
    Label3: TLabel;
    Lbl_ContactNo: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Lbl_Address: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Lbl_MedicareNo: TLabel;
    Label16: TLabel;
    Query_PatientVisit: TOraQuery;
    DS_PatientVisit: TDataSource;
    SBSearch: TSpeedButton;
    Query_Doctor: TOraQuery;
    DS_Doctor: TDataSource;
    Label100: TLabel;
    DBLCB_Doctor: TDBLookupComboBox;
    BtnSave: TBitBtn;
    Edit_Remarks: TEdit;
    CB_Remove: TCheckBox;
    Label2: TLabel;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_DoctorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSaveClick(Sender: TObject);
  private
      { Private declarations }
  public
      { Public declarations }
      pi_PatientId,pi_CommunityId,pi_SchemeId,pi_DepId:Integer;
      ps_BillType,ps_MyBillNo,ps_PayType,ps_MemberNo:String;
      ps_RateType,ps_TodaysDate,ps_TodaysTime,ps_PatientType:String;
      pf_VatAmt,pf_RegCharge,pf_DisAmt,pf_TotalAmt:Double;
      b_Reprint:Boolean;


      Procedure GetPatientInfo;

  end;

var
  Form_DayCare: TForm_DayCare;

implementation

{$R *.DFM}

procedure TForm_DayCare.BitBtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_DayCare.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=27 Then Close;

     if Key=VK_F1 then CB_Remove.Checked:=not(CB_Remove.Checked);


     if Key=VK_F12 then BtnSaveClick(Sender);


end;

procedure TForm_DayCare.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key IN['0'..'9']) Then Key:=#0;
end;

procedure TForm_DayCare.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8 Then Exit;

     IF Key=#13 Then
     Begin
          SBSearchClick(Sender);

     End;

     IF Not (key In['0'..'9']) Then Key:=#0;

end;

procedure TForm_DayCare.BtnSaveClick(Sender: TObject);
begin
     if CB_Remove.Checked=False then
     begin
          if (EditHosNo.Text='')  then
          begin
               MessageDlg('Please Enter PatientId',mtInformation,[mbok],0);
               EditHosNo.SetFocus;
               exit;
          end;
          if DBLCB_Doctor.KeyValue=null then
          begin
               MessageDlg('Please Choose Doctor',mtInformation,[mbok],0);
               DBLCB_Doctor.SetFocus;
               exit;
          end;
     end;
     if CB_Remove.Checked=true then
     begin
          with Query_Process do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               sql.Add('update HS_DACV_DayCareVisit Set DACV_ISCANCEL=''Y''');
               SQL.Add(',DACV_CancelBy='+IntToStr(gi_UserID));
               SQL.Add('Where DACV_DayCareVisitID='+IntToStr(Query_PatientVisit.FieldByName('DACV_DayCareVisitID').AsInteger));
               ExecSQL;
               ShowDoneMessage;
          end;
     end
     else
     begin
          with Query_Process do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add('Insert Into HS_DACV_DayCareVisit(DACV_DayCareVisitID ,DACV_PatientID,');
               SQL.Add('DACV_DOCID,DACV_Remarks,DACV_VisitDate,DACV_VisitTime,DACV_VisitBy ,');
               SQL.Add('DACV_MACID,DACV_ISCANCEL,DACV_CancelBy )');
               SQL.Add('Values(');
               SQL.Add(IntToStr(GetMaxId('HS_DACV_DayCareVisit','DACV_DayCareVisitID'))+','+EditHosNo.Text);
               SQL.Add(','+IntToStr(DBLCB_Doctor.KeyValue)+','+QuotedStr(Edit_Remarks.Text)+','+#39+todaysdate+#39);
               SQL.Add(','+#39+todaysTime+#39+','+Inttostr(gi_UserID)+','+#39+gs_MacID+#39);
               SQL.Add(',''N''');
               SQL.Add(',''0''');
               sql.add(')');
               ExecSQL;
          end;
          ShowDoneMessage;

     end;
     Query_PatientVisit.Close;
     Query_PatientVisit.Open;
     StatusBar1.Panels[1].Text:='Total No Of Visit : '+IntToStr(Query_PatientVisit.RecordCount);
end;

procedure TForm_DayCare.DBLCB_DoctorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then
     DBLCB_Doctor.KeyValue:=-1;

end;

procedure TForm_DayCare.EditHosNoExit(Sender: TObject);
begin
     IF (Trim(EditHosNo.Text)<>'') and (EditHosNo.Text<>'0') Then
     SBSearchClick(Sender);
end;

Procedure TForm_DayCare.GetPatientInfo;
Begin
     IF (Trim(EditHosNo.Text)='') or (EditHosNo.Text='0') Then
     Begin
          MessageDlg('Please enter the hospital no.',mtInformation,[mbok],0);
          Exit;
     End;
     IF IsRegisteredHospitalNo(StrToInt(EditHosNo.Text))=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          Exit;
     End;
     CB_Remove.Checked:=False;
     LoadPatientData(StrToInt(EditHosNo.Text));
     Lbl_Name.Caption:=Gs_PatientName;
     Lbl_AgeSex.Caption:=Gs_CurrentAge+'/'+Copy(Gs_Gender,1,1);
     Lbl_Address.Caption:=Gs_FullAddress;
     if (Trim(Gs_PhoneNo)<>'') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_PhoneNo
     else if (Trim(Gs_PhoneNo)='') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_MobileNo
     else if (Trim(Gs_PhoneNo)<>'') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_MobileNo+' / '+Gs_PhoneNo
     else
     Lbl_ContactNo.Caption:='NA';

     Lbl_MedicareNo.Caption:=Gs_MemberNo;


     Label100.Enabled:=True;
     CB_Remove.Enabled:=True;
     BtnSave.Enabled:=True;
End;

procedure TForm_DayCare.SBSearchClick(Sender: TObject);
begin
     GetPatientInfo;
end;

procedure TForm_DayCare.FormShow(Sender: TObject);
begin
     Label4.Caption:=Gs_HosNoCaptionName;
     EditHosNo.SetFocus;
     Query_Doctor.Close;
     Query_Doctor.DatabaseName:=gs_DatabaseName;
     Query_Doctor.Open;

     Query_PatientVisit.Close;
     Query_PatientVisit.DatabaseName:=gs_DatabaseName;
     Query_PatientVisit.Open;
     StatusBar1.Panels[1].Text:='Total No Of Visit : '+IntToStr(Query_PatientVisit.RecordCount);
end;

END.
