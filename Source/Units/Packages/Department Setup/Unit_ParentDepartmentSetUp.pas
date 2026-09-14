unit Unit_ParentDepartmentSetUp;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, Db,
     DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Menus;

type
     TForm_ParentDepartmentSetup = class(TForm)
    PC_ParentDepartment: TPageControl;
    TS_ParentDep: TTabSheet;
    TS_NewParentDep: TTabSheet;
    DBGrid_RoomType: TDBGrid;
          LabelWardCode: TLabel;
    Edit_ParentDepCode: TEdit;
    Edit_ParentDep: TEdit;
          LabelWardName: TLabel;
    Query_ParentDepartment: TOraQuery;
    DS_ParentDepartment: TDataSource;
          Query_Process: TOraQuery;
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    ComboBox_DepartmentType: TComboBox;
    Label_DepartmentType: TLabel;
          procedure DBGrid_RoomTypeKeyPress(Sender: TObject; var Key: Char);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormShow(Sender: TObject);
          procedure PC_ParentDepartmentChanging(Sender: TObject; var AllowChange: Boolean);
          procedure DBGrid_RoomTypeDblClick(Sender: TObject);
          procedure Edit_ParentDepCodeKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_ParentDepKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_SvrTaxAmtBedChargeKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_BedChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_ParentDepKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
     private
          { Private declarations }
     public
          pi_NewPrimaryId, pi_OldPrimaryId: Integer;
          { Public declarations }
          b_IsNew: Boolean;

          Function CheckParentDepDuplicate(DepName : String):Boolean;
     end;

var
     Form_ParentDepartmentSetup: TForm_ParentDepartmentSetup;

implementation

uses Fxn,serverdate, Unit_Message, DM, Unit_Master;
{$R *.DFM}

procedure TForm_ParentDepartmentSetup.BB_CloseClick(Sender: TObject);
begin
     IF PC_ParentDepartment.ActivePageIndex = 0 Then
          Close
     Else
     Begin
          // DMhospital.TableWard.Cancel;
          PC_ParentDepartment.ActivePageIndex := 0;
          BB_New.Enabled := True;
          BB_Save.Enabled := False;
     End;
end;

procedure TForm_ParentDepartmentSetup.BB_NewClick(Sender: TObject);
begin
     b_IsNew := True;
     PC_ParentDepartment.ActivePageIndex := 1;
     Edit_ParentDepCode.Enabled := True;
     Edit_ParentDepCode.SetFocus;
     Edit_ParentDepCode.Text := '';
     Edit_ParentDep.Text := '';
     BB_Save.Enabled := True;
     BB_New.Enabled := False;
End;


procedure TForm_ParentDepartmentSetup.BB_SaveClick(Sender: TObject);
var
     ls_IsSvrTaxInclude,ls_DepType: String;
