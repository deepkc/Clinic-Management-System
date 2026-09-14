unit Unit_AppointmentSearch;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, ExtCtrls, StdCtrls, Buttons, OleCtrls, DateEditXControl_TLB,
     ComCtrls, Unit_MasterFxnPA, Serverdate, Unit_NewPatient, Unit_OPDVisit,
     // Unit_Status,
     DBCtrls, Grids, DBGrids, dblookup, CheckLst, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, jpeg, Fxn;
// Unit_PatientInfo

type
     THackDbGrid = class(TdbGrid);

     type
          TFrame_AppointmentSearch = class(TFrame)
               Query_Department: TOraQuery;
               DS_Department: TDataSource;
               DS_Doctor: TDataSource;
               Query_Doctor: TOraQuery;
               DS_Appoinment: TDataSource;
               Query_Appoinment: TOraQuery;
               TT_Appoinment: TOraTable;
               Query_Temp: TOraQuery;
               DS_SearchApp: TDataSource;
               Query_SearchApp: TOraQuery;
               Panel1: TPanel;
               Panel2: TPanel;
               Label2: TLabel;
               SpeedButton1: TSpeedButton;
               Label3: TLabel;
               Label4: TLabel;
               Img: TImage;
               Label6: TLabel;
               Label7: TLabel;
               Label8: TLabel;
               DateEditX1: TDateEditX;
               dblcb_department: TDBLookupComboBox;
               BB_View: TBitBtn;
               Chb_Doctor: TCheckListBox;
               CheckBox1: TCheckBox;
               Panel3: TPanel;
               Panel4: TPanel;
               Label1: TLabel;
               Label5: TLabel;
               Label9: TLabel;
               Image1: TImage;
               Label10: TLabel;
               Label_Doc: TLabel;
               Label12: TLabel;
               Label_Dep: TLabel;
               Label14: TLabel;
               Label_Date: TLabel;
               Label16: TLabel;
               Label_Time: TLabel;
               Label18: TLabel;
               Label_Order: TLabel;
               BB_Status: TBitBtn;
               Edit_SearchAppId: TEdit;
               Edit_SearchPatientId: TEdit;
               Edit_SearchPatientName: TEdit;
               DBGrid_Appoinment: TdbGrid;
               DBGrid_PatientSearch: TdbGrid;
               MonthCalendar1: TMonthCalendar;
               GroupBox1: TGroupBox;
               Label19: TLabel;
               Label20: TLabel;
               GroupBox2: TGroupBox;
               Label11: TLabel;
               Edit3: TEdit;
               Label13: TLabel;
               Edit4: TEdit;
               Label15: TLabel;
               Edit5: TEdit;
               Label21: TLabel;
               Edit7: TEdit;
               Edit1: TEdit;
               Edit2: TEdit;
               Label17: TLabel;
               DBLCB_Shift: TDBLookupComboBox;
               Query_Shift: TOraQuery;
               DS_Shift: TDataSource;
    Label22: TLabel;
    Label23: TLabel;
    Edit_Doctor: TEdit;
    DBGrid_DocList: TDBGrid;
               Constructor Create(Aowner: Tcomponent); Override;
               procedure dblcb_departmentClick(Sender: TObject);
               procedure ImgClick(Sender: TObject);
               procedure CheckBox1Click(Sender: TObject);
               procedure SpeedButton1Click(Sender: TObject);
               procedure MonthCalendar1DblClick(Sender: TObject);
               procedure BB_ViewClick(Sender: TObject);
               procedure GridColumnWidth;
               procedure DBGrid_AppoinmentDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
                    State: TGridDrawState);
               procedure btn_CloseClick(Sender: TObject);
               procedure btn_SaveClick(Sender: TObject);
               procedure BB_StatusClick(Sender: TObject);
               procedure new;
               procedure Edit_SearchAppIdChange(Sender: TObject);
               procedure Edit_SearchPatientIdChange(Sender: TObject);
               procedure Edit_SearchPatientNameChange(Sender: TObject);
               procedure Edit_SearchAppIdEnter(Sender: TObject);
               procedure Edit_SearchAppIdExit(Sender: TObject);
               procedure Edit_SearchPatientIdExit(Sender: TObject);
               procedure Edit_SearchPatientNameExit(Sender: TObject);
               procedure Edit_SearchPatientIdEnter(Sender: TObject);
               procedure Edit_SearchPatientNameEnter(Sender: TObject);
               procedure Edit_SearchAppIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
               procedure Edit_SearchPatientIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
               procedure Edit_SearchPatientNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
               procedure DBGrid_PatientSearchDblClick(Sender: TObject);
               procedure Edit_SearchPatientNameClick(Sender: TObject);
               procedure Edit_SearchPatientIdClick(Sender: TObject);
               procedure Edit_SearchAppIdClick(Sender: TObject);
               procedure DBGrid_PatientSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
               procedure DBLCB_ShiftClick(Sender: TObject);
    procedure Edit_DoctorChange(Sender: TObject);
    procedure Edit_DoctorKeyPress(Sender: TObject; var Key: Char);
          private
               { Private declarations }
          public
               Frame_NewPatient: Unit_NewPatient.TFrame_NewPatient;
               Frame_OPDVisit: Unit_OPDVisit.TFrame_OPDVisit;
               { Public declarations }
               Arr_CLB_DoctorID: Array of Array of String;
               Pi_chblength, dragdocid: Integer;
               Ps_DocName, ps_DocCode: String;
               Pb_Register, Pb_Valid, pb_new, Pb_RegisteredPatient: Boolean;
               isdrag: Boolean;
               Procedure ClearFrame;
          end;

implementation

{$R *.dfm}

procedure TFrame_AppointmentSearch.BB_StatusClick(Sender: TObject);
var
     Li_arrcount, Li_arrcount1: Integer;
     Ls_Docname, Ls_Walkin, Ls_QueueNo, Ls_DocId, Ls_Tablename, Ls_Patienttype, Ls_ColId, Ls_Patientid, Ls_Patientname, Ls_AppId, Ls_PatientPhone,
       Ls_DocScDetail, Ls_Register, Ls_PName: String;
     Qry, Query: TOraQuery;
