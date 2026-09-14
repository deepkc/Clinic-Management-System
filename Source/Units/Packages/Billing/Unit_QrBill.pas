unit Unit_QrBill;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn_hos, Serverdate, dm, InWordsSu,Unit_Master,
     Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, qrBarcode, pngimage;

type
     TForm_QRBill = class(TForm)
          QrBill: TQuickRep;
          PageHeaderBand1: TQRBand;
          lbl_headName: TQRLabel;
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
    lbl_TaxableAmount: TQRLabel;
    QRLabel_TaxSystemCap: TQRLabel;
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
    lbl_refundedtest: TQRLabel;
    lbl_contd: TQRLabel;
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
    QRShape1: TQRShape;
    Lbl_DocDept: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    lbl_NonTaxable: TQRLabel;
    Lbl_Refund: TQRLabel;
    QRLabel53: TQRLabel;
    Lbl_EpisodeNo: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel56: TQRLabel;
    lbl_ReprintBy: TQRLabel;
    QRImage1: TQRImage;
          procedure FormCreate(Sender: TObject);
          procedure lbl_InwordsPrint(Sender: TObject; var Value: string);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRDBText7Print(Sender: TObject; var Value: string);
          procedure lbl_TotalPrint(Sender: TObject; var Value: string);
          procedure FormDestroy(Sender: TObject);
    procedure lbl_balanceamtPrint(sender: TObject; var Value: string);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure lbl_AddresPrint(sender: TObject; var Value: string);
    procedure lbl_SchemePrint(sender: TObject; var Value: string);
    procedure lbl_contactnoPrint(sender: TObject; var Value: string);
     private
          Itemscount: integer;
          PageTotal: Double;
          { Private declarations }
     public
          pf_Total,pf_RefundTotal: Double;
          { Public declarations }

          pb_IsReprint : Boolean;



     end;

var
     Form_QRBill: TForm_QRBill;

implementation


{$R *.dfm}

procedure TForm_QRBill.FormCreate(Sender: TObject);
Var ls_DocDepName,ls_BillNoStr : String;
    li_EpisodeNo : Integer;
    lf_AdjDepositAmt : Double;
Begin
     SetPrinter('Bill Printer');
     if gi_HospitalId=562 then // 562 - Manipal
     Begin
          QrBarcode.Text:='';
          QrBarcode.Enabled:=False;
          QrBarcode.Frame.Color :=clWhite;
     End
     else
     QrBarcode.Text:=Gs_BillNo;
