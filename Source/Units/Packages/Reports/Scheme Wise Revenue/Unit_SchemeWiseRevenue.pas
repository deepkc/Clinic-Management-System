unit Unit_SchemeWiseRevenue;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Fxn, ServerDate,
     Dialogs, ComCtrls,Dm, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_SchemeWiseRevenue = class(TForm)
          Panel1: TPanel;
          Btn_Preview: TButton;
          Panel2: TPanel;
    lbl_scheme: TLabel;
    DBLCB_SchemeCode: TDBLookupComboBox;
          GroupBox1: TGroupBox;
          label2: TLabel;
          Label1: TLabel;
          BtnTo: TSpeedButton;
          BtnFrom: TSpeedButton;
          DateEditXTo: TDateEditX;
          DateEditxFrom: TDateEditX;
          StatusBar1: TStatusBar;
    Query_SchemeCode: TOraQuery;
    Ds_Schemecode: TDataSource;
          Rb_Summary: TRadioButton;
          Rb_Detail: TRadioButton;
          Panel_Detail: TPanel;
          Rb_BillWise: TRadioButton;
          Rb_TestWise: TRadioButton;
    lbl_caption: TLabel;
    Dblcb_Community: TDBLookupComboBox;
    Query_Community: TOraQuery;
    Ds_Community: TDataSource;
          procedure Btn_PreviewClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure DBLCB_SchemeCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Rb_DetailClick(Sender: TObject);
          procedure Rb_SummaryClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Dblcb_CommunityClick(Sender: TObject);
    procedure Dblcb_CommunityKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_SchemeWiseRevenue: TForm_SchemeWiseRevenue;

implementation

uses Unit_QrSchemeWiseRevenueSummary, Unit_QrSchemeWiseRevenueDetail;
{$R *.dfm}

procedure TForm_SchemeWiseRevenue.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom,BtnFrom);
     ChangeDateSystem(DateEditXTo,BtnTo);
end;

procedure TForm_SchemeWiseRevenue.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom,BtnFrom);
     ChangeDateSystem(DateEditXTo,BtnTo);
end;

procedure TForm_SchemeWiseRevenue.Btn_PreviewClick(Sender: TObject);
Var
     CommunityID,Schemeid,ls_fromdate,ls_todate: String;
