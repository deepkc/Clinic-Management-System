unit Unit_MasterHospitalReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Buttons, DB, MemDS,
  DBAccess, Ora;

type
  TForm_HospitalMasterSetup = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn_New: TBitBtn;
    BitBtn_Save: TBitBtn;
    BitBtn_Close: TBitBtn;
    PageControl1: TPageControl;
    TabSheet_List: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet_New: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Edit_HospitalName: TEdit;
    OraQuery_Save: TOraQuery;
    OraQuery_Dbgrid: TOraQuery;
    DataSource_Dbgrid: TDataSource;
    BitBtn_HospitalReportPrevilage: TBitBtn;
    procedure BitBtn_NewClick(Sender: TObject);
    procedure BitBtn_CloseClick(Sender: TObject);
    procedure BitBtn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn_HospitalReportPrevilageClick(Sender: TObject);
  private
    { Private declarations }
  public
  pb_isnew:Boolean;
    { Public declarations }
  end;

var
  Form_HospitalMasterSetup: TForm_HospitalMasterSetup;

implementation
     uses DM,Fxn, Unit_MasterReportPrevilage;
{$R *.dfm}

procedure TForm_HospitalMasterSetup.BitBtn_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     begin
          Close;
     end;
     PageControl1.ActivePageIndex:=0;
     BitBtn_Save.Enabled:=false;
     BitBtn_New.Enabled:=true;
end;

procedure TForm_HospitalMasterSetup.BitBtn_HospitalReportPrevilageClick(
  Sender: TObject);
begin
   try
    Form_MasterReportPrevilege:=TForm_MasterReportPrevilege.Create(nil);
    with Form_MasterReportPrevilege do
    begin
       pi_hospitalid:=Form_HospitalMasterSetup.OraQuery_Dbgrid.FieldByName('homs_ID').AsInteger;
       ps_hospital:=Form_HospitalMasterSetup.OraQuery_Dbgrid.FieldByName('homs_HOSPITALNAME').AsString;
       Label_UserName.Caption:=ps_Hospital;
       ShowModal;
    end;
    finally
      Form_MasterReportPrevilege.Free;
    end;
end;

procedure TForm_HospitalMasterSetup.BitBtn_NewClick(Sender: TObject);
begin
     pb_isNew:=true;
     PageControl1.ActivePageIndex:=1;
     BitBtn_Save.Enabled:=true;
     BitBtn_New.Enabled:=false;
     Edit_HospitalName.Clear;
end;

procedure TForm_HospitalMasterSetup.BitBtn_SaveClick(Sender: TObject);
var oraQuery_Hospital:TOraQuery;
     SAVEID,UPDATEID:integer;
begin
      oraQuery_Hospital:=TOraQuery.Create(nil);
     with oraQuery_Hospital do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('select * from hs_HOMS_HospitalMasterSetup');
          sql.Add('where HOMS_HOSPITALNAME='+ QuotedStr(Edit_HospitalName.Text));
          //sql.SaveToFile('D:\save.txt');
          Open;
          if oraQuery_Hospital.RecordCount<>0 then
          begin
               showmessage('You Cannot Save Name Of Hospital of same name');
               exit;
          end
          else
          begin
               if pb_isNew=true then
               begin
                    SAVEID:=GetMaxId('hs_homs_HospitalMasterSetup','homs_ID');
                    With oraQuery_Save do
                    begin
                         Close;
                         Session:=DM_Hospital.DB;
                         sql.Clear;
                         Sql.Add('insert into hs_homs_HospitalMasterSetup(homs_id,homs_hospitalname) VALUES(');
                         Sql.Add(IntToStr(SAVEID));
                         Sql.Add(','+ QuotedStr(Edit_HospitalName.text));
                         Sql.Add(')');
                         //Sql.SaveToFile('d:\savepatient.txt');
                         execSql;
                    end;
               end
               else
               BEGIN
                    UPDATEID:=OraQuery_Dbgrid.FieldByName('ID').AsInteger;
                    with oraQuery_Save do
                    begin
                         Close;
                         Session:=DM_Hospital.DB;
                         Sql.Clear;
                         sql.Add('Update hs_homs_HospitalMasterSetup set');
                         Sql.Add('homs_HOSPITALNAME=' + QuotedStr(Edit_HospitalName.Text));
                         Sql.Add('where homs_id=' + IntToStr(UPDATEID));
                         //Sql.SaveToFile('D:\updatePatient.txt');
                         ExecSql;
                    end;
               END;
               showdonemessage;
               oraQuery_dbgrid.Close;
               oraQuery_dbgrid.Open;
               PageControl1.ActivePageIndex:=0;
               BitBtn_Save.Enabled:=false;
               BitBtn_New.Enabled:=true;
          end;
     end;
end;

procedure TForm_HospitalMasterSetup.DBGrid1DblClick(Sender: TObject);
begin
     pb_isNew:=false;
     BitBtn_Save.Enabled:=true;
     PageControl1.ActivePageIndex:=1;
     Edit_HospitalName.Text:=OraQuery_Dbgrid.FieldByName('homs_HOSPITALNAME').AsString;
end;

procedure TForm_HospitalMasterSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key=VK_ESCAPE then
          BitBtn_CloseClick(Sender);
end;

procedure TForm_HospitalMasterSetup.FormShow(Sender: TObject);
begin
     BitBtn_Save.Enabled:=false;
     PageControl1.ActivePageIndex:=0;
     with OraQuery_Dbgrid do
     begin
          Close;
          Session:=DM_Hospital.DB;
          Open;
     end;
end;

procedure TForm_HospitalMasterSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     begin
          PageControl1.ActivePageIndex:=1;
     end
     else if PageControl1.ActivePageIndex=1 then
     begin
          PageControl1.ActivePageIndex:=0;
     end;
end;

end.