//     lbl_Password.Caption:=GetUPassword(Gs_BillNo);
     QRLabel12.Caption := Gs_PatientIdCaption;
     LoadPatientData(gi_PatientID);
     lbl_Name.Caption := Trim(Gs_Title+' '+Gs_PatientName);
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     lbl_Addres.Caption := Gs_Address;
     lbl_agesex.Caption := Gs_Age + ' ' + copy(Gs_agetype, 1, 1) + '/' + copy(Gs_Gender, 1, 1);
     lbl_contactno.Caption := Gs_MobileNo;
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;
     lbl_InvoiceNo.Caption := Gs_BillNo;
     lbl_InvoiceDate.Caption:=GetBillDate(Gs_BillNo);
     lbl_Scheme.Caption:=GetScheme(Gs_BillNo);
     ls_DocDepName:=GetDocNameAndDep(Gs_BillNo);

     if gs_TaxSystem='VAT' then
     QRLabel_TaxSystemCap.Caption:=FloatToStr(gf_TaxPercent)+'% VAT'
     Else
     QRLabel_TaxSystemCap.Caption:=FloatToStr(gf_TaxPercent)+'% HS TAX';

     if Gb_IsReprint=True then
     Begin
          lbl_ReprintBy.Enabled:=True;
          lbl_ReprintBy.Font.Color:=clBlack;
          QRLabel54.Enabled:=True;
          QRLabel56.Enabled:=True;
          QRLabel54.Font.Color:=clBlack;
          QRLabel56.Font.Color:=clBlack;
          lbl_ReprintBy.Caption:= gs_UserName;
     End
     Else
     Begin
          lbl_ReprintBy.Enabled:=False;
          lbl_ReprintBy.Font.Color:=clWhite;
          QRLabel54.Enabled:=False;
          QRLabel56.Enabled:=False;
          QRLabel54.Font.Color:=clWhite;
          QRLabel56.Font.Color:=clWhite;
     End;

     QRLabel53.Font.Color:=clWhite;
     QRLabel55.Font.Color:=clWhite;
     Lbl_EpisodeNo.Font.Color:=clWhite;
     (*li_EpisodeNo:=IsOPDVisitBill(gs_BillNo);
     if li_EpisodeNo > 0 then
     Begin
          QRLabel53.Enabled:=True;
          QRLabel55.Enabled:=True;
          Lbl_EpisodeNo.Enabled:=True;
          Lbl_EpisodeNo.Caption:=IntToStr(li_EpisodeNo);
     End
     Else
     Begin
          QRLabel53.Enabled:=False;
          QRLabel55.Enabled:=False;
          Lbl_EpisodeNo.Enabled:=False;
     End;*)

     if Trim(ls_DocDepName)<>'' then
     Begin
          Lbl_DocDept.Enabled:=True;
          QRLabel61.Enabled:=True;

          if gs_IsDocCompForRegFollowup='N' then
          QRLabel61.Caption:='Dept.';


          QRLabel62.Enabled:=True;
          Lbl_DocDept.Caption:=ls_DocDepName;
     End
     Else
     Begin
          Lbl_DocDept.Enabled:=False;
          QRLabel61.Enabled:=False;
          QRLabel62.Enabled:=False;
     End;
     GroupFooterBand1.Height := 90;

     Lbl_Refund.Enabled:=False;

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
          //lbl_headName.Caption := 'TAX INVOICE [Refund]';
          Lbl_Refund.Enabled:=True;
          lbl_Refundno.Enabled := true;
          QRLabel23.Enabled := true;
          QRLabel23.Caption:='Prev.Inv No:';
          QRLabel25.Enabled := true;
          lbl_Refundno.Caption := GetBillNoofRefundBill(Gs_BillNo);
          lbl_InvoiceNo.Caption :=Gs_BillNo;
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
          ls_BillNoStr:=GetRefundBillofBill(Gs_billNO);
          lbl_Refundno.Caption :=Copy(ls_BillNoStr,1,15);
          lbl_RefundBills.Caption:=Copy(ls_BillNoStr,17,20);
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

     if gb_IsOtherPatientPharmacyBill then // Only Pharmacy Refund
     begin
          if gi_PatientID < 100000 then
          Begin
               GetNonPatientInfo(gi_PatientID);
               lbl_Name.Caption := Gs_PatientName;
               Lbl_HosNo.Caption := IntToStr(gi_PatientID);
               lbl_Addres.Caption := Gs_Address;
               lbl_agesex.Caption := Gs_Age + ' ' + copy(Gs_agetype, 1, 1) + '/' + copy(Gs_Gender, 1, 1);
          End;

          if Copy(Gs_BillNo,1,2)<>'RF' then
          Begin
               lbl_headName.Caption := 'TAX INVOICE';
               lbl_InvoiceNo.Caption := Gs_BillNo;
               lbl_billtype.Enabled:=True;
               lbl_InvoiceNo.Enabled:=True;
               QRLabel7.Enabled:=True;
          End
          Else
          Begin
               //lbl_headName.Caption := 'TAX INVOICE [Refund]';
               Lbl_Refund.Enabled:=True;
               lbl_Refundno.Enabled := true;
               lbl_Refundno.Caption :=Gs_BillNo;
               lbl_billtype.Enabled:=False;
               lbl_InvoiceNo.Enabled:=False;
               QRLabel7.Enabled:=False;
          End;

          lbl_refundedtest.Enabled:=false;
          gb_IsOtherPatientPharmacyBill:=False;
     end;

     with QueryBill do
     begin
          Close;
          Session := DM_Hospital.DB;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_HS_PATIENTSERVICEBILL VWP';
               SQL[1] :=
                 'WHERE VWP.BILLNO IN (SELECT DEPO_REFERENCENO FROM HS_DEPO_DEPOSIT WHERE DEPO_DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase in  [6,7] then
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_HS_REFUNDBILL VWP';
               SQL[1] := 'Where VWP.BILLNO=' + #39 + Gs_BillNo + #39;
          end
          else
          begin
               SQL[0] := 'SELECT ROWNUM AS SN,VWP.* FROM VW_HS_PATIENTBILL VWP';
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
          Session := DM_Hospital.DB;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               SQL[0] := 'SELECT * FROM VW_HS_PATIENTSERVICEBILL_SUM';
               SQL[1] :=
                 'WHERE BILLNO IN (SELECT DEPO_REFERENCENO FROM HS_DEPO_DEPOSIT WHERE DEPO_DEPOSITNO=' + #39 + Gs_BillNo + #39 + ')';
          end
          else if gi_BillCase in [6,7] then
          begin
               SQL[0] := 'SELECT * FROM VW_HS_REFUNDBILL_SUMMARY';
               SQL[1] := 'Where Refundbillno=' + #39 + Gs_BillNo + #39;
          end
          else
          begin
               SQL[0] := 'SELECT * FROM VW_HS_PATIENTBILL_SUMMARY';
               SQL[1] := 'Where billno=' + #39 + Gs_BillNo + #39;
          end;
          Open;
          lbl_GrossAmount.Caption := FormatFloat('#0,0.00', FieldByName('GrossAmount').AsFloat);
          lbl_Discount.Caption := FormatFloat('#0,0.00', FieldByName('Discount').AsFloat);
          //lbl_Subtotal.Caption := FormatFloat('#0,0.00', FieldByName('Subtotal').AsFloat);
          lbl_TaxableAmount.Caption := FormatFloat('#0,0.00', FieldByName('TaxableAmount').AsFloat);
          lbl_NonTaxable.Caption := FormatFloat('#0,0.00', FieldByName('NonTaxableAmount').AsFloat);
          lbl_Svrtax.Caption := FormatFloat('#0,0.00', FieldByName('Svrtax').AsFloat);
          lbl_Total.Caption := FormatFloat('#0,0.00', FieldByName('TotalAmount').AsFloat);
          pf_Total := FieldByName('TotalAmount').AsFloat;
          lbl_user.Caption := FieldByName('Username').AsString;
          if GB_isDepositBill or (gi_BillCase = 5) then
          begin
               lbl_depositamount.Caption := FormatFloat('#0,0.00', FieldByName('Deposit').AsFloat);
               lbl_balanceamt.Caption := FormatFloat('#0,0.00', (FieldByName('TotalAmount').AsFloat - FieldByName('Deposit').AsFloat));
               lbl_InvoiceNo.Caption := Gs_BillNo;
          end;

          if li_EpisodeNo > 0 then // OPD Visit Bill (For Reg & Re-Visit)
          begin
               lf_AdjDepositAmt:=GetRegAdjDepositAmt(Gs_billNO);
               if lf_AdjDepositAmt > 0 then
               Begin
                    QRLabel1.Caption:='ADJ. FROM DEPOSIT AMOUNT';
                    QRLabel1.Enabled:=True;
                    QRLabel4.Enabled:=True;
                    lbl_depositamount.Enabled:=True;
                    QRLabel6.Enabled:=True;
                    QRLabel11.Enabled:=True;
                    lbl_balanceamt.Enabled:=True;
                    lbl_depositamount.Caption := FormatFloat('#0,0.00', lf_AdjDepositAmt);
                    lbl_balanceamt.Caption := FormatFloat('#0,0.00', (QueryFooter.FieldByName('TotalAmount').AsFloat - lf_AdjDepositAmt));
               End;
          end;

          if (gi_BillCase in [2,4]) and (RefundBillExists(Gs_BillNo)) then
          begin
              lbl_balanceamt.Caption := FormatFloat('#0,0.00', (pf_Total - pf_RefundTotal));
          end;

          (*if FieldByName('Discount').AsFloat=0 then    // Remove Discount label if no discount
          begin
               QRLabel31.Enabled:=false;
               QRLabel43.Enabled:=false;
               lbl_Discount.Enabled:=false;
          end;*)
     end;
