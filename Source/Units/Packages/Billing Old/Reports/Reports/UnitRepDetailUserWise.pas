unit UnitRepDetailUserWise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormRepDetailUserWise = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabelOPCS: TQRLabel;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr3: TQRExpr;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabelOPRefund: TQRLabel;
    QRBand4: TQRBand;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel13: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr16: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
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
    QRLabel_HosPhone: TQRLabel;
    QRShape4: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    QRLabel69: TQRLabel;
    QRBand5: TQRBand;
    QRExpr17: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel37: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
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
    QRLabel40: TQRLabel;
    QRExpr32: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr28: TQRExpr;
    QRSubDetail4: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabelOPCr: TQRLabel;
    QRBand6: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel30: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr13: TQRExpr;
    QRShape2: TQRShape;
    QueryCollection: TQuery;
    QueryDoctor: TQuery;
    QueryCreditRefund: TQuery;
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
    QueryName: TQuery;
    QueryTimeRange: TQuery;
    QueryRefund: TQuery;
    QueryCredit: TQuery;
    QueryDeposit: TQuery;
    QueryIPCashCollection: TQuery;
    QueryIPTPBill: TQuery;
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
    QueryIPRefund: TQuery;
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
    QueryAdvanceRefund: TQuery;
    QueryRefundNew: TQuery;
    QueryCreditNew: TQuery;
    QueryDepositNew: TQuery;
    QueryCollectionNew: TQuery;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRLabel2: TQRLabel;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QRDBText4Print(sender: TObject; var Value: string);
    procedure QRDBText64Print(sender: TObject; var Value: string);
    procedure QRDBText74Print(sender: TObject; var Value: string);
    procedure QRDBText16Print(sender: TObject; var Value: string);
    procedure QuickRep1AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    a,b,c,d,e,f :Integer;
  end;

var
  FormRepDetailUserWise: TFormRepDetailUserWise;

implementation

{$R *.dfm}

procedure TFormRepDetailUserWise.QRDBText16Print(sender: TObject;
  var Value: string);
begin
     e:=e+1;
     QRLabelOPCr.Caption:=IntToStr(e);
end;

procedure TFormRepDetailUserWise.QRDBText4Print(sender: TObject;
  var Value: string);
begin
     b:=b+1;
     QRLabelOPRefund.Caption:=IntToStr(b);
end;

procedure TFormRepDetailUserWise.QRDBText64Print(sender: TObject;
  var Value: string);
begin
     c:=c+1;
     QRLabel2.Caption:=IntToStr(c);
end;

procedure TFormRepDetailUserWise.QRDBText74Print(sender: TObject;
  var Value: string);
begin
     d:=d+1;
     QRLabel61.Caption:=IntToStr(d);
end;

procedure TFormRepDetailUserWise.QRDBText9Print(sender: TObject;
  var Value: string);
begin
     a:=a+1;
     QRLabelOPCS.Caption:=IntToStr(a);
end;

procedure TFormRepDetailUserWise.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TFormRepDetailUserWise.QuickRep1AfterPrint(Sender: TObject);
begin
     a:=0;
     b:=0;
     c:=0;
     d:=0;
     e:=0;
     f:=0;

end;

procedure TFormRepDetailUserWise.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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
