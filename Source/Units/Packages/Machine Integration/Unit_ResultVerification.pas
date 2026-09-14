unit Unit_ResultVerification;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DB, DBTables, Buttons, Spin,
     ServerDate, OleCtrls, DateEditXControl_TLB, qrBarcode, SMDBGrid,dm, MemDS,
  DBAccess, Ora;

type
     TForm_ResultVerification = class(TForm)
          Panel1: TPanel;
          DBGrid1: TDBGrid;
          GroupBox1: TGroupBox;
    RB_Verified: TRadioButton;
    RB_NonVerified: TRadioButton;
    RB_All: TRadioButton;
          DS_MachineFindingsResult: TDataSource;
          DBGrid2: TDBGrid;
          GB_Searchbydate: TGroupBox;
          Label11: TLabel;
          SPB_From: TSpeedButton;
          Label13: TLabel;
          SPB_To: TSpeedButton;
          CB_DateRange: TCheckBox;
          Dex_From: TDateEditX;
          Dex_To: TDateEditX;
          GroupBox6: TGroupBox;
          Label31: TLabel;
          Label32: TLabel;
          Se_CLDays: TSpinEdit;
          BB_Refresh: TBitBtn;
          DS_PatientList: TDataSource;
          Edit_SampleNo: TEdit;
    Edit_PatientName: TEdit;
          Edit2: TEdit;
    Edit_SampleNoSearch: TEdit;
          SpeedButton1: TSpeedButton;
          DBGrid3: TDBGrid;
          DS_LabFindingResult: TDataSource;
    SpeedButton5: TSpeedButton;
    x: TLabel;
    se_printcount: TSpinEdit;
    cb_preview: TCheckBox;
    SMDBGrid1: TSMDBGrid;
    Cb_All: TCheckBox;
    Table_List: TTable;
    Edit_TestName: TEdit;
    CB_Modify: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BB_Close: TBitBtn;
    spl_1: TSplitter;
    Query_PatientList: TOraQuery;
    Query_MachineFindingsResult: TOraQuery;
    Query_LabFindingResult: TOraQuery;
          procedure BB_RefreshClick(Sender: TObject);
          procedure SPB_FromClick(Sender: TObject);
          procedure SPB_ToClick(Sender: TObject);
          procedure DBGrid2CellClick(Column: TColumn);
          procedure FormShow(Sender: TObject);
          procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Cb_AllClick(Sender: TObject);
    procedure SMDBGrid1CellClick(Column: TColumn);
    procedure Edit_TestNameChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SMDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure Edit_SampleNoChange(Sender: TObject);
    procedure Edit_PatientNameChange(Sender: TObject);
    procedure Edit_SampleNoSearchChange(Sender: TObject);

     private
          { Private declarations }
     public
          Pi_PtDetailId:Integer;
          procedure GetFindingResult;
          procedure SavePatientTestDetail(PatientTestId,TestNameID, PatientId, TestId: Integer;
     TestNameCode, Finding, ResultUnit , RefRange, Extra, ExtraFinding: String);
          procedure PrintSticker;
          Procedure CreateTemp;

          Function CheckSampleTestName:Boolean;
          Function GetFromDateBySubNoOfDaysIntegration(DateControl: TDateEditX; NoOfDays: integer)
          : String;


          { Public declarations }
     end;

var
     Form_ResultVerification: TForm_ResultVerification;

implementation

uses Fxn, Unit_QrLabSticker;
{$R *.dfm}

procedure TForm_ResultVerification.BB_CloseClick(Sender: TObject);
begin
    Close;
end;

procedure TForm_ResultVerification.BB_RefreshClick(Sender: TObject);
Var
     DEX: TDateEditX;
     cloumn:tColumn;
