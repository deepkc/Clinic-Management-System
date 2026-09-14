unit UnitReportCreditReceivable;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids;

type
  TFormReportCreditReceivable = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QueryCRBill: TOraQuery;
    QRLabel2: TQRLabel;
    QueryCRBillPATIENTID: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
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
    QueryCRBillUserName: TStringField;
    QueryCRBillRATETYPE: TStringField;
    QueryCRBillName: TStringField;
    FooterCRBill: TQRBand;
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
    QRLabelReportTitle: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRGroup1: TQRGroup;
    QueryCRMaster: TOraQuery;
    DataSourceCRMaster: TDataSource;
    QueryCRMasterSCHEMEID: TFloatField;
    QueryCRMasterSCHEMENAME: TStringField;
    QRExpr9: TQRExpr;
    QRLabelFrom: TQRLabel;
    QRLabelTo: TQRLabel;
    QRShape3: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel4: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel38Print(sender: TObject; var Value: String);
    procedure QueryCRBillAfterScroll(DataSet: TDataSet);
    procedure QueryMEBillAfterScroll(DataSet: TDataSet);
    procedure QueryCRBillBeforeScroll(DataSet: TDataSet);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
      CrSno,MeSno:Integer;
    { Public declarations }
  end;

var
  FormReportCreditReceivable: TFormReportCreditReceivable;

implementation

uses Fxn;

{$R *.DFM}

procedure TFormReportCreditReceivable.QRLabel1Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TFormReportCreditReceivable.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   value:= gs_HospitalAddress
end;

procedure TFormReportCreditReceivable.QRLabel18Print(sender: TObject;
  var Value: String);
begin
   //value:=gs_HosPhone;
end;

procedure TFormReportCreditReceivable.QRLabel40Print(sender: TObject;
  var Value: String);
begin
   Value:=QRLabelFrom.Caption;
end;

procedure TFormReportCreditReceivable.QRLabel38Print(sender: TObject;
  var Value: String);
begin
   Value:=QRLabelTo.Caption;
end;

procedure TFormReportCreditReceivable.QueryCRBillAfterScroll(DataSet: TDataSet);
begin
   Inc(CrSno);
end;

procedure TFormReportCreditReceivable.QueryMEBillAfterScroll(DataSet: TDataSet);
begin
   Inc(MeSno);
end;

procedure TFormReportCreditReceivable.QueryCRBillBeforeScroll(DataSet: TDataSet);
begin
   QRLabelCRSno.Caption:=IntToStr(CrSno);
end;

procedure TFormReportCreditReceivable.QuickRep1AfterPreview(Sender: TObject);
begin
   CrSno:=0;
   MeSno:=0;
end;

end.
