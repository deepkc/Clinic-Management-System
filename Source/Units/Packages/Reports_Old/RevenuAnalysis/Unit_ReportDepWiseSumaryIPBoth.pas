unit Unit_ReportDepWiseSumaryIPBoth;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, Fxn, DM;

type
  TForm_ReportDepWiseSumaryIPBOTH = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    SummaryBand2: TQRBand;
    QRDBText1: TQRDBText;                                                      
    QRLabel1: TQRLabel;
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
    QRLabel_HosName: TQRLabel;
    QRLabel_HosSloganTitle: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel_HosAddress: TQRLabel;
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
    QRLabel25: TQRLabel;
    QRExpr25: TQRExpr;
    QRLabelSno: TQRLabel;
    Query_CommunityRefund: TOraQuery;
    QRShape2: TQRShape;
    QRExpr28: TQRExpr;
    QRLabel34: TQRLabel;
    QRShape3: TQRShape;
    QRExpr29: TQRExpr;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape4: TQRShape;
    QRExpr30: TQRExpr;
    QRExpr31: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel24: TQRLabel;
    QRExpr23: TQRExpr;
    QRExpr26: TQRExpr;
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
    QRLabel_SvrTaxCap: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel_RefundTaxCap: TQRLabel;
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
    QRLabel2: TQRLabel;
    QRExpr8: TQRExpr;
    Query_CrAdjustDeposit: TOraQuery;
    Query_CrAdjustDepositCRADJUSTEDDEPOSIT: TFloatField;
    QRLabel_PrintDate: TQRLabel;
    Query1: TOraQuery;
    QRLabel9: TQRLabel;
    QRExpr9: TQRExpr;
    Query_CreditPayment: TOraQuery;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: String);
    procedure QRLabel_HosSloganTitlePrint(sender: TObject; var Value: String);
    procedure QRLabel_HosAddressPrint(sender: TObject; var Value: String);
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
    procedure QRLabelSnoPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
      pi_Sno:Integer;
      pf_CreditDuesAmount,pf_NetRealizedRev, pf_DepositTotal, pf_AdjDepositTotal, pf_TotalCollection : Double;
      Phar_crAmt,pf_IPRefund, pf_CommunityRefund,pf_creditpayment: Double;
      b_IsShowSubDept:Boolean;
    { Public declarations }
  end;

var
  Form_ReportDepWiseSumaryIPBOTH: TForm_ReportDepWiseSumaryIPBOTH;

implementation


{$R *.DFM}

procedure TForm_ReportDepWiseSumaryIPBOTH.QRLabel_HosNamePrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HospitalName;
     if gs_TaxSystem='VAT' then
     Begin
          QRLabel_SvrTaxCap.Caption:='VAT';
          QRLabel_SvrTaxCap.Left:=685;
          QRLabel_RefundTaxCap.Caption:='RF VAT';
     End
     Else
     Begin
          QRLabel_SvrTaxCap.Caption:='SVR Tax';
          QRLabel_SvrTaxCap.Left:=666;
          QRLabel_RefundTaxCap.Caption:='RF SVR Tax';
     End;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRLabelSnoPrint(
  sender: TObject; var Value: string);
begin
     IF b_IsShowSubDept=False Then
     Begin
          pi_Sno:=pi_Sno+1;
          Value:=IntToStr(pi_Sno);
     End
     Else
     Value:=Query_RevenueCollection.FieldByName('Sno').AsString;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRLabel_HosSloganTitlePrint(sender: TObject;
  var Value: String);
begin
     value:=gs_HosSloganTitle;
     if gs_HosSloganTitle='' then
     Begin
          QRLabel_HosAddress.BringToFront;
          QRLabel_HosAddress.Top:=QRLabel_HosSloganTitle.Top;
     End;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRLabel_HosAddressPrint(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalPhoneNumber;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.Query_RevenueCollectionAfterScroll(
  DataSet: TDataSet);
begin
   //Inc(pi_Sno);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.Query_RevenueCollectionBeforeScroll(
  DataSet: TDataSet);
begin
    //QRLabelSno.Caption:=IntToStr(pi_Sno);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QuickRep1EndPage(
  Sender: TCustomQuickRep);
begin
     //pi_Sno:=1;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr31Print(sender: TObject;
  var Value: String);
begin
     pf_CreditDuesAmount:=StrToFloat(Value)-Query_CrDischargedPtDeposit.FieldByName('CreditDepositTotal').AsFloat;
     Value:=FormatFloat('0.00',pf_CreditDuesAmount);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr3Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('0.00',pf_TotalCollection-(pf_CreditDuesAmount+pf_AdjDepositTotal+pf_CommunityRefund+pf_IPRefund));
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QuickRep1BeforePrint(
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

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr22Print(sender: TObject; var Value: string);
begin
     pf_NetRealizedRev:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_NetRealizedRev);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr28Print(sender: TObject; var Value: string);
begin
     pf_creditpayment:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_creditpayment);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr29Print(
  sender: TObject; var Value: String);
begin
     Value:=FormatFloat('#,##0.00',(pf_NetRealizedRev+QueryDeposit.Fieldbyname('Deposit') .AsFloat)+
                              Query_CreditPayment.FieldByName('receiptamount').AsFloat);
     pf_TotalCollection:=pf_NetRealizedRev+QueryDeposit.Fieldbyname('Deposit') .AsFloat+Query_CreditPayment.FieldByName('receiptamount').AsFloat;
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr30Print(
  sender: TObject; var Value: String);
begin
     pf_AdjDepositTotal:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_AdjDepositTotal);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr23Print(sender: TObject; var Value: String);
begin
     pf_IPRefund:=StrToFloat(Value)+Phar_crAmt;
     Value:=FormatFloat('#,##0.00',pf_IPRefund);
end;

procedure TForm_ReportDepWiseSumaryIPBOTH.QRExpr26Print(sender: TObject; var Value: string);
begin
     pf_CommunityRefund:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_CommunityRefund);
end;

end.


