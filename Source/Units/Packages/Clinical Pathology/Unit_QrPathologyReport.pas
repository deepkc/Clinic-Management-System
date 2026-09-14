unit Unit_QrPathologyReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_ReportClinicalPathology = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRRichText1: TQRRichText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lbl_hosname: TQRLabel;
    lbl_Address: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText12: TQRDBText;
    Query1: TOraQuery;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;

  private
    { Private declarations }
  public
     aPDf:TQRPDFDocumentFilter;
    { Public declarations }

    Procedure SendtoPdf;

  end;

var
  Form_ReportClinicalPathology: TForm_ReportClinicalPathology;

implementation

{$R *.dfm}

{ TForm_ReportClinicalPathology }

procedure TForm_ReportClinicalPathology.SendtoPdf;
begin
     aPDF := TQRPDFDocumentFilter.Create('d:\ClinicalTestReport.pdf');
     QuickRep1.Prepare;
     QuickRep1.ExportToFilter(aPDF);
     aPDF.Free;
end;

end.
