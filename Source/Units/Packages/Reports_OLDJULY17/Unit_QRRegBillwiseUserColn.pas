unit Unit_QRRegBillwiseUserColn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_QRRegBillwiseUserColn = class(TForm)
    QuickRep1: TQuickRep;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabelOPCS: TQRLabel;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabelOPRefund: TQRLabel;
    QRBand4: TQRBand;
    QRShape7: TQRShape;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelUser: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    Date1: TQRLabel;
    Date2: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabelTimeRange: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel_HosName: TQRLabel;
    lbl_address: TQRLabel;
    QRShape4: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    Query_CashBill: TQuery;
    Query_CashRefund: TQuery;
    QRLabel25: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel28: TQRLabel;
    QRExpr15: TQRExpr;
    Query_CreditBill: TQuery;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText21: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr18: TQRExpr;
    Query_CreditRefund: TQuery;
    QRDBText34: TQRDBText;
    QRSubDetail_CreditBillRefund: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel_CrReundNo: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRExpr16: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRLabelOPCr: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText22: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel_TotalPage: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr30: TQRExpr;
    QRShape8: TQRShape;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure QRLabelOPCSPrint(sender: TObject; var Value: string);
    procedure QRLabelOPRefundPrint(sender: TObject; var Value: string);
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRLabel61Print(sender: TObject; var Value: string);
    procedure QRLabelOPCrPrint(sender: TObject; var Value: string);
    procedure QRLabel_CrReundNoPrint(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRExpr14Print(sender: TObject; var Value: string);
    procedure QRExpr17Print(sender: TObject; var Value: string);
    procedure QRExpr32Print(sender: TObject; var Value: string);
    procedure QRExpr28Print(sender: TObject; var Value: string);
    procedure QRLabel14Print(sender: TObject; var Value: string);
    procedure QRExpr10Print(sender: TObject; var Value: string);
    procedure QRLabel23Print(sender: TObject; var Value: string);
    procedure QRExpr26Print(sender: TObject; var Value: string);
    procedure QRLabel11Print(sender: TObject; var Value: string);
    procedure QRExpr29Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    pi_CashSno,pi_CashSnoIp,pi_RefundSno,pi_DepositSno,pi_DepositRefundSno,pi_CreditSno,
    pi_CreditRefundSno,pi_ReceiptSno,pi_ReceiptRefundSno, pi_ServiceTPSno : Integer;

    pf_CashColn,pf_CashColnIp,pf_CashRefund,pf_Deposit,pf_AdjDeposit,pf_ReceiptColn,pf_ReceiptRefund : Double;
  end;

var
     Form_QRRegBillwiseUserColn: TForm_QRRegBillwiseUserColn;

implementation

{$R *.dfm}

procedure TForm_QRRegBillwiseUserColn.FormCreate(Sender: TObject);
begin
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr10Print(sender: TObject; var Value: string);
begin
     pf_ReceiptColn:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_ReceiptColn);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr14Print(sender: TObject; var Value: string);
begin
     pf_CashRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CashRefund);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr17Print(sender: TObject; var Value: string);
begin
     pf_Deposit:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_Deposit);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr26Print(sender: TObject;
  var Value: string);
begin
    pf_CashColnIp:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CashColnIp);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr28Print(sender: TObject; var Value: string);
begin
     Value:=FormatFloat('#,##0.00',((pf_CashColn+pf_CashColnIp+pf_Deposit+pf_ReceiptColn) - (pf_AdjDeposit+pf_CashRefund+pf_ReceiptRefund)));
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr29Print(sender: TObject;
  var Value: string);
begin
     pf_ReceiptRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_ReceiptRefund);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr32Print(sender: TObject; var Value: string);
begin
     pf_AdjDeposit:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_AdjDeposit);
end;

procedure TForm_QRRegBillwiseUserColn.QRExpr3Print(sender: TObject; var Value: string);
begin
     pf_CashColn:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CashColn);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel11Print(sender: TObject;
  var Value: string);
begin
     pi_ReceiptRefundSno:=pi_ReceiptRefundSno+1;
     Value:=IntToStr(pi_ReceiptRefundSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel14Print(sender: TObject; var Value: string);
begin
     pi_ReceiptSno:=pi_ReceiptSno+1;
     Value:=IntToStr(pi_ReceiptSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel23Print(sender: TObject;
  var Value: string);
begin
     pi_CashSnoIp:=pi_CashSnoIp+1;
     Value:=IntToStr(pi_CashSnoIP);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel2Print(sender: TObject; var Value: string);
begin
     pi_DepositSno:=pi_DepositSno+1;
     Value:=IntToStr(pi_DepositSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel61Print(sender: TObject; var Value: string);
begin
     pi_DepositRefundSno:=pi_DepositRefundSno+1;
     Value:=IntToStr(pi_DepositRefundSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel_CrReundNoPrint(sender: TObject; var Value: string);
begin
     pi_CreditRefundSno:=pi_CreditRefundSno+1;
     Value:=IntToStr(pi_CreditRefundSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabelOPCrPrint(sender: TObject; var Value: string);
begin
     pi_CreditSno:=pi_CreditSno+1;
     Value:=IntToStr(pi_CreditSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabelOPCSPrint(sender: TObject; var Value: string);
begin
     pi_CashSno:=pi_CashSno+1;
     Value:=IntToStr(pi_CashSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabelOPRefundPrint(sender: TObject; var Value: string);
begin
     pi_RefundSno:=pi_RefundSno+1;
     Value:=IntToStr(pi_RefundSno);
end;

procedure TForm_QRRegBillwiseUserColn.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

end.
