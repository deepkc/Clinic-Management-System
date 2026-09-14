unit Unit_MachineTestMapping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Grids, DBGrids, DBCtrls,fxn,
  MemDS, DBAccess, Ora,DM,Unit_Master;

type
  TForm_MachineTestMapping = class(TForm)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    Dblcb_HospitalTestName: TDBLookupComboBox;
    Label11: TLabel;
    DBLc_MachineTestName: TDBLookupComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Ds_HospitalTestName: TDataSource;
    DS_List: TDataSource;
    DS_LabTestName: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBLC_Test: TDBLookupComboBox;
    DBLC_MachneTest: TDBLookupComboBox;
    Ds_hosptalTest: TDataSource;
    DS_MachneTest: TDataSource;
    Query_List: TOraQuery;
    Query_HospitalTestName: TOraQuery;
    Query_MachneTest: TOraQuery;
    Query_Test: TOraQuery;
    Query_LabTestName: TOraQuery;
    SpeedButton1: TSpeedButton;
    QueryProcess: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Dblcb_HospitalTestNameClick(Sender: TObject);
    procedure DBLc_MachineTestNameClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
     Pb_IsNew:Boolean;
     Pi_TemaId:Integer;
    { Public declarations }
  end;

var
  Form_MachineTestMapping: TForm_MachineTestMapping;

implementation

{$R *.dfm}

procedure TForm_MachineTestMapping.BB_CloseClick(Sender: TObject);
begin
     close;
end;

procedure TForm_MachineTestMapping.BB_NewClick(Sender: TObject);
begin
    Pb_IsNew:=true;
    Dblcb_HospitalTestName.KeyValue:=null;
    DBLC_Test.KeyValue:=null;
    DBLc_MachineTestName.KeyValue:=null;
    DBLC_MachneTest.KeyValue:=null;
end;

procedure TForm_MachineTestMapping.BB_SaveClick(Sender: TObject);
var
Query:TOraQuery;
begin
     Query:=TOraQuery.Create(nil);
     if Pb_IsNew=true then
     begin
          With Query do
	        Begin
              Close;
              Session:=DM_Hospital.DB;
              SQL.Clear;
              SQL.Add(' Insert Into Tema_Testmapping(');
              SQL.Add('Tema_Id,Testnameid,Tema_Testid,Testid,Tema_Testnameid)');
              SQL.Add(' Values');
              SQL.Add('('+IntToStr(Getmaxid('Tema_Testmapping','Tema_Id')) +','+IntToStr(Dblcb_HospitalTestName.KeyValue) +','+IntToStr(DBLC_MachneTest.KeyValue) +','+IntToStr(DBLC_Test.KeyValue) +','+IntToStr(DBLc_MachineTestName.KeyValue));
              SQL.Add(' ) ');
              //sql.SaveToFile('tt.txt');
              ExecSQL;
          End;
     end
     else
     begin
          With Query do
          Begin
            Close;
            Session:=DM_Hospital.DB;
            SQL.Clear;
            SQL.Add(' Update Tema_Testmapping Set');
            SQL.Add('Testnameid='+IntToStr(Dblcb_HospitalTestName.KeyValue) +',Tema_Testid='+IntToStr(DBLC_MachneTest.KeyValue) +', Testid='+IntToStr(DBLC_Test.KeyValue) +', Tema_Testnameid='+IntToStr(DBLc_MachineTestName.KeyValue));
            SQL.Add('Where Tema_Id='+IntToStr(Pi_TemaId));
            ExecSQL;
          End;
          Pb_IsNew:=true;
     end;
     ShowDoneMessage;
     Query_list.Close;
     Query_list.Session:=DM_Hospital.DB;
     Query_list.Open;
     Query.Free;
end;

procedure TForm_MachineTestMapping.DBGrid1DblClick(Sender: TObject);
begin
     Pi_TemaId:=Query_List.FieldByName('TEMA_ID').asinteger;
     Dblcb_HospitalTestName.KeyValue:=Query_List.FieldByName('TestNameId').asinteger;
     Dblcb_HospitalTestNameClick(sender);
     DBLc_MachineTestName.KeyValue:=Query_List.FieldByName('TEMA_TESTNAMEID').asinteger;
     DBLc_MachineTestNameClick(sender);
     DBLC_Test.KeyValue:=Query_List.FieldByName('TESTID').asinteger;
     DBLC_MachneTest.KeyValue:=Query_List.FieldByName('TEMA_TESTID').asinteger;
     Pb_IsNew:=false;
end;

procedure TForm_MachineTestMapping.Dblcb_HospitalTestNameClick(Sender: TObject);
begin
     with Query_Test do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql[1]:='where testnameid='+IntToStr(Dblcb_HospitalTestName.KeyValue);
          Open;
     end;
end;

procedure TForm_MachineTestMapping.DBLc_MachineTestNameClick(Sender: TObject);
begin
     with Query_MachneTest do
     begin
          close;
          Session:=DM_Hospital.DB;
          sql[1]:='where LAMT_TESTNAMEID='+IntToStr(DBLc_MachineTestName.KeyValue);
          Open;
     end;
end;

procedure TForm_MachineTestMapping.FormShow(Sender: TObject);
begin
     Query_HospitalTestName.Close;
     Query_HospitalTestName.Session:=DM_Hospital.DB;
     Query_HospitalTestName.Open;

     Query_LabTestName.Close;
     Query_LabTestName.Session:=DM_Hospital.DB;
     Query_LabTestName.SQL.SaveToFile('tt.txt');
     Query_LabTestName.Open;
     //ShowMessage(IntToStr(Query_LabTestName.RecordCount));
     Query_list.Close;
     Query_list.Session:=DM_Hospital.DB;
     Query_list.Open;
     Pb_IsNew:=true;
end;

procedure TForm_MachineTestMapping.SpeedButton1Click(Sender: TObject);
begin
     with QueryProcess do
     begin
          Close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Delete From tema_testmapping Where tema_ID=' + IntToStr(Query_List.FieldByName('Tema_Id').AsInteger));
          ExecSQL;
     end;
     Query_List.Close;
     Query_List.Open;
end;

end.
