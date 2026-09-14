unit Unit_RepDepositCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_RepDepositCollection = class(TForm)
    QuickRep_Depositcollection: TQuickRep;
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
    QRBand5: TQRBand;
    QRExpr17: TQRExpr;
    QRLabel37: TQRLabel;
    QRShape9: TQRShape;
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
    QueryCollection: TOraQuery;
    QueryDoctor: TOraQuery;
    QueryCreditRefund: TOraQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField6: TStringField;
    QueryName: TOraQuery;
    QueryTimeRange: TOraQuery;
    QueryRefund: TOraQuery;
    QueryCredit: TOraQuery;
    QueryDeposit: TOraQuery;
    QueryIPCashCollection: TOraQuery;
    QueryIPTPBill: TOraQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField6: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    QueryIPTPBillADVAMT: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField11: TStringField;
    QueryIPTPBillINPATIENTID: TFloatField;
    QueryIPRefund: TOraQuery;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField11: TFloatField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField16: TStringField;
    QueryAdvanceRefund: TOraQuery;
    QueryRefundNew: TOraQuery;
    QueryCreditNew: TOraQuery;
    QueryDepositNew: TOraQuery;
    QueryCollectionNew: TOraQuery;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure QuickRep_DepositcollectionBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText64Print(sender: TObject; var Value: string);
    procedure QRDBText74Print(sender: TObject; var Value: string);
    procedure QuickRep_DepositcollectionAfterPrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRExpr28Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRExpr16Print(sender: TObject; var Value: string);
    procedure QRExpr17Print(sender: TObject; var Value: string);
    procedure QRExpr32Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
     pf_Collection,Pf_Refund,Pf_Deposit,Pf_DepositRefund:Double;
    { Public declarations }
    a,b,c,d,e,f :Integer;
  end;

var
  Form_RepDepositCollection: TForm_RepDepositCollection;

implementation

{$R *.dfm}

procedure TForm_RepDepositCollection.FormCreate(Sender: TObject);
begin
//          lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_RepDepositCollection.QRDBText64Print(sender: TObject;
  var Value: string);
begin
     c:=c+1;
     QRLabel2.Caption:=IntToStr(c);
end;

procedure TForm_RepDepositCollection.QRDBText74Print(sender: TObject;
  var Value: string);
begin
     d:=d+1;
     QRLabel61.Caption:=IntToStr(d);
end;

procedure TForm_RepDepositCollection.QRExpr16Print(sender: TObject; var Value: string);
begin
     Pf_Refund:=StrToFloat(value);
     Value:=FormatFloat('#0,0.00',Pf_Refund);
end;

procedure TForm_RepDepositCollection.QRExpr17Print(sender: TObject; var Value: string);
begin
     Pf_Deposit:=StrToFloat(value);
     Value:=FormatFloat('#0,0.00',Pf_Deposit);
end;

procedure TForm_RepDepositCollection.QRExpr28Print(sender: TObject; var Value: string);
begin
      Value:=FormatFloat('#0,0.00',Pf_Deposit-Pf_DepositRefund);
end;

procedure TForm_RepDepositCollection.QRExpr32Print(sender: TObject; var Value: string);
begin
      Pf_DepositRefund:=StrToFloat(value);
      Value:=FormatFloat('#0,0.00',Pf_DepositRefund);
end;

procedure TForm_RepDepositCollection.QRExpr3Print(sender: TObject; var Value: string);
begin
     pf_Collection:=StrToFloat(value);
     Value:=FormatFloat('#0,0.00',pf_Collection);
end;

procedure TForm_RepDepositCollection.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_RepDepositCollection.QuickRep_DepositcollectionAfterPrint(Sender: TObject);
begin
     a:=0;
     b:=0;
     c:=0;
     d:=0;
     e:=0;
     f:=0;

end;

procedure TForm_RepDepositCollection.QuickRep_DepositcollectionBeforePrint(Sender: TCustomQuickRep;
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
