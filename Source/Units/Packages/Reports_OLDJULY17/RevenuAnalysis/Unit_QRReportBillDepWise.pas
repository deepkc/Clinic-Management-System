unit Unit_QRReportBillDepWise;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids;

type
  TForm_QRReportBillDepWise = class(TForm)
    QuickRep1: TQuickRep;
    QRGroupTop: TQRGroup;
    QRLabel6: TQRLabel;
    QueryMaster: TOraQuery;
    QueryDetail: TOraQuery;
    DataSourceQueryMaster: TDataSource;
    QRDBText1: TQRDBText;
    SummaryBand2: TQRBand;
    QRLabel11: TQRLabel;
    QueryUser: TOraQuery;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QRLabel4: TQRLabel;
    QueryBillCancel: TOraQuery;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRExpr14: TQRExpr;
    ColumnHeaderBand2: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabelTo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel20: TQRLabel;
    QRLabelTestName: TQRLabel;
    QRGroup2nd: TQRGroup;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText10: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    GroupFooter1st: TQRBand;
    GroupBand2nd: TQRBand;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRExpr9: TQRExpr;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QueryDetail1: TOraQuery;
    QueryMasterDepName: TStringField;
    QRLabel10: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QueryMasterPayType: TStringField;
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRExpr7Print(sender: TObject; var Value: String);
    procedure QRExpr13Print(sender: TObject; var Value: String);
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QRExpr17Print(sender: TObject; var Value: String);
    procedure QRExpr15Print(sender: TObject; var Value: String);
    procedure QRExpr16Print(sender: TObject; var Value: String);
    procedure QRExpr18Print(sender: TObject; var Value: String);
    procedure QRExpr8Print(sender: TObject; var Value: String);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr10Print(sender: TObject; var Value: String);
    procedure QRExpr14Print(sender: TObject; var Value: String);
    procedure QRExpr3Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
    procedure QueryDetailAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

       pf_Netamount,pf_NetDiscount,pf_NetSubTotal,pf_NetSvrTax,pf_NetTotal:Double;
       pf_PayTypeAmount,pf_PayTypeDiscount,pf_PayTypeSubTotal,pf_PayTypeSvrTax,pf_PayTypeTotal:Double;
       BillType,Pre_Dept,Curr_Dept:String;

  end;

var
  Form_QRReportBillDepWise: TForm_QRReportBillDepWise;

implementation

uses Fxn;

{$R *.DFM}

procedure TForm_QRReportBillDepWise.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TForm_QRReportBillDepWise.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HosSloganTitle;
end;

procedure TForm_QRReportBillDepWise.QRLabel18Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

procedure TForm_QRReportBillDepWise.QRLabel19Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalPhoneNumber;
end;

procedure TForm_QRReportBillDepWise.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     //HideMinButtonOnReport;

     pf_Netamount:=0;
     pf_NetDiscount:=0;
     pf_NetSubTotal:=0;
     pf_NetSvrTax:=0;
     pf_NetTotal:=0;

     pf_PayTypeAmount:=0;
     pf_PayTypeDiscount:=0;
     pf_PayTypeSubTotal:=0;
     pf_PayTypeSvrTax:=0;
     pf_PayTypeTotal:=0;

     Pre_Dept:='';
     Curr_Dept:='';
end;

{

procedure TFormReportBillDepWise.QRExpr12Print(sender: TObject;
  var Value: String);
begin

end;

procedure TFormReportBillDepWise.QRExpr6Print(sender: TObject;
  var Value: String);
begin

end;

procedure TFormReportBillDepWise.QRExpr10Print(sender: TObject;
  var Value: String);
begin

end;

procedure TFormReportBillDepWise.QRExpr14Print(sender: TObject;
  var Value: String);
begin

end;

procedure TFormReportBillDepWise.QRExpr3Print(sender: TObject;
  var Value: String);
begin

end;  }

procedure TForm_QRReportBillDepWise.QRDBText10Print(sender: TObject;
  var Value: String);
begin
     BillType:=Value;
end;

procedure TForm_QRReportBillDepWise.QRExpr11Print(sender: TObject;
  var Value: String);
begin
     If (BillType='CASH') OR (BillType='CREDIT') then
       pf_PayTypeAmount:=pf_PayTypeAmount+StrToFloat(Value)
     Else If BillType='REFUND' then
       pf_PayTypeAmount:=pf_PayTypeAmount-StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',StrToFloat(Value));
