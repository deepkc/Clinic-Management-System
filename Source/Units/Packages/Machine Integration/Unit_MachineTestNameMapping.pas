unit Unit_MachineTestNameMapping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Grids, DBGrids, DBCtrls,fxn,
  MemDS, DBAccess, Ora,DM,Unit_Master;

type
  TForm_MachineTestNameMapping = class(TForm)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    Dblcb_HospitalTestName: TDBLookupComboBox;
    Label11: TLabel;
    DBLc_LabTestName: TDBLookupComboBox;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Ds_HospitalTestName: TDataSource;
    DS_List: TDataSource;
    DS_LabTestName: TDataSource;
    Query_List: TOraQuery;
    Query_LabTestName: TOraQuery;
    Query_HospitalTestname: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
  private
    { Private declarations }
  public
     Pb_IsNew:Boolean;
     Pi_TnmaId:Integer;
    { Public declarations }
  end;

var
  Form_MachineTestNameMapping: TForm_MachineTestNameMapping;

implementation

{$R *.dfm}

procedure TForm_MachineTestNameMapping.BB_CloseClick(Sender: TObject);
begin
     close;
end;

procedure TForm_MachineTestNameMapping.BB_NewClick(Sender: TObject);
begin
     Pb_IsNew:=true;
     Dblcb_HospitalTestName.KeyValue:='';
     DBLc_LabTestName.KeyValue:='';
     Dblcb_HospitalTestName.SetFocus;
end;

procedure TForm_MachineTestNameMapping.BB_SaveClick(Sender: TObject);
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
            SQL.Add(' Insert Into Tnma_Testnamemapping(');
            SQL.Add('Tnma_Id,Lmtn_Testnameid,Testnameid)');
            SQL.Add(' Values ');
            SQL.Add('('+IntToStr(GetMaxId('Tnma_Testnamemapping','Tnma_Id')) +','+IntToStr(DBlc_LabTestName.KeyValue) +','+IntToStr(Dblcb_HospitalTestName.KeyValue));
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
            SQL.Add(' Update Tnma_Testnamemapping Set');
            SQL.Add('Lmtn_Testnameid='+IntToStr(DBlc_LabTestName.KeyValue) +',Testnameid='+IntToStr(Dblcb_HospitalTestName.KeyValue));
            SQL.Add('Where Tnma_Id='+IntToStr(Pi_TnmaId));
            ExecSQL;
          End;
          Pb_IsNew:=true;
     end;
     ShowDoneMessage;
     Dblcb_HospitalTestName.KeyValue:=Null;
     DBLc_LabTestName.KeyValue:=Null;
     Query_list.Close;
     Query_list.Session:=DM_Hospital.DB;
     Query_list.Open;
     Query.Free;
end;

procedure TForm_MachineTestNameMapping.DBGrid1DblClick(Sender: TObject);
begin
     Pi_TnmaId:=Query_List.FieldByName('TNMA_ID').asinteger;
     Dblcb_HospitalTestName.KeyValue:=Query_List.FieldByName('TestNameId').asinteger;
     DBLc_LabTestName.KeyValue:=Query_List.FieldByName('Lmtn_TestNameId').asinteger;
     Pb_IsNew:=false;

end;

procedure TForm_MachineTestNameMapping.FormShow(Sender: TObject);
begin
     Query_HospitalTestName.Close;
     Query_HospitalTestName.Session:=DM_Hospital.DB;
     Query_HospitalTestName.Open;

     Query_LabTestName.Close;
     Query_LabTestName.Session:=DM_Hospital.DB;
     //Query_LabTestName.SQL.SaveToFile('tt.txt');
     Query_LabTestName.Open;
     Query_LabTestName.FieldByName('LMTN_TESTNAME').AsString;
     Query_list.Close;
     Query_list.Session:=DM_Hospital.DB;
     Query_list.Open;
     Pb_IsNew:=true;
end;

end.
