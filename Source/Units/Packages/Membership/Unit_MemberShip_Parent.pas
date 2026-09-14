unit Unit_MemberShip_Parent;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Unit_Membership, Fxn, ServerDate, Unit_Deposit, DbGridExportToExcel,
     Dialogs, OleCtrls, DateEditXControl_TLB, Buttons, StdCtrls, ExtCtrls, Spin, Grids, DBGrids, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_MembershipParent = class(TForm)
          Panel2: TPanel;
          BB_Close: TBitBtn;
          BB_NewMember: TBitBtn;
          BB_MemberAccount: TBitBtn;
          Panel3: TPanel;
          Panel1: TPanel;
          Label1: TLabel;
          SPB_TodayDate: TSpeedButton;
          Dex_Today: TDateEditX;
          Panel_Parent: TPanel;
          Panel_list: TPanel;
          Label2: TLabel;
          SpeedButton5: TSpeedButton;
          Dbgrid1: TDBGrid;
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
          GroupBox2: TGroupBox;
          Label6: TLabel;
          Label7: TLabel;
          se_days: TSpinEdit;
          DEX_From: TDateEditX;
          Label4: TLabel;
          Label5: TLabel;
          DEX_To: TDateEditX;
          SPB_From: TSpeedButton;
          SPB_To: TSpeedButton;
          QueryList: TOraQuery;
          DS_List: TDataSource;
          Rg_Type: TRadioGroup;
          Edit1: TEdit;
          BB_Refresh: TBitBtn;
          BB_MemberFamily: TBitBtn;
          BB_Ok: TBitBtn;
          BB_Deposit: TBitBtn;
          procedure BB_NewMemberClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_SearchKeyPress(Sender: TObject; var Key: Char);
          procedure BB_RefreshClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure Dbgrid1DblClick(Sender: TObject);
          procedure BB_MemberAccountClick(Sender: TObject);
          procedure se_daysExit(Sender: TObject);
          procedure BB_OkClick(Sender: TObject);
          procedure BB_MemberFamilyClick(Sender: TObject);
          procedure BB_DepositClick(Sender: TObject);
          procedure SpeedButton5Click(Sender: TObject);
          procedure Rg_TypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
     private
          FrameCleared: Boolean;
          { Private declarations }
          Procedure ClearFrame;
          Procedure RefreshList;
     public
          { Public declarations }
     end;

var
     Form_MembershipParent: TForm_MembershipParent;
     Frame_NewMember: Unit_Membership.TFrame_NewMember;

implementation

uses Unit_MemberPackage, Unit_MemberFamily;
{$R *.dfm}

procedure TForm_MembershipParent.BB_DepositClick(Sender: TObject);
begin
     Try
          gi_PatientID := QueryList.FieldByName('PatientId').AsInteger;
          Form_Deposit := TForm_Deposit.Create(Nil);
          Form_Deposit.Le_HosNo.Text := IntToStr(gi_PatientID);
          Form_Deposit.SP_PatientSearchClick(Sender);
          Form_Deposit.ShowModal;
     Finally
          Form_Deposit.Free;
     End;
end;

procedure TForm_MembershipParent.BB_MemberAccountClick(Sender: TObject);
begin
     if Rg_Type.ItemIndex = 1 then
          Exit;

     Try
          Gi_MemberID := QueryList.FieldByName('MemberID').AsInteger;
          gi_PatientID := QueryList.FieldByName('PatientId').AsInteger;
          Form_MemberPackage := TForm_MemberPackage.Create(Nil);
          Form_MemberPackage.ShowModal;
     Finally
          Form_MemberPackage.Free;
     End;
end;

procedure TForm_MembershipParent.BB_MemberFamilyClick(Sender: TObject);
begin
     Try
          Gi_MemberID := QueryList.FieldByName('MemberId').AsInteger;
          Form_MemberFamily := TForm_MemberFamily.Create(Nil);
          Form_MemberFamily.ShowModal;
     Finally
          Form_MemberFamily.Free;
     End;
end;

