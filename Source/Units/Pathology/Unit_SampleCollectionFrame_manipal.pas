unit Unit_SampleCollectionFrame_manipal;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Grids, DBGrids, Buttons, Spin, ExtCtrls, CheckLst, ComCtrls,
     fxn, dm, serverdate,Unit_Master,
     DBCtrls, OleCtrls, DateEditXControl_TLB, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, TeeProcs, TeeDraw3D, ActnMan, ActnColorMaps;

type
     TFrame_SampleCollection_manipal = class(TFrame)
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          TabSheet3: TTabSheet;
          DBGrid2: TDBGrid;
          Label2: TLabel;
          Label7: TLabel;
          SpeedButton4: TSpeedButton;
          Label1: TLabel;
          Label17: TLabel;
          SpeedButton1: TSpeedButton;
          Label14: TLabel;
          Label15: TLabel;
          Label18: TLabel;
          Panel2: TPanel;
          BB_Save: TBitBtn;
          Edit_SC_HosNo: TEdit;
          SpinEdit1: TSpinEdit;
          DBGrid1: TDBGrid;
          CB_PreSampleNO: TCheckBox;
          CLB_TestName: TCheckListBox;
          CLB_CollectedSample: TCheckListBox;
          GroupBox1: TGroupBox;
          Label16: TLabel;
          lbl_Hosno: TLabel;
          Label3: TLabel;
          Lbl_Name: TLabel;
          Label5: TLabel;
          Lbl_AgeSex: TLabel;
          Label8: TLabel;
          Lbl_Address: TLabel;
          Label10: TLabel;
          Lbl_ContactNo: TLabel;
          Label12: TLabel;
          Lbl_BillNo: TLabel;
          Panel1: TPanel;
          BB_CollectSample: TBitBtn;
          GroupBox2: TGroupBox;
          Label20: TLabel;
          SpeedButton2: TSpeedButton;
          Label21: TLabel;
          SpeedButton3: TSpeedButton;
          CB_Searchbydate: TCheckBox;
          Dex_From: TDateEditX;
          Dex_To: TDateEditX;
          GroupBox4: TGroupBox;
          Label19: TLabel;
          Edit_SearchTBC: TEdit;
          Label22: TLabel;
          ComboBox1: TComboBox;
          Label23: TLabel;
          ComboBox2: TComboBox;
          Label24: TLabel;
          ComboBox3: TComboBox;
          Label25: TLabel;
          DBLCB_Religion: TDBLookupComboBox;
          Dbgrid5: TDBGrid;
          Edit3: TEdit;
          Edit4: TEdit;
          Edit5: TEdit;
          Edit6: TEdit;
          Edit7: TEdit;
          Edit8: TEdit;
          Edit9: TEdit;
          Edit10: TEdit;
          Edit11: TEdit;
          Edit12: TEdit;
          Panel4: TPanel;
          BB_Modify: TBitBtn;
          Edit14: TEdit;
          Edit15: TEdit;
          Query_TobeCollected: TOraQuery;
          DS_TobeCollected: TDataSource;
          BB_CollectedList: TBitBtn;
          DS_SampleCollected: TDataSource;
          Query_SampleCollected: TOraQuery;
          Cb_TestNameAll: TCheckBox;
          CB_CollectedSampleAll: TCheckBox;
          Edit_PreviousSampleNo: TEdit;
          Timer: TTimer;
          Label6: TLabel;
          Shape1: TShape;
          Shape2: TShape;
          Label9: TLabel;
          Panel_Head: TPanel;
          GB_PatientSearch: TGroupBox;
          Label26: TLabel;
          Label27: TLabel;
          Label28: TLabel;
          Label29: TLabel;
          Label30: TLabel;
          Edit_SearchCollectedList: TEdit;
          ComboBox4: TComboBox;
          ComboBox5: TComboBox;
          ComboBox6: TComboBox;
          DBLookupComboBox1: TDBLookupComboBox;
          GB_Option: TGroupBox;
          Cb_Halfpage: TCheckBox;
          CLB_Department: TCheckListBox;
          GB_Searchbydate: TGroupBox;
          Label11: TLabel;
          SpeedButton6: TSpeedButton;
          Label13: TLabel;
          SpeedButton7: TSpeedButton;
          CB_Date: TCheckBox;
          Dex_CLFrom: TDateEditX;
          Dex_CLTo: TDateEditX;
          GroupBox6: TGroupBox;
          Label31: TLabel;
          Label32: TLabel;
          Se_CLDays: TSpinEdit;
          BB_ValidTestCancel: TSpeedButton;
          BB_RegisterMonitor: TSpeedButton;
          BB_ReportRemaining: TSpeedButton;
          BB_SampleRegister: TSpeedButton;
          DBGrid3: TDBGrid;
          DS_samplecollectedright: TDataSource;
          Query_samplecollectedright: TOraQuery;
          DBGrid4: TDBGrid;
          Query_tobecollectedr: TOraQuery;
          DS_tobecolletedr: TDataSource;
          SpeedButton5: TSpeedButton;
          se_printcount: TSpinEdit;
          Label4: TLabel;
          cb_preview: TCheckBox;
          BB_Refresh: TBitBtn;
          Label33: TLabel;
          lbl_QueueNo: TLabel;
          Label35: TLabel;
          lbl_PatientName: TLabel;
          SpeedButton8: TSpeedButton;
          SpeedButton9: TSpeedButton;
          Bevel1: TBevel;
          SpeedButton10: TSpeedButton;
          StringGrid1: TStringGrid;
          GroupBox3: TGroupBox;
          Label34: TLabel;
          Label36: TLabel;
          Se_DaysTBC: TSpinEdit;
          bb_RefreshTobecoll: TBitBtn;
          Shape3: TShape;
          Label37: TLabel;
          Cb_HideIndication: TCheckBox;
          Cb_SampleSource: TCheckBox;
          lbl_TestCaption: TLabel;
          Cb_HideRange: TCheckBox;
          Cb_SingleDep: TCheckBox;
          Button1: TButton;
          Button2: TButton;
          TwilightColorMap1: TTwilightColorMap;
          Label38: TLabel;
          DBGrid6: TDBGrid;
          DS_SampleNoList: TDataSource;
          Query_SampleNoList: TOraQuery;
          Shape4: TShape;
          Label39: TLabel;
          Cb_NoResult: TCheckBox;
    Button3: TButton;
    Button4: TButton;
    Shape5: TShape;
    Shape6: TShape;
    cb_tick: TCheckListBox;
    GroupBox5: TGroupBox;
    lbl_msg: TLabel;
    lbl_PatientNameSR: TLabel;
    lbl_RunNo: TLabel;
    Label41: TLabel;
    BB_Receive: TButton;
    Le_SampleNo: TLabeledEdit;
    Rb_Receive: TRadioButton;
    Rb_UndoReceive: TRadioButton;
    Cb_Manual: TCheckBox;
    edit_dailyno: TEdit;
    Edit_CheckDailyNo: TLabeledEdit;
    Button5: TButton;
    Cb_AutoDailyNo: TCheckBox;
    le_UndoSample: TLabeledEdit;
    BB_UndoSample: TButton;
          procedure bb_RefreshTobecollClick(Sender: TObject);
          procedure Query_TobeCollectedAfterScroll(DataSet: TDataSet);
          procedure BB_CollectSampleClick(Sender: TObject);
          procedure DBGrid1CellClick(Column: TColumn);
          procedure BB_CollectedListClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure Query_SampleCollectedAfterScroll(DataSet: TDataSet);
          procedure BB_ModifyClick(Sender: TObject);
          procedure Cb_TestNameAllClick(Sender: TObject);
          procedure CB_CollectedSampleAllClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure Dex_FromEnter(Sender: TObject);
          Procedure TobeCollectedAfterScroll(DataSet: TDataSet);
          procedure Dbgrid5DblClick(Sender: TObject);
          procedure DBGrid2DblClick(Sender: TObject);
          procedure TabSheet2Show(Sender: TObject);
          procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure BB_RefreshClick(Sender: TObject);
          procedure Dbgrid5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchCollectedListChange(Sender: TObject);
          procedure Edit_SearchTBCChange(Sender: TObject);
          procedure DBGrid3CellClick(Column: TColumn);
          procedure DBGrid4CellClick(Column: TColumn);
          procedure Dex_CLFromEnter(Sender: TObject);
          procedure Cb_HalfpageClick(Sender: TObject);
          procedure SpeedButton5Click(Sender: TObject);
          procedure DBGrid2CellClick(Column: TColumn);
          procedure Dex_CLToExit(Sender: TObject);
          procedure Edit_SearchTBCKeyPress(Sender: TObject; var Key: Char);
          procedure SpeedButton9Click(Sender: TObject);
          procedure SpeedButton8Click(Sender: TObject);
          procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
          procedure SpeedButton10Click(Sender: TObject);
          procedure Cb_HideIndicationClick(Sender: TObject);
          procedure Edit9Change(Sender: TObject);
          procedure Edit4Change(Sender: TObject);
          procedure Cb_SampleSourceClick(Sender: TObject);
          procedure Se_CLDaysChange(Sender: TObject);
          procedure cb_tickClick(Sender: TObject);
          procedure Cb_HideRangeClick(Sender: TObject);
          procedure Cb_SingleDepClick(Sender: TObject);
          procedure TabSheet1Show(Sender: TObject);
          procedure Edit_SearchCollectedListKeyPress(Sender: TObject; var Key: Char);
          procedure Button3Click(Sender: TObject);
          procedure CB_PreSampleNOClick(Sender: TObject);
          procedure DBGrid6DblClick(Sender: TObject);
          procedure Cb_NoResultClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB_ReceiveClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BB_UndoSampleClick(Sender: TObject);
    procedure Le_SampleNoKeyPress(Sender: TObject; var Key: Char);
    procedure edit_dailynoKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_CheckDailyNoKeyPress(Sender: TObject; var Key: Char);
    procedure le_UndoSampleKeyPress(Sender: TObject; var Key: Char);
    procedure Cb_ManualClick(Sender: TObject);
    procedure Cb_AutoDailyNoClick(Sender: TObject);
     private
          Ps_TodaysDate: String;
          Arr_PTestNameID: Array of String;
          { Private declarations }
          Procedure OntimerEvent(Sender: TObject);
          Procedure PrintSticker;
          Procedure ReprintSticker(BillNo:String);
          Procedure GetQueueList;
          Procedure QryQueueList_AfterScroll(DataSet: TDataSet);
          Procedure GetQueue(Val: String);
          procedure ReceiveSample;
          function GetNextDailyNo(DepID,Date:String):String;
          function DailyNoExist(Sampleno,DailyNo,DepID,Date:String): Boolean;
     public
          { Public declarations }
          constructor Create(AOwner: TComponent); Override;
     end;

