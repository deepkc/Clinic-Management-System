unit Unit_QRDoctorWisePatientSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, MemDS, DBAccess, Ora;

type
  TForm_QrDoctorWisePatientSummary = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel_Print: TQRLabel;
    QRLabel_To: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel_From: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Querymain: TOraQuery;
    QRSubDetail2: TQRSubDetail;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel2Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrDoctorWisePatientSummary: TForm_QrDoctorWisePatientSummary;

implementation
    uses Fxn;
{$R *.dfm}

procedure TForm_QrDoctorWisePatientSummary.QRLabel1Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

procedure TForm_QrDoctorWisePatientSummary.QRLabel2Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalName;
end;

end.
