unit Unit_InvestigationDetail;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, ServerDate, Dm,
     Dialogs, DB, DBTables, Grids, DBGrids, Mask, OleCtrls, DateEditXControl_TLB, StdCtrls, ExtCtrls, DBCtrls, Buttons;

type
     TFrame_InvestigationDetail = class(TFrame)
          Panel2: TPanel;
          Label18: TLabel;
          Label5: TLabel;
          DBLCB_RefDoc: TDBLookupComboBox;
          Dex_RptDate: TDateEditX;
          DBGrid1: TDBGrid;
    Table_Findings: TTable;
          DS_Findings: TDataSource;
          Query_Finding: TQuery;
          DS_RefDoccode: TDataSource;
          Query_RefDoccode: TQuery;
          Query_Data: TQuery;
          procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
               State: TGridDrawState);
     private
          isnew: Boolean;

          LRange, HRange, Findings, CalcFinding: Double;
          LSign, HSign: String;
          TestNameId, TestId: Integer;
          Qry: TQuery;
          Lympho, Mono, Eosinophils, Basophils, Band, Myeloblasts, Promyelocytes, Myelocytes, Metamyelocytes,
            Monoblasts, Lymphoblasts, Prolymphocyes: Double;

          TotalCholesterol, HDLCholesterol, Triglyceride: Double;
          TotalBilirubin, ConjugatedBilirubin: Double;
          Protein, Albumin: Double;
          UrineCreatinine, UrineVolume, SerumCreatinine: Double;
          DataLoading: Boolean;

          { Private declarations }
          procedure CreateFindingsTable;
          Procedure CalculateFormula(Query: TQuery);
          Procedure CalculateFormulaOnload;
          Function CalculatedField(TestNameId, TestId: Integer): Boolean;
     public
      ps_Query:String;
          { Public declarations }
          constructor Create(AOwner: Tcomponent); Override;
          destructor Destroy; Override;
     end;

implementation

{$R *.dfm}
{ TFrame1 }

constructor TFrame_InvestigationDetail.Create(AOwner: Tcomponent);
Var
     ls_date: String;
     i: Integer;
