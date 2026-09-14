unit Unit_Parent;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, fxn, ServerDate,
     { Unit_Appointment, } Unit_BillingFrame, Unit_NewPatient, DbGridExportToExcel,
     {Unit_MedicalHistoryParent,} Unit_RegAccountFrame, Unit_BillingParent, DB, Unit_Membership_Parent,
     DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Spin, OleCtrls, DateEditXControl_TLB, Grids, DBGrids, dm, DelphiTwain;

type
     TForm_Parent = class(TForm)
          StatusBar1: TStatusBar;
          Panel2: TPanel;
          BB_Close: TBitBtn;
          BB_MedicalHistory: TBitBtn;
          BB_BillList: TBitBtn;
          BB_Followup: TBitBtn;
          Panel_Parent: TPanel;
          Panel1: TPanel;
          Label1: TLabel;
          Dex_Today: TDateEditX;
          SPB_TodayDate: TSpeedButton;
          Label16: TLabel;
          lbl_Hosno: TLabel;
          QueryBlank: TOraQuery;
          Panel3: TPanel;
          BB_NewPatient: TBitBtn;
          DS_List: TDataSource;
          Label3: TLabel;
          lbl_patientname: TLabel;
          QueryList: TOraQuery;
          Panel_list: TPanel;
          Label2: TLabel;
          DBGrid1: TDBGrid;
          Edit_PatientID: TEdit;
          Edit_Fname: TEdit;
          Edit2: TEdit;
          Edit4: TEdit;
          Edit5: TEdit;
          Edit6: TEdit;
          Edit7: TEdit;
          Edit8: TEdit;
          Edit9: TEdit;
          Edit10: TEdit;
          Edit_Search: TEdit;
          GroupBox1: TGroupBox;
          Label4: TLabel;
          SPB_From: TSpeedButton;
          Label5: TLabel;
          SPB_To: TSpeedButton;
          DEX_From: TDateEditX;
          DEX_To: TDateEditX;
          GroupBox2: TGroupBox;
          Label6: TLabel;
          Label7: TLabel;
          BB_Refresh: TSpeedButton;
          se_days: TSpinEdit;
          BB_ServiceBill: TBitBtn;
          Timer_CheckBillingClosed: TTimer;
          SpeedButton5: TSpeedButton;
          BB_Appointment: TBitBtn;
          Timer_ChkNewPatientClosed: TTimer;
          lb_TestDetail: TListBox;
          SpeedButton1: TSpeedButton;
          Twain: TDelphiTwain;
          BB_NewMember: TBitBtn;
          Cb_Member: TCheckBox;
    CB_Searchbydate: TCheckBox;
    Rg_Type: TRadioGroup;
          procedure FormCreate(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_PatientIDChange(Sender: TObject);
          procedure Edit_FnameChange(Sender: TObject);
          procedure Edit2Change(Sender: TObject);
          procedure Edit4Change(Sender: TObject);
          procedure Edit5Change(Sender: TObject);
          procedure Edit6Change(Sender: TObject);
          procedure Edit7Change(Sender: TObject);
          procedure Edit8Change(Sender: TObject);
          procedure Edit9Change(Sender: TObject);
          procedure QueryListAfterScroll(DataSet: TDataSet);
          procedure BB_MedicalHistoryClick(Sender: TObject);
          procedure BB_NewPatientClick(Sender: TObject);
          procedure BitBtn4Click(Sender: TObject);
          procedure BB_BillListClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_ServiceBillClick(Sender: TObject);
          procedure Timer_CheckBillingClosedTimer(Sender: TObject);
          procedure SpeedButton5Click(Sender: TObject);
          procedure SPB_FromClick(Sender: TObject);
          procedure SPB_ToClick(Sender: TObject);
          procedure SPB_TodayDateClick(Sender: TObject);
          procedure BB_FollowupClick(Sender: TObject);
          procedure BB_AppointmentClick(Sender: TObject);
          procedure BB_RefreshClick(Sender: TObject);
          procedure DEX_FromEnter(Sender: TObject);
          procedure Timer_ChkNewPatientClosedTimer(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure DBGrid1CellClick(Column: TColumn);
          procedure QueryListAfterOpen(DataSet: TDataSet);
          procedure Edit_SearchKeyPress(Sender: TObject; var Key: Char);
          procedure BB_NewMemberClick(Sender: TObject);
    procedure Cb_MemberClick(Sender: TObject);
     private
          AClass: TPersistentClass;
          { Private declarations }
          procedure clearFrame;
          procedure LoadFrame(Name: String);
          Procedure LoadForm(Name: String);
          Procedure RefreshList;
     public
          { Public declarations }
     end;

var
     Form_Parent: TForm_Parent;
     DB_Parent: TOraSession;
     Frame_NewPatient: Unit_NewPatient.TFrame_NewPatient;
     Frame_Billing: Unit_BillingFrame.TFrame_Billing;

implementation

Procedure CreateForm_NewPatient; Stdcall; external 'NewPatient.bpl';
{$R *.dfm}
{ TForm_Parent }

procedure TForm_Parent.BB_CloseClick(Sender: TObject);
begin
     if FrameCleared then
          Close
     else
          clearFrame;
end;

procedure TForm_Parent.BB_FollowupClick(Sender: TObject);
begin
     //
end;

procedure TForm_Parent.BB_MedicalHistoryClick(Sender: TObject);
begin
     {gi_patientid := QueryList.fieldbyname('PatientId').asinteger;
     Form_MedicalHistoryParent := TForm_MedicalHistoryParent.Create(nil);
     try
          Form_MedicalHistoryParent.ShowModal;
     finally
          Form_MedicalHistoryParent.Free;
     end;}
end;

procedure TForm_Parent.BB_AppointmentClick(Sender: TObject);
var
     NewSource, CurrentSource: integer;
begin
     { If user is using Status menu to execute process }
     if Twain.SourceManagerLoaded then
     begin
          NewSource := Twain.SelectSource;
          { In case some source was choosen }
          if NewSource <> -1 then
          begin
               CurrentSource := NewSource;
          end { if NewSource <> -1 }
     end
     else
     begin
          { Manually loading source }
          if Twain.LoadLibrary then
          begin
               { Load twain, show interface to select source and unload }
               Twain.LoadSourceManager;
               NewSource := Twain.SelectSource;
               if NewSource <> -1 then
                    CurrentSource := NewSource;
               Twain.UnloadLibrary;
          end
          else
               ShowMessage('Library could not be loaded, check if source is loaded')
     end { if Twain.SourceManagerLoaded }
end;

procedure TForm_Parent.BB_BillListClick(Sender: TObject);
begin
     // LoadForm('TForm_BillingParent');
     Gb_isServiceBill := true;
     Form_BillingParent := TForm_BillingParent.Create(nil);
     try
          Form_BillingParent.ShowModal;
     finally
          Form_BillingParent.Free;
     end;
end;

procedure TForm_Parent.BitBtn4Click(Sender: TObject);
begin
     LoadForm('TForm_Appointment');
end;

procedure TForm_Parent.Cb_MemberClick(Sender: TObject);
begin
     Edit_Search.SetFocus;
end;

procedure TForm_Parent.BB_NewMemberClick(Sender: TObject);
begin
     Form_MembershipParent := TForm_MembershipParent.Create(nil);
     try
          Form_MembershipParent.ShowModal;
     finally
          Form_MembershipParent.Free;
     end;
end;

procedure TForm_Parent.BB_NewPatientClick(Sender: TObject);
begin
     gi_BillCase := 0;
     BB_NewPatient.Enabled := false;
     BillingClosed := false;
     Timer_CheckBillingClosed.Enabled := true;
     Timer_ChkNewPatientClosed.Enabled := true;
     ClearVariable;
     lbl_Hosno.Caption := '';
     lbl_patientname.Caption := '';
     { ***************************************** }
     clearFrame;
     Panel_Parent.BringToFront;
     Frame_NewPatient := TFrame_NewPatient.Create(nil);
     with Frame_NewPatient do
     begin
          Parent := Panel_Parent;
          Align := alClient;
          Show;
          FrameCleared := false;
          pb_isnew := true;
          Le_FName.SetFocus;
          // SpeedButton2.Visible:=false;
     end;

end;

procedure TForm_Parent.BB_ServiceBillClick(Sender: TObject);
begin
     gi_patientid := QueryList.fieldbyname('PatientID').asinteger;
     gi_NewPatientID := QueryList.fieldbyname('PatientID').asinteger;
     LoadPatientData(gi_patientid);
     BB_ServiceBill.Enabled := false;
     BillingClosed := false;
     Timer_CheckBillingClosed.Enabled := true;
     gi_BillCase := 3;
     { ***************************************** }
     clearFrame;
     Panel_Parent.BringToFront;
     Frame_Billing := TFrame_Billing.Create(nil);
     with Frame_Billing do
     begin
          Parent := Panel_Parent;
          Align := alClient;
          ServiceBillOpened := true;
          FrameCleared := false;
          le_HosNo.SetFocus;
     end;
     { ******************************************** }
end;

Procedure TForm_Parent.clearFrame;
Var
     i: integer;
begin
     try
          For i := 0 to Panel_Parent.ControlCount - 1 do
          begin
               if (Panel_Parent.Controls[i] is Tframe) then
               begin
                    if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_NewPatient' then
                    begin
                         Frame_NewPatient.OffCamera;
                         BB_NewPatient.Enabled := true;
                         RefreshList;
                    end;
                    if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_Billing' then
                    begin
                         BB_NewPatient.Enabled := true;
                         RefreshList;
                         Frame_Billing.clearCustomerPreview;
                    end;
                    Tframe(Panel_Parent.Controls[i]).Free;
                    FrameCleared := true;
               end;
          end;
          Panel_list.BringToFront;
     except
          Self.Close;
     end;
end;

procedure TForm_Parent.DBGrid1CellClick(Column: TColumn);
begin
     if lb_TestDetail.Visible = true then
     begin
          SpeedButton1Click(Self);
          exit;
     end;
end;

procedure TForm_Parent.DBGrid1DblClick(Sender: TObject);
begin
     gi_patientid := QueryList.fieldbyname('PatientId').asinteger;
     LoadPatientData(gi_patientid);
     { ***************************************** }
     clearFrame;
     Panel_Parent.BringToFront;
     Frame_NewPatient := TFrame_NewPatient.Create(nil);
     with Frame_NewPatient do
     begin
          pb_isnew := false;
          Parent := Panel_Parent;
          Align := alClient;
          FrameCleared := false;
     end;
     { ******************************************** }
     with Frame_NewPatient do
     begin
          GB_BasicInformation.Enabled := false;
          GB_Address.Enabled := false;
          GB_Others.Enabled := false;
          DBLCB_title.KeyValue := Gs_Title;
          CB_Gender.ItemIndex := CB_Gender.Items.IndexOf(Gs_Gender);
          Le_FName.Text := Gs_Fname;
          Le_LName.Text := Gs_Lname;
          le_Age.Text := Gs_Age;
          CB_AgeType.ItemIndex := CB_AgeType.Items.IndexOf(Gs_agetype);
          Dex_Dob.VSDateAsText := Gs_DobVS;
          CB_MaritalStatus.ItemIndex := CB_MaritalStatus.Items.IndexOf(Gs_MaritalStatus);
          DBLCB_Religion.KeyValue := Gi_ReligionID;
          DBLCB_Country.KeyValue := Gi_CountryID;
          DBLCB_District.KeyValue := Gi_DistrictID;
          DBLCB_VDC.KeyValue := Gi_VdcID;
          Le_WardNo.Text := Gs_WardNo;
          Le_Address.Text := Gs_Address;
          Le_PhoneNo.Text := Gs_PhoneNo;
          Le_MobileNo.Text := Gs_MobileNo;
          DBLCB_Occupation.KeyValue := Gi_OccupationID;
          DBLCB_Education.KeyValue := Gi_EducationID;
          Le_Relative.Text := Gs_NexttoKin;
          DBLCB_Relation.KeyValue := Gi_RelationID;
          Le_Company.Text := Gs_Company;
          Le_PinNo.Text := Gs_Pinno;
          if Gs_IsParty then
               Cb_IsParty.Checked := true
          else
               Cb_IsParty.Checked := false;
          Show;
          try
               if LoadImageFromDB(gi_patientid) then
                    Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_patientid) + 'IMAGEMAIN.JPG');
          except
          end;
     end;
