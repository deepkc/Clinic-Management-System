unit Unit_InvestigationMemberSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, ExtCtrls, StdCtrls, Buttons, DB, MemDS,
  DBAccess, Ora,Fxn,DM,Unit_Master, DBCtrls;

type
  TForm_InvestigationMember = class(TForm)
    pnl_top: TPanel;
    pnl_body: TPanel;
    pgc_main: TPageControl;
    ts_list: TTabSheet;
    ts_New: TTabSheet;
    dbgrd_list: TDBGrid;
    btn_Save: TBitBtn;
    btnBB_Close: TBitBtn;
    btn_New: TBitBtn;
    orqry_list: TOraQuery;
    ds_list: TDataSource;
    lbledt_qualification: TLabeledEdit;
    lbledt_spec: TLabeledEdit;
    lbl1: TLabel;
    dblkcbb_username: TDBLookupComboBox;
    orqry_username: TOraQuery;
    ds_Uname: TDataSource;
    lbl2: TLabel;
    procedure pgc_mainChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure dbgrd_listDblClick(Sender: TObject);
    procedure btnBB_CloseClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgrd_listKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    pb_isnew:Boolean;
    { Public declarations }
  end;

var
  Form_InvestigationMember: TForm_InvestigationMember;

implementation

{$R *.dfm}

procedure TForm_InvestigationMember.btnBB_CloseClick(Sender: TObject);
begin
    if pgc_Main.ActivePageIndex=1 then
    begin
       pgc_Main.ActivePageIndex:=0;
       btn_Save.Enabled:=False;
       btn_New.Enabled:=True;
       RefreshQuery(orqry_list,'');
       //RefreshQuery(orqry,'');
    end
    else
       close;
end;

procedure TForm_InvestigationMember.btn_NewClick(Sender: TObject);
begin
    pgc_main.ActivePageIndex:=1;
    pgc_Main.ActivePageIndex := 1;
    btn_Save.Enabled:=true;
    btn_New.Enabled:=false;
    pb_isnew:=True;
    dblkcbb_username.KeyValue:=null;
    lbledt_qualification.text:='';
    lbledt_spec.Text:='';
end;

procedure TForm_InvestigationMember.btn_SaveClick(Sender: TObject);
var
  Qry_Save:TOraQuery;
  li_id:Integer;
  li_UserId:Integer;
  ls_Username:string;
  ls_Qualification:string;
  ls_Specialization:string;
begin
    li_id:=0;
    li_UserId:=dblkcbb_username.KeyValue;
    ls_Username:=Trim(dblkcbb_username.Text);
    ls_Qualification:=Trim(lbledt_qualification.Text);
    ls_Specialization:=Trim(lbledt_spec.Text);

    if dblkcbb_username.KeyValue=null then
    begin
      MessageDlg('Please Choose Name.',mtError,[mbOK],0);
      dblkcbb_username.SetFocus;
      Exit;
    end;


    if pb_isnew then
    begin
        li_id:=GetMaxId('UWMF_UserWiseManualFooterDtl','UWMF_ID');
        try
          Qry_Save:=TOraQuery.Create(nil);
          with Qry_Save do
          begin
              close;
              Session:=DM_Hospital.DB;
              sql.Clear;
              sql.Add('insert into UWMF_UserWiseManualFooterDtl (UWMF_ID,UWMF_Userid,UWMF_Username,UWMF_Qualification,UWMF_Specialization )');
              sql.Add(' values ('+inttostr(li_id));
              sql.Add(','+inttostr(li_UserId));
              sql.Add(','+quotedstr(ls_Username));
              sql.Add(','+quotedstr(ls_Qualification));
              sql.Add(','+quotedstr(ls_Specialization));
              sql.Add(')');
              ExecSQL;
          end;
        finally
          Qry_Save.Free;
        end;
    end
    else
    begin
        li_id:=orqry_list.FieldByName('UWMF_ID').asinteger;
        try
          Qry_Save:=TOraQuery.Create(nil);
          with Qry_Save do
          begin
              close;
              Session:=DM_Hospital.DB;
              sql.Clear;
              sql.Add('Update UWMF_UserWiseManualFooterDtl set UWMF_Userid='+inttostr(li_UserId));
              sql.Add(',UWMF_Username='+quotedstr(ls_Username)+' ,UWMF_Qualification='+quotedstr(ls_Qualification));
              sql.Add(',UWMF_Specialization='+quotedstr(ls_Specialization));
              sql.Add(' where UWMF_ID='+inttostr(li_id));
              ExecSQL;
          end;
        finally
          Qry_Save.Free;
        end;
    end;
    ShowDoneMessage;
end;

procedure TForm_InvestigationMember.dbgrd_listDblClick(Sender: TObject);
begin
      pb_isnew:=False;
      pgc_main.ActivePageIndex:=1;
      btn_Save.Enabled:=True;
      btn_New.Enabled:=False;

      dblkcbb_username.KeyValue:=orqry_list.FieldByName('UWMF_USERID').AsInteger;
      lbledt_qualification.Text:=orqry_list.FieldByName('UWMF_Qualification').asstring;
      lbledt_spec.Text:=orqry_list.FieldByName('UWMF_Specialization').AsString;
end;

procedure TForm_InvestigationMember.dbgrd_listKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
     Orgry_delete:TOraQuery;
begin
    if Key=VK_DELETE then
    begin
      if MessageDlg('Do you want to delete?',mtConfirmation,[mbYes,mbNo],0)=mrYes  then
      begin
         try
           Orgry_delete:=TOraQuery.Create(nil);
           with Orgry_delete do
           begin
              close;
              Session:=DM_Hospital.DB;
              sql.Clear;
              sql.Add('delete from UWMF_UserWiseManualFooterDtl where UWMF_ID='+inttostr(orqry_list.FieldByName('UWMF_ID').asinteger));
              ExecSQL;
           end;
           orqry_list.Locate('UWMF_ID',orqry_list.FieldByName('UWMF_ID').asinteger, []);
           RefreshQuery(orqry_list,'');

         finally
           Orgry_delete.Free;
         end;
      end
      else
        Exit;
    end;
end;

procedure TForm_InvestigationMember.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_ESCAPE then
      btnBB_CloseClick(sender);
end;

procedure TForm_InvestigationMember.FormShow(Sender: TObject);
begin
    pgc_Main.ActivePageIndex := 0;
    btn_Save.Enabled:=false;

    RefreshQuery(orqry_list,'');
    RefreshQuery(orqry_username,'');

end;

procedure TForm_InvestigationMember.pgc_mainChange(Sender: TObject);
begin
   if pgc_Main.ActivePageIndex = 1 then
          pgc_Main.ActivePageIndex := 0
   else
          pgc_Main.ActivePageIndex := 1;
end;

end.
