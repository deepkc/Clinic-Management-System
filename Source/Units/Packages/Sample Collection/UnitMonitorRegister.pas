unit UnitMonitorRegister;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, OleCtrls, ServerDate,
  DateEditXControl_TLB, DBTables, Db, MemDS, DBAccess, Ora;

type
  TFormMonitorRegister = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateEditXFromDate: TDateEditX;
    DateEditXToDate: TDateEditX;
    BitBtnRefresh: TBitBtn;
    DBGrid1: TDBGrid;
    DSSample: TDataSource;
    QrySample: TQuery;
    TableSampleList: TTable;
    DBGrid2: TDBGrid;
    DSNameList: TDataSource;
    QryNameList: TQuery;
    QrySampleSno: TIntegerField;
    QrySampleTestNameCode: TStringField;
    QrySampleTestName: TStringField;
    QrySampleNo: TIntegerField;
    QrySampleSampleNo: TIntegerField;
    QrySampleReport: TIntegerField;
    QrySampleRemaining: TIntegerField;
    Table1: TTable;
    QryProcess: TOraQuery;
    QryAniD: TOraQuery;
    Shape3: TShape;
    Label37: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Shape2: TShape;
    Panel_middle: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRefreshClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure RGReportClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    procedure CreateSampleRegister;
    procedure GetMeOtherParameters(TestNameCode:String);
    { Private declarations }
  public
    { Public declarations }
    ls_ReportType,ps_BillNo,ps_Remaining:String;
    pi_SampleNo,pi_Report,pi_No:Integer;
  end;

var
  FormMonitorRegister: TFormMonitorRegister;

implementation

uses fxn,DM;

{$R *.DFM}

procedure TFormMonitorRegister.CreateSampleRegister;
begin
     If FileExists(gs_temppath + '\MonitorService.db') then
     begin
          With TableSampleList do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'MonitorService.db';
               DeleteTable;
          end;
     end;

     With TableSampleList Do
     Begin
          Close;
          DataBaseName:=gs_TempPath;
          TableName:='MonitorService.db';
          TableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('Sno',ftInteger);
          Fielddefs.add('TestNameCode',ftString,15);
          Fielddefs.add('TestName',ftString,300);
          Fielddefs.add('No',ftInteger);
          Fielddefs.add('SampleNo',ftInteger);
          Fielddefs.add('Report',ftInteger);
          Fielddefs.add('Remaining',ftInteger);
          CreateTable;
     End;


     If FileExists(gs_temppath + '\NameList.db') then
     begin
          With Table1 do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'NameList.db';
               DeleteTable;
          end;
     end;

     With Table1 Do
     Begin
          Close;
          DataBaseName:=gs_TempPath;
          TableName:='NameList.db';
          TableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('Sno',ftInteger);
          Fielddefs.add('SampleID',ftString,11);
          Fielddefs.add('PatientID',ftInteger);
          Fielddefs.add('SampleDateTime',ftString,30);
          Fielddefs.add('PatientName',ftString,70);
          Fielddefs.add('Age',ftString,50);
          Fielddefs.add('Address',ftString,70);
          Fielddefs.add('PhoneNo',ftString,30);
          Fielddefs.add('Status',ftString,10);
          Fielddefs.add('UserName',ftString,30);
          Fielddefs.add('testprogressstatus',ftString,2);
          CreateTable;
     End;
end;

procedure TFormMonitorRegister.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TableSampleList.Free;
Table1.Free;
end;

procedure TFormMonitorRegister.FormCreate(Sender: TObject);
begin
     CreateQuery;

     DateEditXFromDate.SystemOfDate:=gi_DateSystem;
     DateEditXToDate.SystemOfDate:=gi_DateSystem;
     DateEditXFromDate.text:=gs_From;
     DateEditXToDate.Text:=gs_to;

     CreateSampleRegister;
     BitBtnRefreshClick(Sender);
end;

procedure TFormMonitorRegister.FormDestroy(Sender: TObject);
begin
  TableSampleList.Free;
  Table1.Free;
end;

