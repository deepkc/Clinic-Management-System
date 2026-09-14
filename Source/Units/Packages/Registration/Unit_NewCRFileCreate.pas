unit Unit_NewCRFileCreate;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, OleCtrls, Fxn, DM,
  DateEditXControl_TLB, ExtCtrls, Buttons, Grids, DBGrids,ServerDate, Unit_QrOpSticker;

type
  TForm_NewCRFileCreate = class(TForm)
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
    BtnSave: TBitBtn;
    Label2: TLabel;
    Label_CrNo: TLabel;
    Label12: TLabel;
    BitBtn_BarCode: TBitBtn;
    CheckBoxPreview: TCheckBox;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BitBtn_BarCodeClick(Sender: TObject);
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
      Function GetMaxVisitID(PatientId : Integer):Integer;
      procedure PrintOPSticker(CBCheckBox : TCheckBox);

  end;

var
  Form_NewCRFileCreate: TForm_NewCRFileCreate;

implementation

{$R *.DFM}

procedure TForm_NewCRFileCreate.BitBtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_NewCRFileCreate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=27 Then Close;
     if Key=VK_F12 then BtnSaveClick(Sender);
end;

procedure TForm_NewCRFileCreate.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key IN['0'..'9']) Then Key:=#0;
end;

procedure TForm_NewCRFileCreate.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8 Then Exit;

     IF Key=#13 Then
     SBSearchClick(Sender);

     IF Not (key In['0'..'9']) Then Key:=#0;

end;

procedure TForm_NewCRFileCreate.BitBtn_BarCodeClick(Sender: TObject);
begin
     if Trim(EditHosNo.Text)='' then
     begin
          MessageDlg('Please Put Hospital No. First.',mtWarning,[mbOK],0);
          EditHosNo.SetFocus;
          Exit;
     end;

     IF IsRegisteredHospitalNo(StrToInt(EditHosNo.Text))=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;

     if MessageDlg('Are You Sure to Print Sticker ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Begin

          gi_PatientID:=StrToInt(EditHosNo.Text);
          printOPSticker(CheckBoxPreview);
     End;
end;

procedure TForm_NewCRFileCreate.PrintOPSticker(CBCheckBox : TCheckBox);
begin
     try
          Form_opSticker:=TForm_OPSticker.Create(Nil);
          if CBCheckBox.Checked=True then
          Form_OPSticker.QrOpSticker.PreviewModal
          else
          Form_OPSticker.QrOpSticker.Print;
     finally
          Form_OPSticker.Free;
     end;
end;

procedure TForm_NewCRFileCreate.BtnSaveClick(Sender: TObject);
Var DEX_Today, DEX_VisitDate : TDateEditX;
    li_VisitID,li_CRFileNo,li_NewCrFileNo : Integer;
    ls_LogRemarks : string;
begin
     if Trim(EditHosNo.Text)='' then
     begin
          MessageDlg('Please Put Hospital No. First.',mtWarning,[mbOK],0);
          EditHosNo.SetFocus;
          Exit;
     end;

     IF IsRegisteredHospitalNo(StrToInt(EditHosNo.Text))=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     End;

     li_CRFileNo:=GetPatientCRFileNo(StrToInt(EditHosNo.Text));
     IF li_CRFileNo > 0 Then
     begin
          MessageDlg('Sorry ! CR No. ('+IntToStr(li_CRFileNo)+') is Already Generated for This PR Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          EditHosNo.SetFocus;
          Exit;
     end;

     li_VisitID:=GetMaxVisitID(StrToInt(EditHosNo.Text));
     li_NewCrFileNo:=GetMaxCRFileNo_ENG_YEAR_MONTH_WISE;

     Try
          DM_Hospital.DB.StartTransaction;
          With Query_Process do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add(' Update HS_PAMA_PatientMain Set PAMA_FileNo='+IntToStr(li_NewCrFileNo)+',');
               SQL.Add(' PAMA_FileCreatedBy='+IntToStr(gi_UserID)+',');
               SQL.Add(' PAMA_FileCreatedDate='+#39+TodaysDate+#39+',PAMA_FileCreatedTime='+#39+TodaysTime+#39);
               SQL.Add(' where PAMA_PatientId='+EditHosNo.Text);
               ExecSQL;

               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_FileNo='+IntToStr(li_NewCrFileNo));
               SQL.Add(' where PAVI_PATIENTVISITID='+IntToStr(li_VisitID));
               ExecSQL;
          end;

          DM_Hospital.DB.Commit;
     Except
          DM_Hospital.DB.Rollback;
          MessageDlg('Failure to Create New CR File !',mtWarning,[mbOK],0);
          Exit;
     End;

     ShowDoneMessage;
     GetPatientInfo;
     Query_PatientVisit.Locate('VisitId',li_VisitID,[]);
     BitBtn_BarCodeClick(Sender);
end;

procedure TForm_NewCRFileCreate.EditHosNoExit(Sender: TObject);
begin
     IF (Trim(EditHosNo.Text)<>'') and (EditHosNo.Text<>'0') Then
     SBSearchClick(Sender);
end;

Function TForm_NewCRFileCreate.GetMaxVisitID(PatientId : Integer):Integer;
begin
     with Query_Process do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add(' Select Max(PAVI_PatientVisitID) PatientVisitID From HS_PAVI_PatientVisit');
          SQL.Add(' where PAVI_PatientId='+IntToStr(PatientId)+' and PAVI_IsVisitCancel=''N''');
          Open;
     end;
     Result:=Query_Process.FieldByName('PatientVisitID').AsInteger;
end;

Procedure TForm_NewCRFileCreate.GetPatientInfo;
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

     Label_CrNo.Caption:=IntToStr(gi_FileNo);

     With Query_PatientVisit do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql[9]:='Where PAVI_PatientId='+EditHosNo.Text;
          Open;
     End;

     StatusBar1.Panels[1].Text:='Total No Of Visit : '+IntToStr(Query_PatientVisit.RecordCount);
     BtnSave.Enabled:=True;
End;

procedure TForm_NewCRFileCreate.SBSearchClick(Sender: TObject);
begin
     GetPatientInfo;
end;

procedure TForm_NewCRFileCreate.FormShow(Sender: TObject);
begin
     EditHosNo.SetFocus;
     Label4.Caption:=Gs_HosNoCaptionName;
end;

END.
