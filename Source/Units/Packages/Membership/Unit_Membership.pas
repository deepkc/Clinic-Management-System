unit Unit_Membership;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtDlgs, DB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
     Fxn, Serverdate, dm, ShellApi, Jpeg, Unit_Master,
     OleCtrls, DateEditXControl_TLB, ExtCtrls, ComCtrls, ImgList;

type
     TFrame_NewMember = class(TFrame)
          PageControl1: TPageControl;
          tim: TTabSheet;
          MonthlyCalendar: TMonthCalendar;
          TabSheet2: TTabSheet;
          Label2: TLabel;
          DBGrid1: TDBGrid;
          Edit_Search: TEdit;
          QueryBlank: TOraQuery;
          QueryList: TOraQuery;
          DS_List: TDataSource;
          OpenPictureDialog1: TOpenPictureDialog;
          SP_Save: TOraStoredProc;
          SP_Load: TOraStoredProc;
          QueryTitle: TOraQuery;
          DSTitle: TDataSource;
          QueryReligion: TOraQuery;
          DSReligion: TDataSource;
          QueryCountry: TOraQuery;
          DSCountry: TDataSource;
          QueryDistrict: TOraQuery;
          DSDistrict: TDataSource;
          QueryVDC: TOraQuery;
          DSVDC: TDataSource;
          QueryOccupation: TOraQuery;
          DSOccupation: TDataSource;
          QueryEducation: TOraQuery;
          DSEducation: TDataSource;
          QueryRelation: TOraQuery;
          DS_Relation: TDataSource;
          Panel_Image: TPanel;
          Shape1: TShape;
          SpeedButton1: TSpeedButton;
          Image_Main: TImage;
          ImageList1: TImageList;
          Panel1: TPanel;
          GB_BasicInformation: TGroupBox;
          Label4: TLabel;
          Label6: TLabel;
          Label9: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          Label3: TLabel;
          Label1: TLabel;
          Dex_Dob: TDateEditX;
          le_Age: TLabeledEdit;
          DBLCB_Religion: TDBLookupComboBox;
          DBLCB_title: TDBLookupComboBox;
          CB_Gender: TComboBox;
          CB_AgeType: TComboBox;
          CB_MaritalStatus: TComboBox;
          DBLCB_Ethnicity: TDBLookupComboBox;
          GB_Address: TGroupBox;
          Label11: TLabel;
          Label12: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          Le_WardNo: TLabeledEdit;
          DBLCB_Country: TDBLookupComboBox;
          DBLCB_District: TDBLookupComboBox;
          DBLCB_VDC: TDBLookupComboBox;
          Le_PhoneNo: TLabeledEdit;
          Le_MobileNo: TLabeledEdit;
          GB_Others: TGroupBox;
          Label18: TLabel;
          Label23: TLabel;
          Label26: TLabel;
          Label17: TLabel;
          Le_Relative: TLabeledEdit;
          DBLCB_Occupation: TDBLookupComboBox;
          DBLCB_Education: TDBLookupComboBox;
          Le_Company: TLabeledEdit;
          DBLCB_Relation: TDBLookupComboBox;
          Panel3: TPanel;
          BB_EditMode: TButton;
          BB_Save: TBitBtn;
          Panel_Test: TPanel;
          CheckBox2: TCheckBox;
          le_Email: TLabeledEdit;
          CheckBox3: TCheckBox;
          CheckBox1: TCheckBox;
          Label5: TLabel;
          Memo_Remarks: TMemo;
          SpeedButton2: TSpeedButton;
          Label10: TLabel;
          Label15: TLabel;
          Label16: TLabel;
          Timer1: TTimer;
          Le_Fname: TComboBoxEx;
          Le_LName: TComboBoxEx;
          le_Address: TComboBoxEx;
          BB_CustomerView: TBitBtn;
          BB_ReprintCard: TBitBtn;
          Cb_IsParty: TCheckBox;
          Le_PinNo: TLabeledEdit;
          BitBtn1: TBitBtn;
    Label19: TLabel;
    Cb_BloodGroup: TComboBox;
    Le_FamilyDoctor: TLabeledEdit;
    Le_ContactPerson1: TLabeledEdit;
    Le_ContactNo1: TLabeledEdit;
    Le_ContactPerson2: TLabeledEdit;
    Le_ContactNo2: TLabeledEdit;
    Label20: TLabel;
    Memo_MedicalCondition: TMemo;
          procedure BB_SaveClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure BB_ListClick(Sender: TObject);
          procedure DBLCB_OccupationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBLCB_EducationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBLCB_RelationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBLCB_VDCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure SpeedButton1Click(Sender: TObject);
          procedure DBLCB_ReligionExit(Sender: TObject);
          procedure BB_EditModeClick(Sender: TObject);
          procedure CB_AgeTypeExit(Sender: TObject);
          procedure Memo_RemarksExit(Sender: TObject);
          procedure CB_GenderExit(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure le_AgeExit(Sender: TObject);
          // procedure TwainTwainAcquire(Sender: TObject; const Index: Integer; Image: TBitmap; var Cancel: Boolean);
          // procedure TwainSourceFileTransfer(Sender: TObject; const Index: Integer; Filename: TW_STR255;
          // Format: TTwainFormat; var Cancel: Boolean);
          // procedure TwainSourceSetupFileXfer(Sender: TObject; const Index: Integer);
          procedure Timer1Timer(Sender: TObject);
          procedure Le_FnameKeyPress(Sender: TObject; var Key: Char);
          procedure BB_CustomerViewClick(Sender: TObject);
          procedure le_AgeChange(Sender: TObject);
          procedure BB_ReprintCardClick(Sender: TObject);
          procedure Image_MainDblClick(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
    procedure Cb_BloodGroupExit(Sender: TObject);

          // procedure BitBtn1Click(Sender: TObject);
     private
          { Private declarations }
     public
          pb_isnew: Boolean;
          AClass: TPersistentClass;
          pb_editMode: Boolean;
          ps_Image, ps_ImagePath, ps_picpath: String;
          SelectedSource, CurrentSource, LoadedSource: Integer;
          ImageList: TList;
          // TransferMode: TTwainTransferMode;
          { Public declarations }
          constructor Create(AOwner: TComponent); override;
          destructor Destroy; override;
          function FormValidated: Boolean;
          procedure Save;
          procedure SaveImage;
          procedure LoadImage;
          Procedure ClearImage;
          procedure LoadData;
          Procedure LoadAutoComplete;
          Procedure ToogleCamera(Sender: TObject);
          Procedure OffCamera;
          Procedure PrintCard;
          Procedure SaveCardPrice;

          // Function Crypt1(sInput: string;nPass:word): string;
          // Function ChangePassword1(const sInput: string): string;
     end;

implementation

uses Unit_MembershipCard, Unit_MemberShip_Parent;

{$R *.dfm}

procedure TFrame_NewMember.BB_ListClick(Sender: TObject);
begin
     ClearAll(GB_BasicInformation);
     ClearAll(GB_Others);
     ClearAll(GB_Address);
     QueryList.Close;
     QueryList.Open;
     PageControl1.ActivePageIndex := 1;
end;

procedure TFrame_NewMember.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     pb_isnew := true;
end;

procedure TFrame_NewMember.BB_ReprintCardClick(Sender: TObject);
begin
     gb_isDotMatrix := false;
     PrintCard;
end;

procedure TFrame_NewMember.BB_SaveClick(Sender: TObject);
Var
     mymemo: TMemo;
     Li_PatientID:Integer;
begin
     OffCamera;
     if not FormValidated then
     begin
          MsgBox(1004, 0, '', '', '');
          exit;
     end;
     Save;
     Self.Parent.SendToBack;
     Form_MembershipParent.Rg_Type.ItemIndex:=0;
     Form_MembershipParent.BB_RefreshClick(Sender);
     FreeAndNil(Self);
     //Li_PatientID:=gi_PatientID;
     //PrintCard;
     { ************************************************ }
//     gi_BillCase := 3;
//     Frame_Billing := TFrame_Billing.Create(Nil);
//     begin
//          // Panel_Test.BringToFront;
//          Frame_Billing.Parent := Self.Parent;
//          Align := alClient;
//          Show;
//          // FreeAndNil(Self);
//          FreeAndNil(Self);
//          ServiceBillOpened := true;
//          Frame_Billing.Le_HosNo.SetFocus;
//     end;
     { ************************************************ }
end;

procedure TFrame_NewMember.BitBtn1Click(Sender: TObject);
begin
     gb_isDotMatrix := true;
     PrintCard;
end;

procedure TFrame_NewMember.BB_CustomerViewClick(Sender: TObject);
begin
     ToogleCamera(Sender);
end;

{ procedure TFrame_NewPatient.BitBtn1Click(Sender: TObject);
  Var Qry :TOraQuery;
  begin
  Qry:=TOraQuery.Create(Nil);
  with Qry do
  begin
  Close;
  DatabaseName:=gs_DatabaseName;
  SQL.Clear;
  SQL.Add('Update Usermain set Upassword='+#39+ChangePassword1('1234')+#39);
  SQL.Add('Where UserID=4');
  ExecSQL;
  ShowMessage('Password Successfully changed');
  end;
  end; }

{ Function TFrame_NewPatient.Crypt1(sInput: string;nPass:word): string;
  var
  nLen,x,n:word;
  begin
  if sInput='' then
  begin
  result:='';
  exit;
  end;
  nLen:=length(sInput);
  n:=nLen;
  setlength(result,nLen);
  for x:=nLen downto 1 do
  begin
  result[x]:=chr(ord(sInput[n]) XOR nPass);
  dec(n);
  end;
  end;

  Function TFrame_NewPatient.ChangePassword1(const sInput: string): string;
  Begin
  ChangePassword1:=Crypt1(sInput,1010);
  //ChangePassword:=sInput;
  End; }

procedure TFrame_NewMember.BB_EditModeClick(Sender: TObject);
begin
     if pb_editMode = false then
     begin
          pb_editMode := true;
          BB_EditMode.Caption := 'Edit Mode [ON]';
          BB_EditMode.ImageIndex := 1;
          GB_BasicInformation.Enabled := true;
          GB_Address.Enabled := true;
          GB_Others.Enabled := true;
          Le_Fname.SetFocus;
          BB_Save.Visible := true;
     end
     else
     begin
          pb_editMode := false;
          BB_EditMode.Caption := 'Edit Mode [OFF]';
          BB_EditMode.ImageIndex := 0;
          GB_BasicInformation.Enabled := false;
          GB_Address.Enabled := false;
          GB_Others.Enabled := false;
          BB_Save.Visible := false;
     end;
end;

procedure TFrame_NewMember.CB_AgeTypeExit(Sender: TObject);
Var
     Qry: TOraQuery;
begin
     if le_Age.Text <> '' then
     begin
          Qry := TOraQuery.Create(nil);
          with Qry do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               SQL.Clear;
               SQL.Add('SELECT GETDOBFROMAGE(' + le_Age.Text + ',' + #39 + CB_AgeType.Text + #39 + ')DOB from Dual');
               Open;
               Dex_Dob.ADDateAsText := FieldByName('DOB').AsString;
          end;
     end;
end;

procedure TFrame_NewMember.Cb_BloodGroupExit(Sender: TObject);
begin
     DBLCB_Country.SetFocus;
end;

procedure TFrame_NewMember.CB_GenderExit(Sender: TObject);
begin
     Cb_BloodGroup.SetFocus;
end;

procedure TFrame_NewMember.ClearImage;
begin
     Image_Main.Picture.Assign(nil);
end;

constructor TFrame_NewMember.Create(AOwner: TComponent);
Var
     Sender: TObject;
begin
     inherited;
     if Not MenuAccess('PRINT CARD') then
     begin
          BitBtn1.Visible:=false;
          BB_ReprintCard.Visible:=false;
     end;
     if not MenuAccess('CAMERA') then
     begin
          BB_CustomerView.Visible:=false;
     end;
     NewPatientClosed := false;
     // if gb_isDotMatrix then
     // rb_black.Checked := true
     // else
     // rb_colour.Checked := false;
     if gb_PatientDataLoaded then
     begin
          pb_isnew := false;
          BB_Save.Visible := false;
          BB_EditMode.Visible := true;
     end
     else
     begin
          pb_isnew := true;
          BB_EditMode.Visible := false;
          BB_Save.Visible := true;
     end;
     PageControl1.Pages[1].TabVisible := false;
     Dex_Dob.ADDateAsText := TodaysDate;
     Dex_Dob.SystemOfDate := gi_datesystem;
     SpeedButton2.Caption := gs_DateCaption;
     LoadAutoComplete;
     // QueryTitle.Close;
     // QueryTitle.Open;
     // QueryReligion.Close;
     // QueryReligion.Open;
     QueryCountry.Close;
     QueryCountry.Open;
     // QueryDistrict.Close;
     // QueryDistrict.Open;
     // QueryVDC.Close;
     // QueryVDC.Open;
     // QueryOccupation.Close;
     // QueryOccupation.Open;
     // QueryEducation.Close;
     // QueryEducation.Open;
     // QueryRelation.Close;
     // QueryRelation.Open;
     // QueryList.Close;
     // QueryList.Open;
     CB_AgeType.ItemIndex := 0;
     // DBLCB_Religion.KeyValue:=1;
     DBLCB_Country.KeyValue := 1;
     // DBLCB_District.KeyValue:=27;
     // DBLCB_VDC.KeyValue:=1629;

     if gb_PatientDataLoaded then
          LoadData;

     // AClass := GetClass('TFrame_RegAccount');
     // if AClass <> nil then
     // with TComponentClass(AClass).Create(Application) as TCustomFrame do
     // begin
     // Parent := Panel_AccountFrame;
     // Align := alClient;
     // show;
     // end;
     { Avoid flickering by using double-buffering }

     { Select first source }
     ps_picpath := 'c:\sisdata';
     DeleteFile(ps_picpath + '\camera.dll');
     if MenuAccess('CAMERA') then
     ToogleCamera(Sender);
end;

procedure TFrame_NewMember.DBLCB_EducationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_Education.KeyValue := -1;
end;

procedure TFrame_NewMember.DBLCB_OccupationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_Occupation.KeyValue := -1;
end;

procedure TFrame_NewMember.DBLCB_RelationKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_Relation.KeyValue := -1;
end;

procedure TFrame_NewMember.DBLCB_ReligionExit(Sender: TObject);
begin
     DBLCB_Country.SetFocus;
end;

procedure TFrame_NewMember.DBLCB_VDCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_VDC.KeyValue := -1;
end;

destructor TFrame_NewMember.Destroy;
begin
     ClearImage;
     DeleteAllFiles(gi_PatientID);
     inherited;
end;

function TFrame_NewMember.FormValidated: Boolean;
begin
     if (Le_Fname.Text = '') or (Le_LName.Text = '') or (le_Age.Text = '') or (CB_AgeType.Text = '') then
          Result := false
     else
          Result := true;
end;

procedure TFrame_NewMember.Image_MainDblClick(Sender: TObject);
begin
     ClearImage;
end;

procedure TFrame_NewMember.le_AgeChange(Sender: TObject);
begin
     if trim(le_Age.Text) <> '' then
     begin
          if StrToInt(le_Age.Text) > 100 then
          begin
               MsgBox(1027, 0, '', '', '');
               le_Age.SetFocus;
          end;
     end;
end;

procedure TFrame_NewMember.le_AgeExit(Sender: TObject);
Var
     Qry: TOraQuery;
begin
     if le_Age.Text <> '' then
     begin
          Qry := TOraQuery.Create(nil);
          with Qry do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               SQL.Clear;
               SQL.Add('SELECT GETDOBFROMAGE(' + le_Age.Text + ',' + #39 + CB_AgeType.Text + #39 + ')DOB from Dual');
               Open;
               Dex_Dob.ADDateAsText := FieldByName('DOB').AsString;
          end;
     end;
end;

procedure TFrame_NewMember.Le_FnameKeyPress(Sender: TObject; var Key: Char);
begin
     Key := UpCase(Key);
end;

procedure TFrame_NewMember.LoadAutoComplete;
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select Distinct FName,LName,Address from Vw_PatientMain');
          Open;
          Le_Fname.Items.Clear;
          Le_LName.Items.Clear;
          le_Address.Items.Clear;
          while not Eof do
          begin
               if FieldByName('Fname').AsString <> '' then
                    Le_Fname.Items.Add(FieldByName('Fname').AsString);
               if FieldByName('Lname').AsString <> '' then
                    Le_LName.Items.Add(FieldByName('Lname').AsString);
               if FieldByName('Address').AsString <> '' then
                    le_Address.Items.Add(FieldByName('Address').AsString);
               Next;
          end;
     end;
     Qry.Free;
end;

procedure TFrame_NewMember.LoadData;
begin
     // DBLCB_title.KeyValue:=Gs_Title;
     CB_Gender.ItemIndex := CB_Gender.Items.IndexOf(Gs_Gender);
     Le_Fname.Text := Gs_Fname;
     Le_LName.Text := Gs_Lname;
     le_Age.Text := Gs_Age;
     CB_AgeType.ItemIndex := CB_AgeType.Items.IndexOf(Gs_agetype);
     Dex_Dob.VSDateAsText := Gs_DobVS;
     // CB_MaritalStatus.ItemIndex:=CB_MaritalStatus.Items.IndexOf(Gs_MaritalStatus);
     // DBLCB_Religion.KeyValue:=Gi_ReligionID;
     DBLCB_Country.KeyValue := Gi_CountryID;
     // DBLCB_District.KeyValue:=Gi_DistrictID;
     // DBLCB_VDC.KeyValue:=Gi_VdcID;
     le_Address.Text := Gs_Address;
     // Le_WardNo.Text:=Gs_WardNo;
     Le_PhoneNo.Text := Gs_PhoneNo;
     Le_MobileNo.Text := Gs_MobileNo;
     if Gs_IsParty then
          Cb_IsParty.Checked := true
     else
          Cb_IsParty.Checked := false;
     Le_PinNo.Text := Gs_Pinno;
     le_Email.Text:=Gs_Email;

     // DBLCB_Occupation.KeyValue:=Gi_OccupationID;
     // DBLCB_Education.KeyValue:=Gi_EducationID;
     // Le_Relative.Text:=Gs_NexttoKin;
     // DBLCB_Relation.KeyValue:=Gi_RelationID;
     // Le_Company.Text:=Gs_Company;
     Memo_Remarks.Text := Gs_Remarks;
     Memo_MedicalCondition.Text:=Gs_MedicalCondition;
end;

procedure TFrame_NewMember.LoadImage;
begin
     try
          if LoadImageFromDB(gi_PatientID) then
          begin
               Image_Main.Picture.LoadFromFile(gs_PicPath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
               DeleteFile(gs_PicPath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          end;
     except
          // MsgBox(1014, 0, '', '', '');
     end;

end;

procedure TFrame_NewMember.Memo_RemarksExit(Sender: TObject);
begin
     BB_Save.SetFocus;
end;

procedure TFrame_NewMember.OffCamera;
Var
     mymemo: TMemo;
begin
     mymemo := TMemo.Create(nil);
     with mymemo do
     begin
          ps_picpath := 'C:\SisData';
          mymemo.Text := 'ac345ttn23';
          mymemo.Lines.SaveToFile(ps_picpath + '\camera.dll');
     end;
end;

procedure TFrame_NewMember.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
          PageControl1.ActivePageIndex := 0;
end;

procedure TFrame_NewMember.PrintCard;
Var
     Ls_PatientID: Double;
begin
     Try
          Form_Card := TForm_Card.Create(Nil);
          with Form_Card do
          begin
               lbl_Name.Caption := Gs_PatientName;
               Lbl_HosNo.Caption := IntToStr(gi_PatientID);
               lbl_agegender.Caption := Gs_Age + '/' + Copy(Gs_agetype, 1, 1) + '-' + Copy(Gs_Gender, 1, 1);
               lbl_RegisteredDate.Caption := Gs_Regdate;
               QRLabel12.Caption := 'Permanent Lab No.';
               Ls_PatientID := gi_PatientID;
               QrBarcode.Text := FormatFloat('0000000', Ls_PatientID);
               // QrBarcode.Text:=IntToStr(gi_PatientID);
               QrCard.Preview;
          end;
     Finally
          Form_Card.Free;
     End;
end;

procedure TFrame_NewMember.Save;
Var
     PATIENTID,LI_NONPATIENTID, LI_AGE, LI_COUNTRYID, LI_ZONEID, LI_DISTRICTID, LI_VDCID, LI_WARDNO, LI_OCCUPATIONID,
       LI_RELATIONID, LI_DATAPOSTBY, LI_EDUCATIONID, LI_RELIGIONID: Integer;
     LS_TITLE, LS_FNAME, LS_MNAME, LS_LNAME, LS_PATIENTNAME, LS_GENDER, LS_AGETYPE, LS_DOBVS, LS_DOBAD,
       LS_MARITALSTATUS, LS_ADDRESS, LS_PHONENO, LS_MOBILENO, LS_EMAIL, LS_COMPANY, LS_PATIENTTYPE, LS_NEXTTOKIN,
       LS_CARDNO, LS_REMARKS, PINNO, ISPARTY,BLOODGROUP, FAMILYDOCTOR, EMERCONTACTPER1,EMERCONTACTNO1, EMERCONTACTPER2
       , EMERCONTACTNO2,LS_MEDICALCONDITION, MEMBERNO: STRING;
     Key: Char;
begin
     if DBLCB_title.KeyValue = null then
          LS_TITLE := ''
     else
          LS_TITLE := DBLCB_title.KeyValue;
     LS_GENDER := CB_Gender.Text;
     LS_FNAME := Le_Fname.Text;
     LS_LNAME := Le_LName.Text;
     LI_AGE := StrToInt(le_Age.Text);
     LS_AGETYPE := CB_AgeType.Text;
     LS_MARITALSTATUS := CB_MaritalStatus.Text;
     LS_ADDRESS := le_Address.Text;
     if Le_WardNo.Text <> '' then
          LI_WARDNO := StrToInt(Le_WardNo.Text)
     else
          LI_WARDNO := 0;
     LS_PHONENO := Le_PhoneNo.Text;
     LS_MOBILENO := Le_MobileNo.Text;
     LS_COMPANY := Le_Company.Text;
     LS_PATIENTNAME := LS_FNAME + ' ' + LS_LNAME;
     LS_NEXTTOKIN := Le_Relative.Text;
     LS_DOBVS := Dex_Dob.VSDateAsText;
     LS_DOBAD := Dex_Dob.ADDateAsText;
     LS_EMAIL := le_Email.Text;
     LS_REMARKS := Memo_Remarks.Text;
     LS_MEDICALCONDITION:=Memo_MedicalCondition.Text;
     if Cb_IsParty.Checked then
          ISPARTY := 'Y'
     else
          ISPARTY := 'N';
     PINNO := Le_PinNo.Text;

     // if DBLCB_Religion.KeyValue=-1 then
     // li_Religionid:=0
     // else
     // li_Religionid:=DBLCB_Religion.KeyValue;
     // if DBLCB_Ethnicity.KeyValue=-1 then
     // li_Ethinicityid:=0
     // else
     // li_Ethinicity:=DBLCB_Ethnicity.KeyValue;
     LI_RELIGIONID := 0;
     if DBLCB_Country.KeyValue = null then
          LI_COUNTRYID := 0
     else
          LI_COUNTRYID := DBLCB_Country.KeyValue;
     if DBLCB_District.KeyValue = null then
          LI_DISTRICTID := 0
     else
          LI_DISTRICTID := DBLCB_District.KeyValue;
     if DBLCB_VDC.KeyValue = null then
          LI_VDCID := 0
     else
          LI_VDCID := DBLCB_VDC.KeyValue;
     if DBLCB_Occupation.KeyValue = null then
          LI_OCCUPATIONID := 0
     else
          LI_OCCUPATIONID := DBLCB_Occupation.KeyValue;
     if DBLCB_Education.KeyValue = null then
          LI_EDUCATIONID := 0
     else
          LI_EDUCATIONID := DBLCB_Education.KeyValue;

     PATIENTID:=gi_PatientID;
     BLOODGROUP:=Cb_BloodGroup.Text;
     FAMILYDOCTOR:=Le_FamilyDoctor.Text;
     EMERCONTACTPER1:=Le_ContactPerson1.Text;
     EMERCONTACTNO1:=Le_ContactNo1.Text;
     EMERCONTACTPER2:=Le_ContactPerson2.Text;
     EMERCONTACTNO2:=Le_ContactNo2.Text;

     { ------------------------------------------------ }
     try
          DM_Hospital.DB.StartTransaction;
          try
               //if pb_isnew then
               if GetMemberID(gi_PatientID)=0 then
               begin
                    if not gb_IsRegisteredPatient then
                    begin
                    SavePatient(LI_NONPATIENTID, LI_AGE, LI_COUNTRYID, LI_ZONEID, LI_DISTRICTID, LI_VDCID, LI_WARDNO,
                         LI_OCCUPATIONID, LI_RELATIONID, LI_DATAPOSTBY, LI_EDUCATIONID, LS_TITLE, LS_FNAME, LS_MNAME,
                         LS_LNAME, LS_PATIENTNAME, LS_GENDER, LS_AGETYPE, LS_DOBVS, LS_DOBAD, LS_MARITALSTATUS,
                         LS_ADDRESS, LS_PHONENO, LS_MOBILENO, LS_EMAIL, LS_COMPANY, LS_PATIENTTYPE, LS_NEXTTOKIN,
                         LS_CARDNO, LS_REMARKS, TodaysDate, TodaysTime, TodaysDate, TodaysTime, gs_MacID, PINNO,
                         ISPARTY);
                    end;
                    SaveMember(gi_PatientID,LI_NONPATIENTID, LI_AGE, LI_COUNTRYID, LI_ZONEID, LI_DISTRICTID, LI_VDCID, LI_WARDNO,
                         LI_OCCUPATIONID, LI_RELATIONID, LI_DATAPOSTBY, LI_EDUCATIONID, LS_TITLE, LS_FNAME, LS_MNAME,
                         LS_LNAME, LS_PATIENTNAME, LS_GENDER, LS_AGETYPE, LS_DOBVS, LS_DOBAD, LS_MARITALSTATUS,
                         LS_ADDRESS, LS_PHONENO, LS_MOBILENO, LS_EMAIL, LS_COMPANY, LS_PATIENTTYPE, LS_NEXTTOKIN,
                         LS_CARDNO, LS_REMARKS, TodaysDate, TodaysTime, TodaysDate, TodaysTime, gs_MacID, PINNO,
                         ISPARTY,BLOODGROUP, FAMILYDOCTOR, EMERCONTACTPER1,EMERCONTACTNO1, EMERCONTACTPER2
                         , EMERCONTACTNO2,LS_MEDICALCONDITION, MEMBERNO);
               end
               else
                   UpdateMember(Gi_MemberID,PATIENTID,LI_NONPATIENTID, LI_AGE, LI_COUNTRYID, LI_ZONEID, LI_DISTRICTID, LI_VDCID, LI_WARDNO,
                         LI_OCCUPATIONID, LI_RELATIONID, LI_DATAPOSTBY, LI_EDUCATIONID, LS_TITLE, LS_FNAME, LS_MNAME,
                         LS_LNAME, LS_PATIENTNAME, LS_GENDER, LS_AGETYPE, LS_DOBVS, LS_DOBAD, LS_MARITALSTATUS,
                         LS_ADDRESS, LS_PHONENO, LS_MOBILENO, LS_EMAIL, LS_COMPANY, LS_PATIENTTYPE, LS_NEXTTOKIN,
                         LS_CARDNO, LS_REMARKS, TodaysDate, TodaysTime, TodaysDate, TodaysTime, gs_MacID, PINNO,
                         ISPARTY,BLOODGROUP, FAMILYDOCTOR, EMERCONTACTPER1,EMERCONTACTNO1, EMERCONTACTPER2
                         , EMERCONTACTNO2,LS_MEDICALCONDITION, IntToStr(gi_memberid));
          except

          end;
          SaveImage;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          gi_NewPatientID:=gi_PatientID;
          LoadPatientData(gi_PatientID);
          NewPatientClosed := true;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TFrame_NewMember.SaveCardPrice;
Var
     ls_billdate: String;
begin
     if gi_datesystem = 0 then
          ls_billdate := TodaysDateVS
     else
          ls_billdate := TodaysDate;

     SaveBillMaster(gi_PatientID, gi_InPatientID, gi_UserID, 30, 0, 0, 'CS', ls_billdate, TodaysTime, '', 'B', 'CASH',
          'GENERAL', 'GENERAL', 'PATIENT CARD', gs_MacID, '', '', '');
     SaveBillDetail(gi_PatientID, 0, 0, 0, gi_UserID, 0, 0, 0, 0, 0, 30, 1, 0, 30, 0, 0, Gs_BillNo, ls_billdate,
          TodaysTime, 'CARD', 'PATIENT CARD', 'B', 'CASH', 'GENERAL', 'GENERAL', '', '', '', '', '', '', '');
end;

procedure TFrame_NewMember.SaveImage;
begin
     try
          begin
               Image_Main.Picture.SaveToFile(gs_PicPath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
               SaveImageToDB(gi_PatientID);
               DeleteFile(gs_PicPath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          end;
     except
     end;
end;

procedure TFrame_NewMember.SpeedButton1Click(Sender: TObject);
Var
     mymemo: TMemo;
begin
     OffCamera;
     mymemo := TMemo.Create(nil);
     with mymemo do
     begin
          ps_picpath := 'C:\SisData';
          mymemo.Text := 'ac345ttn23';
          mymemo.Lines.SaveToFile(ps_picpath + '\acquireimage.dll');
          // Sleep(2000);
     end;
     WinExec('AcquireImage.exe', SW_SHOWNORMAL);
     Timer1.Enabled := true;
     // Try
     // Image_Main.Picture.LoadFromFile(ps_picpath + '\ACQUIREIMAGE.JPG');
     // Except
     // End;
end;

procedure TFrame_NewMember.SpeedButton2Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_Dob, SpeedButton2);
end;

procedure TFrame_NewMember.Timer1Timer(Sender: TObject);
begin
     if not FileExists(ps_picpath + '\acquireimage.dll') then
     begin
          try
               Image_Main.Picture.LoadFromFile(ps_picpath + '\ACQUIREIMAGE.JPG');
               DeleteFile(ps_picpath + '\ACQUIREIMAGE.JPG');
          except
          end;
          Timer1.Enabled := false;
     end;
end;

procedure TFrame_NewMember.ToogleCamera(Sender: TObject);
Var
     H: HWND;
     mymemo: TMemo;
begin
     if GetMonitorCount = 1 then
          exit;

     if BB_CustomerView.Caption = 'Camera View [OFF]' then
     begin
          WinExec('webcam.exe', SW_SHOWNORMAL);
          BB_CustomerView.Caption := 'Camera View [ON]'
     end
     else
     begin
          mymemo := TMemo.Create(nil);
          with mymemo do
          begin
               ps_picpath := 'C:\SisData';
               mymemo.Text := 'ac345ttn23';
               mymemo.Lines.SaveToFile(ps_picpath + '\camera.dll');
               // Sleep(2000);
          end;
          BB_CustomerView.Caption := 'Camera View [OFF]'
     end;
end;

// procedure TFrame_NewPatient.TwainSourceFileTransfer(Sender: TObject; const Index: Integer; Filename: TW_STR255;
// Format: TTwainFormat; var Cancel: Boolean);
// var
// LoadFileName: String;
// begin
// { Set file }
// LoadFileName := includetrailingbackslash(getcurrentdir) + 'picture.bmp';
// { Load and add to list }
// ImageList.Add(TBitmap.Create);
// TBitmap(ImageList[ImageList.Count - 1]).LoadFromFile(LoadFileName);
// DeleteFile(LoadFileName);
// { In case it's the first image, display }
// if ImageList.Count = 1 then
// SelectFirst;
// end;

// procedure TFrame_NewPatient.TwainSourceSetupFileXfer(Sender: TObject; const Index: Integer);
// begin
// Twain.Source[Index].SetupFileTransfer(includetrailingbackslash(getcurrentdir) + 'picture.bmp', tfBmp);
// end;
//
// procedure TFrame_NewPatient.TwainTwainAcquire(Sender: TObject; const Index: Integer; Image: TBitmap;
// var Cancel: Boolean);
// begin
// Image_Main.Picture.Assign(Image);
// Cancel := true; { Only want one image }
// end;

// Initialization

// RegisterClass(TFrame_NewPatient);

// finalization

// UnRegisterClass(TFrame_NewPatient);

end.
