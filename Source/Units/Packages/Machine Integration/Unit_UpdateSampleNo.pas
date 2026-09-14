unit Unit_UpdateSampleNo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, SMDBGrid, StdCtrls,Fxn,
  MemDS, DBAccess, Ora,DM;

type
  TForm_update = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    DS: TDataSource;
    Edit_SampleNo: TEdit;
    Update: TButton;
    Query: TOraQuery;
    Qry: TOraQuery;
    Query_Process: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1CellClick(Column: TColumn);
    procedure UpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_update: TForm_update;

implementation

{$R *.dfm}

procedure TForm_update.FormShow(Sender: TObject);
begin
     Query.Close;
     Query.Session:=DM_Hospital.DB;
     Query.OPEN;
end;

procedure TForm_update.SMDBGrid1CellClick(Column: TColumn);
begin
     with Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL[3]:='and dailyno='+#39+Query.FieldByName('DailyNo').AsString+#39;
          SQL[5]:='where Lmtn_TestNameCode='+#39+Query.FieldByName('TestCode').AsString+#39+'))';
          Open;
     end;
     if Qry.FieldByName('SampleNo').AsString<>'' then
     Edit_SampleNo.Text:=Qry.FieldByName('SampleNo').AsString
     else
     Edit_SampleNo.Clear;


end;

procedure TForm_update.UpdateClick(Sender: TObject);
begin
     with Query_Process do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('update lamr_machineresult set lamr_sampleno='+#39+Edit_SampleNo.Text+#39);
          SQL.Add('where lamr_dailyno='+#39+Query.FieldByName('DailyNo').AsString+#39);
          SQL.Add('and lamr_TestCode='+#39+Query.FieldByName('TestCode').AsString+#39);
          ExecSQL;
          ShowDoneMessage;
     end;
     Query.Close;
     Query.Open;

end;

end.
