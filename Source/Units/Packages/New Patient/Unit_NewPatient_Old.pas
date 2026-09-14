unit Unit_NewPatient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, ExtDlgs, DB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
  Fxn,Serverdate,dm,Unit_BillingFrame,
  OleCtrls, DateEditXControl_TLB, ExtCtrls, ComCtrls, ImgList;

type
  TFrame_NewPatient = class(TFrame)
    PageControl1: TPageControl;
    tim: TTabSheet;
    MonthlyCalendar: TMonthCalendar;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit_Search: TEdit;
    QueryBlank: TQuery;
    QueryList: TQuery;
    DS_List: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    SP_Save: TStoredProc;
    SP_Load: TStoredProc;
    QueryTitle: TQuery;
    DSTitle: TDataSource;
    QueryReligion: TQuery;
    DSReligion: TDataSource;
    QueryCountry: TQuery;
    DSCountry: TDataSource;
    QueryDistrict: TQuery;
    DSDistrict: TDataSource;
    QueryVDC: TQuery;
    DSVDC: TDataSource;
    QueryOccupation: TQuery;
    DSOccupation: TDataSource;
    QueryEducation: TQuery;
    DSEducation: TDataSource;
    QueryRelation: TQuery;
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
    Image2: TImage;
    Label3: TLabel;
    Label1: TLabel;
    Le_FName: TLabeledEdit;
    Le_LName: TLabeledEdit;
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
    Le_Address: TLabeledEdit;
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
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BB_ListClick(Sender: TObject);
    procedure DBLCB_OccupationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLCB_EducationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLCB_RelationKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLCB_VDCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLCB_ReligionExit(Sender: TObject);
    procedure BB_EditModeClick(Sender: TObject);
    procedure CB_AgeTypeExit(Sender: TObject);
    procedure Memo_RemarksExit(Sender: TObject);
  private
    { Private declarations }
  public
     pb_isnew:boolean;
     AClass:TPersistentClass;
     pb_editMode:Boolean;
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    destructor Destroy; override;
    function FormValidated:Boolean;
    procedure Save;
    procedure SaveImage;
    procedure LoadImage;
    Procedure ClearImage;
    procedure LoadData;
  end;

Var
     Frame_Billing:Unit_BillingFrame.TFrame_Billing;

implementation

Function MsgBox(MsgCode,BoxType:integer;param1,param2,param3:string):Boolean;stdcall; external 'Global.bpl';
Procedure ShowDoneMessage;stdcall; external 'Global.bpl';
Function TodaysDate:String;Stdcall;external'Global.bpl';
Function TodaysTime:String;Stdcall;external'Global.bpl';
Procedure LoadImageFromDB(PatientID:integer);Stdcall;external'Global.bpl';
procedure SaveImageToDB(PatientID:integer);stdcall;external'Global.bpl';
procedure DeleteAllFiles(PatientID:integer);Stdcall;external'Global.bpl';

