unit Unit_RegistrationFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBTables, ExtDlgs, DB, StdCtrls, Grids, DBGrids, DBCtrls, OleCtrls,
  fxn,ServerDate,
  DateEditXControl_TLB, ExtCtrls, ComCtrls, Buttons;

type
  TFrame_Registration = class(TFrame)
    PageControl1: TPageControl;
    tim: TTabSheet;
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Image_Main: TImage;
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
    Panel2: TPanel;
    BB_Save: TBitBtn;
    GB_BasicInformation: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Le_FName: TLabeledEdit;
    Le_LName: TLabeledEdit;
    Dex_Dob: TDateEditX;
    le_Age: TLabeledEdit;
    DBLCB_Religion: TDBLookupComboBox;
    DBLCB_title: TDBLookupComboBox;
    CB_Gender: TComboBox;
    Label7: TLabel;
    CB_AgeType: TComboBox;
    Label8: TLabel;
    CB_MaritalStatus: TComboBox;
    Image2: TImage;
    Label3: TLabel;
    GB_Others: TGroupBox;
    Label18: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Le_Relative: TLabeledEdit;
    DBLCB_Occupation: TDBLookupComboBox;
    DBLCB_Education: TDBLookupComboBox;
    Le_Company: TLabeledEdit;
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
    Label17: TLabel;
    DBLCB_Relation: TDBLookupComboBox;
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
    Label1: TLabel;
    DBLCB_Ethnicity: TDBLookupComboBox;
    Label29: TLabel;
    Panel_AccountFrame: TPanel;
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
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
  private
    { Private declarations }
  public
     pi_patientid:integer;
     pb_isnew:boolean;
     AClass:TPersistentClass;
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    procedure SavePatient;
    function FormValidated:Boolean;
    Function MsgBox(MsgCode,BoxType:integer;param1,param2,param3:string):Boolean;
  end;

implementation


{$R *.dfm}

procedure TFrame_Registration.BB_ListClick(Sender: TObject);
begin
     ClearAll(GB_BasicInformation);
     ClearAll(GB_Others);
     ClearAll(GB_Address);
//     QueryList.Close;
//     QueryList.Open;
     PageControl1.ActivePageIndex:=1;
end;

procedure TFrame_Registration.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=0;
     pb_isnew:=true;
end;

procedure TFrame_Registration.BB_SaveClick(Sender: TObject);
begin
     MsgBox(1004,0,'','','');
     {Option:String;PatientID,Age,districtid,vdcid,occupationid,zoneid,countryid,relation
                           ,depid,docid,Education,religion,communityid,schemeid:Integer;
                           Title,Fname,LName,PatientName,Gender,Agetype,dob,PAddress,modifyby,modifydate,modifytime
                           ,depcode,regdate,maritalstatus,phoneno,doccode,Nexttokin,company,Remarks:String);}
     {try
          if pb_isnew then
          begin
          pi_patientid:=GetNewLongIntKeyValue('PatientMain','PatientId');
          SavePatient('insert',pi_patientid,StrToInt(le_Age.Text),dblcb_district.KeyValue,dblcb_vdc.KeyValue,StrToInt(Le_WardNo.Text),dblcb_occupation.KeyValue,0,dblcb_country.KeyValue
                    ,dblcb_relation.KeyValue,0,0,dblcb_education.KeyValue,dblcb_religion.KeyValue,0,0
                    ,DBLCB_title.Text,Le_FName.Text,Le_LName.Text,Le_FName.Text+' '+Le_LName.Text,CB_Gender.Text,CB_AgeType.Text
                    ,Dex_Dob.VSDateAsText,Le_Address.Text,IntToStr(gi_UserID),TodaysDateVS,TodaysTime
                    ,'',TodaysDateVS,CB_MaritalStatus.Text,Le_PhoneNo.Text,Le_MobileNo.Text,'',Le_Relative.Text,Le_Company.Text,'');
          end
          else
          SavePatient('update',pi_patientid,StrToInt(le_Age.Text),dblcb_district.KeyValue,dblcb_vdc.KeyValue,StrToInt(Le_WardNo.Text),dblcb_occupation.KeyValue,0,dblcb_country.KeyValue
                    ,dblcb_relation.KeyValue,0,0,dblcb_education.KeyValue,dblcb_religion.KeyValue,0,0
                    ,DBLCB_title.Text,Le_FName.Text,Le_LName.Text,Le_FName.Text+' '+Le_LName.Text,CB_Gender.Text,CB_AgeType.Text
                    ,Dex_Dob.VSDateAsText,Le_Address.Text,IntToStr(gi_UserID),TodaysDateVS,TodaysTime
                    ,'',TodaysDateVS,CB_MaritalStatus.Text,Le_PhoneNo.Text,Le_MobileNo.Text,'',Le_Relative.Text,Le_Company.Text,'');
          pb_isnew:=true;
          Frm_Message.ShowModal;
     except
          ShowMessage('Data couldn''t be saved');
     end;
     ClearAll(GB_BasicInformation);
     ClearAll(GB_Others);
     ClearAll(GB_Address);
     QueryList.Close;
     QueryList.Open;
     PageControl1.ActivePageIndex:=1; }
