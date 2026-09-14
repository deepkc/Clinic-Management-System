unit Unit_PackageSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Db, DbTables, Fxn, ServerDate,
     Dialogs, StdCtrls, CheckLst, Buttons, ExtCtrls, DBCtrls;

type
     TForm_PackageSetup = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          Clb_testlist: TCheckListBox;
          Panel1: TPanel;
          Dblcb_Package: TDBLookupComboBox;
          Label1: TLabel;
          Query_Package: TQuery;
          DS_Package: TDataSource;
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
          procedure Dblcb_PackageClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
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
     Form_PackageSetup: TForm_PackageSetup;

implementation

Procedure SavePackageSetup(PACKAGEID, TestNameID: integer); stdcall; External 'MidasFunction.bpl';
Procedure DeletePackageSetup(PACKAGEID, TestNameID: Integer); Stdcall; External 'MidasFunction.bpl';
{$R *.dfm}
{ TForm_AltWorkListSetup }

procedure TForm_PackageSetup.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_PackageSetup.BB_SaveClick(Sender: TObject);
begin
     SaveData;
     ShowDoneMessage;
end;

procedure TForm_PackageSetup.Dblcb_PackageClick(Sender: TObject);
begin
     LoadData;
end;

procedure TForm_PackageSetup.FormCreate(Sender: TObject);
begin
     with Query_Package do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          Open;
     end;
end;

procedure TForm_PackageSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Close;
end;

procedure TForm_PackageSetup.LoadData;
Var
     Qry, Qry2: TQuery;
     I: integer;
begin
     Qry := TQuery.Create(nil);
     Qry2 := TQuery.Create(nil);
     With Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('SELECT * FROM TESTNAME ');
          SQL.Add('Where IsPackageTest=''Y''');
          SQL.Add('ORDER BY TESTNAME');
          Open;
          Clb_testlist.Items.Clear;
          SetLength(Arr_TestID, RecordCount);
          I := 0;
          while not Eof do
          begin
               Arr_TestID[I] := FieldByName('TestNameID').AsInteger;
               Clb_testlist.Items.Add(FieldByName('TestName').AsString);

               With Qry2 do
               begin
                    Close;
                    DatabaseName := gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add('SELECT * FROM (');
                    SQL.Add('SELECT T.TESTNAMEID,T.TESTNAME');
                    SQL.Add(
                         ',NVL((SELECT DISTINCT TESTNAMEID FROM PACKAGE_WISE_TEST_SETUP WHERE TESTNAMEID=T.TESTNAMEID),0)ISPACKAGE');
                    SQL.Add(
                         ',NVL((SELECT DISTINCT PACKAGEID FROM PACKAGE_WISE_TEST_SETUP WHERE TESTNAMEID=T.TESTNAMEID),0)PACKAGEID');
                    SQL.Add('FROM TESTNAME T');
                    SQL.Add('WHERE T.TESTNAME IS NOT NULL');
                    SQL.Add('AND T.ISACTIVE=''Y''');
                    SQL.Add('ORDER BY T.TESTNAME)');
                    SQL.Add('WHERE PACKAGEID=' + IntToStr(Dblcb_Package.KeyValue));
                    SQL.Add('AND TESTNAMEID=' + IntToStr(Qry.FieldByName('TestNameID').AsInteger));
                    Open;
                    if FieldByName('TestNameID').AsInteger > 0 then
                         Clb_testlist.State[Clb_testlist.Items.IndexOf(Qry.FieldByName('TestName').AsString)] :=
                           cbChecked
                    else
                         Clb_testlist.State[Clb_testlist.Items.IndexOf(Qry.FieldByName('TestName').AsString)] :=
                           cbUnchecked;
               end;
               Inc(I);
               Qry.Next;
          end;
     end;
     Qry.Free;
end;

procedure TForm_PackageSetup.SaveData;
Var
     I: integer;
begin
     for I := 0 to Clb_testlist.Items.Count - 1 do
     begin
          pi_TestID := Arr_TestID[I];
          if Clb_testlist.State[I] = cbChecked then
               SavePackageSetup(Dblcb_Package.KeyValue,pi_TestID)
          else
               DeletePackageSetup(Dblcb_Package.KeyValue,pi_TestID);
     end;
end;

end.