Procedure SavePatient(NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,DATAPOSTBY,EDUCATIONID:Integer;
                         TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                         EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                         DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;external'MidasFunction.bpl';
Procedure UpdatePatient(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,DATAPOSTBY,EDUCATIONID,RELIGIONID:Integer;
                         TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                         EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,
                         DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;external'MidasFunction.bpl';

{$R *.dfm}

procedure TFrame_NewPatient.BB_ListClick(Sender: TObject);
begin
     ClearAll(GB_BasicInformation);
     ClearAll(GB_Others);
     ClearAll(GB_Address);
     QueryList.Close;
     QueryList.Open;
     PageControl1.ActivePageIndex:=1;
end;

procedure TFrame_NewPatient.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=0;
     pb_isnew:=true;
end;

procedure TFrame_NewPatient.BB_SaveClick(Sender: TObject);
begin
     Gb_isServiceBill:=true;
     if not FormValidated then
     begin
          MsgBox(1004,0,'','','');
          exit;
     end;
     Save;
end;

procedure TFrame_NewPatient.BB_EditModeClick(Sender: TObject);
begin
     if pb_editMode=false then
     begin
          pb_editMode:=true;
          BB_EditMode.Caption:='Edit Mode [ON]';
          BB_EditMode.ImageIndex:=1;
          GB_BasicInformation.Enabled:=true;
          GB_Address.Enabled:=true;
          GB_Others.Enabled:=true;
          Le_FName.SetFocus;
          BB_Save.Visible:=true;
     end
     else
     begin
          pb_editMode:=false;
          BB_EditMode.Caption:='Edit Mode [OFF]';
          BB_EditMode.ImageIndex:=0;
          GB_BasicInformation.Enabled:=false;
          GB_Address.Enabled:=false;
          GB_Others.Enabled:=false;
          BB_Save.Visible:=false;
     end;
end;

procedure TFrame_NewPatient.CB_AgeTypeExit(Sender: TObject);
Var
     Qry:Tquery;
begin
     if le_Age.Text<>'' then
     begin
          Qry:=TQuery.Create(nil);
          with Qry do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add('SELECT GETDOBFROMAGE('+le_Age.Text+','+#39+CB_AgeType.Text+#39+')DOB from Dual');
               Open;
               Dex_Dob.ADDateAsText:=FieldByName('DOB').AsString;
          end;
     end;
end;

procedure TFrame_NewPatient.ClearImage;
begin
     Image_Main.Picture.Assign(nil);
end;

constructor TFrame_NewPatient.Create(AOwner: TComponent);
begin
  inherited;
          if gb_PatientDataLoaded then
          begin
               pb_isnew:=false;
               BB_Save.Visible:=false;
               BB_EditMode.Visible:=true;
          end
          else
          begin
               pb_isnew:=true;
               BB_EditMode.Visible:=false;
               BB_Save.Visible:=true;
          end;
          PageControl1.Pages[1].TabVisible:=false;
          QueryTitle.Close;
          QueryTitle.Open;
          QueryReligion.Close;
          QueryReligion.Open;
          QueryCountry.Close;
          QueryCountry.Open;
          QueryDistrict.Close;
          QueryDistrict.Open;
          QueryVDC.Close;
          QueryVDC.Open;
          QueryOccupation.Close;
          QueryOccupation.Open;
          QueryEducation.Close;
          QueryEducation.Open;
          QueryRelation.Close;
          QueryRelation.Open;
//          QueryList.Close;
//          QueryList.Open;
          CB_AgeType.ItemIndex:=0;
//          DBLCB_Religion.KeyValue:=1;
          DBLCB_Country.KeyValue:=1;
//          DBLCB_District.KeyValue:=27;
//          DBLCB_VDC.KeyValue:=1629;

          if Gb_PatientDataLoaded then
          LoadData;

//          AClass := GetClass('TFrame_RegAccount');
//          if AClass <> nil then
//          with TComponentClass(AClass).Create(Application) as TCustomFrame do
//          begin
//               Parent := Panel_AccountFrame;
//               Align := alClient;
//               show;
//          end;
end;

procedure TFrame_NewPatient.DBLCB_EducationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Education.KeyValue:=-1;
end;

procedure TFrame_NewPatient.DBLCB_OccupationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Occupation.KeyValue:=-1;
end;

procedure TFrame_NewPatient.DBLCB_RelationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Relation.KeyValue:=-1;
end;

procedure TFrame_NewPatient.DBLCB_ReligionExit(Sender: TObject);
begin
     DBLCB_Country.SetFocus;
end;

procedure TFrame_NewPatient.DBLCB_VDCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_VDC.KeyValue:=-1;
end;

destructor TFrame_NewPatient.Destroy;
begin
  ClearImage;
  DeleteAllFiles(gi_PatientID);
  inherited;
end;

function TFrame_NewPatient.FormValidated: Boolean;
begin
     if (Le_FName.Text='') or
        (Le_LName.Text='') or (le_Age.Text='') then
     Result:=false
     else
     Result:=true;
end;

procedure TFrame_NewPatient.LoadData;
begin
     DBLCB_title.KeyValue:=Gs_Title;
     CB_Gender.ItemIndex:=CB_Gender.Items.IndexOf(Gs_Gender);
     Le_FName.Text:=Gs_Fname;
     Le_LName.Text:=Gs_Lname;
     le_Age.Text:=Gs_Age;
     CB_AgeType.ItemIndex:=CB_AgeType.Items.IndexOf(Gs_agetype);
     Dex_Dob.VSDateAsText:=Gs_DobVS;
     CB_MaritalStatus.ItemIndex:=CB_MaritalStatus.Items.IndexOf(Gs_MaritalStatus);
     DBLCB_Religion.KeyValue:=Gi_ReligionID;
     DBLCB_Country.KeyValue:=Gi_CountryID;
     DBLCB_District.KeyValue:=Gi_DistrictID;
     DBLCB_VDC.KeyValue:=Gi_VdcID;
     Le_Address.Text:=Gs_Address;
     Le_WardNo.Text:=Gs_WardNo;
     Le_PhoneNo.Text:=Gs_PhoneNo;
     Le_MobileNo.Text:=Gs_MobileNo;
     DBLCB_Occupation.KeyValue:=Gi_OccupationID;
     DBLCB_Education.KeyValue:=Gi_EducationID;
     Le_Relative.Text:=Gs_NexttoKin;
     DBLCB_Relation.KeyValue:=Gi_RelationID;
     Le_Company.Text:=Gs_Company;
     Memo_Remarks.Text:=Gs_Remarks;
end;

procedure TFrame_NewPatient.LoadImage;
begin
     LoadImageFromDB(gi_PatientID);
     Image_Main.Picture.LoadFromFile(gs_picpath+'\'+IntToStr(gi_PatientID)+'IMAGEMAIN.JPG');
end;

procedure TFrame_NewPatient.Memo_RemarksExit(Sender: TObject);
begin
     BB_Save.SetFocus;
end;

procedure TFrame_NewPatient.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     PageControl1.ActivePageIndex:=1
     else
     PageControl1.ActivePageIndex:=0;
end;

procedure TFrame_NewPatient.Save;
Var
     LI_NONPATIENTID,LI_AGE,LI_COUNTRYID,LI_ZONEID,LI_DISTRICTID,LI_VDCID
     ,LI_WARDNO,LI_OCCUPATIONID,LI_RELATIONID,LI_DATAPOSTBY,LI_EDUCATIONID,LI_RELIGIONID:INTEGER;
	LS_TITLE,LS_FNAME,LS_MNAME,LS_LNAME,LS_PATIENTNAME,LS_GENDER,LS_AGETYPE,LS_DOBVS
     ,LS_DOBAD,LS_MARITALSTATUS,LS_ADDRESS,LS_PHONENO,LS_MOBILENO,
	LS_EMAIL,LS_COMPANY,LS_PATIENTTYPE,LS_NEXTTOKIN,LS_CARDNO,LS_REMARKS:STRING;
begin
     if DBLCB_title.KeyValue =null then
     ls_title:=''
     else
     ls_title:=DBLCB_title.KeyValue;
     ls_gender:=CB_Gender.Text;
     ls_Fname:=Le_FName.Text;
     ls_Lname:=Le_LName.Text;
     li_age:=StrToInt(le_Age.Text);
     ls_agetype:=CB_AgeType.Text;
     ls_Maritalstatus:=CB_MaritalStatus.Text;
     ls_Address:=Le_Address.Text;
     if Le_WardNo.Text<>'' then
     lI_wardno:=StrToInt(Le_WardNo.Text)
     else
     LI_WARDNO:=0;
     ls_phoneno:=Le_PhoneNo.Text;
     ls_mobileno:=Le_MobileNo.Text;
     ls_company:=Le_Company.Text;
     LS_PATIENTNAME:=LS_FNAME+' '+LS_LNAME;
     LS_NEXTTOKIN:=Le_Relative.Text;
     LS_DOBVS:=Dex_Dob.VSDateAsText;
     LS_DOBAD:=Dex_Dob.ADDateAsText;
     LS_EMAIL:=le_Email.Text;
     LS_REMARKS:=Memo_Remarks.Text;
//     if DBLCB_Religion.KeyValue=-1 then
//     li_Religionid:=0
//     else
//     li_Religionid:=DBLCB_Religion.KeyValue;
//     if DBLCB_Ethnicity.KeyValue=-1 then
//     li_Ethinicityid:=0
//     else
//     li_Ethinicity:=DBLCB_Ethnicity.KeyValue;
     LI_RELIGIONID:=0;
     if DBLCB_Country.KeyValue=null then
     li_countryid:=0
     else
     li_countryid:=DBLCB_Country.KeyValue;
     if DBLCB_District.KeyValue=null then
     li_districtid:=0
     else
     li_districtid:=DBLCB_District.KeyValue;
     if DBLCB_VDC.KeyValue=null then
     li_vdcid:=0
     else
     li_vdcid:=DBLCB_VDC.KeyValue;
     if DBLCB_Occupation.KeyValue=null then
     li_occupationid:=0
     else
     li_occupationid:=DBLCB_Occupation.KeyValue;
     if DBLCB_Education.KeyValue=null then
     LI_EDUCATIONID:=0
     else
     LI_EDUCATIONID:=DBLCB_Education.KeyValue;
     {------------------------------------------------}
     try
          DM_Hospital.DB.StartTransaction;
          try
               if pb_isnew then
               SavePatient(LI_NONPATIENTID,LI_AGE,LI_COUNTRYID,LI_ZONEID,LI_DISTRICTID,LI_VDCID
                         ,LI_WARDNO,LI_OCCUPATIONID,LI_RELATIONID,LI_DATAPOSTBY,LI_EDUCATIONID
                         ,LS_TITLE,LS_FNAME,LS_MNAME,LS_LNAME,LS_PATIENTNAME,LS_GENDER,LS_AGETYPE,LS_DOBVS
                         ,LS_DOBAD,LS_MARITALSTATUS,LS_ADDRESS,LS_PHONENO,LS_MOBILENO
                         ,LS_EMAIL,LS_COMPANY,LS_PATIENTTYPE,LS_NEXTTOKIN,LS_CARDNO,LS_REMARKS,TodaysDate,TodaysTime
                         ,TodaysDate,TodaysTime,gs_MacID)
               else
               UpdatePatient(gi_PatientID,gi_NonPatientID,LI_AGE,LI_COUNTRYID,LI_ZONEID,LI_DISTRICTID,LI_VDCID,LI_WARDNO,LI_OCCUPATIONID,LI_RELATIONID
                         ,LI_DATAPOSTBY,LI_EDUCATIONID,LI_RELIGIONID
                         ,LS_TITLE,LS_FNAME,LS_MNAME,LS_LNAME,LS_PATIENTNAME,LS_GENDER,LS_AGETYPE,LS_DOBVS
                         ,LS_DOBAD,LS_MARITALSTATUS,LS_ADDRESS,LS_PHONENO,LS_MOBILENO
                         ,LS_EMAIL,LS_COMPANY,LS_PATIENTTYPE,LS_NEXTTOKIN,LS_CARDNO,LS_REMARKS
                         ,TodaysDate,TodaysTime,gs_MacID);
          except
               if pb_isnew then
               SavePatient(LI_NONPATIENTID,LI_AGE,LI_COUNTRYID,LI_ZONEID,LI_DISTRICTID,LI_VDCID
                         ,LI_WARDNO,LI_OCCUPATIONID,LI_RELATIONID,LI_DATAPOSTBY,LI_EDUCATIONID
                         ,LS_TITLE,LS_FNAME,LS_MNAME,LS_LNAME,LS_PATIENTNAME,LS_GENDER,LS_AGETYPE,LS_DOBVS
                         ,LS_DOBAD,LS_MARITALSTATUS,LS_ADDRESS,LS_PHONENO,LS_MOBILENO
                         ,LS_EMAIL,LS_COMPANY,LS_PATIENTTYPE,LS_NEXTTOKIN,LS_CARDNO,LS_REMARKS,TodaysDate,TodaysTime
                         ,TodaysDate,TodaysTime,gs_MacID)
               else
               UpdatePatient(gi_PatientID,gi_NonPatientID,LI_AGE,LI_COUNTRYID,LI_ZONEID,LI_DISTRICTID,LI_VDCID,LI_WARDNO,LI_OCCUPATIONID,LI_RELATIONID
                         ,LI_DATAPOSTBY,LI_EDUCATIONID,LI_RELIGIONID
                         ,LS_TITLE,LS_FNAME,LS_MNAME,LS_LNAME,LS_PATIENTNAME,LS_GENDER,LS_AGETYPE,LS_DOBVS
                         ,LS_DOBAD,LS_MARITALSTATUS,LS_ADDRESS,LS_PHONENO,LS_MOBILENO
                         ,LS_EMAIL,LS_COMPANY,LS_PATIENTTYPE,LS_NEXTTOKIN,LS_CARDNO,LS_REMARKS
                         ,TodaysDate,TodaysTime,gs_MacID);
          end;
          SaveImage;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          {************************************************}
          gi_BillCase:=0;
          Frame_Billing:=TFrame_Billing.Create(nil);
          begin
               //Panel_Test.BringToFront;
               Frame_Billing.Parent:=Self.Parent;
               Self.Free;
               Align:=alClient;
               Show;
          end;
          {************************************************}
          Frame_Billing.Edit_TestName.SetFocus;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005,0,'','','');
     end;
end;

procedure TFrame_NewPatient.SaveImage;
begin
     if OpenPictureDialog1.FileName='' then
     exit;
     Image_Main.Picture.SaveToFile(gs_picpath+'\'+IntToStr(gi_PatientID)+'IMAGEMAIN.JPG');
     SaveImageToDB(gi_PatientID);
end;

procedure TFrame_NewPatient.SpeedButton1Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then
     begin
          Image_Main.Picture.LoadFromFile(OpenPictureDialog1.FileName);
     end;
end;

Initialization
     RegisterClass(TFrame_NewPatient);
finalization
     UnRegisterClass(TFrame_NewPatient);
end.
