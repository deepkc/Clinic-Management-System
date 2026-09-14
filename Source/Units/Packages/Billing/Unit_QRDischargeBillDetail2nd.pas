unit Unit_QRDischargeBillDetail2nd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn;

type
  TFormReportDischargeBillDetail2nd = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel10: TQRLabel;
    QRGroup2: TQRGroup;
    QRExpr6: TQRExpr;
    QueryCharges: TOraQuery;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QueryChargeMaster: TOraQuery;
    DataSourceChargeMaster: TDataSource;
    ColumnHeaderBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel_TaxSystemCap: TQRLabel;
    QRLabelGTotal: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    Query_GetFinalCharge: TOraQuery;
    Query_Deposit: TOraQuery;
    QRLabelTotalAmt: TQRLabel;
    QRLabelTaxAmt: TQRLabel;
    QRLabelDiscount: TQRLabel;
    QRLabelSubTotal: TQRLabel;
    QRLabelDeposit: TQRLabel;
    QRLabelGrandTotAmt: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabeltTotal: TQRLabel;
    QRLabelUsd: TQRLabel;
    QRLabelInUSD: TQRLabel;
    Query_Refund: TOraQuery;
    Query_GetNetMedicine: TOraQuery;
    Query_GetMedRefund: TOraQuery;
    QueryChargeMasterPaymentCategory: TStringField;
    procedure QRExpr1Print(sender: TObject; var Value: String);
    procedure QRLabel_TaxSystemCapPrint(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRDBText5Print(sender: TObject; var Value: string);
    procedure QRDBText6Print(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRDBText8Print(sender: TObject; var Value: string);
    procedure QRDBText9Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReportDischargeBillDetail2nd: TFormReportDischargeBillDetail2nd;

implementation


{$R *.DFM}

procedure TFormReportDischargeBillDetail2nd.QRDBText5Print(sender: TObject; var Value: string);
begin
     if Trim(Value)<>'' then
     Begin
          if Copy(Value,1,1)<>'-' then
          Value:=FormatFloat('#,##0.00',StrToFloat(Value))
          Else
          Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
     End;
end;

procedure TFormReportDischargeBillDetail2nd.QRDBText6Print(sender: TObject; var Value: string);
begin
     if Trim(Value)<>'' then
     Begin
          if Copy(Value,1,1)<>'-' then
          Value:=FormatFloat('#,##0.00',StrToFloat(Value))
          Else
          Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
     End;
end;

procedure TFormReportDischargeBillDetail2nd.QRDBText7Print(sender: TObject; var Value: string);
begin
     if Trim(Value)<>'' then
     Begin
          if Copy(Value,1,1)<>'-' then
          Value:=FormatFloat('#,##0.00',StrToFloat(Value))
          Else
          Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
     End;
end;

procedure TFormReportDischargeBillDetail2nd.QRDBText8Print(sender: TObject; var Value: string);
begin
     if Trim(Value)<>'' then
     Begin
          if Copy(Value,1,1)<>'-' then
          Value:=FormatFloat('#,##0.00',StrToFloat(Value))
          Else
          Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
     End;
end;

procedure TFormReportDischargeBillDetail2nd.QRDBText9Print(sender: TObject; var Value: string);
begin
     if Trim(Value)<>'' then
     Begin
          if Copy(Value,1,1)<>'-' then
          Value:=FormatFloat('#,##0.00',StrToFloat(Value))
          Else
          Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
     End;
end;

procedure TFormReportDischargeBillDetail2nd.QRExpr1Print(sender: TObject;
  var Value: String);
begin
{     IF QueryChargeMaster.PaymentCategory='MEDICINE CHARGES' Then
     Begin
          With Query_GetNetMedicine do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select Sum(Amount) as Amount,Sum(Discount) as Discount,Sum(SubTotal) as SubTotal');
               sql.add(' Sum(TaxAmt) as TaxAmt,Sum(Total) as Total  FinalDischargeBillDetail.db where ReturnStatus<>''R''');
               Open;
          End;

          With Query_GetMedRefund do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select Sum(Amount) as Amount,Sum(Discount) as Discount,Sum(SubTotal) as SubTotal');
               sql.add(' Sum(TaxAmt) as TaxAmt,Sum(Total) as Total  FinalDischargeBillDetail.db where ReturnStatus=''R''');
               Open;
          End;

     End;}
end;

procedure TFormReportDischargeBillDetail2nd.QRLabel_TaxSystemCapPrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_SvrTaxCap+' @ '+FloatToStr(gf_TaxPercent)+' %';
     //Value:='VAT @ '+FloatToStr(gf_TaxPercent)+' %';
end;

procedure TFormReportDischargeBillDetail2nd.QRLabel27Print(sender: TObject;
  var Value: String);
begin
     //Value:='VAT';//gs_SvrTaxCap;
     //Value:='Vat(13%)';//gs_SvrTaxCap;
end;

end.
