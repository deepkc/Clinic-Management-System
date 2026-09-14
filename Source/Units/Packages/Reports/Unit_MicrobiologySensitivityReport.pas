unit Unit_MicrobiologySensitivityReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls, DateEditXControl_TLB, DBCtrls,
  DB, DBTables, MemDS, DBAccess, Ora,DBGrids;

type
  TForm_MicrobiologySensitivityResult = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    DBLCB_TestName: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    label2: TLabel;
    Label1: TLabel;
    BtnTo: TSpeedButton;
    BtnFrom: TSpeedButton;
    DateEditXTo: TDateEditX;
    DateEditxFrom: TDateEditX;
    Ds_Testname: TDataSource;
    OraQuery_Testname: TOraQuery;
    Table_SensitivityResult: TTable;
    OraQuery_Process: TOraQuery;
    OraQuery_Detail: TOraQuery;
    OraQuery_SensitivityMedicine: TOraQuery;
    BitBtn_Close: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
    procedure DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure CreateTemp;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn_CloseClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  Form_MicrobiologySensitivityResult: TForm_MicrobiologySensitivityResult;

implementation

Uses
Fxn,ServerDate,DM,UnitSendToExcel;

{$R *.dfm}

procedure TForm_MicrobiologySensitivityResult.BitBtn1Click(Sender: TObject);
Var
     Qry:Tquery;
     ls_Findings,ls_Unit,ls_Sensitivity,ls_Intermediate,ls_Resistant:string;
     datasource1:TDataSource;
     dbGRid:TDBGrid;
begin
     if (DBLCB_TestName.KeyValue = Null) then
     begin
          ShowMessage('Please Select the TestName');
          DBLCB_TestName.SetFocus;
          exit;
     end;
     CreateTemp;
     Table_SensitivityResult.Close;
     Table_SensitivityResult.DatabaseName:=gs_TempPath;
     Table_SensitivityResult.EmptyTable;
     Table_SensitivityResult.Open;
     with OraQuery_Process do
     begin
          Close;
          sql.Clear;
          Session:=DM_Hospital.DB;
          SQL.Add('select * from View_Micro_Repo where testnameid='+IntToStr(DBLcb_Testname.KeyValue));
          sql.Add('and SAMPLETAKENDATE between'+QuotedStr(DateEditxFrom.text)+'and'+QuotedStr(DateEditXTo.text));
          //SQL.SaveToFile('C:\sensi.txt');
          Open;
     end;

     while not OraQuery_Process.Eof do
     begin
          with Table_SensitivityResult do
          begin
              Table_SensitivityResult.Append;
              Table_SensitivityResult.FieldByName('Patientid').AsString:= OraQuery_Process.FieldByName('patientid').AsString;
              Table_SensitivityResult.FieldByName('patienttestid').AsString:= OraQuery_Process.FieldByName('patienttestid').AsString;
              Table_SensitivityResult.FieldByName('Age').AsString:= OraQuery_Process.FieldByName('Age').AsString;
              Table_SensitivityResult.FieldByName('Sex').AsString:= OraQuery_Process.FieldByName('Sex').AsString;
              Table_SensitivityResult.FieldByName('Name').AsString:= OraQuery_Process.FieldByName('PatientName').AsString;
              Table_SensitivityResult.FieldByName('Sampleno').AsString:= OraQuery_Process.FieldByName('Sampleno').AsString;
              Table_SensitivityResult.FieldByName('SAMPLETAKENDATE').AsString:= OraQuery_Process.FieldByName('SAMPLETAKENDATE').AsString;
          end;
          with OraQuery_Detail do
          begin
               Close;
               SQL.Clear;
               Session := DM_Hospital.DB;
               SQL.Add('select * from patienttestdetail where testnameid='+IntToStr(DBLcb_Testname.KeyValue));
               SQL.Add('and finding is not null and patienttestid='+IntToStr(OraQuery_Process.FieldByName('patienttestid').AsInteger));
               Open;
               if OraQuery_Detail.RecordCount>1 then
               begin
                    ls_findings:='';
                    while not OraQuery_Detail.Eof do
                    begin
                          if ls_findings = '' then
                          ls_findings := OraQuery_Detail.FieldByName('Finding').AsString+ls_findings
                          else
                            ls_findings := ls_findings + ',' + OraQuery_Detail.FieldByName('Finding').AsString;
                          OraQuery_Detail.Next;
                    end;
                    Table_SensitivityResult.FieldByName('Finding').AsString:= ls_findings;

                    ls_Unit:='';
                    while not OraQuery_Detail.Eof do
                    begin
                          if ls_Unit = '' then
                          ls_Unit := OraQuery_Detail.FieldByName('Unit').AsString+ls_Unit
                          else
                            ls_Unit := ls_Unit + ',' + OraQuery_Detail.FieldByName('Unit').AsString;
                          OraQuery_Detail.Next;
                    end;
                    Table_SensitivityResult.FieldByName('Unit').AsString:= ls_Unit;
               end
               else
               begin
                    Table_SensitivityResult.FieldByName('Unit').AsString:= OraQuery_Detail.FieldByName('Unit').AsString;
                    Table_SensitivityResult.FieldByName('Finding').AsString:= OraQuery_Detail.FieldByName('Finding').AsString;
               end;

                with OraQuery_SensitivityMedicine do
                begin
                    Close;
                    SQL.Clear;
                    Session:=DM_Hospital.DB;
                    SQL.Add('select * from View_Sensitive_Information where patienttestid='+IntToStr(OraQuery_Process.FieldByName('patienttestid').AsInteger));
                    Open;
                    OraQuery_SensitivityMedicine.First;
                    ls_Sensitivity :='';
                    ls_Intermediate :='';
                    ls_Resistant :='';
                    if OraQuery_SensitivityMedicine.RecordCount>1 then
                    begin
                    while not OraQuery_SensitivityMedicine.Eof do
                    begin
                         if OraQuery_SensitivityMedicine.FieldByName('Result').AsString='S' then
                         begin
                              if ls_Sensitivity='' then
                              begin
                                   ls_Sensitivity:=OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end
                              else
                              begin
                                   ls_Sensitivity := ls_Sensitivity + ',' + OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end;
                              Table_SensitivityResult.FieldByName('Sensitivity').AsString:= ls_Sensitivity;
                         end
                         else if OraQuery_SensitivityMedicine.FieldByName('Result').AsString='I' then
                         begin
                              if ls_Intermediate='' then
                              begin
                                   ls_Intermediate:=OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end
                              else
                              begin
                                   ls_Intermediate := ls_Intermediate + ',' + OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end;
                              Table_SensitivityResult.FieldByName('Intermediate').AsString:= ls_Intermediate;
                         end
                         else if OraQuery_SensitivityMedicine.FieldByName('Result').AsString='R' then
                         begin
                              if ls_Resistant='' then
                              begin
                                   ls_Resistant:=OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end
                              else
                              begin
                                   ls_Resistant := ls_Resistant + ',' + OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                              end;
                              Table_SensitivityResult.FieldByName('Resistant').AsString:= ls_Resistant;
                         end;
                         Next;
                    end;
                    end
                    else
                    begin
                         Table_SensitivityResult.FieldByName('Sensitivity').AsString:= OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                         Table_SensitivityResult.FieldByName('Intermediate').AsString:= OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                         Table_SensitivityResult.FieldByName('Resistant').AsString:= OraQuery_SensitivityMedicine.FieldByName('Medicinestr').AsString;
                    end;
                end;
          end;
          Table_SensitivityResult.Post;
          OraQuery_Process.Next;
     end;
     qry:=TQuery.Create(nil);
     with qry do
     begin
          Close;
          DatabaseName:=gs_temppath;
          sql.Clear;
          SQL.Add('SELECT * FROM SensitivityResultAnalysis.DB');
          Open;
     end;
     SendToExcels(Qry,Nil,'Sensitivity Report Detail',ServerDate.TodaysDateVS   +' :-    '+'(From  '+DateEditxFrom.text+'  To  '+DateEditXTo.text+')','',gs_HospitalName,gs_HospitalAddress,0);
     Qry.Free;