begin
     inherited;
     Query_RefDoccode.Close;
     Query_RefDoccode.DatabaseName := gs_DatabaseName;
     Query_RefDoccode.Open;
     Dex_RptDate.SystemOfDate := gi_datesystem;
     Dex_RptDate.text := gs_TestDate;
     DBLCB_RefDoc.KeyValue := GetRefDocCode(Gs_BillNo);
     CreateFindingsTable;
     if gi_datesystem = 0 then
          ls_date := TodaysDateVS
     else
          ls_date := TodaysDate;
     with Query_Data do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from vw_MedicalHistoryInvestigation');
          sql.Add('where patientID=' + IntToStr(gi_PatientID));
          sql.Add('and TestDate=' + #39 + gs_TestDate + #39);
          sql.Add('ORDER BY Deporder,displayorder');
          Open;
          i := 0;
          while not eof do
          begin
               gi_PatientTestID := FieldByName('PatientTestID').AsInteger;
               gi_TestNameId:=FieldByName('TestNameID').AsInteger;
               LoadPatientFindings(Table_Findings, gi_PatientTestID,gi_TestNameId);
               with Table_Findings do
               begin
                    Append;
                    FieldByName('Test').AsString :=
                      '----------------------------------------------------------------------------------------------';
                    FieldByName('Finding').AsString := '-----------------------------------------------';
                    FieldByName('RangeM').AsString := '-----------------------------------------------';
                    FieldByName('RangeF').AsString := '-----------------------------------------------';
                    FieldByName('Unit').AsString := '-----------------------------------------------';
                    Post;
               end;
               Next;
          end;
     end;
     with Query_Finding do
     begin
          Close;
          DatabaseName := gs_temppath;
          Open;
     end;
     //CalculateFormulaOnload;
     //Query_Finding.First;
end;

function TFrame_InvestigationDetail.CalculatedField(TestNameId, TestId: Integer): Boolean;
begin
     if (TestNameId = 4) and (TestId = 3) then
          Result := true
     else if (TestNameId = 50) and (TestId = 89) then
          Result := true
     else if (TestNameId = 39) and (TestId = 61) then
          Result := true
     else if (TestNameId = 39) and (TestId = 63) then
          Result := true
     else if (TestNameId = 39) and (TestId = 64) then
          Result := true
     else if (TestNameId = 306) and (TestId = 246) then
          Result := true
     else if (TestNameId = 125) and (TestId = 229) then
          Result := true
     else
          Result := false;
end;

procedure TFrame_InvestigationDetail.CalculateFormula(Query: TQuery);
begin
     TestNameId := Query.FieldByName('TestNameID').AsInteger;
     TestId := Query.FieldByName('TestID').AsInteger;
     // if IsStrANumberExtended(Query.FieldByName('Finding').AsString) then
     // Findings := Query.FieldByName('Finding').AsInteger;
     Qry := TQuery.Create(nil);
     Qry.DatabaseName := gs_temppath;
     if TestNameId = 4 then
     begin
          if TestId = 4 then
               Lympho := Findings
          else if TestId = 6 then
               Mono := Findings
          else if TestId = 7 then
               Eosinophils := Findings
          else if TestId = 8 then
               Basophils := Findings
          else if TestId = 9 then
               Band := Findings
          else if TestId = 10 then
               Myeloblasts := Findings
          else if TestId = 11 then
               Promyelocytes := Findings
          else if TestId = 12 then
               Myelocytes := Findings
          else if TestId = 13 then
               Metamyelocytes := Findings
          else if TestId = 15 then
               Monoblasts := Findings
          else if TestId = 16 then
               Lymphoblasts := Findings
          else if TestId = 17 then
               Prolymphocyes := Findings;

          CalcFinding := CalculateNeutrophils(Lympho, Mono, Eosinophils, Basophils, Band, Myeloblasts, Promyelocytes,
               Myelocytes, Metamyelocytes, Monoblasts, Lymphoblasts, Prolymphocyes);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=3');
               ExecSQL;
          end;
     end
     else if TestNameId = 39 then
     begin
          if TestId = 59 then
               TotalCholesterol := Findings
          else if TestId = 62 then
               HDLCholesterol := Findings
          else if TestId = 60 then
               Triglyceride := Findings;

          CalcFinding := CalculateLDLCholesterol(TotalCholesterol, HDLCholesterol, Triglyceride);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=61');
               ExecSQL;
          end;
          CalcFinding := CalculateVLDLCholesterol(Triglyceride);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=63');
               ExecSQL;
          end;
          CalcFinding := CalculateNonHDLCholesterol(TotalCholesterol, HDLCholesterol);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=64');
               ExecSQL;
          end;
     end
     else if TestNameId = 50 then
     begin
          if TestId = 87 then
               TotalBilirubin := Findings
          else if TestId = 88 then
               ConjugatedBilirubin := Findings;

          CalcFinding := CalculateUnconjugatedBilirubin(TotalBilirubin, ConjugatedBilirubin);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=89');
               ExecSQL;
          end;
     end
     else if (TestNameId = 48) or (TestNameId = 85) then
     begin
          if TestId = 84 then
               Protein := Findings
          else if TestId = 85 then
               Albumin := Findings;
          CalcFinding := CalculateGlobulin(Protein, Albumin);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=246');
               ExecSQL;
          end;
     end
     else if (TestNameId = 229) or (TestNameId = 32) or (TestNameId = 221) or (TestNameId = 223) then
     begin
          if TestId = 223 then
               UrineCreatinine := Findings
          else if TestId = 221 then
               UrineVolume := Findings
          else if TestId = 32 then
               SerumCreatinine := Findings;
          CalcFinding := CalculateCreatinineclearance(UrineCreatinine, UrineVolume, SerumCreatinine);
          with Qry do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Update Findings Set Finding=' + #39 + FloatToStr(CalcFinding) + #39 + ' Where TestID=229');
               ExecSQL;
          end;
     end;
     Qry.Free;
end;

procedure TFrame_InvestigationDetail.CalculateFormulaOnload;
Var
     Sender: TObject;
     Key: Char;
     i: Integer;
begin
     for i := 0 to Query_Finding.RecordCount - 1 do
     begin
          DataLoading := true;
          Key := #13;
          DBGrid1KeyPress(Sender, Key);
     end;
     DataLoading := false;
end;

procedure TFrame_InvestigationDetail.CreateFindingsTable;
begin
     if FileExists(gs_temppath + '\Findings.db') then
     begin
          with Table_Findings do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'Findings.db';
               DeleteTable;
          end;
     end;
     with Table_Findings do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'Findings.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('PTDetailId', ftInteger);
          FieldDefs.Add('TestName', ftString, 100);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('PatientTestId', ftInteger);
          FieldDefs.Add('TestID', ftInteger);
          FieldDefs.Add('Test', ftString, 64);
          FieldDefs.Add('Finding', ftString, 100);
          FieldDefs.Add('LRange', ftString, 100);
          FieldDefs.Add('HRange', ftString, 100);
          FieldDefs.Add('LRangeM', ftString, 100);
          FieldDefs.Add('HRangeM', ftString, 100);
          FieldDefs.Add('LRangeF', ftString, 100);
          FieldDefs.Add('HRangeF', ftString, 100);
          FieldDefs.Add('RangeReal', ftString, 100);
          FieldDefs.Add('Range', ftString, 100);
          FieldDefs.Add('SpecialRange', ftString, 100);
          FieldDefs.Add('RangeM', ftString, 100);
          FieldDefs.Add('RangeF', ftString, 100);
          FieldDefs.Add('Unit', ftString, 32);
          FieldDefs.Add('Extra', ftString, 100);
          FieldDefs.Add('ExtraFinding', ftString, 100);
          FieldDefs.Add('SampleNo', ftString, 32);
          FieldDefs.Add('IsHeading', ftString, 1);
          FieldDefs.Add('IsResultSave', ftString, 1);
          FieldDefs.Add('IsNew', ftString, 1);
          FieldDefs.Add('RepNo', ftInteger);
          CreateTable;
     end;

end;

procedure TFrame_InvestigationDetail.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
     Column: TColumn; State: TGridDrawState);
