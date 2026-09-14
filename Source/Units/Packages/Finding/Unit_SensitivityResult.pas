unit Unit_SensitivityResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate,
     Dialogs, StdCtrls, CheckLst, Buttons, ExtCtrls, DB, Grids, DBGrids, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_SensitivityResult = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          Table_SensitiveMedicine: TOraTable;
          DBGrid1: TDBGrid;
          DS_SensitiveMedicine: TDataSource;
    lbl_Name: TLabel;
    QueryList: TQuery;
    OraQuery1: TOraQuery;
    Query_TempProcess: TQuery;
          procedure FormCreate(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_SensitivityResult: TForm_SensitivityResult;

implementation

{$R *.dfm}

procedure TForm_SensitivityResult.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_SensitivityResult.DBGrid1KeyPress(Sender: TObject; var Key: Char);
Var
     val: String;
begin
     {key:=UpCase(Key);
   if Not(key in [#13,#8,#27,#16]) then
   begin
      if not(key in['Y']) then
      begin
            Table_SensitiveMedicine.Close;
            Table_SensitiveMedicine.Open;
          //To go to the medicine by pressing first alphabet............
         With Query_TempProcess do
         Begin
              Close;
              DatabaseName:=gs_TempPath;
              sql.Clear;
              sql.add(' Select * from sensitivemedicine.db where Medicine Like '''+lowercase(Key)+'%''');
              Open;
         End;
         Table_SensitiveMedicine.First;
         Table_SensitiveMedicine.Locate('Medicine',Query_TempProcess.FieldByName('Medicine').AsString,[]);
         key:=#0;
         beep;
      end;
   end; }


     if Key = #13 then
     begin
          val := Trim(DBGrid1.Fields[1].Text);
         if gi_compileValue in [3,10] then
         begin
              if 1=1 then
              begin
                   QueryList.Edit;
                   DBGrid1.Fields[1].Value := UpperCase(val);
                   QueryList.Post;
                   QueryList.Next;
              end
              else
                   DBGrid1.Fields[1].Value := '';
         end
         else
         begin
             if (UpperCase(val) = 'S') or (UpperCase(val) = 'I') or (UpperCase(val) = 'R') or (UpperCase(val) = '') or (UpperCase(val) = 'PS') then
                begin
                     QueryList.Edit;
                     DBGrid1.Fields[1].Value := UpperCase(val);
                     QueryList.Post;
                     QueryList.Next;
                end
             else
                     DBGrid1.Fields[1].Value := '';
         end;

     end;
end;

procedure TForm_SensitivityResult.FormCreate(Sender: TObject);
begin
     lbl_Name.Caption:=GetTestName(gi_PatientTestID);
end;

procedure TForm_SensitivityResult.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_SensitivityResult.FormShow(Sender: TObject);
begin
     with QueryList do
     begin
          Close;
          DatabaseName := gs_temppath;
          SQL[1]:='Where TestNameID='+IntToStr(gi_TestNameId);
          SQL[2]:='And RepNo='+IntToStr(Gi_RepNo);
          Open;
          //SQL.SaveToFile('c:\error.txt');
     end;
end;

end.
