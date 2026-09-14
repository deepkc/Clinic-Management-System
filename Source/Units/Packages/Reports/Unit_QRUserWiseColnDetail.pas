unit Unit_QRUserWiseColnDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_QRUserWiseCollnDetail = class(TForm)
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
    QRLabel9: TQRLabel;
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
    QRShape3: TQRShape;
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
    QRLabel8: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    QRBand5: TQRBand;
    QRExpr17: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape9: TQRShape;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel61: TQRLabel;
    QRBand3: TQRBand;
    QRExpr32: TQRExpr;
    QRLabel62: TQRLabel;
    QRBand6: TQRBand;
    QRShape2: TQRShape;
    Query_CashBill: TQuery;
    Query_CashRefund: TQuery;
    QRLabel2: TQRLabel;
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
    Query_Deposit: TQuery;
    Query_AdjustedDeposit: TQuery;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    Query_CreditRefund: TQuery;
    QRLabel11: TQRLabel;
    QRDBText34: TQRDBText;
    QRSubDetail_CreditBillRefund: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabelIPCS: TQRLabel;
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
    QRLabel40: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel26: TQRLabel;
    QRExpr28: TQRExpr;
    QRShape6: TQRShape;
    Query_ReceiptColn: TQuery;
    QRLabel14: TQRLabel;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel18: TQRLabel;
    QRExpr10: TQRExpr;
    QRDBText38: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    qrdbtxtDepositTime: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure QRLabelOPCSPrint(sender: TObject; var Value: string);
    procedure QRLabelOPRefundPrint(sender: TObject; var Value: string);
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRLabel61Print(sender: TObject; var Value: string);
    procedure QRLabelOPCrPrint(sender: TObject; var Value: string);
    procedure QRLabelIPCSPrint(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRExpr14Print(sender: TObject; var Value: string);
    procedure QRExpr17Print(sender: TObject; var Value: string);
    procedure QRExpr32Print(sender: TObject; var Value: string);
    procedure QRExpr28Print(sender: TObject; var Value: string);
    procedure QRLabel14Print(sender: TObject; var Value: string);
    procedure QRExpr10Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    pi_CashSno,pi_RefundSno,pi_DepositSno,pi_DepositRefundSno,pi_CreditSno,
    pi_CreditRefundSno,pi_ReceiptSno : Integer;

    pf_CashColn,pf_CashRefund,pf_Deposit,pf_AdjDeposit,pf_ReceiptColn : Double;
  end;

var
     Form_QRUserWiseCollnDetail: TForm_QRUserWiseCollnDetail;

implementation

{$R *.dfm}

procedure TForm_QRUserWiseCollnDetail.FormCreate(Sender: TObject);
begin
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr10Print(sender: TObject; var Value: string);
begin
     pf_ReceiptColn:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_ReceiptColn);
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr14Print(sender: TObject; var Value: string);
begin
     pf_CashRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CashRefund);
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr17Print(sender: TObject; var Value: string);
begin
     pf_Deposit:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_Deposit);
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr28Print(sender: TObject; var Value: string);
begin
     Value:=FormatFloat('#,##0.00',((pf_CashColn+pf_Deposit+pf_ReceiptColn) - (pf_AdjDeposit+pf_CashRefund)));
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr32Print(sender: TObject; var Value: string);
begin
     pf_AdjDeposit:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_AdjDeposit);
end;

procedure TForm_QRUserWiseCollnDetail.QRExpr3Print(sender: TObject; var Value: string);
begin
     pf_CashColn:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CashColn);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabel14Print(sender: TObject; var Value: string);
begin
     pi_ReceiptSno:=pi_ReceiptSno+1;
     Value:=IntToStr(pi_ReceiptSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabel2Print(sender: TObject; var Value: string);
begin
     pi_DepositSno:=pi_DepositSno+1;
     Value:=IntToStr(pi_DepositSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabel61Print(sender: TObject; var Value: string);
begin
     pi_DepositRefundSno:=pi_DepositRefundSno+1;
     Value:=IntToStr(pi_DepositRefundSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabelIPCSPrint(sender: TObject; var Value: string);
begin
     pi_CreditRefundSno:=pi_CreditRefundSno+1;
     Value:=IntToStr(pi_CreditRefundSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabelOPCrPrint(sender: TObject; var Value: string);
begin
     pi_CreditSno:=pi_CreditSno+1;
     Value:=IntToStr(pi_CreditSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabelOPCSPrint(sender: TObject; var Value: string);
begin
     pi_CashSno:=pi_CashSno+1;
     Value:=IntToStr(pi_CashSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabelOPRefundPrint(sender: TObject; var Value: string);
begin
     pi_RefundSno:=pi_RefundSno+1;
     Value:=IntToStr(pi_RefundSno);
end;

procedure TForm_QRUserWiseCollnDetail.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

end.
