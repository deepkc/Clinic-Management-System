unit Unit_Community;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dm,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,fxn,Unit_Master;

type
  TForm_Community = class(TForm)
    Panel1: TPanel;
    Btn_close: TBitBtn;
    BB_New: TBitBtn;
    btn_save: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Edit_Community: TEdit;
    TabSheet2: TTabSheet;
    DBGrid_package: TDBGrid;
    Query_Community: TOraQuery;
    DS_Community: TDataSource;
    Panel2: TPanel;
    SpeedButton3: TSpeedButton;
    CheckBox_Active: TCheckBox;
    Query_Blank: TOraQuery;
    procedure BB_NewClick(Sender: TObject);
    procedure Btn_closeClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid_packageDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     communityid,PbIsNew:integer;
     Isactive:string;
  end;

var
  Form_Community: TForm_Community;

implementation

{$R *.dfm}

procedure TForm_Community.BB_NewClick(Sender: TObject);
begin
       if PageControl1.ActivePageIndex=1 then
     PageControl1.ActivePageIndex:=0;
     PbIsNew:=0;
     Edit_community.Clear;
end;

procedure TForm_Community.Btn_closeClick(Sender: TObject);
begin

     if PageControl1.ActivePageIndex=0 then
     PageControl1.ActivePageIndex:=1
     else
     close;
end;

procedure TForm_Community.btn_saveClick(Sender: TObject);
begin
       if Edit_Community.Text='' then
     begin
          MessageDlg('Community name can not be blank',mtInformation,[mbOK],0);
     end;
     if PbIsNew=0 then
     begin
          if Edit_Community.Text<>'' then
          begin
               if CheckDuplicateDataFrmTmp('Community','Community',gs_DatabaseName,Edit_Community.Text)=false then
               begin
               if CheckBox_Active.Checked=true then
               Isactive:='Y'
               else
               Isactive:='N';


               SaveCommunity(Edit_community.Text,isactive);
               ShowDoneMessage;
                PageControl1.ActivePageIndex:=1;
               end ;
          end;
     end
     else
     begin
          if CheckBox_Active.Checked=true then
          Isactive:='Y'
          else
          Isactive:='N';
          UpdateCommunity(communityid,Edit_Community.Text,isactive);
          ShowDoneMessage;
          PageControl1.ActivePageIndex:=1;
          //PbIsNew:=0;
     end;

          Query_Community.Close;
          Query_Community.Open;
end;

procedure TForm_Community.DBGrid_packageDblClick(Sender: TObject);
begin
     PbIsNew:=1;
     PageControl1.ActivePageIndex:=0;
     Edit_Community.Text:=Query_Community.FieldByName('Community').AsString;
     Communityid:=Query_Community.FieldByName('Communityid').AsInteger;
     if Query_Community.FieldByName('isactive').AsString='Y' then
     CheckBox_Active.Checked:=true
     else
     CheckBox_Active.Checked:=false;

end;

procedure TForm_Community.FormShow(Sender: TObject);
begin
      Query_Community.Close;
     Query_community.Open;
end;

procedure TForm_Community.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     begin
          PageControl1.ActivePageIndex:=1 ;
          //btn_new.enabled:=true;
     end
     else
         begin
          PageControl1.ActivePageIndex:=0;
          //btn_save.enabled:=true;
          //btn_new.enabled:=false;
          end;
end;

procedure TForm_Community.SpeedButton3Click(Sender: TObject);
begin
     with Query_Blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('delete from community where communityid='+inttostr(Query_Community.FieldByName('communityid').AsInteger));
          execsql;
     end;
      Query_Community.Close;
          Query_Community.Open;
end;

end.
