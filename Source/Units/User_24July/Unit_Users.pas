unit Unit_Users;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Unit_Master,
  Dialogs, OleCtrls, DateEditXControl_TLB, StdCtrls, Grids, DBGrids, ComCtrls,
  Buttons, ExtCtrls, DB,Dm, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls,Unit_StaffDepartmentSetup;

type
  TForm_Users = class(TForm)
    PageControl_Users: TPageControl;
    Panel1: TPanel;
    BB_New: TBitBtn;
    BB_Previlage: TBitBtn;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    TabSheet_List: TTabSheet;
    TabSheet_New: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit_UserName: TEdit;
    Edit_Password: TEdit;
    Edit_ConfirmPassword: TEdit;
    DEX_ExpDate: TDateEditX;
    Query_UserEntry: TOraQuery;
    Label5: TLabel;
    Edit_FullName: TEdit;
    Query_List: TOraQuery;
    DS_List: TDataSource;
    ADVS_ExpDate: TSpeedButton;
    Edit_SUserId: TEdit;
    Edit_SUserName: TEdit;
    Edit_SExpDate: TEdit;
    Edit_SFullName: TEdit;
    StatusBar1: TStatusBar;
    Ds_StaffDep: TDataSource;
    Ds_DocNurse: TDataSource;
    Query_DocNurse: TOraQuery;
    Query_StaffDep: TOraQuery;
    GroupBox1: TGroupBox;
    Rb_Doctor: TRadioButton;
    Rb_Nurse: TRadioButton;
    Rb_Other: TRadioButton;
    Dblcb_DocNurse: TDBLookupComboBox;
    Dblcb_StaffDep: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton4: TSpeedButton;
    Dblc_Gname: TDBLookupComboBox;
    Label8: TLabel;
    Ds_Ganame: TDataSource;
    Query_Gname: TOraQuery;
    procedure BB_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl_UsersChange(Sender: TObject);
    procedure ADVS_ExpDateClick(Sender: TObject);
    procedure Edit_SUserIdChange(Sender: TObject);
    procedure Edit_SUserNameChange(Sender: TObject);
    procedure Edit_SExpDateChange(Sender: TObject);
    procedure Edit_SExpDateKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_SFullNameChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_PrevilageClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Rb_OtherClick(Sender: TObject);
    procedure Rb_NurseClick(Sender: TObject);
    procedure Rb_DoctorClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);



  private
    { Private declarations }
  public
    pi_userid: integer;
    pi_getuserid: integer;
    ps_changepassword: string;
    pb_isnew: boolean;
    ps_todaysdate: DateEditX;

    MiDasSwitch,SortVal,ColIndex:integer;//These are variables required as static purpose in procedure MiDas Sort
    procedure MiDasSort(Column: TColumn;Qname:TOraQuery);

    procedure clearFields;
    procedure searchlist;
    { Public declarations }

  end;

var
  Form_Users: TForm_Users;

implementation

uses fxn, ServerDate, Change, Unit_Previlage,
  Unit_Message;
{$R *.dfm}

procedure TForm_Users.BB_CloseClick(Sender: TObject);
begin
  IF PageControl_Users.ActivePageIndex = 1 Then
  begin
    PageControl_Users.ActivePageIndex := 0;
    BB_New.Enabled := True;
    BB_Previlage.Enabled := True;
    BB_Save.Enabled := False;
    clearFields;
  end
  Else
    close;
  pb_isnew := True;
end;

procedure TForm_Users.clearFields;
begin
  Edit_UserName.Clear;
  Edit_Password.Clear;
  Edit_ConfirmPassword.Clear;
  Edit_FullName.Clear;
  DEX_ExpDate.VSDateAsText := TodaysDate;
end;

procedure TForm_Users.FormShow(Sender: TObject);
begin
  //PageControl_Users.Pages[1].TabVisible := True;
  //PageControl_Users.Pages[0].TabVisible := True;
  Rb_Other.Checked:=true;
  PageControl_Users.ActivePageIndex:=0;
  Query_List.close;
  Query_list.Session:=Dm_Hospital.Db;
  Query_List.Open;
  StatusBar1.Panels[0].Text:='Total Records :' +IntToStr( DS_List.DataSet.RecordCount);
  pb_isnew := True;
  Query_Gname.Close;
  Query_gname.Open;
