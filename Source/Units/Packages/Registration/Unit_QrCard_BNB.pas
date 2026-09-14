unit Unit_QrCard_BNB;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn,
     Dialogs, QuickRpt, ExtCtrls, QRCtrls, jpeg, qrBarcode, pngimage;

type
     TFormCard_BNB = class(TForm)
    QrCard: TQuickRep;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel8: TQRLabel;
    QRlbl_PatientName: TQRLabel;
    QRlbl_PatientID: TQRLabel;
    QRLabel21: TQRLabel;
    QRlbl_AgeGender: TQRLabel;
    QRlbl_RegDate: TQRLabel;
    QRImage1: TQRImage;
    QRBarcode: TQRAsBarcode;
    QRLabel14: TQRLabel;
    QRLbl_Paddress: TQRLabel;
    lbladres: TQRLabel;
    QRlbl_Contact: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRImage2: TQRImage;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    lbl_scheme: TQRLabel;
    QRImage3: TQRImage;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape2: TQRShape;
    QRImage4: TQRImage;
    QRShape3: TQRShape;
    QRLabel33: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape6: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape7: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    qrlblbloodgrp: TQRLabel;
    QuickRep2: TQuickRep;
    qrbnd1: TQRBand;
    qrshpadd1: TQRShape;
    qrshpadd2: TQRShape;
    qrshpadd3: TQRShape;
    qrshpadd4: TQRShape;
    qrlbl1: TQRLabel;
    qrlblLbl_HosNo: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl_Name: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl_agegender1: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrsbrcd1: TQRAsBarcode;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
          procedure FormCreate(Sender: TObject);
    procedure lbl_mobilenoPrint(sender: TObject; var Value: string);
    procedure lbl_GenderPrint(sender: TObject; var Value: string);
    procedure QRLabel23Print(sender: TObject; var Value: string);
    procedure QRLabel24Print(sender: TObject; var Value: string);
    procedure QRLabel4Print(sender: TObject; var Value: string);
    procedure QRLabel5Print(sender: TObject; var Value: string);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormCard_BNB: TFormCard_BNB;

implementation

{$R *.dfm}

procedure TFormCard_BNB.FormCreate(Sender: TObject);
begin
     SetPrinter('CARDPRINTER');

     //lbl_hosName.Caption:=gs_HospitalName;
     //lbl_hosAddress.Caption:=gs_HospitalAddress;
     //lbl_hosphone.Caption:=gs_HospitalPhone;
     //lbl_url.Caption:=gs_HospitalUrl;

    { lbl_Address.Caption:=UpperCase(Gs_Address);
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
     end;        }
end;

procedure TFormCard_BNB.lbl_GenderPrint(sender: TObject; var Value: string);
begin
     Value:=Gs_CurrentAgeGender;
end;

procedure TFormCard_BNB.lbl_mobilenoPrint(sender: TObject; var Value: string);
begin
     if trim(Value)='' then
          Value:='N/A';
end;

procedure TFormCard_BNB.QRLabel23Print(sender: TObject; var Value: string);
begin
     //value := gs_HospitalName;
end;

procedure TFormCard_BNB.QRLabel24Print(sender: TObject; var Value: string);
begin
     //Value := gs_HospitalAddress;
end;

procedure TFormCard_BNB.QRLabel4Print(sender: TObject; var Value: string);
begin
 //  value:=gs_HosName;
end;

procedure TFormCard_BNB.QRLabel5Print(sender: TObject; var Value: string);
begin
   value:=GS_HOSSLOGAN;
end;

end.
