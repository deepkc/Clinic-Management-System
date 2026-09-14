unit Unit_PatientVisitDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, OleCtrls, Fxn, DM,
  DateEditXControl_TLB, ExtCtrls, Buttons, Grids, DBGrids,ServerDate;

type
  TForm_PatientVisitDetail = class(TForm)
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
    Query_Scheme: TOraQuery;
    DS_Scheme: TDataSource;
    Label100: TLabel;
    DBLCB_Scheme: TDBLookupComboBox;
    CB_RemoveScheme: TCheckBox;
    BtnSave: TBitBtn;
    CB_ChangeMemberNo: TCheckBox;
    Edit_MemberNo: TEdit;
    CB_RemoveMemberNo: TCheckBox;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSaveClick(Sender: TObject);
    procedure CB_RemoveSchemeClick(Sender: TObject);
    procedure CB_ChangeMemberNoClick(Sender: TObject);
    procedure CB_RemoveMemberNoClick(Sender: TObject);
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
  Form_PatientVisitDetail: TForm_PatientVisitDetail;

implementation

{$R *.DFM}

procedure TForm_PatientVisitDetail.BitBtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_PatientVisitDetail.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=27 Then Close;

     if Key=VK_F1 then CB_RemoveScheme.Checked:=not(CB_RemoveScheme.Checked);
     if Key=VK_F2 then CB_ChangeMemberNo.Checked:=not(CB_ChangeMemberNo.Checked);
     if Key=VK_F3 then CB_RemoveMemberNo.Checked:=not(CB_RemoveMemberNo.Checked);

     if Key=VK_F12 then BtnSaveClick(Sender);


end;

procedure TForm_PatientVisitDetail.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key IN['0'..'9']) Then Key:=#0;
end;

procedure TForm_PatientVisitDetail.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8 Then Exit;

     IF Key=#13 Then
     SBSearchClick(Sender);

     IF Not (key In['0'..'9']) Then Key:=#0;

end;

procedure TForm_PatientVisitDetail.DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then
     DBLCB_Scheme.KeyValue:=-1;

     if (Key=13) and (CB_ChangeMemberNo.Checked=True) then
     Edit_MemberNo.SetFocus;
end;

procedure TForm_PatientVisitDetail.BtnSaveClick(Sender: TObject);
Var DEX_Today, DEX_VisitDate : TDateEditX;
    VisitID : Integer;
    ls_LogRemarks : string;