end;

procedure TForm_Parent.DEX_FromEnter(Sender: TObject);
begin
     // CB_Searchbydate.Checked := true;
end;

procedure TForm_Parent.Edit2Change(Sender: TObject);
begin
     Edit2.Text := StringReplace(Edit2.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit2.Text) <> '' Then
          Begin
               Filter := 'FName =' + #39 + Edit2.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit4Change(Sender: TObject);
begin
     Edit4.Text := StringReplace(Edit4.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit4.Text) <> '' Then
          Begin
               Filter := 'LName =' + #39 + Edit4.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit5Change(Sender: TObject);
begin
     Edit5.Text := StringReplace(Edit5.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit5.Text) <> '' Then
          Begin
               Filter := 'AGEsex =' + #39 + Edit5.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit6Change(Sender: TObject);
begin
     Edit6.Text := StringReplace(Edit6.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit6.Text) <> '' Then
          Begin
               Filter := 'DOB =' + #39 + Edit6.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit7Change(Sender: TObject);
begin
     Edit7.Text := StringReplace(Edit7.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit7.Text) <> '' Then
          Begin
               Filter := 'paddress =' + #39 + Edit7.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit8Change(Sender: TObject);
begin
     Edit8.Text := StringReplace(Edit8.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit8.Text) <> '' Then
          Begin
               Filter := 'MARITALSTATUS =' + #39 + Edit8.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit9Change(Sender: TObject);