end;

constructor TFrame_Registration.Create(AOwner: TComponent);
begin
//  inherited;
//     QueryTitle.Close;
//     QueryTitle.Open;
//          QueryReligion.Close;
//          QueryReligion.Open;
//          QueryCountry.Close;
//          QueryCountry.Open;
//          QueryDistrict.Close;
//          QueryDistrict.Open;
//          QueryVDC.Close;
//          QueryVDC.Open;
//          QueryOccupation.Close;
//          QueryOccupation.Open;
//          QueryEducation.Close;
//          QueryEducation.Open;
//          QueryRelation.Close;
//          QueryRelation.Open;
//          QueryList.Close;
//          QueryList.Open;
          ClearAll(GB_BasicInformation);
          ClearAll(GB_Others);
          ClearAll(GB_Address);
          pb_isnew:=true;

          AClass := GetClass('TFrame_RegAccount');
          if AClass <> nil then
          with TComponentClass(AClass).Create(Application) as TCustomFrame do
          begin
               Parent := Panel_AccountFrame;
               Align := alClient;
               show;
          end;
end;

procedure TFrame_Registration.DBGrid1DblClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=0;
     pi_patientid:=QueryList.FieldByName('PatientID').AsInteger;
     DBLCB_title.KeyValue:=QueryList.FieldByName('TitleID').AsInteger;
     CB_Gender.ItemIndex:=CB_Gender.Items.IndexOf(QueryList.FieldByName('Gender').AsString);
     Le_FName.Text:=QueryList.FieldByName('Fname').AsString;
     Le_LName.Text:=QueryList.FieldByName('LName').AsString;
     le_Age.Text:=QueryList.FieldByName('Age').AsString;
     CB_AgeType.ItemIndex:=CB_AgeType.Items.IndexOf(QueryList.FieldByName('AgeType').AsString);
     Dex_Dob.VSDateAsText:=QueryList.FieldByName('Dob').AsString;
     CB_MaritalStatus.ItemIndex:=CB_MaritalStatus.Items.IndexOf(QueryList.FieldByName('MaritalStatus').AsString);
     DBLCB_Religion.KeyValue:=QueryList.FieldByName('Religion').AsInteger;
     DBLCB_Country.KeyValue:=QueryList.FieldByName('CountryID').AsInteger;
     DBLCB_District.KeyValue:=QueryList.FieldByName('DistrictID').AsInteger;
     dblcb_vdc.KeyValue:=QueryList.FieldByName('VDCID').AsInteger;
     Le_Address.Text:=QueryList.FieldByName('PAddress').AsString;
     Le_WardNo.Text:=QueryList.FieldByName('WardNo').AsString;
     Le_PhoneNo.Text:=QueryList.FieldByName('PhoneNo').AsString;
     Le_MobileNo.Text:=QueryList.FieldByName('MobileNo').AsString;
     DBLCB_Occupation.KeyValue:=QueryList.FieldByName('OccupationID').AsInteger;
     DBLCB_Education.KeyValue:=QueryList.FieldByName('Education').AsInteger;
     Le_Relative.Text:=QueryList.FieldByName('NexttoKin').AsString;
     DBLCB_Relation.KeyValue:=QueryList.FieldByName('Relation').AsInteger;
     Le_Company.Text:=QueryList.FieldByName('Company').AsString;
     pb_isnew:=false;
end;

procedure TFrame_Registration.DBLCB_EducationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Education.KeyValue:=-1;
end;

procedure TFrame_Registration.DBLCB_OccupationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Occupation.KeyValue:=-1;
end;

procedure TFrame_Registration.DBLCB_RelationKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_Relation.KeyValue:=-1;
end;

procedure TFrame_Registration.DBLCB_VDCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if KEY=VK_DELETE then
     DBLCB_VDC.KeyValue:=-1;
end;

procedure TFrame_Registration.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     PageControl1.ActivePageIndex:=1
     else
     PageControl1.ActivePageIndex:=0;
end;

