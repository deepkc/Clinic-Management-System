unit Unit_QRReportDepWiseQty;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn;

type
  TForm_QRReportDepWiseQty= class(TQuickRep)
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr13: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel22: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    SummaryBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr14: TQRExpr;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelTestName: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRExpr8: TQRExpr;
    QRExpr15: TQRExpr;
    QueryMaster: TOraQuery;
    QueryMasterDEPID: TFloatField;
    QueryMasterDEPNAME: TStringField;
    DataSourceQueryMaster: TDataSource;
    QueryDetail: TOraQuery;
    QueryDetailSERVICETYPE: TStringField;
    QueryDetailQTY: TFloatField;
    QueryDetailAMOUNT: TFloatField;
    QueryDetailDISCOUNT: TFloatField;
    QueryDetailSUBTOTAL: TFloatField;
    QueryDetailVATAMT: TFloatField;
    QueryDetailNETAMOUNT: TFloatField;
    QueryDetailService: TStringField;
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRLabel17Print(sender: TObject; var Value: String);
    procedure QRLabel18Print(sender: TObject; var Value: String);
  private

  public

  end;

var
  Form_QRReportDepWiseQty:TForm_QRReportDepWiseQty;

implementation

{$R *.DFM}

procedure TForm_QRReportDepWiseQty.QRLabel16Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TForm_QRReportDepWiseQty.QRLabel17Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HosSloganTitle;
end;

procedure TForm_QRReportDepWiseQty.QRLabel18Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

end.
