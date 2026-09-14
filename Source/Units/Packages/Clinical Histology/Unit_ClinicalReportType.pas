unit Unit_ClinicalReportType;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, DB, Dm,
     DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, fxn,
     Unit_Master;

type
     TForm_ReportType = class(TForm)
          Panel1: TPanel;
          Btn_close: TBitBtn;
          BB_New: TBitBtn;
          btn_save: TBitBtn;
          Panel2: TPanel;
          SpeedButton1: TSpeedButton;
          CheckBox_Active: TCheckBox;
          DBLC_TestName: TDBLookupComboBox;
          DBGrid1: TDBGrid;
          edit_reporttype: TEdit;
          Label1: TLabel;
          Query_testname: TOraQuery;
          Query_Listing: TOraQuery;
          DS_TestName: TDataSource;
          DS_Listing: TDataSource;
          Query_Blank: TOraQuery;
          Edit_SearchtestName: TEdit;
          Edit_SearchReportType: TEdit;
          Label2: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          procedure FormShow(Sender: TObject);
          procedure Btn_closeClick(Sender: TObject);
          procedure btn_saveClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure Edit_SearchtestNameChange(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
     private
          { Private declarations }
     public
          { Public declarations }
          PbIsnew, reportypeid, Pi_TestNameId: Integer;

     end;

var
     Form_ReportType: TForm_ReportType;

implementation

uses Unit_ClinicalSetup;
{$R *.dfm}

procedure TForm_ReportType.BB_NewClick(Sender: TObject);
begin
     edit_reporttype.Text := '';
     DBLC_TestName.KeyValue := null;
     PbIsnew := 0;
end;

procedure TForm_ReportType.Btn_closeClick(Sender: TObject);
begin
     close;
     //RefreshQuery(Form_ClinicalTest.Query_Report, gs_DatabaseName);
end;

procedure TForm_ReportType.btn_saveClick(Sender: TObject);
var
     Isactive: string;
begin
     if edit_reporttype.Text = '' then
          MessageDlg('Report Type Cannot be Blank', mtInformation, [mbok], 0);
     if edit_reporttype.Text <> '' then
     begin

          if CheckBox_Active.Checked = true then
               Isactive := 'Y'
          else
               Isactive := 'N';
          if DBLC_TestName.KeyValue <> null then
          begin
               if PbIsnew = 0 then
               begin
                    SaveReportType(DBLC_TestName.KeyValue, edit_reporttype.Text, Isactive);
                    ShowDoneMessage;
               end
               else
               begin
                    UpdateReportType(reportypeid, DBLC_TestName.KeyValue, edit_reporttype.Text, Isactive);
                    PbIsnew := 0;
                    ShowDoneMessage;
               end;

               Query_Listing.close;
               Query_Listing.Open;
               edit_reporttype.Text := '';
               DBLC_TestName.KeyValue := null;
          end;
     end;
    close;
end;

procedure TForm_ReportType.DBGrid1DblClick(Sender: TObject);

begin
     edit_reporttype.Text := Query_Listing.FieldByName('reporttype').AsString;
     // testnameid:=Query_Listing.FieldByName('testnameid').AsString;
     // DBLC_TestName.KeyValue:=Query_Listing.FieldByName('testname').AsString;
     DBLC_TestName.KeyValue := Query_Listing.FieldByName('testnameid').Asinteger;
     reportypeid := Query_Listing.FieldByName('reporttypeid').Asinteger;
     if Query_Listing.FieldByName('isactive').AsString = 'Y' then
          CheckBox_Active.Checked := true
     else
          CheckBox_Active.Checked := false;

     PbIsnew := 1;
end;

procedure TForm_ReportType.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Query_Listing.FieldByName('isactive').AsString = 'N' then
          DBGrid1.Canvas.Font.Color := clGray
     else
          DBGrid1.Canvas.Font.Color := clBlack;
     DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TForm_ReportType.Edit_SearchtestNameChange(Sender: TObject);
var
     ls_filter: string;
begin
     ls_filter := '';

     if trim(Edit_SearchtestName.Text) <> '' then
          ls_filter := ls_filter + ' AND testname = ' + #39 + trim(Edit_SearchtestName.Text) + '*' + #39;

     if trim(Edit_SearchReportType.Text) <> '' then
          ls_filter := ls_filter + ' AND reporttype = ' + #39 + trim(Edit_SearchReportType.Text) + '*' + #39;

     if length(ls_filter) > 5 then
     begin
          Query_Listing.Filter := copy(ls_filter, 5, length(ls_filter));
          Query_Listing.Filtered := true;
     end
     else
          Query_Listing.Filtered := false;

end;

procedure TForm_ReportType.FormShow(Sender: TObject);
begin
     //RefreshQuery(Query_testname,'');
    // RefreshQuery(Query_Listing,'');
     WITH Query_testname do
     begin

          Close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          SQL.Add('Select * From TestName Where DepId in  ('+gs_userdepid+')');
          //Sql.Add('WHERE testname='+QuotedStr(gs_deptype));
          SQL.Add( 'ORDER by TestName');
          //Sql.SaveToFile('d:\aaaab.txt');
          Open;

          {
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('select testname,testnameid from testname');
          sql.add('Where DepId in (Select DepId from '+gs_Hos_DB_UserName+'.Department Where Extended_Report=''Y'')');
          sql.Add('order by testnameid');
          open;}
     end;
     WITH Query_Listing do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('select rt.isactive,ts.testnameid,ts.testname,rt.reporttype,rt.reporttypeid from '+gs_Hos_DB_UserName+'.testname ts,'+gs_DB_UserName+'.clinical_reporttype rt');
          sql.Add('where TS.TESTNAMEID=RT.TESTNAMEID');
          open;
     end;


     if Pi_TestNameId > 0 then
          DBLC_TestName.KeyValue := Pi_TestNameId;
     PbIsnew := 0;
end;

procedure TForm_ReportType.SpeedButton1Click(Sender: TObject);
begin
     with Query_Blank do
     begin
          close;
          Session := Dm_Hospital.DB;
          sql.Clear;
          sql.Add('delete from clinical_reporttype where reporttypeid=' + inttostr(Query_Listing.FieldByName('reporttypeid').Asinteger));
          execsql;
     end;
     //RefreshQuery(Query_Listing,'');
     WITH Query_Listing do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('select rt.isactive,ts.testnameid,ts.testname,rt.reporttype,rt.reporttypeid from '+gs_DB_UserName+'.testname ts,'+gs_DB_UserName+'.clinical_reporttype rt');
          sql.Add('where TS.TESTNAMEID=RT.TESTNAMEID');
          open;
     end;
end;

end.
