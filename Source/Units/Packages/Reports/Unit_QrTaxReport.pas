unit Unit_QrTaxReport;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Serverdate, Fxn,Dm,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_QrTaxReport = class(TForm)
          QuickRep1: TQuickRep;
          TitleBand1: TQRBand;
          lbl_hosname: TQRLabel;
          lbl_hosaddress: TQRLabel;
          QRLabelReportTitle: TQRLabel;
          lbl_date: TQRLabel;
          QRLabel28: TQRLabel;
          QRLabel1: TQRLabel;
          QRLabel2: TQRLabel;
          QRLabel3: TQRLabel;
          QRShape4: TQRShape;
          QRShape5: TQRShape;
          QRShape1: TQRShape;
          QRSubDetail1: TQRSubDetail;
          QRDBText1: TQRDBText;
          QRDBText2: TQRDBText;
          QRDBText3: TQRDBText;
          Query_Data: TOraQuery;
          Query_BillRange: TOraQuery;
          GroupFooterBand1: TQRBand;
          QRExpr1: TQRExpr;
          QRExpr2: TQRExpr;
          QRExpr3: TQRExpr;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRDBText5: TQRDBText;
          QRShape2: TQRShape;
          QRShape3: TQRShape;
          QRShape6: TQRShape;
          QRShape7: TQRShape;
          QRShape8: TQRShape;
          QRShape9: TQRShape;
          QRShape10: TQRShape;
          QRShape11: TQRShape;
          QRShape12: TQRShape;
          QRShape13: TQRShape;
          QRShape14: TQRShape;
          QRShape15: TQRShape;
          QRShape17: TQRShape;
          QRShape18: TQRShape;
          QRShape19: TQRShape;
          QRShape20: TQRShape;
          QRShape21: TQRShape;
          QRLabel6: TQRLabel;
          QRDBText4: TQRDBText;
          QRShape16: TQRShape;
          QRLabel7: TQRLabel;
          QRShape22: TQRShape;
          QRDBText6: TQRDBText;
          QRExpr4: TQRExpr;
          QRShape23: TQRShape;
    lbl_billno: TQRLabel;
    QRDBText7: TQRDBText;
          procedure FormCreate(Sender: TObject);
          procedure lbl_billnoPrint(Sender: TObject; var Value: string);
          procedure QRDBText5Print(Sender: TObject; var Value: string);
          procedure QRDBText4Print(Sender: TObject; var Value: string);
          procedure lbl_BillCountPrint(Sender: TObject; var Value: string);
    procedure QRDBText1Print(sender: TObject; var Value: string);
    procedure QRExpr3Print(sender: TObject; var Value: string);
    procedure QRDBText2Print(sender: TObject; var Value: string);
    procedure QRDBText3Print(sender: TObject; var Value: string);
    procedure QRExpr2Print(sender: TObject; var Value: string);
    procedure QRExpr1Print(sender: TObject; var Value: string);
     private
          Pf_SubTotal,Pf_Hst,Pf_NetTotal:Double;
          { Private declarations }
     public
          pb_Detail: Boolean;
          ps_Date: String;
          Ps_Paytype: String;
          ps_billcount: String;
          { Public declarations }
     end;

var
     Form_QrTaxReport: TForm_QrTaxReport;

implementation

uses Unit_TaxReport;
{$R *.dfm}