begin
     DEX := TDateEditX.Create(nil);
     //DEX.SystemOfDate := gi_datesystem;
     gi_datesystem:=1;
     DEX.text := TodaysDate;

     //ChangeToDefaultDate(Dex_From, Dex_To);
     ChangeCaptionSPB(SPB_From);
     ChangeCaptionSPB(SPB_To);

     with Query_PatientList do
     begin
          Close;
          Session:=Dm_Hospital.DB;
          SQL.Clear;
          SQL.Add(' Select Distinct Pt.PatientId,cast (Pt.patientId as varchar(10)) patientidstr ,Pt.BillNo,(Select InitCap(PatientName) From PatientMain where PatientId=PT.PatientId) as PatientName,');
          sql.Add('(Select age From PatientMain where PatientId=PT.PatientId)age,(Select initcap(gender) From PatientMain where PatientId=PT.PatientId)gender');
          sql.Add(',(Select initcap(agetype) From PatientMain where PatientId=PT.PatientId)agetype,');
          SQL.Add(
               ' sc.LabNo as sampleNo,sc.SAMPLETAKENDATE From PatientTest PT ,SampleCollection Sc where Pt.patienttestid=sc.patienttestid and TestNameId In (Select TestNameId From Tnma_TestNameMapping)');
          SQL.Add(' and Trim(Sc.LabNo) is not null');
          if CB_DateRange.Checked = False then
               SQL.Add(' and SampletakenDate >=' + #39 + GetFromDateBySubNoOfDaysIntegration(DEX, StrToInt(Se_CLDays.text))
                      + #39 + ' and SampleTakenDate <=' + #39 + DEX.text + #39)
          Else
               SQL.Add(' and SampleTakenDate >=' + #39 + Dex_From.text + #39 + ' and SampleTakenDate <=' + #39 + Dex_To.text + #39);

          if RB_Verified.Checked=true then
          begin
               SQL.Add('and sc.LabNo in(select lamr_sampleno from Lamr_machineResult where lamr_ptdetailid is not null)')
          end
          else if RB_NonVerified.Checked=true then
          begin
              SQL.Add('and sc.LabNo in(select lamr_sampleno from Lamr_machineResult where lamr_ptdetailid is  null)');
          end
          else
          begin
              SQL.Add('and 1=1');
          end;
          sql.Add('order by sampletakendate,sampleno');
          //sql.savetofile('c:\checknverifynew.txt');
          Open;
     end;
     GetFindingResult;
end;

procedure TForm_ResultVerification.SPB_FromClick(Sender: TObject);
begin
     ChangeDateSystem(Dex_From, SPB_From);
     ChangeDateSystem(Dex_To, SPB_To);
end;

procedure TForm_ResultVerification.SPB_ToClick(Sender: TObject);
begin
     ChangeDateSystem(Dex_From, SPB_From);
     ChangeDateSystem(Dex_To, SPB_To);
end;

procedure TForm_ResultVerification.SpeedButton1Click(Sender: TObject);
var
Qry:TOraQuery;
Pi_PatientTESTId:Integer;
SAMPLENO:STRING;
Column:TColumn;
begin
     Qry:=TOraQuery.Create(nil);
     if CheckSampleTestName=true then
     exit;
     Table_List.Close;
     Table_List.Open;
     if CB_Modify.Checked=true then
     begin
          while not Table_List.Eof do
          begin
              if (Table_List.FieldByName('state').asboolean=true) and (Table_List.FieldByName('IsRepeated').asstring='Y') then
              with Qry do
              begin
                   Close;
                   Session:=DM_Hospital.DB;
                   SQL.Clear;
                   SQL.Add('Update patienttestdetail set finding='+QuotedStr(Table_List.FieldByName('Result').AsString));
                   sql.Add('where PTDETAILID='+inttostr(Table_List.FieldByName('PTdetailId').AsInteger));
                   //sql.savetofile('tt.txt');
                   ExecSQL;


              end;
              Table_List.Next;
          end;
          ShowDoneMessage;
          CB_Modify.Checked:=false;
     end
     else
     begin
          while not Table_List.Eof do
         begin
              if (Table_List.FieldByName('ptdetailid').AsInteger>0)  then
              begin
                   Table_List.edit;
                   Table_List.fieldbyname('state').asstring:='False';
                   Table_List.Post;
              end;
              Table_List.next;
         end;
         Table_List.Close;
         Table_List.Open;
         DM_Hospital.DB.StartTransaction;
         try
         while not Table_List.Eof do
         begin
              if Table_List.FieldByName('state').asboolean=true then
              begin
                    SavePatientTestDetail(Table_List.FieldByName('patienttestid').AsInteger,Table_List.FieldByName('TestNameId').AsInteger, Table_List.FieldByName('patientid').AsInteger,
                    Table_List.FieldByName('testid').AsInteger,
                    Table_List.FieldByName('TestNameCode').asstring,Table_List.FieldByName('Result').asstring
                    ,Table_List.FieldByName('Unit').asstring,Table_List.FieldByName('RefrangeLab').asstring,Table_List.FieldByName('Extra').asstring,
                    Table_List.FieldByName('ExtraFinding').asstring);

                    with Qry do
                    begin
                         Close;
                         Session:=DM_Hospital.DB;
                         SQL.Clear;
                         SQL.Add('Update Lamr_machineResult set LAMR_PTDETAILID='+IntToStr(Pi_PtDetailId)+' where TRIM(LAMR_SAMPLENO)='+#39+Table_List.FieldByName('sampleno').asstring+#39);
                         SQL.Add('and LAMR_TESTCODE='+#39+Table_List.FieldByName('TestNameCode').asstring+#39+'and LAMR_DATETIME='+#39+Table_List.FieldByName('LAMRDATETIME').asstring+#39);
                         //sql.savetofile('tt.txt');
                         ExecSQL;
                         if gi_compilevalue=2 then
                         begin
                              sql.Clear;
                              sql.Add('Insert Into PatientRun(PatientID,RunNo,BillNo,PatientTestID) Values(');
                              sql.Add(IntToStr(Table_list.FieldByName('PatientID').asinteger));
                              sql.Add(','+Chr(39)+Table_list.FieldByName('sampleno').AsString+Chr(39));
                              sql.Add(','+Chr(39)+Table_list.FieldByName('BillNo').AsString+Chr(39));
                              sql.Add(','+IntToStr(Table_list.FieldByName('PatientTestID').asinteger));
                              sql.Add(')');
                              ExecSQL;
                         end;


                    end;
                    UpdateTestProgressStatus(Table_List.FieldByName('patienttestid').AsInteger, 4);
              end;
              //Table_List.next;

              SAMPLENO:=Table_list.FieldByName('sampleno').AsString;
         if Table_List.FieldByName('testnameid').AsInteger=481 then //SLFT Case
         begin
              with Qry do
              begin
                   Close;
                   Session:=DM_Hospital.DB;
                   SQL.Clear;
                   SQL.Add('SELECT COUNT(TESTID)N FROM PATIENTTESTDETAIL WHERE ismachineresult=''Y''');
                   SQL.Add('and testid not in(select  testid from tema_testmapping)');
                   SQL.Add('AND PATIENTTESTID='+IntToStr(Table_List.FieldByName('patienttestid').AsInteger));
                   //sql.savetofile('c:/machinetrueresult.txt');
                   Open;
              end;
              if Qry.FieldByName('N').AsInteger<1 then
              begin
                  with Qry do
                  begin
                       Close;
                       Session:=DM_Hospital.DB;
                       SQL.Clear;
                       SQL.Add('select * from PatientTestDetail  where PatientTestID=2860442');
                       SQL.Add('and testid not in(select  testid from tema_testmapping)');
                       Open;
                  end;
                  while not Qry.Eof do
                  begin
                       SavePatientTestDetail(Table_List.FieldByName('patienttestid').AsInteger,Table_List.FieldByName('TestNameId').AsInteger, Table_List.FieldByName('patientid').AsInteger,
                        Qry.FieldByName('testid').AsInteger,
                        Qry.FieldByName('TestNameCode').asstring,''
                        ,Qry.FieldByName('Unit').asstring,Qry.FieldByName('Refrange').asstring,'',
                        '');
                        qry.next;
                  end;
              end;
         end;

         if Table_List.FieldByName('testnameid').AsInteger=459 then   //LIPID PROFILE Case
         begin
              with Qry do
              begin
                   Close;
                   Session:=DM_Hospital.DB;
                   SQL.Clear;
                   SQL.Add('SELECT COUNT(TESTID)N FROM PATIENTTESTDETAIL WHERE ismachineresult=''Y''');
                   SQL.Add('and testid not in(select  testid from tema_testmapping)');
                   SQL.Add('AND PATIENTTESTID='+IntToStr(Table_List.FieldByName('patienttestid').AsInteger));
                   //sql.savetofile('c:/machinetrueresult.txt');
                   Open;
              end;
              if Qry.FieldByName('N').AsInteger<1 then
              begin
                  with Qry do
                  begin
                       Close;
                       Session:=DM_Hospital.DB;
                       SQL.Clear;
                       SQL.Add('select * from PatientTestDetail  where PatientTestID=2862034');
                       SQL.Add('and testid not in(select  testid from tema_testmapping)');
                       Open;
                  end;
                  while not Qry.Eof do
                  begin
                       SavePatientTestDetail(Table_List.FieldByName('patienttestid').AsInteger,Table_List.FieldByName('TestNameId').AsInteger, Table_List.FieldByName('patientid').AsInteger,
                        Qry.FieldByName('testid').AsInteger,
                        Qry.FieldByName('TestNameCode').asstring,''
                        ,Qry.FieldByName('Unit').asstring,Qry.FieldByName('Refrange').asstring,'',
                        '');
                        qry.next;
                  end;
              end;
         end;


              Table_List.next;
         end;

         DM_Hospital.DB.Commit;
         if Table_List.recordcount>0 then
         ShowDoneMessage;
         except
         DM_Hospital.DB.Rollback;
     end;
     end;
     Qry.Free;
     BB_RefreshClick(Sender);
     Query_PatientList.Locate('SAMPLENO',SAMPLENO,[]);
     DBGrid2CellClick(Column);
end;










{Qry:ToraQuery;
begin
     Qry:=ToraQuery.Create(nil);
     if CheckSampleTestName=true then
     exit;
     Table_List.Close;
     Table_List.Open;
     if CB_Modify.Checked=true then
     begin
          while not Table_List.Eof do
          begin
              if (Table_List.FieldByName('state').asboolean=true) and (Table_List.FieldByName('IsRepeated').asstring='Y') then
              with Qry do
              begin
                   Close;
                   Session:=Dm_Hospital.DB;
                   SQL.Clear;
                   SQL.Add('Update patienttestdetail set finding='+QuotedStr(Table_List.FieldByName('Result').AsString));
                   sql.Add('verifiedby='+inttostr(gi_UserID));
                   sql.Add('where PTDETAILID='+inttostr(Table_List.FieldByName('PTdetailId').AsInteger));
                   //sql.savetofile('tt.txt');
                   ExecSQL;


              end;
              Table_List.Next;
          end;
          ShowDoneMessage;
          CB_Modify.Checked:=false;
     end
     else
     begin
          while not Table_List.Eof do
         begin
              if (Table_List.FieldByName('ptdetailid').AsInteger>0)  then
              begin
                   Table_List.edit;
                   Table_List.fieldbyname('state').asstring:='False';
                   Table_List.Post;
              end;
              Table_List.next;
         end;
         Table_List.Close;
         Table_List.Open;
         DM_Hospital.DB.StartTransaction;
         try
         while not Table_List.Eof do
         begin
              if Table_List.FieldByName('state').asboolean=true then
              begin
                    SavePatientTestDetail(Table_List.FieldByName('patienttestid').AsInteger,Table_List.FieldByName('TestNameId').AsInteger, Table_List.FieldByName('patientid').AsInteger,
                    Table_List.FieldByName('testid').AsInteger,
                    Table_List.FieldByName('TestNameCode').asstring,Table_List.FieldByName('Result').asstring
                    ,Table_List.FieldByName('Unit').asstring,Table_List.FieldByName('RefrangeLab').asstring,Table_List.FieldByName('Extra').asstring,
                    Table_List.FieldByName('ExtraFinding').asstring);

                    with Qry do
                    begin
                         Close;
                         Session:=Dm_Hospital.DB;
                         SQL.Clear;
                         SQL.Add('Update Lamr_machineResult set LAMR_PTDETAILID='+IntToStr(Pi_PtDetailId)+' where TRIM(LAMR_SAMPLENO)='+#39+Table_List.FieldByName('sampleno').asstring+#39);
                         SQL.Add('and LAMR_TESTCODE='+#39+Table_List.FieldByName('TestNameCode').asstring+#39+'and LAMR_DATETIME='+#39+Table_List.FieldByName('LAMRDATETIME').asstring+#39);
                         //sql.savetofile('tt.txt');
                         ExecSQL;
                         if gi_compilevalue=2 then
                         begin
                              sql.Clear;
                              sql.Add('Insert Into PatientRun(PatientID,RunNo,BillNo,PatientTestID) Values(');
                              sql.Add(IntToStr(Table_list.FieldByName('PatientID').asinteger));
                              sql.Add(','+Chr(39)+Table_list.FieldByName('sampleno').AsString+Chr(39));
                              sql.Add(','+Chr(39)+Table_list.FieldByName('BillNo').AsString+Chr(39));
                              sql.Add(','+IntToStr(Table_list.FieldByName('PatientTestID').asinteger));
                              sql.Add(')');
                              ExecSQL;
                        end;

                    end;
                    UpdateTestProgressStatus(Table_List.FieldByName('patienttestid').AsInteger, 4);
              end;
              Table_List.next;
         end;
         DM_Hospital.DB.Commit;
         ShowDoneMessage;

         except
         DM_Hospital.DB.Rollback;
     end;

     end;
     Qry.Free;
     GetFindingResult;
end;}

procedure TForm_ResultVerification.SpeedButton5Click(Sender: TObject);
begin
     PrintSticker;
end;


procedure TForm_ResultVerification.PrintSticker;
Var
     SAMPLENO: String;
     Day: String;
     DayNO: String;
     Bottom,zeros: String;
     i, J, PrintCount,k: Integer;
begin
     //gs_SampleNo := Edit_PreviousSampleNo.Text;
     // Day := copy(gs_SampleNo, 8, 1);
     // if Day = 'S' then
     // DayNO := '1'
     // else if Day = 'M' then
     // DayNO := '2'
     // else if Day = 'T' then
     // DayNO := '3'
     // else if Day = 'W' then
     // DayNO := '4'
     // else if Day = 'H' then
     // DayNO := '5'
     // else if Day = 'F' then
     // DayNO := '6';
     // SAMPLENO := copy(gs_SampleNo, 1, 6) + DayNO + copy(gs_SampleNo, 9, 999);
     SAMPLENO := Query_PatientList.FieldByName('SampleNo').AsString;//gs_SampleNo;
     // for i := 0 to CLB_CollectedSample.Items.Count - 1 do
     // begin
     // if CLB_CollectedSample.State[i] = cbChecked then
     // Bottom := Bottom + '   ' + CLB_CollectedSample.Items.Strings[i];
     // end;
     PrintCount := StrToInt(se_printcount.Text);
     try
          Form_Sticker := TForm_Sticker.Create(nil);
          with Form_Sticker do
          begin
               zeros := '';
               if length(SAMPLENO)<10 then
               begin
                    k:=10-length(SAMPLENO);
                    for I := 0 to k - 1 do
                    begin
                         zeros:=zeros+'0';
                    end;
               end;
//               QrBarcode.Text := SAMPLENO;
               // LoadPatientData(gi_PatientID);
               lbl_PatientName.Caption := Query_PatientList.FieldByName('PatientName').AsString+' - '+IntToStr(Query_PatientList.FieldByName('PatientId').AsInteger);
               if PrintCount <2 then
               begin
                    //for i := 0 to CLB_CollectedSample.Items.Count - 1 do
                    //begin
                         //if CLB_CollectedSample.State[i] = cbChecked then
                         //begin
                              //Bottom := CLB_CollectedSample.Items.Strings[i];
                              lbl_bottom.Caption := Bottom;
                              QrSticker.PreviewModal;
                         //end;

                    //end;
               end
               else
               begin
                    //for i := 0 to CLB_CollectedSample.Items.Count - 1 do
                    //begin
                         //if CLB_CollectedSample.State[i] = cbChecked then
                         //begin
                              For J := 0 to PrintCount - 1 do
                              begin
                                   //Bottom := CLB_CollectedSample.Items.Strings[i];
                                   lbl_bottom.Caption := Bottom;
                                   //QrSticker.Prepare;
                                   QrSticker.PreviewModal;
                              end;
                         //end;

                    //end;
               end;
          end;
     finally
          Form_Sticker.Free;
     end;
end;

procedure TForm_ResultVerification.BitBtn1Click(Sender: TObject);
var
Qry:ToraQuery;
begin
     Table_List.Close;
     table_list.Open;
     Qry:=ToraQuery.Create(nil);
     while not Table_List.Eof do
     begin
         if (Table_List.FieldByName('state').asboolean=true) then
         with Qry do
         begin
              Close;
              Session:=Dm_Hospital.DB;
              SQL.Clear;
              SQL.Add('delete from  patienttestdetail');
               sql.Add('where PTDETAILID='+inttostr(Table_List.FieldByName('PTdetailId').AsInteger));
              //sql.savetofile('tt.txt');
              ExecSQL;
              sql.clear;
              sql.Add('update lamr_machineresult set lamr_ptdetailid=0 where lamr_ptdetailid='+inttostr(Table_List.FieldByName('PTdetailId').AsInteger));
              execsql;
              if gi_compilevalue=2 then
              begin
                  sql.Clear;
                  SQL.Add('delete from  patientrun');
                  sql.Add('where runno='+Table_List.FieldByName('sampleno').asstring);
                  sql.Add('and billno='+#39+Table_List.FieldByName('Billno').asstring+#39);
                  sql.Add('and patienttestid='+inttostr(Table_List.FieldByName('patienttestid').asinteger));
                  execsql;
              end;

         end;
         Table_List.Next;
     end;
     ShowDoneMessage;
     GetFindingResult;
     qry.Free;
end;

procedure TForm_ResultVerification.Cb_AllClick(Sender: TObject);
begin
//     if Cb_All.Checked then
//          SMDBGrid1.SelectAllClick(Sender)
//     else
//          SMDBGrid1.UnSelectAllClick(Sender);
        Table_List.first;
        while not Table_List.Eof do
        begin
            Table_List.Edit;
            if Cb_All.Checked=true then

            Table_List.FieldByName('state').AsString:='True'
            else
            Table_List.FieldByName('state').AsString:='False';

            Table_List.Post;
            Table_List.next;
        end;
        SMDBGrid1.RefreshData;


end;





function TForm_ResultVerification.CheckSampleTestName: Boolean;
var
Qry:TQuery;
begin
     Qry:=TQuery.Create(nil);
     with Qry do
     begin
          close;
          databasename:=gs_temppath;
          sql.Clear;
          sql.Add('select TestNameCode,Testname,count(TestNameCode)C from machinetest where state=''True''');
          sql.Add('group by TestNameCode,testname order by C desc');    //--order by count(TestNameCode) desc
          Open;
     end;
     if Qry.FieldByName('C').Asinteger>1 then
     begin
          MessageDlg(''+Qry.fieldbyname('TestName').asstring+'   Exist Multiple Time Please Check Single Item And Check Modify',mtWarning,[mbok],0);
          Cb_All.Checked:=false;
          Cb_AllClick(self);
          result:=true;
     end
     else
     result:=false;
     Qry.Free;
end;


procedure TForm_ResultVerification.CreateTemp;
begin
     gs_temppath:=ExtractFilePath(Application.ExeName);
     if FileExists(gs_temppath + '\machinetest.db') then
     begin
          With Table_List do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'machinetest.db';
               EmptyTable;
               Open;
          end;
     end;
     with Table_List do
     begin
          Close;
          TableName := 'machinetest.db';
          TableType := ttDefault;
          DatabaseName := gs_temppath;
          FieldDefs.Clear;
          FieldDefs.Add('TempId', ftInteger);
          FieldDefs.Add('PatientID', ftInteger);
          FieldDefs.Add('PtDetailID', ftInteger);
          FieldDefs.Add('TestNameId', ftInteger);
          FieldDefs.Add('TestId', ftInteger);
          FieldDefs.Add('patienttestid', ftInteger);
          FieldDefs.Add('TestDate', ftString, 10);
          FieldDefs.Add('Billno', ftString, 20);
          FieldDefs.Add('TestNameCode', ftString, 10);
          FieldDefs.Add('TestName', ftString, 50);
          FieldDefs.Add('LABTESTNAME', ftString, 50);
          FieldDefs.Add('RESULT', ftString, 50);
          FieldDefs.Add('Unit', ftString, 50);
          FieldDefs.Add('Refrange', ftString, 50);
          FieldDefs.Add('RefrangeLab', ftString, 50);
          FieldDefs.Add('Flag', ftString, 50);
          FieldDefs.Add('ResultDate', ftString, 50);
          FieldDefs.Add('ResultTime', ftString, 50);
          FieldDefs.Add('IsVerified', ftString,1);
          FieldDefs.Add('Extra', ftString,50);
          FieldDefs.Add('ExtraFinding', ftString,50);
          FieldDefs.Add('LamrDateTime', ftString,50);
          FieldDefs.Add('sampleno', ftString,50);
          FieldDefs.Add('State', ftBoolean);
          FieldDefs.Add('IsRepeated', ftstring,1);
          CreateTable;
     end;

end;

procedure TForm_ResultVerification.DBGrid1CellClick(Column: TColumn);
begin
     Try
          Query_LabFindingResult.Locate('PatientTestId;TestNameId', VarArrayOf
                 ([Query_MachineFindingsResult.FieldByName('PatientTestId').AsInteger, Query_MachineFindingsResult.FieldByName
                      ('LabTestNameId').AsInteger]), []);
     Except

     End;

end;

procedure TForm_ResultVerification.DBGrid2CellClick(Column: TColumn);
begin
     GetFindingResult;
end;

procedure TForm_ResultVerification.Edit_PatientNameChange(Sender: TObject);
begin
     Edit_PatientName.Text := StringReplace(Edit_PatientName.Text, '''', '''''', [rfReplaceAll]);
     with Query_PatientList do
     Begin
          IF trim(Edit_PatientName.Text) <> '' Then
          Begin
               Filter := 'PatientName =' + #39 + Edit_PatientName.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_ResultVerification.Edit_SampleNoChange(Sender: TObject);
begin
     Edit_SampleNo.Text := StringReplace(Edit_SampleNo.Text, '''', '''''', [rfReplaceAll]);
     with Query_PatientList do
     Begin
          IF trim(Edit_SampleNo.Text) <> '' Then
          Begin
               Filter := 'PatientIdstr =' + #39 + Edit_SampleNo.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_ResultVerification.Edit_SampleNoSearchChange(Sender: TObject);
begin
     Edit_SampleNoSearch.Text := StringReplace(Edit_SampleNoSearch.Text, '''', '''''', [rfReplaceAll]);
     with Query_PatientList do
     Begin
          IF trim(Edit_SampleNoSearch.Text) <> '' Then
          Begin
               Filter := 'SampleNo =' + #39 + Edit_SampleNoSearch.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_ResultVerification.Edit_TestNameChange(Sender: TObject);
begin
     Edit_TestName.Text := StringReplace(Edit_TestName.Text, '''', '''''', [rfReplaceAll]);
     with Table_List do
     Begin
          IF trim(Edit_TestName.Text) <> '' Then
          Begin
               Filter := 'TestName =' + #39 + Edit_TestName.Text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_ResultVerification.FormShow(Sender: TObject);
begin
     //Dex_From.SystemOfDate := gi_datesystem;
     gi_datesystem:=1;
     Dex_From.text := TodaysDate;
     ChangeCaptions(SPB_From, gi_datesystem);

     //Dex_To.SystemOfDate := gi_datesystem;
     gi_datesystem:=1;
     Dex_To.text := Dex_From.text;
     ChangeCaptions(SPB_To, gi_datesystem);
     CreateTemp;
end;

procedure TForm_ResultVerification.GetFindingResult;
var
Qry:ToraQuery;
li_ptdetailid:integer;
refreshDate:string;
refreshdays:Integer;
refresh_date:TDateEditX;
Begin

    if gi_datesystem=1 then
     begin
       try
        refresh_date:=TDateEditX.Create(nil);
        refresh_date.ADDateAsText:=TodaysDate;
        refreshdays:=(refresh_date.VSDateAsDays-strtoint(Se_CLDays.Text));
        refresh_date.VSDateAsDays:=refreshdays;
        refreshDate:= refresh_date.ADDateAsText;
       finally
         refresh_date.Free;
       end;
     end;

     li_ptdetailid:=0;
     Qry:=ToraQuery.Create(nil);
     if Trim(Query_PatientList.FieldByName('SampleNo').AsString) <> '' then
     Begin
          with Query_MachineFindingsResult do
          begin
               Close;
               Session:=Dm_Hospital.DB;
               SQL.Clear;
               SQL.Add('select replace(replace(mrresultdate||mrresulttime,''/'',''''),'':'','''')Machinedatetime,vl.* from VW_LABMACHINERESULT vl where trim(vl.MrSampleNo)=' + #39 + Query_PatientList.FieldByName('SampleNo')
                      .AsString + #39);
               //SQL.Add('AND LABTESTNAMEID IN(SELECT TESTNAMEID FROM   PATIENTTEST WHERE MANUALSAMPLENO=' + #39 + Query_PatientList.FieldByName('ManualSampleNo').ASSTRING+#39+')');
               SQL.Add('and patienttestid>0');
               sql.Add('and mrresultdate>=getengdatefromnep('+(quotedstr(refreshDate))+')');
               sql.Add('order by mrtestnamecode'); //,vl.PTDETAILID');

               {SQL.Add ('select distinct replace(replace(mrresultdate||mrresulttime,''/'',''''),'':'','''')Machinedatetime,mrsampleno,mrsequenceno,mrtestnameid,mrtestnamecode,mrtestname,');
               SQL.Add(' mrresult,mrunit,mrreferencerange,mrflag,labtestnameid,patienttestid,ptdetailid from VW_LABMACHINERESULT vl  where trim(vl.MrSampleNo)=' + #39 + Query_PatientList.FieldByName('SampleNo').AsString + #39);
               SQL.add(' and patienttestid>0');
               SQL.add(' order by mrtestnamecode');}

               //sql.savetofile('c:\machinefind.txt');
               Open;
          end;
          with Query_LabFindingResult do
          begin
               Close;
               Session:=Dm_Hospital.DB;
               SQL.Clear;
               SQL.Add('Select * From VW_LabFindingResult where trim(labno)=' + #39 + Query_PatientList.FieldByName('SampleNo').AsString + #39);
               SQL.Add('and patientid='+IntToSTr(Query_PatientList.FieldByName('PatientId').asinteger));
               sql.Add('and sampledate>=('+(quotedstr(refreshDate))+')');
               //sql.savetofile('c:\labfind.txt');
               Open;
          end;
     End
     Else
     Begin
          with Query_MachineFindingsResult do
          begin
               Close;
               Session:=Dm_Hospital.DB;
               SQL.Clear;
               SQL.Add('Select * From VW_LabMachineResult where MRSampleNo=' + #39 + Query_PatientList.FieldByName('SampleNo')
                      .AsString + #39);
               Open;
          end;
     End;
     with Table_List do
     begin
          Close;
          DatabaseName:=gs_temppath;
          EmptyTable;
          Open;
          while not Query_MachineFindingsResult.Eof do
          begin
               Append;
               Table_List.FieldByName('tempid').AsInteger:=GetKeyValuetemp('machinetest','tempid',gs_temppath);
               Table_List.FieldByName('PatientID').AsString:=Query_PatientList.FieldByName('PATIENTID').AsString;
               Table_List.FieldByName('TestId').AsString:=Query_MachineFindingsResult.FieldByName('TestId').AsString;
               Table_List.FieldByName('patienttestid').AsString:=Query_MachineFindingsResult.FieldByName('patienttestid').AsString;
               Table_List.FieldByName('TestNameCode').AsString:=Query_MachineFindingsResult.FieldByName('MRTESTNAMECODE').AsString;
               if (query_PatientList.FieldByName('age').Asinteger>14) and (query_PatientList.FieldByName('agetype').AsString='Year') then
               begin
                    with Qry do
                    begin
                        Close;
                       Session:=Dm_Hospital.DB;
                        SQL.Clear;
                        if query_PatientList.FieldByName('gender').AsString='Male' then
                              SQL.Add('select lrangeg||''-''||hrangeg as refrange from test where testid='+inttostr(Query_MachineFindingsResult.FieldByName('TestId').asinteger))
                        else
                        SQL.Add('select lrangef||''-''||hrangef as refrange from test where testid='+inttostr(Query_MachineFindingsResult.FieldByName('TestId').asinteger));
                        Open;
                    end;

               end
               else
               begin
                    with Qry do
                    begin
                        Close;
                        Session:=Dm_Hospital.DB;
                        SQL.Clear;
                        SQL.Add('select lrangec||''-''||hrangec as refrange from test where testid='+inttostr(Query_MachineFindingsResult.FieldByName('TestId').asinteger));
                        Open;
                    end;
               end;
               Table_List.FieldByName('refrangelab').AsString:=Qry.FieldByName('refrange').AsString;

               with Qry do
               begin
                    Close;
                    Session:=Dm_Hospital.DB;
                    SQL.Clear;
                    SQL.Add('select count(mrtestnamecode)C from VW_LABMACHINERESULT  where MRSampleNo=' + #39 + Query_PatientList.FieldByName('SampleNo')
                      .AsString + #39+' and mrtestnamecode='+#39+Query_MachineFindingsResult.FieldByName('MRTESTNAMECODE').AsString+#39);
                    sql.add('and patienttestid>0');
  //                  SQL.Add('AND LABTESTNAMEID IN(SELECT TESTNAMEID FROM   PATIENTTEST WHERE MANUALSAMPLENO=' + #39 + Query_PatientList.FieldByName('ManualSampleNo').ASSTRING+#39+')');
                    //sql.savetofile('tt.txt');
                    Open;
               end;
               if Qry.FieldByName('C').AsInteger>1 then
               begin
                    Table_List.FieldByName('IsRepeated').AsString:='Y';
                    if Query_MachineFindingsResult.FieldByName('PTDETAILID').asinteger>0 then
                    begin
                         Table_List.FieldByName('PtDetailID').AsString:=Query_MachineFindingsResult.FieldByName('PTDETAILID').AsString;
                         li_ptdetailid:=Query_MachineFindingsResult.FieldByName('PTDETAILID').asinteger;
                    end
                    else
                    Table_List.FieldByName('PtDetailID').AsString:=inttostr(li_ptdetailid);
               end
               else
               begin
                    Table_List.FieldByName('IsRepeated').AsString:='N';
                    Table_List.FieldByName('PtDetailID').AsString:=Query_MachineFindingsResult.FieldByName('PTDETAILID').AsString;
                    li_ptdetailid:=0;

               end;
               Table_List.FieldByName('TestNameCode').AsString:=Query_MachineFindingsResult.FieldByName('MRTESTNAMECODE').AsString;
               Table_List.FieldByName('TestnameId').AsString:=Query_MachineFindingsResult.FieldByName('LABTESTNAMEID').AsString;

               Table_List.FieldByName('TestNameCode').AsString:=Query_MachineFindingsResult.FieldByName('MRTESTNAMECODE').AsString;
               Table_List.FieldByName('TestName').AsString:=Query_MachineFindingsResult.FieldByName('MRTESTNAME').AsString;
               Table_List.FieldByName('LABTESTNAME').AsString:=Query_MachineFindingsResult.FieldByName('LABTESTNAME').AsString;
               Table_List.FieldByName('Result').AsString:=Query_MachineFindingsResult.FieldByName('MRRESULT').AsString;
               Table_List.FieldByName('Unit').AsString:=Query_MachineFindingsResult.FieldByName('MRUNIT').AsString;
               Table_List.FieldByName('Refrange').AsString:=Query_MachineFindingsResult.FieldByName('MRREFERENCERANGE').AsString;
               Table_List.FieldByName('Flag').AsString:=Query_MachineFindingsResult.FieldByName('MRFLAG').AsString;
               Table_List.FieldByName('ResultDate').AsString:=Query_MachineFindingsResult.FieldByName('MRRESULTDATE').AsString;
               Table_List.FieldByName('ResultTime').AsString:=Query_MachineFindingsResult.FieldByName('MRRESULTTIME').AsString;
               if Query_MachineFindingsResult.FieldByName('PTDETAILID').AsInteger>0 then
               Table_List.FieldByName('IsVerified').AsString:='Y'
               else
               Table_List.FieldByName('IsVerified').AsString:='N';
               Table_List.FieldByName('State').AsBoolean:=false;
               Table_List.FieldByName('LamrDateTime').AsString:=Query_MachineFindingsResult.FieldByName('Machinedatetime').AsString;
               Table_List.FieldByName('sampleno').AsString:=Query_MachineFindingsResult.FieldByName('MRSAMPLENO').AsString;
               Table_List.FieldByName('Billno').AsString:=Query_PatientList.FieldByName('billno').AsString;
               Post;

               Query_MachineFindingsResult.Next;
          end;
     end;
        qry.Free;
End;

function TForm_ResultVerification.GetFromDateBySubNoOfDaysIntegration(
  DateControl: TDateEditX; NoOfDays: integer): String;
Begin
     IF gi_datesystem = 1 Then
          Result := ADTOVSS(formatDateTime('YYYY/MM/DD',
                    DateControl.ADDateAsDate - NoOfDays))
     Else // IF gi_DateSystem=1 Then
          Result := formatDateTime
            ('YYYY/MM/DD', DateControl.ADDateAsDate - NoOfDays);
End;

procedure TForm_ResultVerification.SavePatientTestDetail(PatientTestId,TestNameID, PatientId, TestId: Integer;
     TestNameCode, Finding, ResultUnit , RefRange, Extra, ExtraFinding: String);
Var
     Qry: ToraQuery;
Begin
     Qry := ToraQuery.Create(nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.DB;
          SQL.Clear;
          Pi_PtDetailId:=GetNewLongIntKeyValue('PatientTestDetail','PTDetailID');
          SQL.Add(' Insert Into PatientTestDetail(PTDetailID,TestNameID,PatientTestID,PatientId');
          SQL.Add(' ,TestId,Finding,Unit,RefRange,TestNameCode,Extra,ExtraFinding,verifiedby,IsMachineREsult)');
          SQL.Add(' Values('+IntToStr(Pi_PtDetailId));
          SQL.Add(' ,'+IntToStr(TestNameID)+','+IntToStr(PatientTestId)+','+IntToStr(PatientId)+','+IntToStr(TestId));
          SQL.Add(' ,'+#39+Finding+#39+','+#39+ResultUnit+#39);
          SQL.Add(' ,'+#39+RefRange+#39+','+#39+TestNameCode+#39+','+#39+Extra+#39+','+#39+ExtraFinding+#39+','+#39+inttostr(gi_userid)+#39+',''Y'')');
          //sql.savetofile('tt.txt');
          ExecSQL;
     end;
     Qry.Free;
End;

procedure TForm_ResultVerification.SMDBGrid1CellClick(Column: TColumn);
var
Qry:TQuery;
begin
     Table_List.Edit;
     if Table_List.FieldByName('State').AsString='False' then
          Table_List.FieldByName('State').AsString:='True'
     else
          Table_List.FieldByName('State').AsString:='False';
     SMDBGrid1.RefreshData;
end;

procedure TForm_ResultVerification.SMDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     IF (Table_List.FieldByName('ptdetailid').asinteger>0) THEN //or (QueryRegistration.FieldByName('EARnoofvisit').asinteger>0)  Then
     Begin
          SMDBGrid1.Canvas.Font.Color:=clGreen;
          SMDBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
     End;
     IF (Table_List.FieldByName('Result').asstring='REJECT') then
     begin
          SMDBGrid1.Canvas.Font.Color:=clGray;
          SMDBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
     end
     else IF (Table_List.FieldByName('isrepeated').asstring='Y') then
     begin
          SMDBGrid1.Canvas.Font.Color:=clFuchsia;
          SMDBGrid1.DefaultDrawDataCell(rect,Column.Field,State);
     end;

end;

end.
