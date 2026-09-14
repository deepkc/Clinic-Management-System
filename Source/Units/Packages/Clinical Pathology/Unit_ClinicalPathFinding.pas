unit Unit_ClinicalPathFinding;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Fxn, PatientClass, ServerDate, Unit_Master, DM,
     Dialogs, StdCtrls, CheckLst, Mask, OleCtrls, DateEditXControl_TLB, DBCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, TeCanvas, ToolWin, Grids,
     DBGrids, Spin, RichEdit;

type
     TFrame_ClinicalPathFinding = class(TFrame)
          Panel2: TPanel;
          Label14: TLabel;
          lbl_Name: TLabel;
          Label18: TLabel;
          SpeedButton2: TSpeedButton;
          Label1: TLabel;
          Lbl_Hosno: TLabel;
          Label3: TLabel;
          Lbl_AgeGender: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label2: TLabel;
          lbl_SampleNo: TLabel;
          Label4: TLabel;
          Label7: TLabel;
          SpeedButton17: TSpeedButton;
          DBLCB_RefDoc: TDBLookupComboBox;
          Dex_RptDate: TDateEditX;
          Dex_SampleDate: TDateEditX;
          Me_Time: TMaskEdit;
          Clb_ReportFooter: TCheckListBox;
          DS_RefDoccode: TDataSource;
          Query_RefDoccode: TOraQuery;
          Memo_Remarks: TMemo;
          Ds_ReportType: TDataSource;
          Query_ReportType: TOraQuery;
          Query_Listing: TOraQuery;
          Panel3: TPanel;
          Label12: TLabel;
          Label13: TLabel;
          Label15: TLabel;
          Label16: TLabel;
          Label20: TLabel;
          Label21: TLabel;
          Label22: TLabel;
          RichEdit_Title: TRichEdit;
          SpinEdit1: TSpinEdit;
          RichEdit_DefaultFinding: TRichEdit;
          Memo1: TMemo;
          DBGrid1: TDBGrid;
          ToolBar1: TToolBar;
          ToolButton1: TToolButton;
          ToolButton6: TToolButton;
          ToolButton2: TToolButton;
          ToolButton4: TToolButton;
          ToolButton3: TToolButton;
          ToolButton5: TToolButton;
          ToolButton7: TToolButton;
          ToolButton12: TToolButton;
          ToolButton9: TToolButton;
          Tbtn_Font: TToolButton;
          ToolButton16: TToolButton;
          ComboBox2: TComboBox;
          ComboBox1: TComboBox;
          ButtonColor1: TButtonColor;
          Edit_FindingTitle: TEdit;
          Panel4: TPanel;
          MyRichEdit: TRichEdit;
          Label10: TLabel;
          Label11: TLabel;
          DBLC_ReportType: TDBLookupComboBox;
          DS_Listing: TDataSource;
          SpeedButton1: TSpeedButton;
          FontDialog1: TFontDialog;
          ColorDialog1: TColorDialog;
          ToolButton8: TToolButton;
          ToolButton10: TToolButton;
          ToolButton11: TToolButton;
          SpeedButton3: TSpeedButton;
    Edit_RefNo: TEdit;
    Edit_CptCode: TEdit;
    Label9: TLabel;
    Table_ClinicalFinding: TTable;
    Query_List: TQuery;
    memo2: TMemo;
    orqry_blank: TOraQuery;
    ComboBox_ReferenceNo: TComboBox;
    Label8: TLabel;
    BB_Save: TBitBtn;
    SpeedButtonD: TSpeedButton;
          procedure SpeedButton17MouseEnter(Sender: TObject);
          procedure SpeedButton17MouseLeave(Sender: TObject);
          procedure DBLC_ReportTypeClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure ButtonColor1Click(Sender: TObject);
          procedure ToolButton1Click(Sender: TObject);
          procedure ToolButton2Click(Sender: TObject);
          procedure ToolButton3Click(Sender: TObject);
          procedure ToolButton7Click(Sender: TObject);
          procedure Tbtn_FontClick(Sender: TObject);
          procedure ComboBox2Change(Sender: TObject);
          procedure ComboBox1Change(Sender: TObject);
          procedure RichEdit_TitleEnter(Sender: TObject);
          procedure RichEdit_TitleSelectionChange(Sender: TObject);
          procedure Edit_FindingTitleExit(Sender: TObject);
          procedure RichEdit_DefaultFindingEnter(Sender: TObject);
          procedure RichEdit_DefaultFindingSelectionChange(Sender: TObject);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
          procedure ToolButton8Click(Sender: TObject);
          procedure ToolButton10Click(Sender: TObject);
          procedure ToolButton11Click(Sender: TObject);
          procedure SpeedButton3Click(Sender: TObject);
    procedure DBLCB_RefDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButtonDClick(Sender: TObject);
     private
          pb_isnew: Boolean;
          OldRefDocCode, NewRefDocCode: String;
          Pi_TempID,Pi_Length, ClinicalTestId, ClinicalTestDetailId: Integer;
          Ps_RichName: String;
          { Private declarations }
          Procedure LoadDatainGrid;
          Procedure CreateTableClinicalFinding;
          Procedure LoadPatientClinicalData;
          Procedure SaveReportFooter;
     public
          ps_DepType:String;
          { Public declarations }
          Constructor Create(Aowner: Tcomponent); Override;
     end;

