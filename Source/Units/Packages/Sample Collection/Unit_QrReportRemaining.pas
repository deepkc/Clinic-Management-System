unit Unit_QrReportRemaining;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls,Fxn, DB, MemDS, DBAccess, Ora;

type
  TForm_QRreportremaining = class(TForm)
    QR_RptRemg: TQuickRep;
    qrbndTitleBand1: TQRBand;
    qrlbl_hosaddress: TQRLabel;
    qrlbl_datefrom: TQRLabel;
    qrlbl_datto: TQRLabel;
    qrlbl_DaFrom: TQRLabel;
    qrlbl_DaTo: TQRLabel;
    qrlbl_Titlr: TQRLabel;
    qrlbl_hosname: TQRLabel;
    qrlbl_sampleno: TQRLabel;
    qrlbl_sno: TQRLabel;
    qrlbl_testdate: TQRLabel;
    qrlbl_patientid: TQRLabel;
    qrlbl_ptName: TQRLabel;
    s: TQRLabel;
    qrshp1: TQRShape;
    orqry_data: TOraQuery;
    QRSubDetail1: TQRSubDetail;
    SampleID: TQRDBText;
    Testdate: TQRDBText;
    Patientid: TQRDBText;
    PatientName: TQRDBText;
    Testname: TQRDBText;
    QRDBText1: TQRDBText;
    procedure SampleIDPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRreportremaining: TForm_QRreportremaining;

implementation

{$R *.dfm}

procedure TForm_QRreportremaining.SampleIDPrint(sender: TObject;
  var Value: string);
begin
if Value='' then
  VALUE:='   -';
end;

end.
