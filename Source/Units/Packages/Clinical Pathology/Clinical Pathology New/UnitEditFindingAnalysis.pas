unit UnitEditFindingAnalysis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBCtrls, StdCtrls, ExtCtrls, Buttons, Grids, DBGrids,
  ComCtrls,Variants;

type
  TFormEditReportFindingAnalysis = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBoxTestName: TDBLookupComboBox;
    DBLookupComboBoxTestType: TDBLookupComboBox;
    DBLookupComboBoxTitle: TDBLookupComboBox;
    QueryTestName: TQuery;
    DSTestName: TDataSource;
    QueryTestType: TQuery;
    DSTestType: TDataSource;
    panel: TPanel;
    TableTestList: TTable;
    TableHead: TTable;
    QueryProcess: TQuery;
    QueryTempData: TQuery;
    DSTempData: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    QueryListing: TQuery;
    DSListing: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    EditResult: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    StatusBar1: TStatusBar;
    Edit3: TEdit;
    Label5: TLabel;
    LblTotalNo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxTestNameClick(Sender: TObject);
    procedure createtemptable;
    procedure createtablehead;
    procedure DBLookupComboBoxTestTypeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
   
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditResultKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditReportFindingAnalysis: TFormEditReportFindingAnalysis;

implementation

uses Fxn;

{$R *.DFM}

procedure TFormEditReportFindingAnalysis.FormShow(Sender: TObject);
begin
     With QueryTestName Do
     Begin
          Close;
          Sql[3]:='And DepID In(Select Distinct DepID From UserAccessibleDepartment Where UserID='+IntToStr(gi_UserId)+')';
          Open;
     End;
end;

procedure TFormEditReportFindingAnalysis.DBLookupComboBoxTestNameClick(Sender: TObject);
begin
 with querytesttype do
     begin
          close;
          databasename:=gs_DatabaseName;
          with sql do
          begin
               clear;
               add('select distinct reporttype,editfindingid from testeditfinding');
               add('where testnameid='+inttostr(DBLookupComboBoxTestName.keyvalue));
               //savetofile('1.txt');
          end;

          open;
     end;
end;

