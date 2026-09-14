unit Unit_MedicalHistoryInvestigation;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, OleCtrls, DateEditXControl_TLB, ExtCtrls, DBCtrls, Grids,
     DBGrids, Buttons, ComCtrls, DB, DBTables, DM, Fxn, Unit_InvestigationDetail,
     DbGridExportToExcel, serverdate;

type
     TFrame_Investigation = class(TFrame)
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Label2: TLabel;
          spbtn_Delete: TSpeedButton;
          spbtnSendToExcel: TSpeedButton;
          Edit_Search: TEdit;
          DBGrid1: TDBGrid;
          TabSheet2: TTabSheet;
          Query_List: TQuery;
          DataSource_List: TDataSource;
    SpeedButton4: TSpeedButton;
          procedure DBGrid1DblClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchChange(Sender: TObject);
          procedure spbtnSendToExcelClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
     private
          { Private declarations }
     public
          Procedure FillGrid;
          procedure FreeFrame;
          { Public declarations }
     end;

var
     Frame_InvestigationDetail: Unit_InvestigationDetail.TFrame_InvestigationDetail;

implementation

uses Unit_MedicalHistoryParent;
{$R *.dfm}

procedure TFrame_Investigation.DBGrid1DblClick(Sender: TObject);
begin
     if Query_List.RecordCount < 1 then
          exit;
     PageControl1.ActivePageIndex := 1;
     Gs_BillNo := Query_List.fieldbyname('billno').asstring;
     gs_TestDate := Query_List.fieldbyname('testdate').asstring;
     Frame_InvestigationDetail := TFrame_InvestigationDetail.Create(nil);
     with Frame_InvestigationDetail do
     begin
          Parent := PageControl1.Pages[1];
          Align := alClient;
          show;
     end;
end;

procedure TFrame_Investigation.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
          DBGrid1DblClick(Sender);
end;

procedure TFrame_Investigation.Edit_SearchChange(Sender: TObject);
begin
     FillGrid;
end;

procedure TFrame_Investigation.FillGrid;
begin
     with Query_List do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Select * from vw_MedicalHistoryInvestigation');
          sql.Add('where patientID=' + IntToStr(gi_PatientID));
          // sql.Add('AND InPatientId=' + IntToStr(gi_InPatientID));
          if trim(Edit_Search.Text) <> '' then
          begin
               sql.Add('and (InvCode like ''' + trim(Edit_Search.Text) + '%''');
               sql.Add(' OR Investigation like ''' + trim(Edit_Search.Text) + '%''');
               sql.Add(' OR testdate like ''' + trim(Edit_Search.Text) + '%'')');
          end;
          sql.Add('order by testdate Desc,Investigation');
          Open;
     end;
end;

procedure TFrame_Investigation.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TFrame_Investigation.spbtnSendToExcelClick(Sender: TObject);
begin
     if Query_List.RecordCount < 1 then
          exit;

     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_MedicalHistoryParent, DBGrid1, true, 'Investigation of ' + Gs_PatientName,
               TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

procedure TFrame_Investigation.SpeedButton4Click(Sender: TObject);
begin
     DBGrid1DblClick(Sender);
end;

procedure TFrame_Investigation.FreeFrame;
begin
     Frame_InvestigationDetail.free;
end;

end.