procedure TForm_MembershipParent.BB_NewMemberClick(Sender: TObject);
begin
     if Rg_Type.ItemIndex = 1 then
     begin
          gi_PatientID := QueryList.FieldByName('PatientId').AsInteger;
          LoadPatientData(gi_PatientID);
          gb_IsRegisteredPatient := True;
     end
     else
     begin
          ClearVariable;
          gb_IsRegisteredPatient := False;
          gi_PatientID := 0;
     end;
     { ***************************************** }
     ClearFrame;
     Panel_Parent.BringToFront;
     Frame_NewMember := TFrame_NewMember.Create(nil);
     with Frame_NewMember do
     begin
          if Rg_Type.ItemIndex = 1 then
          begin
               GB_BasicInformation.Enabled := True;
               BB_EditMode.Visible := False;
               BB_Save.Visible := True;
               GB_Address.Enabled := True;
               GB_Others.Enabled := True;
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
                    Cb_IsParty.Checked := True
               else
                    Cb_IsParty.Checked := False;
               Show;
               try
                    if LoadImageFromDB(gi_PatientID) then
                         Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
               except
               end;
          end;
          Parent := Panel_Parent;
          Align := alClient;
          Show;
          FrameCleared := False;
          pb_isnew := True;
          Le_FName.SetFocus;
          // SpeedButton2.Visible:=false;
     end;

end;

procedure TForm_MembershipParent.BB_OkClick(Sender: TObject);
begin
     Form_MemberFamily.Edit_Name.Text := QueryList.FieldByName('PatientName').AsString;
     Form_MemberFamily.Pi_TempMemberID := QueryList.FieldByName('MemberID').AsInteger;
     Self.Close;
end;

procedure TForm_MembershipParent.BB_CloseClick(Sender: TObject);
begin
     if FrameCleared then
          Close
     else
          ClearFrame;
end;

procedure TForm_MembershipParent.BB_RefreshClick(Sender: TObject);
begin
     Edit_Search.Clear;
     RefreshList;
end;

Procedure TForm_MembershipParent.ClearFrame;
Var
     i: integer;
     Sender: TObject;
begin
     try
          For i := 0 to Panel_Parent.ControlCount - 1 do
          begin
               if (Panel_Parent.Controls[i] is Tframe) then
               begin
                    if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_NewMember' then
                    begin
                         Frame_NewMember.OffCamera;
                         BB_NewMember.Enabled := True;
                         Form_MembershipParent.Rg_Type.ItemIndex := 0;
                         Form_MembershipParent.BB_RefreshClick(Sender);
                    end;
                    if Tframe(Panel_Parent.Controls[i]).Name = 'Frame_Billing' then
                    begin
                         // BB_NewPatient.Enabled := true;
                         // RefreshList;
                         // Frame_Billing.clearCustomerPreview;
                    end;
                    Tframe(Panel_Parent.Controls[i]).Free;
                    FrameCleared := True;
               end;
          end;
          Panel_list.BringToFront;
          FrameCleared := True;
     except
          Self.Close;
     end;
end;

procedure TForm_MembershipParent.Dbgrid1DblClick(Sender: TObject);
begin
     if Rg_Type.ItemIndex = 1 then
          Exit;
     Gi_MemberID := QueryList.FieldByName('MemberID').AsInteger;
     LoadMemberData(Gi_MemberID);
     { ***************************************** }
     ClearFrame;
     Panel_Parent.BringToFront;
     Frame_NewMember := TFrame_NewMember.Create(nil);
     with Frame_NewMember do
     begin
          pb_isnew := False;
          Parent := Panel_Parent;
          Align := alClient;
          FrameCleared := False;
     end;
     { ******************************************** }
     with Frame_NewMember do
     begin
          GB_BasicInformation.Enabled := False;
          BB_EditMode.Visible := True;
          GB_Address.Enabled := False;
          GB_Others.Enabled := False;
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
          Cb_BloodGroup.ItemIndex := Cb_BloodGroup.Items.IndexOf(Gs_BloodGroup);
          Le_FamilyDoctor.Text := Gs_FamilyDoc;
          Le_ContactPerson1.Text := Gs_EmerContactPerson1;
          Le_ContactNo1.Text := Gs_EmerContactNo1;
          Le_ContactPerson2.Text := Gs_EmerContactPerson2;
          Le_ContactNo2.Text := Gs_EmerContactNo2;
          if Gs_IsParty then
               Cb_IsParty.Checked := True
          else
               Cb_IsParty.Checked := False;
          Show;
          try
               if LoadImageFromDB(gi_PatientID) then
                    Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          except
          end;
     end;
