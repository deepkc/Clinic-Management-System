unit Unit_QrCard;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn_Hos,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, jpeg, qrBarcode, pngimage;

type
     TForm_Card = class(TForm)
          QrCard: TQuickRep;
          TitleBand1: TQRBand;
          lbl_Name: TQRLabel;
          QRLabel1: TQRLabel;
    lbl_Gender: TQRLabel;
          lbl_RegisteredDate: TQRLabel;
    Image_Main: TQRImage;
    QrBarcode: TQRAsBarcode;
    QRLabel3: TQRLabel;
    lbl_Address: TQRLabel;
    QRLabel5: TQRLabel;
    lbl_mobileno: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    lbl_hospitalno: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
          procedure FormCreate(Sender: TObject);
    procedure QRLabel_HosNoCapPrint(sender: TObject; var Value: string);
    procedure lbl_mobilenoPrint(sender: TObject; var Value: string);
    procedure lbl_GenderPrint(sender: TObject; var Value: string);
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
     //lbl_hosName.Caption:=gs_HospitalName;
     //lbl_hosAddress.Caption:=gs_HospitalAddress;
     //lbl_hosphone.Caption:=gs_HospitalPhone;
     //lbl_url.Caption:=gs_HospitalUrl;
     SetPrinter('Card Printer');
     lbl_Address.Caption:=UpperCase(Gs_Address);
     if gi_FileNo=0 then
     lbl_hospitalno.caption:=inttostr(gi_patientId)
     else
     lbl_hospitalno.caption:=inttostr(gi_patientId)+' / '+inttostr(gi_FileNo);
     lbl_Gender.Caption:=Gs_CurrentAgeGender;

     //QRLabel_HosNoCap.Caption:=Gs_HosNoCaptionName;
     //Lbl_HosNo.Caption:='0'+IntToStr(gi_PatientId);
     //lbl_dob.Caption:=Gs_DobAD;
     if Trim(Gs_MobileNo)<>'' then
     lbl_mobileno.Caption:=Gs_MobileNo
     Else
     lbl_mobileno.Caption:=Gs_PhoneNo;
     try
          if LoadImageFromDB(gi_PatientID) then
          Image_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
     except
          //MsgBox(1014, 0, '', '', '');
     end;

     if gb_isDotMatrix then
     begin
          //QRImage1.Enabled:=false;
          (*lbl_hosName.Font.Color:=clBlack;
          lbl_hosAddress.Font.Color:=clBlack;
          lbl_hosphone.Font.Color:=clBlack;
          lbl_url.Font.Color:=clBlack;*)
          Image_Main.Enabled:=false;
     end;
end;

procedure TForm_Card.lbl_GenderPrint(sender: TObject; var Value: string);
begin
     Value:=Gs_CurrentAgeGender;
end;

procedure TForm_Card.lbl_mobilenoPrint(sender: TObject; var Value: string);
begin
     if trim(Value)='' then
          Value:='N/A';
end;

procedure TForm_Card.QRLabel_HosNoCapPrint(sender: TObject; var Value: string);
begin
     Value:=Gs_HosNoCaptionName;
end;

end.
