unit Unit_SubmenuSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, fxn,
     dm, DBCtrls, Spin;

type
     TForm_SubmenuSetup = class(TForm)
          Panel_Main: TPanel;
          StaticText1: TStaticText;
          DBGrid1: TDBGrid;
          DS_Mainmenu: TDataSource;
          Query_Mainmenu: TOraQuery;
    Query_List: TOraQuery;
          DS_Module: TDataSource;
          Query_Module: TOraQuery;
          DBLCB_ModuleName: TDBLookupComboBox;
          SpinEdit_Priority: TSpinEdit;
    Edit_SubMenuName: TEdit;
          Menu: TStaticText;
          StaticText2: TStaticText;
    DS_List: TDataSource;
    Dblcb_MainMenu: TDBLookupComboBox;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    Panel2: TPanel;
    BtnSave: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    StaticText3: TStaticText;
          procedure BtnSaveClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpinEdit_PriorityChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_ModuleNameClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    private
          { Private declarations }
          pb_isNew: Boolean;
          pi_Moduleid: integer;
          pi_Priorityid: integer;
          pi_SubMenuid: integer;
     public
          { Public declarations }
     end;

var
     Form_SubmenuSetup: TForm_SubmenuSetup;

implementation

{$R *.dfm}

procedure TForm_SubmenuSetup.BB_CloseClick(Sender: TObject);
begin
     close;
end;

procedure TForm_SubmenuSetup.BB_NewClick(Sender: TObject);
begin
      pb_isNew:= True;
     Edit_SubMenuName.Clear;
     DBLCB_ModuleName.KeyValue:='';
     Dblcb_MainMenu.KeyValue:='';
end;

procedure TForm_SubmenuSetup.BtnSaveClick(Sender: TObject);
var
Qry:TOraQuery;
begin
     if DBLCB_ModuleName.KeyValue<=0 then
     begin
               MessageDlg('Missing Module Name', mtInformation, [mbOK], 0);
               Dblcb_MainMenu.SetFocus;
               exit;

     end;
     if DBLCB_Mainmenu.KeyValue<=0 then
     begin
               MessageDlg('Missing Mainmenu Name', mtInformation, [mbOK], 0);
               Edit_SubMenuName.SetFocus;
               exit;

     end;
     if Edit_SubMenuName.Text='' then
     begin
               MessageDlg('Missing Submenu Name', mtInformation, [mbOK], 0);
               SpinEdit_Priority.SetFocus;
               exit;

     end;
     Qry:=TOraQuery.Create(nil);
     if pb_isNew = True then
     begin
          with Qry do
          begin
               pi_SubMenuid := GetMaxID('HS_SUME_SUBMENU', 'sume_Submenuid');
               close;
               sql.Clear;
               Session := DM_Hospital.DB;
               sql.Add(
                    'Insert into HS_SUME_SUBMENU(sume_Submenuid,sume_MAINMENUId,Sume_submenu,Sume_PRIORITY)');
               sql.Add('Values(' + IntToStr(pi_SubMenuid)+ ',' +inttostr( Dblcb_MainMenu.keyValue));
               sql.Add(',' + #39 + Edit_SubMenuName.Text + #39 + ',' + #39 +SpinEdit_Priority.Text +#39);
               sql.Add(')');
               ExecSQL;
               ShowDoneMessage;
          end;
     end
     else
     begin
          with Qry do
          begin
               close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.Add
                    ('Update HS_SUME_SUBMENU set sume_submenu=' + #39 +Edit_SubMenuName.Text + #39);
               sql.Add(',sume_mainmenuid='+IntToStr(Dblcb_MainMenu.KeyValue));
               sql.Add(',sume_Priority='+SpinEdit_Priority.Text);
               sql.Add('where sume_submenuid=' + IntToStr(pi_SubMenuid));
               //sql.Add(')');
               ExecSQL;
               ShowDoneMessage;
          end;
     end;
     with Query_List do
     begin
          close;
          Session := DM_Hospital.DB;
          Open;
     end;

//          DBLCB_ModuleName.KeyValue:=null;
//          Dblcb_MainMenu.KeyValue:=null;
          Edit_SubMenuName.Clear;
          SpinEdit_Priority.Text:='0';
end;

procedure TForm_SubmenuSetup.DBGrid1DblClick(Sender: TObject);
begin
     with Query_Mainmenu do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql[1]:='where 1=1';
          Open;
     end;
      pb_isNew := false;
      pi_SubMenuid:=Query_list.FieldByName('submenuid').AsInteger;
      DBLCB_ModuleName.KeyValue := Query_list.FieldByName('moduleid').AsInteger;
      Dblcb_MainMenu.KeyValue := Query_list.FieldByName('mainmenuid').AsInteger;
      SpinEdit_Priority.Text := Query_list.FieldByName('PRIORITY').AsString;
      Edit_SubMenuName.Text := Query_list.FieldByName('submenu').AsString;
end;

procedure TForm_SubmenuSetup.DBLCB_ModuleNameClick(Sender: TObject);
begin
     if DBLCB_ModuleName.KeyValue>0 then
     begin
          with Query_Mainmenu do
          begin
               close;
               Session:=DM_Hospital.DB;
               sql[1]:='where mame_moduleid='+inttostr(DBLCB_ModuleName.KeyValue);
               Open;
          end;
     end;
end;

procedure TForm_SubmenuSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#27 then
     begin
          close;
     end;
end;

procedure TForm_SubmenuSetup.FormShow(Sender: TObject);
begin
     Pb_IsNew:=True;
     with Query_list do
     begin
          close;
          Session := DM_Hospital.DB;
          Open;
     end;
     with Query_Module do
     begin
          close;
          Session := DM_Hospital.DB;
          Open;
     end;
end;

procedure TForm_SubmenuSetup.SpinEdit_PriorityChange(Sender: TObject);
begin
     if StrToInt(SpinEdit_Priority.Text)<=0 then
     SpinEdit_Priority.Text:='0';
end;

end.
