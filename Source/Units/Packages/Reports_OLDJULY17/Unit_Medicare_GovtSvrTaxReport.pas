unit Unit_Medicare_GovtSvrTaxReport;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_Medicare_GovtSvrTaxReport = class(TForm)
          QuickRep1: TQuickRep;
          SummaryBand1: TQRBand;
          QRExpr2: TQRExpr;
          QRLabel10: TQRLabel;
          QRExpr10: TQRExpr;
          QRLabel13: TQRLabel;
          QRExpr1: TQRExpr;
          QRExpr13: TQRExpr;
          QRExpr14: TQRExpr;
          QRShape11: TQRShape;
          QRShape13: TQRShape;
          QRShape14: TQRShape;
          PageFooterBand1: TQRBand;
          QRSysData1: TQRSysData;
          QRLabel5: TQRLabel;
          QRBand1: TQRBand;
          QRExpr15: TQRExpr;
          QRLabel22: TQRLabel;
          QRLabel23: TQRLabel;
          QRDBText11: TQRDBText;
          QRDBText17: TQRDBText;
          Band2: TQRBand;
          QRLabel15: TQRLabel;
          QRExpr11: TQRExpr;
          QRExpr16: TQRExpr;
          QRExpr17: TQRExpr;
          QRExpr23: TQRExpr;
          QRExpr24: TQRExpr;
          QRShape20: TQRShape;
          QRShape21: TQRShape;
          QRShape22: TQRShape;
          QRSubDetail1: TQRSubDetail;
          QRDBText2: TQRDBText;
          QRDBText3: TQRDBText;
          QRDBText4: TQRDBText;
          QRDBText1: TQRDBText;
          QRDBText8: TQRDBText;
          QRDBText19: TQRDBText;
          QRDBText6: TQRDBText;
          QRDBText24: TQRDBText;
          QRLabelCSSno: TQRLabel;
          QRShape6: TQRShape;
          QRShape7: TQRShape;
          QRShape8: TQRShape;
          QRDBText23: TQRDBText;
          QRSubDetail2: TQRSubDetail;
          QRDBText9: TQRDBText;
          QRDBText10: TQRDBText;
          QRDBText12: TQRDBText;
          QRDBText13: TQRDBText;
          QRDBText14: TQRDBText;
          QRDBText15: TQRDBText;
          QRDBText16: TQRDBText;
          QRLabel21: TQRLabel;
          QRExpr12: TQRExpr;
          SubDetail3: TQRSubDetail;
          QRLabel45: TQRLabel;
          QRDBText5: TQRDBText;
          QRDBText25: TQRDBText;
          QRDBText26: TQRDBText;
          QRDBText27: TQRDBText;
          QRDBText28: TQRDBText;
          QRDBText29: TQRDBText;
          QRDBText30: TQRDBText;
          QRDBText36: TQRDBText;
          QRDBText37: TQRDBText;
          QRShape15: TQRShape;
          QRShape16: TQRShape;
          QRShape17: TQRShape;
          PageHeaderBand1: TQRBand;
          QRLabel1: TQRLabel;
          QRLabel_Add: TQRLabel;
          QRLabel34: TQRLabel;
          QRLabel2: TQRLabel;
          QRLabelToday: TQRLabel;
          QRLabel40: TQRLabel;
          QRLabelTo: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabelFrom: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabelReportTitle: TQRLabel;
          QRShape4: TQRShape;
          QRLabel27: TQRLabel;
          QRLabel28: TQRLabel;
          QRLabel32: TQRLabel;
          QRLabel37: TQRLabel;
          QRLabel38: TQRLabel;
          QRLabel39: TQRLabel;
          QRLabel46: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel_TaxAmt: TQRLabel;
          QRLabel18: TQRLabel;
          QRShape1: TQRShape;
          QRShape2: TQRShape;
          QRShape5: TQRShape;
          SummaryBand2: TQRBand;
          QRLabel3: TQRLabel;
          QRShape23: TQRShape;
          QRShape24: TQRShape;
          QRShape25: TQRShape;
          QRExpr3: TQRExpr;
          QRExpr5: TQRExpr;
          QRExpr25: TQRExpr;
          QRExpr31: TQRExpr;
          QRExpr32: TQRExpr;
          Query_Cash: TOraQuery;
          Query_Refund: TOraQuery;
          QRShape3: TQRShape;
          QRShape10: TQRShape;
          QRShape12: TQRShape;
          QRShape18: TQRShape;
          QRShape19: TQRShape;
          QRShape26: TQRShape;
          QRLabel9: TQRLabel;
          QRLabel11: TQRLabel;
          QRShape28: TQRShape;
          QRShape9: TQRShape;
          QRShape27: TQRShape;
          QRShape29: TQRShape;
          QRShape30: TQRShape;
          QRShape31: TQRShape;
          QRShape32: TQRShape;
          QRShape33: TQRShape;
          procedure QRLabel1Print(sender: TObject; var Value: String);
          // procedure QRLabel14Print(sender: TObject; var Value: String);
          procedure QRLabel_AddPrint(sender: TObject; var Value: String);
          // procedure QRLabel34Print(sender: TObject; var Value: String);
          procedure QRLabel40Print(sender: TObject; var Value: String);
          procedure QRLabelCSSnoPrint(sender: TObject; var Value: String);
          procedure QRLabelCRSnoPrint(sender: TObject; var Value: String);
          procedure QRLabelRFSnoPrint(sender: TObject; var Value: String);
          procedure QRLabel5Print(sender: TObject; var Value: String);
          procedure QRLabel20Print(sender: TObject; var Value: String);
          procedure QRExpr2Print(sender: TObject; var Value: String);
          procedure QRExpr10Print(sender: TObject; var Value: String);
          procedure QRExpr4Print(sender: TObject; var Value: String);
          procedure QRExpr11Print(sender: TObject; var Value: String);
          procedure QRExpr20Print(sender: TObject; var Value: String);
          procedure QRExpr19Print(sender: TObject; var Value: String);
          procedure QRExpr24Print(sender: TObject; var Value: String);
          procedure QRExpr18Print(sender: TObject; var Value: String);
          procedure QRExpr3Print(sender: TObject; var Value: String);
          procedure QRExpr5Print(sender: TObject; var Value: String);
          procedure QRLabel45Print(sender: TObject; var Value: String);
          procedure QRExpr1Print(sender: TObject; var Value: String);
          procedure QRExpr6Print(sender: TObject; var Value: String);
          procedure QRExpr7Print(sender: TObject; var Value: String);
          procedure QRExpr8Print(sender: TObject; var Value: String);
          procedure QRExpr9Print(sender: TObject; var Value: String);
          procedure QRExpr13Print(sender: TObject; var Value: String);
          procedure QRExpr14Print(sender: TObject; var Value: String);
          procedure QRExpr16Print(sender: TObject; var Value: String);
          procedure QRExpr17Print(sender: TObject; var Value: String);
          procedure QRExpr25Print(sender: TObject; var Value: String);
          procedure QRExpr26Print(sender: TObject; var Value: String);
          procedure QRExpr27Print(sender: TObject; var Value: String);
          procedure QRExpr28Print(sender: TObject; var Value: String);
          procedure QRExpr21Print(sender: TObject; var Value: String);
          procedure QRExpr29Print(sender: TObject; var Value: String);
          procedure QRExpr22Print(sender: TObject; var Value: String);
          procedure QRExpr30Print(sender: TObject; var Value: String);
          procedure QRExpr23Print(sender: TObject; var Value: String);
          procedure QRExpr31Print(sender: TObject; var Value: String);
          procedure QRExpr32Print(sender: TObject; var Value: String);
    procedure QRLabel10Print(sender: TObject; var Value: string);
    procedure QRLabel15Print(sender: TObject; var Value: string);
     private
          { Private declarations }
     public
          { Public declarations }
          CSSno, RFSno, CRSno, CrRefundSno: Integer;
          pf_Gross, pf_Discount, pf_SubTotal, pf_TaxableAmt, pf_TaxableDiscount, pf_TaxbleTotal, pf_NonTaxableAmt,
            pf_NonTaxableDis, pf_SvrTax, pf_NetTotal: Double;

          pf_RFGross, pf_RFDiscount, pf_RFSubTotal, pf_RFTaxableAmt, pf_RFTaxableDiscount, pf_RFTaxbleTotal,
            pf_RFNonTaxableAmt, pf_RFNonTaxableDis, pf_RFSvrTax, pf_RFNetTotal: Double;
          pf_NNetTotal: Double;
     end;