end;

procedure TForm_MicrobiologySensitivityResult.BitBtn_CloseClick(
  Sender: TObject);
begin
     Close;
end;

procedure TForm_MicrobiologySensitivityResult.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TForm_MicrobiologySensitivityResult.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TForm_MicrobiologySensitivityResult.CreateTemp;
begin
     if fileexists(gs_tempPath+'\SensitivityResultAnalysis.db') then
     DeleteFile(gs_tempPath+'\SensitivityResultAnalysis.db');

     With Table_SensitivityResult do
     begin
          close;
          databasename:=gs_TempPath;
          tablename:='SensitivityResultAnalysis.db';
          tableType:=ttDefault;
          FieldDefs.Clear;
          Fielddefs.add('Sn',ftinteger);
          Fielddefs.add('Name',ftString,100);
          Fielddefs.add('Patientid',ftinteger);
          Fielddefs.add('Age',ftString,10);
          Fielddefs.add('Sex',ftString,10);
          Fielddefs.add('Sampleno',ftString,100);
          Fielddefs.add('PatientTestid',ftinteger);
          FieldDefs.Add('SAMPLETAKENDATE',ftstring,20);
          Fielddefs.add('Finding',ftString,255);
          FieldDefs.Add('Unit',ftString,255);
          //Fielddefs.add('InpatientId',ftinteger);
          FieldDefs.Add('Sensitivity',ftString,255);
          FieldDefs.Add('Intermediate',ftString,255);
          FieldDefs.Add('Resistant',ftString,255);

          createtable;
     End;
end;

procedure TForm_MicrobiologySensitivityResult.DBLCB_TestNameKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_TestName.KeyValue := Null;
end;

procedure TForm_MicrobiologySensitivityResult.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_ESCAPE then
          Close;
end;

procedure TForm_MicrobiologySensitivityResult.FormShow(Sender: TObject);
begin
     if gi_compileValue=11 then
     begin
          DateEditxFrom.SystemOfDate := gi_DateSystem;
          DateEditXTo.SystemOfDate := gi_DateSystem;
          DateEditxFrom.text := gs_From;
          DateEditXTo.Text := gs_to;
          BtnFrom.Caption := gs_DateCaption;
          BtnTo.Caption := gs_DateCaption;
     end;
     DateEditxFrom.SystemOfDate := gi_DateSystem;
     DateEditXTo.SystemOfDate := gi_DateSystem;
     DateEditxFrom.text := gs_From;
     DateEditXTo.Text := gs_to;
     with OraQuery_Testname do
     begin
          close;
          Session:=Dm_Hospital.Db;
          Open;
     end;
end;

end.