procedure TFormEditReportFindingAnalysis.createtemptable;
begin
  {With TableTestList do
    begin
      databasename:=gs_TempPath;
      tablename:='TestTemp.db';
      tableType:=TTParadox;
      FieldDefs.Clear;
      Fielddefs.add('TestNameid',ftInteger);
      Fielddefs.add('TestType',ftInteger);
      Fielddefs.add('Title1',ftInteger);
      Fielddefs.add('Title2',ftFloat);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title4',ftInteger);
      Fielddefs.add('Title5',ftInteger);
      Fielddefs.add('Title6',ftInteger);
      Fielddefs.add('Title7',ftInteger);
      Fielddefs.add('Title8',ftInteger);
        Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('Title3',ftInteger);
      Fielddefs.add('DepCode}
end;

procedure TFormEditReportFindingAnalysis.createtablehead;
var i:integer;

begin
     With TableHead do
     begin
          databasename:=gs_TempPath;
          tablename:='TestTemp1.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          FieldDefs.add('Titleid',ftinteger);
          Fielddefs.add('EditFindingid',ftInteger);
          Fielddefs.add('Heading',ftString,100);
          Fielddefs.add('Title',ftstring,100);
          createtable;
     end;
end;

procedure TFormEditReportFindingAnalysis.DBLookupComboBoxTestTypeClick(Sender: TObject);
var i:integer;
begin
     with tablehead do
     begin
          close;
          EmptyTable;
          open;
     end;
     with QueryProcess do
    begin
          close;
          databasename:=gs_databasename;
          with sql do
          begin
               clear;
               add('select editfindingid,titleone,titletwo,titlethree,titlefour,titlefive,');
               add('titlesix,titleseven,titleeight,titlenine,titleten,titleeleven,titletwelve,');
               add('titlethirteen,titlefourteen,titlefifteen,titlesixteen,TitleSeventeen');
               //add(' from testeditfinding where ReportType='+#39+(DBLookupComboBoxTestType.text)+#39);
               add(' from testeditfinding where EditFindingID='+IntToStr(DBLookupComboBoxTestType.KeyValue));
               //savetofile('1.txt');
          end;
          open;

    end;
    QueryProcess.first;

          //While not QueryProcess.eof do
          //begin
               for i:=1 to 17 do
               begin
               with tablehead do
               begin
                    append;
                    if (trim(queryprocess.fields[i].asstring)='') or (trim(queryprocess.fields[i].asstring)='l') or (trim(queryprocess.fields[i].asstring)='.') then
                    begin

                    end
                    else
                    begin
                    tablehead.fieldbyname('titleid').asinteger:=i;
                    tablehead.fieldbyname('editfindingid').asinteger:=queryprocess.fieldbyname('editfindingid').asinteger;
                    tablehead.fieldbyname('Heading').asstring:=QueryProcess.Fields[i].AsString;//QueryProcess.fieldbyname('Title'+inttostr(i)).asstring;
                    tablehead.fieldbyname('Title').asstring:=QueryProcess.Fields[i].DisplayName;
                    post;
                    end;
               end;
          //end;
          //QueryProcess.next;
    end;

     with QueryTempData do
     begin
          close;
          databasename:=gs_temppath;
          with sql do
          begin
               clear;
               add('select * from testtemp1.db ');
          end;
          open;
     end;


end;

procedure TFormEditReportFindingAnalysis.FormCreate(Sender: TObject);
begin
     createtablehead;
end;

procedure TFormEditReportFindingAnalysis.BitBtn1Click(Sender: TObject);
begin
     if DBLookupComboBoxTestName.KeyValue=Null then
     begin
          messageDLG('Please Select TestName',mtInformation,[mbok],0);
          DBLookupComboBoxTestName.setfocus;
          exit;
     end;

     if DBLookupComboBoxTestType.KeyValue=Null then
     begin
          messageDLG('Please Select Test Type',mtInformation,[mbok],0);
          DBLookupComboBoxTestType.setfocus;
          exit;
     end;

     if DBLookupComboBoxTitle.KeyValue=Null then
     begin
          messageDLG('Please Select Title',mtInformation,[mbok],0);
          DBLookupComboBoxTitle.setfocus;
          exit;
     end;

     if Trim(EditResult.text)='' then
     begin
          messageDLG('Please Enter Some Searching Text',mtInformation,[mbok],0);
          editResult.setfocus;
          exit;
     end;
     with QueryListing do
     begin
          close;
          databasename:=gs_DatabaseName;
          with sql do
          begin
               clear;
               add('select distinct PTS.Patientid as PTSPatientid,(select CAST(Patientid AS Varchar2(10)) Patientid from patientmain where patientid=PTS.patientid)Patientid,');
               add('(select Patienttestid from patientmain where patientid=PTS.patientid)Patienttestid,');
               add('(select FName||MName||LNAME from patientmain where patientid=PTS.patientid)Name,');
               add('(select Gender from patientmain where patientid=PTS.patientid)gender,');
               add('(select CAST(age AS Varchar2(10)) age from patientmain where patientid=PTS.patientid)age,');
               add('(select CAST(dob AS Varchar2(10)) dob from patientmain where patientid=PTS.patientid)dob,');
               add('(select Paddress from patientmain where patientid=PTS.patientid)address,');
               add('(select DoctorID from TestDoctor where PatientTestID=PTS.PatientTestID And RowNum=1) DoctorID,');
               add('(select RunNo from PatientRun where PatientTestID=PTS.PatientTestID And RowNum=1) RunNo');
               add('from PatientTestSpecial PTS where');
               if DBLookupComboBoxTitle.keyvalue=1 then
               add('upper(resultOne) like' +#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=2 then
               add('upper(resultTwo) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=3 then
               add('upper(resultThree) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=4 then
               add('upper(resultFour) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=5 then
               add('upper(resultFive) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=6 then
               add('upper(resultSix) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=7 then
               add('upper(resultSeven) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=8 then
               add('upper(resultEight) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=9 then
               add('upper(resultNine) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=10 then
               add('upper(resultTen) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=11 then
               add('upper(resultEleven) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=12 then
               add('upper(resultTwelve) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=13 then
               add('upper(resultThirteen) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=14 then
               add('Upper(resultFourteen) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=15 then
               add('Upper(resultfifteen) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               if DBLookupComboBoxTitle.keyvalue=16 then
               add('UPPER(resultSixteen) like '+#39+'%'+uppercase(editresult.text)+'%'+#39);
               add('and PTS.editfindingid='+inttostr(DBLookupComboBoxTestType.keyvalue));
               //savetofile('1.txt');
          end;
          open;
          LblTotalNo.Caption:=IntToStr(RecordCount);
          StatusBar1.Panels[1].Text:='Total No Of Patients :- '+IntToStr(RecordCount);
     end;
end;



procedure TFormEditReportFindingAnalysis.Edit1Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit1.text)<>'' Then
      Begin
         Filter:='Patientid ='+#39+Edit1.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormEditReportFindingAnalysis.Edit2Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit2.text)<>'' Then
      Begin
         Filter:='Name ='+#39+Edit2.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormEditReportFindingAnalysis.Edit3Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit3.text)<>'' Then
      Begin
         Filter:='gender='+#39+Edit3.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormEditReportFindingAnalysis.Edit4Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit4.text)<>'' Then
      Begin
         Filter:='Age='+#39+Edit4.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

{procedure TFormEditReportFindingAnalysis.Edit5Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit5.text)<>'' Then
      Begin
         Filter:='DOB ='+#39+Edit5.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;}

procedure TFormEditReportFindingAnalysis.Edit6Change(Sender: TObject);
begin
   with QueryListing do
   Begin
      IF Trim(Edit6.text)<>'' Then
      Begin
         Filter:='Address ='+#39+Edit6.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormEditReportFindingAnalysis.DBGrid1DblClick(Sender: TObject);
begin
     If QueryListing.RecordCount<=0 Then
     Begin
          MessageDlg('No Record Exist, Try Again.',mtWarning,[mbOk],0);
          EditResult.SetFocus;
          Exit;
     End;
     //FormPathologyMain.NPatientTestNo:=querylisting.fieldbyname('Patienttestid').asinteger;
     //FormPathologyMain.NPatientNo:=querylisting.fieldbyname('Patientid').asinteger;

//     FormPathologyMain.LbName.Caption:=querylisting.fieldbyname('Name').AsString;
//     FormPathologyMain.LbNo.Caption:=querylisting.fieldbyname('PatientID').AsString;
//     FormPathologyMain.LbTestName.Caption:=DBLookupComboBoxTestName.Text;
//     FormPathologyMain.DBLC_TestNameID.KeyValue:=DBLookupComboBoxTestType.KeyValue;
//     FormPathologyMain.DBDocName.KeyValue:=querylisting.fieldbyname('DoctorID').AsInteger;
//     FormPathologyMain.EditRun.Text:=querylisting.fieldbyname('RunNo').AsString;
//     FormPathologyMain.FillSpecial(querylisting.fieldbyname('Patienttestid').asinteger,querylisting.fieldbyname('Patientid').asinteger);
end;

procedure TFormEditReportFindingAnalysis.EditResultKeyPress(
  Sender: TObject; var Key: Char);
begin
     If Key=#13 Then
     BitBtn1Click(Sender);
end;

end.