var
     Form_Medicare_GovtSvrTaxReport: TForm_Medicare_GovtSvrTaxReport;

implementation

{$R *.dfm}

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel10Print(sender: TObject; var Value: string);
begin
     CSSno := 0;
     RFSno := 0;
     CRSno := 0;
     CrRefundSno := 0;
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel15Print(sender: TObject; var Value: string);
begin
     CSSno := 0;
     RFSno := 0;
     CRSno := 0;
     CrRefundSno := 0;
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel1Print(sender: TObject; var Value: string);
begin
     Value := gs_HospitalName;
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel40Print(sender: TObject; var Value: string);
begin
     Value := '';
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel_AddPrint(sender: TObject; var Value: string);
begin
     Value := '';
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabelCSSnoPrint(sender: TObject; var Value: String);
begin
     CSSno := CSSno + 1;
     Value := IntToStr(CSSno);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabelCRSnoPrint(sender: TObject; var Value: String);
begin
     CRSno := CRSno + 1;
     Value := IntToStr(CRSno);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabelRFSnoPrint(sender: TObject; var Value: String);
begin
     RFSno := RFSno + 1;
     Value := IntToStr(RFSno);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel5Print(sender: TObject; var Value: String);
begin
     CSSno := 0;
     RFSno := 0;
     CRSno := 0;
     CrRefundSno := 0;
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel20Print(sender: TObject; var Value: String);
begin
     CrRefundSno := CrRefundSno + 1;
     Value := IntToStr(CrRefundSno);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr2Print(sender: TObject; var Value: String);
