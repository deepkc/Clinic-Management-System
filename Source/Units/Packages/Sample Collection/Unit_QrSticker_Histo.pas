unit Unit_QrSticker_Histo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, qrBarcode;

type
  TForm_Sticker_Histo = class(TForm)
    QrSticker_Histo: TQuickRep;
    PageHeaderBand1: TQRBand;
    QrBarcode: TQRAsBarcode;
    DetailBand1: TQRBand;
    lbl_bottom: TQRLabel;
    lbl_PatientName: TQRLabel;
    lbl_DepName: TQRLabel;
    QRLabel1: TQRLabel;
    lbl_patientid: TQRLabel;
    QRLabel_AgeSex: TQRLabel;
    QRLabel_patienttype: TQRLabel;
    QRLabel_Labno: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Sticker_Histo: TForm_Sticker_Histo;

implementation

{$R *.dfm}

procedure TForm_Sticker_Histo.FormCreate(Sender: TObject);
begin
     //lbl_hosname.Caption:=gs_HospitalName;
     if gi_compileValue=12 then
     begin
          lbl_PatientName.Font.Style:=[fsbold];
          QRLabel_Labno.Font.Size:=12;
          lbl_PatientName.Font.Size:=10;
     end;
end;

end.