end;

procedure TForm_Users.MiDasSort(Column: TColumn; Qname: TOraQuery);
var ArrFname:array of string;
    i,intcolCount,intSQlCount:integer;
begin

  intColCount:=Column.Grid.FieldCount;
  setlength(ArrFname,intColCount);
  ColIndex:=column.Index;

  for i:=0 to intColCount-1 do
  begin
    ArrFname[i]:=Column.Grid.Fields[i].FieldName;
  end;
  intSQLcount:=Qname.SQL.Count;
  if MiDasSwitch=0 then
  begin
    with Qname do
    begin
      close;
      if SortVal<>0 then
      begin
        sql.Delete(intSQLcount-1);
      end;
      sql.add('ORDER BY'+' '+ArrFname[column.Index]);
      open;
      MiDasSwitch:=1;
      SortVal:=Qname.SQL.Count;
      //column.Font.Color:=clRed;
    end;
  end
  else
  begin
    With Qname do
    begin
      close;
      if SortVal<>0 then
      begin
        sql.Delete(intSQLcount-1);
      end;
      sql.add('ORDER BY '+' '+ArrFname[column.Index]+' '+'DESC');
      open;
      MiDasSwitch:=0;
      //column.Font.Color:=clBlack;
    end;
  end;
end;

procedure TForm_Users.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF (Key = VK_F2) Then
    BB_NewClick(Sender);
  IF (Key = VK_F12) Then
    BB_SaveClick(Sender);
  if Key = 27 then
    BB_CloseClick(Sender);
end;

procedure TForm_Users.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    keybd_event(9, 13, 0, 0);
end;

procedure TForm_Users.PageControl_UsersChange(Sender: TObject);
begin
  IF PageControl_Users.ActivePageIndex = 1 Then
    PageControl_Users.ActivePageIndex := 0
  Else
    PageControl_Users.ActivePageIndex := 1;
end;

procedure TForm_Users.Rb_DoctorClick(Sender: TObject);
begin
     if Rb_Doctor.Checked=true then
     begin

          Label7.Caption:='Doctor';
          Dblcb_DocNurse.ListField:='Name';
          Dblcb_DocNurse.KeyValue:='NurseId';
          with Query_DocNurse do
          begin
               close;
               Session:=Dm_Hospital.Db;
//               sql.Clear;
               sql[0]:='select docname as Name,docid as NurseId from doctor';
               Open;
          end;
          Dblcb_StaffDep.KeyValue:=null;
          Dblcb_StaffDep.Enabled:=false;
          Dblcb_DocNurse.Enabled:=true;

          Query_DocNurse.Close;
          Query_DocNurse.Open;
     end;
end;

procedure TForm_Users.Rb_NurseClick(Sender: TObject);
begin
     if Rb_Nurse.Checked=true then
     begin
          Label7.Caption:='Nurse';
          Dblcb_StaffDep.KeyValue:=null;
          Dblcb_StaffDep.Enabled:=false;
          Dblcb_DocNurse.Enabled:=true;
          with Query_DocNurse do
          begin
               close;
               Session:=Dm_Hospital.Db;
               //sql.Clear;
               sql[0]:='select NurseId,Name from nurse';
               Open;
          end;
          Dblcb_DocNurse.ListField:='Name';
          Dblcb_DocNurse.KeyValue:='NurseId';
          Query_DocNurse.Close;
          Query_DocNurse.Open;
     end;
end;

procedure TForm_Users.Rb_OtherClick(Sender: TObject);
begin
     if Rb_Other.Checked=true then
     begin
          Label7.Caption:='Other';
          Dblcb_StaffDep.Enabled:=true;
          Dblcb_DocNurse.Enabled:=false;
          Query_StaffDep.Close;
          Query_StaffDep.Open;
          Dblcb_DocNurse.KeyValue:=null;
     end;
end;

procedure TForm_Users.ADVS_ExpDateClick(Sender: TObject);
begin
  if ADVS_ExpDate.Caption = 'BS' then
  begin
    DEX_ExpDate.SystemOfDate := 1;
    ADVS_ExpDate.Caption := 'AD';
  end
  else
  begin
    DEX_ExpDate.SystemOfDate := 0;
    ADVS_ExpDate.Caption := 'BS';
  end;
end;