Var
     LRange, HRange, Finding: Double;
     HSign, LSign: String;
begin
     if not IsStrANumber(Query_Finding.FieldByName('finding').AsString) then
          exit;
     // if Query_Finding.FieldByName('LRange').AsString <> '' then
     // LRange := StrToFloat(StringReplace(Query_Finding.FieldByName('LRange').AsString, ',', '', [rfReplaceAll]));
     //
     // if Query_Finding.FieldByName('HRange').AsString <> '' then
     // HRange := StrToFloat(StringReplace(Query_Finding.FieldByName('HRange').AsString, ',', '', [rfReplaceAll]));
     //
     if Query_Finding.FieldByName('finding').AsString <> '' then
          Finding := Query_Finding.FieldByName('finding').AsFloat;

     // if (Query_Finding.FieldByName('LRange').AsString = '') and (Query_Finding.FieldByName('HRange').AsString = '') then
     // begin
     // with DBGrid1.Canvas do
     // begin
     // Brush.Color := clWebSienna;
     // Font.Color := clWhite;
     // end;
     // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     // end;
     if (Query_Finding.FieldByName('finding').AsString = '') then
          exit;

     if Query_Finding.FieldByName('LRange').AsString <> '' then
     begin
          if Copy(Query_Finding.FieldByName('LRange').AsString, 1, 1) = '>' then
          begin
               LSign := '>';
               LRange := StrToFloat(Copy(Query_Finding.FieldByName('LRange').AsString, 2, 999));
          end
          else if Copy(Query_Finding.FieldByName('LRange').AsString, 1, 1) = '<' then
          begin
               LSign := '<';
               LRange := StrToFloat(Copy(Query_Finding.FieldByName('LRange').AsString, 2, 999));
          end
          else
               LRange := StrToFloat(StringReplace(Query_Finding.FieldByName('LRange').AsString, ',', '', [rfReplaceAll])
                 );
     end;

     if Query_Finding.FieldByName('HRange').AsString <> '' then
     begin
          if Copy(Query_Finding.FieldByName('HRange').AsString, 1, 1) = '>' then
          begin
               HSign := '>';
               HRange := StrToFloat(Copy(Query_Finding.FieldByName('HRange').AsString, 2, 999));
          end
          else if Copy(Query_Finding.FieldByName('HRange').AsString, 1, 1) = '<' then
          begin
               HSign := '<';
               HRange := StrToFloat(Copy(Query_Finding.FieldByName('HRange').AsString, 2, 999));
          end
          else
               HRange := StrToFloat(StringReplace(Query_Finding.FieldByName('HRange').AsString, ',', '', [rfReplaceAll])
                 );
     end;

     if Query_Finding.FieldByName('finding').AsString <> '' then
          Finding := Query_Finding.FieldByName('finding').AsFloat;

     if (Query_Finding.FieldByName('LRange').AsString = '') and (Query_Finding.FieldByName('HRange').AsString = '') then
     begin
          if Query_Finding.FieldByName('Finding').AsString <> '' then
               Query_Finding.FieldByName('Finding').AsString := '';
          Query_Finding.Next;
          exit;
     end;
     if LSign = '>' then
     begin
          if Finding <= LRange then
          begin
               with DBGrid1.Canvas do
               begin
                    Brush.Color := clWebTomato;
                    Font.Color := clWhite;
               end;
               if State = [gdSelected] then
               begin
                    DBGrid1.Canvas.Brush.Color := clWebTeal;
               end;
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end
     else if LSign = '<' then
     begin
          if Finding >= LRange then
          begin
               with DBGrid1.Canvas do
               begin
                    Brush.Color := clWebTomato;
                    Font.Color := clWhite;
               end;
               if State = [gdSelected] then
               begin
                    DBGrid1.Canvas.Brush.Color := clWebTeal;
               end;
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end;
     // else
     // begin
     // if Finding < LRange then
     // begin
     // with DBGrid1.Canvas do
     // begin
     // Brush.Color := clWebTomato;
     // Font.Color := clWhite;
     // end;
     // if State = [gdSelected] then
     // begin
     // DBGrid1.Canvas.Brush.Color := clWebTeal;
     // end;
     // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     // end;
     // end;

     if HSign = '>' then
     begin
          if Finding <= HRange then
          begin
               with DBGrid1.Canvas do
               begin
                    Brush.Color := clWebTomato;
                    Font.Color := clWhite;
               end;
               if State = [gdSelected] then
               begin
                    DBGrid1.Canvas.Brush.Color := clWebTeal;
               end;
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end
     else if HSign = '<' then
     begin
          if Finding >= HRange then
          begin
               with DBGrid1.Canvas do
               begin
                    Brush.Color := clWebTomato;
                    Font.Color := clWhite;
               end;
               if State = [gdSelected] then
               begin
                    DBGrid1.Canvas.Brush.Color := clWebTeal;
               end;
               DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
          end;
     end;
     // else
     // begin
     // if Finding > HRange then
     // begin
     // with DBGrid1.Canvas do
     // begin
     // Brush.Color := clWebTomato;
     // Font.Color := clWhite;
     // end;
     // if State = [gdSelected] then
     // begin
     // DBGrid1.Canvas.Brush.Color := clWebTeal;
     // end;
     // DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     // end;
     // end;

     if ((LSign = '') and (HSign = '')) and ((Finding < LRange) or (Finding > HRange)) then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebTomato;
               Font.Color := clWhite;
          end;
          if State = [gdSelected] then
          begin
               DBGrid1.Canvas.Brush.Color := clWebTeal;
          end;
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
end;

