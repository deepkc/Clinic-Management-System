unit Unit_QrSampleWiseRep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, qrpBaseCtrls,Fxn,ServerDate,DM, DB,
  MemDS, DBAccess, Ora;

type
  TForm_SampleWise = class(TForm)
    QuickRep: TQRPQuickrep;
    PageHeaderBand1: TQRBand;
    lbl_hosname: TQRLabel;
    lbl_hosaddress: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    qrlbl_Fro: TQRLabel;
    qrlbl_To: TQRLabel;
    qrshp1: TQRShape;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl6: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    Sno: TQRDBText;
    Billdatetime: TQRDBText;
    SampleRecdatetime: TQRDBText;
    FindingDateTime: TQRDBText;
    VerifiedDateTime: TQRDBText;
    orqry_main: TOraQuery;
    qrlbl_from: TQRLabel;
    qrlbl_To1: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    qrlbl_depname: TQRLabel;
    qrlbl5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure lbl_hosnamePrint(sender: TObject; var Value: string);
    procedure lbl_hosaddressPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_SampleWise: TForm_SampleWise;

implementation

{$R *.dfm}

procedure TForm_SampleWise.lbl_hosaddressPrint(sender: TObject;
  var Value: string);
begin
    Value:=gs_HospitalAddress;
end;

procedure TForm_SampleWise.lbl_hosnamePrint(sender: TObject; var Value: string);
begin
    Value:=gs_HospitalName;
end;

end.
