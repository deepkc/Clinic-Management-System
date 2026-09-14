unit Unit_QrCreditDiscountReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_QrCreditDiscount = class(TForm)
    QuickRep_PaymentDues: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabelUser: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    Date1: TQRLabel;
    Date2: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabelTimeRange: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel_HosName: TQRLabel;
    lbl_address: TQRLabel;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel61: TQRLabel;
    QRBand3: TQRBand;
    QRLabel26: TQRLabel;
    QRShape6: TQRShape;
    QRExpr32: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr28: TQRExpr;
    QueryDue: TOraQuery;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText2: TQRDBText;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure QuickRep_PaymentDuesBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText64Print(sender: TObject; var Value: string);
    procedure QRDBText74Print(sender: TObject; var Value: string);
    procedure QuickRep_PaymentDuesAfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbl_addressPrint(sender: TObject; var Value: string);
    procedure QRLabelUserPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
     pf_Collection,Pf_Refund,Pf_Deposit,Pf_DepositRefund:Double;
    { Public declarations }
    a,b,c,d,e,f :Integer;
  end;

var
  Form_QrCreditDiscount: TForm_QrCreditDiscount;

implementation

{$R *.dfm}

procedure TForm_QrCreditDiscount.FormCreate(Sender: TObject);
begin
//          lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_QrCreditDiscount.lbl_addressPrint(sender: TObject;
  var Value: string);
begin
     value:=gs_HospitalAddress;
end;

procedure TForm_QrCreditDiscount.QRDBText64Print(sender: TObject;
  var Value: string);
begin
     c:=c+1;
     QRLabel2.Caption:=IntToStr(c);
end;

procedure TForm_QrCreditDiscount.QRDBText74Print(sender: TObject;
  var Value: string);
begin
     d:=d+1;
     QRLabel61.Caption:=IntToStr(d);
end;

procedure TForm_QrCreditDiscount.QRLabelUserPrint(sender: TObject;
  var Value: string);
begin
     value:=gs_username;
end;

procedure TForm_QrCreditDiscount.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_QrCreditDiscount.QuickRep_PaymentDuesAfterPrint(Sender: TObject);
begin
     a:=0;
     b:=0;
     c:=0;
     d:=0;
     e:=0;
     f:=0;

end;

procedure TForm_QrCreditDiscount.QuickRep_PaymentDuesBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     a:=0;
     b:=0;
     c:=0;
     d:=0;
     e:=0;
     f:=0;

end;

end.
