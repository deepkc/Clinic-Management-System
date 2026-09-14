unit Unit_StaffDepartmentSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,unit_master,Dm,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_StaffDepSetup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BB_New: TBitBtn;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    Label1: TLabel;
    Edit_UserDep: TEdit;
    DBGrid1: TDBGrid;
    Qry: TOraQuery;
    Query_List: TOraQuery;
    Ds_list: TDataSource;
    procedure BB_NewClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_SaveClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     Pb_IsNew:Boolean;
     Pi_staffdepid:integer;
    { Public declarations }
  end;

var
  Form_StaffDepSetup: TForm_StaffDepSetup;

implementation

{$R *.dfm}

procedure TForm_StaffDepSetup.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_StaffDepSetup.BB_NewClick(Sender: TObject);
begin
     Edit_UserDep.Clear;
     Pb_IsNew:=true;
end;

procedure TForm_StaffDepSetup.BB_SaveClick(Sender: TObject);
begin
     if Edit_UserDep.Text='' then
     begin
          MessageDlg('Please insert the user department',mtInformation,[mbok],0);
          exit;
     end;
     if Pb_IsNew=true then
     begin
          with Qry do
          begin
               close;
               session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('Insert into staffdepartment(staffdId,staffdepartment) values');
               sql.Add('('+Inttostr(GetMaxId('staffdepartment','staffdepId'))+','+#39+Edit_UserDep.Text+#39);
               sql.Add(')');
               ExecSQL;
          end;
     end
     else
     begin
          with Qry do
          begin
               close;
               session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('Update staffdepartment set');
               sql.Add('staffdepartment='+#39+Edit_UserDep.Text+#39);
               sql.Add('where staffdepartmentId='+inttostr(Pi_staffdepid));
               ExecSQL;
          end;
     end;
     ShowDoneMessage;
     Query_List.Close;
     Query_List.Open;
end;

procedure TForm_StaffDepSetup.DBGrid1DblClick(Sender: TObject);
begin
     Edit_UserDep.Text:=Query_List.FieldByName('staffdepartment').AsString;
     Pi_staffdepid:=Query_List.FieldByName('staffdepartmentId').AsInteger;
     Pb_IsNew:=false;
end;

procedure TForm_StaffDepSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#27 then
     BB_CloseClick(self);
end;

procedure TForm_StaffDepSetup.FormShow(Sender: TObject);
begin
     Query_List.Close;
     Query_List.Open;
     Pb_IsNew:=true;
end;

end.
