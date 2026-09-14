unit Unit_QrBill;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, Serverdate, dm, InWordsSu,
     Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
     TForm_QRBill = class(TForm)
          QrBill: TQuickRep;
          PageHeaderBand1: TQRBand;
          lbl_headName: TQRLabel;
          QRLabel10: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel16: TQRLabel;
          lbl_Addres: TQRLabel;
          lbl_Name: TQRLabel;
          Lbl_HosNo: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel21: TQRLabel;
          QRSubDetail1: TQRSubDetail;
          QRDBText1: TQRDBText;
          QRDBText4: TQRDBText;
          QRDBText5: TQRDBText;
          QRDBText7: TQRDBText;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          lbl_agesex: TQRLabel;
          lbl_billtype: TQRLabel;
          lbl_InvoiceNo: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel8: TQRLabel;
          QRLabel9: TQRLabel;
          lbl_contactno: TQRLabel;
          QRDBText2: TQRDBText;
          QueryBill: TQuery;
          QueryFooter: TQuery;
          GroupFooterBand1: TQRBand;
          QRLabel28: TQRLabel;
          lbl_Inwords: TQRLabel;
          QRLabel30: TQRLabel;
          lbl_GrossAmount: TQRLabel;
          lbl_user: TQRLabel;
          QRLabel27: TQRLabel;
          QRLabel31: TQRLabel;
          lbl_Discount: TQRLabel;
          QRLabel33: TQRLabel;
          lbl_Subtotal: TQRLabel;
          QRLabel35: TQRLabel;
          lbl_Svrtax: TQRLabel;
          QRLabel40: TQRLabel;
          lbl_Total: TQRLabel;
          QRLabel42: TQRLabel;
          QRLabel43: TQRLabel;
          QRLabel44: TQRLabel;
          QRLabel45: TQRLabel;
          QRLabel46: TQRLabel;
          QRLabel48: TQRLabel;
          QRLabel1: TQRLabel;
          QRLabel4: TQRLabel;
          lbl_depositamount: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel11: TQRLabel;
          lbl_balanceamt: TQRLabel;
          lbl_reprint: TQRLabel;
          lbl_DepositFooter: TQRLabel;
          QRShape3: TQRShape;
          QRLabel22: TQRLabel;
          lbl_Date: TQRLabel;
          QRLabel17: TQRLabel;
          QRLabel37: TQRLabel;
          QRLabel38: TQRLabel;
          QRLabel20: TQRLabel;
          QRLabel39: TQRLabel;
          QRShape2: TQRShape;
          PageFooterBand1: TQRBand;
          QRLabel5: TQRLabel;
          QRLabel13: TQRLabel;
          lbl_pagetotal: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel15: TQRLabel;
          lbl_totpage: TQRLabel;
          QRSysData1: TQRSysData;
          QRShape1: TQRShape;
          QRLabel23: TQRLabel;
          lbl_Refundno: TQRLabel;
          QRLabel25: TQRLabel;
          procedure FormCreate(Sender: TObject);
          procedure lbl_InwordsPrint(Sender: TObject; var Value: string);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRDBText7Print(Sender: TObject; var Value: string);
          procedure lbl_TotalPrint(Sender: TObject; var Value: string);
          procedure FormDestroy(Sender: TObject);
     private
          Itemscount: integer;
          PageTotal: Double;
          { Private declarations }
     public
          pf_Total: Double;
          { Public declarations }
     end;

var
     Form_QRBill: TForm_QRBill;

implementation

{$R *.dfm}

