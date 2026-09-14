unit UnitReportCreditNew;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids;

type
  TFormReportCreditNew = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    QueryCRBill: TOraQuery;
    QueryMEBill: TOraQuery;
    QRLabel2: TQRLabel;
    QueryCRBillPATIENTID: TFloatField;
    QRShape3: TQRShape;
    QRLabelReceive: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QueryMEBillname: TStringField;
    QRSubDetailCRBill: TQRSubDetail;
    QueryUser: TOraQuery;
    QueryName: TOraQuery;
    QueryCRBillBILLNO: TStringField;
    QueryCRBillBILLDATE: TStringField;
    QueryCRBillMODIFYBY: TFloatField;
    QueryCRBillTOTAL: TFloatField;
    QueryCRBillDISCOUNT: TFloatField;
    QueryCRBillVATAMT: TFloatField;
    QueryCRBillNETTOTAL: TFloatField;
    QueryMEBillBILLNO: TStringField;
    QueryMEBillBILLDATE: TStringField;
    QueryMEBillPATIENTID: TFloatField;
    QueryMEBillMODIFYBY: TFloatField;
    QueryMEBillTOTAL: TFloatField;
    QueryMEBillDISCOUNT: TFloatField;
    QueryMEBillVATAMT: TFloatField;
    QueryMEBillNETTOTAL: TFloatField;
    QueryMEBillUserName: TStringField;
    QueryCRBillUserName: TStringField;
    QueryMEBillRATETYPE: TStringField;
    QueryCRBillRATETYPE: TStringField;
    QueryCRMETotal: TOraQuery;
    QueryCRBillName: TStringField;
    QRSubDetailMEBill: TQRSubDetail;
    FooterCRBill: TQRBand;
    FooterMEBill: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabelCRSno: TQRLabel;
    QRDBText9: TQRDBText;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRLabel24: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabelMESno: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText17: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel23: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRLabel25: TQRLabel;
    QRShape5: TQRShape;
    QueryCRMETotalTOTAL: TFloatField;
    QueryCRMETotalDISCOUNT: TFloatField;
    QueryCRMETotalVATAMT: TFloatField;
    QueryCRMETotalNETTOTAL: TFloatField;
    QRDBText21: TQRDBText;
    QueryMEBillMEMBERNO: TStringField;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel53: TQRLabel;
    QRGroup1: TQRGroup;
    QRSubDetail1: TQRSubDetail;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText31: TQRDBText;
    QRLabel54: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    DSMaster: TDataSource;
    QRBand2: TQRBand;
    QRLabel45: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr16: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel46: TQRLabel;
    QRExpr17: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRDBText34: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    QRLabel58: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRDBText30: TQRDBText;
    QRExpr21: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QryDisDeposit: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    QryDetailExcel: TOraQuery;
    QRDBText35: TQRDBText;
    QRExpr15: TQRExpr;
    QRSubDetail2: TQRSubDetail;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRBand3: TQRBand;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRExpr26: TQRExpr;
    QRExpr27: TQRExpr;
    QRExpr28: TQRExpr;
    QRExpr29: TQRExpr;
    QRExpr30: TQRExpr;
    QRLabel66: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel14: TQRLabel;
    QuickRep3: TQuickRep;
    TitleBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    ColumnHeaderBand3: TQRBand;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel85: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel87: TQRLabel;
    QRDBText48: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    Qry_summaryMaster: TOraQuery;
    Query1: TOraQuery;
    Ds_SummaryMaster: TDataSource;
    Qry_summaryDetail: TOraQuery;
    QRExpr14: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr22: TQRExpr;
    QryMaster: TQuery;
    QryDetail: TQuery;
    QryDetailRefund: TQuery;
    QryCreditSum: TQuery;
    QryCreditRefundSum: TQuery;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QueryCRBillAfterScroll(DataSet: TDataSet);
    procedure QueryMEBillAfterScroll(DataSet: TDataSet);
    procedure QueryCRBillBeforeScroll(DataSet: TDataSet);
    procedure QueryMEBillBeforeScroll(DataSet: TDataSet);
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QRLabel60Print(sender: TObject; var Value: String);
    procedure QRLabel66Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
      CrSno,CrRfSno,MeSno:Integer;
    { Public declarations }
  end;

var
  FormReportCreditNew: TFormReportCreditNew;

implementation

uses Fxn;

{$R *.DFM}

procedure TFormReportCreditNew.QRLabel1Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TFormReportCreditNew.QRLabel14Print(sender: TObject;
  var Value: String);
begin
   //value:=gs_HosSloganTitle;
end;

procedure TFormReportCreditNew.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   value:= gs_HospitalAddress;
end;

procedure TFormReportCreditNew.QRLabel40Print(sender: TObject;
  var Value: String);
begin
   Value:=QRLabelFrom.Caption;
end;

procedure TFormReportCreditNew.QRLabel38Print(sender: TObject;
  var Value: String);
begin
   Value:=QRLabelTo.Caption;
end;

procedure TFormReportCreditNew.QueryCRBillAfterScroll(DataSet: TDataSet);
begin
   Inc(CrSno);
end;

procedure TFormReportCreditNew.QueryMEBillAfterScroll(DataSet: TDataSet);
begin
   Inc(MeSno);
end;

procedure TFormReportCreditNew.QueryCRBillBeforeScroll(DataSet: TDataSet);
begin
   QRLabelCRSno.Caption:=IntToStr(CrSno);
end;

procedure TFormReportCreditNew.QueryMEBillBeforeScroll(DataSet: TDataSet);
begin
   QRLabelMESno.Caption:=IntToStr(MeSno);
end;

procedure TFormReportCreditNew.QuickRep1AfterPreview(Sender: TObject);
begin
   CrSno:=0;
   CrRfSno:=0;
   MeSno:=0;
end;

procedure TFormReportCreditNew.QRLabel60Print(sender: TObject;
  var Value: String);
begin
     CrSno:=CrSno+1;
     Value:=IntToStr(CrSno);
end;

procedure TFormReportCreditNew.QRLabel66Print(sender: TObject;
  var Value: String);
begin
     CrRfSno:=CrRfSno+1;
     Value:=IntToStr(CrRfSno);
end;

end.
