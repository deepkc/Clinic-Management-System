unit UnitRepDeptWiseCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TFormRepDeptWiseSum = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QueryMain: TQuery;
    QRExpr1: TQRExpr;
    SummaryBand1: TQRBand;
    QRShape1: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel21: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRShape2: TQRShape;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QueryDeposit: TQuery;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    procedure QRLabel8Print(sender: TObject; var Value: string);
    procedure QRLabel3Print(sender: TObject; var Value: string);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QRExpr12Print(sender: TObject; var Value: string);
    procedure QRExpr13Print(sender: TObject; var Value: string);
    procedure QRDBText16Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    pi_Sno:Integer;
      pf_CreditDuesAmount,pf_SemiTotal,pf_DepWiseIPRef,pf_CommunityRef:Double;
      pf_RefundAmt,pf_RefundSvrTax,pf_CreditDisColln:Double;
      pf_CrRefundAmt,pf_CrRefTax:Double;
    i:Integer;
  end;

var
  FormRepDeptWiseSum: TFormRepDeptWiseSum;

implementation

{$R *.dfm}

procedure TFormRepDeptWiseSum.QRDBText16Print(sender: TObject;
  var Value: string);
begin
   //  pf_CreditDisColln:=StrToFloat(Value);
   //Value:=FormatFloat('#,##0.00',pf_CreditDisColln);
end;

procedure TFormRepDeptWiseSum.QRDBText1Print(sender: TObject;
  var Value: string);
begin
     i:=i+1;
     QRLabel19.Caption:=IntToStr(i);
end;

procedure TFormRepDeptWiseSum.QRExpr12Print(sender: TObject; var Value: string);
begin
   //  pf_RefundAmt:=StrToFloat(Value)-QueryMain.FieldByName('NetRefAmt').AsFloat;
 //  Value:=FormatFloat('#,##0.00',pf_RefundAmt);
end;

procedure TFormRepDeptWiseSum.QRExpr13Print(sender: TObject; var Value: string);
begin
 // pf_CreditDuesAmount:=StrToFloat(Value);
 //  Value:=FormatFloat('#,##0.00',pf_CreditDuesAmount);
end;

procedure TFormRepDeptWiseSum.QRLabel3Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TFormRepDeptWiseSum.QRLabel8Print(sender: TObject; var Value: string);
begin
     Value:=serverdate.TodaysDate;
end;

procedure TFormRepDeptWiseSum.QuickRep1AfterPrint(Sender: TObject);
begin
     i:=1;
end;

procedure TFormRepDeptWiseSum.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     i:=1;
end;

initialization
     RegisterClass(TFormRepDeptWiseSum);
Finalization
     UnRegisterClass(TFormRepDeptWiseSum);

end.