end;

procedure TForm_QRBill.FormDestroy(Sender: TObject);
begin
     // ClearVariable;
end;

procedure TForm_QRBill.lbl_AddresPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
          Value:='N/A';
end;

procedure TForm_QRBill.lbl_balanceamtPrint(sender: TObject; var Value: string);
begin
     //Value:=FormatFloat('#0.00',StrToFloat(lbl_Total.Caption)-StrToFloat(lbl_depositamount.Caption));
end;

procedure TForm_QRBill.lbl_contactnoPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
          Value:='N/A';
end;

procedure TForm_QRBill.lbl_InwordsPrint(Sender: TObject; var Value: string);
begin
     pf_Total:=StrToFloat(FormatFloat('##.00',pf_Total));
     Value := AmountInWords(pf_Total);
end;

procedure TForm_QRBill.lbl_SchemePrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
          Value:='N/A';
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
     //PageTotal := PageTotal + StrToFloat(StringReplace(Value, ',', '', [rfReplaceAll]));
     //lbl_pagetotal.Caption := FloatToStr(PageTotal);
end;

procedure TForm_QRBill.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
      if Itemscount > 13 then
     begin
//          lbl_contd.Enabled:=true;
          QrBill.NewPage;
          Itemscount:=0;
//          lbl_contd.Enabled:=false;
          //PageFooterBand1.Enabled := true;
     end;
end;

end.
