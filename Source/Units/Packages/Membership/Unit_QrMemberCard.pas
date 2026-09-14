unit Unit_QrMemberCard;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, qrBarcode, jpeg, pngimage;

type
     TForm_MemberCard = class(TForm)
          QrCard: TQuickRep;
          TitleBand1: TQRBand;
          QRLabel10: TQRLabel;
          QRLabel12: TQRLabel;
          lbl_Name: TQRLabel;
          Lbl_HosNo: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel1: TQRLabel;
          QRLabel15: TQRLabel;
          lbl_agegender: TQRLabel;
          qrBarcode: TQRAsBarcode;
          QRLabel9: TQRLabel;
    Image_Main: TQRImage;
    Image_Gold: TImage;
    Image_Silver: TImage;
    Image_Platinum: TImage;
    QRLabel2: TQRLabel;
    Lbl_Validity: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    Lbl_Address: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    lbl_FamilyDoctor: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    lbl_MedicalCondition: TQRLabel;
    QRLabel16: TQRLabel;
    lbl_Name1: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    lbl_Tel1: TQRLabel;
    QRLabel24: TQRLabel;
    lbl_Name2: TQRLabel;
    QRLabel26: TQRLabel;
    lbl_Tel2: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    Lbl_BloodGroup: TQRLabel;
    QRLabel20: TQRLabel;
    Image_Back: TQRImage;
          procedure FormCreate(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_MemberCard: TForm_MemberCard;

implementation

{$R *.dfm}

procedure TForm_MemberCard.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QrCard.NewPage;
end;

procedure TForm_MemberCard.FormCreate(Sender: TObject);
begin
     try
          if LoadImageFromDB(gi_PatientID) then
          Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
     except
          //MsgBox(1014, 0, '', '', '');
     end;

     if gb_isDotMatrix then
     begin
          //Image_Back.Enabled:=false;
          QRLabel2.Font.Color:=clBlack;
//          QRLabel3.Font.Color:=clBlack;
          QRLabel5.Font.Color:=clBlack;
          QRLabel9.Font.Color:=clBlack;
          Image_Main.Enabled:=false;
     end;
end;

procedure TForm_MemberCard.QRCompositeReport1AddReports(Sender: TObject);
begin
//     with QRCompositeReport1 do
//     begin
//          Reports.Add(QrCard);
//          Reports.Add(QuickRep1);
//     end;
end;

end.
