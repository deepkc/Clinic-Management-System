unit Unit_ReportReplication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,Unit_Master,Dm,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,
  ComCtrls;

type
  TForm_Replicate = class(TForm)
    Panel1: TPanel;
    Btn_close: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    DBLCB_TestName1: TDBLookupComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Dblcb_TestName2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Query_TestName1: TOraQuery;
    DS_TestName1: TDataSource;
    Ds_TestName2: TDataSource;
    Query_TestName2: TOraQuery;
    BitBtn2: TBitBtn;
    RichEdit_DefaultFinding: TRichEdit;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_closeClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Replicate;
  public
    { Public declarations }
  end;

var
  Form_Replicate: TForm_Replicate;

implementation

{$R *.dfm}

procedure TForm_Replicate.BitBtn1Click(Sender: TObject);
begin
     Replicate;
     RefreshQuery(Query_TestName1,gs_DatabaseName);
     RefreshQuery(Query_TestName2,gs_DatabaseName);
end;

procedure TForm_Replicate.BitBtn2Click(Sender: TObject);
begin
     if DBLCB_TestName1.KeyValue<>Null then
     begin
          if MessageDlg('Are you sure to delete?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
               Try
                    DM_Hospital.DB.StartTransaction;
                    DeleteClinicalReportFormat(DBLCB_TestName1.KeyValue);
                    DM_Hospital.DB.Commit;
                    ShowDoneMessage;
               Except
                    DM_Hospital.DB.Rollback;
                    ShowMessage('Failed to Delete, Please try again');
               End;
               //RefreshQuery(Query_TestName1,gs_DatabaseName);
               //RefreshQuery(Query_TestName2,gs_DatabaseName);
               with Query_TestName1 do
               begin
               close;
               Session := Dm_Hospital.DB;
               sql.Clear;
               sql.Add('Select * From '+gs_DB_UserName+'.Hs_Tena_TestName');
               sql.Add('Where Tena_DepId in (Select Dept_DepId From '+gs_Hos_DB_UserName+'.Hs_Dept_Department Where Dept_Extended_Report=''Y'')');
               sql.add('and Tena_TestNameId In (Select Distinct TestNameid from clinical_testSetup)');
               sql.add('order by Tena_TestName');
               open;
               end;

               with Query_TestName2 do
               begin
               close;
               Session := Dm_Hospital.DB;
               sql.Clear;
               sql.Add('Select * From '+gs_DB_UserName+'.Hs_Tena_TestName');
               sql.Add('Where Tena_DepId in (Select Dept_DepId From '+gs_Hos_DB_UserName+'.Hs_Dept_Department Where Dept_Extended_Report=''Y'')');
               sql.add('and Tena_TestNameId In (Select Distinct TestNameid from clinical_testSetup)');
               sql.add('order by Tena_TestName');
               open;
               end;
          end;
     end;
end;

procedure TForm_Replicate.Btn_closeClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_Replicate.FormCreate(Sender: TObject);
begin
     //RefreshQuery(Query_TestName1,gs_DatabaseName);
     //RefreshQuery(Query_TestName2,gs_DatabaseName);
     with Query_TestName1 do
     begin
     close;
     Session := Dm_Hospital.DB;
     sql.Clear;
     sql.Add('Select * From '+gs_Hos_DB_UserName+'.Hs_Tena_TestName');
     sql.Add('Where Tena_DepId in (Select Dept_DepId From '+gs_Hos_DB_UserName+'.Hs_Dept_Department Where Dept_Extended_Report=''Y'')');
     sql.add('and tena_TestNameId In (Select Distinct TestNameid from clinical_testSetup)');
     sql.add('order by tena_TestName');
     open;
     end;

     with Query_TestName2 do
     begin
     close;
     Session := Dm_Hospital.DB;
     sql.Clear;
     sql.Add('Select * From '+gs_Hos_DB_UserName+'.Hs_Tena_TestName');
     sql.Add('Where Tena_DepId in (Select Dept_DepId From '+gs_Hos_DB_UserName+'.Hs_Dept_Department Where Dept_Extended_Report=''Y'')');
     sql.add('and Tena_TestNameId NOT In (Select Distinct TestNameid from clinical_testSetup)');
     sql.add('order by Tena_TestName');
     open;
     end;
end;

procedure TForm_Replicate.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Btn_closeClick(Sender);
end;

procedure TForm_Replicate.Replicate;
var
     MaxId:Integer;
     OldClinical_TestSetupID,NewClinical_TestSetupID,OldReportFormatID,NewReportFormatID,DISPLAYORDER:Integer;
     FindingTitle,Default_finding,Default_finding_Rich,FindingsFresh,FindingsOLD,FindingsFresh2:String;
     ReportTitle,ReportTitle_Rich,IsDefault,IsActive:String;
     Query1,Qry,Qry2,Qry3,orqry_blank,Ora_Save:TOraQuery;
     lb_IsMassData,lb_IsMassData2:Boolean;
begin
     if (DBLCB_TestName1.KeyValue=Null) or (Dblcb_TestName2.KeyValue=Null) then
     begin
          ShowMessage('Please select both Testname');
          Exit;
     end;

     if IsDataExist('clinical_testSetup','TestNameID',VarToStr(DBLCB_TestName2.KeyValue)) then
     begin
          ShowMessage('Report Setup Exist, Please Delete it and Replicate');
          Exit;
     end
     else
     begin
          try
               DM_Hospital.DB.StartTransaction;
               Query1 := TOraQuery.Create(nil);
               Qry:=TOraQuery.Create(Nil);
               Qry2:=TOraQuery.Create(Nil);
               Qry3:=TOraQuery.Create(Nil);
               orqry_blank:=TOraQuery.Create(Nil);
               With Query1 do
               Begin
                    Close;
                    Session:=Dm_Hospital.Db;
                    sql.Clear;
                    sql.Add(' Select * from clinical_testSetup');
                    sql.Add(' Where TestNameID=' + IntToStr(DBLCB_TestName1.KeyValue));
                    Open;
                    while not eof do
                    begin
                         OldClinical_TestSetupID:=Query1.FieldByName('Clinical_TestSetupID').AsInteger;
                         OldReportFormatID:=Query1.FieldByName('ReportFormatID').AsInteger;
                         ReportTitle:=Query1.FieldByName('ReportTitle').AsString;
                         ReportTitle_Rich:=Query1.FieldByName('ReportTitle_Rich').AsString;
                         IsDefault:=Query1.FieldByName('IsDefault').AsString;
                         IsActive:=Query1.FieldByName('IsActive').AsString;
                         NewClinical_TestSetupID:=GetMaxId('clinical_testSetup','clinical_testSetupID');

                         with Qry3 do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              sql.Clear;
                              sql.Add(' Select * from clinical_reporttype');
                              sql.Add(' Where ReportTypeID=' + IntToStr(OldReportFormatID));
                              Open;
                         end;
                         with Qry2 do
                         begin
                              NewReportFormatID:=GetMaxId('clinical_reporttype', 'reporttypeid');
                              Close;
                              Session:=Dm_Hospital.Db;
                              sql.Clear;
                              sql.Add('insert into clinical_reporttype(reporttypeid,testnameid,reporttype,isactive)');
                              sql.Add('values(' + IntToStr(NewReportFormatID) + ',' + IntToStr(Dblcb_TestName2.KeyValue)
                                   + ',' + #39 + Qry3.FieldByName('ReportType').AsString + #39 + ',' + #39 + Qry3.FieldByName('IsActive').AsString + #39);
                              sql.Add(')');
                              ExecSQL;
                         end;

                         with Qry do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              sql.Clear;
                              sql.Add('insert into clinical_testSetup(clinical_testsetupid,testnameid,reportformatid,reporttitle,reporttitle_rich');
                              sql.Add(',Isdefault,IsActive)');
                              sql.Add('values(' + IntToStr(NewClinical_TestSetupID) + ',' + IntToStr(Dblcb_TestName2.KeyValue) + ',' + IntToStr
                                   (NewReportFormatID));
                              sql.Add(',' + #39 + StringReplace(REPORTTITLE, '''', '''''', [rfReplaceAll]) + #39 + ',' + #39 + StringReplace
                                   (reporttitle_rich, '''', '''''', [rfReplaceAll]) + #39);
                              sql.Add(',' + #39 + Isdefault + #39 + ',' + #39 + ISACTIVE + #39);
                              sql.Add(')');
                              ExecSQL;
                         end;
                         with Qry2 do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              sql.Clear;
                              sql.Add(' Select * from clinical_testSetupDetail');
                              sql.Add(' Where clinical_testSetupID=' + IntToStr(OldClinical_TestSetupID));
                              Open;
                              while not eof do
                              begin
                                   MaxId:=GetMaxId('clinical_testSetupDetail','clinical_testSetupDetailID');
                                   DISPLAYORDER:=Qry2.FieldByName('DisplayOrder').AsInteger;
                                   FindingTitle:=Qry2.FieldByName('Finding_Title').AsString;
                                   Default_finding:=StringReplace(Qry2.FieldByName('Default_Finding').AsString,'''','''''',[rfreplaceAll]);
                                   //RichEdit_DefaultFinding.Text:=StringReplace(Qry2.FieldByName('Default_Finding_Rich').AsString,'''','''''',[rfreplaceAll]);

                                   FindingsFresh:='';
                                   FindingsOLD:='';
                                   FindingsFresh2:='';



                                   Memo1.Lines.Clear;
                                   Memo1.lines.Text:=StringReplace(Qry2.FieldByName('Default_Finding_Rich').AsString,'''','''''',[rfreplaceAll]);
                                   Memo1.lines.SaveToFile('updt.txt');
                                   RichEdit_DefaultFinding.Lines.LoadFromFile('updt.txt');


                                   Memo2.clear;
                                   RichEdit_DefaultFinding.Lines.saveToFile('file.txt');
                                   Memo2.Lines.LoadFromFile('file.txt');
                                   FindingsFresh := Memo2.Text;

                                   if Length(FindingsFresh)>8000 then
                                   begin
                                        FindingsOLD:=FindingsFresh;
                                        lb_IsMassData:=True;
                                        FindingsFresh:=Copy(FindingsFresh,0,3999);
                                        FindingsFresh2:=StringReplace(FindingsOLD,FindingsFresh,'',[rfReplaceAll]);
                                        //FindingsFresh2:= Copy(memo2.Text,4000,7999);
                                   end
                                   else
                                   lb_IsMassData:=False;

                                   if lb_IsMassData=False then
                                   begin
                                        if Length(FindingsFresh)>4000 then
                                        begin
                                             FindingsOLD:=FindingsFresh;
                                             lb_IsMassData2:=True;
                                             FindingsFresh:=Copy(FindingsFresh,0,3999);
                                        end
                                        else
                                        lb_IsMassData2:=False;
                                   end;

                                   with Qry do
                                   begin
                                        Close;
                                        SQL.Clear;
                                        Session:=Dm_Hospital.Db;
                                        sql.Add('insert into clinical_testSetupDetail(clinical_testsetupdetailid,clinical_testsetupid,displayorder');
                                        sql.Add(',Finding_Title,Default_finding,Default_finding_Rich)');
                                        sql.Add('values(' + IntToStr(MaxId) + ',' + IntToStr(NewClinical_TestSetupID)
                                             + ',' + IntToStr(DISPLAYORDER));
                                        sql.Add(',' + #39 + FindingTitle + #39 + ',' + #39 + Default_finding + #39 + ',' + #39 + FindingsFresh + #39);
                                        sql.Add(')');
                                        ExecSQL;
                                   end;

                                   if lb_IsMassData=True then
                                   begin
                                        With orqry_blank do
                                        Begin
                                             close;
                                             Session:=Dm_Hospital.Db;
                                             SQL.clear;
                                             sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,0,3999)));
                                             sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(MaxId));
                                             //sql.SaveToFile('c:\greatvalue.txt');
                                             //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                                             ExecSQL;
                                        End;

                                        With orqry_blank do
                                        Begin
                                             close;
                                             Session:=Dm_Hospital.Db;
                                             SQL.clear;
                                             sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,4000,Length(FindingsFresh2))));
                                             sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(MaxId));
                                             //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                                             ExecSQL;
                                        End;
                                   end
                                   else
                                   begin
                                        With orqry_blank do
                                        Begin
                                             close;
                                             Session:=Dm_Hospital.Db;
                                             SQL.clear;
                                             sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsOld,4000,Length(FindingsOld))));
                                             sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(MaxId));
                                             //sql.SaveToFile('c:\greatvalue11.txt');
                                             //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                                             ExecSQL;
                                        End;
                                   end;
                                   //Ora_Save.Free; //che

                                   Next;
                              end;
                         end;
                         Next;
                    end;
               End;
               Query1.Free;
               qry.Free; //che
               qry2.Free; //che
               qry3.Free; //che

               //ReplicateTestReport(DBLCB_TestName1.KeyValue,Dblcb_TestName2.KeyValue);
               ShowDoneMessage;
               DM_Hospital.DB.Commit;
          Except
               ShowMessage('Failed to replicate, Please try again');
               DM_Hospital.DB.Rollback;
          end;
     end;
end;

end.
