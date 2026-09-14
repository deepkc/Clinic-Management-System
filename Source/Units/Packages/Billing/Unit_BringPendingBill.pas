unit Unit_BringPendingBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_BringonPendingBill = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DS_PendingBill: TDataSource;
    Query_PendingBilling: TQuery;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  pi_Patientid,pi_Inpatientid:Integer;
    { Public declarations }
  end;

var
  Form_BringonPendingBill: TForm_BringonPendingBill;

implementation

uses Fxn;

{$R *.dfm}

procedure TForm_BringonPendingBill.DBGrid1DblClick(Sender: TObject);
begin
     if Query_PendingBilling.FieldByName('PatientId').AsInteger<>0 then
          pi_Patientid := Query_PendingBilling.FieldByName('PatientId').AsInteger;
     if Query_PendingBilling.FieldByName('InPatientId').AsInteger<>0 then
          pi_Patientid := Query_PendingBilling.FieldByName('InPatientId').AsInteger;
     Close;
end;

procedure TForm_BringonPendingBill.FormShow(Sender: TObject);
begin
     Query_PendingBilling.Close;
     Query_PendingBilling.DatabaseName := gs_temppath;
     Query_PendingBilling.Open;
end;

end.