procedure TForm_QrTaxReport.FormCreate(Sender: TObject);
begin
     lbl_hosname.Caption := gs_HospitalName;
     lbl_hosaddress.Caption := gs_HospitalAddress;
     lbl_date.Caption := 'From ' + gs_From + ' to ' + gs_to;

     if Form_TaxReport.Rb_Detail.Checked then
          pb_Detail := true
     else
          pb_Detail := false;

     with Query_Data do
     begin
          Close;
          SQL.Clear;
          Session:=Dm_Hospital.Db;
          if not pb_Detail then
          begin
               SQL.Add(' SELECT ''CASH'' AS PAYTYPE,SUM(SUBTOTAL)SUBTOTAL,SUM(HST)HST,SUM(NETTOTAL)NETTOTAL,COUNT(BILLNO)BILLCOUNT ');
	          SQL.Add(' ,MIN(SUBSTR(BILLNO,9))||''-''||MAX(SUBSTR(BILLNO,9))BILLRANGE ');
	          SQL.Add(' FROM VW_SALESBOOKCASH ');
               SQL.Add(' WHERE BILLDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39);
               SQL.Add(' UNION ');
               SQL.Add(' SELECT ''REFUND'' AS PAYTYPE,SUM(SUBTOTAL)SUBTOTAL,SUM(HST)HST,SUM(NETTOTAL)NETTOTAL,COUNT(BILLNO)BILLCOUNT ');
               SQL.Add(' ,MIN(SUBSTR(BILLNO,9))||''-''||MAX(SUBSTR(BILLNO,9))BILLRANGE ');
               SQL.Add(' FROM VW_SALESBOOKREFUND ');
               SQL.Add(' WHERE REFUNDDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39);
          end
          else
          begin
               SQL.Add(' SELECT * FROM ( ');
               SQL.Add(' SELECT ''CASH'' AS PAYTYPE,BILLDATE,SUM(SUBTOTAL)SUBTOTAL,SUM(HST)HST,SUM(NETTOTAL)NETTOTAL,COUNT(BILLNO)BILLCOUNT ');
               SQL.Add(' ,MIN(SUBSTR(BILLNO,9))||''-''||MAX(SUBSTR(BILLNO,9))BILLRANGE ');
               SQL.Add(' FROM VW_SALESBOOKCASH ');
                SQL.Add(' WHERE BILLDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39);
               SQL.Add(' GROUP BY BILLDATE ');
               SQL.Add(' UNION ');
               SQL.Add(' SELECT ''REFUND'' AS PAYTYPE,REFUNDDATE,SUM(SUBTOTAL)SUBTOTAL,SUM(HST)HST,SUM(NETTOTAL)NETTOTAL,COUNT(BILLNO)BILLCOUNT ');
               SQL.Add(' ,MIN(SUBSTR(BILLNO,9))||''-''||MAX(SUBSTR(BILLNO,9))BILLRANGE ');
               SQL.Add(' FROM VW_SALESBOOKREFUND ');
               SQL.Add(' WHERE REFUNDDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39);
               SQL.Add(' GROUP BY REFUNDDATE) ');
               SQL.Add(' ORDER BY BILLDATE ');
          end;
          Open;
     end;
end;

procedure TForm_QrTaxReport.lbl_BillCountPrint(Sender: TObject; var Value: string);
begin
     Value := ps_billcount;
end;

procedure TForm_QrTaxReport.lbl_billnoPrint(Sender: TObject; var Value: string);
Var
     Qry: TOraQuery;
begin
//     Qry := TOraQuery.Create(nil);
//     with Qry do
//     begin
//          Close;
//          SQL.Clear;
//          Session:=Dm_Hospital.Db;
//          SQL.Add('SELECT A.BILLNORANGE,SUBSTR(A.BILLNORANGE,(INSTR(A.BILLNORANGE,''-'')+1))');
//          SQL.Add('-SUBSTR(A.BILLNORANGE,1,INSTR(A.BILLNORANGE,''-'')-1)+1BILLCOUNT FROM');
//          SQL.Add('(SELECT(');
//          SQL.Add('SELECT MIN(TO_NUMBER(SUBSTR(SB.BILLNO,9,15)))MINBILLNO');
//          SQL.Add('FROM VW_SALESBOOKCASH SB');
//          if not pb_Detail then
//               SQL.Add('WHERE SB.BILLDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39)
//          else
//               SQL.Add('WHERE SB.BILLDATE=' + #39 + ps_Date + #39);
//          SQL.Add(' AND PAYTYPE=' + #39 + Ps_Paytype + #39 + ')');
//          SQL.Add('||''-''||');
//          SQL.Add('(SELECT MAX(TO_NUMBER(SUBSTR(SB.BILLNO,9,15)))MAXBILLNO');
//          SQL.Add('FROM VW_SALESBOOKCASH SB');
//          if not pb_Detail then
//               SQL.Add('WHERE SB.BILLDATE BETWEEN ' + #39 + gs_From + #39 + ' AND ' + #39 + gs_to + #39)
//          else
//               SQL.Add('WHERE SB.BILLDATE=' + #39 + ps_Date + #39);
//          SQL.Add(' And PAYTYPE=' + #39 + Ps_Paytype + #39 + ')BILLNORANGE');
//          SQL.Add('FROM DUAL)A');
//          Open;
//          Value := FieldByName('BillNoRange').AsString;
//          ps_billcount := FieldByName('BillCount').AsString;
//     end;
//     Qry.Free;
end;

procedure TForm_QrTaxReport.QRDBText1Print(sender: TObject; var Value: string);
begin
     if Ps_Paytype='CASH' then
          Pf_SubTotal:=Pf_SubTotal+StrToFloat(Value)
     else if Ps_Paytype='REFUND' then
          Pf_SubTotal:=Pf_SubTotal-StrToFloat(Value);
end;

procedure TForm_QrTaxReport.QRDBText2Print(sender: TObject; var Value: string);
begin
     if Ps_Paytype='CASH' then
          Pf_Hst:=Pf_Hst+StrToFloat(Value)
     else if Ps_Paytype='REFUND' then
          Pf_Hst:=Pf_Hst-StrToFloat(Value);
end;

procedure TForm_QrTaxReport.QRDBText3Print(sender: TObject; var Value: string);
begin
     if Ps_Paytype='CASH' then
          Pf_NetTotal:=Pf_NetTotal+StrToFloat(Value)
     else if Ps_Paytype='REFUND' then
          Pf_NetTotal:=Pf_NetTotal-StrToFloat(Value);
end;

procedure TForm_QrTaxReport.QRDBText4Print(Sender: TObject; var Value: string);
begin
     Ps_Paytype := Value;
end;

procedure TForm_QrTaxReport.QRDBText5Print(Sender: TObject; var Value: string);
begin
     ps_Date := Value;
end;

procedure TForm_QrTaxReport.QRExpr1Print(sender: TObject; var Value: string);
begin
     Value:=FormatFloat('#0.00',Pf_NetTotal);
end;

procedure TForm_QrTaxReport.QRExpr2Print(sender: TObject; var Value: string);
begin
     Value:=FormatFloat('#0.00',Pf_Hst);
end;

procedure TForm_QrTaxReport.QRExpr3Print(sender: TObject; var Value: string);
begin
     Value:=FormatFloat('#0.00',Pf_SubTotal);
end;

end.
