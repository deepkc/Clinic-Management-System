unit Unit_MedicalHistoryFrame;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Unit_Master,
     DBTables, OleCtrls, DateEditXControl_TLB, ComCtrls, DM, Fxn, DB, DbGridExportToExcel, serverdate;

type
     TFrame_Diagnosis = class(TFrame)
          Query_Blank: TQuery;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Label2: TLabel;
          spbtn_Delete: TSpeedButton;
          Edit_Search: TEdit;
          DBGrid1: TDBGrid;
          TabSheet2: TTabSheet;
          lbl_ICD: TLabel;
          chkbox_LocalName: TCheckBox;
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_New: TBitBtn;
          DataSource_List: TDataSource;
          Query_List: TQuery;
          Query_ICD: TQuery;
          DataSource_ICD: TDataSource;
          DBLCB_ICD: TDBLookupComboBox;
          LE_LocalName: TLabeledEdit;
          Date_Since: TDateEditX;
          Label4: TLabel;
          cmb_Status: TComboBox;
          Label3: TLabel;
          cmb_Source: TComboBox;
          Label5: TLabel;
          spbtnSendToExcel: TSpeedButton;
          spbtn_Date: TSpeedButton;
          procedure BB_SaveClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure chkbox_LocalNameClick(Sender: TObject);
          procedure FillGrid;
          procedure Edit_SearchChange(Sender: TObject);
          procedure spbtn_DateClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure spbtnSendToExcelClick(Sender: TObject);
          procedure spbtn_DeleteClick(Sender: TObject);
     private
          MEDICALHISTORYID, PATIENTID, INPATIENTID, DIAGNOSISID: Integer;
          DIAGNOSIS, DIAGNOSISTYPE, SINCEDATE, STATUS, SOURCE: STRING;
          pb_isnew: Boolean;
          function ValidData: Boolean;
          procedure CollectData;
          { Private declarations }
     public
          { Public declarations }
     end;

implementation

uses Unit_MedicalHistoryParent;

{$R *.dfm}
{ TFrame_MedicalHistory }

procedure TFrame_Diagnosis.BB_NewClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     pb_isnew := true;
     Date_Since.SystemOfDate := gi_datesystem;
     spbtn_Date.Caption := gs_DateCaption;
     if DBLCB_ICD.Visible then
          DBLCB_ICD.SetFocus
     else
          LE_LocalName.SetFocus;
end;

procedure TFrame_Diagnosis.FillGrid;
begin
     with Query_List do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from vw_MedicalHistoryDiagnosis');
          sql.Add('where patientID=' + IntToStr(gi_PatientID));
          sql.Add('AND InPatientId=' + IntToStr(gi_InPatientID));
          if trim(Edit_Search.Text) <> '' then
          begin
               sql.Add('and (Diagnosis like ''' + trim(Edit_Search.Text) + '%''');
               sql.Add(' OR Type like ''' + trim(Edit_Search.Text) + '%'')');
          end;
          sql.Add('order by Since desc,Diagnosis');
          Open;
     end;
end;

procedure TFrame_Diagnosis.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TFrame_Diagnosis.spbtnSendToExcelClick(Sender: TObject);
begin
     if Query_List.RecordCount < 1 then
          exit;

     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_MedicalHistoryParent, DBGrid1, true, 'Diagnosis of ' + Gs_PatientName,
               TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

procedure TFrame_Diagnosis.spbtn_DateClick(Sender: TObject);
begin
     ChangeDateSystem(Date_Since, spbtn_Date);
end;

procedure TFrame_Diagnosis.spbtn_DeleteClick(Sender: TObject);
begin
     if Query_List.RecordCount < 1 then
          exit;
     MEDICALHISTORYID := Query_List.FieldByName('MEDICALHISTORYID').AsInteger;
     if EditableMedicalHistory(MEDICALHISTORYID) then
     begin
          if MsgBox(1001, 1, '', '', '') then
          begin
               DeleteMedicalHistory(MEDICALHISTORYID);
          end;
     end
     else
     begin
          MsgBox(1023, 0, '', '', ''); // Modification can be done within 24 hours.
          exit;
     end;
     FillGrid;
