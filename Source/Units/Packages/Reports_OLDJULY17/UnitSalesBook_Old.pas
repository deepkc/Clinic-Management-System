unit UnitSalesBook;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate,
     Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, OleCtrls, DateEditXControl_TLB, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_SalesBook = class(TForm)
          Panel1: TPanel;
          BitBtnPreview: TBitBtn;
          BitBtnCancel: TBitBtn;
          Panel2: TPanel;
          Bevel1: TBevel;
          Label1: TLabel;
          Label2: TLabel;
          DateEditX_FromDate: TDateEditX;
          DateEditX_ToDate: TDateEditX;
          BitBtn_FromDate: TBitBtn;
          BitBtn_ToDate: TBitBtn;
          CBTaxOffice: TCheckBox;
          GroupBox_SalesBook: TGroupBox;
          RB_Detail: TRadioButton;
          RB_Summary: TRadioButton;
          StatusBar1: TStatusBar;
          Query_RefundSummary: TOraQuery;
          Query_SummaryCash: TOraQuery;
    Table_TaxSummaryReport: TTable;
          procedure CBTaxOfficeClick(Sender: TObject);
          procedure BitBtnPreviewClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure Govt_Service_Tax_Report_Medicare;
          Procedure CreateTable_TaxSummaryReport;
          procedure BitBtnCancelClick(Sender: TObject);
          procedure BitBtn_FromDateClick(Sender: TObject);
          procedure BitBtn_ToDateClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }

     end;

var
     Form_SalesBook: TForm_SalesBook;

implementation

uses Unit_Medicare_GovtSvrTaxReportSummary, Unit_Medicare_GovtSvrTaxReport;
{$R *.dfm}

procedure TForm_SalesBook.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_SalesBook.BitBtnPreviewClick(Sender: TObject);
var
     New_Query: TOraQuery;
     i: Integer;
     ReportForm: TForm;
     ls_ReportTitle: String;
     lf_Tot: Double;
begin
     // IF CheckProperDateRange(DateEditX_FromDate,DateEditX_ToDate)=False Then
     // Begin
     // MessageDlg('Incorrect Date ! '+Char(10)+Char(10)+'       Clue -> Either From Date or To Date.',mtWarning,[mbok],0);
     // Exit;
     // End;
     Govt_Service_Tax_Report_Medicare;

end;

procedure TForm_SalesBook.BitBtn_FromDateClick(Sender: TObject);
begin
     // ChangeDateSystem(DateEditX_FromDate,BitBtn_FromDate);
     if DateEditX_FromDate.SystemOfDate = 0 then
     begin
          BitBtn_FromDate.Caption := 'AD';
          DateEditX_FromDate.SystemOfDate := 1;
     end
     else if DateEditX_FromDate.SystemOfDate = 1 then
     begin
          BitBtn_FromDate.Caption := 'BS';
          DateEditX_FromDate.SystemOfDate := 0;
     end;
end;

procedure TForm_SalesBook.BitBtn_ToDateClick(Sender: TObject);
begin
     // ChangeDateSystem(DateEditX_ToDate,BitBtn_ToDate);
     if DateEditX_ToDate.SystemOfDate = 0 then
     begin
          BitBtn_ToDate.Caption := 'AD';
          DateEditX_ToDate.SystemOfDate := 1;
     end
     else if DateEditX_ToDate.SystemOfDate = 1 then
     begin
          BitBtn_ToDate.Caption := 'BS';
          DateEditX_ToDate.SystemOfDate := 0;
     end;
end;

procedure TForm_SalesBook.CBTaxOfficeClick(Sender: TObject);
begin
     IF CBTaxOffice.Checked = True Then
     Begin

          GroupBox_SalesBook.Visible := True;
          RB_Detail.Checked := True;
     End
     Else
          GroupBox_SalesBook.Visible := False;
end;