implementation

{$R *.dfm}
{ TFrame_ClinicalPathFinding }

procedure TFrame_ClinicalPathFinding.BB_SaveClick(Sender: TObject);
Var
     PatientClinicalTestDetailID, TestNameID, ReportFormatId, DisplayOrder,MaxID: Integer;
     ReportTitle, Finding_Title, Finding, ReportTitle_Rich, Finding_Rich,DocCode,RefNo,CptCode,FindingsFresh,FindingsOld,FindingsFresh2,ReferenceNo: String;
     lb_IsMassData,lb_IsMassData2:Boolean;
     QryUpdate,Qrysave:TOraQuery;
begin
     if DBLCB_RefDoc.KeyValue <> null then
          DocCode := DBLCB_RefDoc.KeyValue
     else
          DocCode := '';

     if ComboBox_ReferenceNo.Text <> '' then
          ReferenceNo := ComboBox_ReferenceNo.Text
     else
          ReferenceNo := '';

     RefNo:=Trim(Edit_RefNo.Text);
     CptCode:=Trim(Edit_CptCode.Text);


     Memo2.clear;
     RichEdit_DefaultFinding.Lines.saveToFile('tt.txt');
     Memo2.Lines.LoadFromFile('tt.txt');
     FindingsFresh := Memo2.Text;

     if Length(FindingsFresh)>8000 then
     begin
          FindingsOLD:=FindingsFresh;
          lb_IsMassData:=True;
          FindingsFresh:=Copy(FindingsFresh,0,3999);
          FindingsFresh2:=StringReplace(FindingsOLD,FindingsFresh,'',[rfReplaceAll]);
          //FindingsFresh2:= Copy(memo2.Text,4000,7999);
     end
     else
     lb_IsMassData:=False;

     if lb_IsMassData=False then
     begin
          if Length(FindingsFresh)>4000 then
          begin
               FindingsOLD:=FindingsFresh;
               lb_IsMassData2:=True;
               FindingsFresh:=Copy(FindingsFresh,0,3999);
          end
          else
          lb_IsMassData2:=False;
     end;


     Try
          DM_Hospital.DB.StartTransaction;
          With Table_ClinicalFinding do
          begin
               Close;
               Open;
               if FieldByName('PtClinicalTestDetailID').AsInteger = 0 then
                    UpdatePatientClinicalDeleteStatus(gi_PatientTestID);
               while Not Eof do
               begin
                    PatientClinicalTestDetailID := FieldByName('PtClinicalTestDetailID').AsInteger;
                    ReportFormatId := FieldByName('ReportFormatID').AsInteger;
                    DisplayOrder := FieldByName('DisplayOrder').AsInteger;
                    ReportTitle := FieldByName('ReportTitle').AsString;
                    Finding_Title := FieldByName('FindingTitle').AsString;
                    Finding := FieldByName('Finding').AsString;
                    ReportTitle_Rich := FieldByName('ReportTitle_Rich').AsString;
                    Finding_Rich := FieldByName('Finding_Rich').AsString;
                    if PatientClinicalTestDetailID = 0 then
                    begin
                         (* SavePatientClinicalTestDetail(PatientId,InpatientID,VisitID,PatientTestID,TestNameID,ReportFormatId,DisplayOrder:Integer;
                           ReportTitle,Finding_Title,Finding,ReportTitle_Rich,Finding_Rich:String); *)
                         (*SavePatientClinicalTestDetail(gi_PatientID, gi_InPatientID, gi_VisitId, gi_PatientTestID, gi_TestNameId, ReportFormatId,
                              DisplayOrder, ReportTitle, Finding_Title, Finding, ReportTitle_Rich, Finding_Rich)*)

                         MaxID := GetMaxId('PatientClinicalTestDetail', 'PatientClinicalTestDetailID');
                         QrySave := TOraQuery.Create(nil);
                         With QrySave do
                         Begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              sql.Clear;
                              sql.Add(
                                   'insert into PatientClinicalTestDetail(PatientClinicalTestDetailID,PatientId,InpatientID,VisitID,PatientTestID,TestNameID,ReportFormatId,DisplayOrder');
                              sql.Add(',ReportTitle,Finding_Title,Finding,ReportTitle_Rich,Finding_Rich)');
                              sql.Add('values(' + IntToStr(MaxID) + ',' + IntToStr(gi_PATIENTID));
                              sql.Add(',' + IntToStr(gi_INPATIENTID) + ',' + IntToStr(gi_VISITID) + ',' + IntToStr(gi_PATIENTTESTID) + ',' + IntToStr(gi_TestNameID));
                              sql.Add(',' + IntToStr(ReportFormatId) + ',' + IntToStr(DISPLAYORDER) + ',' + #39 + StringReplace
                                   (REPORTTITLE, '''', '''''', [rfReplaceAll]) + #39);
                              sql.Add(',' + #39 + StringReplace(Finding_Title, '''', '''''', [rfReplaceAll]) + #39 + ',' + #39 + StringReplace
                                   (Finding, '''', '''''', [rfReplaceAll]) + #39',' + #39 + StringReplace(reporttitle_rich, '''', '''''', [rfReplaceAll])
                                   + #39 + ',' + QuotedStr(FindingsFresh));
                              sql.Add(')');
                              ExecSQL;
                         end;




                         if lb_IsMassData=True then
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsFresh2,0,3999)));
                              sql.Add('where PatientClinicalTestDetailID='+IntToSTr(MaxID));
                              //sql.SaveToFile('c:\greatvalue.txt');
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;

                           With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsFresh2,4000,Length(FindingsFresh2))));
                              sql.Add('where PatientClinicalTestDetailID='+IntToSTr(MaxID));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end
                    else
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsOld,4000,Length(FindingsOld))));
                              sql.Add('where PatientClinicalTestDetailID='+IntToSTr(MaxID));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end;


                         UpdateTestProgressStatus('', '', gi_PATIENTTESTID, gi_Investigation);
                         UpdateFindingsPostBy(gi_PATIENTTESTID);
                         Qrysave.Free; //che
                    end
                    else
                         (* UpdatePatientClinicalTestDetail(PatientClinicalTestDetailID,ReportFormatId,DisplayOrder:Integer; ReportTitle,Finding_Title,Finding
                           ,ReportTitle_Rich,Finding_Rich:String); *)
                         (*UpdatePatientClinicalTestDetail(PatientClinicalTestDetailID,gi_PatientTestID, ReportFormatId, DisplayOrder, ReportTitle, Finding_Title,
                              Finding, ReportTitle_Rich, Finding_Rich); *)


                    begin
                    QryUpdate := TOraQuery.Create(nil);
                    With QryUpdate do
                    Begin
                         Close;
                         Session:=Dm_Hospital.Db;
                         sql.Clear;
                         sql.Add('Update PatientClinicalTestDetail Set');
                         sql.Add('ReportFormatID=' + IntToStr(ReportFormatId) + ',DisplayOrder=' + IntToStr(DISPLAYORDER)
                              + ',ReportTitle=' + #39 + REPORTTITLE + #39);
                         sql.Add(',Finding_Title=' + #39 + StringReplace(Finding_Title, '''', '''''', [rfReplaceAll]) + #39 + ',Finding=' + #39 + StringReplace
                              (Finding, '''', '''''', [rfReplaceAll]) + #39',ReportTitle_Rich=' + #39 + StringReplace
                              (reporttitle_rich, '''', '''''', [rfReplaceAll]) + #39 + ',Finding_Rich='+QuotedStr(FindingsFresh));
                         sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                         ExecSQL;
                    end;




                    if lb_IsMassData=True then
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsFresh2,0,3999)));
                              sql.Add('where PatientClinicalTestDetailID='+IntToSTr(PatientClinicalTestDetailID));
                              //sql.SaveToFile('c:\greatvalue.txt');
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;

                           With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsFresh2,4000,Length(FindingsFresh2))));
                             sql.Add('where PatientClinicalTestDetailID='+IntToSTr(PatientClinicalTestDetailID));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end
                    else
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update PatientClinicalTestDetail set Finding_Rich=Finding_Rich||'+Quotedstr(copy(FindingsOld,4000,Length(FindingsOld))));
                              sql.Add('where PatientClinicalTestDetailID='+IntToSTr(PatientClinicalTestDetailID));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end;


                    UpdateTestProgressStatus('', '', gi_PATIENTTESTID, gi_Investigation);
                    UpdateFindingsPostBy(gi_PATIENTTESTID);
                    QryUpdate.Free; //che



               end;
               Next;
               end;
          end;
          UpdateRefNoInPatientTest(gi_PatientTestID,RefNo,Referenceno);
          UpdateCptCodeInPatientTest(gi_PatientTestID,CptCode);
          SaveReportFooter;
          //UpdateRefDocCodeInPatientTest(gi_PatientTestID, DocCode);
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          SimulateKeyPress(Self.WindowHandle, vk_escape);
     Except
          DM_Hospital.DB.Rollback;
     End;
end;

procedure TFrame_ClinicalPathFinding.ButtonColor1Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontColor(ButtonColor1, RichEdit_Title)
     else if Ps_RichName = 'Default' then
          SetFontColor(ButtonColor1, RichEdit_DefaultFinding);
end;

procedure TFrame_ClinicalPathFinding.ComboBox1Change(Sender: TObject);
begin
     if Ps_RichName = 'Title' then

          SetFontSize(ComboBox1, RichEdit_Title)
     else if Ps_RichName = 'Default' then
          SetFontSize(ComboBox1, RichEdit_DefaultFinding);
end;

procedure TFrame_ClinicalPathFinding.ComboBox2Change(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontName(ComboBox2, RichEdit_Title)
     else if Ps_RichName = 'Default' then
          SetFontName(ComboBox2, RichEdit_DefaultFinding);
end;

constructor TFrame_ClinicalPathFinding.Create(Aowner: Tcomponent);
Var
     Sender: TObject;
begin
     inherited;
     if gi_compileValue=10 then
     begin
       Label8.Caption:='Run. No.';
     end;
     ps_DepType:=GetUserDepType(gi_UserID);

     if ps_DepType='H' then
      BEGIN
          ComboBox_ReferenceNo.Items.Add('CYTOLOGY NO.');
          ComboBox_ReferenceNo.Items.Add('FN-NO.');
          ComboBox_ReferenceNo.Items.Add('PAP SMEAR NO.');
          ComboBox_ReferenceNo.Items.Add('PBS NO.');
          ComboBox_ReferenceNo.Items.Add('H.S NO.');
          ComboBox_ReferenceNo.Items.Add('BMA NO.');
      END
      else if ps_DepType='R' then
      begin
          ComboBox_ReferenceNo.Clear;
           ComboBox_ReferenceNo.Items.Add('SCAN Done By');
           ComboBox_ReferenceNo.Items.Add('X-RAY Done By');
           ComboBox_ReferenceNo.Items.Add('MAMO Done By');
           ComboBox_ReferenceNo.Items.Add('USG Done By');
      end;
     SetfontSizeValue(ComboBox1);
     SetfontNameValue(ComboBox2);
     CreateTableClinicalFinding;
     Label1.Caption := Gs_PatientIdCaption;

    // Query_RefDoccode.Close;
    // Query_RefDoccode.Session:=Dm_Hospital.Db;
    // Query_RefDoccode.Open;

     if gi_compileValue=3 then
     begin
         with Query_RefDoccode do
         begin
           close;
           Session:=Dm_Hospital.Db;
           sql.Clear;
           sql.Add('select doccode,TRIM(REPLACE(REPLACE(REPLACE(replace(docname||'' ''||L_name,''DR''),''PROF''),''.''),''(MRS)''))/*||'' - ''||Nvl(referralcount,0)*/DOCNAME from doctor ');
           sql.Add('order by Nvl(referralcount,0) desc');
           Open;
         end;
     end
     else
     begin
         with Query_RefDoccode do
         begin
           close;
           Session:=Dm_Hospital.Db;
           sql.Clear;
           SQL.Add('select doct_doccode as doccode,doct_DOCNAME as docname from hs_doct_doctor');
           //sql.Add('select doccode,TRIM(REPLACE(REPLACE(REPLACE(replace(f_name||'' ''||L_name,''DR''),''PROF''),''.''),''(MRS)''))/*||'' - ''||Nvl(referralcount,0)*/DOCNAME from doctor ');
           //sql.Add('order by Nvl(referralcount,0) desc');
           Open;
         end;
     end;



     LoadPatientData(gi_PatientID);
     MyPatient := TPatient.Create;
     MyPatient.LoadData(gi_PatientID);
     Lbl_AgeGender.Caption := MyPatient.AgeGender;
     lbl_SampleNo.Caption := gs_SampleNo;
     Memo_Remarks.Text := MyPatient.Remarks;

     //RefreshQuery(Query_RefDoccode,gs_DatabaseName);

     lbl_Name.Caption := Gs_PatientName;
     Lbl_Hosno.Caption := IntToStr(gi_PatientID);
     // Lbl_TestName.Caption := gs_TestName;
     // lbl_SampleNo.Caption := gs_SampleNo;
     Dex_SampleDate.ADDateAsText := TodaysDate;
     Dex_SampleDate.SystemOfDate := gi_datesystem;
     Dex_RptDate.ADDateAsText := TodaysDate;
     Dex_RptDate.SystemOfDate := gi_datesystem;
     OldRefDocCode := GetRefDoccodeFromPatientTest(gi_PatientTestID);
     DBLCB_RefDoc.KeyValue := OldRefDocCode;
     Me_Time.Text := TodaysTime;
     Label6.Visible := false;
     Dex_SampleDate.Visible := false;
     Me_Time.Visible := false;

     if gi_compileValue=3 then
     begin
         DBLCB_RefDoc.KeyValue:=GetRefDocCode(Gs_BillNo);
     end;

     with Query_ReportType do
     begin
          Close;
          SQL[1] := 'Where TestNameID=' + IntToStr(gi_TestNameId);
          Open;
     end;

     DBLC_ReportType.KeyValue := 1;
     LoadReportFooterDocINCheckListBox(Clb_ReportFooter);
     LoadPatientClinicalData;
     LoadPatientReportFooterDocINCheckListBox(gs_SampleNo,ps_DepType, Clb_ReportFooter);

     if DBLC_ReportType.Enabled = True then
          DBLC_ReportTypeClick(Sender);

     Edit_RefNo.Text:=GetRefNoFromPatientTest(gi_PatientTestID);
     ComboBox_ReferenceNo.Text:=GetReferenceNoFromPatientTest(gi_PatientTestID);
     Edit_CptCode.Text:=GetCptCode(gi_PatientTestID);

end;

procedure TFrame_ClinicalPathFinding.CreateTableClinicalFinding;
begin
     if FileExists(gs_temppath + '\ClinicalFindings.db') then
     begin
          with Table_ClinicalFinding do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'ClinicalFindings.db';
               DeleteTable;
          end;
     end;
     with Table_ClinicalFinding do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'ClinicalFindings.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('TempID', ftInteger);
          FieldDefs.Add('PtClinicalTestDetailID', ftInteger);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('PatientTestId', ftInteger);
          FieldDefs.Add('ReportFormatID', ftInteger);
          FieldDefs.Add('ReportTitle', ftString, 100);
          FieldDefs.Add('ReportTitle_Rich', ftMemo);
          FieldDefs.Add('FindingTitle', ftString, 100);
          FieldDefs.Add('FindingTitle_Rich', ftMemo);
          FieldDefs.Add('Finding', ftString, 200);
          FieldDefs.Add('Finding_Rich', ftMemo);
          FieldDefs.Add('DisplayOrder', ftString, 100);
          FieldDefs.Add('IsNew', ftString, 1);
          CreateTable;
     end;
end;

procedure TFrame_ClinicalPathFinding.DBGrid1DblClick(Sender: TObject);
Var
     ms : TMemoryStream;
     rtfString : AnsiString;
begin
     Pi_TempID:=Query_List.FieldByName('TempID').AsInteger;
     SpeedButton1.Visible := True;

     RichEdit_Title.Lines.Clear;
     RichEdit_DefaultFinding.Lines.Clear;

     SpinEdit1.Text := Query_List.FieldByName('DisplayOrder').AsString;
     Edit_FindingTitle.Text := Query_List.FieldByName('FindingTitle').AsString;

     ms:=TMemoryStream.Create;

     rtfString:=Query_List.FieldByName('ReportTitle_rich').AsString;
     ms.Clear;
     ms.Write(PAnsiChar(rtfString)^, Length(rtfString));
     ms.Position:=0;
     RichEdit_Title.Lines.LoadFromStream(ms);

     rtfString:=Query_List.FieldByName('Finding_Rich').AsString;
     ms.Clear;
     ms.Write(PAnsiChar(rtfString)^, Length(rtfString));
     ms.Position:=0;
     RichEdit_DefaultFinding.Lines.LoadFromStream(ms);

     ms.Free;
end;

procedure TFrame_ClinicalPathFinding.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
     Qry: TQuery;
begin
     Qry := TQuery.Create(Nil);
     if Key = VK_DELETE then
     begin
          if MessageDlg('Are you sure to delete?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
               with Qry do
               begin
                    Close;
                    DatabaseName := gs_temppath;
                    SQL.Clear;
                    SQL.Add('Delete From ClinicalFindings ');
                    SQL.Add('Where TempID=' + IntToStr(Query_List.FieldByName('TempID').AsInteger));
                    ExecSQL;
               end;
               Qry.Free;
               RefreshQuery(Query_List, gs_temppath);
               LoadDataInRichEdit(Query_List, MyRichEdit, 'Finding_RIch', Query_List.FieldByName('Reporttitle_Rich').AsString);
          end;
     end;
end;

procedure TFrame_ClinicalPathFinding.DBLCB_RefDocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=VK_DELETE then
   DBLCB_RefDoc.KeyValue:=null;
end;

procedure TFrame_ClinicalPathFinding.DBLC_ReportTypeClick(Sender: TObject);
Var
     Qry: TOraQuery;
     rtfstring:AnsiString;
     ms : TMemoryStream;
begin
     Qry := TOraQuery.Create(Nil);
     if DBLC_ReportType.KeyValue = null then
          DBLC_ReportType.KeyValue := -1
     else
     begin
          LoadDatainGrid;
          with Qry do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               SQL.Clear;
               SQL.Add('select ReportTitle_Rich from clinical_testSetup');
               SQL.Add('Where TestNameID=' + IntToStr(gi_TestNameId));
               SQL.Add('And ReportFormatID=' + IntToStr(DBLC_ReportType.KeyValue));
               Open;
          end;
          ms:=TMemoryStream.Create;
          rtfstring:=Qry.FieldByName('ReportTitle_Rich').AsString;
          ms.Clear;
          ms.Write(PAnsiChar(rtfstring)^,Length(rtfstring));
          ms.Position:=0;
          RichEdit_Title.Lines.LoadFromStream(ms);
     end;
     ms.Free;
     Qry.Free;
     RefreshQuery(Query_List, gs_temppath);
end;

procedure TFrame_ClinicalPathFinding.Edit_FindingTitleExit(Sender: TObject);
begin
     if pb_isnew = True then
          RichEdit_DefaultFinding.Text := Edit_FindingTitle.Text;
     Pi_Length := length(Edit_FindingTitle.Text);
end;

procedure TFrame_ClinicalPathFinding.LoadDatainGrid;
Var
     li_TempID: Integer;
begin
     with Table_ClinicalFinding do
     begin
          Close;
          EmptyTable;
          Open;
     end;
     li_TempID := 0;
     if (gi_TestNameId > 0) and (DBLC_ReportType.KeyValue > 0) then
     begin
          with Query_Listing do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               SQL.Clear;
               SQL.Add('select ts.*,td.* from clinical_testSetup ts,clinical_testSetupDetail td');
               SQL.Add('where TS.CLINICAL_TESTSETUPID=TD.CLINICAL_TESTSETUPID');
               SQL.Add('and testnameid=' + IntToStr(gi_TestNameId) + ' and reportformatid=' + IntToStr(DBLC_ReportType.KeyValue));
               SQL.Add('Order by DisplayOrder');
               Open;
               while not Eof do
               begin
                    with Table_ClinicalFinding do
                    begin
                         Append;
                         Inc(li_TempID);
                         FieldByName('TempID').AsInteger := li_TempID;
                         FieldByName('ReportFormatID').AsInteger := Query_Listing.FieldByName('ReportFormatID').AsInteger;
                         FieldByName('ReportTitle').AsString := Query_Listing.FieldByName('ReportTitle').AsString;
                         FieldByName('ReportTitle_Rich').AsString := Query_Listing.FieldByName('ReportTitle_Rich').AsString;
                         FieldByName('FindingTitle').AsString := Query_Listing.FieldByName('Finding_Title').AsString;
                         FieldByName('Finding').AsString := Query_Listing.FieldByName('Default_Finding').AsString;
                         FieldByName('Finding_Rich').AsString := Query_Listing.FieldByName('Default_Finding_Rich').AsString;
                         FieldByName('DisplayOrder').AsString := Query_Listing.FieldByName('DisplayOrder').AsString;
                         FieldByName('IsNew').AsString := 'Y';
                         Post;
                    end;
                    Next;
               end;
          end;
          RefreshQuery(Query_List, gs_temppath);
          LoadDataInRichEdit(Query_List, MyRichEdit, 'Finding_RIch', Query_List.FieldByName('Reporttitle_Rich').AsString);
     end;
end;

procedure TFrame_ClinicalPathFinding.LoadPatientClinicalData;
Var
     li_TempID: Integer;
begin
     with Table_ClinicalFinding do
     begin
          Close;
          EmptyTable;
          Open;
     end;
     li_TempID := 0;
     with Query_Listing do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select * from PatientClinicalTestDetail');
          SQL.Add('Where PatientTestID=' + IntToStr(gi_PatientTestID));
          SQL.Add('And Delete_Status=''N''');
          SQL.Add('Order by DisplayOrder');
          Open;
          FetchAll;
          while not Eof do
          begin
               DBLC_ReportType.Enabled := false;
               with Table_ClinicalFinding do
               begin
                    Append;
                    Inc(li_TempID);
                    FieldByName('TempID').AsInteger := li_TempID;
                    FieldByName('PtClinicalTestDetailID').AsInteger := Query_Listing.FieldByName('PatientClinicalTestDetailID').AsInteger;
                    FieldByName('ReportFormatID').AsInteger := Query_Listing.FieldByName('ReportFormatID').AsInteger;
                    FieldByName('ReportTitle').AsString := Query_Listing.FieldByName('ReportTitle').AsString;
                    FieldByName('ReportTitle_Rich').AsString := Query_Listing.FieldByName('ReportTitle_Rich').AsString;
                    FieldByName('FindingTitle').AsString := Query_Listing.FieldByName('Finding_Title').AsString;
                    FieldByName('Finding').AsString := Query_Listing.FieldByName('Finding').AsString;
                    FieldByName('Finding_Rich').AsString := Query_Listing.FieldByName('Finding_Rich').AsString;
                    FieldByName('DisplayOrder').AsString := Query_Listing.FieldByName('DisplayOrder').AsString;
                    FieldByName('IsNew').AsString := 'N';
                    Post;
               end;
               Next;
          end;
     end;
     RefreshQuery(Query_List, gs_temppath);
     LoadDataInRichEdit(Query_List, MyRichEdit, 'Finding_RIch', Query_List.FieldByName('Reporttitle_Rich').AsString);
end;

procedure TFrame_ClinicalPathFinding.RichEdit_DefaultFindingEnter(Sender: TObject);
begin
     Ps_RichName := 'Default';
     RichEdit_DefaultFinding.Margins.Left := Pi_Length;
end;

procedure TFrame_ClinicalPathFinding.RichEdit_DefaultFindingSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1, RichEdit_DefaultFinding, [fsBold]);
     GetFontAttribute(ToolButton2, RichEdit_DefaultFinding, [fsItalic]);
     GetFontAttribute(ToolButton3, RichEdit_DefaultFinding, [fsUnderline]);
     GetFontAttribute(ToolButton7, RichEdit_DefaultFinding, [fsStrikeOut]);
     GetFontSize(ComboBox1, RichEdit_DefaultFinding);
     GetFontColor(ButtonColor1, RichEdit_DefaultFinding);
     GetFontName(ComboBox2, RichEdit_DefaultFinding);
