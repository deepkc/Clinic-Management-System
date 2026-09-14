unit Unit_ReffWiseRevenue;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn,
     ServerDate,
     Dialogs, ComCtrls, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls, ExtCtrls, DB, DBTables;

type
     TForm_ReffWiseRevenue = class(TForm)
          Panel1: TPanel;
          Btn_Preview: TButton;
          Panel2: TPanel;
          Label3: TLabel;
          DBLCB_DocCode: TDBLookupComboBox;
          GroupBox1: TGroupBox;
          label2: TLabel;
          Label1: TLabel;
          BtnTo: TSpeedButton;
          BtnFrom: TSpeedButton;
          DateEditXTo: TDateEditX;
          DateEditxFrom: TDateEditX;
          StatusBar1: TStatusBar;
          Query_DocCode: TQuery;
          Ds_Doccode: TDataSource;
          Rb_Summary: TRadioButton;
          Rb_Detail: TRadioButton;
          Panel_Detail: TPanel;
          Rb_BillWise: TRadioButton;
          Rb_TestWise: TRadioButton;
          procedure Btn_PreviewClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBLCB_DocCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Rb_DetailClick(Sender: TObject);
          procedure Rb_SummaryClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_ReffWiseRevenue: TForm_ReffWiseRevenue;

implementation

uses Unit_QrReffWiseRevenueDetail, Unit_QrReffWiseRevenueSummary;
{$R *.dfm}

procedure TForm_ReffWiseRevenue.Btn_PreviewClick(Sender: TObject);
Var
     DocCode: String;
begin
     if DBLCB_DocCode.KeyValue<>Null then
     DocCode := DBLCB_DocCode.KeyValue;
     gs_From := DateEditxFrom.ADDateAsText;
     gs_to := DateEditXTo.ADDateAsText;
     if Rb_Summary.Checked then
     begin
          Try
               Form_QrReffWiseRevenueSummary := TForm_QrReffWiseRevenueSummary.Create(Nil);
               With Form_QrReffWiseRevenueSummary do
               begin
                    With Query_Data do
                    begin
                         Close;
                         DatabaseName := gs_DatabaseName;
                         SQL.Clear;
                         SQL.Add('Select * from VW_Reff_Wise_Revenue_Summary');
                         if DocCode <> '' then
                              SQL.Add('Where docCode=' + #39 + DocCode + #39)
                         else
                              SQL.Add('Where 99=99');
                         SQL.Add('and BillDate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                         SQL.Add('Order by BillDate Desc,DocCode');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := gs_From + ' AD -' + gs_to + ' AD';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QrReffWiseRevenueSummary.Free;
          End;
     end
     else if Rb_Detail.Checked then
     begin
          Try
               Form_QRReffWiseRevenueDetail := TForm_QRReffWiseRevenueDetail.Create(Nil);
               With Form_QRReffWiseRevenueDetail do
               begin
                    if Rb_BillWise.Checked then
                    begin
                         QRLabel4.Enabled := False;
                         QRShape13.Enabled := False;
                         QRDBText7.Enabled := False;
                         QRShape15.Enabled := False;
                    end
                    else if Rb_TestWise.Checked then
                    begin
                         QRLabel4.Enabled := True;
                         QRShape13.Enabled := True;
                         QRDBText7.Enabled := True;
                         QRShape15.Enabled := True;
                    end;
                    With Query_Data do
                    begin
                         Close;
                         DatabaseName := gs_DatabaseName;
                         SQL.Clear;
                         if Rb_BillWise.Checked then
                              SQL.Add(
                                   'Select PatientID,PatientName,PayType,BillNo,BillDate,Doctor,Sum(TotalAmount)TotalAmount from VW_Reff_Wise_Revenue_Detail')
                         else if Rb_TestWise.Checked then
                              SQL.Add(
                                   'Select PatientID,PatientName,PayType,BillNo,ServiceType,BillDate,Doctor,Sum(TotalAmount)TotalAmount from VW_Reff_Wise_Revenue_Detail');
                         if DocCode <> '' then
                              SQL.Add('Where RefdocCode=' + #39 + DocCode + #39)
                         else
                              SQL.Add('Where 99=99');
                         SQL.Add('and BillDate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                         if Rb_BillWise.Checked then
                              SQL.Add('Group by BillNo,PatientId,PatientName,PayType,BillDate,Doctor')
                         else if Rb_TestWise.Checked then
                              SQL.Add('Group by BillNo,ServiceType,PatientId,PatientName,PayType,BillDate,Doctor');
                         SQL.Add('Having Doctor is not null');
                         SQL.Add('Order by Doctor,BillNo');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := gs_From + ' AD -' + gs_to + ' AD';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QRReffWiseRevenueDetail.Free;
          End;
     end;
end;

procedure TForm_ReffWiseRevenue.DBLCB_DocCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     begin
          DBLCB_DocCode.KeyValue := Null;
     end;
end;

procedure TForm_ReffWiseRevenue.FormCreate(Sender: TObject);
begin
     with Query_DocCode do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          Open;
     end;
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := ServerDate.TodaysDate;
     DateEditXTo.text := ServerDate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
end;

procedure TForm_ReffWiseRevenue.Rb_DetailClick(Sender: TObject);
begin
     if Rb_Detail.Checked then
          Panel_Detail.Visible := true
     else
          Panel_Detail.Visible := False;
end;

procedure TForm_ReffWiseRevenue.Rb_SummaryClick(Sender: TObject);
begin
     if Rb_Detail.Checked then
          Panel_Detail.Visible := true
     else
          Panel_Detail.Visible := False;
end;

end.
