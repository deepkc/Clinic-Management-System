unit Unit_TimeWisePriceSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, Unit_Master, Unit_MasterFxnWard, ServerDate, Unit_Message,
     Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, ComCtrls, Buttons, ExtCtrls,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls, DM;

type
     TForm_TimeWisePriceSetup = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Panel1: TPanel;
          Lbl_DepName: TLabel;
          SMDBGrid1: TSMDBGrid;
          Table_List: TOraTable;
          Ds_List: TDataSource;
          DBlcb_Dep: TDBLookupComboBox;
          GroupBox1: TGroupBox;
          Label13: TLabel;
          Label1: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label7: TLabel;
          Label8: TLabel;
          GroupBox2: TGroupBox;
          Label10: TLabel;
          Label11: TLabel;
          Label14: TLabel;
          Label15: TLabel;
          Label16: TLabel;
          Label18: TLabel;
          Label19: TLabel;
          GroupBox3: TGroupBox;
          Label21: TLabel;
          Label22: TLabel;
          Label24: TLabel;
          Label25: TLabel;
          Label26: TLabel;
          Label28: TLabel;
          Label29: TLabel;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          BB_New: TBitBtn;
          Label2: TLabel;
          SpeedButton1: TSpeedButton;
          DBlcb_Doctor: TDBLookupComboBox;
          DS_Doctor: TDataSource;
          Query_Doctor: TOraQuery;
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          Procedure LoadDepPrice;
          Procedure LoadSMDBGrid;
          procedure DBlcb_DepClick(Sender: TObject);
          procedure SMDBGrid1KeyPress(Sender: TObject; var Key: Char);
          procedure FormShow(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure SMDBGrid1ColExit(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure DBlcb_DepKeyPress(Sender: TObject; var Key: Char);
          procedure DBlcb_DoctorClick(Sender: TObject);
    procedure DBlcb_DepKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          Pi_DepID, Pi_DocID: Integer;
          pi_PatientType, pi_FromTime, pi_ToTime, pi_NewRegCharge,
               i_NewRegSvrTax, pi_FollowUpCharge, i_FollowUpSvrTax: Integer;
          { Public declarations }
          Procedure CreateTable;
          Procedure CalculateData;
          Function FormatTime(Str: String): String;
          Procedure SaveData;

     var
          Pb_IsUpdate: Boolean;
     end;

var
     Form_TimeWisePriceSetup: TForm_TimeWisePriceSetup;

implementation

{$R *.dfm}
{ TForm_TimeWisePriceSetup }

procedure TForm_TimeWisePriceSetup.BB_CloseClick(Sender: TObject);
begin
     close;
end;

procedure TForm_TimeWisePriceSetup.BB_SaveClick(Sender: TObject);
begin
     if DBlcb_Dep.KeyValue = Null then
     Begin
          MessageDlg('Please Select Department!', mtWarning, [mbOK], 0);
          DBlcb_Dep.SetFocus;
          Exit;
     End;

     if MessageDlg('Do You Want to Save ?', mtConfirmation, [mbYes, mbNo], 0)
          = mrYes then
     Begin
          SaveData;
     End;
end;

procedure TForm_TimeWisePriceSetup.CalculateData;
Var
     ls_PatientType, ls_FromTime, ls_ToTime: String;
     pf_NewRegCharge, pf_NewRegSvrTax, pf_FollowUpCharge,
          pf_FollowUpSvrTax: Double;
     SelIndex: Integer;
begin
     (* Getting DBGrid Index *)
     if VarToStr(SMDBGrid1.Fields[pi_PatientType].Value) <> '' then
          ls_PatientType := SMDBGrid1.Fields[pi_PatientType].Value;
     if VarToStr(SMDBGrid1.Fields[pi_FromTime].Value) <> '' then
          ls_FromTime := SMDBGrid1.Fields[pi_FromTime].Value;
     if VarToStr(SMDBGrid1.Fields[pi_ToTime].Value) <> '' then
          ls_ToTime := SMDBGrid1.Fields[pi_ToTime].Value;
     if VarToStr(SMDBGrid1.Fields[pi_NewRegCharge].Value) <> '' then
          pf_NewRegCharge := SMDBGrid1.Fields[pi_NewRegCharge].Value;
     if VarToStr(SMDBGrid1.Fields[pi_FollowUpCharge].Value) <> '' then
          pf_FollowUpCharge := SMDBGrid1.Fields[pi_FollowUpCharge].Value;
     (* *** *)
     SelIndex := SMDBGrid1.SelectedIndex;

     if SelIndex in [pi_PatientType, pi_FromTime, pi_ToTime, pi_NewRegCharge,
          pi_FollowUpCharge] then
     begin
          Table_List.Edit;
          if SelIndex in [pi_PatientType] then
          begin
               if (UpperCase(ls_PatientType) <> 'PRIME') and
               (UpperCase(ls_PatientType) <> 'GENERAL') and
                    (UpperCase(ls_PatientType) <> 'PRIVATE') and
                    (UpperCase(ls_PatientType) <> 'FOREIGNER') then
               begin
                    ShowMessage('Invalid PatientType');
                    SMDBGrid1.Fields[pi_PatientType].Value := '';
               end;
          end
          else if SelIndex in [pi_FromTime] then
          begin
               ls_FromTime := FormatTime(ls_FromTime);
               if ls_FromTime <> '' then
                    SMDBGrid1.Fields[pi_FromTime].Value := ls_FromTime
               else
               begin
                    ShowMessage('Invalid Time');
                    SMDBGrid1.Fields[pi_FromTime].Value := '';
               end;
          end
          else if SelIndex in [pi_ToTime] then
          begin
               ls_ToTime := FormatTime(ls_ToTime);
               if ls_ToTime <> '' then
                    SMDBGrid1.Fields[pi_ToTime].Value := ls_ToTime
               else
               begin
                    ShowMessage('Invalid Time');
                    SMDBGrid1.Fields[pi_ToTime].Value := '';
               end;
          end
          else if SelIndex in [pi_NewRegCharge] then
          begin
               Table_List.FieldByName('NewRegChargeX').AsFloat :=
                    GetNoOfDecimalPartOfFloatNum((pf_NewRegCharge / 1.13), 4);
               Table_List.FieldByName('NewRegSvrTax').AsFloat :=
                    GetNoOfDecimalPartOfFloatNum
                    ((pf_NewRegCharge / 1.13) * 0.13, 4);
          end
          else if SelIndex in [pi_FollowUpCharge] then
          begin
               Table_List.FieldByName('FollowUpChargeX').AsFloat :=
                    GetNoOfDecimalPartOfFloatNum((pf_FollowUpCharge / 1.13), 4);
               Table_List.FieldByName('FollowUpSvrTax').AsFloat :=
                    GetNoOfDecimalPartOfFloatNum
                    ((pf_FollowUpCharge / 1.13) * 0.13, 4);
          end;
          Table_List.Post;
     end;
end;

procedure TForm_TimeWisePriceSetup.CreateTable;
begin
     if FileExists(gs_temppath + '\TimeWiseDepPriceSetup.db') then
     begin
          with Table_List do
          begin
               close;
               DatabaseName := gs_temppath;
               TableName := 'TimeWiseDepPriceSetup.db';
               Table_List.DeleteTable;
          end;
     end;

     with Table_List do
     begin
          close;
          DatabaseName := gs_temppath;
          TableName := 'TimeWiseDepPriceSetup.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('TimeWiseDepPriceSetupID', ftInteger);
          FieldDefs.Add('DepID', ftInteger);
          FieldDefs.Add('DocID', ftInteger);
          FieldDefs.Add('PatientType', ftString, 10);
          FieldDefs.Add('PatientTypeOldValue', ftString, 10);
          FieldDefs.Add('FromTime', ftString, 10);
          FieldDefs.Add('FromTimeOldValue', ftString, 10);
          FieldDefs.Add('ToTime', ftString, 10);
          FieldDefs.Add('ToTimeOldValue', ftString, 10);
          FieldDefs.Add('NewRegCharge', ftFloat);
          FieldDefs.Add('NewRegChargeOldValue', ftFloat);
          FieldDefs.Add('NewRegChargeX', ftFloat);
          FieldDefs.Add('NewRegSvrTax', ftFloat);
          FieldDefs.Add('FollowUpCharge', ftFloat);
          FieldDefs.Add('FollowUpChargeOldValue', ftFloat);
          FieldDefs.Add('FollowUpChargeX', ftFloat);
          FieldDefs.Add('FollowUpSvrTax', ftFloat);
          FieldDefs.Add('IsOldRecord', ftString, 1);
          CreateTable;
     end;

end;

procedure TForm_TimeWisePriceSetup.DBlcb_DepClick(Sender: TObject);
begin
     if Trim(DBlcb_Dep.Text)<>'' then
     Begin
          with Query_Doctor do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql[1]:=' and DepId='+ inttostr(DBlcb_Dep.KeyValue);
               Open;
          End;
     End;

     if Trim(DBlcb_Doctor.Text)='' then
     Table_List.Close;

     Lbl_DepName.Caption := 'Please Choose Doctor Name';
end;

procedure TForm_TimeWisePriceSetup.DBlcb_DepKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=VK_Delete then
     Begin
          With Query_Doctor do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.Add(' Select * From Doctor Where DocType=''C'' and DActive=''Y''');
               sql.Add(' Order by DocName');
               Open;
          End;
          DBlcb_Dep.KeyValue:=-1;
     End;

end;

procedure TForm_TimeWisePriceSetup.DBlcb_DepKeyPress
     (Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          DBlcb_Doctor.SetFocus;
end;

procedure TForm_TimeWisePriceSetup.DBlcb_DoctorClick(Sender: TObject);
begin
       if ((DBlcb_Doctor.Text)<>'') then
       Begin
            DBlcb_Dep.KeyValue:=Query_Doctor.FieldByName('DepId').AsInteger;
            Query_Department.Locate('Depid',Query_Doctor.FieldByName('DepId').AsInteger,[]);
            Lbl_DepName.Caption:=Query_Department.FieldByName('DepName').AsString;
       End;

       LoadDepPrice;
       LoadSMDBGrid;
end;

function TForm_TimeWisePriceSetup.FormatTime(Str: String): String;
Var
     MyStr: String;
begin
     Str := StringReplace(Str, ':', '', [rfReplaceAll]);
     MyStr := Copy(Str, 1, 2) + ':' + Copy(Str, 3, 2);
     if IsValidTime(MyStr) then
          Result := MyStr
     else
          Result := '';
end;

procedure TForm_TimeWisePriceSetup.FormCreate(Sender: TObject);
begin
     CreateTable;
     RefreshQuery(Query_Department, gs_DatabaseName);
     RefreshTable(Table_List, gs_temppath);
end;

procedure TForm_TimeWisePriceSetup.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_TimeWisePriceSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_TimeWisePriceSetup.FormShow(Sender: TObject);
begin
     (* Setting Dbgrid Index *)
     pi_PatientType := 0;
     pi_FromTime := 1;
     pi_ToTime := 2;
     pi_NewRegCharge := 3;
     pi_FollowUpCharge := 4;
     with Query_Doctor do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql[1]:=' ';
          Open;
     End;


     (* ******************** *)
end;

procedure TForm_TimeWisePriceSetup.LoadDepPrice;
Var
     Qry: TOraQuery;
begin
     Pi_DocID := DBlcb_Doctor.KeyValue;
     Qry := TOraQuery.Create(Nil);
     With Qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select * from Department');
          SQL.Add('Where DepID=' + inttostr(DBlcb_Dep.KeyValue));
          Open;
          Lbl_DepName.Caption := FieldByName('DepName').AsString;
          Pi_DepID := FieldByName('Depid').AsInteger;
          Label7.Caption := FormatFloat
               ('00.00', (FieldByName('NewRegCharge').AsFloat + FieldByName
                         ('NewRegSvrTax').AsFloat));
          Label8.Caption := FormatFloat
               ('00.00', (FieldByName('FollowUpCharge').AsFloat + FieldByName
                         ('FollowUpSvrTax').AsFloat));

          Label18.Caption := FormatFloat
               ('00.00', (FieldByName('NewRegChargePvt').AsFloat + FieldByName
                         ('NewRegSvrTaxPvt').AsFloat));
          Label19.Caption := FormatFloat
               ('00.00', (FieldByName('FollowUpChargePvt').AsFloat + FieldByName
                         ('FollowUpSvrTaxPvt').AsFloat));

          Label28.Caption := FormatFloat
               ('00.00', (FieldByName('NewRegChargeFrg').AsFloat + FieldByName
                         ('NewRegSvrTaxFrg').AsFloat));
          Label29.Caption := FormatFloat
               ('00.00', (FieldByName('FollowUpChargeFrg').AsFloat + FieldByName
                         ('FollowUpSvrTaxFrg').AsFloat));

     end;
     Table_List.close;
     Table_List.EmptyTable;
     Table_List.Open;

end;

procedure TForm_TimeWisePriceSetup.LoadSMDBGrid;
var
     ls_TodaysDate, ls_TodaysTime: String;
     Depid, Timewisedeppriceid: Integer;
     Totime, Fromtime, Patienttype: String;
     Qry_LoadSMDBGrid: TOraQuery;

begin

     Qry_LoadSMDBGrid := TOraQuery.Create(nil);
     with Qry_LoadSMDBGrid do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('select * from TimewiseDepPrice');
          SQL.Add('Where DepID=' + inttostr(Pi_DepID) +'and DocID='+ inttostr(Pi_DocID) +
                    'order by timewisedeppriceid;');
          Open;
     end;

     Table_List.close;
     Table_List.EmptyTable;
     Table_List.Open;

     Qry_LoadSMDBGrid.First;
     while Not Qry_LoadSMDBGrid.Eof do
     Begin
          with Table_List do
          Begin
               Append;
               FieldByName('TimeWiseDepPriceSetupID').AsInteger :=
                    Qry_LoadSMDBGrid.FieldByName('TIMEWISEDEPPRICEID')
                    .AsInteger;
               FieldByName('DepID').AsInteger := Qry_LoadSMDBGrid.FieldByName
                    ('DEPID').AsInteger;
               FieldByName('DocID').AsInteger := Qry_LoadSMDBGrid.FieldByName
                    ('DOCID').AsInteger;
               FieldByName('PatientType').AsString :=
                    Qry_LoadSMDBGrid.FieldByName('PATIENTTYPE').AsString;
               FieldByName('PatientTypeOldValue').AsString :=
                    Qry_LoadSMDBGrid.FieldByName('PATIENTTYPE').AsString;
               FieldByName('FromTime').AsString := Qry_LoadSMDBGrid.FieldByName
                    ('FromTime').AsString;
               FieldByName('FromTimeOldValue').AsString :=
                    Qry_LoadSMDBGrid.FieldByName('FromTime').AsString;
               FieldByName('ToTime').AsString := Qry_LoadSMDBGrid.FieldByName
                    ('ToTime').AsString;
               FieldByName('ToTimeOldValue').AsString :=
                    Qry_LoadSMDBGrid.FieldByName('ToTime').AsString;
               FieldByName('NewRegCharge').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('NewRegCharge')
                              .AsFloat + Qry_LoadSMDBGrid.FieldByName
                              ('NewRegSvrTax').AsFloat));
               FieldByName('NewRegChargeOldValue').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('NewRegCharge')
                              .AsFloat + Qry_LoadSMDBGrid.FieldByName
                              ('NewRegSvrTax').AsFloat));
               FieldByName('NewRegChargeX').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('NewRegCharge')
                              .AsFloat));
               FieldByName('NewRegSvrTax').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('NewRegSvrTax')
                              .AsFloat));
               FieldByName('FollowUpCharge').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('FollowUpCharge')
                              .AsFloat + Qry_LoadSMDBGrid.FieldByName
                              ('FollowUpSvrTax').AsFloat));
               FieldByName('FollowUpChargeOldValue').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('FollowUpCharge')
                              .AsFloat + Qry_LoadSMDBGrid.FieldByName
                              ('FollowUpSvrTax').AsFloat));
               FieldByName('IsOldRecord').AsString := 'Y';
               FieldByName('FollowUpChargeX').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('FollowUpCharge')
                              .AsFloat));
               FieldByName('FollowUpSvrTax').AsString := FormatFloat
                    ('00.00', (Qry_LoadSMDBGrid.FieldByName('FollowUpSvrTax')
                              .AsFloat));
               Post;
          End;
          Qry_LoadSMDBGrid.Next;
     End;

     Qry_LoadSMDBGrid.Free;
