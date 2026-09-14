unit Unit_QRDFDoctorPartSummary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn;

type
  TForm_QRDFDoctorPartSummary = class(TForm)
    QR_DFDoctorPartSummary: TQuickRep;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabelAdd: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel36: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabelPrintDate: TQRLabel;
    QRLabelPrintTime: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
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
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QR_DFDoctorPartSummarySingleLine: TQuickRep;
    QRBand2: TQRBand;
    QRLabel_HosSlogan: TQRLabel;
    QRLabel_HosName: TQRLabel;
    QRLabel_HosAdd: TQRLabel;
    QRBand3: TQRBand;
    QRLabel_ToDate: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel_FromDate: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel_PrintDate: TQRLabel;
    QRLabel_PrintTime: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel26: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    SummaryBand1: TQRBand;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel27: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel28: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel_ReportTitle: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    Query_DetailMerge: TQuery;
    Query_Detail: TQuery;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabelAddPrint(sender: TObject; var Value: String);
    procedure QRLabel36Print(sender: TObject; var Value: String);
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: String);
    procedure QRLabel_HosSloganPrint(sender: TObject; var Value: String);
    procedure QRLabel_HosAddPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRDFDoctorPartSummary: TForm_QRDFDoctorPartSummary;

implementation

{$R *.DFM}

procedure TForm_QRDFDoctorPartSummary.QRLabel1Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_QRDFDoctorPartSummary.QRLabelAddPrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HospitalAddress;
end;

procedure TForm_QRDFDoctorPartSummary.QRLabel36Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosSloganTitle;
     IF Trim(gs_HosSloganTitle)='' Then
     QRLabelAdd.Top:=28
     Else
     QRLabelAdd.Top:=43;
end;

procedure TForm_QRDFDoctorPartSummary.QRLabel_HosNamePrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_QRDFDoctorPartSummary.QRLabel_HosSloganPrint(
  sender: TObject; var Value: String);
begin
     Value:=gs_HosSloganTitle;
     IF Trim(gs_HosSloganTitle)='' Then
     QRLabel_HosAdd.Top:=28
     Else
     QRLabel_HosAdd.Top:=43;
end;

procedure TForm_QRDFDoctorPartSummary.QRLabel_HosAddPrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HospitalAddress;
end;

end.
