unit Unit_MachineTestNameSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,fxn, DB, DBTables, MemDS,
  DBAccess, Ora,DM;

type
  TForm_MachinetestNameSetup = class(TForm)
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
    Query_List: TOraQuery;
    Query: TOraQuery;
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Pb_IsNew:boolean;
    Pi_Lmtn_Testnameid:Integer;
    { Public declarations }
  end;

var
  Form_MachinetestNameSetup: TForm_MachinetestNameSetup;

implementation

{$R *.dfm}

procedure TForm_MachinetestNameSetup.BB_CloseClick(Sender: TObject);
begin
    close;
end;

procedure TForm_MachinetestNameSetup.BB_NewClick(Sender: TObject);
begin
     Edit_TestCode.Clear;
     Edit_TestName.Clear;
     Pb_IsNew:=true;
end;

procedure TForm_MachinetestNameSetup.BB_SaveClick(Sender: TObject);
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
            Session:=Dm_Hospital.DB;
            SQL.Clear;
            SQL.Add(' Insert Into Lmtn_Labmachinetestname(');
            SQL.Add('Lmtn_Testname,Lmtn_Testnamecode');
            SQL.Add(',Lmtn_Testnameid)');
            SQL.Add(' Values ( ');
            SQL.Add(#39+Edit_TestName.Text+#39 +','+#39+Edit_TestCode.Text+#39);
            SQL.Add(','+IntToStr(GetKeyValuetemp('Lmtn_Labmachinetestname','Lmtn_Testnameid',gs_DatabaseName)));
            SQL.Add(' ) ');
            ExecSQL;
          End;
     end
     else
     begin
          With Query do
          Begin
            Close;
            Session:=Dm_Hospital.DB;
            SQL.Clear;
            SQL.Add(' Update Lmtn_Labmachinetestname Set');
            SQL.Add('Lmtn_Testname='+#39+Edit_TestName.Text+#39 +',Lmtn_Testnamecode = '+#39 + Edit_TestCode.Text + #39);
            SQL.Add(' Where Lmtn_Testnameid='+IntToStr(Pi_Lmtn_Testnameid));
            ExecSQL;
          End;
          Pb_IsNew:=true;
     end;
     ShowDoneMessage;
     Edit_TestCode.Clear;
     Edit_TestName.Clear;
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.DB;
     Query_list.Open;

end;

procedure TForm_MachinetestNameSetup.DBGrid1DblClick(Sender: TObject);
begin
     Pi_Lmtn_Testnameid:=Query_list.FieldByName('LMTN_TESTNAMEID').AsInteger;
     Edit_TestCode.Text:=Query_list.FieldByName('LMTN_TESTNAMECODE').AsString;
     Edit_TestName.Text:=Query_list.FieldByName('LMTN_TESTNAME').AsString;
     Pb_IsNew:=false;
end;

procedure TForm_MachinetestNameSetup.FormShow(Sender: TObject);
begin
    Pb_IsNew:=true;
    Query_list.Close;
    Query_list.Session:=Dm_Hospital.DB;
    Query_list.Open;
end;

end.
