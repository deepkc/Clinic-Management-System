unit UnitReportBillDepWiseSumaryIPLandscape;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, Fxn, DM;

type
  TFormReportBillDepWiseSumaryIPLandScape = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    SummaryBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QueryDeposit: TOraQuery;
    TitleBand1: TQRBand;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
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
    QRSubDetail3: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
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
    QRDBText21: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    Query_RevenueCollection: TOraQuery;
    QRLabel10: TQRLabel;
    QRExpr7: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel23: TQRLabel;
    QRExpr22: TQRExpr;
    QRExpr25: TQRExpr;
    QRLabelSno: TQRLabel;
    Query_CommunityRefund: TOraQuery;
    QRShape2: TQRShape;
    Query_CommunityRefundREFUNDTOTAL: TFloatField;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText4: TQRDBText;
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
    QRLabel56: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr20: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr21: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr19: TQRExpr;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    Query_TotalSummary: TOraQuery;
    Query_CrDischargedPtDeposit: TOraQuery;
    QueryDepositDEPOSIT: TFloatField;
    QueryDepositADJUSTEDDEPOSIT: TFloatField;
    Query_CrAdjustDeposit: TOraQuery;
    Query_CrAdjustDepositCRADJUSTEDDEPOSIT: TFloatField;
    Query_CreditPayment: TOraQuery;
    QRLabel25: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape3: TQRShape;
    QRExpr29: TQRExpr;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape4: TQRShape;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr23: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr9: TQRExpr;
    QRLabel26: TQRLabel;
    QRLabel_PrintDate: TQRLabel;
    QRLabel_HosName: TQRLabel;
    QRLabel_HosSloganTitle: TQRLabel;
    QRLabel_HosAddress: TQRLabel;
    procedure QRLabel8Print(sender: TObject; var Value: String);
    procedure QRLabel9Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure Query_RevenueCollectionAfterScroll(DataSet: TDataSet);
    procedure Query_RevenueCollectionBeforeScroll(DataSet: TDataSet);
    procedure QuickRep1EndPage(Sender: TCustomQuickRep);
    procedure QRExpr31Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRExpr29Print(sender: TObject; var Value: String);
    procedure QRExpr30Print(sender: TObject; var Value: String);
    procedure QRExpr23Print(sender: TObject; var Value: String);
    procedure QRExpr22Print(sender: TObject; var Value: string);
    procedure QRExpr28Print(sender: TObject; var Value: string);
    procedure QRExpr26Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
      pi_Sno:Integer;
      pf_CreditDuesAmount,pf_NetRealizedRev, pf_DepositTotal, pf_AdjDepositTotal, pf_TotalCollection : Double;
      Phar_crAmt,pf_IPRefund, pf_CommunityRefund : Double;
            b_IsShowSubDept:Boolean;
    { Public declarations }
  end;

var
  FormReportBillDepWiseSumaryIPLandScape: TFormReportBillDepWiseSumaryIPLandScape;

implementation


{$R *.DFM}

procedure TFormReportBillDepWiseSumaryIPLandScape.QRLabel8Print(sender: TObject;
  var Value: String);
begin
   //Value:=gs_HosRegisteredBill;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRLabel9Print(sender: TObject;
  var Value: String);
begin
   value:=gs_HospitalName;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRLabel14Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalPhoneNumber;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.Query_RevenueCollectionAfterScroll(
  DataSet: TDataSet);
begin
   Inc(pi_Sno);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.Query_RevenueCollectionBeforeScroll(
  DataSet: TDataSet);
begin
    QRLabelSno.Caption:=IntToStr(pi_Sno);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QuickRep1EndPage(
  Sender: TCustomQuickRep);
begin
     //pi_Sno:=1;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr31Print(sender: TObject;
  var Value: String);
begin
     pf_CreditDuesAmount:=StrToFloat(Value)-Query_CrDischargedPtDeposit.FieldByName('CreditDepositTotal').AsFloat;
     Value:=FormatFloat('0.00',pf_CreditDuesAmount);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr3Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('0.00',pf_TotalCollection-(pf_CreditDuesAmount+pf_AdjDepositTotal+pf_CommunityRefund+pf_IPRefund));
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     pi_Sno:=1;
     pf_TotalCollection:=0;
     pf_CreditDuesAmount:=0;
     pf_AdjDepositTotal:=0;
     pf_CommunityRefund:=0;
     pf_IPRefund:=0;
     pf_NetRealizedRev:=0;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr22Print(sender: TObject; var Value: string);
begin
     pf_NetRealizedRev:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_NetRealizedRev);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr28Print(sender: TObject; var Value: string);
begin
     pf_DepositTotal:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_DepositTotal);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr29Print(
  sender: TObject; var Value: String);
begin
     Value:=FormatFloat('#,##0.00',(pf_NetRealizedRev+QueryDeposit.Fieldbyname('Deposit') .AsFloat));
     pf_TotalCollection:=pf_NetRealizedRev+QueryDeposit.Fieldbyname('Deposit') .AsFloat;
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr30Print(
  sender: TObject; var Value: String);
begin
     pf_AdjDepositTotal:=StrToFloat(Value);
     IF (QRLabelFrom.Caption<='2008/04/04') And (QRLabelTo.caption>='2008/04/04') Then
     pf_AdjDepositTotal:=pf_AdjDepositTotal+1102.5; //Reason..due to the some problem in this sotware at this date..The Refund amount is not
                                      //Properly deducated from the patient deposit i.e.of IPNO.108612 BillNo=PA64/65-0027321
                                      //so to manage this i write the above code


     Value:=FormatFloat('#,##0.00',pf_AdjDepositTotal);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr23Print(
  sender: TObject; var Value: String);
begin
     pf_IPRefund:=StrToFloat(Value)+Phar_crAmt;
     Value:=FormatFloat('#,##0.00',pf_IPRefund);
end;

procedure TFormReportBillDepWiseSumaryIPLandScape.QRExpr26Print(sender: TObject; var Value: string);
begin
     pf_CommunityRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CommunityRefund);
end;

end.