procedure TFormMonitorRegister.BitBtnRefreshClick(Sender: TObject);
Var  PatientID,I:Integer;
begin
     If DateEditXFromDate.Text>DateEditXToDate.Text Then
     Begin
          If MessageDlg('Invalid Date Range.',mtConfirmation,[mbYes,mbNo],0)=mrNo Then
          DateEditXToDate.SetFocus;
          Exit;
     End;
     DBGrid2.DataSource.DataSet.Active:=false;
     With QryAniD Do
     Begin
          Close;
          Session := DM_Hospital.DB;
          With Sql Do
          Begin
               Clear;
               {Add('SELECT PT.TestNameCode,');
               Add('TN.Tena_TestName,');
               Add(' Count(PT.TestNameCode) No');
               Add(' FROM PatientTest PT,Hs_Tena_Testname TN');
               Add(' WHERE  (PT.TestNameID = TN.Tena_TestNameID(+)) AND'); }

               {If gi_HospitalID=18 Then
               Begin
                    Add(' (PT.SampleDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                    Add(' AND  (PT.SampleDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
               End
               Else
               Begin}
                   // Add(' (PT.TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                   // Add(' AND  (PT.TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
               //End;
              // Add(' AND  (TN.LineEdit=''T'')');
              // Add(' Group By PT.TestNameCode,TN.TestName');
              // Add(' Order By TN.TestName');
               //SaveToFile('Sql.txt');
              if gi_compileValue<>3 then
              begin
                   Add('select testnamecode,tena_testname,sum(No)No,sum(sampleid)sampleno,sum(report)report,(sum(sampleid)-sum(report))remain from (');
                   Add('select pt.Testnamecode,count(pt.testprogressstatus)No,tn.Tena_Testname, 0 as sampleid ,0 as report');
                   Add('from patienttest pt,hs_tena_testname tn');
                   Add('where testprogressstatus >=2');
                   Add('and tn.tena_testnamecode=pt.testnamecode');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnamecode,tn.tena_testname');
                   Add('union ');
                   Add('select pt.Testnamecode,0 as No,tn.tena_testname,count(pt.testprogressstatus)Sampleid ,0 as report');
                   Add('from patienttest pt,Hs_Tena_Testname tn');
                   Add('where testprogressstatus >=3');
                   Add('and tn.tena_testnamecode=pt.testnamecode');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnamecode,tn.tena_testname');
                   Add('union');
                   Add('select pt.Testnamecode,0 as No,tn.tena_testname,0 as Sampleid,count(pt.testprogressstatus)report');
                   Add('from patienttest pt,Hs_Tena_Testname tn');
                   Add('where testprogressstatus >=4');
                   Add('and tn.Tena_Testnamecode=pt.testnamecode');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnamecode,tn.Tena_Testname');
                   Add(')group by testnamecode,Tena_Testname');
                   //SaveToFile('c:\Sql.txt');
              end
              else
              begin
                   Add('select testnameid,testname,sum(No)No,sum(sampleid)sampleno,sum(report)report,(sum(sampleid)-sum(report))remain from (');
                   Add('select pt.Testnameid,count(pt.testprogressstatus)No,tn.testname, 0 as sampleid ,0 as report');
                   Add('from patienttest pt,testname tn');
                   Add('where testprogressstatus >=2');
                   Add('and tn.testnameid=pt.testnameid');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnameid,tn.testname');
                   Add('union ');
                   Add('select pt.Testnameid,0 as No,tn.testname,count(pt.testprogressstatus)Sampleid ,0 as report');
                   Add('from patienttest pt,testname tn');
                   Add('where testprogressstatus >=3');
                   Add('and tn.testnameid=pt.testnameid');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnameid,tn.testname');
                   Add('union');
                   Add('select pt.Testnameid,0 as No,tn.testname,0 as Sampleid,count(pt.testprogressstatus)report');
                   Add('from patienttest pt,testname tn');
                   Add('where testprogressstatus >=4');
                   Add('and tn.testnameid=pt.testnameid');
                   Add('and testdate between '+quotedstr(DateEditXFromDate.text)+' and '+quotedstr(DateEditXToDate.text)) ;
                   Add('and pt.depid in ('+gs_UserDepId+')');
                   Add('group by pt.testnameid,tn.testname');
                   Add(')group by testnameid,testname');
                   //SaveToFile('c:\Sql.txt');
              end;
          End;
          Open;
          First;
          I:=1;
          With TableSampleList Do
          Begin
               Close;
               EmptyTable;
               Open;
          End;
          PatientID:=-1;
          While Not Eof Do
          Begin
               TableSampleList.Append;
               if gi_compileValue<>3 then
                  TableSampleList.FieldByName('TestNameCode').AsString:=FieldByName('TestNameCode').AsString
               else
                 TableSampleList.FieldByName('TestNameCode').AsString:=FieldByName('TestNameid').AsString;
               TableSampleList.FieldByName('TestName').AsString:=FieldByName('Tena_TestName').AsString;
               TableSampleList.FieldByName('Sno').AsInteger:=I;
            //   GetMeOtherParameters(FieldByName('TestNameCode').AsString);
               TableSampleList.FieldByName('No').AsInteger:=FieldByName('No').AsInteger;
               TableSampleList.FieldByName('SampleNo').AsInteger:=FieldByName('Sampleno').Asinteger;//pi_SampleNo;
               TableSampleList.FieldByName('Report').AsInteger:=FieldByName('report').Asinteger;//pi_Report;
               TableSampleList.FieldByName('Remaining').AsInteger:=FieldByName('remain').Asinteger;//pi_SampleNo-pi_Report;
               TableSampleList.Post;
               I:=I+1;
               Next;
          End;
     End;

     With QrySample Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          Open;
     End;
end;

procedure TFormMonitorRegister.GetMeOtherParameters(TestNameCode:String);
begin
     With QryProcess Do
     Begin
          Close;
          Session := DM_Hospital.DB;
          With Sql Do
          Begin
               Clear;
               Add('Select Count(TestNameCode) No From PatientTest');
               Add(' Where TestNameCode='+Chr(39)+TestNameCode+Chr(39));
               Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
               Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
               Add(' And SampleID>0');
          End;
          Open;
          pi_SampleNo:=FieldByName('No').AsInteger;

          Close;
          With Sql Do
          Begin
               Clear;
               Add('Select Count(TestNameCode) No From PatientTest');
               Add(' Where TestNameCode='+Chr(39)+TestNameCode+Chr(39));
               Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
               Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
               Add(' And WorkingStatus Not In (''REG'',''InPatient'')');
          End;
          Open;
          pi_Report:=FieldByName('No').AsInteger;
     End;
end;

procedure TFormMonitorRegister.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=VK_F5 Then
        BitBtnRefreshClick(Sender)
     else if key=VK_ESCAPE then
        close;
end;

procedure TFormMonitorRegister.BitBtn1Click(Sender: TObject);
begin
     If MessageDlg('Are you sure? sending to Excel.',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
     //SendToExcel(Nil,DBGrid1,'Lab Services',DateEditXFromDate.Text,'Lab Services',gs_HosName,gs_HosAddress);
end;

procedure TFormMonitorRegister.RGReportClick(Sender: TObject);
begin
     BitBtnRefreshClick(Sender);
end;

procedure TFormMonitorRegister.DBGrid1CellClick(Column: TColumn);
var
  I:Integer;
begin
     If QrySample.FieldByName('TestNameCode').AsString='' Then Exit;

     With Table1 Do
     Begin
          Close;
          EmptyTable;
          Open;
     End;


     if gi_compileValue<>3 then
     begin
         With QryAniD Do
         Begin
              Close;
              Session := DM_Hospital.DB;
              With Sql Do
              Begin
                   Clear;
                   Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,pt.workingstatus,');
                   Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
                   Add('Nls_InitCap((Select Pama_FName||'' ''||Pama_LName From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID)) PatientName,');
                   Add('Nls_InitCap((Select Pama_Age||''/''||SubStr(Pama_Gender,0,1) ||''  ''||Pama_Address From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID)) Age,');
                   Add('(Select Pama_PhoneNo From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
                   Add(' FROM PatientTest PT,samplecollection sc');
                   Add(' WHERE PT.TestNameCode='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
                   Add('And sc.patienttestid=pt.patienttestid');
                   Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                   Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
                   Add(' Order By SampleID Asc');
                   //SaveToFile('C:\Sql.txt');
                   //exit;
              End;
              Open;
              First;
              I:=1;
              While Not Eof Do
              Begin
                   Table1.Append;
                   Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
                   Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
                   Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
                   Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
                   Table1.FieldByName('Sno').AsInteger:=I;
                   Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
                   //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
                   Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
                   Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
                   Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
                   Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
                   Table1.Post;

                   I:=I+1;
                   QryAniD.Next;
              End;
         End;
     end
     else
     begin
         With QryAniD Do
         Begin
              Close;
              Session := DM_Hospital.DB;
              With Sql Do
              Begin
                   Clear;
                   Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,');
                   Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
                   Add('Nls_InitCap((Select FName||'' ''||LName From PatientMain Where PatientID=PT.PatientID)) PatientName,');
                   Add('Nls_InitCap((Select Age||''/''||SubStr(Gender,0,1) ||''  ''||Address From PatientMain Where PatientID=PT.PatientID)) Age,');
                   Add('(Select PhoneNo||'' ''||PhoneNo From PatientMain Where PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
                   Add(' FROM PatientTest PT,samplecollection sc');
                   Add(' WHERE PT.TestNameid='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
                   Add('And sc.patienttestid=pt.patienttestid');
                   Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                   Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
                   Add(' Order By SampleID Asc');
                   //SaveToFile('Sql.txt');
                   //exit;
              End;
              Open;
              First;
              I:=1;
              While Not Eof Do
              Begin
                   Table1.Append;
                   Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
                   Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
                   Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
                   Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
                   Table1.FieldByName('Sno').AsInteger:=I;
                   Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
                   //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
                   Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
                   //Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
                   Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
                   Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
                   Table1.Post;

                   I:=I+1;
                   QryAniD.Next;
              End;
         End;
     end;

     With QryNameList Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          Open;
     End;
end;

procedure TFormMonitorRegister.DBGrid1DblClick(Sender: TObject);
var
  I:Integer;
begin
     If QrySample.FieldByName('TestNameCode').AsString='' Then Exit;

     With Table1 Do
     Begin
          Close;
          EmptyTable;
          Open;
     End;

     if gi_compileValue<>3 then
     begin
         With QryAniD Do
         Begin
              Close;
              Session := DM_Hospital.DB;
              With Sql Do
              Begin
                   Clear;
                   Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,');
                   Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
                   Add('Nls_InitCap((Select Pama_FName||'' ''||Pama_LName From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID)) PatientName,');
                   Add('Nls_InitCap((Select Pama_Age||''/''||SubStr(Pama_Gender,0,1) ||''  ''||Pama_Address From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID)) Age,');
                   Add('(Select Pama_PhoneNo From Hs_Pama_PatientMain Where Pama_PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
                   Add(' FROM PatientTest PT,samplecollection sc');
                   Add(' WHERE PT.TestNameCode='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
                   Add('And sc.patienttestid=pt.patienttestid');
                   Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                   Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
                   Add(' Order By SampleID Asc');
                   //SaveToFile('C:\sSql.txt');
                   //exit;
              End;
              Open;
              First;
              I:=1;
              While Not Eof Do
              Begin
                   Table1.Append;
                   Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
                   Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
                   Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
                   Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
                   Table1.FieldByName('Sno').AsInteger:=I;
                   Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
                   //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
                   Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
                   //Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
                   Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
                   Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
                   Table1.Post;

                   I:=I+1;
                   QryAniD.Next;
              End;
         End;
     end
     else
     begin
         With QryAniD Do
         Begin
              Close;
              Session := DM_Hospital.DB;
              With Sql Do
              Begin
                   Clear;
                   Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,');
                   Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
                   Add('Nls_InitCap((Select FName||'' ''||LName From PatientMain Where PatientID=PT.PatientID)) PatientName,');
                   Add('Nls_InitCap((Select Age||''/''||SubStr(Gender,0,1) ||''  ''||Address From PatientMain Where PatientID=PT.PatientID)) Age,');
                   Add('(Select PhoneNo||'' ''||PhoneNo From PatientMain Where PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
                   Add(' FROM PatientTest PT,samplecollection sc');
                   Add(' WHERE PT.TestNameid='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
                   Add('And sc.patienttestid=pt.patienttestid');
                   Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
                   Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
                   Add(' Order By SampleID Asc');
                   //SaveToFile('Sql.txt');
                   //exit;
              End;
              Open;
              First;
              I:=1;
              While Not Eof Do
              Begin
                   Table1.Append;
                   Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
                   Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
                   Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
                   Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
                   Table1.FieldByName('Sno').AsInteger:=I;
                   Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
                   //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
                   Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
                   //Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
                   Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
                   Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
                   Table1.Post;

                   I:=I+1;
                   QryAniD.Next;
              End;
         End;
     end;

     With QryNameList Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          Open;
     End;

end;

procedure TFormMonitorRegister.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key=#13 Then DBGrid1DblClick(Sender);
end;

procedure TFormMonitorRegister.DBGrid1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
I:Integer;
begin
//     If QrySample.FieldByName('TestNameCode').AsString='' Then Exit;
//
//     With Table1 Do
//     Begin
//          Close;
//          EmptyTable;
//          Open;
//     End;
//
//     With QryAniD Do
//     Begin
//          Close;
//          Session := DM_Hospital.DB;
//          With Sql Do
//          Begin
//               Clear;
//               Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,PT.WorkingStatus,');
//               Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
//               Add('Nls_InitCap((Select FName||'' ''||LName From PatientMain Where PatientID=PT.PatientID)) PatientName,');
//               Add('Nls_InitCap((Select Age||''/''||SubStr(Gender,0,1) ||''  ''||PAddress From PatientMain Where PatientID=PT.PatientID)) Age,');
//               Add('(Select PhoneNo||'' ''||RPhoneNo From PatientMain Where PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
//               Add(' FROM PatientTest PT,samplecollection sc');
//               Add(' WHERE PT.TestNameCode='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
//               Add('And sc.patienttestid=pt.patienttestid');
//               Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
//               Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
//               Add(' Order By SampleID Asc');
//               //SaveToFile('Sql.txt');
//               //exit;
//          End;
//          Open;
//          First;
//          I:=1;
//          While Not Eof Do
//          Begin
//               Table1.Append;
//               Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
//               Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
//               Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
//               Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
//               Table1.FieldByName('Sno').AsInteger:=I;
//               Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
//               //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
//               Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
//               Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
//               Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
//               Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
//               Table1.Post;
//
//               I:=I+1;
//               QryAniD.Next;
//          End;
//     End;
//
//     With QryNameList Do
//     Begin
//          Close;
//          DatabaseName:=gs_TempPath;
//          Open;
//     End;
end;

procedure TFormMonitorRegister.DBGrid1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
I:Integer;
begin
//     If QrySample.FieldByName('TestNameCode').AsString='' Then Exit;
//
//     With Table1 Do
//     Begin
//          Close;
//          EmptyTable;
//          Open;
//     End;
//
//     With QryAniD Do
//     Begin
//          Close;
//          Session := DM_Hospital.DB;
//          With Sql Do
//          Begin
//               Clear;
//               Add('SELECT PT.PatientID,(case when sc.undostatus=1 then '''' else sc.sampleNo end) as sampleid,(case when sc.undostatus=1 then '''' else sc.SampletakenDate||'' ''||sc.SampletakenTime end) As SampleDateTime,PT.WorkingStatus,');
//               Add('(Select Nls_InitCap(UserName) From lab_UserMain Where UserID=sc.SampletakenBy) UserName,');
//               Add('Nls_InitCap((Select FName||'' ''||LName From PatientMain Where PatientID=PT.PatientID)) PatientName,');
//               Add('Nls_InitCap((Select Age||''/''||SubStr(Gender,0,1) ||''  ''||PAddress From PatientMain Where PatientID=PT.PatientID)) Age,');
//               Add('(Select PhoneNo||'' ''||RPhoneNo From PatientMain Where PatientID=PT.PatientID) PhoneNo,Pt.testprogressstatus');
//               Add(' FROM PatientTest PT,samplecollection sc');
//               Add(' WHERE PT.TestNameCode='+Chr(39)+QrySample.FieldByName('TestNameCode').AsString+Chr(39));
//               Add('And sc.patienttestid=pt.patienttestid');
//               Add(' And (TestDate >='+Chr(39)+DateEditXFromDate.Text+Chr(39)+')');
//               Add(' And (TestDate <='+Chr(39)+DateEditXToDate.Text+Chr(39)+')');
//               Add(' Order By SampleID Asc');
//               //SaveToFile('Sql.txt');
//               //exit;
//          End;
//          Open;
//          First;
//          I:=1;
//          While Not Eof Do
//          Begin
//               Table1.Append;
//               Table1.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
//               Table1.FieldByName('SampleID').Asstring:=FieldByName('SampleID').AsString;
//               Table1.FieldByName('PatientName').AsString:=FieldByName('PatientName').AsString;
//               Table1.FieldByName('SampleDateTime').AsString:=FieldByName('SampleDateTime').AsString;
//               Table1.FieldByName('Sno').AsInteger:=I;
//               Table1.FieldByName('Age').AsString:=FieldByName('Age').AsString;
//               //Table1.FieldByName('Address').AsString:=FieldByName('Address').AsString;
//               Table1.FieldByName('PhoneNo').AsString:=FieldByName('PhoneNo').AsString;
//               Table1.FieldByName('Status').AsString:=FieldByName('WorkingStatus').AsString;
//               Table1.FieldByName('UserName').AsString:=FieldByName('UserName').AsString;
//               Table1.FieldByName('Testprogressstatus').AsString:=FieldByName('Testprogressstatus').AsString;
//               Table1.Post;
//
//               I:=I+1;
//               QryAniD.Next;
//          End;
//     End;
//
//     With QryNameList Do
//     Begin
//          Close;
//          DatabaseName:=gs_TempPath;
//          Open;
//     End;
end;

procedure TFormMonitorRegister.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if QryAniD.RecordCount>0 then
 begin
     With DBGrid2 Do
     Begin
          IF ((QryNameList.FieldByName('testprogressstatus').asinteger = 4 ) or
              (QryNameList.FieldByName('testprogressstatus').asinteger = 5 )) Then
          Begin
               Canvas.Font.Color:=clRed;
              // Canvas.Pen.Color:=Clblue;
               DefaultDrawDataCell(rect,Column.Field,State);
          End
          Else IF QryNameList.FieldByName('testprogressstatus').asInteger = 6 Then
          Begin
               Canvas.Font.Color:=clGreen;
               DefaultDrawDataCell(rect,Column.Field,State);
          End
          Else If QryNameList.FieldByName('testprogressstatus').asinteger < 4 then
          Begin
               Canvas.Font.Color:=ClBlack;
              // Canvas.Pen.Color:=Clblue;
               //Canvas.Pen.Color:=ClBlack;
               DefaultDrawDataCell(rect,Column.Field,State);
          End;
     End;
 end;
end;

procedure TFormMonitorRegister.DBGrid2DblClick(Sender: TObject);
begin
     { If QryNameList.FieldByName('SampleID').AsString='' Then
     Begin
          MessageDlg('Sorry!!! No Data Exist?',mtWarning,[mbOK],0);
          Exit;
     End;

     If QryNameList.FieldByName('SampleID').AsString='0' Then
     Begin
          MessageDlg('Sorry!!! Sample Is Not Collected?',mtWarning,[mbOK],0);
          Exit;
     End;}
    { With FormPathologyMain Do
     Begin
          RBSearchBy.ItemIndex:=1;
          EditSerch.Text:=QryNameList.FieldByName('SampleID').AsString;
          BitBtnRefClick(Sender);
     End;  }
 //    Close;
end;

end.