procedure TForm_SalesBook.CreateTable_TaxSummaryReport;
begin
     With Table_TaxSummaryReport do
     Begin
          DatabaseName := gs_TempPath;
          Close;
          TableName := 'TaxSummaryReport.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('PayType', ftString, 7);
          FieldDefs.Add('BillDate', ftString, 10);
          FieldDefs.Add('StartBillNo', ftString, 17);
          FieldDefs.Add('EndBillNo', ftString, 17);
          FieldDefs.Add('Gross', ftFloat);
          FieldDefs.Add('Discount', ftFloat);
          FieldDefs.Add('SubTotal', ftFloat);
          FieldDefs.Add('TaxableTotal', ftFloat);
          FieldDefs.Add('NonTaxableTotal', ftFloat);
          FieldDefs.Add('5%HST', ftFloat);
          FieldDefs.Add('NetAmount', ftFloat);
          IndexDefs.Clear;
          CreateTable;
     End;
end;

procedure TForm_SalesBook.FormCreate(Sender: TObject);
begin

     Application.CreateForm(TForm_Medicare_GovtSvrTaxReportSummary, Form_Medicare_GovtSvrTaxReportSummary);
     Application.CreateForm(TForm_Medicare_GovtSvrTaxReport, Form_Medicare_GovtSvrTaxReport);

end;

procedure TForm_SalesBook.FormDestroy(Sender: TObject);
begin
     //
     // Form_Medicare_GovtSvrTaxReportSummary.Free;
     // Form_Medicare_GovtSvrTaxReport.Free;

end;

procedure TForm_SalesBook.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = 27 Then
          Close;
     IF Key = VK_F1 Then
          BitBtnPreviewClick(Sender);

     If Key = 13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_SalesBook.FormShow(Sender: TObject);
begin
     DateEditX_FromDate.SystemOfDate := gi_datesystem;
     // ChangeCaption(BitBtn_FromDate,gi_DateSystem);
     DateEditX_FromDate.text := TodaysDate;

     DateEditX_ToDate.SystemOfDate := gi_datesystem;
     // ChangeCaption(BitBtn_ToDate,gi_DateSystem);
     DateEditX_ToDate.text := TodaysDate;

     CreateTable_TaxSummaryReport;

end;

procedure TForm_SalesBook.Govt_Service_Tax_Report_Medicare;
Var
     ls_ReportTitle: String;
     b_isselected: Boolean;
