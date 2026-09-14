unit Unit_QrReceipt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Fxn,
  ServerDate,InWordsSu,
  Dialogs, QRCtrls, qrBarcode, QuickRpt, ExtCtrls, DB, DBTables, DBAccess, OraSmart, OraError, MemDS,
  Ora;

type
  TForm_QrReceipt = class(TForm)
    Qr_Receipt: TQuickRep;
    PageHeaderBand1: TQRBand;
    lbl_headName: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRLabel34: TQRLabel;
    lbl_billtype: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    DetailBand1: TQRBand;
    lbl_Particular: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel18: TQRLabel;
    lbl_Name: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    Lbl_HosNo: TQRLabel;
    Query_Receipt: TOraQuery;
    Query_TotalPatient: TOraQuery;
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText10Print(sender: TObject; var Value: string);
    procedure QRLabel14Print(sender: TObject; var Value: string);
    procedure Qr_ReceiptAfterPrint(Sender: TObject);
  private

     pf_ReceiptAmount:Double;




    { Private declarations }
  public
          ps_ReceiptNo : String;
          Procedure GetReceiptDetail;

    { Public declarations }
  end;

var
  Form_QrReceipt: TForm_QrReceipt;

implementation

{$R *.dfm}

procedure TForm_QrReceipt.GetReceiptDetail;
Var
     Str:String;
begin
     SetPrinter('Bill Printer');
     With Query_Receipt do
     Begin
          Close;
          sql[3]:=' Where CRPD_RECEIPTNO='+#39+ps_ReceiptNo+#39;
          SQL.SAVETOFILE('C:/LAB.TXT');
          Open;
     End;
     {QrBarcode.Text:=Gs_BillNo;
     lbl_InvoiceNo.Caption:=Gs_BillNo;}

end;

procedure TForm_QrReceipt.QRDBText10Print(sender: TObject; var Value: string);
begin
     if gi_datesystem=1 then
     Value := '( '+ADToVSS(Copy(Query_Receipt.FieldByName('DATETIME').AsString,1,10))+' BS )'
     Else
     Value := '( '+VSTOADS(Copy(Query_Receipt.FieldByName('DATETIME').AsString,1,10))+' AD )';
end;

procedure TForm_QrReceipt.QRDBText2Print(sender: TObject; var Value: string);
begin
     pf_ReceiptAmount:=StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',pf_ReceiptAmount);
end;

procedure TForm_QrReceipt.QRDBText4Print(sender: TObject; var Value: string);
begin
     Value:=AmountInWords(pf_ReceiptAmount);
end;

procedure TForm_QrReceipt.QRLabel14Print(sender: TObject; var Value: string);
begin
     value:=gs_HospitalName;
end;

procedure TForm_QrReceipt.Qr_ReceiptAfterPrint(Sender: TObject);
var
     qry : TOraQuery;
begin
     qry := TOraQuery.Create(Nil);
     {with qry do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add('Update HS_CRPM_CREDITPAYMENTMASTER SET CRPM_NOOFPRINT=CRPM_NOOFPRINT+1,CRPM_ISPRINTED=''Y'',CRPM_PRINTEDBY='+IntToStr(gi_UserID));
          SQL.Add(',CRPM_PRINTEDTIME='+#39+TodaysTime+#39+'WHERE CRPM_RECEIPTNO='+#39+Gs_BillNo+#39);
          ExecSQL;
     end;}

end;

end.
