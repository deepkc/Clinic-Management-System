unit Unit_QrDoctorwiseCaseDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora;

type
  TForm_QrDoctorwisePatientDetail = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel_Print: TQRLabel;
    QRLabel_To: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel_From: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    Querymaster: TOraQuery;
    DataSource_master: TDataSource;
    OraQuerydetail: TOraQuery;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    procedure QRLabel2Print(sender: TObject; var Value: string);
    procedure QRLabel1Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrDoctorwisePatientDetail: TForm_QrDoctorwisePatientDetail;

implementation
       uses Fxn;
{$R *.dfm}

procedure TForm_QrDoctorwisePatientDetail.QRLabel1Print(sender: TObject;
  var Value: string);
begin
     value:=gs_HospitalAddress;
end;

procedure TForm_QrDoctorwisePatientDetail.QRLabel2Print(sender: TObject;
  var Value: string);
begin
     value:=gs_HospitalName;
end;

end.