procedure TFrame_InvestigationDetail.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     LRange := 0;
     HRange := 0;
     Findings := 0;
     LSign := '';
     HSign := '';
     if Key = #13 then
     begin
          if CalculatedField((Query_Finding.FieldByName('TestNameID').AsInteger),
               (Query_Finding.FieldByName('TestID').AsInteger)) then
          begin
               Query_Finding.Next;
               exit;
          end;

          if Copy(Query_Finding.FieldByName('Test').AsString, 1, 5) = '-----' then
          begin
               Query_Finding.Next;
               exit;
          end;
          if not IsStrANumber(StringReplace((Query_Finding.FieldByName('finding').AsString), '.', '', [rfReplaceAll]))
            then
          begin
               try
                    DBGrid1.Fields[1].Value := GetFindingFromCode(Query_Finding.FieldByName('finding').AsString);
               except
               end;
               Query_Finding.Next;
               exit;
          end;
          if Query_Finding.FieldByName('LRange').AsString <> '' then
          begin
               if Copy(Query_Finding.FieldByName('LRange').AsString, 1, 1) = '>' then
               begin
                    LSign := '>';
                    LRange := StrToFloat(Copy(Query_Finding.FieldByName('LRange').AsString, 2, 999));
               end
               else if Copy(Query_Finding.FieldByName('LRange').AsString, 1, 1) = '<' then
               begin
                    LSign := '<';
                    LRange := StrToFloat(Copy(Query_Finding.FieldByName('LRange').AsString, 2, 999));
               end
               else
                    LRange := StrToFloat(StringReplace(Query_Finding.FieldByName('LRange').AsString, ',', '',
                              [rfReplaceAll]));
          end;

          if Query_Finding.FieldByName('HRange').AsString <> '' then
          begin
               if Copy(Query_Finding.FieldByName('HRange').AsString, 1, 1) = '>' then
               begin
                    HSign := '>';
                    HRange := StrToFloat(Copy(Query_Finding.FieldByName('HRange').AsString, 2, 999));
               end
               else if Copy(Query_Finding.FieldByName('HRange').AsString, 1, 1) = '<' then
               begin
                    HSign := '<';
                    HRange := StrToFloat(Copy(Query_Finding.FieldByName('HRange').AsString, 2, 999));
               end
               else
                    HRange := StrToFloat(StringReplace(Query_Finding.FieldByName('HRange').AsString, ',', '',
                              [rfReplaceAll]));
          end;

          if Query_Finding.FieldByName('finding').AsString <> '' then
               Findings := Query_Finding.FieldByName('finding').AsFloat;

          if (Query_Finding.FieldByName('LRange').AsString = '') and
            (Query_Finding.FieldByName('HRange').AsString = '') then
          begin
               if Query_Finding.FieldByName('Finding').AsString <> '' then
                    Query_Finding.FieldByName('Finding').AsString := '';
               Query_Finding.Next;
               exit;
          end;
          if LSign = '>' then
          begin
               if Findings <= LRange then
               begin
                    if Not DataLoading then
                         MsgBox(1008, 0, '', '', '');
                    CalculateFormula(Query_Finding);
                    Query_Finding.Next;
                    exit;
               end;
          end
          else if LSign = '<' then
          begin
               if Findings >= LRange then
               begin
                    if Not DataLoading then
                         MsgBox(1008, 0, '', '', '');
                    CalculateFormula(Query_Finding);
                    Query_Finding.Next;
                    exit;
               end;
          end;
          // else
          // begin
          // if Findings < LRange then
          // begin
          // if Not DataLoading then
          // MsgBox(1008, 0, '', '', '');
          // CalculateFormula(Query_Finding);
          // Query_Finding.Next;
          // exit;
          // end;
          // end;

          if HSign = '>' then
          begin
               if Findings <= HRange then
               begin
                    if Not DataLoading then
                         MsgBox(1008, 0, '', '', '');
                    CalculateFormula(Query_Finding);
                    Query_Finding.Next;
                    exit;
               end;
          end
          else if HSign = '<' then
          begin
               if Findings >= HRange then
               begin
                    if Not DataLoading then
                         MsgBox(1008, 0, '', '', '');
                    CalculateFormula(Query_Finding);
                    Query_Finding.Next;
                    exit;
               end;
          end;
          // else if HSign = '>' then
          // begin
          // if Findings > HRange then
          // begin
          // if Not DataLoading then
          // MsgBox(1008, 0, '', '', '');
          // CalculateFormula(Query_Finding);
          // Query_Finding.Next;
          // exit;
          // end;
          // end;
          CalculateFormula(Query_Finding);
          Query_Finding.Next;
     end;
end;

destructor TFrame_InvestigationDetail.Destroy;
begin
     // ClearVariable;
     inherited;
end;

end.