begin
     Edit9.Text := StringReplace(Edit9.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit9.Text) <> '' Then
          Begin
               Filter := 'COUNTRYNAME =' + #39 + Edit9.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit_FnameChange(Sender: TObject);
begin
     Edit_Fname.Text := StringReplace(Edit_Fname.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit_Fname.Text) <> '' Then
          Begin
               Filter := 'NonPatientId =' + Edit_Fname.Text;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit_PatientIDChange(Sender: TObject);
begin
     Edit_PatientID.Text := StringReplace(Edit_PatientID.Text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF trim(Edit_PatientID.Text) <> '' Then
          Begin
               Filter := 'PatientID =' + Edit_PatientID.Text;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_Parent.Edit_SearchKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          gs_From := DEX_From.ADDateAsText;
          gs_to := DEX_To.ADDateAsText;
          if trim(Edit_Search.Text) <> '' then
          begin
               with QueryList do
               begin
                    Close;
                    if Cb_Member.Checked then
                    begin
                         if IsStrANumber(Edit_Search.Text) then
                              SQL[2] := 'Where PatientID in (Select PatientID from membermain'
                                  +' where patientid='+trim(Edit_Search.Text)
                                  +' or dependentof='+IntToStr(GetMemberID(StrToInt(trim(Edit_Search.Text))))+')';
                              SQL[3]:=' and 1=1';
                    end
                    else
                    begin
                         if IsStrANumber(Edit_Search.Text) then
                              SQL[2] := 'Where PatientId=' + trim(Edit_Search.Text)
                         else
                              SQL[2] := 'Where Upper(PatientName) Like' + #39 + trim(Edit_Search.Text) + '%' + #39;
                         SQL[3]:=' and 1=1';
                    end;
                    //SQL.SaveToFile('c:\tt.txt');
                    Open;
               end;
          end
          else
          begin
               Edit_PatientID.Clear;
               Edit2.Clear;
               RefreshList;
          end;

          // if trim(Edit_Search.Text) <> '' then
          // begin
          // if IsStrANumber(Edit_Search.Text) then
          // begin
          // Edit_PatientID.Text := Edit_Search.Text;
          // Edit_PatientIDChange(Sender);
          // end
          // else
          // begin
          // Edit2.Text := Edit_Search.Text;
          // Edit2Change(Sender);
          // end;
          // end
          // else
          // begin
          // Edit_PatientID.Clear;
          // Edit2.Clear;
          // RefreshList;
          // end;
     end;
end;

procedure TForm_Parent.FormCreate(Sender: TObject);
begin
     FrameCleared := true;
     Dex_Today.SystemOfDate := gi_datesystem;
     Dex_Today.text := TodaysDate;
     SPB_TodayDate.Caption := gs_DateCaption;
     DEX_From.SystemOfDate := gi_datesystem;
     DEX_From.text := TodaysDate;
     SPB_From.Caption := gs_DateCaption;
     DEX_To.SystemOfDate := gi_datesystem;
     DEX_To.text := TodaysDate;
     SPB_To.Caption := gs_DateCaption;
     DBGrid1.Color := clWebLightBlue;
     DBGrid1.Columns[0].Title.Caption := Gs_PatientIdCaption;
     Label16.Caption := Gs_PatientIdCaption;
     Self.Caption := Self.Caption + ' User: ' + gs_UserName;
end;

procedure TForm_Parent.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Shift = [ssCtrl, ssShift] then
     begin
          Edit_Search.Clear;
          Edit_Search.SetFocus;
     end;
     if Key = 27 then
     begin
          if lb_TestDetail.Visible = true then
          begin
               lb_TestDetail.Visible := false;
               exit;
          end;
          try
               if Frame_Billing.DBGrid_Search.Visible = true then
                    Frame_Billing.DBGrid_Search.Visible := false
               else
                    BB_CloseClick(Sender);
          except
               BB_CloseClick(Sender);
          end;
     end
     else if (Key = VK_F5) then
          BB_RefreshClick(Sender)
     else if (Key = VK_F1) AND (BB_Appointment.Visible = true) and (BB_Appointment.Enabled = true) then
          BB_AppointmentClick(Sender)
     else if (Key = VK_F2) AND (BB_NewPatient.Visible = true) and (BB_NewPatient.Enabled = true) then
          BB_NewPatientClick(Sender)
     else if (Key = VK_F3) AND (BB_Followup.Visible = true) and (BB_Followup.Enabled = true) then
          BB_FollowupClick(Sender)
     else if (Key = VK_F4) AND (BB_MedicalHistory.Visible = true) and (BB_MedicalHistory.Enabled = true) then
          BB_MedicalHistoryClick(Sender)
     else if (Key = VK_F6) AND (BB_ServiceBill.Visible = true) and (BB_ServiceBill.Enabled = true) then
          BB_ServiceBillClick(Sender)
     else if (Key = VK_F7) AND (BB_BillList.Visible = true) and (BB_BillList.Enabled = true) then
          BB_BillListClick(Sender)
     else if (Key = VK_F8) AND (BB_NewMember.Visible = true) and (BB_NewMember.Enabled = true) then
          BB_NewMemberClick(Sender)
     else if (Key = VK_F12) and (ServiceBillOpened = false) then
          Frame_NewPatient.BB_SaveClick(Sender);
end;

procedure TForm_Parent.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_Parent.FormShow(Sender: TObject);
begin
//      with QueryList do
//      begin
//          Close;
//          Session := DM_Hospital.DB;
//          sql[1]:='where regdate='+quotedstr(TodaysDate);
//          Open;
//      end;
      CB_Searchbydate.Checked := false;
     BB_RefreshClick(Sender);
     // CB_Searchbydate.Checked := false;
     //if Rg_Type.ItemIndex= then


     GetTempPath;
     Edit_Search.SetFocus;

end;

procedure TForm_Parent.LoadForm(Name: String);
begin
     { ***************************************** }
     AClass := GetClass(Name);
     if AClass <> nil then
          with TComponentClass(AClass).Create(Application) as TForm do
          begin
               try
                    ShowModal;
               finally
                    Free;
               end;
          end;
     { ***************************************** }
end;

procedure TForm_Parent.LoadFrame(Name: String);
begin
     { ***************************************** }
     // clearFrame;
     // Panel_Parent.BringToFront;
     // AClass := GetClass(Name);
     // if AClass <> nil then
     // with TComponentClass(AClass).Create(Application) as TCustomFrame do
     // begin
     // Parent := Panel_Parent;
     // Align := alClient;
     // show;
     // FrameCleared := false;
     // end;
end;

procedure TForm_Parent.QueryListAfterOpen(DataSet: TDataSet);
begin
     gi_patientid := QueryList.fieldbyname('PatientID').asinteger;
     lbl_Hosno.Caption := QueryList.fieldbyname('PatientID').AsString;
     lbl_patientname.Caption := QueryList.fieldbyname('Fname').AsString + ' ' + QueryList.fieldbyname('LName').AsString;
end;

procedure TForm_Parent.QueryListAfterScroll(DataSet: TDataSet);
begin
     if NewPatientClosed then
     begin
          lbl_Hosno.Caption := IntToStr(gi_patientid);
          lbl_patientname.Caption := QueryList.fieldbyname('Fname').AsString + ' ' + QueryList.fieldbyname('LName').AsString;
     end
     else
     begin
          gi_patientid := QueryList.fieldbyname('PatientID').asinteger;
          lbl_Hosno.Caption := QueryList.fieldbyname('PatientID').AsString;
          lbl_patientname.Caption := QueryList.fieldbyname('Fname').AsString + ' ' + QueryList.fieldbyname('LName').AsString;
     end;
end;

procedure TForm_Parent.RefreshList;
var
     refreshDate:string;
     refreshdays:Integer;
     refresh_date:TDateEditX;
begin
     gs_From := DEX_From.Text;
     gs_to := DEX_To.Text;

     if gi_datesystem=0 then
     begin
       try
        refresh_date:=TDateEditX.Create(nil);
        refresh_date.ADDateAsText:=TodaysDate;
        refreshdays:=(refresh_date.VSDateAsDays-strtoint(Se_Days.Text));
        refresh_date.VSDateAsDays:=refreshdays;
        refreshDate:= refresh_date.VSDateAsText;
       finally
         refresh_date.Free;
       end;
     end;



     with QueryList do
     begin
        close;
        Session:=DM_Hospital.DB;
        SQL.CLEAR;
        SQL.ADD('select pm.pama_patientid as patientid,pm.pama_title as title,pm.pama_fname as fname,pm.pama_lname as lname,(getcurrentage(pm.pama_patientid)||''/''||pm.pama_gender)agesex,pm.pama_dobad as dobad,');
        if gi_compileValue=3 then
            SQL.ADD('pm.address,pm.phoneno,pm.mobileno,pm.regdate,pm.email from patientmain pm')
        else
            SQL.ADD('pm.pama_address as paddress,pm.pama_phoneno as rphoneno,pm.pama_mobileno as mobileno,pm.pama_regdate regdate,pm.pama_email as email from Hs_Pama_patientmain pm') ;

        if Rg_Type.ItemIndex = 0 then
        begin
          if CB_Searchbydate.Checked then
          begin
             SQL.ADD('where pama_patientid in (select distinct bide_patientid as patientid from Hs_Bide_billdetail');
             SQL.ADD('where bide_billdate between '+quotedstr(gs_From)+' and '+quotedstr(gs_to)+')');
          end
          else
          begin
            SQL.ADD('where pama_patientid in (select distinct bide_patientid from Hs_Bide_billdetail');
            if gi_datesystem=1 then
              SQL.ADD('where Bide_billdate>=TO_CHAR(SYSDATE-' + QuotedStr(se_days.Text) + ',''YYYY/MM/DD''))')
            else
              SQL.ADD('where Bide_billdate>='+quotedstr(refreshDate)+')');
          end;
        end
        else
        begin
          if CB_Searchbydate.Checked then
          begin
             SQL.ADD('where pama_regdate between '+quotedstr(gs_From)+' and '+quotedstr(gs_to));
             SQL.ADD('and 1=1');
          end
          else
          begin
            if gi_datesystem=1 then
                SQL.ADD('where pama_regdate>=TO_CHAR(SYSDATE-' + quotedstr(se_days.Text) + ',''YYYY/MM/DD'')')
            else
                SQL.ADD('where pama_regdate>='+quotedstr(refreshDate));
            SQL.ADD('and 1=1');
          end;
        end;
        //SQL.saveToFile('C:\checkTT.Txt');
        Open;
     end;

     if gi_compileValue=3 then
     begin
       DBGrid1.Columns[7].FieldName:='PHONENO';
       DBGrid1.Columns[6].FieldName:='ADDRESS';
     end;
//     with QueryList do
//     begin
//          Close;
//          if Rg_Type.ItemIndex = 0 then
//               SQL[1] :=
//                 'WHERE PATIENTID IN (SELECT PATIENTID FROM SERVICEBILLMASTER WHERE BILLDATE between' + #39 + gs_From + #39 + ' and ' + #39 + gs_to +
//                 #39 + ')'
//          else if Rg_Type.ItemIndex = 1 then
//               SQL[1] := 'WHERE REGDATE between' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39
//          else if Rg_Type.ItemIndex = 2 then
//               SQL[1] :=
//                 'WHERE PATIENTID IN (SELECT PATIENTID FROM SERVICEBILLMASTER WHERE BILLDATE between' + #39 + gs_From + #39 + ' and ' + #39 + gs_to +
//                 #39 + ')' + ' OR REGDATE between' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39
//          else if Rg_Type.ItemIndex = 3 then
//               SQL[1] := 'WHERE ISPARTY=''Y'' ';
//          if StrToInt(se_days.Text) > 0 then
//          begin
//               if Rg_Type.ItemIndex = 0 then
//                    SQL[1] :=
//                      'WHERE PATIENTID IN (SELECT PATIENTID FROM SERVICEBILLMASTER WHERE BILLDATE> TO_CHAR(SYSDATE-' + se_days.Text + ',''YYYY/MM/DD''))'
//               else if Rg_Type.ItemIndex = 1 then
//                    SQL[1] := 'WHERE REGDATE> TO_CHAR(SYSDATE-' + se_days.Text + ',''YYYY/MM/DD'')'
//               else if Rg_Type.ItemIndex = 2 then
//                    SQL[1] :=
//                      'WHERE PATIENTID IN (SELECT PATIENTID FROM SERVICEBILLMASTER WHERE BILLDATE> TO_CHAR(SYSDATE-' +
//                      se_days.Text + ',''YYYY/MM/DD''))' + ' OR REGDATE> TO_CHAR(SYSDATE-' + se_days.Text + ',''YYYY/MM/DD'')'
//               else if Rg_Type.ItemIndex = 3 then
//                    SQL[1] := 'WHERE ISPARTY=''Y'' ';
//          end
//          else
//               SQL[2] := 'And 99=99';
//          // SQL.saveToFile('C:\TT.Txt');
//          Open;
//     end;
end;

procedure TForm_Parent.SPB_FromClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_From, SPB_From);
end;

