unit UnitReportBillDepWiseSumaryIPOP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn, DM ;

type
  TFormReportBillDepWiseSumaryIPOP = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    SummaryBand2: TQRBand;
    QRLabel56: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr19: TQRExpr;
    QRShape6: TQRShape;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    Query_TempCollection: TOraQuery;
    Query_TempCollectionDepartment: TStringField;
    Query_TempCollectionRevTotal: TFloatField;
    Query_TempCollectionCreditTotal: TFloatField;
    Query_TempCollectionTotalAmt: TFloatField;
    Query_TempCollectionDiscount: TFloatField;
    Query_TempCollectionCSExDuty: TFloatField;
    Query_TempCollectionCRExDuty: TFloatField;
    Query_TempCollectionRefundTotal: TFloatField;
    Query_TempCollectionRFExDuty: TFloatField;
    Query_TempCollectionRefDiscount: TFloatField;
    Query_TempCollectionNetAmt: TFloatField;
    QRExpr1: TQRExpr;
    DetailBand1: TQRBand;
    QRLabelSno: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr10: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRExpr18: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr9: TQRExpr;
    Query_TempCollectionGrossRevTotal: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr22: TQRExpr;
    QRLabel25: TQRLabel;
    QRExpr25: TQRExpr;
    QRShape2: TQRShape;
    QRLabel34: TQRLabel;
    QRShape3: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape4: TQRShape;
    QRExpr31: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QueryDeposit: TOraQuery;
    QueryAdjustedDeposit: TOraQuery;
    Query_CommunityRefund: TOraQuery;
    QueryDepositDEPOSIT: TFloatField;
    QueryAdjustedDepositADJUSTEDDEPOSIT: TFloatField;
    Query_CommunityRefundREFUNDTOTAL: TFloatField;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabel39: TQRLabel;
    Query_DisRefAmt: TOraQuery;
    Query_CreditRefund: TOraQuery;
    Query_CreditRefundCRREFUNDTOTAL: TFloatField;
    QRLabel2: TQRLabel;
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure Query_TempCollectionAfterScroll(DataSet: TDataSet);
    procedure Query_TempCollectionBeforeScroll(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRExpr31Print(sender: TObject; var Value: String);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure QRExpr22Print(sender: TObject; var Value: String);
    procedure QRLabel35Print(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QRLabel39Print(sender: TObject; var Value: String);
    procedure QRLabel32Print(sender: TObject; var Value: String);
  private

  public
    pi_Sno:Integer;
    Cash_Amt,Credit_Amt,Total,Free_Amt,Tax_Cash,Tax_Credit,Ref_Amt,Tax_Ref,Free_Ref,Net_Amount:Double;
    pf_CreditDuesAmount,Net_Rez_rev,Dep_Amt,Adj_Deposit,Dep_IpRef,Comm_IpRef,Tem_Data:Double;
  end;

var
  FormReportBillDepWiseSumaryIPOP: TFormReportBillDepWiseSumaryIPOP;

implementation

{$R *.DFM}

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel8Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel9Print(sender: TObject;
  var Value: String);
begin
   value:=gs_HosSloganTitle;
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel14Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

procedure TFormReportBillDepWiseSumaryIPOP.Query_TempCollectionAfterScroll(
  DataSet: TDataSet);
begin
   Inc(pi_Sno);
end;

procedure TFormReportBillDepWiseSumaryIPOP.Query_TempCollectionBeforeScroll(
  DataSet: TDataSet);
begin
    QRLabelSno.Caption:=IntToStr(pi_Sno);
end;

procedure TFormReportBillDepWiseSumaryIPOP.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   pi_Sno:=1;
   Cash_Amt:=0;
   Credit_Amt:=0;
   Total:=0;
   Free_Amt:=0;
   Tax_Cash:=0;
   Tax_Credit:=0;
   Ref_Amt:=0;
   Tax_Ref:=0;
   Free_Ref:=0;
   Net_Amount:=0;
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRExpr31Print(sender: TObject;
  var Value: String);
begin
   Value:=FormatFloat('#,##0.00',pf_CreditDuesAmount);
end;
procedure TFormReportBillDepWiseSumaryIPOP.QRExpr11Print(sender: TObject;
  var Value: String);
begin
      Dep_IpRef:=StrToFloat(Value);
     //Dep_IpRef:=StrToFloat(Value)-Query_CreditRefund.FieldbyName('CrRefundTotal') .AsFloat;
     //QRLabel2.Caption:='( '+Value+' - '+Query_CreditRefund.FieldbyName('CrRefundTotal') .AsString+' )';
     Value:=FormatFloat('#,##0.00',Dep_IpRef);
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRExpr22Print(sender: TObject;
  var Value: String);
begin
     Net_Rez_rev:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',Net_Rez_rev);
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel35Print(sender: TObject;
  var Value: String);
begin
    Value:=FormatFloat('#,##0.00',Net_Rez_rev+Dep_Amt);
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel36Print(sender: TObject;
  var Value: String);
begin
     Adj_Deposit:=QueryAdjustedDeposit.FieldbyName('AdjustedDeposit') .AsFloat;
     IF (QRLabelFrom.Caption<='2008/04/04') And (QRLabelTo.caption>='2008/04/04') Then
     Adj_Deposit:=Adj_Deposit+1102.5; //Reason..due to the some problem in this sotware at this date..The Refund amount is not
                                      //Properly deducated from the patient deposit i.e.of IPNO.108612 BillNo=PA64/65-0027321
                                      //so to manage this i write the above code

     //Adj_Deposit:=Adj_Deposit-Query_DisRefAmt.FieldbyName('RefundDeposit') .Asfloat;
     Value:=FormatFloat('#,##0.00',Adj_Deposit);
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel38Print(sender: TObject;
  var Value: String);
begin
     Comm_IpRef:=Query_CommunityRefund.FieldbyName('REFUNDTOTAL') .AsFloat;
     Value:=FormatFloat('#,##0.00',Comm_IpRef);
end;
procedure TFormReportBillDepWiseSumaryIPOP.QRLabel39Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',(Net_Rez_rev+Dep_Amt-(Adj_Deposit+pf_CreditDuesAmount+Dep_IpRef+Comm_IpRef)));
end;

procedure TFormReportBillDepWiseSumaryIPOP.QRLabel32Print(sender: TObject;
  var Value: String);
begin
     Dep_Amt:=QueryDeposit.FieldbyName('Deposit') .AsFloat;
     Value:=FormatFloat('#,##0.00',Dep_Amt);
end;

end.