Var
     QryBillList: TOraQuery;
     DSQryBillList: TDataSource;
     QryQueueList: TOraQuery;

implementation

uses Unit_QrSticker, Unit_SampleReceive, Unit_ServiceDetail;

{$R *.dfm}

procedure TFrame_SampleCollection_manipal.BB_SaveClick(Sender: TObject);
Var
     i, li_PatientTestID: Integer;
     ls_date, SAMPLENO: String;
begin
     if gi_datesystem = 0 then
          ls_date := TodaysDateVS
     else
          ls_date := TodaysDate;
     if CB_PreSampleNO.Checked = true then
     begin
          SAMPLENO := Edit_PreviousSampleNo.Text;
          if SAMPLENO = '' then
               SAMPLENO := GetNextSampleNo;
     end
     else
          SAMPLENO := GetNextSampleNo;

     if (IsValidToSampleColnIntermsofDeposit(QryBillList.FieldByName('BillNo').AsString) = False) and
       (Copy(QryBillList.FieldByName('BillNo').AsString, 1, 2) = 'TP') then
     Begin
          Gi_ClinicalDepID := GetClinicalDepID(QryBillList.FieldByName('BillNo').AsString);
          if (Gi_ClinicalDepID = 2) or (Gi_ClinicalDepID = 93) then
          begin
               if Not(MessageDlg('Insufficient Deposit Amount, Do you want to Continue', mtWarning, [mbok], 0) = mrYes) then
                    Exit;
          end
          else
          begin
               MessageDlg('Sorry ! Sample Cannot Be Collect Due To The Insufficient Deposit.', mtWarning, [mbok], 0);
               Exit;
          end;
     End;

     try
          DM_Hospital.DB.StartTransaction;
          for i := 0 to CLB_TestName.Items.Count - 1 do
          begin
               if CLB_TestName.State[i] = cbChecked then
               begin
                    SaveSampleCollection(Arr_SampleTobeCollected[i, 0], gi_PatientID, gi_UserID, Gs_BillNo, SAMPLENO, ls_date, TodaysTime,'');
                    li_PatientTestID := Arr_SampleTobeCollected[i, 0];
               end;
          end;
          DM_Hospital.DB.Commit;
     except
          DM_Hospital.DB.Rollback;
     end;
     // Edit_PreviousSampleNo.Text := GetSampleNoByDate(gi_PatientID, li_PatientTestID, '');
     Edit_PreviousSampleNo.Text := GetPreviousSampleNo(gi_PatientID);
     LoadSampleTobeCollected(CLB_TestName, Gs_BillNo);
     LoadCollectedSample(CLB_CollectedSample, Gs_BillNo);
     // Query_TobeCollected.Close;
     // Query_TobeCollected.Open;

     // Query_SampleCollected.Close;
     // Query_SampleCollected.Sql.SaveToFile('C:\SampleColl.Txt');
     // Query_SampleCollected.Open;

     Gs_BillNo := Lbl_BillNo.Caption;

     QryBillList.Close;
     QryBillList.Open;
     // CB_PreSampleNO.Checked := true;
     // ClearVariable;
end;

procedure TFrame_SampleCollection_manipal.BB_UndoSampleClick(Sender: TObject);
Var
     Qry:TOraQuery;
     PatientTestID,PatientID,PatientName:String;