end;

procedure TForm_TimeWisePriceSetup.SaveData;
Var
     Qry: TOraQuery;
     // Qry_Delete : TOraQuery;
     ls_TodaysDate, ls_TodaysTime: String;
     Newregcharge, Followupsvrtax, Followupcharge, Newregsvrtax: Double;
     Depid, Timewisedeppriceid: Integer;
     Totime, Fromtime, Patienttype: String;
     Lb_SuccessInSave: Boolean;

     Sender: TObject;
begin
     ls_TodaysDate := TodaysDate;
     ls_TodaysTime := TodaysTime;

     IF Table_List.RecordCount <= 0 Then
     Begin
          MessageDlg('No Record to Save !', mtWarning, [mbOK], 0);
     End;

     Pi_DepID := DBlcb_Dep.KeyValue;
     Pi_DocID := DBlcb_Doctor.KeyValue;

     Query := TOraQuery.Create(Nil);

     Lb_SuccessInSave := True;

     Table_List.First;
     While not Table_List.Eof do
     Begin
          if Trim(Table_List.FieldByName('PatientType').AsString) = '' then
          Begin
               MessageDlg('Please Insert Patient Type', mtWarning, [mbOK], 0);
               SMDBGrid1.Fields[0].FocusControl;
               Lb_SuccessInSave := False;
               Exit;
          End;

          if Trim(Table_List.FieldByName('FromTime').AsString) = '' then
          Begin
               MessageDlg('Please Insert From Time', mtWarning, [mbOK], 0);
               SMDBGrid1.Fields[1].FocusControl;
               Lb_SuccessInSave := False;
               Exit;
          End;

          if Trim(Table_List.FieldByName('ToTime').AsString) = '' then
          Begin
               MessageDlg('Please Insert To Time', mtWarning, [mbOK], 0);
               SMDBGrid1.Fields[2].FocusControl;
               Lb_SuccessInSave := False;
               Exit;
          End;
          Table_List.Next;
     End;

     Try

          DM_Hospital.DB.StartTransaction;
          Table_List.First;
          While not Table_List.Eof do
          Begin
               Totime := Table_List.FieldByName('ToTime').AsString;
               Fromtime := Table_List.FieldByName('FromTime').AsString;
               Patienttype := Table_List.FieldByName('PatientType').AsString;

               Newregcharge := Table_List.FieldByName('NewRegChargeX').AsFloat;
               Newregsvrtax := Table_List.FieldByName('Newregsvrtax').AsFloat;

               Followupsvrtax := Table_List.FieldByName('Followupsvrtax')
                    .AsFloat;
               Followupcharge := Table_List.FieldByName('FollowupchargeX')
                    .AsFloat;

               Timewisedeppriceid := Table_List.FieldByName
                    ('TimeWiseDepPriceSetupID').AsInteger;

               if Table_List.FieldByName('IsOldRecord').AsString <> 'Y' then
                    SAVETIMEWISEDEPPRICE(Pi_DepID,Pi_DocID, gi_UserID, Patienttype,
                         Fromtime, Totime, ls_TodaysDate, ls_TodaysTime,
                         Newregcharge, Newregsvrtax, Followupcharge,
                         Followupsvrtax)
               Else
               Begin
                    if (Table_List.FieldByName('NewRegCharge')
                              .AsFloat <> Table_List.FieldByName
                              ('NewRegChargeOldValue').AsFloat) or
                         (Table_List.FieldByName('FollowUpCharge')
                              .AsFloat <> Table_List.FieldByName
                              ('FollowUpChargeOldValue').AsFloat) or
                         (Table_List.FieldByName('PatientType')
                              .AsString <> Table_List.FieldByName
                              ('PatientTypeOldValue').AsString) or
                         (Table_List.FieldByName('FromTime')
                              .AsString <> Table_List.FieldByName
                              ('FromTimeOldValue').AsString) or
                         (Table_List.FieldByName('ToTime')
                              .AsString <> Table_List.FieldByName
                              ('ToTimeOldValue').AsString) then

                         UPDATETIMEWISEDEPPRICE(Timewisedeppriceid, Pi_DepID,Pi_DocID,
                              Patienttype, Fromtime, Totime, ls_TodaysDate,
                              ls_TodaysTime, Newregcharge, Newregsvrtax,
                              Followupcharge, Followupsvrtax);

               End;

               Table_List.Next;
          End;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          //DBlcb_DepClick(Sender);
          DBlcb_DoctorClick(Sender);
     Except
          DM_Hospital.DB.Rollback;
          MessageDlg('Failure to Save Time Wise Department Price !', mtWarning,
               [mbOK], 0);
     End;