end;

procedure TForm_QRReportBillDepWise.QRExpr5Print(sender: TObject;
  var Value: String);
begin
     If (BillType='CASH') OR (BillType='CREDIT') then
       pf_PayTypeDiscount:=pf_PayTypeDiscount+StrToFloat(Value)
     Else If BillType='REFUND' then
       pf_PayTypeDiscount:=pf_PayTypeDiscount-StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',StrToFloat(Value));
end;

procedure TForm_QRReportBillDepWise.QRExpr7Print(sender: TObject;
  var Value: String);
begin
     If (BillType='CASH') OR (BillType='CREDIT') then
       pf_PayTypeSubTotal:=pf_PayTypeSubTotal+StrToFloat(Value)
     Else If BillType='REFUND' then
       pf_PayTypeSubTotal:=pf_PayTypeSubTotal-StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',StrToFloat(Value));
end;

procedure TForm_QRReportBillDepWise.QRExpr13Print(sender: TObject;
  var Value: String);
begin
     If (BillType='CASH') OR (BillType='CREDIT') then
       pf_PayTypeSvrTax:=pf_PayTypeSvrTax+StrToFloat(Value)
     Else If BillType='REFUND' then
       pf_PayTypeSvrTax:=pf_PayTypeSvrTax-StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',StrToFloat(Value));
end;

procedure TForm_QRReportBillDepWise.QRExpr2Print(sender: TObject;
  var Value: String);
begin
     If (BillType='CASH') OR (BillType='CREDIT') then
       pf_PayTypeTotal:=pf_PayTypeTotal+StrToFloat(Value)
     Else If BillType='REFUND' then
       pf_PayTypeTotal:=pf_PayTypeTotal-StrToFloat(Value);
     Value:=FormatFloat('#,##0.00',StrToFloat(Value));
end;

procedure TForm_QRReportBillDepWise.QRExpr17Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_PayTypeAmount);
     pf_Netamount:=pf_Netamount+pf_PayTypeAmount;
end;

procedure TForm_QRReportBillDepWise.QRExpr15Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_PayTypeDiscount);
     pf_NetDiscount:=pf_NetDiscount+pf_PayTypeDiscount;
end;

procedure TForm_QRReportBillDepWise.QRExpr16Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_PayTypeSubTotal);
     pf_NetSubTotal:=pf_NetSubTotal+pf_PayTypeSubTotal;
end;

procedure TForm_QRReportBillDepWise.QRExpr18Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_PayTypeSvrTax);
     pf_NetSvrTax:=pf_NetSvrTax+pf_PayTypeSvrTax;
end;

procedure TForm_QRReportBillDepWise.QRExpr8Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_PayTypeTotal);
     pf_NetTotal:=pf_NetTotal+pf_PayTypeTotal;
end;

procedure TForm_QRReportBillDepWise.QRExpr12Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_Netamount);
end;

procedure TForm_QRReportBillDepWise.QRExpr6Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_NetDiscount);
end;

procedure TForm_QRReportBillDepWise.QRExpr10Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_NetSubTotal);
end;

procedure TForm_QRReportBillDepWise.QRExpr14Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_NetSvrTax);
end;

procedure TForm_QRReportBillDepWise.QRExpr3Print(sender: TObject;
  var Value: String);
begin
     Value:=FormatFloat('#,##0.00',pf_NetTotal);
end;

procedure TForm_QRReportBillDepWise.QRDBText1Print(sender: TObject;
  var Value: String);
begin
     Curr_Dept:=Value;
     If Curr_Dept<>Pre_Dept then
     begin
          pf_PayTypeAmount:=0;
          pf_PayTypeDiscount:=0;
          pf_PayTypeSubTotal:=0;
          pf_PayTypeSvrTax:=0;
          pf_PayTypeTotal:=0;
     end;
     Pre_Dept:=Curr_Dept;
end;

procedure TForm_QRReportBillDepWise.QueryDetailAfterScroll(DataSet: TDataSet);
begin
     IF QueryDetail.Eof Then
     Begin
          PageFooterBand1.Frame.DrawTop:=False;
          QRShape4.Pen.Color:=clWhite;
          QRShape5.Pen.Color:=clWhite;
     End;
end;

end.