end;

procedure TFrame_ClinicalPathFinding.RichEdit_TitleEnter(Sender: TObject);
begin
     Ps_RichName := 'Title';
end;

procedure TFrame_ClinicalPathFinding.RichEdit_TitleSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1, RichEdit_Title, [fsBold]);
     GetFontAttribute(ToolButton2, RichEdit_Title, [fsItalic]);
     GetFontAttribute(ToolButton3, RichEdit_Title, [fsUnderline]);
     GetFontAttribute(ToolButton7, RichEdit_Title, [fsStrikeOut]);
     GetFontSize(ComboBox1, RichEdit_Title);
     GetFontColor(ButtonColor1, RichEdit_Title);
     GetFontName(ComboBox2, RichEdit_Title);
end;

procedure TFrame_ClinicalPathFinding.SaveReportFooter;
Var
     i: Integer;
     DocID: String;
begin
     DeletePatientReportFooter(gs_SampleNo,ps_DepType);
     for i := 0 to Clb_ReportFooter.Items.Count - 1 do
     begin
          if Clb_ReportFooter.State[i] = cbChecked then
          begin
               SavePatientReportFooter(gs_SampleNo,ps_DepType, StrToInt(Arr_CLB_FooterDocID[i, 0]));
          end;
     end;
end;