end;

function TFrame_Diagnosis.ValidData: Boolean;
begin
     result := false;
     if PageControl1.ActivePageIndex = 0 then
          exit;

     if chkbox_LocalName.Checked then
     begin
          if trim(LE_LocalName.Text) = '' then
          begin
               MsgBox(1020, 0, 'Local Name', '', ''); // Data Missing. #13 Local Name is required.
               LE_LocalName.SetFocus;
               exit;
          end;
     end
     else
     begin
          if DBLCB_ICD.KeyValue = Null then
          begin
               MsgBox(1021, 0, 'ICD', '', '');
               DBLCB_ICD.SetFocus;
               exit;
          end;
     end;
     if not ValidDate(Date_Since.Text) then
     begin
          MsgBox(1022, 0, 'Since Date', '', ''); // Since Date is invalid.
          exit;
     end;

//     if AfterTodaysDate(Date_Since) then
//     begin
//          MsgBox(1024, 0, 'Since Date', '', ''); // Since Date is after todays date.
//          exit;
//     end;

     if cmb_Status.ItemIndex < 0 then
     begin
          MsgBox(1021, 0, 'Status', '', ''); // Data Missing. #13 Status is not selected.
          cmb_Status.SetFocus;
          exit;
     end;
     if cmb_Source.ItemIndex < 0 then
     begin
          MsgBox(1021, 0, 'Source', '', '');
          cmb_Source.SetFocus;
          exit;
     end;
     if not pb_isnew then
     begin
          if not EditableMedicalHistory(MEDICALHISTORYID) then
          begin
               MsgBox(1023, 0, '', '', ''); // Modification can be done within 24 hours.
               exit;
          end;
     end;
     result := true;
end;

procedure TFrame_Diagnosis.CollectData;
begin
     if chkbox_LocalName.Checked then
     begin
          DIAGNOSIS := UpperCase(trim(LE_LocalName.Text));
          DIAGNOSISID := GetLocalDiseaseID(DIAGNOSIS);
          DIAGNOSISTYPE := 'LOCAL';
     end
     else
     begin
          DIAGNOSISID := DBLCB_ICD.KeyValue;
          DIAGNOSISTYPE := 'ICD';
     end;

     Date_Since.SystemOfDate := gi_datesystem;
     spbtn_Date.Caption := gs_DateCaption;
     SINCEDATE := Date_Since.Text;
     if UpperCase(trim(cmb_Status.Text)) = 'ACTIVE' then
          STATUS := 'A'
     else if UpperCase(trim(cmb_Status.Text)) = 'CURED' then
          STATUS := 'C'
     else if UpperCase(trim(cmb_Status.Text)) = 'SUSPICIOUS' then
          STATUS := 'S'
     else if UpperCase(trim(cmb_Status.Text)) = 'SUSPENDED' then
          STATUS := 'X';

     if UpperCase(trim(cmb_Source.Text)) = 'SELF' then
          SOURCE := 'SELF'
     else if UpperCase(trim(cmb_Source.Text)) = 'PROVISIONAL DIAGNOSIS' then
          SOURCE := 'PROV'
     else if UpperCase(trim(cmb_Source.Text)) = 'DIAGNOSIS' then
          SOURCE := 'DIAG';
end;

