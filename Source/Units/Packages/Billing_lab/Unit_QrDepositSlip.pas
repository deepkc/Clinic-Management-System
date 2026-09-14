unit Unit_QrDepositSlip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Fxn,
  ServerDate,InWordsSu,
  Dialogs, QRCtrls, qrBarcode, QuickRpt, ExtCtrls;

type
  TForm_QrDepositSlip = class(TForm)
    QrDepositSlip: TQuickRep;
    PageHeaderBand1: TQRBand;
    lbl_headName: TQRLabel;
    lbl_reprint: TQRLabel;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRLabel28: TQRLabel;
    lbl_Inwords: TQRLabel;
    QRLabel30: TQRLabel;
    lbl_user: TQRLabel;
    QRLabel40: TQRLabel;
    lbl_Total: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape3: TQRShape;
    QRLabel22: TQRLabel;
    lbl_Date: TQRLabel;
    QRLabel34: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    lbl_pagetotal: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lbl_totpage: TQRLabel;
    QRSysData1: TQRSysData;
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
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    lbl_InvoiceDate: TQRLabel;
    QrBarcode: TQRAsBarcode;
    lbl_Particular: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    lbl_amount: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
     pf_Total:Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrDepositSlip: TForm_QrDepositSlip;

implementation

{$R *.dfm}

procedure TForm_QrDepositSlip.FormCreate(Sender: TObject);
Var
     Str:String;
begin
     QrBarcode.Text:=Gs_BillNo;
     lbl_InvoiceNo.Caption:=Gs_BillNo;
     lbl_InvoiceDate.Caption:=GetBillDate(Gs_BillNo);
     lbl_Name.Caption:=UpperCase(MyPatient.PatientName);
     Lbl_HosNo.Caption:=IntToStr(MyPatient.PatientId);
     lbl_Addres.Caption:=MyPatient.Address;
     lbl_agesex.Caption:=MyPatient.AgeGender;
     lbl_contactno.Caption:=MyPatient.ContactNo;
     lbl_Date.Caption:=TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;
     if Copy(Gs_BillNo,1,2)='DP' then
     pf_Total:=GetDrAmount(Gs_BillNo)
     else if Copy(Gs_BillNo,1,2)='DR' then
     pf_Total:=GetCrAmount(Gs_BillNo);

     lbl_amount.Caption:=FormatFloat('#0,0.00',pf_Total);
     lbl_Total.Caption:=FormatFloat('#0,0.00',pf_Total);
     lbl_Inwords.Caption:=AmountInWords(pf_Total);

     if Copy(Gs_BillNo,1,2)='DP' then
     Str:='Deposit for '+GetDepositRefType(Gs_BillNo)
     else if Copy(Gs_BillNo,1,2)='DR' then
     Str:='Deposit refund for '+GetDepositRefType(Gs_BillNo);

     lbl_Particular.Caption:=Str;
     lbl_user.Caption:=GetDepositUser(Gs_BillNo);
end;

end.
