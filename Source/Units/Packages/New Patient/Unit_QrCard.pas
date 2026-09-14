unit Unit_QrCard;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, qrBarcode, jpeg;

type
     TForm_Card = class(TForm)
          QrCard: TQuickRep;
          TitleBand1: TQRBand;
          QRLabel10: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel16: TQRLabel;
          lbl_Name: TQRLabel;
          Lbl_HosNo: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel21: TQRLabel;
          QRLabel1: TQRLabel;
          QRLabel15: TQRLabel;
          lbl_agegender: TQRLabel;
          lbl_RegisteredDate: TQRLabel;
          qrBarcode: TQRAsBarcode;
          QRLabel2: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel9: TQRLabel;
          QRImage1: TQRImage;
    Image_Main: TQRImage;
    QRLabel3: TQRLabel;
          procedure FormCreate(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_Card: TForm_Card;

implementation

{$R *.dfm}

procedure TForm_Card.FormCreate(Sender: TObject);
begin
     try
          if LoadImageFromDB(gi_PatientID) then
          Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
     except
          //MsgBox(1014, 0, '', '', '');
     end;

     if gb_isDotMatrix then
     begin
          QRImage1.Enabled:=false;
          QRLabel2.Font.Color:=clBlack;
          QRLabel3.Font.Color:=clBlack;
          QRLabel5.Font.Color:=clBlack;
          QRLabel9.Font.Color:=clBlack;
          Image_Main.Enabled:=false;
     end;
end;

end.