procedure TForm_QRBill.FormCreate(Sender: TObject);
begin
     QRLabel12.Caption := Gs_PatientIdCaption;
     LoadPatientData(gi_PatientID);
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     lbl_Addres.Caption := Gs_Address;
     lbl_agesex.Caption := Gs_Age + ' ' + copy(Gs_agetype, 1, 1) + '-' + copy(Gs_Gender, 1, 1);
     lbl_contactno.Caption := Gs_PhoneNo;
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;
     lbl_InvoiceNo.Caption := Gs_BillNo;
     GroupFooterBand1.Height := 90;
     if GB_isDepositBill or (gi_BillCase = 5) then
     begin
          QRLabel1.Enabled := true;
          QRLabel6.Enabled := true;
          QRLabel4.Enabled := true;
          QRLabel11.Enabled := true;
          lbl_depositamount.Enabled := true;
          lbl_balanceamt.Enabled := true;
          lbl_headName.Caption := 'Deposit Slip';
          lbl_billtype.Caption := 'Deposit No.';
          GroupFooterBand1.Height := 125;
          lbl_DepositFooter.Enabled := true;
     end;
     if gi_BillCase = 6 then
     begin
          lbl_headName.Caption := 'Tax Invoice [Refund]';
          lbl_Refundno.Enabled := true;
          QRLabel23.Enabled := true;
          QRLabel25.Enabled := true;
          lbl_Refundno.Caption := Gs_BillNo;
          lbl_InvoiceNo.Caption := GetBillNoofRefundBill(Gs_BillNo);
     end;
     if (gi_BillCase = 2) and gb_RefundBillExists then
     begin
          lbl_Refundno.Enabled := true;
          QRLabel23.Enabled := true;
          QRLabel25.Enabled := true;
          lbl_Refundno.Caption := GetRefundBillofBill(Gs_BillNo);
          QRLabel1.Caption := 'REFUND AMOUNT';
          QRLabel6.Caption := 'NET AMOUNT';
          lbl_depositamount.Caption := FormatFloat('#0,0.00', GetTotalRefundAmt(lbl_Refundno.Caption));
          lbl_balanceamt.Caption := FormatFloat
            ('#0,0.00', (StrToFloat(lbl_Total.Caption) - StrToFloat(lbl_depositamount.Caption)));
     end;
     with QueryBill do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_PATIENTSERVICEBILL VWP';
               SQL[1] :=
                 'WHERE VWP.BILLNO IN (SELECT REFERENCENO FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase = 6 then
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_REFUNDBILL VWP';
               SQL[1] := 'Where VWP.billno=' + #39 + Gs_BillNo + #39;
          end
          else
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_PATIENTBILL VWP';
               SQL[1] := 'Where VWP.billno=' + #39 + Gs_BillNo + #39;
          end;
          Open;
     end;
     with QueryFooter do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT * FROM VW_PATIENTSERVICEBILL_SUMMARY';
               SQL[1] :=
                 'WHERE BILLNO IN (SELECT REFERENCENO FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase = 6 then
          begin
               SQL[0] := 'SELECT * FROM VW_REFUNDBILL_SUMMARY';
               SQL[1] := 'Where billno=' + #39 + Gs_BillNo + #39;
          end
          else
          begin
               SQL[0] := 'SELECT * FROM VW_PATIENTBILL_SUMMARY';
               SQL[1] := 'Where billno=' + #39 + Gs_BillNo + #39;
          end;
          Open;
          lbl_GrossAmount.Caption := FormatFloat('#0,0.00', FieldByName('GrossAmount').AsFloat);
          lbl_Discount.Caption := FormatFloat('#0,0.00', FieldByName('Discount').AsFloat);
          lbl_Subtotal.Caption := FormatFloat('#0,0.00', FieldByName('Subtotal').AsFloat);
          lbl_Svrtax.Caption := FormatFloat('#0,0.00', FieldByName('Svrtax').AsFloat);
          lbl_Total.Caption := FormatFloat('#0,0.00', FieldByName('TotalAmount').AsFloat);
          pf_Total := FieldByName('TotalAmount').AsFloat;
          lbl_user.Caption := FieldByName('Username').AsString;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               lbl_depositamount.Caption := FormatFloat('#0,0.00', FieldByName('Deposit').AsFloat);
               lbl_balanceamt.Caption := FormatFloat
                 ('#0,0.00', (FieldByName('TotalAmount').AsFloat - FieldByName('Deposit').AsFloat));
               lbl_InvoiceNo.Caption := Gs_BillNo;
          end;
     end;
end;

procedure TForm_QRBill.FormDestroy(Sender: TObject);
begin
     // ClearVariable;
end;

procedure TForm_QRBill.lbl_InwordsPrint(Sender: TObject; var Value: string);
begin
     Value := AmountInWords(pf_Total);
end;

procedure TForm_QRBill.lbl_TotalPrint(Sender: TObject; var Value: string);
begin
     // lbl_pagetotal.Enabled:=false;
     // QRLabel5.Enabled:=false;
     // QRLabel13.Enabled:=false;
end;

procedure TForm_QRBill.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     Itemscount := 0;
     PageTotal := 0;
end;

procedure TForm_QRBill.QRDBText1Print(Sender: TObject; var Value: string);
begin
     Itemscount := Itemscount + 1;
end;

procedure TForm_QRBill.QRDBText7Print(Sender: TObject; var Value: string);
begin
     PageTotal := PageTotal + StrToFloat(StringReplace(Value, ',', '', [rfReplaceAll]));
     lbl_pagetotal.Caption := FloatToStr(PageTotal);
end;

procedure TForm_QRBill.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if Itemscount > 9 then
     begin
          QrBill.NewPage;
          PageFooterBand1.Enabled := true;
     end;
end;

end.