begin
     if MessageDlg('Are you sure to undo received sample?',mtConfirmation,mbYesNo,0)=mrYes then
     begin
          if GetSampleReceivedDate(le_UndoSample.Text)='' then
          begin
               ShowMessage('Sample not received yet');
               Exit;
          end;

          if Trim(GetFindingPostDate(le_UndoSample.Text))='' then
          begin
               Qry:=TOraQuery.Create(Nil);
               with Qry do
               begin
                    SQL.Clear;
                    SQL.Add('Select SC.PatientTestID,Sc.PatientID,(Select PatientName from '+gs_Hos_DB_UserName+'.PatientMain Where PatientID=' +
                              'Sc.PatientID)PatientName ');
                    Sql.Add('from SampleCollection sc,'+gs_Hos_DB_UserName+'.PatientTest Pt');
                    Sql.Add('Where Sc.Patienttestid=pt.patienttestid');
                    Sql.Add('And Sc.SampleNo='+#39+le_UndoSample.Text+#39);
                    Sql.Add('And Pt.DepID in ('+gs_UserDepId+')');
                    SQL.Add('And Sc.SampleReceivedBy is not Null');
                    Open;
                    PatientTestID:='';
                    while not eof do
                    begin
                         if PatientTestID='' then
                              PatientTestID:=FieldByName('PatientTestID').AsString
                         else
                              PatientTestID:=PatientTestID+','+FieldByName('PatientTestID').AsString;
                         Next;
                    end;
                    PatientID:=FieldByName('PatientID').AsString;
                    PatientName:=FieldByName('PatientName').AsString;

                    Try
                    DM_Hospital.DB.StartTransaction;
                    SQL.Clear;
                    SQL.Add('Update SampleCollection Set');
                    SQL.Add('SampleReceivedDate=''''');
                    SQL.Add(',SampleReceivedTime=''''');
                    SQL.Add(',SampleReceivedBy=''''');
                    SQL.Add('Where PatientTestID in ('+PatientTestID+')');
                    ExecSQL;

                    SQL.Clear;
                    SQL.Add('Update '+gs_Hos_DB_UserName+'.PatientTest Set');
                    SQL.Add('TestProgressStatus=2');
                    Sql.Add(',DailyNo=''''');
                    SQL.Add('Where PatientTestID in ('+PatientTestID+')');
                    ExecSQL;
                    lbl_msg.Caption:=Le_SampleNo.Text+' Received Undo';
                    lbl_PatientNameSR.Caption:=PatientID+' - '+PatientName;
                    DM_Hospital.DB.Commit;
                    ShowDoneMessage;
                    Except
                    DM_Hospital.DB.Rollback;
                    End;
               end;
          end
          else
          begin
               ShowMessage('Result already entered cannot undo sample');
          end;
     end;
     Qry.Free;
     le_UndoSample.Clear;
     Cb_ManualClick(Sender);
     le_UndoSample.SetFocus;

end;

procedure TFrame_SampleCollection_manipal.Button1Click(Sender: TObject);
begin
//     if not CheckAccess('UPLOAD RESULT') then
//     begin
//          ShowMessage('Access Denied');
//          exit;
//     end;
//     try
//          Form_ImportFromExcel := TForm_ImportFromExcel.Create(Nil);
//          Form_ImportFromExcel.ShowModal;
//     finally
//          Form_ImportFromExcel.Free;
//     end;
end;

procedure TFrame_SampleCollection_manipal.Button3Click(Sender: TObject);
begin
     try
          Form_SampleReceive := TForm_SampleReceive.Create(Nil);
          Form_SampleReceive.ShowModal;
     finally
          Form_SampleReceive.Free;
          bb_RefreshTobecollClick(Sender);
     end;
end;

procedure TFrame_SampleCollection_manipal.Button4Click(Sender: TObject);
begin
     Try
          Form_ServiceDetail:=TForm_ServiceDetail.Create(Nil);
          Form_ServiceDetail.ShowModal;
     Finally
          Form_ServiceDetail.Free;
     End;
end;

procedure TFrame_SampleCollection_manipal.Button5Click(Sender: TObject);
begin
     lbl_RunNo.Caption:=GetDailyNoFromSampleNo(Edit_CheckDailyNo.Text,lbl_PatientNameSR);
     lbl_msg.Caption:=Edit_CheckDailyNo.Text;
     Edit_CheckDailyNo.Clear;
     Cb_ManualClick(Sender);
     Edit_CheckDailyNo.SetFocus;
end;

procedure TFrame_SampleCollection_manipal.BB_ModifyClick(Sender: TObject);
Var
     ls_date: String;
begin
     ls_date := Query_SampleCollected.FieldByName('TestDate').AsString;
     PageControl1.Pages[0].TabVisible := False;
     PageControl1.Pages[1].TabVisible := False;
     PageControl1.Pages[2].TabVisible := true;
     LoadPatientData(gi_PatientID);
     Edit_SC_HosNo.Text := IntToStr(gi_PatientID);
     lbl_Hosno.Caption := IntToStr(gi_PatientID);
     Lbl_Name.Caption := Gs_PatientName;
     //Lbl_AgeSex.Caption := Gs_Age + ' ' + Copy(Gs_agetype, 1, 1) + ' /' + Copy(Gs_Gender, 1, 1);
     Lbl_AgeSex.Caption :=Gs_agegender;
     Lbl_Address.Caption := Gs_Address;
     Lbl_ContactNo.Caption := Gs_PhoneNo;
     Lbl_BillNo.Caption := Gs_BillNo;
     QryBillList := TOraQuery.Create(nil);
     DSQryBillList := TDataSource.Create(nil);
     DSQryBillList.DataSet := QryBillList;
     with QryBillList do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select distinct billno,TestDate from Vw_Sample_Collected');
          SQL.Add('Where Patientid=' + IntToStr(gi_PatientID));
          SQL.Add('And BillNo=' + #39 + Gs_BillNo + #39);
          Open;
          AfterScroll := TobeCollectedAfterScroll;
     end;
     with DBGrid1 do
     begin
          DataSource := DSQryBillList;
          Columns[0].FieldName := 'TestDate';
          Columns[1].FieldName := 'Billno';
     end;
     LoadSampleTobeCollected(CLB_TestName, Gs_BillNo);
     LoadCollectedSample(CLB_CollectedSample, Gs_BillNo);
     // Edit_PreviousSampleNo.Text := GetSampleNoByDate(gi_PatientID, 0, ls_date);
     // CB_PreSampleNO.Checked := true;
     Edit_PreviousSampleNo.Text := '';
end;

procedure TFrame_SampleCollection_manipal.BB_ReceiveClick(Sender: TObject);
begin
     ReceiveSample;
     Cb_ManualClick(Sender);
     edit_dailyno.Clear;
end;

procedure TFrame_SampleCollection_manipal.BB_RefreshClick(Sender: TObject);
Var
     i: Integer;
     depid: string;
begin
     Gb_ShowTestWithoutResult := true;

     Se_CLDays.Text := IntToStr(Gi_NoofDays);
     if gi_datesystem = 0 then
          Ps_TodaysDate := TodaysDateVS
     else
          Ps_TodaysDate := TodaysDate;
     gs_From := Dex_CLFrom.Text;
     gs_to := Dex_CLTo.Text;
     for i := 0 to CLB_Department.Items.Count - 1 do
     begin
          if CLB_Department.State[i] = cbChecked then
          begin
               if depid = '' then
                    depid := Arr_CLB_DepartmentID[i, 0]
               else
                    depid := depid + ',' + Arr_CLB_DepartmentID[i, 0];
          end;
          Gs_SelectedDepList := depid;
     end;

     with Query_samplecollectedright do
     begin
          Close;
          Session := DM_Hospital.DB;
          if StrToInt(Se_CLDays.Text) > 0 then
               SQL[1] := 'Where Testdate> TO_CHAR(SYSDATE-' + Se_CLDays.Text + ',''YYYY/MM/DD'')'
          else
          begin
               if CB_Date.Checked = true then
                    SQL[1] := 'Where Testdate Between ' + #39 + gs_From + #39 + ' And ' + #39 + gs_to + #39
               else
                    SQL[1] := 'Where Testdate =' + #39 + Ps_TodaysDate + #39;
          end;
          if depid <> '' then
               SQL[2] := 'And DepID in (' + depid + ')'
          else
               SQL[2] := 'And 99=99';

          // if gs_DepType='PATHOLOGY' then
          // SQL[3]:='And (DepType='+#39+gs_DepType+#39+' Or ReportByLab=''Y'') '
          // else
          SQL[3] := 'And DepID in ('+gs_UserDepId+') And DepType=' + #39 + gs_DepType + #39;

          Open;
     end;
     if Query_samplecollectedright.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := Query_samplecollectedright.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;
     with Query_SampleCollected do
     begin
          Close;
          if StrToInt(Se_CLDays.Text) > 0 then
               SQL[1] := 'Where Testdate> TO_CHAR(SYSDATE-' + Se_CLDays.Text + ',''YYYY/MM/DD'')'
          else
          begin
               if CB_Date.Checked = true then
                    SQL[1] := 'Where Testdate Between ' + #39 + gs_From + #39 + ' And ' + #39 + gs_to + #39
               else
                    SQL[1] := 'Where Testdate =' + #39 + Ps_TodaysDate + #39;
          end;
          if depid <> '' then
               SQL[2] := 'And DepID in (' + depid + ')'
          else
               SQL[2] := 'And 99=99';
          SQL[4] := 'And PatientId=' + IntToStr(gi_PatientID);

          // if gs_DepType='PATHOLOGY' then
          // SQL[5]:='And (DepType='+#39+gs_DepType+#39+' Or ReportByLab=''Y'') '
          // else
          SQL[5] := 'And DepID in ('+gs_UserDepId+') And DepType=' + #39 + gs_DepType + #39;
          if Cb_NoResult.Checked then
          begin
               SQL[6] := 'And TestProgressStatus=' + IntToStr(gi_SampleColl);
               Gb_ShowTestWithoutResult := true;
          end
          else
          begin
               SQL[6] := 'And 99=99';
               Gb_ShowTestWithoutResult := False;
          end;

          Open;
          cb_tick.Items.Clear;
          i := 0;
          SetLength(Arr_PTestNameID, RecordCount);
          while not eof do
          begin
               Arr_PTestNameID[i] := FieldByName('PatientTestID').AsString;
               cb_tick.Items.Add('');
               cb_tick.Height := cb_tick.Height + 20;
               Inc(i);
               Next;
          end;
     end;
end;

procedure TFrame_SampleCollection_manipal.Dbgrid5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = vk_f1 then
          BB_CollectSampleClick(Sender);
     if Key = vk_f2 then
          BB_CollectedListClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.DBGrid6DblClick(Sender: TObject);
begin
     if CB_PreSampleNO.Checked = true then
     Begin
          Edit_PreviousSampleNo.Text := Query_SampleNoList.FieldByName('SampleNo').AsString;
          Edit_PreviousSampleNo.SetFocus;
     End;
end;

procedure TFrame_SampleCollection_manipal.BB_CollectedListClick(Sender: TObject);
begin
     PageControl1.Pages[0].TabVisible := False;
     PageControl1.Pages[1].TabVisible := true;
     PageControl1.Pages[2].TabVisible := False;
     Dex_CLFrom.Text := gs_From;
     Dex_CLTo.Text := gs_to;
     SpeedButton6.Caption := gs_DateCaption;
     SpeedButton7.Caption := gs_DateCaption;
     BB_RefreshClick(Sender);
     Timer.Enabled := true;
end;

procedure TFrame_SampleCollection_manipal.Dbgrid5DblClick(Sender: TObject);
begin
     gi_PatientID := Query_TobeCollected.FieldByName('PatientId').AsInteger;
     BB_CollectSampleClick(Sender);
     Le_SampleNo.SetFocus;
     Cb_ManualClick(Sender);
     Le_SampleNo.SelStart:=Length(Le_SampleNo.Text);
end;

procedure TFrame_SampleCollection_manipal.BB_CollectSampleClick(Sender: TObject);
Var
     ls_date: String;
     Column: TColumn;
begin
     gi_PatientID := Query_tobecollectedr.FieldByName('PatientId').AsInteger;
     if gi_datesystem = 0 then
          ls_date := TodaysDateVS
     else
          ls_date := TodaysDate;
     PageControl1.Pages[0].TabVisible := False;
     PageControl1.Pages[1].TabVisible := False;
     PageControl1.Pages[2].TabVisible := true;
     LoadPatientData(gi_PatientID);
     Edit_SC_HosNo.Text := IntToStr(gi_PatientID);
     lbl_Hosno.Caption := IntToStr(gi_PatientID);
     Lbl_Name.Caption := Gs_PatientName;
     //Lbl_AgeSex.Caption := Gs_Age + ' ' + Copy(Gs_agetype, 1, 1) + ' /' + Copy(Gs_Gender, 1, 1);
     Lbl_AgeSex.Caption :=gs_agegender;
     Lbl_Address.Caption := Gs_Address;
     Lbl_ContactNo.Caption := Gs_PhoneNo;
     Lbl_BillNo.Caption := Gs_BillNo;
     QryBillList := TOraQuery.Create(nil);
     DSQryBillList := TDataSource.Create(nil);
     DSQryBillList.DataSet := QryBillList;
     with QryBillList do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select distinct patientid,billno,testdate,testtime from Vw_Sample_To_be_Collected');
          SQL.Add('Where Patientid=' + IntToStr(gi_PatientID));
          SQL.Add('And DepID in ('+gs_UserDepId+')');
          Open;
          AfterScroll := TobeCollectedAfterScroll;
     end;
     with DBGrid1 do
     begin
          DataSource := DSQryBillList;
          Columns[0].FieldName := 'TestDate';
          Columns[1].FieldName := 'Billno';
     end;
     LoadSampleTobeCollected(CLB_TestName, Gs_BillNo);
     DBGrid1CellClick(Column);
     LoadCollectedSample(CLB_CollectedSample, Gs_BillNo);
     Cb_TestNameAll.Checked := true;
     Cb_TestNameAllClick(Sender);
     Edit_PreviousSampleNo.Text := GetSampleNoByDate(gi_PatientID, 0, ls_date);
     Edit_PreviousSampleNo.Text := '';





     { if Edit_PreviousSampleNo.Text <> '' then
       CB_PreSampleNO.Checked := true; }

end;

procedure TFrame_SampleCollection_manipal.Cb_AutoDailyNoClick(Sender: TObject);
begin
     if MessageDlg('Are you sure to use automatic Daily no.?',mtConfirmation,mbYesNo,0)=mrYes then
     begin
          if Cb_AutoDailyNo.Checked then
          begin
               edit_dailyno.Visible:=False;
               Label41.Visible:=False;
          end
          else
          begin
               edit_dailyno.Visible:=True;
               Label41.Visible:=True;
          end;
     end;
end;

procedure TFrame_SampleCollection_manipal.CB_CollectedSampleAllClick(Sender: TObject);
Var
     i: Integer;
begin
     if CB_CollectedSampleAll.Checked = true then
     begin
          for i := 0 to CLB_CollectedSample.Items.Count - 1 do
               CLB_CollectedSample.State[i] := cbChecked;
     end
     else
     begin
          for i := 0 to CLB_CollectedSample.Items.Count - 1 do
               CLB_CollectedSample.State[i] := cbUnchecked;
     end;
end;

procedure TFrame_SampleCollection_manipal.Cb_TestNameAllClick(Sender: TObject);
Var
     i: Integer;
begin
     if Cb_TestNameAll.Checked = true then
     begin
          for i := 0 to CLB_TestName.Items.Count - 1 do
               CLB_TestName.State[i] := cbChecked;
     end
     else
     begin
          for i := 0 to CLB_TestName.Items.Count - 1 do
               CLB_TestName.State[i] := cbUnchecked;
     end;
end;

procedure TFrame_SampleCollection_manipal.cb_tickClick(Sender: TObject);
Var
     i: Integer;
begin
     Gs_SelectedPatientTestID := '';
     for i := 0 to cb_tick.Items.Count - 1 do
     begin
          if cb_tick.State[i] = cbChecked then
               if Gs_SelectedPatientTestID = '' then
                    Gs_SelectedPatientTestID := Arr_PTestNameID[i]
               else
                    Gs_SelectedPatientTestID := Gs_SelectedPatientTestID + ',' + Arr_PTestNameID[i];
     end;
end;

procedure TFrame_SampleCollection_manipal.Cb_HalfpageClick(Sender: TObject);
begin
     if Cb_Halfpage.Checked = true then
          gb_isHalfPage := true
     else
          gb_isHalfPage := False;

end;

procedure TFrame_SampleCollection_manipal.Cb_HideIndicationClick(Sender: TObject);
begin
     if Cb_HideIndication.Checked then
          gb_HideIndication := true
     else
          gb_HideIndication := False;
end;

procedure TFrame_SampleCollection_manipal.Cb_HideRangeClick(Sender: TObject);
begin
     if Cb_HideRange.Checked then
          gb_HideUnitFlagRefrange := true
     else
          gb_HideUnitFlagRefrange := False;
end;

procedure TFrame_SampleCollection_manipal.Cb_ManualClick(Sender: TObject);
begin
     if Cb_Manual.Checked then
     begin
          Le_SampleNo.Text:=Copy(GetNextSampleNo,1,8);
          le_UndoSample.Text:=Copy(GetNextSampleNo,1,8);
          Edit_CheckDailyNo.Text:=Copy(GetNextSampleNo,1,8);
     end
     else
          Le_SampleNo.Clear;
end;

procedure TFrame_SampleCollection_manipal.Cb_NoResultClick(Sender: TObject);
Var
     Column: TColumn;
begin
     DBGrid3CellClick(Column);
end;

procedure TFrame_SampleCollection_manipal.CB_PreSampleNOClick(Sender: TObject);
begin
     if CB_PreSampleNO.Checked = False then
          Edit_PreviousSampleNo.Text := '';
end;

procedure TFrame_SampleCollection_manipal.Cb_SampleSourceClick(Sender: TObject);
begin
     if Cb_SampleSource.Checked then
          gb_HideSource := true
     else
          gb_HideSource := False;
end;

procedure TFrame_SampleCollection_manipal.Cb_SingleDepClick(Sender: TObject);
begin
     if Cb_SingleDep.Checked then
          gb_SingleDep := true
     else
          gb_SingleDep := False;

end;

constructor TFrame_SampleCollection_manipal.Create(AOwner: TComponent);
Var
     Sender: TObject;
begin
     inherited;
     gs_DepType := GetUserDepType(gi_UserID);
     gb_HideIndication := true;
     gb_HideUnitFlagRefrange := False;
     gb_SingleDep := False;
     gb_isHalfPage := False;
     gb_HideSource := true;
     Gs_SelectedPatientTestID := '';
     cb_tick.Color := clWebLightBlue;

     if gi_datesystem = 0 then
          Ps_TodaysDate := TodaysDateVS
     else
          Ps_TodaysDate := TodaysDate;
     PageControl1.Pages[1].TabVisible := False;
     PageControl1.Pages[2].TabVisible := False;
     Dex_From.SystemOfDate := gi_datesystem;
     Dex_To.SystemOfDate := gi_datesystem;
     Dex_CLFrom.SystemOfDate := gi_datesystem;
     Dex_CLTo.SystemOfDate := gi_datesystem;

     Dex_From.Text := gs_From;
     Dex_To.Text := gs_to;
     CB_Date.Checked := true;
     SpeedButton2.Caption := gs_DateCaption;
     SpeedButton3.Caption := gs_DateCaption;
     Shape1.Brush.Color := clWebRosyBrown;
     Shape2.Brush.Color := clWebGreen;
     Shape3.Brush.Color := clWebDarkOrange;
     bb_RefreshTobecollClick(Sender);

     DBGrid3.Color := clWebLightSeaGreen;
     DBGrid2.Color := clWebLightBlue;

     DBGrid4.Color := clWebLightSeaGreen;
     Dbgrid5.Color := clWebLightBlue;

     DBGrid3.Columns[0].Title.Caption := Gs_PatientIdCaption;
     DBGrid4.Columns[0].Title.Caption := Gs_PatientIdCaption;
     Label16.Caption := Gs_PatientIdCaption;

     if gs_DepType='RADIOLOGY' then
     begin
      label38.Caption:='Label No. List';
     end;
     if IsBiochemistryUser then
      Button1.Visible:=true;
     {if Pos(',4,',gs_UserDepId)>0 then
     begin
       Button1.Visible:=true;
     end;}
       if gs_CalledFrom = 'SAMPLE COLLECTION' then
       begin
        cb_tick.Visible := False;
        Button1.Visible:=false;
       end
       else
          cb_tick.Visible := False;

     LoadDepartmentINCheckListBox(CLB_Department);
end;

function TFrame_SampleCollection_manipal.DailyNoExist(Sampleno, DailyNo, DepID, Date: String): Boolean;
Var
     Qry:TOraQuery;
begin
     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          Sql.Add('Select Count(*)C from '+gs_Hos_DB_UserName+'.PatientTest');
          Sql.Add('Where DepID in ('+DepID+')');
          Sql.Add('And TestDate='+#39+Date+#39);
          Sql.Add('And DailyNo='+#39+DailyNo+#39);
          Sql.Add('and patientid not in (Select PatientID from SampleCollection');
          Sql.Add('Where SampleNO='+#39+Sampleno+#39+')');
          Open;
          if FieldByName('C').AsInteger>0 then
               Result:=true
          else
               Result:=False;
     end;
     Qry.Free;
end;

procedure TFrame_SampleCollection_manipal.DBGrid1CellClick(Column: TColumn);
Var
     Sender: TObject;
begin
     Gs_BillNo := DBGrid1.DataSource.DataSet.FieldByName('BillNo').AsString;
     gi_PatientID:=DBGrid1.DataSource.DataSet.FieldByName('patientid').Asinteger;
     LoadSampleTobeCollected(CLB_TestName, Gs_BillNo);
     LoadCollectedSample(CLB_CollectedSample, Gs_BillNo);
     Cb_TestNameAll.Checked := true;
     Cb_TestNameAllClick(Sender);

     Label38.Visible := true;
     DBGrid6.Visible := true;
     With Query_SampleNoList do
     Begin
          Close;
          SQL.Clear;
          {SQL.Add(' select Distinct Sc.sampleNo,Sc.SampleTakenTime');
          //Sql.Add(',(Select UserName from Usermain where userid=sc.SampleReceivedBy)username');
          Sql.Add(' from SampleCollection sc,'+gs_Hos_DB_UserName+'.PatientTest Pt');
          Sql.Add('Where Sc.Patienttestid=pt.patienttestid');
          Sql.Add('And SC.PatientID=' + IntToStr(gi_PatientID));
          SQL.Add(' and SC.SampleTakenDate=' + #39 + QryBillList.FieldByName('TestDate').AsString+ #39);
          Sql.Add('And Pt.DepID in ('+gs_UserDepId+')');
          Sql.Add('And Sc.SampleReceivedBy is Null');
          SQL.Add(' Order by Cast(SubStr(Sc.SampleNo,9,3) as Integer) Desc,Sc.SampleTakenTime Desc');
          }
          sql.Add('select distinct sampleno,testtime as sampletakentime from vw_sample_to_be_collected where  PatientID='+IntToStr(gi_PatientID));
          sql.Add('and testDate='+quotedstr(QryBillList.FieldByName('TestDate').AsString));
          sql.Add('and testtime='+quotedstr(QryBillList.FieldByName('Testtime').AsString));
          sql.Add('and depid in ('+gs_UserDepId+')');
          Open;
     End;
end;

procedure TFrame_SampleCollection_manipal.DBGrid2CellClick(Column: TColumn);
begin
     // if DBGrid2.SelectedRows.CurrentRowSelected = true then
     // begin
     // // Gs_SelectedTestNameList := Gs_SelectedTestNameList + ',' + Query_SampleCollected.FieldByName('TestNameID').AsString;
     // Gs_SelectedTestNameList := Gs_SelectedTestNameList + ',' + Query_SampleCollected.FieldByName('PatientTestID')
     // .AsString;
     // end
     // else
     // begin
     // { Gs_SelectedTestNameList := StringReplace(Gs_SelectedDepList, ',' + Query_SampleCollected.FieldByName
     // ('TestNameID').AsString, '', [rfReplaceAll]); }
     // Gs_SelectedTestNameList := StringReplace(Gs_SelectedDepList, ',' + Query_SampleCollected.FieldByName
     // ('PatientTestID').AsString, '', [rfReplaceAll]);
     // end;
     //
     // Gs_SelectedTestNameList := trim(Gs_SelectedTestNameList);
     // if copy(Gs_SelectedTestNameList, 1, 1) = ',' then
     // Gs_SelectedTestNameList := copy(Gs_SelectedTestNameList, 2, 999);

end;

procedure TFrame_SampleCollection_manipal.DBGrid2DblClick(Sender: TObject);
begin
     if gs_CalledFrom = 'SAMPLE COLLECTION' then
          BB_ModifyClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (Query_SampleCollected.FieldByName('TestProgressStatus').AsInteger = 4) then
     begin
          with DBGrid2.Canvas do
          begin
               Brush.Color := clWebRosyBrown;
               Font.Color := clWhite;
          end;
          DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
     if (Query_SampleCollected.FieldByName('TestProgressStatus').AsInteger = 5) then
     begin
          with DBGrid2.Canvas do
          begin
               Brush.Color := clWebDarkOrange;
               Font.Color := clWhite;
          end;
          DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
     if (Query_SampleCollected.FieldByName('TestProgressStatus').AsInteger = 6) then
     begin
          with DBGrid2.Canvas do
          begin
               Brush.Color := clWebGreen;
               Font.Color := clWhite;
          end;
          DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
end;

procedure TFrame_SampleCollection_manipal.DBGrid3CellClick(Column: TColumn);
Var
     Sender: TObject;
     i: Integer;
begin
     if Query_samplecollectedright.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := Query_samplecollectedright.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;
     with Query_SampleCollected do
     begin
          Close;
          SQL[4] := 'And PatientId=' + IntToStr(gi_PatientID);
          if Cb_NoResult.Checked then
          begin
               SQL[6] := 'And TestProgressStatus=' + IntToStr(gi_SampleColl);
               Gb_ShowTestWithoutResult := true;
          end
          else
          begin
               SQL[6] := 'And 99=99';
               Gb_ShowTestWithoutResult := False;
          end;
          Open;
          cb_tick.Items.Clear;
          i := 0;
          SetLength(Arr_PTestNameID, RecordCount);
          while not eof do
          begin
               Arr_PTestNameID[i] := FieldByName('PatientTestID').AsString;
               cb_tick.Items.Add('');
               Inc(i);
               cb_tick.Height := i * 20;
               Next;
          end;
     end;
     Gs_SelectedPatientTestID := '';
end;

procedure TFrame_SampleCollection_manipal.DBGrid4CellClick(Column: TColumn);
begin
     if Query_tobecollectedr.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := Query_tobecollectedr.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;
     with Query_TobeCollected do
     begin
          Close;
          SQL[4] := 'And PatientId=' + IntToStr(gi_PatientID);
          Open;
     end;
     lbl_TestCaption.Caption := GetTestListCaption(gi_PatientID, '');
end;

procedure TFrame_SampleCollection_manipal.DBGrid4KeyPress(Sender: TObject; var Key: Char);
Var
     Column: TColumn;
begin
     if Key = #13 then
          DBGrid4CellClick(Column);
end;

procedure TFrame_SampleCollection_manipal.Dex_CLFromEnter(Sender: TObject);
begin
     CB_Date.Checked := true;
end;

procedure TFrame_SampleCollection_manipal.Dex_CLToExit(Sender: TObject);
begin
     BB_Refresh.SetFocus;
end;

procedure TFrame_SampleCollection_manipal.Dex_FromEnter(Sender: TObject);
begin
     CB_Searchbydate.Checked := true;
end;

procedure TFrame_SampleCollection_manipal.Edit4Change(Sender: TObject);
begin
     with Query_tobecollectedr do
     Begin
          IF trim(Edit4.Text) <> '' Then
          Begin
               Filter := 'PatientName =' + #39 + Edit4.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := False;
     End;
     bb_RefreshTobecollClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.Edit9Change(Sender: TObject);
begin
     with Query_samplecollectedright do
     Begin
          IF trim(Edit9.Text) <> '' Then
          Begin
               Filter := 'PatientName =' + #39 + Edit9.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := False;
     End;
     BB_RefreshClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.Edit_CheckDailyNoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     Button1Click(Sender);
end;

procedure TFrame_SampleCollection_manipal.edit_dailynoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     begin
          BB_ReceiveClick(sender);
          Le_SampleNo.SetFocus;
          edit_dailyno.Clear;
          if Cb_Manual.Checked then
          begin
               Le_SampleNo.Text:=Copy(GetNextSampleNo,1,8);
               Le_SampleNo.SelStart:=length(Le_SampleNo.Text);
          end
          else
               Le_SampleNo.Clear;
     end;
end;

procedure TFrame_SampleCollection_manipal.Edit_SearchCollectedListChange(Sender: TObject);
Var
     li_PatientID: String;
begin
     Edit_SearchCollectedList.Text := StringReplace(Edit_SearchCollectedList.Text, '''', '''''', [rfReplaceAll]);
     li_PatientID := IntToStr(GetPatientIdFromSampleNo(Edit_SearchCollectedList.Text));
     with Query_samplecollectedright do
     Begin
          IF trim(Edit_SearchCollectedList.Text) <> '' Then
          Begin
               if IsStrANumber(Edit_SearchCollectedList.Text) then
                    Filter := 'PatientID =' + #39 + Edit_SearchCollectedList.Text + #39
               else
                    Filter := 'PatientID =' + #39 + li_PatientID + #39;
               Filtered := true;
          End
          Else
               Filtered := False;
     End;
     BB_RefreshClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.Edit_SearchCollectedListKeyPress(Sender: TObject; var Key: Char);
Var
     li_PatientID: String;
begin
     if Key = #13 then
     begin
          Edit_SearchCollectedList.Text := StringReplace(Edit_SearchCollectedList.Text, '''', '''''', [rfReplaceAll]);
          li_PatientID := IntToStr(GetPatientIdFromSampleNo(Edit_SearchCollectedList.Text));
          with Query_samplecollectedright do
          Begin
               IF trim(Edit_SearchCollectedList.Text) <> '' Then
               Begin
                    if IsStrANumber(Edit_SearchCollectedList.Text) then
                         Filter := 'PatientID =' + #39 + Edit_SearchCollectedList.Text + #39
                    else
                         Filter := 'PatientID =' + #39 + li_PatientID + #39;
                    Filtered := true;
               End
               Else
                    Filtered := False;
          End;
          BB_RefreshClick(Sender);
     end;
end;

procedure TFrame_SampleCollection_manipal.Edit_SearchTBCChange(Sender: TObject);
begin
     Edit_SearchTBC.Text := StringReplace(Edit_SearchTBC.Text, '''', '''''', [rfReplaceAll]);
     with Query_tobecollectedr do
     Begin
          IF trim(Edit_SearchTBC.Text) <> '' Then
          Begin
               if IsStrANumber(Edit_SearchTBC.Text) then
                    Filter := 'PatientID =' + #39 + Edit_SearchTBC.Text + #39
               else
                    Filter := 'PatientName =' + #39 + Edit_SearchTBC.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := False;
     End;
     bb_RefreshTobecollClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.Edit_SearchTBCKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          Edit_SearchTBC.Text := StringReplace(Edit_SearchTBC.Text, '''', '''''', [rfReplaceAll]);
          with Query_tobecollectedr do
          Begin
               IF trim(Edit_SearchTBC.Text) <> '' Then
               Begin
                    if IsStrANumber(Edit_SearchTBC.Text) then
                         Filter := 'PatientID =' + #39 + Edit_SearchTBC.Text + #39
                    else
                         Filter := 'PatientName =' + #39 + Edit_SearchTBC.Text + '*' + #39;
                    Filtered := true;
               End
               Else
                    Filtered := False;
          End;
          bb_RefreshTobecollClick(Sender);
          Dbgrid5DblClick(Sender);
     end;
end;

function TFrame_SampleCollection_manipal.GetNextDailyNo(DepID, Date: String): String;
Var
     Qry:TOraQuery;
begin
     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          Sql.Add('Select Max(Nvl(DailyNo,0))+1 Mx from '+gs_Hos_DB_UserName+'.PatientTest');
          Sql.Add('Where DepID in ('+DepID+')');
          Sql.Add('And TestDate='+#39+Date+#39);
          Open;
          Result:=FieldByName('Mx').AsString;
     end;
     Qry.Free;
end;

procedure TFrame_SampleCollection_manipal.GetQueue(Val: String);
Var
     Billno: String;
     Sender: TObject;
     Key: Char;
begin
     with QryQueueList do
     begin
          if UpperCase(Val) = 'NEXT' then
               Next
          else if UpperCase(Val) = 'PRE' then
               Prior;
          lbl_QueueNo.Caption := FieldByName('QUEUENO').AsString;
          lbl_PatientName.Caption := FieldByName('PATIENTNAME').AsString;
          gi_PatientID := FieldByName('PATIENTID').AsInteger;
     end;

     Billno := QryQueueList.FieldByName('Billno').AsString;
     Query_tobecollectedr.Locate('PatientID', gi_PatientID, []);
     Key := #13;
     DBGrid4KeyPress(Sender, Key);
     if Not(Query_TobeCollected.Locate('Billno', Billno, [])) then
          Billno := GetFinalBillno(Billno);
     Gs_BillNo := Billno;
     Query_TobeCollected.Locate('Billno', Billno, []);
end;

procedure TFrame_SampleCollection_manipal.GetQueueList;
Var
     Billno: String;
     Sender: TObject;
     Key: Char;
     DataSet: TDataSet;
begin
     QryQueueList := TOraQuery.Create(Nil);
     QryQueueList.AfterScroll := QryQueueList_AfterScroll;
     with QryQueueList do
     begin
          Close;
          Session := DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('SELECT * FROM VW_QUEUELIST');
          Open;
          lbl_QueueNo.Caption := FieldByName('QUEUENO').AsString;
          lbl_PatientName.Caption := FieldByName('PATIENTNAME').AsString;
          gi_PatientID := FieldByName('PATIENTID').AsInteger;
     end;
     Billno := QryQueueList.FieldByName('Billno').AsString;
     Query_tobecollectedr.Locate('PatientID', gi_PatientID, []);
     Key := #13;
     DBGrid4KeyPress(Sender, Key);
     if Not(Query_TobeCollected.Locate('Billno', Billno, [])) then
          Billno := GetFinalBillno(Billno);
     Gs_BillNo := Billno;
     Query_TobeCollected.Locate('Billno', Billno, []);
end;

procedure TFrame_SampleCollection_manipal.Le_SampleNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     edit_dailyno.SetFocus;
end;

procedure TFrame_SampleCollection_manipal.le_UndoSampleKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then
     BB_UndoSampleClick(Sender);
end;

procedure TFrame_SampleCollection_manipal.OntimerEvent(Sender: TObject);
begin
     Query_SampleCollected.Close;
     Query_SampleCollected.Open;
end;

procedure TFrame_SampleCollection_manipal.PrintSticker;
Var
     SAMPLENO: String;
     Day: String;
     DayNO: String;
     Bottom: String;
     i, J, PrintCount: Integer;
begin
     gs_SampleNo := Edit_PreviousSampleNo.Text;
     SAMPLENO := gs_SampleNo;
     PrintCount := StrToInt(se_printcount.Text);
     try
          Form_Sticker := TForm_Sticker.Create(nil);
          with Form_Sticker do
          begin
               QrBarcode.Text := SAMPLENO;
               lbl_PatientName.Caption := Lbl_Name.Caption + ' - ' + IntToStr(gi_PatientID);
               if cb_preview.Checked = true then
               begin
                    for i := 0 to CLB_CollectedSample.Items.Count - 1 do
                    begin
                         if CLB_CollectedSample.State[i] = cbChecked then
                         begin
                              Bottom := CLB_CollectedSample.Items.Strings[i];
                              lbl_bottom.Caption := Bottom;
                              QrSticker.PreviewModal;
                         end;

                    end;
               end
               else
               begin
                    for i := 0 to CLB_CollectedSample.Items.Count - 1 do
                    begin
                         if CLB_CollectedSample.State[i] = cbChecked then
                         begin
                              For J := 0 to PrintCount - 1 do
                              begin
                                   Bottom := CLB_CollectedSample.Items.Strings[i];
                                   lbl_bottom.Caption := Bottom;
                                   QrSticker.Prepare;
                                   QrSticker.Print;
                              end;
                         end;

                    end;
               end;
          end;
     finally
          Form_Sticker.Free;
     end;
end;

procedure TFrame_SampleCollection_manipal.QryQueueList_AfterScroll(DataSet: TDataSet);
begin
     // lbl_QueueNo.Caption := QryQueueList.FieldByName('QueueNo').AsString;
     // lbl_PatientName.Caption := QryQueueList.FieldByName('PatientName').AsString;
end;

procedure TFrame_SampleCollection_manipal.Query_SampleCollectedAfterScroll(DataSet: TDataSet);
begin
     Gs_BillNo := Query_SampleCollected.FieldByName('BillNo').AsString;
     gi_PatientID := Query_SampleCollected.FieldByName('PatientId').AsInteger;
end;

procedure TFrame_SampleCollection_manipal.Query_TobeCollectedAfterScroll(DataSet: TDataSet);
begin
     Gs_BillNo := Query_TobeCollected.FieldByName('BillNo').AsString;
     gi_PatientID := Query_TobeCollected.FieldByName('PatientId').AsInteger;
end;

procedure TFrame_SampleCollection_manipal.ReceiveSample;
Var
     Qry:TOraQuery;
     PatientTestID,PatientID,PatientName,DailyNo:String;
begin
     if Cb_AutoDailyNo.Checked then
     begin
          DailyNo:=GetNextDailyNo(gs_UserDepId,TodaysDate);
     end
     else
     begin
          DailyNo:=Trim(edit_dailyno.Text);
          if DailyNo='' then
          begin
               ShowMessage('Daily no cannot be blank');
               Exit;
          end;
          if DailyNoExist(Le_SampleNo.Text,DailyNo,gs_UserDepId,TodaysDate) then
          begin
               ShowMessage('Daily no already exists');
               Exit;
          end;
     end;

     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select count(*)C from SampleCollection sc,'+gs_Hos_DB_UserName+'.PatientTest Pt');
          Sql.Add('Where Sc.Patienttestid=pt.patienttestid');
          Sql.Add('And Sc.SampleNo='+#39+Le_SampleNo.Text+#39);
          Sql.Add('And Pt.DepID in ('+gs_UserDepId+')');
          Open;
          if FieldByName('C').AsInteger=0 then
          begin
               ShowMessage('Service Not Found');
               Le_SampleNo.Clear;
               Le_SampleNo.SetFocus;
               Exit;
          end;
          SQL.Clear;
          SQL.Add('Select count(*)C from SampleCollection sc,'+gs_Hos_DB_UserName+'.PatientTest Pt');
          Sql.Add('Where Sc.Patienttestid=pt.patienttestid');
          Sql.Add('And Sc.SampleNo='+#39+Le_SampleNo.Text+#39);
          Sql.Add('And Pt.DepID in ('+gs_UserDepId+')');
          SQL.Add('And Sc.SampleReceivedBy is Not Null');
          Open;
          if FieldByName('C').AsInteger>0 then
          begin
               ShowMessage('Sample has already been received');
               Le_SampleNo.Clear;
               Le_SampleNo.SetFocus;
               Exit;
          end
          else
          begin
               SQL.Clear;
               SQL.Add('Select SC.PatientTestID,Sc.PatientID,(Select PatientName from '+gs_Hos_DB_UserName+'.PatientMain Where PatientID=' +
                 'Sc.PatientID)PatientName ');
               Sql.Add('from SampleCollection sc,'+gs_Hos_DB_UserName+'.PatientTest Pt');
               Sql.Add('Where Sc.Patienttestid=pt.patienttestid');
               Sql.Add('And Sc.SampleNo='+#39+Le_SampleNo.Text+#39);
               Sql.Add('And Pt.DepID in ('+gs_UserDepId+')');
               SQL.Add('And Sc.SampleReceivedBy is Null');
               Open;
               PatientTestID:='';
               while not eof do
               begin
                    if PatientTestID='' then
                         PatientTestID:=FieldByName('PatientTestID').AsString
                    else
                         PatientTestID:=PatientTestID+','+FieldByName('PatientTestID').AsString;
                    Next;
               end;
               PatientID:=FieldByName('PatientID').AsString;
               PatientName:=FieldByName('PatientName').AsString;
          end;
          Try
          DM_Hospital.DB.StartTransaction;
          SQL.Clear;
          SQL.Add('Update SampleCollection Set');
          SQL.Add('SampleReceivedDate='+#39+TodaysDate+#39);
          SQL.Add(',SampleReceivedTime='+#39+TodaysTime+#39);
          SQL.Add(',SampleReceivedBy='+IntToStr(gi_UserID));
          SQL.Add('Where PatientTestID in ('+PatientTestID+')');
          ExecSQL;

          SQL.Clear;
          SQL.Add('Update '+gs_Hos_DB_UserName+'.PatientTest Set');
          SQL.Add('TestProgressStatus=3');
          Sql.Add(',DailyNo='+#39+DailyNo+#39);
          SQL.Add('Where PatientTestID in ('+PatientTestID+')');
          ExecSQL;
          lbl_msg.Caption:=Le_SampleNo.Text+' Received';
          lbl_PatientNameSR.Caption:=PatientID+' - '+PatientName;
          lbl_RunNo.Caption:=DailyNo;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          Except
          DM_Hospital.DB.Rollback;
          End;
     end;
     Le_SampleNo.Clear;
     Le_SampleNo.SetFocus;
end;

procedure TFrame_SampleCollection_manipal.ReprintSticker(BillNo: String);
Var
     Qry:TOraQuery;
     PatientName,SAMPLENO:String;
     PatientID:integer;
begin
     Qry:=TOraQuery.Create(Nil);
     Try
     Form_Sticker:=TForm_Sticker.Create(Nil);
     with Form_Sticker do
     begin
          With Qry do
          begin
               Close;
               Session:=DM_Hospital.DB;
               SQL.Clear;
               Sql.Add('Select PatientID,(Select PatientName from '+gs_Hos_DB_UserName+'.PatientMain Where PatientId=Sc.PatientId)PatientName');
               SQl.Add(' ,SampleNO from SampleCollection Sc Where BillNo='+#39+BillNo+#39);
               Open;
               SAMPLENO:=fieldbyname('SampleNo').AsString;
               PatientID:=fieldbyname('PatientId').AsInteger;
               if SAMPLENO='' then
               exit;
               PatientName:=fieldbyname('PatientName').AsString;
               SQL.Clear;
               Sql.Add('Select Distinct SampleSourceID,(Select SampleSource From ManipalLab.SampleSource Where SampleSourceID=Tn.SampleSourceID)SampleSource');
               Sql.Add(',(Select DepName from '+gs_Hos_DB_UserName+'.Department Where DepID=Tn.DepID)DepName');
               Sql.Add('from '+gs_Hos_DB_UserName+'.TestName Tn Where TestNameID in (Select TestNameId from '+gs_Hos_DB_UserName+'.PatientTest Where PatientTestID in');
               Sql.Add(' (Select PatientTestId from SampleCollection Where BillNo='+#39+BillNo+#39+'))');
               SQL.Add('And Tn.DepID in ('+gs_UserDepId+')');
               Open;
               QrBarcode.Text := SAMPLENO;
               While not eof do
               begin
                    lbl_PatientName.Caption := PatientName + ' - ' + IntToStr(PatientID);
                    lbl_bottom.Caption := fieldbyname('SampleSource').AsString;
                    lbl_DepName.Caption:=fieldbyname('DepName').AsString;
                    if cb_preview.Checked=True then
                         QrSticker.Preview
                    else
                    begin
                         QrSticker.Print;
                         //QrSticker.Print;
                    end;
                    Next;
               end;
          end;
     end;
     Finally
          Form_Sticker.Free;
     end;
end;

procedure TFrame_SampleCollection_manipal.Se_CLDaysChange(Sender: TObject);
begin
     if Se_CLDays.Text <> '' then
          Gi_NoofDays := StrToInt(Se_CLDays.Text);
end;

procedure TFrame_SampleCollection_manipal.SpeedButton10Click(Sender: TObject);
Var
     i: Integer;
begin
     with StringGrid1 do
     begin
          Cols[0].Text := 'Queue No.';
          Cols[1].Text := 'Patient Name';
          Cols[2].Text := 'Bill No.';
          Cols[3].Text := Gs_PatientIdCaption;
     end;
     with QryQueueList do
     begin
          Close;
          Open;
          i := 1;
          StringGrid1.RowCount := QryQueueList.RecordCount + 1;
          while Not eof do
          begin
               with StringGrid1 do
               begin
                    Cells[0, i] := FieldByName('QueueNo').AsString;
                    Cells[1, i] := FieldByName('PatientName').AsString;
                    Cells[2, i] := FieldByName('Billno').AsString;
                    Cells[3, i] := FieldByName('PatientID').AsString;
               end;
               Inc(i);
               Next;
          end;
     end;
     with StringGrid1 do
     begin
          Left := 289;
          Height := Dbgrid5.Height + 120;
          Width := Dbgrid5.Width;
          if SpeedButton10.Caption = 'Queue list [OFF]' then
          begin
               Visible := true;
               SpeedButton10.Caption := 'Queue list [ON]';
          end
          else
          begin
               Visible := False;
               SpeedButton10.Caption := 'Queue list [OFF]'
          end;
     end;
     QryQueueList.First;
end;

procedure TFrame_SampleCollection_manipal.SpeedButton1Click(Sender: TObject);
Var
     i: Integer;
     ls_date: String;
begin
     if MsgBox(1029, 1, '', '', '') then
     begin
          if gi_datesystem = 0 then
               ls_date := TodaysDateVS
          else
               ls_date := TodaysDate;

          try
               DM_Hospital.DB.StartTransaction;
               for i := 0 to CLB_CollectedSample.Items.Count - 1 do
               begin
                    if CLB_CollectedSample.State[i] = cbChecked then
                    begin
                         if not UndoSampleCollection(Arr_CollectedSample[i, 0]) then
                              MsgBox(1012, 0, '', '', '');
                    end;
               end;
               DM_Hospital.DB.Commit;
          except
               DM_Hospital.DB.Rollback;
          end;
          LoadSampleTobeCollected(CLB_TestName, Gs_BillNo);
          LoadCollectedSample(CLB_CollectedSample, Gs_BillNo);
     end;
end;

procedure TFrame_SampleCollection_manipal.SpeedButton5Click(Sender: TObject);
begin
     //PrintSticker;
     ReprintSticker(QryBillList.FieldByName('BillNo').AsString);
end;

procedure TFrame_SampleCollection_manipal.SpeedButton8Click(Sender: TObject);
begin
     GetQueue('Pre');
end;

procedure TFrame_SampleCollection_manipal.SpeedButton9Click(Sender: TObject);
begin
     GetQueue('Next');
end;

procedure TFrame_SampleCollection_manipal.bb_RefreshTobecollClick(Sender: TObject);
begin
     gs_From := Dex_From.Text;
     gs_to := Dex_To.Text;
     with Query_tobecollectedr do
     begin
          Close;
          Session := DM_Hospital.DB;
          if StrToInt(Se_DaysTBC.Text) > 0 then
               SQL[1] := 'Where Testdate> TO_CHAR(SYSDATE-' + Se_DaysTBC.Text + ',''YYYY/MM/DD'')'
          else
          begin
               if CB_Searchbydate.Checked = true then
                    SQL[1] := 'Where TestDate Between' + #39 + gs_From + #39 + 'And ' + #39 + gs_to + #39
               else
                    SQL[1] := 'Where TestDate =' + #39 + Ps_TodaysDate + #39;
          end;
          // if gs_DepType='PATHOLOGY' then
          // SQL[3]:='And (DepType='+#39+gs_DepType+#39+' Or ReportByLab=''Y'') '
          // else
          SQL[3] := 'And DepID in ('+gs_UserDepId+') And DepType=' + #39 + gs_DepType + #39;
          Open;
     end;
     if Query_tobecollectedr.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := Query_tobecollectedr.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;
     with Query_TobeCollected do
     begin
          Close;
          Session := DM_Hospital.DB;
          if StrToInt(Se_DaysTBC.Text) > 0 then
               SQL[1] := 'Where Testdate> TO_CHAR(SYSDATE-' + Se_DaysTBC.Text + ',''YYYY/MM/DD'')'
          else
          begin
               if CB_Searchbydate.Checked = true then

                    SQL[1] := 'Where TestDate Between' + #39 + gs_From + #39 + 'And ' + #39 + gs_to + #39
               else
                    SQL[1] := 'Where TestDate =' + #39 + Ps_TodaysDate + #39;
          end;
          SQL[4] := 'And PatientId=' + IntToStr(gi_PatientID);

          // if gs_DepType='PATHOLOGY' then
          // SQL[5]:='And (DepType='+#39+gs_DepType+#39+' Or ReportByLab=''Y'') '
          // else
          SQL[5] := 'And DepID in ('+gs_UserDepId+') And DepType=' + #39 + gs_DepType + #39;

          Open;
     end;
     // GetQueueList;
end;

procedure TFrame_SampleCollection_manipal.TabSheet1Show(Sender: TObject);
begin
     RefreshQuery(Query_TobeCollected, gs_DatabaseName);
end;

procedure TFrame_SampleCollection_manipal.TabSheet2Show(Sender: TObject);
begin
     Query_SampleCollected.Close;
     Query_SampleCollected.Open;
end;

procedure TFrame_SampleCollection_manipal.TobeCollectedAfterScroll(DataSet: TDataSet);
begin
     try
          Gs_BillNo := QryBillList.FieldByName('BillNo').AsString;
          gi_PatientID := QryBillList.FieldByName('PatientId').AsInteger;
     except
     end;
end;

Initialization

RegisterClass(TFrame_SampleCollection_manipal);

finalization

UnRegisterClass(TFrame_SampleCollection_manipal);

end.
