unit Unit_Test1;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate, DBGridExportToExcel,
     Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Buttons, ComCtrls;

type
     TForm_Test1 = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          BB_New: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Label1: TLabel;
          Label2: TLabel;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          DBLCB_Dep: TDBLookupComboBox;
          DBGrid1: TDBGrid;
          TabSheet2: TTabSheet;
          Label3: TLabel;
          Label10: TLabel;
          le_LRangeG: TLabeledEdit;
          Le_HRangeG: TLabeledEdit;
          le_Test: TLabeledEdit;
          CB_IsHeading: TCheckBox;
          Query_Department: TQuery;
          Ds_Department: TDataSource;
          Query_list: TQuery;
          Ds_List: TDataSource;
          Dblcb_Test: TDBLookupComboBox;
          Query_Test: TQuery;
          DS_Test: TDataSource;
          lbl_DepartmentName: TLabel;
          Label7: TLabel;
          lbl_TestName: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Label9: TLabel;
          Label12: TLabel;
          Label13: TLabel;
          le_LRangeM: TEdit;
          Le_HRangeM: TEdit;
          le_LRangeF: TEdit;
          Le_HRangeF: TEdit;
          le_LRangeC: TEdit;
          Le_HRangeC: TEdit;
          Label14: TLabel;
          le_DisplayOrder: TLabeledEdit;
          DBlCB_Unit: TDBLookupComboBox;
          Label8: TLabel;
          Query_Unit: TQuery;
          Ds_Unit: TDataSource;
          edit_suffix: TEdit;
          Label11: TLabel;
          CB_IsActive: TCheckBox;
          LE_Abbreviation: TLabeledEdit;
          Memo_SpecialRange: TMemo;
          Label15: TLabel;
          Shape2: TShape;
          Label16: TLabel;
          CB_WorkList: TCheckBox;
          Cb_PatientTestList: TCheckBox;
          BitBtn1: TBitBtn;
          BitBtn2: TBitBtn;
          Cb_IsSubjective: TCheckBox;
          CB_GlobalSearch: TCheckBox;
          DBGrid_TestNameList: TDBGrid;
          Edit_TestName: TEdit;
          Query_TestName: TQuery;
          DS_TestName: TDataSource;
          CB_Extended: TCheckBox;
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure Dblcb_TestClick(Sender: TObject);
          procedure DBLCB_DepClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure SpeedButton1Click(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure le_LRangeMKeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure BitBtn1Click(Sender: TObject);
          procedure DBlCB_UnitKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure CB_GlobalSearchClick(Sender: TObject);
          procedure Edit_TestNameChange(Sender: TObject);
          procedure Edit_TestNameExit(Sender: TObject);
          procedure Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_TestNameKeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid_TestNameListDblClick(Sender: TObject);
    procedure CB_ExtendedClick(Sender: TObject);
     private
          pb_isnew: Boolean;
          pi_TestId: Integer;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_Test1: TForm_Test1;

implementation

uses Unit_AltWorkListSetup;

Procedure SaveTest(TESTNAMEID, DISPLAYORDER, DEPORDER: Integer; TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC, TEST, LRANGEM,
     HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST: String; ISHEADING, ISACTIVE, ISSUBJECTIVE: Boolean); Stdcall;
external 'MidasFunction.bpl';
Procedure UpdateTest(TestID, TESTNAMEID, DISPLAYORDER, DEPORDER: Integer; TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC,
     TEST, LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST: String;
     ISHEADING, ISACTIVE, ISSUBJECTIVE: Boolean); Stdcall; external 'MidasFunction.bpl';
Procedure DeleteTest(TestID: Integer); stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_Test1.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.DatabaseName := gs_DatabaseName;
          Query_list.Open;
     End
     else
          Close;
end;

procedure TForm_Test1.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     lbl_DepartmentName.Caption := DBLCB_Dep.Text;
     if CB_GlobalSearch.Checked = true then
          lbl_TestName.Caption := Edit_TestName.Text
     Else
          lbl_TestName.Caption := Dblcb_Test.Text;
end;

procedure TForm_Test1.BB_SaveClick(Sender: TObject);
Var
     TESTNAMEID, DISPLAYORDER, DEPORDER: Integer;
     TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC, TEST, LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST,
       PATIENTTESTLIST: String;
     ISHEADING, ISACTIVE, ISSUBJECTIVE: Boolean;
begin
     TESTNAMEID := Dblcb_Test.KeyValue;
     if le_DisplayOrder.Text = '' then
          DISPLAYORDER := 0
     else
          DISPLAYORDER := StrToInt(le_DisplayOrder.Text);
     DEPORDER := 0;
     TUNIT := VarToStr(DBlCB_Unit.KeyValue);
     LRANGEG := le_LRangeG.Text;
     HRANGEG := Le_HRangeG.Text;
     LRANGEF := le_LRangeF.Text;
     HRANGEF := Le_HRangeF.Text;
     LRANGEM := le_LRangeM.Text;
     HRANGEM := Le_HRangeM.Text;
     LRANGEC := le_LRangeC.Text;
     HRANGEC := Le_HRangeC.Text;
     SUFFIX := edit_suffix.Text;
     ABBREVIATION := LE_Abbreviation.Text;
     SPECIALRANGE := Memo_SpecialRange.Text;
     TEST := le_Test.Text;
     if CB_WorkList.Checked = true then
          WORKLIST := 'Y'
     else
          WORKLIST := 'N';
     if Cb_PatientTestList.Checked = true then
          PATIENTTESTLIST := 'Y'
     else
          PATIENTTESTLIST := 'N';
     if CB_IsHeading.Checked = true then
          ISHEADING := true
     else
          ISHEADING := false;
     if CB_IsActive.Checked = true then
          ISACTIVE := true
     else
          ISACTIVE := false;

     if Cb_IsSubjective.Checked = true then
          ISSUBJECTIVE := true
     else
          ISSUBJECTIVE := false;
     try
          DM_Hospital.DB.StartTransaction;
          try

               if pb_isnew then
                    SaveTest(TESTNAMEID, DISPLAYORDER, DEPORDER, TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC, TEST,
                         LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST, ISHEADING, ISACTIVE, ISSUBJECTIVE)
               else
                    UpdateTest(pi_TestId, TESTNAMEID, DISPLAYORDER, DEPORDER, TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC,
                         TEST, LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST, ISHEADING, ISACTIVE,
                         ISSUBJECTIVE);
          except
               if pb_isnew then
                    SaveTest(TESTNAMEID, DISPLAYORDER, DEPORDER, TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC, TEST,
                         LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST, ISHEADING, ISACTIVE, ISSUBJECTIVE)
               else
                    UpdateTest(pi_TestId, TESTNAMEID, DISPLAYORDER, DEPORDER, TUNIT, LRANGEG, HRANGEG, LRANGEF, HRANGEF, LRANGEC, HRANGEC,
                         TEST, LRANGEM, HRANGEM, SUFFIX, ABBREVIATION, SPECIALRANGE, WORKLIST, PATIENTTESTLIST, ISHEADING, ISACTIVE,
                         ISSUBJECTIVE);
          end;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          pb_isnew := true;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TForm_Test1.BitBtn1Click(Sender: TObject);
begin
     Try
          Form_AltWorkListSetup := TForm_AltWorkListSetup.Create(Nil);
          Form_AltWorkListSetup.ShowModal;
     Finally
          Form_AltWorkListSetup.Free;
     End;

end;

procedure TForm_Test1.CB_ExtendedClick(Sender: TObject);
begin
     if CB_Extended.Checked=False then
     Begin
          Query_TestName.Close;
          Query_TestName.Open;
     End;

end;

procedure TForm_Test1.CB_GlobalSearchClick(Sender: TObject);
begin
     if CB_GlobalSearch.Checked then
     Begin
          Query_TestName.Close;
          Query_TestName.Open;

          Edit_TestName.Text := '';
          Edit_TestName.Visible := true;
          Edit_TestName.Width := 160;
          Edit_TestName.SetFocus;
          Edit_TestName.Top := Dblcb_Test.Top;
          Edit_TestName.Left := Dblcb_Test.Left;
          DBGrid_TestNameList.Visible := false;
          DBGrid_TestNameList.Visible := true;
          DBGrid_TestNameList.Left := Dblcb_Test.Left;
          DBGrid_TestNameList.Width := 421;
          DBGrid_TestNameList.Top := 421;
          DBGrid_TestNameList.Top := Dblcb_Test.Top + 22;
          DBGrid_TestNameList.Height := 200;

     End
     Else
     Begin
          Query_TestName.Close;
          Dblcb_Test.KeyValue := NULL;
          DBLCB_Dep.KeyValue := NULL;
          Edit_TestName.Visible := false;
          DBGrid_TestNameList.Visible := false;
     End;
end;

procedure TForm_Test1.DBGrid1DblClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
     pb_isnew := false;
     lbl_DepartmentName.Caption := DBLCB_Dep.Text;
     lbl_TestName.Caption := Dblcb_Test.Text;
     with Query_list do
     begin
          le_LRangeG.Text := FieldByName('LRangeG').AsString;
          Le_HRangeG.Text := FieldByName('HRangeG').AsString;
          le_LRangeF.Text := FieldByName('LRangeF').AsString;
          Le_HRangeF.Text := FieldByName('HRangeF').AsString;
          le_LRangeM.Text := FieldByName('LRangeM').AsString;
          Le_HRangeM.Text := FieldByName('HRangeM').AsString;
          le_LRangeC.Text := FieldByName('LRangeC').AsString;
          Le_HRangeC.Text := FieldByName('HRangeC').AsString;
          LE_Abbreviation.Text := FieldByName('Abbreviation').AsString;
          Memo_SpecialRange.Text := FieldByName('SpecialRange').AsString;
          edit_suffix.Text := FieldByName('Suffix').AsString;
          if FieldByName('WorkList').AsString = 'Y' then
               CB_WorkList.Checked := true
          else
               CB_WorkList.Checked := false;

          if FieldByName('PatientTestList').AsString = 'Y' then
               Cb_PatientTestList.Checked := true
          else
               Cb_PatientTestList.Checked := false;

          if FieldByName('IsHeading').AsString = 'Y' then
               CB_IsHeading.Checked := true
          else
               CB_IsHeading.Checked := false;
          if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
          else
               CB_IsActive.Checked := false;
          if FieldByName('IsSubjective').AsString = 'Y' then
               Cb_IsSubjective.Checked := true
          else
               Cb_IsSubjective.Checked := false;
          le_Test.Text := FieldByName('Test').AsString;
          DBlCB_Unit.KeyValue := FieldByName('Unit').AsString;
          le_DisplayOrder.Text := FieldByName('DisplayOrder').AsString;
          pi_TestId := FieldByName('TestId').AsInteger;
     end;
end;

procedure TForm_Test1.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if (Query_list.FieldByName('IsActive').AsString = 'N') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebLavender;
               // Font.Color := clWhite;
          end;
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
end;

procedure TForm_Test1.DBGrid_TestNameListDblClick(Sender: TObject);
begin
     if (Query_TestName.recordcount > 0) and (DBGrid_TestNameList.Visible = true) then
          Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;

     DBGrid_TestNameList.Visible := false;

     Dblcb_Test.KeyValue := Query_TestName.FieldByName('TestNameID').AsInteger;
     DBLCB_Dep.KeyValue := Query_TestName.FieldByName('DepID').AsInteger;
     Dblcb_TestClick(Self);
end;

procedure TForm_Test1.DBLCB_DepClick(Sender: TObject);
begin
     with Query_Test do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL[1] := 'where testnameid in (select testnameid from testname where depid=' + IntToStr(DBLCB_Dep.KeyValue) + ')';
          Open;
     end;
end;

procedure TForm_Test1.Dblcb_TestClick(Sender: TObject);
begin
     with Query_list do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL[1] := 'Where TestNameID=' + IntToStr(Dblcb_Test.KeyValue);
          Open;
     end;
end;

procedure TForm_Test1.DBlCB_UnitKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBlCB_Unit.KeyValue := -1;
end;

procedure TForm_Test1.Edit_TestNameChange(Sender: TObject);
begin
     if CB_Extended.Checked = false then
     Begin
          With Query_TestName do
          begin
               Filtered := false;
               If Edit_TestName.Text <> '' then
               Begin
                    Filter := 'TestName=' + #39 + uppercase(Edit_TestName.Text) + '*'#39;
                    Filtered := true;
               End
               else
                    Filtered := false;
          end;
     End
     Else
     Begin
          With Query_TestName do
          begin
               Filtered := false;
               Close;
               SQL.Clear;
               SQL.Add(' Select TestNameId,TestNameCode,Trim(TestName) TestName,DepId From TestName');
               SQL.Add(' where DepId In (Select DepId From Department where IspathologicalDep=''Y'')');
               SQL.Add(' and IsActive=''Y'' and TestName Like ''%' + uppercase(Edit_TestName.Text) + '%''');
               SQL.Add(' Order by Trim(TestName)');
               Open;
          end;
     End;
end;

procedure TForm_Test1.Edit_TestNameExit(Sender: TObject);
begin
     // DBGrid_TestNameList.Visible := false;
end;

procedure TForm_Test1.Edit_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Not(Key = 13) Then
          DBGrid_TestNameList.Visible := true;

     IF (Key = VK_Down) and (Query_TestName.recordcount > 0) Then
     Begin
          Query_TestName.Next;
          // Edit_TestName.Text:=Query_TestName.FieldByName('TestName').AsString;
     End;

     IF (Key = VK_Up) and (Query_TestName.recordcount > 0) Then
     Begin
          Query_TestName.Prior;
          // Edit_TestName.Text:=Query_TestName.FieldByName('TestName').AsString;
     End;

     if Key = VK_DELETE then
          Edit_TestName.Text := '';
end;

procedure TForm_Test1.Edit_TestNameKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
     begin
          if (Query_TestName.recordcount > 0) and (DBGrid_TestNameList.Visible = true) then
               Edit_TestName.Text := Query_TestName.FieldByName('TestName').AsString;

          DBGrid_TestNameList.Visible := false;

          Dblcb_Test.KeyValue := Query_TestName.FieldByName('TestNameID').AsInteger;
          DBLCB_Dep.KeyValue := Query_TestName.FieldByName('DepID').AsInteger;
          Dblcb_TestClick(Self);
     End;
end;

procedure TForm_Test1.FormCreate(Sender: TObject);
begin
     Query_Department.Close;
     Query_Department.DatabaseName := gs_DatabaseName;
     Query_Department.Open;
     Query_Unit.Close;
     Query_Unit.DatabaseName := gs_DatabaseName;
     Query_Unit.Open;
     PageControl1.ActivePageIndex := 0;
     Shape2.Brush.Color := clWebLavender;
end;

procedure TForm_Test1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_F1 then
     Begin
          CB_GlobalSearch.Checked := Not(CB_GlobalSearch.Checked);
          if CB_GlobalSearch.Checked then
               DBGrid_TestNameList.Visible := true
          Else
          Begin
               DBGrid_TestNameList.Visible := false;
               Query_list.Close;
          End;

     End;

     if key=VK_F2 then
     Begin
          CB_Extended.Checked := Not(CB_Extended.Checked);
          CB_ExtendedClick(Sender);
     End;


     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_Test1.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) and (not(ActiveControl = Memo_SpecialRange)) then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_Test1.le_LRangeMKeyPress(Sender: TObject; var Key: Char);
begin
     OnlyNumericExtended(Sender, Key);
end;

procedure TForm_Test1.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_Test1.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          DeleteTest(Query_list.FieldByName('TestID').AsInteger);
     end;
     Query_list.Close;
     Query_list.Open;
end;

procedure TForm_Test1.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_Test1, DBGrid1, true, 'Test List', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
