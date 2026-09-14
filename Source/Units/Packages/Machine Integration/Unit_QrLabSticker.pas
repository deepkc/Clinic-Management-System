unit Unit_QrLabSticker;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn, Dialogs, QuickRpt, ExtCtrls, QRCtrls, qrBarcode;

type
  TForm_Sticker = class(TForm)
    QrSticker: TQuickRep;
    PageHeaderBand1: TQRBand;
    QrBarcode: TQRAsBarcode;
    DetailBand1: TQRBand;
    lbl_bottom: TQRLabel;
    lbl_PatientName: TQRLabel;
    lbl_hosname: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Sticker: TForm_Sticker;

implementation

{$R *.dfm}

procedure TForm_Sticker.FormCreate(Sender: TObject);
begin
     lbl_hosname.Caption:=gs_HospitalName;
end;

end.
