unit Unit_CollectionCenterReport;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Fxn, ServerDate,
     Dialogs, ComCtrls, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_CollectionCenterReport = class(TForm)
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
    procedure FormShow(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_CollectionCenterReport: TForm_CollectionCenterReport;

implementation

uses Unit_QrCollectionCenterSummary, Unit_QrCollectionCenterDetail,DM;

{$R *.dfm}

procedure TForm_CollectionCenterReport.Btn_PreviewClick(Sender: TObject);
Var
     CommunityID,Schemeid: String;
begin
     if Dblcb_Community.KeyValue<>Null then
     CommunityID := Dblcb_Community.KeyValue;

     if DBLCB_SchemeCode.KeyValue<>Null then
     Schemeid := DBLCB_SchemeCode.KeyValue;

     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     gs_From := DateEditxFrom.text;
     gs_to := DateEditXTo.text;
     DateEditxFrom.SystemOfDate := 0;
     DateEditXTo.SystemOfDate := 0;
     BtnFrom.Caption := 'BS';
     BtnTo.Caption := 'BS';
     if Rb_Summary.Checked then
     begin
          Try
               Form_QrCollectionCenterSummary := TForm_QrCollectionCenterSummary.Create(Nil);
               With Form_QrCollectionCenterSummary do
               begin
                    With Query_Data do
                    begin
                         Close;
                         Session:=dm_Hospital.DB;
                         SQL.Clear;
                         SQL.Add('SELECT REFERENCETYPE COLLECTIONCENTER,SUM(DRAMOUNT)DEPOSIT,SUM(CRAMOUNT)BILLAMOUNT,SUM(DRAMOUNT-CRAMOUNT)BALANCE FROM VW_COLLECTION_CENTER_REPORT');
                         if Schemeid <> '' then
                              SQL.Add('Where Schemeid=' + #39 + Schemeid + #39)
                         else
                              SQL.Add('Where 99=99');
//                         if CommunityID <> '' then
//                              SQL.Add('And CommunityID=' + #39 + CommunityID + #39)
//                         else
//                              SQL.Add('And 99=99');
                         SQL.Add('AND DEPOSITDATE BETWEEN ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                        // SQL.Add('AND SCHEMEID IN (SELECT SCHEMEID FROM SCHEME WHERE COMMUNITYID=4)');
                         SQL.Add('GROUP BY REFERENCETYPE');
                         SQL.Add('ORDER BY REFERENCETYPE');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := gs_From + ' AD -' + gs_to + ' AD';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QrCollectionCenterSummary.Free;
          End;
     end
     else if Rb_Detail.Checked then
     begin
          if Schemeid='' then
          begin
               ShowMessage('Please select collection center');
               exit;
          end;
          Try
               Form_QRCollectionCenterDetail := TForm_QRCollectionCenterDetail.Create(Nil);
               With Form_QRCollectionCenterDetail do
               begin
                    QRLabelReportTitle.Caption:='COLLECTION CENTER DETAIL ('+DBLCB_SchemeCode.Text+')';
                    With Query_Data do
                    begin
                         Close;
                         Session :=DM_Hospital.DB;
                         SQL.Clear;
                         SQL.Add('SELECT REFERENCETYPE,DEPOSITDATE,DRAMOUNT,CRAMOUNT,DEPOSITNO,REFERENCENO,USERNAME,PATIENTID');
                         SQL.Add(',(SELECT PATIENTNAME FROM PATIENTMAIN WHERE PATIENTID=CC.PATIENTID)PATIENTNAME,REMARKS');
                         SQL.Add('FROM VW_COLLECTION_CENTER_REPORT CC');
                         if Schemeid <> '' then
                              SQL.Add('Where Schemeid=' + #39 + Schemeid + #39)
                         else
                              SQL.Add('Where 99=99');
//                         if CommunityID <> '' then
//                              SQL.Add('And CommunityID=' + #39 + CommunityID + #39)
//                         else
//                              SQL.Add('And 99=99');
                         SQL.Add('AND DEPOSITDATE BETWEEN ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39);
                         SQL.Add('ORDER BY DEPOSITDATE,REFERENCENO');
                         Open;
                         lbl_hosname.Caption := gs_HospitalName;
                         lbl_hosaddress.Caption := gs_HospitalAddress;
                         lbl_date.Caption := gs_From + ' AD -' + gs_to + ' AD';
                    end;
                    QuickRep1.Preview;
               end;
          Finally
               Form_QRCollectionCenterDetail.Free;
          End;
     end;
end;

procedure TForm_CollectionCenterReport.Dblcb_CommunityClick(Sender: TObject);
begin
     with Query_SchemeCode do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL[1]:='Where CommunityID='+IntToStr(Dblcb_Community.KeyValue);
          Open;
     end;
end;

procedure TForm_CollectionCenterReport.Dblcb_CommunityKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     begin
          Dblcb_Community.KeyValue := Null;
     end;
end;

procedure TForm_CollectionCenterReport.DBLCB_SchemeCodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
     begin
          DBLCB_SchemeCode.KeyValue := Null;
     end;
end;

procedure TForm_CollectionCenterReport.FormCreate(Sender: TObject);
begin
     with Query_Community do
     begin
          Close;
          Session:=DM_Hospital.DB;
          Open;
     end;

     if gs_CalledFrom='Collection Counter' then
     begin
          lbl_scheme.Caption:='Collection Counter';
          Dblcb_Community.Visible:=False;
          Dblcb_Community.KeyValue:=4;
          Dblcb_CommunityClick(Sender);
          lbl_caption.Visible:=False;
     end;

     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := ServerDate.TodaysDate;
     DateEditXTo.text := ServerDate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
end;

procedure TForm_CollectionCenterReport.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Close;
end;

procedure TForm_CollectionCenterReport.FormShow(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := serverdate.TodaysDate;
     DateEditXTo.text := serverdate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     DateEditxFrom.SystemOfDate := 0;
     DateEditXTo.SystemOfDate := 0;
     BtnFrom.Caption := 'BS';
     BtnTo.Caption := 'BS';
end;

procedure TForm_CollectionCenterReport.Rb_DetailClick(Sender: TObject);
begin
//     if Rb_Detail.Checked then
//          Panel_Detail.Visible := true
//     else
//          Panel_Detail.Visible := False;
end;

procedure TForm_CollectionCenterReport.Rb_SummaryClick(Sender: TObject);
begin
//     if Rb_Detail.Checked then
//          Panel_Detail.Visible := true
//     else
//          Panel_Detail.Visible := False;
end;

end.
