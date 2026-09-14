unit Unit_Previlage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  FXN,DM,
  Dialogs, StdCtrls, ExtCtrls, CheckLst, Buttons, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_Previlege = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BB_Exit: TBitBtn;
    BB_OK: TBitBtn;
    Clb_Previlege: TCheckListBox;
    Label_UserName: TLabel;
    Query_LoadData: TOraQuery;
    Query_SaveData: TOraQuery;
    Query1: TOraQuery;

    procedure BB_ExitClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_OKClick(Sender: TObject);

  private
    { Private declarations }
  public
    pedit       : Boolean;
    ps_username : string;
    pi_userid   : Integer;
    pi_getprevilegeid : Integer;
    procedure loaddatas;
    function checkDatas(accessid:Integer; userid: Integer) : Boolean;
    { Public declarations }
  end;

var
  Form_Previlege: TForm_Previlege;

implementation

uses Unit_Users;


{$R *.dfm}

{ TForm_Previlege }

procedure TForm_Previlege.BB_ExitClick(Sender: TObject);
begin
  close;
end;

procedure TForm_Previlege.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF (Key=VK_F12) Then
    BB_OKClick(Sender);
  if key=27 then
    BB_ExitClick(Sender);
end;

procedure TForm_Previlege.loaddatas;
  var
  i: integer;
begin
  i := 0;
  with Query_LoadData do
  begin
    close;
    Session:=Dm_Hospital.Db;
    sql.Clear;
    sql.Add('select * from useraccess order by accessid');
    Open;
    Clb_Previlege.Items.Clear;
    while not Eof do
    begin
      with Clb_Previlege do
      begin
        Items.Add(Query_LoadData.FieldByName('useraccess').AsString);
      end;
      i := i + 1;
      Next;
    end;
  end;
  with Query1 do
  begin
    close;
    Session:=Dm_Hospital.Db;
    sql.Clear;
    sql.Add(
      'select * from useraccess u,previlege p where p.accessid=u.accessid ');
    sql.Add('and p.userid=' + form_users.query_list.FieldByName('userid')
        .AsString);
    Open;
    while not Eof do
    begin
      Clb_Previlege.State[Query1.FieldByName('accessid').asinteger - 1] :=
        cbchecked;
      Next;
    end;
  end;
end;

procedure TForm_Previlege.BB_OKClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to Clb_Previlege.Items.count - 1 do
  begin
    if Clb_Previlege.State[i] = cbchecked then
    begin
      with Query_SaveData do
      begin
        close;
        Session:=Dm_Hospital.Db;
        sql.Clear;
        if not checkDatas(i + 1, gi_UserId) then
        begin
          sql.Add('insert into previlege (previlegeid,  userid, accessid )');
          sql.Add('values ( (select Nvl(max(previlegeid),0)+1 from previlege) ');
          sql.Add(', ' + IntToStr(pi_userid) + ',' + IntToStr(i + 1));
          sql.Add(')');
          ExecSQL;
        end
        else
        begin
           //sql.add('update into previlege
           //ShowMessage('Sorry! Same Previlege');
        end;
      end;
    end
    else
    begin
      with Query_SaveData do
      begin
        close;
        Session:=Dm_Hospital.Db;
        sql.Clear;
        if checkDatas(i + 1, gi_UserId) then
        begin
          sql.Add('delete from previlege');
          sql.Add('where userid=' + IntToStr(pi_userid) );
          sql.Add('and accessid=' + IntToStr(i+1));
          ExecSQL;
        end;
        end;
    end;
  end;
     ShowDoneMessage;
     Form_Previlege.close;
end;

function TForm_Previlege.checkDatas(accessid: Integer; userid: Integer): Boolean;
begin
  with Query1 do
  begin
    close;
    Session:=Dm_Hospital.Db;
    sql.Clear;
    sql.Add('select count( *) count from previlege p ');
    sql.Add('where p.userid='+#39+Form_Users.Query_List.FieldByName('userid').asstring+#39);
    sql.Add('and p.accessid='+IntToStr(accessid));
    open;
    if query1.FieldByName('count').AsInteger>0 then
    Result:=true
    else
    Result:=false;

  end;
end;


end.
