unit Unit_AltWorkListSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Db, DbTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn, ServerDate,
     Dialogs,Dm, StdCtrls, CheckLst, Buttons, ExtCtrls;

type
     TForm_AltWorkListSetup = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          Clb_testlist: TCheckListBox;
          procedure FormCreate(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
     private
          pi_TestID: integer;
          Arr_TestID: Array of integer;
          { Private declarations }
     public
          { Public declarations }
          Procedure LoadData;
          Procedure SaveData;
     end;

var
     Form_AltWorkListSetup: TForm_AltWorkListSetup;

implementation

{$R *.dfm}
{ TForm_AltWorkListSetup }

procedure TForm_AltWorkListSetup.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_AltWorkListSetup.BB_SaveClick(Sender: TObject);
begin
     SaveData;
     ShowDoneMessage;
end;

procedure TForm_AltWorkListSetup.FormCreate(Sender: TObject);
begin
     LoadData;
end;

procedure TForm_AltWorkListSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Close;
end;

procedure TForm_AltWorkListSetup.LoadData;
Var
     Qry: TOraQuery;
     I: integer;
begin
     Qry := TOraQuery.Create(nil);
     With Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('SELECT TESTID,CASE');
          SQL.Add('   WHEN ABBREVIATION IS NULL THEN');
          SQL.Add('   TRIM(TEST)');
          SQL.Add('   ELSE');
          SQL.Add('   TRIM(ABBREVIATION)');
          SQL.Add('END AS TEST,ALTWORKLIST FROM TEST');
          SQL.Add('WHERE TEST IS NOT NULL');
          //SQL.Add('AND ISHEADING=''Y''');
          SQL.Add('AND WORKLIST=''Y''');
          SQL.Add('ORDER BY TEST');
          Open;
          Clb_testlist.Items.Clear;
          SetLength(Arr_TestID, RecordCount);
          I := 0;
          while not Eof do
          begin
               Arr_TestID[I] := FieldByName('TestID').AsInteger;
               Clb_testlist.Items.Add(FieldByName('Test').AsString);
               if FieldByName('AltWorkList').AsString = 'Y' then
                    Clb_testlist.State[Clb_testlist.Items.IndexOf(FieldByName('Test').AsString)] := cbChecked
               else
                    Clb_testlist.State[Clb_testlist.Items.IndexOf(FieldByName('Test').AsString)] := cbUnchecked;
               Inc(I);
               Next;
          end;
     end;
     Qry.Free;
end;

procedure TForm_AltWorkListSetup.SaveData;
Var
     Qry: TOraQuery;
     I: integer;
begin
     Qry := TOraQuery.Create(nil);
     With Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          for I := 0 to Clb_testlist.Items.Count - 1 do
          begin
               pi_TestID := Arr_TestID[I];
               if Clb_testlist.State[I] = cbChecked then
               begin
                    SQL.Clear;
                    SQL.Add('Update Test Set AltWorkList=''Y'' Where TestId=' + IntToStr(pi_TestID));
               end
               else
               begin
                    SQL.Clear;
                    SQL.Add('Update Test Set AltWorkList=''N'' Where TestId=' + IntToStr(pi_TestID));
               end;
               ExecSQL;
          end;
     end;
     Qry.Free;
end;

end.