procedure TFrame_Diagnosis.DBGrid1DblClick(Sender: TObject);
begin
     if Query_List.RecordCount < 1 then
          exit;
     pb_isnew := false;
     PageControl1.ActivePageIndex := 1;
     FrameCleared := false;
     MEDICALHISTORYID := Query_List.FieldByName('MEDICALHISTORYID').AsInteger;
     if Query_List.FieldByName('Type').AsString = 'LOCAL' then
     begin
          chkbox_LocalName.Checked := true;
          LE_LocalName.Text := Query_List.FieldByName('Diagnosis').AsString;
     end
     else
     begin
          chkbox_LocalName.Checked := false;
          DBLCB_ICD.KeyValue := Query_List.FieldByName('DiagnosisID').AsInteger;
     end;
     Date_Since.SystemOfDate := gi_datesystem;
     spbtn_Date.Caption := gs_DateCaption;
     Date_Since.Text := Query_List.FieldByName('Since').AsString;
     if Query_List.FieldByName('StatusCode').AsString = 'A' then
          cmb_Status.ItemIndex := 0
     else if Query_List.FieldByName('StatusCode').AsString = 'C' then
          cmb_Status.ItemIndex := 1
     else if Query_List.FieldByName('StatusCode').AsString = 'S' then
          cmb_Status.ItemIndex := 2
     else if Query_List.FieldByName('StatusCode').AsString = 'X' then
          cmb_Status.ItemIndex := 3;

     if Query_List.FieldByName('SourceCode').AsString = 'SELF' then
          cmb_Source.ItemIndex := 0
     else if Query_List.FieldByName('SourceCode').AsString = 'PROV' then
          cmb_Source.ItemIndex := 1
     else if Query_List.FieldByName('SourceCode').AsString = 'DIAG' then
          cmb_Source.ItemIndex := 2;

     if DBLCB_ICD.Visible then
          DBLCB_ICD.SetFocus
     else
          LE_LocalName.SetFocus;
end;

procedure TFrame_Diagnosis.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
          DBGrid1DblClick(Sender);
end;

procedure TFrame_Diagnosis.Edit_SearchChange(Sender: TObject);
begin
     FillGrid;
end;

procedure TFrame_Diagnosis.BB_SaveClick(Sender: TObject);
Var
     Query: TQuery;
begin
     if not ValidData then
          exit;
     CollectData;
     try
          DM_Hospital.DB.StartTransaction;
          if pb_isnew then
               SaveMedicalHistory(gi_PatientID, gi_InPatientID, DIAGNOSISID, DIAGNOSIS, DIAGNOSISTYPE, SINCEDATE,
                    STATUS, SOURCE)
          else
               UpdateMedicalHistory(MEDICALHISTORYID, gi_PatientID, gi_InPatientID, DIAGNOSISID, DIAGNOSIS,
                    DIAGNOSISTYPE, SINCEDATE, STATUS, SOURCE);

          DM_Hospital.DB.Commit;
          pb_isnew := true;
          ShowDoneMessage;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
          exit;
     end;
     ClearAll(PageControl1.Pages[1]);
     FillGrid;
     if DBLCB_ICD.Visible then
          DBLCB_ICD.SetFocus
     else
          LE_LocalName.SetFocus;
end;

procedure TFrame_Diagnosis.chkbox_LocalNameClick(Sender: TObject);
begin
     if chkbox_LocalName.Checked then
     begin
          LE_LocalName.Left := DBLCB_ICD.Left;
          LE_LocalName.Top := DBLCB_ICD.Top;
          lbl_ICD.Visible := false;
          DBLCB_ICD.Visible := false;
          LE_LocalName.Visible := true;
          LE_LocalName.SetFocus;
          DIAGNOSISTYPE := 'LOCAL';
     end
     else
     begin
          lbl_ICD.Visible := true;
          DBLCB_ICD.Visible := true;
          LE_LocalName.Visible := false;
          DBLCB_ICD.SetFocus;
          DIAGNOSISTYPE := 'ICD';
     end;
end;
{
  procedure TFrame_Diagnosis.chkbox_LocalName_srcClick(Sender: TObject);
  begin
  if chkbox_LocalName_src.Checked then
  begin
  LE_LocalName_src.Left := Dblcb_ICD_src.Left;
  LE_LocalName_src.Top := Dblcb_ICD_src.Top;
  lbl_ICD_src.Visible := false;
  Dblcb_ICD_src.Visible := false;
  LE_LocalName_src.Visible := true;
  end
  else
  begin
  lbl_ICD_src.Visible := true;
  Dblcb_ICD_src.Visible := true;
  LE_LocalName_src.Visible := false;
  end;
  end; }

Initialization

RegisterClass(TFrame_Diagnosis);

finalization

UnRegisterClass(TFrame_Diagnosis);

end.
