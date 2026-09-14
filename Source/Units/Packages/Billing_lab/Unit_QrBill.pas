unit Unit_QrBill;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, Serverdate, dm, InWordsSu,
     Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, qrBarcode;

type
     TForm_QRBill = class(TForm)
          QrBill: TQuickRep;
          QRSubDetail1: TQRSubDetail;
          QRDBText1: TQRDBText;
          QRDBText4: TQRDBText;
          QRDBText5: TQRDBText;
          QRDBText7: TQRDBText;
          QRDBText2: TQRDBText;
          QueryBill: TOraQuery;
          QueryFooter: TOraQuery;
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
          QRShape3: TQRShape;
          QRLabel22: TQRLabel;
          lbl_Date: TQRLabel;
          PageFooterBand1: TQRBand;
          QRLabel5: TQRLabel;
          QRLabel13: TQRLabel;
          lbl_pagetotal: TQRLabel;
          QRLabel14: TQRLabel;
          QRLabel15: TQRLabel;
          lbl_totpage: TQRLabel;
          QRSysData1: TQRSysData;
    lbl_refundedtest: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    lbl_Addres: TQRLabel;
    lbl_Name: TQRLabel;
    Lbl_HosNo: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lbl_agesex: TQRLabel;
    lbl_billtype: TQRLabel;
    lbl_InvoiceNo: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbl_contactno: TQRLabel;
    QRLabel23: TQRLabel;
    lbl_Refundno: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    lbl_InvoiceDate: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    lbl_RefundBills: TQRLabel;
    QrBarcode: TQRAsBarcode;
    QRLabel34: TQRLabel;
    lbl_DepositFooter: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    lbl_Scheme: TQRLabel;
    lbl_contd: TQRLabel;
    PageHeaderBand2: TQRBand;
    lbl_headName: TQRLabel;
    lbl_reprint: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape2: TQRShape;
          procedure FormCreate(Sender: TObject);
          procedure lbl_InwordsPrint(Sender: TObject; var Value: string);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure QRDBText7Print(Sender: TObject; var Value: string);
          procedure lbl_TotalPrint(Sender: TObject; var Value: string);
          procedure FormDestroy(Sender: TObject);
    procedure lbl_balanceamtPrint(sender: TObject; var Value: string);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure PageHeaderBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
     private
          Itemscount: integer;
          PageTotal: Double;
          { Private declarations }
     public
          pf_Total,pf_RefundTotal: Double;
          { Public declarations }
     end;

var
     Form_QRBill: TForm_QRBill;

implementation


{$R *.dfm}

procedure TForm_QRBill.FormCreate(Sender: TObject);
begin
     QrBarcode.Text:=Gs_BillNo;
//     lbl_Password.Caption:=GetUPassword(Gs_BillNo);
     QRLabel12.Caption := Gs_PatientIdCaption;
     LoadPatientData(gi_PatientID);
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     lbl_Addres.Caption := Gs_Address;
     lbl_agesex.Caption := Gs_Age + ' ' + copy(Gs_agetype, 1, 1) + '-' + copy(Gs_Gender, 1, 1);
     lbl_contactno.Caption := Gs_MobileNo;
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;
     lbl_InvoiceNo.Caption := Gs_BillNo;
     lbl_InvoiceDate.Caption:=GetBillDate(Gs_BillNo);
     lbl_Scheme.Caption:=GetScheme(Gs_BillNo);
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
          lbl_refundedtest.Enabled:=false;
     end;
     if gi_BillCase in [6,7] then
     begin
          lbl_headName.Caption := 'Tax Invoice [Refund]';
          lbl_Refundno.Enabled := true;
          QRLabel23.Enabled := true;
          QRLabel25.Enabled := true;
          lbl_Refundno.Caption := Gs_BillNo;
          lbl_InvoiceNo.Caption := GetBillNoofRefundBill(Gs_BillNo);
          lbl_refundedtest.Enabled:=false;
     end;
     if (gi_BillCase in [2,4]) and (RefundBillExists(Gs_BillNo)) then
     begin
          lbl_Refundno.Enabled := true;
          QRLabel23.Enabled := true;
          QRLabel25.Enabled := true;
          lbl_RefundBills.Enabled:=true;
          QRLabel29.Enabled:=true;
          QRLabel32.Enabled:=true;
          QRLabel4.Enabled := true;
          QRLabel11.Enabled := true;
          lbl_Refundno.Caption := Copy(GetRefundBillofBill(Gs_billNO),1,15);
          lbl_RefundBills.Caption:=Copy(GetRefundBillofBill(Gs_billNO),17,20);
          QRLabel1.Enabled:=true;
          QRLabel6.Enabled:=true;
          lbl_depositamount.Enabled:=true;
          lbl_balanceamt.Enabled:=true;
          QRLabel1.Caption := 'REFUND AMOUNT';
          QRLabel6.Caption := 'NET AMOUNT';
          pf_RefundTotal:=GetTotalRefundAmt(Gs_billNO);
          lbl_depositamount.Caption := FormatFloat('#0,0.00',pf_RefundTotal);
          lbl_refundedtest.Enabled:=true;
     end;
     with QueryBill do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_PATIENTSERVICEBILL VWP';
               SQL[1] :=
                 'WHERE VWP.BILLNO IN (SELECT REFERENCENO FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase in  [6,7] then
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
          if RecordCount>10 then
          begin
               QrBill.Height:=QrBill.Height+(RecordCount-10)*30;
          end;
     end;

     with QueryFooter do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT * FROM VW_PATIENTSERVICEBILL_SUMMARY';
               SQL[1] :=
                 'WHERE BILLNO IN (SELECT REFERENCENO FROM DEPOSIT WHERE DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase in [6,7] then
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
          if (gi_BillCase in [2,4]) and (RefundBillExists(Gs_BillNo)) then
          begin
              lbl_balanceamt.Caption := FormatFloat
            ('#0,0.00', (pf_Total - pf_RefundTotal));
          end;

          if FieldByName('Discount').AsFloat=0 then
          begin
               QRLabel31.Enabled:=false;
               QRLabel43.Enabled:=false;
               lbl_Discount.Enabled:=false;
          end;

     end;
end;

procedure TForm_QRBill.FormDestroy(Sender: TObject);
begin
     // ClearVariable;
end;

procedure TForm_QRBill.lbl_balanceamtPrint(sender: TObject; var Value: string);
begin
     //Value:=FormatFloat('#0.00',StrToFloat(lbl_Total.Caption)-StrToFloat(lbl_depositamount.Caption));
end;

procedure TForm_QRBill.lbl_InwordsPrint(Sender: TObject; var Value: string);
begin
     pf_Total:=StrToFloat(FormatFloat('##.00',pf_Total));
     Value := AmountInWords(pf_Total);
end;

procedure TForm_QRBill.lbl_TotalPrint(Sender: TObject; var Value: string);
begin
     // lbl_pagetotal.Enabled:=false;
     // QRLabel5.Enabled:=false;
     // QRLabel13.Enabled:=false;
end;

procedure TForm_QRBill.PageHeaderBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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
     //PageTotal := PageTotal + StrToFloat(StringReplace(Value, ',', '', [rfReplaceAll]));
     //lbl_pagetotal.Caption := FloatToStr(PageTotal);
end;

procedure TForm_QRBill.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if Itemscount > 14 then
     begin
          lbl_contd.Enabled:=True;
          QrBill.NewPage;
          QrBill.Page.Length:=1520;
          Itemscount:=0;
     end;
end;

end.
