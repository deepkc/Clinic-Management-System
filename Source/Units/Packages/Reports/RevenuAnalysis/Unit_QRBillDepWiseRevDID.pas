unit Unit_QRBillDepWiseRevDID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, Fxn, DM;

type
  TFormQRBillDepWiseRevDID = class(TForm)
    QR_IPREVENUEDID: TQuickRep;
    QRSubDetail: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    TitleBand1: TQRBand;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel_RepTitle: TQRLabel;
    QuickRep3: TQuickRep;
    QRBand5: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand6: TQRBand;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel44: TQRLabel;
    QRExpr13: TQRExpr;
    QRBand7: TQRBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRBand8: TQRBand;
    QRLabel47: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel48: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel49: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel52: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel53: TQRLabel;
    QRDBText17: TQRDBText;
    QRGroup3: TQRGroup;
    QRLabel_HosName: TQRLabel;
    QRLabel_HosSloganTitle: TQRLabel;
    QRLabel_HosAddress: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel_SvrTaxCap: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRLabel_PrintDate: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape3: TQRShape;
    QRLabel34: TQRLabel;
    QRShape4: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape6: TQRShape;
    QRExpr31: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr26: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr10: TQRExpr;
    QRShape7: TQRShape;
    QRExpr16: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr30: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    Query_RevDID: TOraQuery;
    QueryDeposit: TOraQuery;
    Query_CrAdjustDeposit: TOraQuery;
    procedure QRExpr22Print(sender: TObject; var Value: string);
    procedure QRExpr28Print(sender: TObject; var Value: string);
    procedure QRExpr10Print(sender: TObject; var Value: string);
    procedure QRExpr30Print(sender: TObject; var Value: string);
    procedure QRExpr31Print(sender: TObject; var Value: string);
    procedure QRExpr23Print(sender: TObject; var Value: string);
    procedure QRExpr26Print(sender: TObject; var Value: string);
    procedure QRExpr8Print(sender: TObject; var Value: string);
    procedure QRExpr9Print(sender: TObject; var Value: string);
    procedure QR_IPREVENUEDIDBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRExpr17Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    pi_Sno:Integer;
      pf_CreditDuesAmount,pf_NetRealizedRev, pf_DepositTotal, pf_AdjDepositTotal, pf_TotalCollection : Double;
      Phar_crAmt,pf_IPRefund, pf_CommunityRefund,pf_creditpayment: Double;
      b_IsShowSubDept:Boolean;
  end;

var
  FormQRBillDepWiseRevDID: TFormQRBillDepWiseRevDID;

implementation

{$R *.dfm}

procedure TFormQRBillDepWiseRevDID.QRExpr10Print(sender: TObject;
  var Value: string);
begin
     pf_creditpayment:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_creditpayment);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr17Print(sender: TObject;
  var Value: string);
begin
     pf_NetRealizedRev:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_NetRealizedRev);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr22Print(sender: TObject;
  var Value: string);
begin
      pf_NetRealizedRev:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_NetRealizedRev);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr23Print(sender: TObject;
  var Value: string);
begin
     //pf_IPRefund:=StrToFloat(Value)+Phar_crAmt;
     //Value:=FormatFloat('#,##0.00',pf_IPRefund);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr26Print(sender: TObject;
  var Value: string);
begin
      pf_CommunityRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CommunityRefund);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr28Print(sender: TObject;
  var Value: string);
begin
     pf_creditpayment:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_creditpayment);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr30Print(sender: TObject;
  var Value: string);
begin
     pf_AdjDepositTotal:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_AdjDepositTotal);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr31Print(sender: TObject;
  var Value: string);
begin
    pf_CreditDuesAmount:=StrToFloat(Value);
     Value:=FormatFloat('0.00',pf_CreditDuesAmount);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr8Print(sender: TObject;
  var Value: string);
begin
     //Value:=FormatFloat('0.00',pf_TotalCollection-(pf_CreditDuesAmount+pf_AdjDepositTotal+pf_CommunityRefund+pf_IPRefund));
     Value:=FormatFloat('0.00',pf_TotalCollection-pf_AdjDepositTotal);
end;

procedure TFormQRBillDepWiseRevDID.QRExpr9Print(sender: TObject;
  var Value: string);
begin
     pf_AdjDepositTotal:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_AdjDepositTotal);
end;

procedure TFormQRBillDepWiseRevDID.QR_IPREVENUEDIDBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     pi_Sno:=0;
     pf_TotalCollection:=0;
     pf_CreditDuesAmount:=0;
     pf_AdjDepositTotal:=0;
     pf_CommunityRefund:=0;
     pf_IPRefund:=0;
     pf_NetRealizedRev:=0;
end;

end.