procedure TForm_Users.Edit_SUserIdChange(Sender: TObject);
begin
  searchlist;
end;

procedure TForm_Users.Edit_SUserNameChange(Sender: TObject);
begin
  searchlist;
end;

procedure TForm_Users.Edit_SExpDateChange(Sender: TObject);
begin
  searchlist;
end;

procedure TForm_Users.Edit_SExpDateKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9','/',#8 ]) then
          key:=#0;
end;

procedure TForm_Users.Edit_SFullNameChange(Sender: TObject);
begin
  searchlist;
end;

procedure TForm_Users.searchlist;
begin
  with Query_List do
  begin
    close;
    Session:=Dm_Hospital.Db;
    if Edit_SUserId.Text <> '' then
      sql[2] := 'where userid like ' + #39 + '%' + Edit_SUserId.Text + '%' +
        #39
    else if Edit_SUserName.Text <> '' then
      sql[2] := 'where username like ' + #39 + '%' + Trim(Edit_SUserName.Text)
        + '%' + #39
    else if Edit_SFullName.Text <> '' then
      sql[2] := 'where fullname like ' + #39 + '%' + Trim(Edit_SFullName.Text)
        + '%' + #39
    else if Edit_SExpDate.Text <> '' then
      sql[2] := 'where vsexpdate like ' + #39 + '%' + Trim(Edit_SExpDate.Text)
        + '%' + #39
    else
      sql[2] := 'where 1=1';
    Open;
    StatusBar1.Panels[0].Text:='Total Records :' +IntToStr( DS_List.DataSet.RecordCount);
  end;
end;


procedure TForm_Users.SpeedButton4Click(Sender: TObject);
begin
     try
     Form_StaffDepSetup:=TForm_StaffDepSetup.Create(nil);
     Form_StaffDepSetup.ShowModal;
     finally
     Form_StaffDepSetup.Free;
     end;
end;

procedure TForm_Users.DBGrid1DblClick(Sender: TObject);
begin
  pb_isnew := False;
  pi_userid := Query_List.FieldByName('userid').AsInteger;
  BB_NewClick(Sender);
  // pb_isnew:=true;
end;

procedure TForm_Users.DBGrid1TitleClick(Column: TColumn);
begin
  if column.index<>0 then
  begin
    MiDasSort(column,Query_List);
  end;
end;

procedure TForm_Users.BB_NewClick(Sender: TObject);
begin
  if pb_isnew = True then
  begin
    PageControl_Users.ActivePageIndex := 1;
    BB_New.Enabled := False;
    BB_Previlage.Enabled := False;
    BB_Save.Enabled := True;
    DEX_ExpDate.ADDateAsText:=TodaysDate;
    DEX_ExpDate.SystemOfDate:=gi_datesystem;
    ADVS_ExpDate.Caption:=gs_DateCaption;
    Edit_UserName.SetFocus;
    Dblc_Gname.KeyValue:=null;
  end
  else
  begin
    PageControl_Users.ActivePageIndex := 1;
    BB_New.Enabled := False;
    BB_Previlage.Enabled := False;
    BB_Save.Enabled := True;
    Edit_UserName.SetFocus;
    Edit_UserName.Text := Query_List.FieldByName('username').AsString;
    Edit_Password.Text := Change.DecodePWDEx(Query_List.FieldByName('upassword').AsString);
    Edit_ConfirmPassword.Text := Change.DecodePWDEx(Query_List.FieldByName('upassword').AsString);
    Edit_FullName.Text := Query_List.FieldByName('fullname').AsString;
    if Query_List.FieldByName('NurseId').Asinteger>0 then
    begin
         Dblcb_DocNurse.KeyValue:=Query_List.FieldByName('NurseId').Asinteger;
         Rb_Nurse.Checked:=true;
    end
    else if Query_List.FieldByName('DoctorId').Asinteger>0 then
    begin
         Dblcb_DocNurse.KeyValue:=Query_List.FieldByName('DoctorId').Asinteger;
         Rb_Doctor.Checked:=true;
    end
    else if Query_List.FieldByName('UserDepId').Asinteger>0 then
    begin
         Dblcb_StaffDep.KeyValue:=Query_List.FieldByName('Userdepid').Asinteger;
         Rb_Other.Checked:=true;
    end;
    if Query_List.FieldByName('GroupId').Asinteger>0 then
    Dblc_Gname.KeyValue:=Query_List.FieldByName('GroupId').Asinteger
    else
    Dblc_Gname.KeyValue:=null;

    if True then

    DEX_ExpDate.SystemOfDate:=gi_datesystem;
    DEX_ExpDate.Text := Query_List.FieldByName('expdate').AsString;
  end;