procedure TForm_Parent.SPB_ToClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_To, SPB_To);
end;

procedure TForm_Parent.SPB_TodayDateClick(Sender: TObject);
begin
     ChangeDateSystem(Dex_Today, SPB_TodayDate);
end;

procedure TForm_Parent.SpeedButton1Click(Sender: TObject);
Var
     ls_date: String;
begin
     if DEX_From.Text = DEX_To.Text then
          ls_date := DEX_From.Text
     Else
          ls_date := Dex_Today.Text;
     LoadPatientTestinListBox(lb_TestDetail, gi_patientid, ls_date);
     lb_TestDetail.Visible := true;
     lb_TestDetail.left := 244;
     lb_TestDetail.Top := 128;
     lb_TestDetail.Width := 500;
     lb_TestDetail.Height := 250;
end;

procedure TForm_Parent.BB_RefreshClick(Sender: TObject);
begin
     Edit_Search.Clear;
     RefreshList;
end;

procedure TForm_Parent.SpeedButton5Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_Parent, DBGrid1, true, 'Patient List ', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

procedure TForm_Parent.Timer_CheckBillingClosedTimer(Sender: TObject);
begin
     lbl_Hosno.Caption := IntToStr(gi_patientid);
     lbl_patientname.Caption := Gs_PatientName;
     if BillingClosed then
     begin
          BB_ServiceBill.Enabled := true;
          BB_NewPatient.Enabled := true;
          Timer_CheckBillingClosed.Enabled := false
     end;
end;

procedure TForm_Parent.Timer_ChkNewPatientClosedTimer(Sender: TObject);
begin
     if NewPatientClosed then
     begin
          Rg_Type.ItemIndex := 1;
          RefreshList;
          Rg_Type.ItemIndex := 0;
          Timer_ChkNewPatientClosed.Enabled := false;
          NewPatientClosed := false;
     end;
end;

end.