begin
     pf_Gross := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_Gross);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr10Print(sender: TObject; var Value: String);
begin
     pf_Discount := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_Discount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr4Print(sender: TObject; var Value: String);
begin
     pf_TaxableAmt := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_TaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr11Print(sender: TObject; var Value: String);
begin
     pf_RFGross := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFGross);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr20Print(sender: TObject; var Value: String);
begin
     pf_RFTaxbleTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFTaxbleTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr19Print(sender: TObject; var Value: String);
begin
     pf_TaxableDiscount := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_TaxableDiscount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr24Print(sender: TObject; var Value: String);
begin
     pf_RFNetTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFNetTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr18Print(sender: TObject; var Value: String);
begin
     pf_RFTaxableAmt := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFTaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr3Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_Gross - pf_RFGross);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr5Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_Discount - pf_RFDiscount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRLabel45Print(sender: TObject; var Value: String);
begin
     RFSno := RFSno + 1;
     Value := IntToStr(RFSno);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr1Print(sender: TObject; var Value: String);
begin
     pf_SubTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_SubTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr6Print(sender: TObject; var Value: String);
begin
     pf_TaxableDiscount := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_TaxableDiscount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr7Print(sender: TObject; var Value: String);
begin
     pf_TaxbleTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_TaxbleTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr8Print(sender: TObject; var Value: String);
begin
     pf_NonTaxableAmt := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_NonTaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr9Print(sender: TObject; var Value: String);
begin
     pf_NonTaxableDis := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_NonTaxableDis);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr13Print(sender: TObject; var Value: String);
begin
     pf_SvrTax := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_SvrTax);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr14Print(sender: TObject; var Value: String);
begin
     pf_NetTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_NetTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr16Print(sender: TObject; var Value: String);
begin
     pf_RFDiscount := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFDiscount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr17Print(sender: TObject; var Value: String);
begin
     pf_RFSubTotal := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFSubTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr25Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_SubTotal - pf_RFSubTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr26Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_TaxableAmt - pf_RFTaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr27Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_TaxableDiscount - pf_RFTaxableDiscount);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr28Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_TaxbleTotal - pf_RFTaxbleTotal);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr21Print(sender: TObject; var Value: String);
begin
     pf_RFNonTaxableAmt := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFNonTaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr29Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_NonTaxableAmt - pf_RFNonTaxableAmt);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr22Print(sender: TObject; var Value: String);
begin
     pf_RFNonTaxableDis := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFNonTaxableDis);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr30Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_NonTaxableDis - pf_RFNonTaxableDis);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr23Print(sender: TObject; var Value: String);
begin
     pf_RFSvrTax := StrToFloat(Value);
     Value := FormatFloat('#,##0.00', pf_RFSvrTax);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr31Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_SvrTax - pf_RFSvrTax);
end;

procedure TForm_Medicare_GovtSvrTaxReport.QRExpr32Print(sender: TObject; var Value: String);
begin
     Value := FormatFloat('#,##0.00', pf_NetTotal - pf_RFNetTotal);
end;

end.