procedure TFrame_Registration.SavePatient;
Var
     ls_title,ls_gender,ls_Fname,ls_Lname,ls_age,ls_agetype
     ,ls_Maritalstatus,ls_Address,ls_wardno,ls_phoneno,ls_mobileno
     ,ls_company:String;
     li_Religion,li_Ethinicity,li_country,li_district,li_vdc,li_occupation
     ,li_education:Integer;
begin
     if not FormValidated then
     begin
          ShowMessage('abc');
          exit;
     end;
     ls_title:=DBLCB_title.KeyValue;
     ls_gender:=CB_Gender.Text;
     ls_Fname:=Le_FName.Text;
     ls_Lname:=Le_LName.Text;
     ls_age:=le_Age.Text;
     ls_agetype:=CB_AgeType.Text;
     ls_Maritalstatus:=CB_MaritalStatus.Text;
     ls_Address:=Le_Address.Text;
     ls_wardno:=Le_WardNo.Text;
     ls_phoneno:=Le_PhoneNo.Text;
     ls_mobileno:=Le_MobileNo.Text;
     ls_company:=Le_Company.Text;
     if DBLCB_Religion.KeyValue=-1 then
     li_Religion:=0
     else
     li_Religion:=DBLCB_Religion.KeyValue;
     if DBLCB_Ethnicity.KeyValue=-1 then
     li_Ethinicity:=0
     else
     li_Ethinicity:=DBLCB_Ethnicity.KeyValue;
     if DBLCB_Country.KeyValue=-1 then
     li_country:=0
     else
     li_country:=DBLCB_Country.KeyValue;
     if DBLCB_District.KeyValue=-1 then
     li_district:=0
     else
     li_district:=DBLCB_District.KeyValue;
     if DBLCB_VDC.KeyValue=-1 then
     li_vdc:=0
     else
     li_vdc:=DBLCB_VDC.KeyValue;
     if DBLCB_Occupation.KeyValue=-1 then
     li_occupation:=0
     else
     li_occupation:=DBLCB_Occupation.KeyValue;
     if DBLCB_Education.KeyValue=-1 then
     li_education:=0
     else
     li_education:=DBLCB_Education.KeyValue;

end;

procedure TFrame_Registration.SpeedButton1Click(Sender: TObject);
begin
     if OpenPictureDialog1.Execute then
  begin
    Image_Main.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Image_Main.Picture.SaveToFile(gs_picpath+'\'+IntToStr(pi_patientid)+'IMAGEMAIN.JPG');
  end;
end;

function TFrame_Registration.FormValidated: Boolean;
begin
     if (DBLCB_title.KeyValue=-1) or (CB_Gender.ItemIndex=-1) or (Le_FName.Text='') or
          (Le_LName.Text='') or (le_Age.Text='') or (CB_MaritalStatus.ItemIndex=-1)  then
     Result:=false
     else
     Result:=true;
end;

function TFrame_Registration.MsgBox(MsgCode,BoxType:integer;param1,param2,param3:string): Boolean;
Var
     Query:Tquery;
     msg:String;
     finalmsg:String;
     linebreak:integer;
     msgtype:TMsgDlgType;
begin
     try
     Query:=TQuery.Create(nil);
     with Query do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQl.Add('select msg_type,msg,instr(msg,''#13'')linebreak from msg_code');
          Sql.Add(' Where Msg_Code='+IntToStr(MsgCode));
          Open;
          if FieldByName('msg_type').AsString='MTCONFIRMATION' then
          msgtype:=mtConfirmation
          else if FieldByName('msg_type').AsString='MTINFORMATION' then
          msgtype:=mtInformation
          else if FieldByName('msg_type').AsString='MTWARNING' then
          msgtype:=mtWarning
          else if FieldByName('msg_type').AsString='MTERROR' then
          msgtype:=mtError;

          msg:=FieldByName('msg').AsString;
          linebreak:=FieldByName('Linebreak').AsInteger;
     end;
     if linebreak>0 then
     begin
          finalmsg:=copy(msg,1,linebreak)+#13+copy(msg,14,999);
     end;
     finalmsg:=StringReplace(finalmsg,'@1',param1,[rfReplaceAll]);
     finalmsg:=StringReplace(finalmsg,'@2',param2,[rfReplaceAll]);
     finalmsg:=StringReplace(finalmsg,'@3',param3,[rfReplaceAll]);

     if BoxType=0 then
     ShowMessage(finalmsg);
     if BoxType=1 then
     begin
          if MessageDlg(finalmsg,msgtype,mbYesNo,0)=0 then
          Result:=TRUE
          else
          Result:=FALSE;
     end;

     except
     Result:=false;
     end;
end;

Initialization
     RegisterClass(TFrame_Registration);
finalization
     UnRegisterClass(TFrame_Registration);

end.