begin
     IF Trim(Edit_ParentDepCode.Text) = '' Then
     Begin
          Messagedlg('Enter the Parent Dep. Code !', mtConfirmation, [mbok, mbCancel], 0);
          Edit_ParentDepCode.SetFocus;
          Exit;
     End;

     IF Trim(Edit_ParentDep.Text) = '' Then
     Begin
          Messagedlg('Enter the Parent Department !', mtConfirmation, [mbok, mbCancel], 0);
          Edit_ParentDep.SetFocus;
          Exit;
     End;

     Edit_ParentDep.Text := StringReplace(Edit_ParentDep.Text, '''', '''''', [rfReplaceAll]);

     If b_IsNew = True then
     Begin
          IF CheckParentDepDuplicate(Edit_ParentDep.Text)=True Then
          Begin
               MessageDlg('Parent Dep. Already Exist !',mtWarning,[mbok],0);
               Exit;
          End;

          if ComboBox_DepartmentType.ItemIndex = 0 then
          ls_DepType := 'N'
          Else if ComboBox_DepartmentType.ItemIndex = 1 then
          ls_DepType := 'C'
          Else if ComboBox_DepartmentType.ItemIndex = 2 then
          ls_DepType := 'P'
          Else if ComboBox_DepartmentType.ItemIndex = 3 then
          ls_DepType := 'R';

          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Insert Into Dept_Department(DEPT_DEPID,DEPT_DEPCODE,DEPT_DEPNAME,DEPT_ISPARENTDEP,DEPT_DEPTYPE,DEPT_DATAPOSTDATE,DEPT_DATAPOSTTIME,DEPT_DATAPOSTBY)');
               sql.add(' Values (' + IntToStr(GetMaxId('DEPT_DEPARTMENT', 'DEPT_DEPID')));
               sql.add(' ,' + #39 + Trim(Edit_ParentDepCode.Text) + #39);
               sql.add(' ,' + #39+Edit_ParentDep.Text + #39+','+#39+'Y'+#39+','#39+ls_DepType+#39+','#39+TodaysDate+#39+','+#39+TodaysTime+#39+','+IntToStr(gi_UserId)+')');
               //sql.savetofile('testparentdep.txt');
               ExecSQL;
          End;
     End
     Else
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Update dept_Department Set dept_DepName=' + #39 + Edit_ParentDep.Text + #39);
               sql.add(', dept_deptype=' +#39+ ls_DepType+#39);
               sql.add(' where dept_depcode=' + #39 + Trim(Edit_ParentDepCode.Text) + #39);
               ExecSQL;
          End;
     End;
     ShowDoneMessage;
     PC_ParentDepartment.ActivePageIndex := 0;
     BB_New.Enabled := True;
     Query_ParentDepartment.Close;
     Query_ParentDepartment.Open;
     Query_ParentDepartment.Locate('dept_depcode', Edit_ParentDepCode.Text, []);
end;

procedure TForm_ParentDepartmentSetup.DBGrid_RoomTypeKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
          BB_New.Click;
          Exit;
     End;
end;

procedure TForm_ParentDepartmentSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     // With DMhospital do
     // Begin
     // TableWard.Active:=False;
     // End;
end;

procedure TForm_ParentDepartmentSetup.FormShow(Sender: TObject);
begin
     Query_ParentDepartment.Close;
     Query_ParentDepartment.Open;
     PC_ParentDepartment.ActivePageIndex := 0;
end;


procedure TForm_ParentDepartmentSetup.PC_ParentDepartmentChanging(Sender: TObject; var AllowChange: Boolean);
begin
     IF PC_ParentDepartment.ActivePageIndex = 1 Then
     Begin
          PC_ParentDepartment.ActivePageIndex := 0;
          // DMhospital.TableDoctor.Cancel;
          PC_ParentDepartment.ActivePageIndex := 0;
          BB_New.Enabled := True;
          BB_Save.Enabled := False;
     End
     Else
     Begin
          PC_ParentDepartment.ActivePageIndex := 1;
          Edit_ParentDepCode.Text := '';
          Edit_ParentDep.Text := '';
          BB_Save.Enabled := True;
          BB_New.Enabled := False;
          b_IsNew := True;
     End;
end;

procedure TForm_ParentDepartmentSetup.DBGrid_RoomTypeDblClick(Sender: TObject);
begin
     b_IsNew := False;
     Edit_ParentDepCode.Text := Query_ParentDepartment.fieldbyname('dept_depcode').asstring;
     Edit_ParentDep.Text := Query_ParentDepartment.fieldbyname('dept_DepName').asstring;
     if Query_ParentDepartment.FieldByName('dept_deptype').AsString= 'N' then
     ComboBox_DepartmentType.ItemIndex:=0;

     if Query_ParentDepartment.FieldByName('dept_deptype').AsString= 'C' then
     ComboBox_DepartmentType.ItemIndex:=1;

     if Query_ParentDepartment.FieldByName('dept_deptype').AsString= 'P' then
     ComboBox_DepartmentType.ItemIndex:=2;

     if Query_ParentDepartment.FieldByName('dept_deptype').AsString= 'R' then
     ComboBox_DepartmentType.ItemIndex:=3;


     PC_ParentDepartment.activepage := TS_NewParentDep;
     Edit_ParentDepCode.Enabled := False;
     BB_Save.Enabled := True;
     BB_New.Enabled := False;
end;

procedure TForm_ParentDepartmentSetup.Edit_ParentDepCodeKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          Edit_ParentDep.SetFocus;
end;

procedure TForm_ParentDepartmentSetup.Edit_ParentDepKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          BB_Save.SetFocus;
end;

procedure TForm_ParentDepartmentSetup.Edit_SvrTaxAmtBedChargeKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          BB_Save.SetFocus;
end;

procedure TForm_ParentDepartmentSetup.Edit_BedChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Prior Then
          Edit_ParentDep.SetFocus;
end;

procedure TForm_ParentDepartmentSetup.Edit_ParentDepKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Prior Then
          Edit_ParentDepCode.SetFocus;
end;

Function TForm_ParentDepartmentSetup.CheckParentDepDuplicate(DepName : String):Boolean;
Begin
     With Query_Process do
     Begin
          Close;
          Session := DM_Hospital.DB;
          sql.Clear;
          sql.Add(' Select dept_DepId From dept_Department where dept_DepName='+#39+DepName+#39);
          sql.Add(' and dept_IsParentDep=''Y''');
          Open;
     End;

     if Query_Process.FieldByName('dept_DepId').AsInteger >0 then
     Result:=True
     Else
     Result:=False;
End;

end.
