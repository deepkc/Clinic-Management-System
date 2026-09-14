unit Unit_QRCashCreditSalesTestBioDiag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora;

type
  TForm_QRCashCreditSalesTestBioDiag = class(TForm)
    qr_cashCreditSales: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel_Add: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    Query_CashCredit: TOraQuery;
    Query_Refund: TOraQuery;
    dbsno: TQRDBText;
    dbInvDate: TQRDBText;
    dbInvNo: TQRDBText;
    dbPatientNam: TQRDBText;
    dbAmt: TQRDBText;
    dbVat: TQRDBText;
    dbTotl: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape26: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape36: TQRShape;
    QRExpr4: TQRExpr;
    QRShape35: TQRShape;
    QRShape40: TQRShape;
    QRShape34: TQRShape;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRShape45: TQRShape;
    Band2: TQRBand;
    QRLabel22: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape46: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape43: TQRShape;
    QRShape55: TQRShape;
    QRShape44: TQRShape;
    QRShape60: TQRShape;
    QRShape47: TQRShape;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRExpr5: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape66: TQRShape;
    QRDBText7: TQRDBText;
    procedure QRLabel16Print(sender: TObject; var Value: string);
    procedure QRLabel_AddPrint(sender: TObject; var Value: string);
    procedure QRLabel40Print(sender: TObject; var Value: string);
    procedure QRExpr2Print(sender: TObject; var Value: string);
    procedure QRExpr11Print(sender: TObject; var Value: string);
    procedure QRExpr5Print(sender: TObject; var Value: string);
    procedure QRExpr16Print(sender: TObject; var Value: string);
    procedure QRExpr6Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRExpr17Print(sender: TObject; var Value: string);
    procedure QRExpr7Print(sender: TObject; var Value: string);
    procedure QRExpr1Print(sender: TObject; var Value: string);
    procedure QRExpr23Print(sender: TObject; var Value: string);
    procedure QRExpr8Print(sender: TObject; var Value: string);
    procedure QRExpr4Print(sender: TObject; var Value: string);
    procedure QRExpr24Print(sender: TObject; var Value: string);
    procedure QRExpr9Print(sender: TObject; var Value: string);
    procedure QRExpr10Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
  pf_amount,pf_refundedamount,pf_Discount,pf_RefDiscount,pf_refgross,pf_gross,
  pf_refhst,pf_hst,pf_reftotal,pf_total:double;
    { Public declarations }
  end;

var
  Form_QRCashCreditSalesTestBioDiag: TForm_QRCashCreditSalesTestBioDiag;

implementation

uses Fxn;

{$R *.dfm}

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr10Print(sender: TObject;
  var Value: string);
begin
     pf_Discount:=strtofloat(Value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr11Print(sender: TObject;
  var Value: string);
begin
     pf_refundedamount:=StrToFloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr16Print(sender: TObject;
  var Value: string);
begin
     pf_RefDiscount:=StrToFloat(Value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr17Print(sender: TObject;
  var Value: string);
begin
     pf_refgross:=StrToFloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr1Print(sender: TObject;
  var Value: string);
begin
     pf_hst:=strtofloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr23Print(sender: TObject;
  var Value: string);
begin
     pf_refhst:=strtofloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr24Print(sender: TObject;
  var Value: string);
begin
     pf_reftotal:=strtofloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr2Print(sender: TObject;
  var Value: string);
begin
     pf_amount:=StrToFloat(Value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr3Print(sender: TObject;
  var Value: string);
begin
     pf_gross:=StrToFloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr4Print(sender: TObject;
  var Value: string);
begin
     pf_Total:=strtofloat(value);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr5Print(sender: TObject;
  var Value: string);
begin
     Value:=FloatToStr(pf_amount-pf_refundedamount);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr6Print(sender: TObject;
  var Value: string);
begin
     Value:=FloatToStr(pf_Discount-pf_refdiscount);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr7Print(sender: TObject;
  var Value: string);
begin
     Value:=FloatToStr(pf_gross-pf_refgross);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr8Print(sender: TObject;
  var Value: string);
begin
     Value:=FloatToStr(pf_hst-pf_refhst);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRExpr9Print(sender: TObject;
  var Value: string);
begin
     Value:=FloatToStr(pf_total-pf_reftotal);
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRLabel16Print(sender: TObject;
  var Value: string);
begin
     value:= gs_HospitalName;
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRLabel40Print(sender: TObject;
  var Value: string);
begin
     Value := '';
end;

procedure TForm_QRCashCreditSalesTestBioDiag.QRLabel_AddPrint(sender: TObject;
  var Value: string);
begin
     Value := gs_HospitalAddress;
end;

end.
