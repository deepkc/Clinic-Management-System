unit Unit_ReceiptDetailReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, OleCtrls, DateEditXControl_TLB,
  DB, MemDS, DBAccess, Ora,Fxn,DM,ServerDate;

type
  TForm_ReceiptDetailReport = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEditX_FromDate: TDateEditX;
    DateEditX_ToDate: TDateEditX;
    BitBtn_FromDate: TBitBtn;
    BitBtn_ToDate: TBitBtn;
    RG_PayType: TRadioGroup;
    Panel1: TPanel;
    BitBtnPreview: TBitBtn;
    BitBtnCancel: TBitBtn;
    QueryRefDoc: TOraQuery;
    DS_RefDoc: TDataSource;
    OraQuery_Hospital: TOraQuery;
    DS_Hospital: TDataSource;
    Label4: TLabel;
    Label3: TLabel;
    DBLCB_RefDocCode: TDBLookupComboBox;
    DBLCB_Hospital: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn_FromDateClick(Sender: TObject);
    procedure BitBtn_ToDateClick(Sender: TObject);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_ToXl:Boolean;
  end;

var
  Form_ReceiptDetailReport: TForm_ReceiptDetailReport;

implementation

uses Unit_QRCreditReceiptDetReport,UnitSendToExcel;

{$R *.dfm}

procedure TForm_ReceiptDetailReport.BitBtn1Click(Sender: TObject);
begin
     pb_ToXl:=True;
     BitBtnPreviewClick(Sender);
     pb_ToXl:=False;
end;

procedure TForm_ReceiptDetailReport.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_ReceiptDetailReport.BitBtnPreviewClick(Sender: TObject);
begin
     Form_QRCreditReceiptDetailReport := TForm_QRCreditReceiptDetailReport.Create(nil);
     With Form_QRCreditReceiptDetailReport do
     begin
          QRLabelFrom.Caption := DateEditX_FromDate.text;
          QRLabelTo.Caption := DateEditX_ToDate.text;
          With Query_Receipt do
          begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.Add(' SELECT ROWNUM AS SN,');
               sql.Add(' (select TRIM(REPLACE(REPLACE(REPLACE(replace(docname,''DR''),''PROF''),''.''),''(MRS)'')) from referaldoctor where doccode=CRD.REFDOCCODE) ReferalDoc,');
               sql.Add(' (select hospitalname from hospitalsetup where hospitalcode=CRD.REFHOSCODE) ReferalHos,');
               sql.Add(' CRD.* from VW_CREDITRECEIPTDETAIL CRD');
               sql.Add(' Where ReceiptDate>='+QuotedStr(DateEditX_FromDate.text)+' And ReceiptDate<='+QuotedStr(DateEditX_ToDate.text)+'');
               if DBLCB_Hospital.KeyValue<>null then
               sql.Add(' And REFHOSCODE='+QuotedStr(DBLCB_Hospital.KeyValue));
               if DBLCB_RefDocCode.KeyValue<>null then
               sql.Add(' And REFDOCCODE='+QuotedStr(DBLCB_RefDocCode.KeyValue));
               Open;
          end;
          if pb_ToXl =False  then
          qr_creditCollection.Preview
          else
          SendToExcels_query(Query_Receipt,nil,'New Department Wise Collection',DateEditX_FromDate.Text+'-'+DateEditX_ToDate.Text,'',
                           gs_HospitalName,gs_HospitalAddress,3);
     end;
end;

procedure TForm_ReceiptDetailReport.BitBtn_FromDateClick(Sender: TObject);
begin
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

procedure TForm_ReceiptDetailReport.BitBtn_ToDateClick(Sender: TObject);
begin
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

procedure TForm_ReceiptDetailReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Close;
end;

procedure TForm_ReceiptDetailReport.FormShow(Sender: TObject);
begin
     DateEditX_FromDate.SystemOfDate := gi_datesystem;
     DateEditX_FromDate.text := TodaysDate;
     DateEditX_ToDate.SystemOfDate := gi_datesystem;
     DateEditX_ToDate.text := TodaysDate;
     DateEditX_FromDate.SystemOfDate := 0;
     DateEditX_ToDate.SystemOfDate := 0;
     BitBtn_FromDate.Caption := 'BS';
     BitBtn_ToDate.Caption := 'BS';
     QueryRefDoc.Close;
     QueryRefDoc.Open;
     pb_ToXl:=False;
     OraQuery_Hospital.Close;
     OraQuery_Hospital.Open;
end;

end.