procedure TFrame_ClinicalPathFinding.SpeedButton17MouseEnter(Sender: TObject);
begin
     Memo_Remarks.BringToFront;
     Memo_Remarks.Visible := True;
end;

procedure TFrame_ClinicalPathFinding.SpeedButton17MouseLeave(Sender: TObject);
begin
     Memo_Remarks.Visible := false;
end;

procedure TFrame_ClinicalPathFinding.SpeedButton1Click(Sender: TObject);
Var
     Qry: TQuery;
     S: TStringStream;
begin
     Qry := TQuery.Create(Nil);
     S := TStringStream.Create;
     with Qry do
     begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          SQL.Add('Update ClinicalFindings Set');
          SQL.Add('DisplayOrder=' + #39 + SpinEdit1.Text + #39);
          SQL.Add(',FindingTitle=' + #39 + Edit_FindingTitle.Text + #39);
          RichEdit_DefaultFinding.Lines.SaveToStream(S);
          SQL.Add(',Finding=' + #39 + Trim(StringReplace(RichEdit_DefaultFinding.Lines.Text, '''', '''''', [rfReplaceAll])) + #39);
          SQL.Add(',Finding_Rich=' + #39 + StringReplace(Trim(S.DataString), '''', '''''', [rfReplaceAll]) + #39);
          s.Clear;
          RichEdit_Title.Lines.SaveToStream(S);
          SQL.Add(',ReportTitle_Rich=' + #39 + StringReplace(Trim(S.DataString), '''', '''''', [rfReplaceAll]) + #39);
          RichEdit_Title.PlainText:=True;
          SQL.Add(',ReportTitle=' + #39 + StringReplace(Trim(RichEdit_Title.Text), '''', '''''', [rfReplaceAll]) + #39);
          SQL.Add('Where TempID=' + IntToStr(Pi_TempID));
          ExecSQL;
     end;
     Qry.Free;
     SpeedButton1.Visible := false;
     RefreshQuery(Query_List, gs_temppath);
     LoadDataInRichEdit(Query_List, MyRichEdit, 'Finding_RIch', Query_List.FieldByName('Reporttitle_Rich').AsString);
end;

procedure TFrame_ClinicalPathFinding.SpeedButton3Click(Sender: TObject);
begin
     DBLC_ReportType.Enabled := True;
end;

procedure TFrame_ClinicalPathFinding.SpeedButtonDClick(Sender: TObject);
var
  I: Integer;
begin
i:=0;
    {RichEdit_DefaultFinding.SelAttributes.Style := [fsBold];
     RichEdit_DefaultFinding.SelAttributes.Size := RichEdit_DefaultFinding.SelAttributes.Size+10;
     if Ps_RichName = 'Default' then
          SetFontAttribute(ToolButton2, RichEdit_DefaultFinding, [fsbold]); }
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);
     RichEdit_DefaultFinding.Text:=RichEdit_DefaultFinding.Text+char(061);

     //RichEdit_DefaultFinding.SelStart:=length(RichEdit_DefaultFinding.Text);
end;

procedure TFrame_ClinicalPathFinding.Tbtn_FontClick(Sender: TObject);
begin
     if FontDialog1.Execute then
     begin
          if Ps_RichName = 'Title' then
          begin
               RichEdit_Title.SelAttributes.Style := FontDialog1.Font.Style;
               RichEdit_Title.SelAttributes.Name := FontDialog1.Font.Name;
               RichEdit_Title.SelAttributes.Color := FontDialog1.Font.Color;
               RichEdit_Title.SelAttributes.Size := FontDialog1.Font.Size;
          end
          else if Ps_RichName = 'Default' then
          begin
               RichEdit_DefaultFinding.SelAttributes.Style := FontDialog1.Font.Style;
               RichEdit_DefaultFinding.SelAttributes.Name := FontDialog1.Font.Name;
               RichEdit_DefaultFinding.SelAttributes.Color := FontDialog1.Font.Color;
               RichEdit_DefaultFinding.SelAttributes.Size := FontDialog1.Font.Size;
          end;

     end;
end;

procedure TFrame_ClinicalPathFinding.ToolButton10Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taLeftJustify)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taLeftJustify);
end;

procedure TFrame_ClinicalPathFinding.ToolButton11Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taRightJustify)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taRightJustify);
end;

procedure TFrame_ClinicalPathFinding.ToolButton1Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton1, RichEdit_Title, [fsBold])
     else if Ps_RichName = 'Default' then
          SetFontAttribute(ToolButton1, RichEdit_DefaultFinding, [fsBold]);
end;

procedure TFrame_ClinicalPathFinding.ToolButton2Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton2, RichEdit_Title, [fsItalic])
     else if Ps_RichName = 'Default' then
          SetFontAttribute(ToolButton2, RichEdit_DefaultFinding, [fsItalic]);
end;

procedure TFrame_ClinicalPathFinding.ToolButton3Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton3, RichEdit_Title, [fsUnderline])
     else if Ps_RichName = 'Default' then
          SetFontAttribute(ToolButton3, RichEdit_DefaultFinding, [fsUnderline]);
end;

procedure TFrame_ClinicalPathFinding.ToolButton7Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton7, RichEdit_Title, [fsStrikeOut])
     else if Ps_RichName = 'Default' then
          SetFontAttribute(ToolButton7, RichEdit_DefaultFinding, [fsStrikeOut]);
end;

procedure TFrame_ClinicalPathFinding.ToolButton8Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taCenter)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taCenter);
end;

end.
