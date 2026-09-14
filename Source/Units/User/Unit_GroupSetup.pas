unit Unit_GroupSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,unit_master,Dm,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBAccess, Ora, OraSmart, MemDS, OraError, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids;

type
  TForm_GroupSetup = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit_Gname: TEdit;
    DBGrid1: TDBGrid;
    Ds_List: TDataSource;
    Query_Listing: TOraQuery;
    Qry: TOraQuery;
    Panel2: TPanel;
    BB_New: TBitBtn;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_Previlage: TBitBtn;
    procedure BB_NewClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB_PrevilageClick(Sender: TObject);
  private
    { Private declarations }
  public
     Pb_IsNew:Boolean;
     Pi_GroupSetupId:Integer;
    { Public declarations }
  end;

var
  Form_GroupSetup: TForm_GroupSetup;

implementation

uses Unit_Previlage;

{$R *.dfm}

procedure TForm_GroupSetup.BB_CloseClick(Sender: TObject);
begin
     close;
end;

procedure TForm_GroupSetup.BB_NewClick(Sender: TObject);
begin
     Edit_Gname.Clear;
     Pb_IsNew:=true;
end;

procedure TForm_GroupSetup.BB_PrevilageClick(Sender: TObject);
begin
     Form_Previlege := TForm_Previlege.Create(Nil);
       with Form_Previlege do
       begin
         try
          PbIsUser:=false;
          Pi_Groupid:=Self.Query_Listing.FieldByName('GroupSetupId').AsInteger;
//           ps_username := Form_Users.Query_List.FieldByName('fullname').AsString;
           Label_UserName.Caption := ps_username;
           Label_UserName.Visible:=false;
           Label1.Visible:=false;
           Panel5.Visible:=true;
//           pi_userid := Form_Users.Query_List.FieldByName('userid').AsInteger;
           loaddatas;
           showmodal;
         finally
           free;
         end;
       end;
end;

procedure TForm_GroupSetup.BB_SaveClick(Sender: TObject);
begin
     if Edit_Gname.Text='' then
     begin
          MessageDlg('Please insert the group name',mtinformation,[mbok],0);
          exit;
     end;
     if Pb_IsNew=true then
     begin
          with Qry do
          begin
               close;
               session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('Insert into GroupSetup(GroupSetupId,GroupName) Values');
               sql.Add('('+inttostr(GetMaxId('GroupSetup','GroupSetupId'))+','+#39+Edit_Gname.Text+#39);
               sql.Add(')');
               execsql;
          end;
     end
     else
     begin
          with Qry do
          begin
               close;
               session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('update GroupSetup set GroupName='+#39+Edit_Gname.Text+#39);
               sql.Add('where GroupSetupId='+inttostr(Pi_GroupSetupId));
               Execsql;
          end;

     end;
     Query_Listing.Close;
     Query_Listing.Open;
     ShowDoneMessage;
     Edit_Gname.Clear;
end;

procedure TForm_GroupSetup.DBGrid1DblClick(Sender: TObject);
begin
     Pi_GroupSetupId:=Query_Listing.FieldByName('groupsetupid').AsInteger;
     Edit_Gname.Text:=Query_Listing.FieldByName('GroupName').AsString;
     Pb_IsNew:=false;
end;

procedure TForm_GroupSetup.FormShow(Sender: TObject);
begin
     Pb_IsNew:=true;
     Query_Listing.Close;
     Query_Listing.Open;
end;

end.