begin
     if Dblcb_Community.KeyValue<>Null then
     CommunityID := Dblcb_Community.KeyValue;

     if DBLCB_SchemeCode.KeyValue<>Null then
     Schemeid := DBLCB_SchemeCode.KeyValue;
     ls_fromdate:=DateEditxFrom.text;
     ls_todate:=DateEditXTo.text;
     gs_From := DateEditxFrom.ADDateAsText;
     gs_to := DateEditXTo.ADDateAsText;
     if Rb_Summary.Checked then
     begin
          Try
               Form_QrSchemeWiseRevenueSummary := TForm_QrSchemeWiseRevenueSummary.Create(Nil);
               With Form_QrSchemeWiseRevenueSummary do
               begin
                    if gs_CalledFrom='Collection Counter' then
                    begin
                         QRLabelReportTitle.Caption:='Collection Counter Wise Revenue Summary';
                    end;
                    With Query_Data do
                    begin
                         Close;
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         SQL.Add('Select * from VW_Scheme_Wise_Revenue_Summary');
                         if Schemeid <> '' then
                              SQL.Add('Where Schemeid=' + #39 + Schemeid + #39)
                         else
                              SQL.Add('Where 99=99');
                         if CommunityID <> '' then
                              SQL.Add('And CommunityID=' + #39 + CommunityID + #39)
                         else
                              SQL.Add('And 99=99');
                         SQL.Add('and BillDate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                         SQL.Add('Order by BillDate Desc,CommunityID,Schemeid');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := ls_fromdate + ' -' + ls_todate + ' ';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QrSchemeWiseRevenueSummary.Free;
          End;
     end
     else if Rb_Detail.Checked then
     begin
          Try
               Form_QRSchemeWiseRevenueDetail := TForm_QRSchemeWiseRevenueDetail.Create(Nil);
               With Form_QRSchemeWiseRevenueDetail do
               begin
                    if gs_CalledFrom='Collection Counter' then
                    begin
                         QRLabelReportTitle.Caption:='Collection Counter Wise Revenue Detail';
                    end;
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
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         if Rb_BillWise.Checked then
                              SQL.Add(
                                   'Select PatientID,CommunityName,PatientName,PayType,BillNo,BillDate,Schemename,ROUND(SUM (((Amount + VatAmt) * Qty)- (Amount * Qty * DisPer / 100)),2)AS AMOUNT from VW_Scheme_Wise_Revenue_Detail')
                         else if Rb_TestWise.Checked then
                              SQL.Add(
                                   'Select PatientID,PatientName,PayType,BillNo,ServiceType,BillDate,Schemename,ROUND (SUM (((Amount + VatAmt) * Qty)- (Amount * Qty * DisPer / 100)),2)AS AMOUNT from VW_Scheme_Wise_Revenue_Detail');
                         if Schemeid <> '' then
                              SQL.Add('Where Schemeid=' + #39 + Schemeid + #39)
                         else
                              SQL.Add('Where 99=99');
                         if CommunityID <> '' then
                              SQL.Add('And CommunityID=' + #39 + CommunityID + #39)
                         else
                              SQL.Add('And 99=99');
                         SQL.Add('and BillDate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                         if Rb_BillWise.Checked then
                              SQL.Add('Group by BillNo,PatientId,PatientName,PayType,BillDate,CommunityName,Schemename')
                         else if Rb_TestWise.Checked then
                              SQL.Add('Group by BillNo,ServiceType,PatientId,PatientName,PayType,BillDate,CommunityName,Schemename');
                         SQL.Add('Having Schemename is not null');
                         SQL.Add('Order by CommunityName,Schemename,BillNo');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := ls_fromdate + '  -' + ls_todate + ' ';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QRSchemeWiseRevenueDetail.Free;
          End;
     end;
end;

procedure TForm_SchemeWiseRevenue.Dblcb_CommunityClick(Sender: TObject);
begin
     with Query_SchemeCode do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL[1]:='Where SCHE_CommunityID='+IntToStr(Dblcb_Community.KeyValue);
          Open;
     end;
end;

procedure TForm_SchemeWiseRevenue.Dblcb_CommunityKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     begin
          Dblcb_Community.KeyValue := Null;
     end;
end;

procedure TForm_SchemeWiseRevenue.DBLCB_SchemeCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     begin
          DBLCB_SchemeCode.KeyValue := Null;
     end;
end;

procedure TForm_SchemeWiseRevenue.FormCreate(Sender: TObject);
begin
     with Query_Community do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          Open;
     end;

     if gs_CalledFrom='Collection Counter' then
     begin
          lbl_scheme.Caption:='Collection Counter';
          Dblcb_Community.Visible:=False;
          Dblcb_Community.KeyValue:=4;
          Dblcb_CommunityClick(Sender);
          lbl_caption.Visible:=False;
          Form_SchemeWiseRevenue.Caption:='Collection Counter';
     end;

     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := ServerDate.TodaysDate;
     DateEditXTo.text := ServerDate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
end;

procedure TForm_SchemeWiseRevenue.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Close;
end;

procedure TForm_SchemeWiseRevenue.Rb_DetailClick(Sender: TObject);
begin
     if Rb_Detail.Checked then
          Panel_Detail.Visible := true
     else
          Panel_Detail.Visible := False;
end;

procedure TForm_SchemeWiseRevenue.Rb_SummaryClick(Sender: TObject);
begin
     if Rb_Detail.Checked then
          Panel_Detail.Visible := true
     else
          Panel_Detail.Visible := False;
end;

end.