end;

Procedure TForm_MembershipParent.Edit_SearchKeyPress(Sender: TObject; var Key: Char);
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
                    if IsStrANumber(Edit_Search.Text) then
                         SQL[1] := 'Where PatientId=' + trim(Edit_Search.Text)
                    else
                         SQL[1] := 'Where Upper(PatientName) Like' + #39 + trim(Edit_Search.Text) + '%' + #39;
                    Open;
               end;
          end
          else
          begin
               Edit_PatientID.Clear;
               Edit2.Clear;
               RefreshList;
          end;
     end;
end;

procedure TForm_MembershipParent.FormCreate(Sender: TObject);
begin
     if gs_CalledFrom = 'MemberFamily' then
     begin
          BB_MemberFamily.Visible := False;
          BB_MemberAccount.Visible := False;
          Rg_Type.ItemIndex := 0;
          Rg_Type.Visible := False;
          BB_Ok.Visible := True;
     end;
     FrameCleared := True;
     Dex_Today.ADDateAsText := TodaysDate;
     Dex_Today.SystemOfDate := gi_datesystem;
     SPB_TodayDate.Caption := gs_DateCaption;
     DEX_From.ADDateAsText := TodaysDate;
     DEX_From.SystemOfDate := gi_datesystem;
     SPB_From.Caption := gs_DateCaption;
     DEX_To.ADDateAsText := TodaysDate;
     DEX_To.SystemOfDate := gi_datesystem;
     SPB_To.Caption := gs_DateCaption;
     Dbgrid1.Color := clWebLightBlue;
     Dbgrid1.Columns[0].Title.Caption := Gs_PatientIdCaption;
     Self.Caption := Self.Caption + ' User: ' + gs_UserName;
     BB_RefreshClick(Sender);
end;

procedure TForm_MembershipParent.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_MembershipParent.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);

end;

procedure TForm_MembershipParent.FormShow(Sender: TObject);
begin
     DEX_From.ADDateAsDate := DEX_From.ADDateAsDate - 60;
end;

procedure TForm_MembershipParent.RefreshList;
begin
     gs_From := DEX_From.ADDateAsText;
     gs_to := DEX_To.ADDateAsText;

//     if StrToInt(se_days.Text) > 0 then
//     begin
//          DEX_From.ADDateAsDate := DEX_From.ADDateAsDate - StrToInt(se_days.Text);
//          gs_From := DEX_From.ADDateAsText;
//          DEX_From.ADDateAsDate := DEX_From.ADDateAsDate + StrToInt(se_days.Text);
//     end;

     with QueryList do
     begin
          Close;
          if Rg_Type.ItemIndex = 0 then
          begin
               SQL[0] := 'SELECT * FROM VW_MEMBERMAIN';
               SQL[1] := 'Where Regdate Between' + #39 +gs_From + #39 + ' AND ' + #39 + gs_to + #39;
          end
          else if Rg_Type.ItemIndex = 1 then
          begin
               SQL[0] := 'SELECT * FROM VW_PATIENTMAIN';
               SQL[1] := 'WHERE PATIENTID NOT IN (SELECT NVL(PATIENTID,0) FROM MEMBERMAIN) AND ' + 'REGDATE BETWEEN' + #39 + gs_From + #39 +
                 ' AND ' + #39 + gs_to + #39;
          end;
          Open;
     end;
end;

procedure TForm_MembershipParent.Rg_TypeClick(Sender: TObject);
begin
     BB_RefreshClick(Sender);
end;

procedure TForm_MembershipParent.se_daysExit(Sender: TObject);
begin
     BB_Refresh.SetFocus;
end;

procedure TForm_MembershipParent.SpeedButton5Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_MembershipParent, Dbgrid1, True, 'Member List ', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