end;

procedure TForm_Users.BB_PrevilageClick(Sender: TObject);
begin
  Form_Previlege := TForm_Previlege.Create(Nil);
  with Form_Previlege do
  begin
    try
     //panel5.Visible:=false;
     //PbIsUser:=true;
     Label_UserName.Visible:=true;
     Label1.Visible:=true;
      ps_username := Form_Users.Query_List.FieldByName('fullname').AsString;
      Label_UserName.Caption := ps_username;
      pi_userid := Form_Users.Query_List.FieldByName('userid').AsInteger;
      loaddatas;
      showmodal;
    finally
      free;
    end;
  end;
end;

procedure TForm_Users.BB_SaveClick(Sender: TObject);
Var
Li_DoctorId,Li_NurseId,Li_UserDepId,Li_GroupId:Integer;
Qry:TOraQuery;
begin
  if Edit_UserName.Text = '' then
  begin
    MessageDlg('Missing Data', mtInformation, [mbOK], 0);
    Edit_UserName.SetFocus;
    exit;
  end;
  if Edit_Password.Text = '' then
  begin
    MessageDlg('Missing Data', mtInformation, [mbOK], 0);
    Edit_Password.SetFocus;
    exit;
  end;
  if Edit_ConfirmPassword.Text = '' then
  begin
    MessageDlg('Missing Data', mtInformation, [mbOK], 0);
    Edit_ConfirmPassword.SetFocus;
    exit;
  end;
  if DEX_ExpDate.Text = '' then
  begin
    MessageDlg('Missing Data', mtInformation, [mbOK], 0);
    DEX_ExpDate.SetFocus;
    exit;
  end;
  if Edit_Password.Text <> Edit_ConfirmPassword.Text then
  begin
    MessageDlg('Password donot match', mtInformation, [mbOK], 0);
    Edit_Password.SetFocus;
    exit;
  end;
  if Rb_Doctor.Checked=true then
  begin
       if Dblcb_DocNurse.KeyValue=null then
       begin
            MessageDlg('Please choose doctor',mtInformation,[mbok],0);
            exit;
       end
       else
       begin
            Li_DoctorId:=Dblcb_DocNurse.KeyValue;
            Li_NurseId:=0;
            Li_UserDepId:=0;
       end;
  end;
  if Rb_Nurse.Checked=true then
  begin
       if Dblcb_DocNurse.KeyValue=null then
       begin
            MessageDlg('Please choose Nurse',mtInformation,[mbok],0);
            exit;
       end
       else
       begin
            Li_NurseId:=Dblcb_DocNurse.KeyValue;
            li_DoctorId:=0;
            Li_UserDepId:=0;
       end;
  end;
  if Dblc_Gname.KeyValue>0 then
  Li_GroupId:=Dblc_Gname.KeyValue
  else
  Li_GroupId:=0;

   if Rb_Other.Checked=true then
  begin
       if Dblcb_StaffDep.KeyValue=null then
       begin
            MessageDlg('Please choose staff department',mtInformation,[mbok],0);
            exit;
       end
       else
       begin
            Li_NurseId:=0;
            li_DoctorId:=0;
            Li_UserDepId:=Dblcb_StaffDep.KeyValue;
       end;
  end;


  ps_changepassword := change.EncodePWDEx(Edit_Password.Text,0,5);
  if pb_isnew = True then
  begin

    with Query_UserEntry do
    begin
      close;
      Session:=Dm_Hospital.Db;
      SQL.Clear;
      SQL.Add('Select nvl(Max(UserId),0)max from usermain');
      Open;
      pi_getuserid:=FieldByName('Max').AsInteger+1;
      sql.Clear;
      sql.Add(
        'insert into usermain (userid, username, upassword, fullname, expdate,NurseId,DoctorId,UserDepId,GroupId,DepType');
      sql.Add(' ) ');
      sql.Add('values ( ' + IntToStr(pi_getuserid));
      sql.Add(' ,' + #39 + StringReplace(Edit_UserName.Text, '''', '''''',
          [rfReplaceAll]) + #39);
      sql.Add(' ,' + #39 + StringReplace(ps_changepassword, '''', '''''',
          [rfReplaceAll]) + #39);
      sql.Add(' ,' + #39 + StringReplace(Edit_FullName.Text, '''', '''''',
          [rfReplaceAll]) + #39);
      sql.Add(' ,' + #39 + DEX_ExpDate.ADDateAsText + #39+','+IntToStr(Li_NurseId)+','+IntToStr(Li_DoctorId)+','+IntToStr(Li_UserDepId)+','+IntToStr(li_GroupId));
      if Dblcb_StaffDep.KeyValue=1 then
      sql.add(' ,''PATHOLOGY''')
      Else if Dblcb_StaffDep.KeyValue=2 then
      sql.add(' ,''RADIOLOGY''')
      Else
      sql.add(' ,''''');
      sql.Add(')');
      ExecSQL;
    end;
    Qry:=TOraQuery.Create(nil);
    if Dblc_Gname.KeyValue>0 then
    begin
         with qry do
         begin
              Close;
              Session:=Dm_Hospital.Db;
              SQL.Clear;
              SQL.Add('select max(userid) as Nmax from usermain');
              Open;
         end;
         pi_userid:=Qry.FieldByName('Nmax').AsInteger;
         with qry do
         begin
              close;
              Session:=Dm_Hospital.Db;
              sql.Clear;
              sql.Add('select * from GroupPrivilege where groupId='+IntToStr(Dblc_Gname.KeyValue));
              Open;
         end;
         while not qry.Eof do
         begin
              with Query_UserEntry do
              begin
                   close;
                   Session:=Dm_Hospital.Db;
                   SQL.Clear;
                   SQL.Add('Insert into UserPrivilege(upId,UserId,AcessStatus,AcessStatusId,DataPostDate,DataPostTime,DataPostBy,MacId) values');
                   SQL.Add('('+Inttostr(GetMaxId('UserPrivilege','upId'))+','+IntToStr(Pi_userID)+','+#39+Qry.FieldByName('AcessStatus').AsString+#39+','+IntToStr(Qry.FieldByName('AcessStatusId').AsInteger)+','+#39+TodaysDate+#39);
                   SQL.Add(','+#39+TodaysTime+#39+','+IntToStr(Gi_UserId)+','+#39+gs_MacID+#39);
                   SQL.Add(')');
                   execsql;
              end;
              qry.Next;
         end;
    end;

  end
  else
  begin
    with Query_UserEntry do
    begin
      close;
      Session:=Dm_Hospital.Db;
      sql.Clear;
      sql.Add('update usermain set username=' + #39 + StringReplace
          (Edit_UserName.Text, '''', '''''', [rfReplaceAll]) + #39);
      sql.Add(' ,upassword=' + #39 + StringReplace(ps_changepassword, '''',
          '''''', [rfReplaceAll]) + #39);
      if Dblcb_StaffDep.KeyValue=1 then
      sql.add(' ,DepType=''PATHOLOGY''')
      Else if Dblcb_StaffDep.KeyValue=2 then
      sql.add(' ,DepType=''RADIOLOGY''')
      Else
      sql.add(' ,DepType=''''');
      sql.Add(' ,fullname=' + #39 + StringReplace(Edit_FullName.Text, '''',
          '''''', [rfReplaceAll]) + #39);
      sql.Add(' ,expdate=' + #39 + DEX_ExpDate.ADDateAsText + #39);
      sql.Add(',NurseId='+IntToStr(Li_NurseId)+',DoctorId='+IntToStr(Li_DoctorId)+',UserDepId='+IntToStr(Li_UserDepId));
      sql.Add(' where userid=' + IntToStr(pi_userid));
      ExecSQL;
    end;
    pb_isnew := True;
  end;
  ClearAll(PageControl_Users.Pages[1]);
  PageControl_Users.ActivePageIndex := 0;
  BB_New.Enabled := True;
  BB_Previlage.Enabled := True;
  BB_Save.Enabled := False;
  Query_List.close;
  Query_List.Open;
  StatusBar1.Panels[0].Text:='Total Records :' +IntToStr( DS_List.DataSet.RecordCount);
  ShowDoneMessage;
end;

end.
