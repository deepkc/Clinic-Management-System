unit Unit_ManualRepFooterSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, DBCtrls, DB,
  MemDS, DBAccess, Ora,DM,Fxn,Unit_Master,Unit_InvestigationMemberSetup;

type
  TForm_ManualRepFooterSetup = class(TForm)
    pnl_top: TPanel;
    btn_Save: TBitBtn;
    btnBB_Close: TBitBtn;
    pnl_body: TPanel;
    pgc_Main: TPageControl;
    ts_List: TTabSheet;
    ts_New: TTabSheet;
    dbgrd_List: TDBGrid;
    btn_New: TBitBtn;
    lbledt_footerleft: TLabeledEdit;
    dblkcbb_department: TDBLookupComboBox;
    lbl1: TLabel;
    chk_isactive: TCheckBox;
    lbledt_footercenter: TLabeledEdit;
    lbledt_footerRight: TLabeledEdit;
    lbledt_FLStatus: TLabeledEdit;
    lbledt_FCstatus: TLabeledEdit;
    lbledt_FRStatus: TLabeledEdit;
    shp1: TShape;
    oraqry_list: TOraQuery;
    lbledt_FLQualification: TLabeledEdit;
    lbledt_FCQualifiation: TLabeledEdit;
    lbledt_FRQualification: TLabeledEdit;
    lbledt_FLSpecialization: TLabeledEdit;
    lbledt_FCSpecialization: TLabeledEdit;
    lbledt_FRSpecialization: TLabeledEdit;
    orqry_dep: TOraQuery;
    ds_dep: TDataSource;
    ds_list: TDataSource;
    orqry_Name: TOraQuery;
    ds_name: TDataSource;
    orqry1: TOraQuery;
    orqry2: TOraQuery;
    ds1: TDataSource;
    ds2: TDataSource;
    cbb_left: TComboBox;
    cbb_center: TComboBox;
    cbb_right: TComboBox;
    orqry_userdetail: TOraQuery;
    btn_setup: TBitBtn;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pgc_MainChange(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btnBB_CloseClick(Sender: TObject);
    procedure dblkcbb_departmentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_SaveClick(Sender: TObject);
    procedure dbgrd_ListDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbb_leftKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_centerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_rightKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbb_leftClick(Sender: TObject);
    procedure btn_setupClick(Sender: TObject);
    procedure cbb_centerClick(Sender: TObject);
    procedure cbb_rightChange(Sender: TObject);
    procedure dbgrd_ListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    pb_isnew:Boolean;
  public
  pi_left,pi_center,pi_right:Integer;
    { Public declarations }
  end;

var
  Form_ManualRepFooterSetup: TForm_ManualRepFooterSetup;

implementation

{$R *.dfm}

procedure TForm_ManualRepFooterSetup.btnBB_CloseClick(Sender: TObject);
begin
    if pgc_Main.ActivePageIndex=1 then
    begin
       pgc_Main.ActivePageIndex:=0;
       btn_Save.Enabled:=False;
       btn_New.Enabled:=True;
       RefreshQuery(oraqry_list,'');
       RefreshQuery(orqry1,'');
       RefreshQuery(orqry2,'');
       cbb_left.ItemIndex:=-1;
       cbb_center.ItemIndex:=-1;
       cbb_right.ItemIndex:=-1;
    end
    else
       close;

end;

procedure TForm_ManualRepFooterSetup.btn_NewClick(Sender: TObject);
begin
    pgc_Main.ActivePageIndex := 1;
    btn_Save.Enabled:=true;
    btn_New.Enabled:=false;
    pb_isnew:=True;

    //Load For New data

    chk_isactive.Checked:=True;
    cbb_left.ItemIndex:=-1;
    cbb_center.ItemIndex:=-1;
    cbb_right.ItemIndex:=-1;
    dblkcbb_department.KeyValue:=null;

    lbledt_footerleft.Text:='';
    lbledt_FLStatus.Text:='';
    lbledt_FLQualification.Text:='';
    lbledt_FLSpecialization.Text:='';

    lbledt_footercenter.Text:='';
    lbledt_FCstatus.Text:='';
    lbledt_FCQualifiation.Text:='';
    lbledt_FCSpecialization.Text:='';

    lbledt_footerRight.Text:='';
    lbledt_FRStatus.Text:='';
    lbledt_FRQualification.Text:='';
    lbledt_FRSpecialization.Text:='';


end;

procedure TForm_ManualRepFooterSetup.btn_SaveClick(Sender: TObject);
var
    isactive:string;
    Qry_save:TOraQuery;
    li_newid:Integer;
begin
    if chk_isactive.Checked then
      isactive:='Y'
    else
      isactive:='N';

    if pb_isnew then
    begin
      try
        Qry_save:=TOraQuery.Create(nil);
        li_newid:=GetMaxId('MARF_ManualReportFooter','MARF_ManualReportFooterID');
        with Qry_save do
        begin
          Close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('insert into MARF_ManualReportFooter (MARF_ManualReportFooterID,MARF_Depid,MARF_Isactive');
          sql.Add(',MARF_FooterleftStatus,MARF_Footerleft,MARF_FooterCentStatus,MARF_FooterCent,MARF_FooterRightStatus,MARF_FooterRight');
          sql.Add(',MARF_FooterleftQualification,MARF_FooterCentQualification,MARF_FooterRightQualification,MARF_FooterleftSpecialization');
          SQL.Add(',MARF_FooterCentSpecialization,MARF_FooterRightSpecialization)');
          sql.Add(' values ('+inttostr(li_newid)+','+quotedstr(dblkcbb_department.KeyValue));
          SQL.Add(','+quotedstr(isactive)+','+quotedstr(lbledt_FLStatus.Text)+','+quotedstr(cbb_left.Text)+','+quotedstr(lbledt_FCstatus.Text));
          sql.Add(','+quotedstr(cbb_center.text)+','+quotedstr(lbledt_FRStatus.Text)+','+quotedstr(cbb_right.text));
          sql.Add(','+QuotedStr(lbledt_FLQualification.Text)+','+quotedstr(lbledt_FCQualifiation.Text)+','+quotedstr(lbledt_FRQualification.text));
          sql.Add(','+QuotedStr(lbledt_FLSpecialization.text)+','+quotedstr(lbledt_FCSpecialization.text)+','+quotedstr(lbledt_FRSpecialization.text));
          sql.Add(')');
          ExecSQL;
        end;
        ShowDoneMessage;
      finally
        Qry_save.Free;
      end;
    end
    else
    begin
        try
        Qry_save:=TOraQuery.Create(nil);
        with Qry_save do
        begin
          Close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Update MARF_ManualReportFooter set MARF_Depid='+quotedstr(dblkcbb_department.KeyValue));
          SQL.Add(',MARF_Isactive='+quotedstr(isactive)+',MARF_FooterleftStatus='+quotedstr(lbledt_FLStatus.Text));
          sql.Add(',MARF_Footerleft='+quotedstr(cbb_left.Text));
          sql.Add(',MARF_FooterCentStatus='+quotedstr(lbledt_FCstatus.Text));
          SQL.Add(',MARF_FooterCent='+quotedstr(cbb_center.Text));
          sql.Add(',MARF_FooterRightStatus='+quotedstr(lbledt_FRStatus.Text));
          sql.Add(',MARF_FooterRight='+quotedstr(cbb_right.Text));
          sql.Add(',MARF_FooterleftQualification='+QuotedStr(lbledt_FLQualification.Text));
          sql.Add(',MARF_FooterCentQualification='+quotedstr(lbledt_FCQualifiation.Text));
          sql.Add(',MARF_FooterRightQualification='+quotedstr(lbledt_FRQualification.text));
          sql.Add(',MARF_FooterleftSpecialization='+QuotedStr(lbledt_FLSpecialization.text));
          sql.Add(',MARF_FooterCentSpecialization='+quotedstr(lbledt_FCSpecialization.text));
          sql.Add(',MARF_FooterRightSpecialization='+quotedstr(lbledt_FRSpecialization.text));
          sql.Add(' where MARF_ManualReportFooterID='+inttostr(oraqry_list.FieldByName('MARF_ManualReportFooterID').AsInteger));
          ExecSQL;
        end;
        ShowDoneMessage;
        finally
          Qry_save.Free;
        end;
    end;
end;

procedure TForm_ManualRepFooterSetup.btn_setupClick(Sender: TObject);
begin
    try
      Form_InvestigationMember:=TForm_InvestigationMember.Create(nil);
      with Form_InvestigationMember do
      begin
        ShowModal;
      end;
    finally
      Form_InvestigationMember.Free;
    end;
end;

procedure TForm_ManualRepFooterSetup.cbb_centerClick(Sender: TObject);
var
  ls_username:string;
begin
      ls_username:='';
      ls_username:=Trim(cbb_center.Text);
      with orqry_userdetail do
      begin
         Close;
         Session:=DM_Hospital.DB;
         sql.Clear;
         sql.Add('select * from UWMF_UserWiseManualFooterDtl where UWMF_Username='+quotedstr(ls_username));
         Open;
      end;
      if orqry_userdetail.RecordCount>0 then
      begin
        lbledt_FCQualifiation.Text:=orqry_userdetail.FieldByName('UWMF_Qualification').AsString;
        lbledt_FCSpecialization.Text:=orqry_userdetail.FieldByName('UWMF_Specialization').AsString;
      end
      else
      begin
        lbledt_FCQualifiation.Text:='';
        lbledt_FCSpecialization.Text:='';
      end;
end;

procedure TForm_ManualRepFooterSetup.cbb_centerKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_DELETE then
     cbb_center.ItemIndex:=-1;
end;

procedure TForm_ManualRepFooterSetup.cbb_leftClick(Sender: TObject);
var
  ls_username:string;
begin
      ls_username:='';
      ls_username:=Trim(cbb_left.Text);
      with orqry_userdetail do
      begin
         Close;
         Session:=DM_Hospital.DB;
         sql.Clear;
         sql.Add('select * from UWMF_UserWiseManualFooterDtl where UWMF_Username='+quotedstr(ls_username));
         Open;
      end;
      if orqry_userdetail.RecordCount>0 then
      begin
        lbledt_FLQualification.Text:=orqry_userdetail.FieldByName('UWMF_Qualification').AsString;
        lbledt_FLSpecialization.Text:=orqry_userdetail.FieldByName('UWMF_Specialization').AsString;
      end
      else
      begin
        lbledt_FCQualifiation.Text:='';
        lbledt_FCSpecialization.Text:='';
      end;
end;

procedure TForm_ManualRepFooterSetup.cbb_leftKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if Key=VK_DELETE then
     cbb_left.ItemIndex:=-1;
end;

procedure TForm_ManualRepFooterSetup.cbb_rightChange(Sender: TObject);
var
  ls_username:string;
begin
      ls_username:='';
      ls_username:=Trim(cbb_right.Text);
      with orqry_userdetail do
      begin
         Close;
         Session:=DM_Hospital.DB;
         sql.Clear;
         sql.Add('select * from UWMF_UserWiseManualFooterDtl where UWMF_Username='+quotedstr(ls_username));
         Open;
      end;
      if orqry_userdetail.RecordCount>0 then
      begin
        lbledt_FRQualification.Text:=orqry_userdetail.FieldByName('UWMF_Qualification').AsString;
        lbledt_FRSpecialization.Text:=orqry_userdetail.FieldByName('UWMF_Specialization').AsString;
      end
      else
      begin
        lbledt_FRQualification.Text:='';
        lbledt_FRSpecialization.Text:='';
      end;
end;

procedure TForm_ManualRepFooterSetup.cbb_rightKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_DELETE then
     cbb_right.ItemIndex:=-1;
end;

procedure TForm_ManualRepFooterSetup.dbgrd_ListDblClick(Sender: TObject);
begin
    pb_isnew:=False;
    pgc_Main.ActivePageIndex:=1;
    btn_Save.Enabled:=True;
    btn_New.Enabled:=false;

    //Date Display......
    dblkcbb_department.KeyValue:=oraqry_list.FieldByName('MARF_DEPID').AsInteger;

    if oraqry_list.FieldByName('MARF_ISACTIVE').AsString='Y' then
      chk_isactive.Checked:=True
    else
      chk_isactive.Checked:=False;

    cbb_left.ItemIndex:=cbb_left.Items.IndexOf(oraqry_list.FieldByName('MARF_Footerleft').AsString);
    lbledt_footerleft.Text:=oraqry_list.FieldByName('MARF_Footerleft').AsString;
    lbledt_FLStatus.Text:=oraqry_list.FieldByName('MARF_FooterleftStatus').AsString;
    lbledt_FLQualification.Text:=oraqry_list.FieldByName('MARF_FooterleftQualification').AsString;
    lbledt_FLSpecialization.Text:=oraqry_list.FieldByName('MARF_FooterleftSpecialization').AsString;

    cbb_center.ItemIndex:=cbb_center.Items.IndexOf(oraqry_list.FieldByName('MARF_FooterCent').AsString);
    lbledt_footercenter.Text:=oraqry_list.FieldByName('MARF_FooterCent').AsString;
    lbledt_FCstatus.Text:=oraqry_list.FieldByName('MARF_FooterCentStatus').AsString;
    lbledt_FCQualifiation.Text:=oraqry_list.FieldByName('MARF_FooterCentQualification').AsString;
    lbledt_FCSpecialization.Text:=oraqry_list.FieldByName('MARF_FooterCentSpecialization').AsString;

    cbb_right.ItemIndex:=cbb_right.Items.IndexOf(oraqry_list.FieldByName('MARF_FooterRight').AsString);
    lbledt_footerRight.Text:=oraqry_list.FieldByName('MARF_FooterRight').AsString;
    lbledt_FRStatus.Text:=oraqry_list.FieldByName('MARF_FooterRightStatus').AsString;
    lbledt_FRQualification.Text:=oraqry_list.FieldByName('MARF_FooterRightQualification').AsString;
    lbledt_FRSpecialization.Text:=oraqry_list.FieldByName('MARF_FooterRightSpecialization').AsString;
    //............................................................
end;



procedure TForm_ManualRepFooterSetup.dbgrd_ListKeyDown(Sender: TObject;
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
              sql.Add('delete from MARF_ManualReportFooter where MARF_ManualReportFooterID='+inttostr(oraqry_list.FieldByName('MARF_ManualReportFooterID').asinteger));
              ExecSQL;
           end;
           oraqry_list.Locate('MARF_ManualReportFooterID',oraqry_list.FieldByName('MARF_ManualReportFooterID').asinteger, []);
           RefreshQuery(oraqry_list,'');

         finally
           Orgry_delete.Free;
         end;
      end
      else
        Exit;
    end;
end;

procedure TForm_ManualRepFooterSetup.dblkcbb_departmentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=VK_DELETE then
    dblkcbb_department.KeyValue:=null;
end;


procedure TForm_ManualRepFooterSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_ESCAPE then
       close;
end;

procedure TForm_ManualRepFooterSetup.FormShow(Sender: TObject);
begin
    pgc_Main.ActivePageIndex := 0;
    btn_Save.Enabled:=false;
    RefreshQuery(orqry_dep,'');
    RefreshQuery(oraqry_list,'');
    RefreshQuery(orqry_Name,'');
    RefreshQuery(orqry1,'');
    RefreshQuery(orqry2,'');

    //*******load combo box for name*************************//
    cbb_left.Items.Clear;
    cbb_center.Items.Clear;
    cbb_right.Items.Clear;

    orqry_Name.First;

    with orqry_Name do
    begin
        while not Eof do
        begin
               cbb_left.Items.Add(orqry_Name.FieldByName('UWMF_USERNAME').AsString);
               cbb_center.Items.Add(orqry_Name.FieldByName('UWMF_USERNAME').AsString);
               cbb_right.Items.Add(orqry_Name.FieldByName('UWMF_USERNAME').AsString);
               Next;
        end;
    end;
    //***********************************************************//
end;

procedure TForm_ManualRepFooterSetup.pgc_MainChange(Sender: TObject);
begin
   if pgc_Main.ActivePageIndex = 1 then
          pgc_Main.ActivePageIndex := 0
   else
          pgc_Main.ActivePageIndex := 1;
end;

end.
