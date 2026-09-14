unit Unit_SelectTest;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     db, dbtables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn, dm,
     Dialogs, StdCtrls, Buttons, ExtCtrls, CheckLst;

type
     TForm_SelectTest = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          CLB_Test: TCheckListBox;
          procedure BB_SaveClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          Arr_Test: Array of String;
          Arr_PtDetailID: Array of String;
          { Private declarations }
          Procedure LoadTest;
          Function IsActiveTest(PtDetailID: integer): Boolean;
     public
          { Public declarations }
     end;

var
     Form_SelectTest: TForm_SelectTest;

implementation

{$R *.dfm}
{ TForm_SelectTest }

procedure TForm_SelectTest.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_SelectTest.BB_SaveClick(Sender: TObject);
Var
     i: integer;
     li_PtDetailID: integer;
begin
     Try
          DM_Hospital.db.StartTransaction;
          for i := 0 to CLB_Test.Items.Count - 1 do
          begin
               if Arr_PtDetailID[i] <> '' then
                    li_PtDetailID := StrToInt(Arr_PtDetailID[i])
               else
                    li_PtDetailID := 0;

               if CLB_Test.State[i] = cbChecked then
                    UpdatePatientTestDetailStatus(li_PtDetailID, 'Y')
               else
                    UpdatePatientTestDetailStatus(li_PtDetailID, 'N');
          end;
          DM_Hospital.db.Commit;
     Except
          DM_Hospital.db.Rollback;
     End;
     Self.Close;
end;

procedure TForm_SelectTest.FormCreate(Sender: TObject);
begin
     LoadTest;
end;

procedure TForm_SelectTest.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

function TForm_SelectTest.IsActiveTest(PtDetailID: integer): Boolean;
Var
     Qryy: TOraQuery;
begin
     Qryy := TOraQuery.Create(nil);
     with Qryy do
     begin
          Close;
         // Session := DM_Hospital.DB;
          SQL.Clear;

          SQL.Add('Select isActive from PatientTestDetail Where PTDetailID=' + IntToStr(PtDetailID));
          Open;
          if FieldByName('IsActive').AsString = 'Y' then
               Result := true
          else
               Result := false;
     end;
     Qryy.Free;
end;

procedure TForm_SelectTest.LoadTest;
Var
     Qry: TQuery;
     i:integer;
begin
     Qry := TQuery.Create(nil);
     with Qry do
     begin
          Close;
          SQL.Clear;
          Databasename := gs_temppath;
          SQL.Add('Select * from Findings');
          Open;
          CLB_Test.Items.Clear;
          SetLength(Arr_Test, RecordCount);
          SetLength(Arr_PtDetailID, RecordCount);
          while Not Eof do
          begin
               CLB_Test.Items.Add(FieldByName('Test').AsString);
               Arr_Test[i] := FieldByName('TestID').AsString;
               Arr_PtDetailID[i] := FieldByName('PtDetailID').AsString;
               if IsActiveTest(FieldByName('PtDetailID').AsInteger) then
                    CLB_Test.State[i] := cbChecked
               else
                    CLB_Test.State[i] := cbUnchecked;
               Next;
               Inc(i);
          end;
     end;
     Qry.Free;
end;

end.