begin
     if (CB_ChangeMemberNo.Checked=False) and (CB_RemoveMemberNo.Checked=False) then
     begin
          DEX_Today:=TDateEditX.Create(Nil);
          DEX_Today.SystemOfDate:=gi_datesystem;
          DEX_Today.text:=TodaysDate;


          DEX_VisitDate:=TDateEditX.Create(Nil);
          DEX_VisitDate.SystemOfDate:=gi_datesystem;
          DEX_VisitDate.text:=Query_PatientVisit.FieldByName('VisitDate').AsString;

          if gi_UserID<>1 then
          Begin
               if (DEX_Today.VSDateAsDays - DEX_VisitDate.VSDateAsDays) > 2 then
               begin
                    MessageDlg('Sorry ! Visit Date Exceed 2 Days.',mtWarning,[mbOK],0);
                    Exit;
               end;
          End;

          if (CB_RemoveScheme.Checked=True) and  (Query_PatientVisit.FieldByName('SchemeId').AsInteger =0) then
          begin
               MessageDlg('No Need to Remove Scheme ! Already It Is Blank.',mtWarning,[mbOK],0);
               Exit;
          end;

          if (CB_RemoveScheme.Checked=False) and  ((DBLCB_Scheme.Text)='') then
          begin
               MessageDlg('No Need to Remove Scheme ! Already It Is Blank.',mtWarning,[mbOK],0);
               Exit;
          end;

          VisitID:=Query_PatientVisit.FieldByName('VisitID').AsInteger;
          Try
               DM_Hospital.DB.StartTransaction;
               With Query_Process do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    if CB_RemoveScheme.Checked=False then
                    Begin
                         SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_SchemeId='+IntToStr(DBLCB_Scheme.KeyValue));
                         SQL.Add(' ,PAVI_CommunityID='+IntToStr(Query_Scheme.FieldByName('CommunityId').AsInteger));
                    End
                    else
                    begin
                         SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_SchemeId=0,PAVI_CommunityID=0');
                    end;
                    SQL.Add(' where PAVI_PATIENTVISITID='+IntToStr(VisitID));
                    ExecSQL;

                    Sql.Clear;
                    if CB_RemoveScheme.Checked=False then
                    Begin
                         SQL.Add(' Update HS_PAMA_Patientmain Set PAMA_SchemeId='+IntToStr(DBLCB_Scheme.KeyValue));
                         SQL.Add(' ,PAMA_CommunityID='+IntToStr(Query_Scheme.FieldByName('CommunityId').AsInteger));
                    End
                    else
                    begin
                         SQL.Add(' Update HS_PAMA_Patientmain Set PAMA_SchemeId=0,PAMA_CommunityID=0');
                    end;
                    SQL.Add(' where PAMA_Patientid='+IntToStr(pi_PatientId));
                    ExecSQL;

                    if CB_RemoveScheme.Checked=False then
                    ls_LogRemarks:='Set Scheme-> SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' For Hospital No :'+EditHosNo.Text+
                                        ' VisitId='+IntToStr(Query_PatientVisit.FieldByName('VisitId').AsInteger)
                    else
                    ls_LogRemarks:='Remove Scheme-> Old SchemeId='+IntToStr(Query_PatientVisit.FieldByName('SchemeId').AsInteger)+' For Hospital No :'+EditHosNo.Text+
                                        ' VisitId='+IntToStr(Query_PatientVisit.FieldByName('VisitId').AsInteger);

                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.add(' Insert Into HS_LOG_GLOBAL(LOG_LOGID,LOG_MODULENAME,LOG_USERID,LOG_DATAPOSTDATE,LOG_DATAPOSTTIME,LOG_REMARKS)');
                    SQL.add(' Values ('+IntToStr(GetMaxId('HS_LOG_GLOBAL','LOG_LOGID'))+',''REG'','+IntToStr(gi_UserID)+','+#39+TodaysDate+#39);
                    SQL.add(' ,'+#39+TodaysTime+#39+','+#39+ls_LogRemarks+#39+')');
                    ExecSQL;
               end;

               DM_Hospital.DB.Commit;
          Except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to Set or Remove Scheme !',mtWarning,[mbOK],0);
               Exit;
          End;
     end
     else
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

          if CB_RemoveMemberNo.Checked=True then
          Begin
               IF Trim(Query_PatientVisit.FieldByName('CardNo').AsString)='' Then
               Begin
                    MessageDlg('No Member No. Exist.',mtWarning,[mbOK],0);
                    Edit_MemberNo.SetFocus;
                    Exit;
               End;
          End
          Else
          Begin
               if Trim(DBLCB_Scheme.Text)='' then
               begin
                    MessageDlg('Please Mention Scheme For Membership No.',mtWarning,[mbOK],0);
                    DBLCB_Scheme.SetFocus;
                    Exit;
               end;

               if Trim(Edit_MemberNo.Text)='' then
               begin
                    MessageDlg('Please Put Membership No.',mtWarning,[mbOK],0);
                    Edit_MemberNo.SetFocus;
                    Exit;
               end;
          End;

          VisitID:=Query_PatientVisit.FieldByName('VisitID').AsInteger;
          Try
               DM_Hospital.DB.StartTransaction;
               With Query_Process do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    if CB_ChangeMemberNo.Checked=True then
                    Begin
                         SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_SchemeId='+IntToStr(DBLCB_Scheme.KeyValue));
                         SQL.Add(' ,PAVI_CommunityID='+IntToStr(Query_Scheme.FieldByName('CommunityId').AsInteger));
                         SQL.Add(' ,PAVI_CardNo='+#39+Edit_MemberNo.Text+#39);
                    End
                    else
                    begin
                         SQL.Add(' Update HS_PAVI_PatientVisit Set PAVI_SchemeId=0,PAVI_CommunityID=0');
                         SQL.Add(' ,PAVI_CardNo=''''');
                    end;
                    SQL.Add(' where PAVI_PATIENTVISITID='+IntToStr(VisitID));
                    ExecSQL;


                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    if CB_ChangeMemberNo.Checked=True then
                    SQL.Add(' Update HS_PAMA_PatientMain Set PAMA_CardNo='+#39+Edit_MemberNo.Text+#39)
                    else
                    SQL.Add(' Update HS_PAMA_PatientMain Set PAMA_CardNo=''''');
                    SQL.Add(' where PAMA_PatientID='+EditHosNo.Text);
                    ExecSQL;


                    if CB_ChangeMemberNo.Checked=True then
                    ls_LogRemarks:='Set Member No-> SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' For Hospital No :'+EditHosNo.Text+', Card No = '+Edit_MemberNo.Text+
                                        ' VisitId='+IntToStr(Query_PatientVisit.FieldByName('VisitId').AsInteger)
                    else
                    ls_LogRemarks:='Remove Member No-> Old SchemeId='+IntToStr(Query_PatientVisit.FieldByName('SchemeId').AsInteger)+' For Hospital No :'+EditHosNo.Text+
                                        ' Old Card No ='+Query_PatientVisit.FieldByName('CardNo').AsString+
                                        ' VisitId='+IntToStr(Query_PatientVisit.FieldByName('VisitId').AsInteger);

                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.add(' Insert Into HS_LOG_GLOBAL(LOG_LOGID,LOG_MODULENAME,LOG_USERID,LOG_DATAPOSTDATE,LOG_DATAPOSTTIME,LOG_REMARKS)');
                    SQL.add(' Values ('+IntToStr(GetMaxId('HS_LOG_GLOBAL','LOG_LOGID'))+',''REG'','+IntToStr(gi_UserID)+','+#39+TodaysDate+#39);
                    SQL.add(' ,'+#39+TodaysTime+#39+','+#39+ls_LogRemarks+#39+')');
                    ExecSQL;
               end;

               DM_Hospital.DB.Commit;
          Except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to Set or Remove Scheme !',mtWarning,[mbOK],0);
               Exit;
          End;
     end;

     ShowDoneMessage;
     GetPatientInfo;
     Query_PatientVisit.Locate('VisitId',VisitID,[]);
end;

procedure TForm_PatientVisitDetail.CB_ChangeMemberNoClick(Sender: TObject);
begin
     if CB_ChangeMemberNo.Checked=True then
     begin
          Edit_MemberNo.ReadOnly:=False;
          Edit_MemberNo.Color:=clWhite;

          CB_RemoveScheme.Checked:=False;
          CB_RemoveMemberNo.Checked:=False;
          Edit_MemberNo.SetFocus;
     end
     else
     begin
          Edit_MemberNo.ReadOnly:=True;
          Edit_MemberNo.Color:=cl3DLight;
     end;
end;

procedure TForm_PatientVisitDetail.CB_RemoveMemberNoClick(Sender: TObject);
begin
     if CB_RemoveMemberNo.Checked=True then
     begin
          Edit_MemberNo.ReadOnly:=True;
          Edit_MemberNo.Color:=cl3DLight;

          CB_RemoveScheme.Checked:=False;
          CB_ChangeMemberNo.Checked:=False;
     end;
end;

procedure TForm_PatientVisitDetail.CB_RemoveSchemeClick(Sender: TObject);
begin
     if CB_RemoveScheme.Checked=False then
     Begin
          DBLCB_Scheme.Enabled:=True;
          DBLCB_Scheme.Color:=clWhite;

          Label100.Enabled:=True;
     End
     Else
     Begin
          DBLCB_Scheme.Enabled:=False;
          DBLCB_Scheme.Color:=clMenu;
          DBLCB_Scheme.KeyValue:=-1;
          Label100.Enabled:=False;
          CB_ChangeMemberNo.Checked:=False;
     End;
end;

procedure TForm_PatientVisitDetail.EditHosNoExit(Sender: TObject);
begin
     IF (Trim(EditHosNo.Text)<>'') and (EditHosNo.Text<>'0') Then
     SBSearchClick(Sender);
end;

Procedure TForm_PatientVisitDetail.GetPatientInfo;
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

     CB_RemoveScheme.Checked:=False;
     DBLCB_Scheme.KeyValue:=-1;

     LoadPatientData(StrToInt(EditHosNo.Text));
     pi_PatientId:=StrToInt(EditHosNo.Text);

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

     With Query_PatientVisit do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql[9]:='Where PAVI_PatientId='+EditHosNo.Text;
          Open;
     End;

     StatusBar1.Panels[1].Text:='Total No Of Visit : '+IntToStr(Query_PatientVisit.RecordCount);

     Label100.Enabled:=True;
     DBLCB_Scheme.Enabled:=True;
     CB_RemoveScheme.Enabled:=True;
     CB_ChangeMemberNo.Enabled:=True;
     CB_RemoveMemberNo.Enabled:=True;
     BtnSave.Enabled:=True;
End;

procedure TForm_PatientVisitDetail.SBSearchClick(Sender: TObject);
begin
     GetPatientInfo;
end;

procedure TForm_PatientVisitDetail.FormShow(Sender: TObject);
begin
     Query_Scheme.Close;
     Query_Scheme.Open;
     DBLCB_Scheme.KeyValue:=-1;
     Label4.Caption:=Gs_HosNoCaptionName;
     EditHosNo.SetFocus;
end;

END.
