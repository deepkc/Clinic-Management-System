unit Unit_QrPaymentDues;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_RepPAymentDues = class(TForm)
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
    QueryDepositNew: TOraQuery;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure QuickRep_PaymentDuesBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText64Print(sender: TObject; var Value: string);
    procedure QRDBText74Print(sender: TObject; var Value: string);
    procedure QuickRep_PaymentDuesAfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     pf_Collection,Pf_Refund,Pf_Deposit,Pf_DepositRefund:Double;
    { Public declarations }
    a,b,c,d,e,f :Integer;
  end;

var
  Form_RepPAymentDues: TForm_RepPAymentDues;

implementation

{$R *.dfm}

procedure TForm_RepPAymentDues.FormCreate(Sender: TObject);
begin
//          lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_RepPAymentDues.QRDBText64Print(sender: TObject;
  var Value: string);
begin
     c:=c+1;
     QRLabel2.Caption:=IntToStr(c);
end;

procedure TForm_RepPAymentDues.QRDBText74Print(sender: TObject;
  var Value: string);
begin
     d:=d+1;
     QRLabel61.Caption:=IntToStr(d);
end;

procedure TForm_RepPAymentDues.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_RepPAymentDues.QuickRep_PaymentDuesAfterPrint(Sender: TObject);
begin
     a:=0;
     b:=0;
     c:=0;
     d:=0;
     e:=0;
     f:=0;

end;

procedure TForm_RepPAymentDues.QuickRep_PaymentDuesBeforePrint(Sender: TCustomQuickRep;
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
