unit Unit_MachineTestSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,fxn, DB, DBTables,
  DBCtrls, MemDS, DBAccess, Ora,DM;

type
  TForm_MachinetestSetup = class(TForm)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    Edit_TestCode: TEdit;
    Edit_TestName: TEdit;
    DBGrid1: TDBGrid;
    Label11: TLabel;
    Label1: TLabel;
    DS_List: TDataSource;
    Label2: TLabel;
    DBLc_MachineTestName: TDBLookupComboBox;
    Label3: TLabel;
    DS_LabTestName: TDataSource;
    Query_List: TOraQuery;
    Query: TOraQuery;
    Query_LabTestName: TOraQuery;
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Pb_IsNew:boolean;
    Pi_Lamt_Testid:Integer;
    { Public declarations }
  end;

var
  Form_MachinetestSetup: TForm_MachinetestSetup;

implementation

{$R *.dfm}

procedure TForm_MachinetestSetup.BB_CloseClick(Sender: TObject);
begin
    close;
end;

procedure TForm_MachinetestSetup.BB_NewClick(Sender: TObject);
begin
     Edit_TestCode.Clear;
     Edit_TestName.Clear;
     Pb_IsNew:=true;
end;

procedure TForm_MachinetestSetup.BB_SaveClick(Sender: TObject);
begin

     if Edit_TestCode.Text='' then
     begin
          MessageDlg('Test Code CanNot Be Blank',mtWarning,[mbOK],0);
          exit;
     end;
     if Edit_TestName.Text='' then
     begin
          MessageDlg('Test Name CanNot Be Blank',mtWarning,[mbOK],0);
          exit;
     end;
     if Pb_IsNew=true then
     begin
          With Query do
          Begin
            Close;
            Session:=dm_hospital.DB;
            SQL.Clear;
            SQL.Add(' Insert Into Lamt_Labmachinetest(');
            SQL.Add('Lamt_Test,Lamt_Testcode');
            SQL.Add(',Lamt_Testid,Lamt_Testnameid)');
            SQL.Add(' Values ( ');
            SQL.Add(#39+Edit_TestName.Text+#39 +','+#39+Edit_TestCode.Text+#39);
            SQL.Add(','+IntToStr(GetKeyValuetemp('Lamt_Labmachinetest','Lamt_Testid',gs_DatabaseName)) +','+IntToStr(DBLc_MachineTestName.KeyValue));
            SQL.Add(' ) ');
            ExecSQL;
          End;
     end
     else
     begin
          With Query do
          Begin
            Close;
            Session:=dm_hospital.DB;
            SQL.Clear;
            SQL.Add(' Update Lamt_Labmachinetest Set');
            SQL.Add('Lamt_Test='+#39+Edit_TestName.Text+#39 +',Lamt_Testcode = '+#39 + Edit_TestCode.Text + #39);
            SQL.Add(',Lamt_Testnameid='+IntToStr(DBLc_MachineTestName.KeyValue));
            SQL.Add(' Where Lamt_Testid='+IntToStr(Pi_Lamt_Testid));
            ExecSQL;
          End;
          Pb_IsNew:=true;
     end;
     ShowDoneMessage;
     Edit_TestCode.Clear;
     Edit_TestName.Clear;
     Query_list.Close;
     Query_list.Session:=dm_hospital.DB;
     Query_list.Open;
end;

procedure TForm_MachinetestSetup.DBGrid1DblClick(Sender: TObject);
begin
     Pi_Lamt_Testid:=Query_list.FieldByName('LAMT_TESTID').AsInteger;
     DBLc_MachineTestName.KeyValue:=Query_list.FieldByName('LAMT_TESTNAMEID').AsInteger;
     Edit_TestCode.Text:=Query_list.FieldByName('LAMT_TESTCODE').AsString;
     Edit_TestName.Text:=Query_list.FieldByName('LAMT_TEST').AsString;
     Pb_IsNew:=false;
end;

procedure TForm_MachinetestSetup.FormShow(Sender: TObject);
begin
    Pb_IsNew:=true;
    Query_list.Close;
    Query_list.Session:=dm_hospital.DB;
    Query_list.Open;
    Query_LabTestName.Close;
    Query_LabTestName.Session:=dm_hospital.DB;
    Query_LabTestName.SQL.SaveToFile('tt.txt');
    Query_LabTestName.Open;
end;

end.