end;

procedure TForm_TimeWisePriceSetup.SMDBGrid1ColExit(Sender: TObject);
begin
     if SMDBGrid1.Fields[SMDBGrid1.SelectedIndex].Value <> Null then
          CalculateData;
end;

procedure TForm_TimeWisePriceSetup.SMDBGrid1KeyPress
     (Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          CalculateData;
end;

procedure TForm_TimeWisePriceSetup.SpeedButton1Click(Sender: TObject);
var
     Query: TOraQuery;
     Ls_Id: String;
begin

     Query := TOraQuery.Create(nil);

     if Table_List.FieldByName('TimeWiseDepPriceSetupID').AsString <> '' then
     Begin
          Ls_Id := Table_List.FieldByName('TimeWiseDepPriceSetupID').AsString;

          With Query do
          Begin
               close;
               DatabaseName := gs_DatabaseName;
               SQL.Clear;
               SQL.Add
                    ('delete from TimewiseDepPrice where TimewiseDepPriceId=' +
                         #39 + Ls_Id + #39);
               ExecSQL;
          End;
          //DBlcb_DepClick(Sender);
          DBlcb_DoctorClick(Sender);

     End
     else
     begin
          With Query do
          Begin
               close;
               DatabaseName := gs_DatabaseName;
               SQL.Clear;
               SQL.Add(
                    'delete from TimewiseDepPrice where TimewiseDepPriceId='''' ');
               ExecSQL;
          End;
     end;
     Table_List.close;
     Table_List.Open;
     Table_List.First;
     Query.Free;

end;

end.
