unit Unit_QRCreditReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtCtrls, Fxn, qrpBaseCtrls;

type
  TForm_QRCreditReport = class(TForm)
    QR_CreditReport_WithReceipt: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRGroup_Header: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    QRBand_Footer: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel_Add: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel_Time: TQRLabel;
    QRLabel_Print: TQRLabel;
    QRLabelToday: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRExpr6: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr20: TQRExpr;
    QR_CreditSalesOPIP: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand1: TQRBand;
    QRExpr9: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr10: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr13: TQRExpr;
    PageHeaderBand1: TQRBand;
    QRLabel_TodayIP: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel_ToIP: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel_FromIP: TQRLabel;
    QRLabel23: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText26: TQRDBText;
    GroupFooterBand1: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel25: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRGroup2: TQRGroup;
    QRSysData2: TQRSysData;
    QRExpr22: TQRExpr;
    ChildBand1: TQRChildBand;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape1: TQRShape;
    QRLabel45: TQRLabel;
    Query_CreditReportMaster: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    DS_CreditReportMaster: TDataSource;
    Query_CreditReportDetail: TOraQuery;
    QRDBText21: TQRDBText;
    QRLabel_ReportTitleIP: TQRLabel;
    Query_Master: TOraQuery;
    Query_MasterSCHEMEID: TFloatField;
    Query_MasterSCHEMENAME: TStringField;
    DS_Master: TDataSource;
    Query_Detail: TOraQuery;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel_AddPrint(sender: TObject; var Value: string);
    procedure QRDBText16Print(sender: TObject; var Value: string);
    procedure QRDBText17Print(sender: TObject; var Value: string);
    procedure QRDBText21Print(sender: TObject; var Value: string);
    procedure QRDBText18Print(sender: TObject; var Value: string);
    procedure QRDBText20Print(sender: TObject; var Value: string);
    procedure QRDBText23Print(sender: TObject; var Value: string);
    procedure QRDBText24Print(sender: TObject; var Value: string);
    procedure QRDBText26Print(sender: TObject; var Value: string);
    procedure QRExpr27Print(sender: TObject; var Value: string);
    procedure QRLabelCRSnoPrint(sender: TObject; var Value: string);
    procedure QRExpr22Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel12Print(sender: TObject; var Value: string);
    procedure QRLabel19Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
        pi_Sno : Integer;

    { Public declarations }
  end;

var
  Form_QRCreditReport: TForm_QRCreditReport;

implementation

{$R *.dfm}

procedure TForm_QRCreditReport.QRDBText16Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText17Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText18Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText20Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText21Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText23Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText24Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRDBText26Print(sender: TObject; var Value: string);
begin
     IF Copy(Value,1,1)<>'-' Then
     Value:=FormatFloat('#,##0.00',StrToFloat(Value))
     Else
     Value:='('+FormatFloat('#,##0.00',StrToFloat(Trim(Copy(Value,2,20))))+')';
end;

procedure TForm_QRCreditReport.QRExpr22Print(sender: TObject; var Value: string);
begin
     pi_Sno:=0;
end;

procedure TForm_QRCreditReport.QRExpr27Print(sender: TObject; var Value: string);
begin
     pi_Sno:=0;
end;

procedure TForm_QRCreditReport.QRLabel12Print(sender: TObject;
  var Value: string);
begin
     value:=gs_HosSloganTitle;
end;

procedure TForm_QRCreditReport.QRLabel19Print(sender: TObject;
  var Value: string);
begin
     value:=gs_HospitalAddress;
end;

procedure TForm_QRCreditReport.QRLabel1Print(sender: TObject; var Value: string);
begin
     value:=gs_HospitalName;
     pi_Sno:=0;
end;

procedure TForm_QRCreditReport.QRLabel9Print(sender: TObject;
  var Value: string);
begin
     value:=gs_HospitalName;
end;

procedure TForm_QRCreditReport.QRLabelCRSnoPrint(sender: TObject; var Value: string);
begin
     pi_Sno:=pi_Sno + 1;
     Value:=IntToStr(pi_Sno);
end;

procedure TForm_QRCreditReport.QRLabel_AddPrint(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

end.
