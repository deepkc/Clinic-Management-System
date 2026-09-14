unit Unit_ClinicalPathDep;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Db, DbTables, Fxn, ServerDate,
     Dialogs, StdCtrls, CheckLst, Buttons, ExtCtrls;

type
     TForm_ExtendedReportDep = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          Clb_testlist: TCheckListBox;
          procedure FormCreate(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
     private
          pi_Depid: integer;
          Arr_DepID: Array of integer;
          { Private declarations }
     public
          { Public declarations }
          Procedure LoadData;
          Procedure SaveData;
     end;

var
     Form_ExtendedReportDep: TForm_ExtendedReportDep;

implementation

{$R *.dfm}
{ TForm_AltWorkListSetup }

procedure TForm_ExtendedReportDep.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_ExtendedReportDep.BB_SaveClick(Sender: TObject);
begin
     SaveData;
     ShowDoneMessage;
end;

procedure TForm_ExtendedReportDep.FormCreate(Sender: TObject);
begin
     LoadData;
end;

procedure TForm_ExtendedReportDep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Close;
end;

procedure TForm_ExtendedReportDep.LoadData;
Var
     Qry: TQuery;
     I: integer;
begin
     Qry := TQuery.Create(nil);
     With Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('SELECT * FROM DEPARTMENT');
          SQL.Add('ORDER BY DEPORDER');
          Open;
          Clb_testlist.Items.Clear;
          SetLength(Arr_DepID, RecordCount);
          I := 0;
          while not Eof do
          begin
               Arr_DepID[I] := FieldByName('DepID').AsInteger;
               Clb_testlist.Items.Add(FieldByName('DepName').AsString);
               if FieldByName('Extended_Report').AsString = 'Y' then
                    Clb_testlist.State[Clb_testlist.Items.IndexOf(FieldByName('DepName').AsString)] := cbChecked
               else
                    Clb_testlist.State[Clb_testlist.Items.IndexOf(FieldByName('DepName').AsString)] := cbUnchecked;
               Inc(I);
               Next;
          end;
     end;
     Qry.Free;
end;

procedure TForm_ExtendedReportDep.SaveData;
Var
     Qry: TQuery;
     I: integer;
begin
     Qry := TQuery.Create(nil);
     With Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          for I := 0 to Clb_testlist.Items.Count - 1 do
          begin
               pi_Depid := Arr_DepID[I];
               if Clb_testlist.State[I] = cbChecked then
               begin
                    SQL.Clear;
                    SQL.Add('Update Department Set Extended_Report=''Y'' Where DepID=' + IntToStr(pi_Depid));
               end
               else
               begin
                    SQL.Clear;
                    SQL.Add('Update Department Set Extended_Report=''N'' Where DepId=' + IntToStr(pi_Depid));
               end;
               ExecSQL;
          end;
     end;
     Qry.Free;
end;

end.