begin
     b_isselected := True;
     if (CBTaxOffice.Checked = False) then
          b_isselected := False;

     IF (RB_Detail.Checked = True) or (b_isselected = False) Then
     Begin
          try
               Form_Medicare_GovtSvrTaxReport := TForm_Medicare_GovtSvrTaxReport.Create(nil);
               With Form_Medicare_GovtSvrTaxReport Do
               Begin
                    Try
                         With Query_Cash Do
                         Begin
                              Close;
                              Session:=Dm_Hospital.Db;

                              SQL[1] := 'where SB.billdate>=' + #39 + DateEditX_FromDate.text + #39 + 'and billdate<=' + #39 +
                                DateEditX_ToDate.text + #39;
                              // SQL[2] := 'order by billno';
                              Open;

                         End;

                         with Query_Refund do
                         Begin
                              Close;

                              SQL[1] := 'where refunddate>=' + #39 + DateEditX_FromDate.text + #39 + 'and refunddate<=' + #39 +
                                DateEditX_ToDate.text + #39;
                              SQL[2] := 'order by billno';
                              Open;
                         End;

                         ls_ReportTitle := 'HEALTH SERVICE TAX REPORT';

                         CRSno := 0;
                         CSSno := 0;
                         RFSno := 0;

                         If gi_datesystem = 0 Then
                         Begin
                              QRLabelFrom.Caption := DateEditX_FromDate.VSDateAsText + ' BS(' + DateEditX_FromDate.ADDateAsText + ' AD)';
                              QRLabelTo.Caption := DateEditX_ToDate.VSDateAsText + ' BS(' + DateEditX_ToDate.ADDateAsText + ' AD)';
                         End
                         Else
                         Begin
                              QRLabelFrom.Caption := DateEditX_FromDate.ADDateAsText + ' AD(' + DateEditX_FromDate.VSDateAsText + ' BS)';
                              QRLabelTo.Caption := DateEditX_ToDate.ADDateAsText + ' AD(' + DateEditX_ToDate.VSDateAsText + ' BS)';
                         End;
                         QRLabelToday.Caption := TodaysDate;

                         QRLabelReportTitle.Caption := ls_ReportTitle;

                         if (b_isselected = False) then
                         begin
                              QRLabel9.Font.Color := clBlack;
                              QRLabel11.Font.Color := clBlack;
                              QRLabel38.Enabled := True;
                              QRDBText8.Enabled := True;
                              QRExpr10.Enabled := True;
                              QRDBText28.Enabled := True;
                              QRExpr16.Enabled := True;
                              QRExpr5.Enabled := True;

                              QRLabel28.Enabled := True;
                              QRDBText4.Enabled := True;
                              QRExpr2.Enabled := True;
                              QRDBText26.Enabled := True;
                              QRExpr11.Enabled := True;
                              QRExpr3.Enabled := True;

                              QRShape5.Enabled := True;
                              QRShape6.Enabled := True;
                              QRShape14.Enabled := True;
                              QRShape15.Enabled := True;
                              QRShape22.Enabled := True;
                              QRShape23.Enabled := True;

                         end

                         else
                         begin
                              QRLabel9.Font.Color := clWhite;
                              QRLabel11.Font.Color := clWhite;
                              QRLabel38.Enabled := False;
                              QRDBText8.Enabled := False;
                              QRExpr10.Enabled := False;
                              QRDBText28.Enabled := False;
                              QRExpr16.Enabled := False;
                              QRExpr5.Enabled := False;

                              QRLabel28.Enabled := False;
                              QRDBText4.Enabled := False;
                              QRExpr2.Enabled := False;
                              QRDBText26.Enabled := False;
                              QRExpr11.Enabled := False;
                              QRExpr3.Enabled := False;

                              QRShape5.Enabled := False;
                              QRShape6.Enabled := False;
                              QRShape14.Enabled := False;
                              QRShape15.Enabled := False;
                              QRShape22.Enabled := False;
                              QRShape23.Enabled := False;

                              { QRShape4.Width:=835;
                                QRShape28.Visible:=False;
                                QRShape27.Width:=835;
                                QRShape29.Width:=835; }
                         end;

                         QuickRep1.Preview;

                         Query_Cash.Close;
                         Query_Refund.Close;

                    Finally
                         // QuickRep1.Free;
                    End;
               End;
          finally
               Form_Medicare_GovtSvrTaxReport.Free;
          end;
     End
     Else if RB_Summary.Checked = True then
     Begin
          CreateTable_TaxSummaryReport;

          Table_TaxSummaryReport.Close;
          Table_TaxSummaryReport.DatabaseName := gs_TempPath;
          Table_TaxSummaryReport.EmptyTable;
          Table_TaxSummaryReport.Open;

          With Query_SummaryCash do
          Begin
               Close;
               // ParamByName('fdate').AsString:=DateEditX_FromDate.Text;
               // ParamByName('tdate').AsString:=DateEditX_ToDate.Text;
               SQL[1] := 'where billdate>=' + #39 + DateEditX_FromDate.text + #39 + 'and BILLDATE<=' + #39 + DateEditX_ToDate.text + #39;
               // sql[2]:='order by billno';
               Open;
               First;
               While Not EOF Do
               Begin
                    Table_TaxSummaryReport.Append;
                    Table_TaxSummaryReport.FieldBYName('PayType').AsString := 'CASH';
                    Table_TaxSummaryReport.FieldBYName('BillDate').AsString := Query_SummaryCash.FieldBYName('BillDate').AsString;
                    Table_TaxSummaryReport.FieldBYName('StartBillNo').AsString := Query_SummaryCash.FieldBYName('StartBillNo').AsString;
                    Table_TaxSummaryReport.FieldBYName('EndBillNo').AsString := Query_SummaryCash.FieldBYName('EndBillNo').AsString;
                    Table_TaxSummaryReport.FieldBYName('Gross').AsFloat := Query_SummaryCash.FieldBYName('Gross').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('Discount').AsFloat := Query_SummaryCash.FieldBYName('Discount').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('SubTotal').AsFloat := Query_SummaryCash.FieldBYName('SubTotal').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('TaxableTotal').AsFloat := Query_SummaryCash.FieldBYName('Taxable').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('NonTaxableTotal').AsFloat := Query_SummaryCash.FieldBYName('NonTaxable').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('5%HST').AsFloat := Query_SummaryCash.FieldBYName('HST').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('NetAmount').AsFloat := Query_SummaryCash.FieldBYName('NetTotal').AsFloat;
                    Table_TaxSummaryReport.Post;
                    Query_SummaryCash.Next;
               End;
          End;

          With Query_RefundSummary do
          Begin
               Close;
               // ParamByName('fdate').AsString:=DateEditX_FromDate.Text;
               // ParamByName('tdate').AsString:=DateEditX_ToDate.Text;
               SQL[1] := 'where refunddate>=' + #39 + DateEditX_FromDate.text + #39 + 'and refunddate<=' + #39 + DateEditX_ToDate.text + #39;
               // sql[2]:='order by billno';
               Open;
               First;
               While Not EOF Do
               Begin
                    Table_TaxSummaryReport.Append;
                    Table_TaxSummaryReport.FieldBYName('PayType').AsString := 'REFUND';
                    Table_TaxSummaryReport.FieldBYName('BillDate').AsString := Query_RefundSummary.FieldBYName('Refunddate').AsString;
                    Table_TaxSummaryReport.FieldBYName('StartBillNo').AsString := Query_RefundSummary.FieldBYName('StartBillNo').AsString;
                    Table_TaxSummaryReport.FieldBYName('EndBillNo').AsString := Query_RefundSummary.FieldBYName('EndBillNo').AsString;
                    Table_TaxSummaryReport.FieldBYName('Gross').AsFloat := Query_RefundSummary.FieldBYName('Gross').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('Discount').AsFloat := Query_RefundSummary.FieldBYName('Discount').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('SubTotal').AsFloat := Query_RefundSummary.FieldBYName('SubTotal').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('TaxableTotal').AsFloat := Query_RefundSummary.FieldBYName('Taxable').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('NonTaxableTotal').AsFloat := Query_RefundSummary.FieldBYName('NonTaxable').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('5%HST').AsFloat := Query_RefundSummary.FieldBYName('HST').AsFloat;
                    Table_TaxSummaryReport.FieldBYName('NetAmount').AsFloat := Query_RefundSummary.FieldBYName('NetTotal').AsFloat;
                    Table_TaxSummaryReport.Post;
                    Query_RefundSummary.Next;
               End;
          End;

          try
               Form_Medicare_GovtSvrTaxReportSummary := TForm_Medicare_GovtSvrTaxReportSummary.Create(nil);
               With Form_Medicare_GovtSvrTaxReportSummary Do
               Begin
                    try
                         With Query_Master Do
                         Begin
                              Close;
                              DatabaseName := gs_TempPath;
                              Open;
                         End;

                         With Query_Detail Do
                         begin
                              Close;
                              DatabaseName := gs_TempPath;
                              Open;
                         End;

                         ls_ReportTitle := 'HEALTH SERVICE TAX REPORT --> SUMMARY';

                         CRSno := 0;
                         CSSno := 0;
                         RFSno := 0;

                         If (DateEditX_FromDate.SystemOfDate = 0) and (DateEditX_ToDate.SystemOfDate = 0) Then
                         Begin
                              QRLabelFrom.Caption := DateEditX_FromDate.text + ' BS(' + DateEditX_FromDate.ADDateAsText + ' AD)';
                              QRLabelTo.Caption := DateEditX_ToDate.text + ' BS(' + DateEditX_ToDate.ADDateAsText + ' AD)';
                         End
                         Else If (DateEditX_FromDate.SystemOfDate = 1) and (DateEditX_ToDate.SystemOfDate = 1) Then
                         Begin
                              QRLabelFrom.Caption := DateEditX_FromDate.text + ' AD(' + DateEditX_FromDate.VSDateAsText + ' BS)';
                              QRLabelTo.Caption := DateEditX_ToDate.text + ' AD(' + DateEditX_ToDate.VSDateAsText + ' BS)';
                         End;
                         QRLabelToday.Caption := serverdate.TodaysDate;

                         QRLabelReportTitle.Caption := ls_ReportTitle;
                         QuickRep1.Preview;

                         Query_Detail.Close;
                         Query_Master.Close;
                    finally
                         QuickRep1.Free;
                    end;
               End;
          finally
               Form_Medicare_GovtSvrTaxReportSummary.Free;
          end;
     End;

end;

end.
