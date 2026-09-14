unit Unit_CashCreditSalesReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Buttons, OleCtrls, DateEditXControl_TLB,
  DB, MemDS, DBAccess, Ora, DM, DBTables;

type
  TForm_CashCreditSalesReport = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DateEditX_FromDate: TDateEditX;
    DateEditX_ToDate: TDateEditX;
    BitBtn_FromDate: TBitBtn;
    BitBtn_ToDate: TBitBtn;
    RG_PayType: TRadioGroup;
    DS_RefDoc: TDataSource;
    QueryRefDoc: TOraQuery;
    OraQuery_Hospital: TOraQuery;
    DS_Hospital: TDataSource;
    Label4: TLabel;
    Label3: TLabel;
    DBLCB_RefDocCode: TDBLookupComboBox;
    DBLCB_Hospital: TDBLookupComboBox;
    Panel1: TPanel;
    BitBtnPreview: TBitBtn;
    BitBtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    Query_TotalForeXcel: TQuery;
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn_FromDateClick(Sender: TObject);
    procedure BitBtn_ToDateClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_ToXl:Boolean;
  end;

var
  Form_CashCreditSalesReport: TForm_CashCreditSalesReport;

implementation

uses Unit_QRCashCreditSales,Fxn,ServerDate,UnitSendToExcel;

{$R *.dfm}

procedure TForm_CashCreditSalesReport.BitBtn1Click(Sender: TObject);
begin
     pb_ToXl:=True;
     BitBtnPreviewClick(Sender);
     pb_ToXl:=False;
end;

procedure TForm_CashCreditSalesReport.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_CashCreditSalesReport.BitBtnPreviewClick(Sender: TObject);
begin
     Form_QRCashCreditSales:=TForm_QRCashCreditSales.Create(NIL);
     try
          with Form_QRCashCreditSales do
          begin
               QRLabelFrom.Caption := DateEditX_FromDate.text;
               QRLabelTo.Caption := DateEditX_ToDate.text;
               With Query_CashCredit do
               begin
                    Close;
                    Session:= DM_Hospital.DB;
                    sql.Clear;
                    sql.Add(' Select ROWNUM AS SN, CCS.* from vw_cashcreditsale CCS ') ;
                    sql.Add(' Where billdate >='+QuotedStr(DateEditX_FromDate.text)+' and billdate<='+QuotedStr(DateEditX_ToDate.text)+'');
                    if DBLCB_RefDocCode.KeyValue<>NULL then
                    SQL.Add(' AND REFDOCCODE='+QuotedStr(DBLCB_RefDocCode.KeyValue));
                    if DBLCB_Hospital.KeyValue<>NULL then
                    SQL.Add(' AND REFHOSCODE='+QuotedStr(DBLCB_Hospital.KeyValue));
                    if RG_PayType.ItemIndex=0 then
                    SQL.Add(' AND PAYTYPE=''CASH''')
                    else if RG_PayType.ItemIndex=1 then
                    SQL.Add(' AND PAYTYPE=''CREDIT''')
                    else
                    SQL.Add(' aND 1=1');
                    sql.SaveToFile('jpt.txt');
                    Open;
               end;

               with Query_Refund do
               Begin
                    Close;

                    SQL[1] := 'where refunddate>=' +QuotedStr(DateEditX_FromDate.text)+'and refunddate<='+QuotedStr(DateEditX_ToDate.text);
                    //SQL[2] := 'order by billno';
                    sql.SaveToFile('jpt1.txt');
                    Open;
               End;


               if pb_ToXl=False then
               qr_cashCreditSales.Preview
               else
               begin
                  (*  With Query_TotalForeXcel do
                    begin
                         Close;
                         DatabaseName := gs_DatabaseName;
                         sql.Clear;
                         sql.Add(' Select sum(amount)amount,sum(discount)discount,sum(grossamount)grossamount,sum(hst)hst,sum(total)total from(');
                         sql.Add(' Select sum(amount)amount,sum(discount)discount,sum(grossamount)grossamount,sum(hst)hst,sum(total)total');
                         sql.Add(' from  vw_cashcreditsale CCS Where billdate >='++' and billdate<='++'');
                         if DBLCB_RefDocCode.KeyValue<>NULL then
                         SQL.Add(' AND REFDOCCODE='+QuotedStr(DBLCB_RefDocCode.KeyValue));
                         if DBLCB_Hospital.KeyValue<>NULL then
                         SQL.Add(' AND REFHOSCODE='+QuotedStr(DBLCB_Hospital.KeyValue));
                         if RG_PayType.ItemIndex=0 then
                         SQL.Add(' AND PAYTYPE=''CASH''')
                         else if RG_PayType.ItemIndex=1 then
                         SQL.Add(' AND PAYTYPE=''CREDIT''')
                         else
                         SQL.Add(' aND 1=1');
                         sql.add('union');
                         sql.Add('select -sum(gross)amount,-sum(discount)discount,-sum(subtotal)grossamount,-sum(hst)hst,-sum(nettotal)total from ');
                         sql.add('VW_REFUNDDETAIL RD where refunddate>=' +QuotedStr(DateEditX_FromDate.text)+'and refunddate<='+QuotedStr(DateEditX_ToDate.text));
                         sql.SaveToFile('jpt1.txt');
                         Open;
                    end; *)
               SendToExcelsMultiQuery(Query_CashCredit,Query_Refund,nil,nil,nil,nil,'Cash Credit Sales Report',
               '','','','','',DateEditX_FromDate.Text+'-'+DateEditX_ToDate.Text,'',gs_HospitalName,gs_HospitalAddress,2,13);
               end;

          end;
     finally
            Form_QRCashCreditSales.Free;
     end;
end;

procedure TForm_CashCreditSalesReport.BitBtn_FromDateClick(Sender: TObject);
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

procedure TForm_CashCreditSalesReport.BitBtn_ToDateClick(Sender: TObject);
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

procedure TForm_CashCreditSalesReport.FormShow(Sender: TObject);
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
     pb_ToXl :=False;

     OraQuery_Hospital.Close;
     OraQuery_Hospital.Open;
end;

end.