begin
     gi_PatientID:=0;
     gb_FrameParent := false;
     if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName1') then
     Begin
          Ls_Docname := 'DocName1';
          Ls_Walkin := 'WalkIn1';
          Ls_QueueNo := 'QueueNo1';
          Ls_DocId := 'DocID1';
          Ls_PName := 'PatientName1';
          // Form_PatientInfo.Ps_PatientFieldName:='PatientName1';
          Ls_Patienttype := 'Patienttype1';
          Ls_Patientid := 'PatientID1';
          Ls_Patientname := TT_Appoinment.FieldByName('PatientName1').AsString;

          Ls_AppId := 'AppId1';
          Ls_PatientPhone := TT_Appoinment.FieldByName('PatientPhone1').AsString;
          gi_DoctorId := TT_Appoinment.FieldByName('DocID1').AsInteger;
          Ls_DocScDetail := 'DocScDetailId1';
          Ls_Register := 'Registered1';
     End
     else if (DBGrid_Appoinment.SelectedField.FieldName = 'PatientName2') then
     Begin
          Ls_Docname := 'DocName2';
          Ls_Walkin := 'WalkIn2';
          Ls_QueueNo := 'QueueNo2';
          Ls_DocId := 'DocID2';
          Ls_PName := 'PatientName2';
          // Form_PatientInfo.Ps_PatientFieldName:='PatientName2';
          Ls_Patienttype := 'Patienttype2';
          Ls_Patientid := 'PatientID2';
          Ls_Patientname := TT_Appoinment.FieldByName('PatientName2').AsString;
          Ls_AppId := 'AppId2';
          gi_DoctorId := TT_Appoinment.FieldByName('DocID2').AsInteger;
          Ls_PatientPhone := TT_Appoinment.FieldByName('PatientPhone2').AsString;
          Ls_DocScDetail := 'DocScDetailId2';
          Ls_Register := 'Registered2';
     End
     Else
          Exit;

     gi_DepartmentId := dblcb_department.KeyValue;
     gi_DoctorId := TT_Appoinment.FieldByName(Ls_DocId).AsInteger;

     if DBGrid_Appoinment.SelectedField.Value = NULL then
     Begin
          // MessageDlg('Please Select The Patient First', mtWarning, [mbOK], 0);
          Exit;
     End;

     if TT_Appoinment.FieldByName(Ls_PName).Value = 'BREAK' then
     Begin
          Exit;
     End;

     Gb_PatientDataLoaded := True;

     if TT_Appoinment.FieldByName(Ls_Register).AsInteger = 1 then
     Begin
          // MessageDlg('Patient Already Registered !',mtWarning,[mbOK],0);
          // Exit;
     End;

     Pb_Register := True;

     gb_FrameParent := false;

     Qry := TOraQuery.Create(nil);
     Query := TOraQuery.Create(nil);

     With Qry do
     Begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
          begin
               SQL.Add('select * from nonpatient where nonpatientid in ');
               Sql.Add('(Select NonPatientID from Appointment Where AppID='+ inttostr(TT_Appoinment.FieldByName(Ls_AppId).AsInteger)+')');
          end
          Else if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
               SQL.Add('select * from patientmain where patientid=' + inttostr(TT_Appoinment.FieldByName(Ls_Patientid).AsInteger));
          Open;
     End;

     if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
          gs_RegistrationType := 'NEW'
     else
          gs_RegistrationType := 'FOLLOWUP';

     if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
     Begin
          With Query do
          Begin
               Close;
               DatabaseName := gs_DatabaseName;
               SQL.Clear;
               SQL.Add('select * from patientcategory where patientcategoryname=' + #39 + Qry.FieldByName('patientcategoryname').AsString + #39);
               Open;
          End;
          gs_patientType := Query.FieldByName('patientcategoryid').AsString;
     End
     else if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
          gs_patientType := '';

     if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
          gi_PatientID := TT_Appoinment.FieldByName(Ls_Patientid).AsInteger;

     gs_CalledFrom := 'Appointment';
     Frame_NewPatient := TFrame_NewPatient.Create(Nil);
     try
          with Frame_NewPatient do
          begin
               Align := alClient;
               Parent := Self.Parent;

               FrameCleared := false;

               GB_BasicInformation.Enabled := false;
               GB_Address.Enabled := false;
               GB_Others.Enabled := false;

               if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
               Begin
                    gi_NonPatientID := TT_Appoinment.FieldByName(Ls_Patientid).AsInteger;
                    DBLCB_Country.KeyValue := 1;
                    pb_nonpatient := True;
               End;

               CB_AgeType.Text := Qry.FieldByName('agetype').AsString;

               // With Query do
               // Begin
               // Close;
               // DatabaseName := gs_DatabaseName;
               // SQL.Clear;
               // SQL.Add('select * from title where title=' + #39 + Qry.FieldByName('title').AsString + #39);
               // Open;
               // End;

               // DBLCB_title.KeyValue := Query.FieldByName('titleid').AsInteger;

               Le_Fname.Text := Qry.FieldByName('FNAME').AsString;
               Le_LName.Text := Qry.FieldByName('LNAME').AsString;

               le_Age.Text := Qry.FieldByName('Age').AsString;
               CB_AgeType.Text := Qry.FieldByName('AgeType').AsString;

               if UpperCase(Qry.FieldByName('Gender').AsString) = 'MALE' then
                    CB_Gender.ItemIndex := 0
               else if UpperCase(Qry.FieldByName('Gender').AsString) = 'FEMALE' then
                    CB_Gender.ItemIndex := 1;

               // Dex_Dob.text:=Qry.FieldByName('Gender').AsString;

               if TT_Appoinment.FieldByName(Ls_Register).AsInteger = 1 then
               Begin
                    lbl_HosNo.Caption := TT_Appoinment.FieldByName(Ls_Patientid).AsString;
                    Gb_PatientDataLoaded := True;
               End;

               if UpperCase(Qry.FieldByName('MARITALSTATUS').AsString) = 'MARRIED' then
                    CB_MaritalStatus.ItemIndex := 0
               Else if UpperCase(Qry.FieldByName('MARITALSTATUS').AsString) = 'UNMARRIED' then
                    CB_MaritalStatus.ItemIndex := 1;

               if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
               Begin

                    DBLCB_Country.KeyValue := Qry.FieldByName('COUNTRYID').AsInteger;

                    Le_Relative.Text := Qry.FieldByName('nexttokin').AsString;

                    Query.Free;

               End;

               DBLCB_Religion.KeyValue := Qry.FieldByName('RELIGIONID').AsInteger;
               DBLCB_District.KeyValue := Qry.FieldByName('DISTRICTID').AsInteger;
               DBLCB_VDC.KeyValue := Qry.FieldByName('VDCID').AsInteger;
               le_Address.Text := Qry.FieldByName('ADDRESS').AsString;
               Le_WardNo.Text := Qry.FieldByName('WARDNO').AsString;
               Le_MobileNo.Text := Qry.FieldByName('MOBILENO').AsString;
               Le_PhoneNo.Text := Qry.FieldByName('PHONENO').AsString;
               le_Email.Text := Qry.FieldByName('EMAIL').AsString;
               Memo_Remarks.Text := Qry.FieldByName('REMARKS').AsString;
               DBLCB_Occupation.KeyValue := Qry.FieldByName('OCCUPATIONID').AsInteger;
               DBLCB_Education.KeyValue := Qry.FieldByName('EDUCATIONID').AsInteger;
               DBLCB_Relation.KeyValue := Qry.FieldByName('RELATIONID').AsInteger;
               Le_Company.Text := Qry.FieldByName('COMPANY').AsString;

               Pi_DepartmentId := dblcb_department.KeyValue;
               Pi_DoctorId := TT_Appoinment.FieldByName(Ls_DocId).AsInteger;

               Le_MobileNo.Text := Ls_PatientPhone;
               Frame_NewPatient.BB_Save.Visible := false;
               lbl_Appintment.Caption := TT_Appoinment.FieldByName(Ls_AppId).AsString;

               if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Non' then
               Begin
                    pb_isnew := True;
                    pb_editMode := false;
                    Frame_NewPatient.BB_EditModeClick(Sender);
                    // BB_EditMode.Visible:=False;
                    Dex_Dob.ADDateAsText := Qry.FieldByName('dob').AsString;
                    pb_new := True;
               end
               else if TT_Appoinment.FieldByName(Ls_Patienttype).AsString = 'Ex' then
               begin
                    // pb_isnew:=False;
                    // pb_editMode:=False;
                    // BB_EditMode.Visible:=True;
                    // pb_new:=False;
                    // MessageDlg('Patient Already Registered !',mtWarning,[mbOK],0);
                    // Exit;
                    if gi_datesystem = 1 then
                         Dex_Dob.ADDateAsText := Qry.FieldByName('dobad').AsString
                    Else
                         Dex_Dob.ADDateAsText := Qry.FieldByName('dobvs').AsString

               end;
               gi_PatientID := TT_Appoinment.FieldByName(Ls_Patientid).AsInteger;
               Qry.Free;
               gb_visitsave := True;
               show;
          end;
     except
          Frame_NewPatient.Free;
          //Self.Free;
     end;

     //Self.Free;

     Exit;

     With Qry do
     Begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          SQL.Add('Select * from tbl_appoinment where ' + Ls_Docname + '=' + #39 + TT_Appoinment.FieldByName(Ls_Docname).AsString + #39);
          SQL.Add(' and ' + Ls_Patientname + '=' + #39 + TT_Appoinment.FieldByName(Ls_Patientname).AsString + #39);
          SQL.Add(' and ' + Ls_PatientPhone + '=' + #39 + TT_Appoinment.FieldByName(Ls_PatientPhone).AsString + #39);
          Open;
     End;
end;

procedure TFrame_AppointmentSearch.BB_ViewClick(Sender: TObject);
var
     Li_check, Li_loop, Li_Serial, Li_Count, Li_num, Li_maxserial: Integer;
     Ls_ColName, Ls_Min, Ls_ColId, Ls_random, Ls_docname1, Ls_docname2, Ls_docname3, Ls_Walkin, Ls_Queue, Ls_DocId, Ls_AppId, Ls_Patientid,
       Ls_Patienttype, Ls_T, Ls_ET, Ls_N, Ls_Patientname, Ls_PatientPhone, Ls_DocScDetail, Ls_PT, Ls_Register, Ls_AppStatus, Ls_DocTime,
       Ls_DocEndTime: String;
     Qry, Query, Qry_leave: TOraQuery;
     Lb_next: Boolean;
begin
     Query_Shift.Close;
     Query_Shift.Open;
     DBLCB_Shift.KeyValue := 'All';
     // CB_Shift.ItemIndex := 2;
//     DBGrid_Appoinment.Columns[3].Title.Caption := Gs_PatientIdCaption;
//     DBGrid_Appoinment.Columns[10].Title.Caption := Gs_PatientIdCaption;

     DBGrid_Appoinment.Columns[3].Title.Caption:='Hos. No.';
     DBGrid_Appoinment.Columns[10].Title.Caption:='Hos. No.';

     if dblcb_department.KeyValue = NULL then
     Begin
          MessageDlg('Please Select Department First!', mtWarning, [mbOK], 0);
          Exit;
     End;

     if Chb_Doctor.Count = 0 then
     Begin
          MessageDlg('No Doctors In This Department!', mtWarning, [mbOK], 0);
          Exit;
     End;

     Qry := TOraQuery.Create(nil);
     Query := TOraQuery.Create(nil);
     Qry_leave := TOraQuery.Create(nil);

     TT_Appoinment.Close;
     TT_Appoinment.EmptyTable;
     TT_Appoinment.DatabaseName := gs_temppath;
     TT_Appoinment.Open;

     Li_check := 0;

     Li_loop := 0;

     Li_Serial := 1;

     TT_Appoinment.Append;

     while Li_check < Pi_chblength do
     Begin
          if Chb_Doctor.Checked[Li_check] = True then
          Begin

               with TT_Appoinment do
               Begin
                    if Li_loop = 0 then
                    Begin
                         Ls_ColId := 'DocID1';
                         Ls_ColName := 'DocName1';
                         Ls_Walkin := 'WalkIn1';
                         Ls_Queue := 'QueueNo1';
                         Ls_AppId := 'AppId1';
                         Ls_Patientid := 'PatientID1';
                         Ls_Patienttype := 'PatientType1';
                         Ls_PT := 'Patientt1';
                         Ls_Patientname := 'PatientName1';
                         Ls_PatientPhone := 'PatientPhone1';
                         Ls_DocScDetail := 'DocScDetailId1';
                         Ls_Register := 'Registered1';
                         Ls_AppStatus := 'AppStatus1';
                         Ls_DocTime := 'DocTime1';
                         Ls_DocEndTime := 'DocEndTime1';
                         Ls_N := 'DocN1';
                         Ls_T := 'DocT1';
                         Ls_ET := 'DocET1';
                    End
                    else if Li_loop = 1 then
                    Begin
                         Ls_ColId := 'DocID2';
                         Ls_ColName := 'DocName2';
                         Ls_Walkin := 'WalkIn2';
                         Ls_Queue := 'QueueNo2';
                         Ls_AppId := 'AppId2';
                         Ls_Patientid := 'PatientID2';
                         Ls_Patienttype := 'PatientType2';
                         Ls_PT := 'Patientt2';
                         Ls_Patientname := 'PatientName2';
                         Ls_PatientPhone := 'PatientPhone2';
                         Ls_DocScDetail := 'DocScDetailId2';
                         Ls_Register := 'Registered2';
                         Ls_AppStatus := 'AppStatus2';
                         Ls_DocTime := 'DocTime2';
                         Ls_DocEndTime := 'DocEndTime2';
                         Ls_N := 'DocN2';
                         Ls_T := 'DocT2';
                         Ls_ET := 'DocET2';
                    End;

                    if Arr_CLB_DoctorID[Li_check, 0] <> '' then
                    Begin
                         if Li_loop = 0 then
                              FieldByName('Serial').AsInteger := Li_Serial;
                         FieldByName(Ls_ColId).AsString := Arr_CLB_DoctorID[Li_check, 0];
                         Ls_DocId := Arr_CLB_DoctorID[Li_check, 0];
                         FieldByName(Ls_ColName).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_DocTime).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_DocEndTime).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_T).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
                    End;

                    if Li_loop = 0 then
                    Begin
                         Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
                    End
                    else if Li_loop = 1 then
                    Begin
                         Ls_docname2 := Arr_CLB_DoctorID[Li_check, 1];
                    End
                    else
                         Ls_docname3 := Arr_CLB_DoctorID[Li_check, 1];

                    inc(Li_loop);

               End;

               With Query_Appoinment do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select * from doctorscheduledetail where doctorscheduleid in (select doctorscheduleid from doctorschedule where docid='
                           + Arr_CLB_DoctorID[Li_check, 0] + ' and EngDate=''' + DateEditX1.ADDateAsText + ''') order by serialorderno');
                    // SQL.Add('Select * from appointment where appdate='+#39+DateEditX1.text+#39+' and doccode in (Select doccode from doctor where docid='+Arr_CLB_DoctorID[LI_check,0]+') order by QueNo');
                    Open;
               End;

               with Qry_leave do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select isonleave from doctorschedule where docid=' + Arr_CLB_DoctorID[Li_check, 0]
                           + ' and EngDate=' + #39 + DateEditX1.ADDateAsText + #39);
                    Open;
               End;

               if Li_loop > 0 then
               Begin
                    TT_Appoinment.Post;

                    if (Query_Appoinment.Eof = True) or (Qry_leave.FieldByName('isonleave').AsString = 'Y') then
                    Begin

                    End
                    Else
                    Begin
                         Li_num := 1;
                         while Query_Appoinment.Eof <> True do
                         Begin
                              if Li_loop = 1 then
                              Begin
                                   TT_Appoinment.Append;
                                   inc(Li_Serial);
                                   Li_maxserial := Li_Serial;
                              End
                              Else
                              Begin
                                   TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
                                   Li_Count := TT_Appoinment.FieldByName('Serial').AsInteger;
                                   if (Li_Count + Li_num) > Li_maxserial then
                                        TT_Appoinment.Append
                                   Else
                                   Begin
                                        TT_Appoinment.Locate('Serial', Li_Count + Li_num, []);
                                        TT_Appoinment.Edit;
                                   End;
                              End;
                              if Li_loop = 1 then
                                   TT_Appoinment.FieldByName('Serial').AsInteger := Li_Serial;

                              TT_Appoinment.FieldByName(Ls_ColId).AsString := Ls_DocId;
                              TT_Appoinment.FieldByName(Ls_ColName).AsString := Query_Appoinment.FieldByName('Starttime').AsString;
                              if strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) > 12 then
                              Begin
                                   Ls_Min := copy(Query_Appoinment.FieldByName('Starttime').AsString, 4, 2);
                                   TT_Appoinment.FieldByName(Ls_N).AsString := inttostr
                                     (strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) - 12) + ':' + Ls_Min + ' pm';
                              End
                              Else
                              Begin
                                   if strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) = 12 then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_N).AsString := Query_Appoinment.FieldByName('Starttime').AsString + ' pm';
                                   End
                                   Else
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_N).AsString := Query_Appoinment.FieldByName('Starttime').AsString + ' am';
                                   End;
                              End;
                              TT_Appoinment.FieldByName(Ls_DocEndTime).AsString := Query_Appoinment.FieldByName('EndTime').AsString;
                              if strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) > 12 then
                              Begin
                                   Ls_Min := copy(Query_Appoinment.FieldByName('EndTime').AsString, 4, 2);
                                   TT_Appoinment.FieldByName(Ls_ET).AsString := inttostr
                                     (strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) - 12) + ':' + Ls_Min + ' pm';
                              End
                              Else
                              Begin
                                   if strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) = 12 then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_ET).AsString := Query_Appoinment.FieldByName('EndTime').AsString + ' pm';
                                   End
                                   Else
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_ET).AsString := Query_Appoinment.FieldByName('EndTime').AsString + ' am';
                                   End;
                              End;
                              TT_Appoinment.FieldByName(Ls_DocTime).AsString := Query_Appoinment.FieldByName('Starttime')
                                .AsString + ' - ' + Query_Appoinment.FieldByName('EndTime').AsString;
                              TT_Appoinment.FieldByName(Ls_T).AsString := TT_Appoinment.FieldByName(Ls_N).AsString + ' - ' + TT_Appoinment.FieldByName
                                (Ls_ET).AsString;
                              TT_Appoinment.FieldByName(Ls_Walkin).AsString := Query_Appoinment.FieldByName('ISWALKIN').AsString;
                              TT_Appoinment.FieldByName(Ls_Queue).AsString := Query_Appoinment.FieldByName('SERIALORDERNO').AsString;
                              if (Query_Appoinment.FieldByName('AppoinmentId').AsString <> '0') then
                                   TT_Appoinment.FieldByName(Ls_AppId).AsString := Query_Appoinment.FieldByName('AppoinmentId').AsString;
                              TT_Appoinment.FieldByName(Ls_DocScDetail).AsString := Query_Appoinment.FieldByName('DoctorScheduleDetailId').AsString;
                              TT_Appoinment.FieldByName(Ls_PT).AsString := Query_Appoinment.FieldByName('patienttype').AsString;

                              if TT_Appoinment.FieldByName(Ls_PT).AsString = 'Break' then
                                   TT_Appoinment.FieldByName(Ls_Patientname).AsString := 'BREAK';

                              if TT_Appoinment.FieldByName(Ls_AppId).AsString <> '' then
                              Begin
                                   with Qry do
                                   Begin
                                        Close;
                                        DatabaseName := gs_DatabaseName;
                                        SQL.Clear;
                                        SQL.Add('SELECT * from Appointment where AppId=' + #39 + TT_Appoinment.FieldByName(Ls_AppId).AsString + #39);
                                        Open;
                                   End;

                                   TT_Appoinment.FieldByName(Ls_AppStatus).AsString := Qry.FieldByName('status').AsString;

                                   if (Qry.FieldByName('PatientID').AsString <> '') and (Qry.FieldByName('PatientID').AsString <> '0') then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_Patientid).AsString := Qry.FieldByName('PatientID').AsString;
                                        TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Ex';
                                        Qry.Close;
                                        Qry.SQL.Clear;
                                        Qry.SQL.Add('SELECT * FROM PATIENTMAIN WHERE PATIENTID=' + #39 + TT_Appoinment.FieldByName(Ls_Patientid)
                                        .AsString + #39);
                                        Qry.Open;

                                        // if Qry.FieldByName('visitcount').AsInteger>0 then
                                        TT_Appoinment.FieldByName(Ls_Register).AsInteger := 1;
                                        // Else
                                        // TT_Appoinment.FieldByName(Ls_Register).AsInteger:=0;

                                        TT_Appoinment.FieldByName(Ls_Patientname).AsString := Qry.FieldByName('PatientName').AsString;
                                        if Qry.FieldByName('Phoneno').AsString <> '' then
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Phoneno').AsString
                                        Else
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Mobileno').AsString;
                                   End
                                   Else if (Qry.FieldByName('NonPatientID').AsString <> '') and (Qry.FieldByName('NonPatientID').AsString <> '0') then
                                   Begin
                                        gi_NonPatientID := Qry.FieldByName('NonPatientID').AsInteger;
                                        //TT_Appoinment.FieldByName(Ls_Patientid).AsString := Qry.FieldByName('NonPatientID').AsString;
                                        TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Non';
                                        Qry.Close;
                                        Qry.SQL.Clear;
                                        Qry.SQL.Add('SELECT * FROM NONPATIENT WHERE NONPATIENTID='+IntToStr(gi_NonPatientID));
                                        Qry.Open;
                                        TT_Appoinment.FieldByName(Ls_Patientname).AsString := Qry.FieldByName('PatientName').AsString;
                                        TT_Appoinment.FieldByName(Ls_Register).AsInteger := 0;
                                        if Qry.FieldByName('Phoneno').AsString <> '' then
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Phoneno').AsString
                                        Else
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Mobileno').AsString;
                                   End;
                              End;

                              TT_Appoinment.Post;

                              if Li_loop <> 1 then
                              Begin
                                   inc(Li_num);
                              End;

                              Query_Appoinment.Next;
                         End;
                    End;

                    if Li_loop = 1 then
                    Begin
                         TT_Appoinment.Locate(Ls_ColName, Ls_docname1, []);
                         TT_Appoinment.Edit;
                    End
                    Else
                    Begin
                         TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
                         TT_Appoinment.Append;
                    End;

                    if Li_loop = 2 then
                         Li_loop := 0;
               End;

          End;

          inc(Li_check);
     End;

     Li_check := 0;

     Qry.Free;

     Query_Temp.Close;
     Query_Temp.Open;

     GridColumnWidth;

     TT_Appoinment.First;

end;

procedure TFrame_AppointmentSearch.btn_CloseClick(Sender: TObject);
begin
     Self.Free;
end;

procedure TFrame_AppointmentSearch.btn_SaveClick(Sender: TObject);
var
     Qry, Qry_update: TOraQuery;
     Ls_Doctorscheduledetailid: String;
begin

     if Pb_Register then
     Begin
          Frame_NewPatient.pb_nonpatientregister := True;
          Frame_NewPatient.BB_SaveClick(Sender);
          Self.Free;
     End;

     Qry := TOraQuery.Create(nil);
     Qry_update := TOraQuery.Create(nil);

     With Qry do
     Begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          SQL.Add('SELECT * FROM TBL_APPOINMENT');
          Open;
     End;

     while not Qry.Eof do
     Begin
          if Qry.FieldByName('AppId1').AsString <> '' then
          Begin
               With Qry_update do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select doctorscheduledetailid from doctorscheduledetail where doctorscheduleid in ');
                    SQL.Add('(select doctorscheduleid from doctorschedule where docid=' + #39 + Qry.FieldByName('DocId1').AsString + #39 + ')');
                    SQL.Add('and starttime=' + #39 + Qry.FieldByName('DocName1').AsString + #39);
                    Open;
               End;
               Ls_Doctorscheduledetailid := Qry_update.FieldByName('doctorscheduledetailid').AsString;
               With Qry_update do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('UPDATE DOCTORSCHEDULEDETAIL SET APPOINMENTID=' + #39 + Qry.FieldByName('AppId1').AsString + #39);
                    SQL.Add(', ISWALKIN=' + #39 + Qry.FieldByName('WalkIn1').AsString + #39 + ' where Doctorscheduledetailid=' + #39 +
                           Ls_Doctorscheduledetailid + #39);
                    ExecSQL;
               End;
          End;
          Qry.Next;
     End;

     Qry.Close;
     Qry.Open;

     while not Qry.Eof do
     Begin
          if Qry.FieldByName('AppId2').AsString <> '' then
          Begin
               With Qry_update do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select doctorscheduledetailid from doctorscheduledetail where doctorscheduleid in ');
                    SQL.Add('(select doctorscheduleid from doctorschedule where docid=' + #39 + Qry.FieldByName('DocId2').AsString + #39 + ')');
                    SQL.Add('and starttime=' + #39 + Qry.FieldByName('DocName2').AsString + #39);
                    Open;
               End;
               Ls_Doctorscheduledetailid := Qry_update.FieldByName('doctorscheduledetailid').AsString;
               With Qry_update do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('UPDATE DOCTORSCHEDULEDETAIL SET APPOINMENTID=' + #39 + Qry.FieldByName('AppId2').AsString + #39);
                    SQL.Add(', ISWALKIN=' + #39 + Qry.FieldByName('WalkIn2').AsString + #39 + ' where Doctorscheduledetailid=' + #39 +
                           Ls_Doctorscheduledetailid + #39);
                    ExecSQL;
               End;
          End;
          Qry.Next;
     End;

     Qry.Close;
     Qry_update.Close;
     Qry.Free;
     Qry_update.Free;
end;

procedure TFrame_AppointmentSearch.DBLCB_ShiftClick(Sender: TObject);
var
     Li_check, Li_loop, Li_Serial, Li_Count, Li_num, Li_maxserial: Integer;
     Ls_ColName, Ls_ColId, Ls_random, Ls_docname1, Ls_docname2, Ls_docname3, Ls_Walkin, Ls_Queue, Ls_DocId, Ls_AppId, Ls_Patientid, Ls_Patienttype,
       Ls_Patientname, Ls_PatientPhone, Ls_DocScDetail, Ls_PT, Ls_AppNo, Ls_AppStatus, Ls_DocTime, Ls_DocEndTime, Ls_N, Ls_T, Ls_ET, Ls_Min: String;
     Qry, Query, Qry_leave: TOraQuery;
     Lb_next: Boolean;
begin

     if DBLCB_Shift.KeyValue = 'All' then
     Begin
          BB_ViewClick(Sender);
          Exit;
     End;

     DBGrid_Appoinment.Columns[3].Title.Caption := Gs_PatientIdCaption;
     DBGrid_Appoinment.Columns[10].Title.Caption := Gs_PatientIdCaption;

     Pb_Valid := True;
     if dblcb_department.KeyValue = NULL then
     Begin
          MessageDlg('Please Select Department First!', mtWarning, [mbOK], 0);
          Exit;
     End;

     if Chb_Doctor.Count = 0 then
     Begin
          MessageDlg('No Doctors In This Department!', mtWarning, [mbOK], 0);
          Exit;
     End;

     Qry := TOraQuery.Create(nil);
     Query := TOraQuery.Create(nil);
     Qry_leave := TOraQuery.Create(nil);

     TT_Appoinment.Close;
     TT_Appoinment.EmptyTable;
     TT_Appoinment.DatabaseName := gs_temppath;
     TT_Appoinment.Open;

     Li_check := 0;

     Li_loop := 0;

     Li_Serial := 1;

     TT_Appoinment.Append;

     while Li_check < Pi_chblength do
     Begin
          if Chb_Doctor.Checked[Li_check] = True then
          Begin

               with TT_Appoinment do
               Begin
                    if Li_loop = 0 then
                    Begin
                         Ls_ColId := 'DocID1';
                         Ls_ColName := 'DocName1';
                         Ls_Walkin := 'WalkIn1';
                         Ls_Queue := 'QueueNo1';
                         Ls_AppId := 'AppId1';
                         Ls_Patientid := 'PatientID1';
                         Ls_Patienttype := 'PatientType1';
                         Ls_PT := 'Patientt1';
                         Ls_Patientname := 'PatientName1';
                         Ls_PatientPhone := 'PatientPhone1';
                         Ls_DocScDetail := 'DocScDetailId1';
                         Ls_AppStatus := 'AppStatus1';
                         Ls_DocTime := 'DocTime1';
                         Ls_DocEndTime := 'DocEndTime1';
                         Ls_N := 'DocN1';
                         Ls_T := 'DocT1';
                         Ls_ET := 'DocET1';
                    End
                    else if Li_loop = 1 then
                    Begin
                         Ls_ColId := 'DocID2';
                         Ls_ColName := 'DocName2';
                         Ls_Walkin := 'WalkIn2';
                         Ls_Queue := 'QueueNo2';
                         Ls_AppId := 'AppId2';
                         Ls_Patientid := 'PatientID2';
                         Ls_Patienttype := 'PatientType2';
                         Ls_PT := 'Patientt2';
                         Ls_Patientname := 'PatientName2';
                         Ls_PatientPhone := 'PatientPhone2';
                         Ls_DocScDetail := 'DocScDetailId2';
                         Ls_AppStatus := 'AppStatus2';
                         Ls_DocTime := 'DocTime2';
                         Ls_DocEndTime := 'DocEndTime2';
                         Ls_N := 'DocN2';
                         Ls_T := 'DocT2';
                         Ls_ET := 'DocET2';
                    End;

                    if Arr_CLB_DoctorID[Li_check, 0] <> '' then
                    Begin
                         if Li_loop = 0 then
                              FieldByName('Serial').AsInteger := Li_Serial;
                         FieldByName(Ls_ColId).AsString := Arr_CLB_DoctorID[Li_check, 0];
                         Ls_DocId := Arr_CLB_DoctorID[Li_check, 0];
                         FieldByName(Ls_ColName).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_DocTime).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_DocEndTime).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         FieldByName(Ls_T).AsString := Arr_CLB_DoctorID[Li_check, 1];
                         Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
                    End;

                    if Li_loop = 0 then
                    Begin
                         Ls_docname1 := Arr_CLB_DoctorID[Li_check, 1];
                    End
                    else if Li_loop = 1 then
                    Begin
                         Ls_docname2 := Arr_CLB_DoctorID[Li_check, 1];
                    End
                    else
                         Ls_docname3 := Arr_CLB_DoctorID[Li_check, 1];

                    inc(Li_loop);

               End;

               With Query_Appoinment do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select * from doctorscheduledetail where doctorscheduleid in (select doctorscheduleid from doctorschedule where docid='
                           + Arr_CLB_DoctorID[Li_check, 0] + ' and EngDate=''' + DateEditX1.ADDateAsText + ''') and shift=' + #39 +
                           DBLCB_Shift.KeyValue + #39 + ' order by serialorderno');
                    Open;
               End;

               with Qry_leave do
               Begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('select isonleave from doctorschedule where docid=' + Arr_CLB_DoctorID[Li_check, 0]
                           + ' and EngDate=' + #39 + DateEditX1.ADDateAsText + #39);
                    Open;
               End;

               if Li_loop > 0 then
               Begin

                    TT_Appoinment.Post;

                    if (Query_Appoinment.Eof = True) or (Qry_leave.FieldByName('isonleave').AsString = 'Y') then
                    Begin

                    End
                    Else
                    Begin
                         Li_num := 1;
                         while Query_Appoinment.Eof <> True do
                         Begin
                              if Li_loop = 1 then
                              Begin
                                   TT_Appoinment.Append;
                                   inc(Li_Serial);
                                   Li_maxserial := Li_Serial;
                              End
                              Else
                              Begin
                                   TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
                                   Li_Count := TT_Appoinment.FieldByName('Serial').AsInteger;
                                   if (Li_Count + Li_num) > Li_maxserial then
                                        TT_Appoinment.Append
                                   Else
                                   Begin
                                        TT_Appoinment.Locate('Serial', Li_Count + Li_num, []);
                                        TT_Appoinment.Edit;
                                   End;
                              End;
                              if Li_loop = 1 then
                                   TT_Appoinment.FieldByName('Serial').AsInteger := Li_Serial;

                              TT_Appoinment.FieldByName(Ls_ColId).AsString := Ls_DocId;
                              TT_Appoinment.FieldByName(Ls_ColName).AsString := Query_Appoinment.FieldByName('Starttime').AsString;

                              if strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) > 12 then
                              Begin
                                   Ls_Min := copy(Query_Appoinment.FieldByName('Starttime').AsString, 4, 2);
                                   TT_Appoinment.FieldByName(Ls_N).AsString := inttostr
                                     (strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) - 12) + ':' + Ls_Min + ' pm';
                              End
                              Else
                              Begin
                                   if strtoint(copy(Query_Appoinment.FieldByName('Starttime').AsString, 1, 2)) = 12 then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_N).AsString := Query_Appoinment.FieldByName('Starttime').AsString + ' pm';
                                   End
                                   Else
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_N).AsString := Query_Appoinment.FieldByName('Starttime').AsString + ' am';
                                   End;
                              End;

                              TT_Appoinment.FieldByName(Ls_DocEndTime).AsString := Query_Appoinment.FieldByName('EndTime').AsString;

                              if strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) > 12 then
                              Begin
                                   Ls_Min := copy(Query_Appoinment.FieldByName('EndTime').AsString, 4, 2);
                                   TT_Appoinment.FieldByName(Ls_ET).AsString := inttostr
                                     (strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) - 12) + ':' + Ls_Min + ' pm';
                              End
                              Else
                              Begin
                                   if strtoint(copy(Query_Appoinment.FieldByName('EndTime').AsString, 1, 2)) = 12 then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_ET).AsString := Query_Appoinment.FieldByName('EndTime').AsString + ' pm';
                                   End
                                   Else
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_ET).AsString := Query_Appoinment.FieldByName('EndTime').AsString + ' am';
                                   End;
                              End;

                              TT_Appoinment.FieldByName(Ls_DocTime).AsString := Query_Appoinment.FieldByName('Starttime')
                                .AsString + ' - ' + Query_Appoinment.FieldByName('EndTime').AsString;

                              TT_Appoinment.FieldByName(Ls_T).AsString := TT_Appoinment.FieldByName(Ls_N).AsString + ' - ' + TT_Appoinment.FieldByName
                                (Ls_ET).AsString;

                              TT_Appoinment.FieldByName(Ls_Walkin).AsString := Query_Appoinment.FieldByName('ISWALKIN').AsString;
                              TT_Appoinment.FieldByName(Ls_Queue).AsString := Query_Appoinment.FieldByName('SERIALORDERNO').AsString;
                              if Query_Appoinment.FieldByName('AppoinmentId').AsString <> '0' then
                                   TT_Appoinment.FieldByName(Ls_AppId).AsString := Query_Appoinment.FieldByName('AppoinmentId').AsString;
                              TT_Appoinment.FieldByName(Ls_DocScDetail).AsString := Query_Appoinment.FieldByName('DoctorScheduleDetailId').AsString;
                              TT_Appoinment.FieldByName(Ls_PT).AsString := Query_Appoinment.FieldByName('patienttype').AsString;

                              if TT_Appoinment.FieldByName(Ls_PT).AsString = 'Break' then
                                   TT_Appoinment.FieldByName(Ls_Patientname).AsString := 'BREAK';

                              if TT_Appoinment.FieldByName(Ls_AppId).AsString <> '' then
                              Begin
                                   with Qry do
                                   Begin
                                        Close;
                                        DatabaseName := gs_DatabaseName;
                                        SQL.Clear;
                                        SQL.Add('SELECT * from Appointment where AppId=' + #39 + TT_Appoinment.FieldByName(Ls_AppId).AsString + #39);
                                        Open;
                                   End;

                                   TT_Appoinment.FieldByName(Ls_AppStatus).AsString := Qry.FieldByName('status').AsString;

                                   if (Qry.FieldByName('PatientID').AsString <> '') and (Qry.FieldByName('PatientID').AsString <> '0') then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_Patientid).AsString := Qry.FieldByName('PatientID').AsString;
                                        TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Ex';
                                        Qry.Close;
                                        Qry.SQL.Clear;
                                        Qry.SQL.Add('SELECT * FROM PATIENTMAIN WHERE PATIENTID=' + #39 + TT_Appoinment.FieldByName(Ls_Patientid)
                                        .AsString + #39);
                                        Qry.Open;
                                        TT_Appoinment.FieldByName(Ls_Patientname).AsString := Qry.FieldByName('PatientName').AsString;
                                        if Qry.FieldByName('Phoneno').AsString <> '' then
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Phoneno').AsString
                                        Else
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Mobileno').AsString;
                                   End
                                   Else if (Qry.FieldByName('NonPatientID').AsString <> '') and (Qry.FieldByName('NonPatientID').AsString <> '0') then
                                   Begin
                                        TT_Appoinment.FieldByName(Ls_Patientid).AsString := Qry.FieldByName('NonPatientID').AsString;
                                        TT_Appoinment.FieldByName(Ls_Patienttype).AsString := 'Non';
                                        Qry.Close;
                                        Qry.SQL.Clear;
                                        Qry.SQL.Add('SELECT * FROM NONPATIENT WHERE NONPATIENTID=' + #39 + TT_Appoinment.FieldByName(Ls_Patientid)
                                        .AsString + #39);
                                        Qry.Open;
                                        TT_Appoinment.FieldByName(Ls_Patientname).AsString := Qry.FieldByName('PatientName').AsString;
                                        if Qry.FieldByName('Phoneno').AsString <> '' then
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Phoneno').AsString
                                        Else
                                        TT_Appoinment.FieldByName(Ls_PatientPhone).AsString := Qry.FieldByName('Mobileno').AsString;
                                   End;
                              End;

                              TT_Appoinment.Post;

                              if Li_loop <> 1 then
                              Begin
                                   inc(Li_num);
                              End;

                              Query_Appoinment.Next;
                         End;
                    End;

                    if Li_loop = 1 then
                    Begin
                         TT_Appoinment.Locate(Ls_ColName, Ls_docname1, []);
                         TT_Appoinment.Edit;
                    End
                    Else
                    Begin
                         TT_Appoinment.Locate(Ls_ColName, Ls_docname2, []);
                         TT_Appoinment.Append;
                    End;

                    if Li_loop = 2 then
                         Li_loop := 0;
               End;

          End;

          inc(Li_check);
     End;

     Li_check := 0;

     Qry.Free;

     Query_Temp.Close;
     Query_Temp.Open;

     GridColumnWidth;

     TT_Appoinment.Locate('DocName1', Arr_CLB_DoctorID[0, 1], []);

end;

procedure TFrame_AppointmentSearch.CheckBox1Click(Sender: TObject);
var
     Li_check: Integer;
begin
     Li_check := 0;
     if CheckBox1.Checked = True then
     Begin
          while Li_check < Pi_chblength do
          Begin
               Chb_Doctor.Checked[Li_check] := True;
               inc(Li_check);
          End;
     End
     else
     Begin
          while Li_check < Pi_chblength do
          Begin
               Chb_Doctor.Checked[Li_check] := false;
               inc(Li_check);
          End;
     End;
end;

procedure TFrame_AppointmentSearch.ClearFrame;
Var
     i: Integer;
begin
     try
          For i := 0 to Panel1.ControlCount - 1 do
          begin
               if (Panel1.Controls[i] is TFrame) then
               begin
                    if TFrame(Panel1.Controls[i]).Name = 'Frame_NewPatient' then
                    begin
                         Frame_NewPatient.OffCamera;
                         // BB_NewPatient.Enabled := true;
                         // RefreshList;
                    end;
                    if TFrame(Panel1.Controls[i]).Name = 'Frame_Billing' then
                    begin
                         // BB_NewPatient.Enabled := true;
                         // RefreshList;
                         // Frame_Billing.clearCustomerPreview;
                    end;
                    TFrame(Panel1.Controls[i]).Free;
                    FrameCleared := True;
               end;
          end;
          // Panel_list.BringToFront;
     except
          Self.ClearFrame;
     end;
end;

constructor TFrame_AppointmentSearch.Create(Aowner: Tcomponent);
begin
     inherited;

     Query_Department.Close;
     Query_Department.Open;

     if FileExists(gs_temppath+'\tbl_appoinment.db') then
     begin
          With TT_Appoinment do
          Begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'tbl_appoinment.db';
               DeleteTable;
          End;
     end;


     With TT_Appoinment do
     Begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'tbl_appoinment.db';
          TableType := ttDefault;
          FieldDefs.Clear;

          FieldDefs.Add('Serial', ftInteger);

          FieldDefs.Add('DocID1', ftString, 10);
          FieldDefs.Add('QueueNo1', ftString, 10);
          FieldDefs.Add('AppId1', ftString, 10);
          FieldDefs.Add('DocName1', ftString, 32);
          FieldDefs.Add('DocTime1', ftString, 32);
          FieldDefs.Add('DocEndTime1', ftString, 32);
          FieldDefs.Add('Patienttype1', ftString, 5);
          FieldDefs.Add('Patientt1', ftString, 25);
          FieldDefs.Add('DocScDetailId1', ftString, 5);
          FieldDefs.Add('PatientID1', ftInteger);
          FieldDefs.Add('PatientName1', ftString, 32);
          FieldDefs.Add('PatientPhone1', ftString, 30);
          FieldDefs.Add('WalkIn1', ftString, 32);
          FieldDefs.Add('Registered1', ftString, 32);
          FieldDefs.Add('AppStatus1', ftString, 10);
          FieldDefs.Add('DocN1', ftString, 32);
          FieldDefs.Add('DocET1', ftString, 32);
          FieldDefs.Add('DocT1', ftString, 32);

          FieldDefs.Add('DocID2', ftString, 10);
          FieldDefs.Add('QueueNo2', ftString, 10);
          FieldDefs.Add('AppId2', ftString, 10);
          FieldDefs.Add('DocName2', ftString, 32);
          FieldDefs.Add('DocTime2', ftString, 32);
          FieldDefs.Add('DocEndTime2', ftString, 32);
          FieldDefs.Add('Patienttype2', ftString, 5);
          FieldDefs.Add('Patientt2', ftString, 25);
          FieldDefs.Add('DocScDetailId2', ftString, 5);
          FieldDefs.Add('PatientID2', ftInteger);
          FieldDefs.Add('PatientName2', ftString, 32);
          FieldDefs.Add('PatientPhone2', ftString, 30);
          FieldDefs.Add('WalkIn2', ftString, 32);
          FieldDefs.Add('Registered2', ftString, 32);
          FieldDefs.Add('AppStatus2', ftString, 10);
          FieldDefs.Add('DocN2', ftString, 32);
          FieldDefs.Add('DocET2', ftString, 32);
          FieldDefs.Add('DocT2', ftString, 32);

          CreateTable;
          //Open;
     End;

     With Query_Temp do
     Begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          SQL.Add('Select * from tbl_appoinment order by Serial');
          Open;
     End;

     GridColumnWidth;
     DateEditX1.SystemOfDate := 1;
     DateEditX1.Text := TodaysDate;

     MonthCalendar1.Date := DateEditX1.ADDateAsDate;

     Pb_Register := false;
     ps_DocCode:='';

     // CB_Shift.ItemIndex := 2;

     DBGrid_Appoinment.Columns[3].Title.Caption := Gs_PatientIdCaption;
     DBGrid_Appoinment.Columns[10].Title.Caption := Gs_PatientIdCaption;

end;

procedure TFrame_AppointmentSearch.DBGrid_AppoinmentDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
     State: TGridDrawState);
var
     Li_doccheck: Integer;
     Ls_Patientname, Ls_Patientt, Ls_Docname: String;
begin
     Li_doccheck := 0;

     if DBGrid_Appoinment.SelectedField.FieldName = 'PatientName1' then
     Begin
          Ls_Patientname := 'PatientName1';
          Ls_Patientt := 'Patientt1';
          Ls_Docname := 'DocName1'
     End
     Else
     Begin
          Ls_Patientname := 'PatientName2';
          Ls_Patientt := 'Patientt2';
          Ls_Docname := 'DocName2'
     End;

     // if (TT_Appoinment.FieldByName(Ls_Patientt).AsString = 'New Patients') then
     // Begin
     with DBGrid_Appoinment do
     Begin
          Canvas.Brush.Color := clMedGray;
          if State = [gdSelected, gdFocused] then
               Canvas.Brush.Color := clMedGray;

          if Ls_Patientt = 'Patientt1' then
          Begin
               if (DataCol in [0 .. 5]) then
               Begin
                    if (TT_Appoinment.FieldByName('Patientt1').AsString = 'New Patient (NP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[0, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'FollowUp Paid (FP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[2, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'FollowUp Free (FF)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[1, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'Break') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[3, 1])
                    Else
                         Canvas.Brush.Color := clWhite;
                    DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    if TT_Appoinment.FieldByName('AppStatus1').AsString = 'Absent' then
                    Begin
                         Canvas.Font.Color := clRed;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('QueueNo1').AsString = '' then
                    Begin
                         Canvas.Font.Style := [fsbold];
                         Canvas.Font.Size := 9;
                         Canvas.Font.Color := clMaroon;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('PatientType1').AsString = 'Non' then
                    Begin
                         Canvas.Font.Color := clWhite;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
               End
               Else if (DataCol in [7 .. 12]) then
               Begin
                    if (TT_Appoinment.FieldByName('Patientt2').AsString = 'New Patient (NP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[0, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'FollowUp Paid (FP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[2, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'FollowUp Free (FF)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[1, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'Break') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[3, 1])
                    Else
                         Canvas.Brush.Color := clWhite;
                    DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    if TT_Appoinment.FieldByName('AppStatus2').AsString = 'Absent' then
                    Begin
                         Canvas.Font.Color := clRed;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('QueueNo2').AsString = '' then
                    Begin
                         Canvas.Font.Style := [fsbold];
                         Canvas.Font.Size := 9;
                         Canvas.Font.Color := clMaroon;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('PatientType2').AsString = 'Non' then
                    Begin
                         Canvas.Font.Color := clWhite;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
               End;
          End;

          if Ls_Patientt = 'Patientt2' then
          Begin
               if (DataCol in [7 .. 12]) then
               Begin
                    if (TT_Appoinment.FieldByName('Patientt2').AsString = 'New Patient (NP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[0, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'FollowUp Paid (FP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[2, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'FollowUp Free (FF)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[1, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt2').AsString = 'Break') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[3, 1])
                    Else
                         Canvas.Brush.Color := clWhite;
                    DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    if TT_Appoinment.FieldByName('AppStatus2').AsString = 'Absent' then
                    Begin
                         Canvas.Font.Color := clRed;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('QueueNo2').AsString = '' then
                    Begin
                         Canvas.Font.Style := [fsbold];
                         Canvas.Font.Size := 9;
                         Canvas.Font.Color := clMaroon;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('PatientType2').AsString = 'Non' then
                    Begin
                         Canvas.Font.Color := clWhite;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
               End
               Else if (DataCol in [0 .. 5]) then
               Begin
                    if (TT_Appoinment.FieldByName('Patientt1').AsString = 'New Patient (NP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[0, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'FollowUp Paid (FP)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[2, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'FollowUp Free (FF)') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[1, 1])
                    Else if (TT_Appoinment.FieldByName('Patientt1').AsString = 'Break') then
                         Canvas.Brush.Color := strtoint(Arr_ColorCode[3, 1])
                    Else
                         Canvas.Brush.Color := clWhite;
                    DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    if TT_Appoinment.FieldByName('AppStatus1').AsString = 'Absent' then
                    Begin
                         Canvas.Font.Color := clRed;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('QueueNo1').AsString = '' then
                    Begin
                         Canvas.Font.Style := [fsbold];
                         Canvas.Font.Size := 9;
                         Canvas.Font.Color := clMaroon;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
                    if TT_Appoinment.FieldByName('PatientType1').AsString = 'Non' then
                    Begin
                         Canvas.Font.Color := clWhite;
                         DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    End;
               End;
          End;
     End;
end;

procedure TFrame_AppointmentSearch.DBGrid_PatientSearchDblClick(Sender: TObject);
begin

     Query_SearchApp.Open;

     Edit_SearchPatientName.Text := Query_SearchApp.FieldByName('patientname').AsString;
     Edit_SearchAppId.Text := Query_SearchApp.FieldByName('appid').AsString;
     Edit_SearchPatientId.Text := Query_SearchApp.FieldByName('patientid').AsString;

     Label_Dep.Caption := Query_SearchApp.FieldByName('depname').AsString;
     Label_Doc.Caption := Query_SearchApp.FieldByName('docname').AsString;
     Label_Date.Caption := Query_SearchApp.FieldByName('appdate').AsString;
     Label_Time.Caption := Query_SearchApp.FieldByName('apptime').AsString;
     Label_Order.Caption := Query_SearchApp.FieldByName('queno').AsString;

     DBGrid_PatientSearch.Visible := false;

     TT_Appoinment.Close;
     TT_Appoinment.Open;

     TT_Appoinment.Locate('Appid1', Edit_SearchAppId.Text, []);
     if TT_Appoinment.FieldByName('Patientname1').AsString <> '' then
     Begin
          DBGrid_Appoinment.Fields[2].FocusControl;
     End
     Else
     Begin
          TT_Appoinment.Locate('Appid2', Edit_SearchAppId.Text, []);
          if TT_Appoinment.FieldByName('Patientname2').AsString <> '' then
               DBGrid_Appoinment.Fields[9].FocusControl;
     End;

end;

procedure TFrame_AppointmentSearch.DBGrid_PatientSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 13 then
     Begin
          Edit_SearchAppId.Text := Query_SearchApp.FieldByName('Appid').AsString;
          Edit_SearchPatientId.Text := Query_SearchApp.FieldByName('patientid').AsString;
          Edit_SearchPatientName.Text := Query_SearchApp.FieldByName('patientname').AsString;

          Label_Dep.Caption := Query_SearchApp.FieldByName('depname').AsString;
          Label_Doc.Caption := Query_SearchApp.FieldByName('docname').AsString;
          Label_Date.Caption := Query_SearchApp.FieldByName('appdate').AsString;
          Label_Time.Caption := Query_SearchApp.FieldByName('apptime').AsString;
          Label_Order.Caption := Query_SearchApp.FieldByName('queno').AsString;

          DBGrid_PatientSearch.Visible := false;

          TT_Appoinment.Close;
          TT_Appoinment.Open;

          TT_Appoinment.Locate('Appid1', Edit_SearchAppId.Text, []);
          if TT_Appoinment.FieldByName('Patientname1').AsString <> '' then
          Begin
               DBGrid_Appoinment.Fields[2].FocusControl;
          End
          Else
          Begin
               TT_Appoinment.Locate('Appid2', Edit_SearchAppId.Text, []);
               if TT_Appoinment.FieldByName('Patientname2').AsString <> '' then
                    DBGrid_Appoinment.Fields[8].FocusControl;
          End;
     End;

     if Key = 27 then
          DBGrid_PatientSearch.Visible := false;
end;

procedure TFrame_AppointmentSearch.dblcb_departmentClick(Sender: TObject);
var
     Qry: TOraQuery;
     i: Integer;
begin
     TT_Appoinment.Close;
     TT_Appoinment.EmptyTable;

     if CheckBox1.Checked = True then
          CheckBox1.Checked := false;

     Qry := TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add(' Select InitCap(Docname)DocName,DocId from Doctor where DepId=' + inttostr(dblcb_department.KeyValue));
          if Trim(ps_DocCode)<>'' then
          SQL.Add(' and DocCode='+#39+ps_DocCode+#39);
          sql.add(' Order by DocName');
          Open;
          Chb_Doctor.Items.Clear;
          i := 0;
          SetLength(Arr_CLB_DoctorID, RecordCount);
          Pi_chblength := 0;
          while not Eof do
          begin
               SetLength(Arr_CLB_DoctorID[i], 2);
               Chb_Doctor.Items.Add(FieldByName('DocName').AsString);
               Arr_CLB_DoctorID[i, 0] := FieldByName('DocId').AsString;
               Arr_CLB_DoctorID[i, 1] := FieldByName('DocName').AsString;
               inc(i);
               Next;
               inc(Pi_chblength);
          end;
     end;
     Qry.Free;

     CheckBox1.Checked := True;
end;

procedure TFrame_AppointmentSearch.Edit_DoctorChange(Sender: TObject);
begin
     DBGrid_DocList.Visible := True;

     if Edit_Doctor.Text = '' then
     Begin
          ps_DocCode:='';
          Query_Doctor.Filtered := false;
          Exit;
     End;

     With Query_Doctor do
     Begin
          Filter := 'DocName=' + #39 + UpperCase(Edit_Doctor.Text) + '*'#39;
          Filtered := True;
     End;
end;

procedure TFrame_AppointmentSearch.Edit_DoctorKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     Begin
          IF Query_Doctor.FieldByName('DocId').AsInteger > 0 Then
          Begin
               Edit_Doctor.Text:=Query_Doctor.FieldByName('DocName').AsString;
               ps_DocCode :=Query_Doctor.FieldByName('DocCode').AsString;
               dblcb_department.KeyValue:=Query_Doctor.FieldByName('DepId').AsInteger;
               dblcb_departmentClick(Sender);
          End
          Else
          ps_DocCode :='';
     End;
end;

procedure TFrame_AppointmentSearch.Edit_SearchAppIdChange(Sender: TObject);
begin
     if Edit_SearchAppId.Text = '' then
     Begin
          Edit_SearchPatientId.Text := '';
          Edit_SearchPatientName.Text := '';
          Label_Doc.Caption := '';
          Label_Dep.Caption := '';
          Label_Date.Caption := '';
          Label_Time.Caption := '';
          Label_Order.Caption := '';
     End;

     DBGrid_PatientSearch.Visible := True;

     if Edit_SearchAppId.Text = '' then
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filtered := false;
               // SQL[2]:='9=9';
               // Open;
          End;
     End
     Else
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filter := 'appid=' + (Edit_SearchAppId.Text);
               Filtered := True;
               // SQL[2]:='a.appid like'+#39+Edit_SearchAppId.Text+'%'#39;
               // Open;
          End;
     End;

end;

procedure TFrame_AppointmentSearch.Edit_SearchAppIdClick(Sender: TObject);
begin
     if DBGrid_PatientSearch.Visible = True then
          DBGrid_PatientSearch.Visible := false
     Else
          DBGrid_PatientSearch.Visible := True;
end;

procedure TFrame_AppointmentSearch.Edit_SearchAppIdEnter(Sender: TObject);
begin
     Query_SearchApp.Close;
     Query_SearchApp.Open;
     // DBGrid_PatientSearch.Visible:=True;
end;

procedure TFrame_AppointmentSearch.Edit_SearchAppIdExit(Sender: TObject);
begin
     // DBGrid_PatientSearch.Visible:=False;
end;

procedure TFrame_AppointmentSearch.Edit_SearchAppIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if Key = 13 then
     Begin

          if Edit_SearchAppId.Text = '' then
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filtered := false;
                    // SQL[2]:='9=9';
                    // Open;
               End;
          End
          Else
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filter := 'appid=' + (Edit_SearchAppId.Text);
                    Filtered := True;
                    // SQL[2]:='a.appid like'+#39+Edit_SearchAppId.Text+'%'#39;
                    // Open;
               End;
          End;

          TT_Appoinment.Close;
          TT_Appoinment.Open;

          if (Query_SearchApp.Eof <> True) and (Edit_SearchAppId.Text <> '') then
          Begin

               Edit_SearchPatientName.Text := Query_SearchApp.FieldByName('patientname').AsString;
               Edit_SearchPatientId.Text := Query_SearchApp.FieldByName('patientid').AsString;

               Label_Dep.Caption := Query_SearchApp.FieldByName('depname').AsString;
               Label_Doc.Caption := Query_SearchApp.FieldByName('docname').AsString;
               Label_Date.Caption := Query_SearchApp.FieldByName('appdate').AsString;
               Label_Time.Caption := Query_SearchApp.FieldByName('apptime').AsString;
               Label_Order.Caption := Query_SearchApp.FieldByName('queno').AsString;

               TT_Appoinment.Locate('Appid1', Edit_SearchAppId.Text, []);
               if TT_Appoinment.FieldByName('Patientname1').AsString <> '' then
               Begin
                    DBGrid_Appoinment.Fields[2].FocusControl;
               End
               Else
               Begin
                    TT_Appoinment.Locate('Appid2', Edit_SearchAppId.Text, []);
                    if TT_Appoinment.FieldByName('Patientname2').AsString <> '' then
                         DBGrid_Appoinment.Fields[8].FocusControl;
               End;
          End;

          DBGrid_PatientSearch.Visible := false;
     End;

     if Key = 40 then
     Begin
          DBGrid_PatientSearch.Visible := True;
          Query_SearchApp.Locate('appid', Query_SearchApp.FieldByName('appid').Text, []);
          DBGrid_PatientSearch.Fields[0].FocusControl;
     End;

     if Key = 27 then
          DBGrid_PatientSearch.Visible := false;

     // TT_Appoinment.Locate('PatientName2',Edit_SearchPatientName.Text,[]);

end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientIdChange(Sender: TObject);
begin
     if Edit_SearchPatientId.Text = '' then
     Begin
          Edit_SearchAppId.Text := '';
          Edit_SearchPatientName.Text := '';
          Label_Doc.Caption := '';
          Label_Dep.Caption := '';
          Label_Date.Caption := '';
          Label_Time.Caption := '';
          Label_Order.Caption := '';
     End;
     DBGrid_PatientSearch.Visible := True;

     if Edit_SearchPatientId.Text = '' then
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filtered := false;
               // SQL[2]:='9=9';
               // Open;
          End;
     End
     Else
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filter := 'patientid=' + (Edit_SearchPatientId.Text);
               Filtered := True;
               // SQL[2]:='patientid like'+#39+Edit_SearchPatientId.Text+'%'#39;
               // Open;
          End;
     End;

end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientIdClick(Sender: TObject);
begin
     if DBGrid_PatientSearch.Visible = True then
          DBGrid_PatientSearch.Visible := false
     Else
          DBGrid_PatientSearch.Visible := True;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientIdEnter(Sender: TObject);
begin
     // DBGrid_PatientSearch.Visible:=True;
     Query_SearchApp.Close;
     Query_SearchApp.Open;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientIdExit(Sender: TObject);
begin
     // DBGrid_PatientSearch.Visible:=False;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 13 then
     Begin

          if Edit_SearchPatientId.Text = '' then
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filtered := false;
                    // SQL[2]:='9=9';
                    // Open;
               End;
          End
          Else
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filter := 'patientid=' + (Edit_SearchPatientId.Text);
                    Filtered := True;
                    // SQL[2]:='patientid like'+#39+Edit_SearchPatientId.Text+'%'#39;
                    // Open;
               End;
          End;

          TT_Appoinment.Close;
          TT_Appoinment.Open;

          if (Query_SearchApp.Eof <> True) and (Edit_SearchPatientId.Text <> '') then
          Begin

               Edit_SearchAppId.Text := Query_SearchApp.FieldByName('appid').AsString;
               Edit_SearchPatientName.Text := Query_SearchApp.FieldByName('patientname').AsString;

               Label_Dep.Caption := Query_SearchApp.FieldByName('depname').AsString;
               Label_Doc.Caption := Query_SearchApp.FieldByName('docname').AsString;
               Label_Date.Caption := Query_SearchApp.FieldByName('appdate').AsString;
               Label_Time.Caption := Query_SearchApp.FieldByName('apptime').AsString;
               Label_Order.Caption := Query_SearchApp.FieldByName('queno').AsString;

               TT_Appoinment.Locate('Appid1', Edit_SearchAppId.Text, []);
               if TT_Appoinment.FieldByName('Patientname1').AsString <> '' then
               Begin
                    DBGrid_Appoinment.Fields[2].FocusControl;
               End
               Else
               Begin
                    TT_Appoinment.Locate('Appid2', Edit_SearchAppId.Text, []);
                    if TT_Appoinment.FieldByName('Patientname2').AsString <> '' then
                         DBGrid_Appoinment.Fields[8].FocusControl;
               End;
          End;

          if Key = 40 then
          Begin
               DBGrid_PatientSearch.SetFocus;
          End;

          DBGrid_PatientSearch.Visible := false;
     End;

     if Key = 40 then
     Begin
          DBGrid_PatientSearch.Visible := True;
          Query_SearchApp.Locate('patientid', Query_SearchApp.FieldByName('patientid').Text, []);
          DBGrid_PatientSearch.Fields[2].FocusControl;
     End;

     if Key = 27 then
          DBGrid_PatientSearch.Visible := false;

     // TT_Appoinment.Locate('PatientName2',Edit_SearchPatientName.Text,[]);
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientNameChange(Sender: TObject);
begin

     if Edit_SearchPatientName.Text = '' then
     Begin
          Edit_SearchAppId.Text := '';
          Edit_SearchPatientId.Text := '';
          Label_Doc.Caption := '';
          Label_Dep.Caption := '';
          Label_Date.Caption := '';
          Label_Time.Caption := '';
          Label_Order.Caption := '';
     End;

     DBGrid_PatientSearch.Visible := True;

     if Edit_SearchPatientName.Text = '' then
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filtered := false;
               // SQL[2]:='9=9';
               // Open;
          End;
     End
     Else
     Begin
          With Query_SearchApp do
          Begin
               // Close;
               Filter := 'patientname=' + #39 + UpperCase(Edit_SearchPatientName.Text) + '*'#39;
               Filtered := True;
               // SQL[2]:='patientname like'+#39+uppercase(Edit_SearchPatientName.Text)+'%'#39;
               // Open;
          End;
     End;

end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientNameClick(Sender: TObject);
begin
     if DBGrid_PatientSearch.Visible = True then
          DBGrid_PatientSearch.Visible := false
     Else
          DBGrid_PatientSearch.Visible := True;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientNameEnter(Sender: TObject);
begin
     // DBGrid_PatientSearch.Visible:=True;
     Query_SearchApp.Close;
     Query_SearchApp.Open;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientNameExit(Sender: TObject);
begin
     // DBGrid_PatientSearch.Visible:=False;
end;

procedure TFrame_AppointmentSearch.Edit_SearchPatientNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if Key = 13 then
     Begin
          if Edit_SearchPatientName.Text = '' then
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filtered := false;
                    // SQL[2]:='9=9';
                    // Open;
               End;
          End
          Else
          Begin
               With Query_SearchApp do
               Begin
                    // Close;
                    Filter := 'patientname=' + #39 + UpperCase(Edit_SearchPatientName.Text) + #39;
                    Filtered := True;
                    // SQL[2]:='patientname like'+#39+uppercase(Edit_SearchPatientName.Text)+'%'#39;
                    // Open;
               End;
          End;

          TT_Appoinment.Close;
          TT_Appoinment.Open;

          if (Query_SearchApp.Eof <> True) and (Edit_SearchPatientName.Text <> '') then
          Begin

               Edit_SearchAppId.Text := Query_SearchApp.FieldByName('appid').AsString;
               Edit_SearchPatientId.Text := Query_SearchApp.FieldByName('patientid').AsString;

               Label_Dep.Caption := Query_SearchApp.FieldByName('depname').AsString;
               Label_Doc.Caption := Query_SearchApp.FieldByName('docname').AsString;
               Label_Date.Caption := Query_SearchApp.FieldByName('appdate').AsString;
               Label_Time.Caption := Query_SearchApp.FieldByName('apptime').AsString;
               Label_Order.Caption := Query_SearchApp.FieldByName('queno').AsString;

               TT_Appoinment.Locate('Appid1', Edit_SearchAppId.Text, []);
               if TT_Appoinment.FieldByName('Patientname1').AsString <> '' then
               Begin
                    DBGrid_Appoinment.Fields[2].FocusControl;
               End
               Else
               Begin
                    TT_Appoinment.Locate('Appid2', Edit_SearchAppId.Text, []);
                    if TT_Appoinment.FieldByName('Patientname2').AsString <> '' then
                         DBGrid_Appoinment.Fields[8].FocusControl;
               End;
          End;

          DBGrid_PatientSearch.Visible := false;
     End;

     if Key = 40 then
     Begin
          DBGrid_PatientSearch.Visible := True;
          Query_SearchApp.Locate('patientname', Query_SearchApp.FieldByName('patientname').Text, []);
          DBGrid_PatientSearch.Fields[2].FocusControl;
     End;

     if Key = 27 then
          DBGrid_PatientSearch.Visible := false;

     // TT_Appoinment.Locate('PatientName2',Edit_SearchPatientName.Text,[]);
end;

procedure TFrame_AppointmentSearch.GridColumnWidth;
begin
     with DBGrid_Appoinment do
     Begin
          Columns[0].Width := 42;
          Columns[1].Width := 150;
          Columns[2].Width := 150;
          Columns[3].Width := 47;
          Columns[4].Width := 55;
          Columns[5].Width := 57;
          Columns[6].Width := 50;

          Columns[7].Width := 42;
          Columns[8].Width := 150;
          Columns[9].Width := 150;
          Columns[10].Width := 47;
          Columns[11].Width := 55;
          Columns[12].Width := 57;
          Columns[13].Width := 50;
     End;
end;

procedure TFrame_AppointmentSearch.ImgClick(Sender: TObject);
begin
     if MonthCalendar1.Visible = True then
          MonthCalendar1.Visible := false
     Else
     Begin
          MonthCalendar1.Visible := True;
          // MonthCalendar1.Top:=5;
          MonthCalendar1.Left := DateEditX1.Left;
     End;
end;

procedure TFrame_AppointmentSearch.MonthCalendar1DblClick(Sender: TObject);
begin
     DateEditX1.ADDateAsDate := MonthCalendar1.Date;
     MonthCalendar1.Visible := false;
end;

procedure TFrame_AppointmentSearch.new;
begin
     //
     dblcb_department.KeyValue := -1;
     CheckBox1.Checked := false;
     Chb_Doctor.Clear;
     TT_Appoinment.Close;
     TT_Appoinment.EmptyTable;
end;

procedure TFrame_AppointmentSearch.SpeedButton1Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditX1, SpeedButton1);
end;

end.
