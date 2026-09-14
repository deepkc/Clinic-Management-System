unit Unit_QRDischargeBillDetail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn;

type
  TFormReportDischargeBillDetail1st = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabelTPNo: TQRLabel;
    QRLabelEmailCap: TQRLabel;
    QRLabelEmail: TQRLabel;
    QRLabelWebCap: TQRLabel;
    QRLabelWebsite: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRSubDetail2: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QueryAdmissionCharge: TOraQuery;
    QueryBedCharge: TOraQuery;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRExpr6: TQRExpr;
    QueryBedChargeRoomType: TStringField;
    QueryBedChargeTotalDays: TIntegerField;
    QueryBedChargeTaxAmt: TFloatField;
    QueryBedChargeRate: TFloatField;
    QueryBedChargeTotal: TFloatField;
    QueryBedChargeDiscount: TFloatField;
    QueryBedChargeDisPer: TFloatField;
    QueryBedChargeNetTotal: TFloatField;
    QRExpr7: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QueryPatientInfo: TOraQuery;
    Query_AdmitedDate: TOraQuery;
    Query_DischargeDate: TOraQuery;
    Query_Scheme: TOraQuery;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabelR: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel46: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText23: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel20: TQRLabel;
    QueryAdmissionChargeBILLDATE: TStringField;
    QueryAdmissionChargeAMOUNT: TFloatField;
    QueryAdmissionChargeVATAMT: TFloatField;
    QueryAdmissionChargeDISCOUNT: TFloatField;
    Query_GetBedCharge: TOraQuery;
    Query_SchemeMEMBERNO: TStringField;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    Query_SchemeGWSARMYNO: TStringField;
    QueryAdmissionChargeDOLLARAMOUNT: TFloatField;
    QueryAdmissionChargeDOLLARVATAMT: TFloatField;
    QueryAdmissionChargeDOLLARDISCOUNT: TFloatField;
    Query_SchemeSCHEMENAME: TStringField;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRSubDetail3: TQRSubDetail;
    QRLabel19: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRDBText13: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    Query_DoctorRound: TOraQuery;
    QRLabel24: TQRLabel;
    QueryAdmissionChargeBILLNO: TStringField;
    QRLabel41: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel26: TQRLabel;
    procedure QRLabel3Print(sender: TObject; var Value: String);
    procedure QRLabel29Print(sender: TObject; var Value: String);
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel2Print(sender: TObject; var Value: String);
    procedure QRExpr21Print(sender: TObject; var Value: String);
    procedure QRLabelEmailPrint(sender: TObject; var Value: String);
    procedure QRLabelWebsitePrint(sender: TObject; var Value: String);
    procedure QRLabelTPNoPrint(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
    procedure QRLabel11Print(sender: TObject; var Value: String);
    procedure QRLabel26Print(sender: TObject; var Value: string);
    procedure QRDBText18Print(sender: TObject; var Value: string);
    procedure QRExpr11Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
          Procedure LoadPatientInfo;
    { Public declarations }
  end;

var
  FormReportDischargeBillDetail1st: TFormReportDischargeBillDetail1st;

implementation


{$R *.DFM}

Procedure TFormReportDischargeBillDetail1st.LoadPatientInfo;
Begin
     With QueryPatientInfo Do
     Begin
          Close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add(' Select VW.*,VW.ROOMTYPE From VW_HS_ADMNPATIENTCURRENTINFO VW where InpatientId=' + IntToStr(gi_InpatientId));
          Open;
     End;
End;

procedure TFormReportDischargeBillDetail1st.QRLabel3Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

procedure TFormReportDischargeBillDetail1st.QRLabel26Print(sender: TObject; var Value: string);
begin
     Value:=QueryPatientInfo.FieldByName('RoomType').AsString+' ('+QueryPatientInfo.FieldByName('BedNo').AsString+')';
end;

procedure TFormReportDischargeBillDetail1st.QRLabel29Print(sender: TObject;  var Value: String);
begin
   Value:=gs_Hospitalphone
end;

procedure TFormReportDischargeBillDetail1st.QRLabel1Print(sender: TObject;
  var Value: String);
begin
   Value:='';//gs_Hospital;
end;

procedure TFormReportDischargeBillDetail1st.QRLabel2Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TFormReportDischargeBillDetail1st.QRDBText18Print(sender: TObject; var Value: string);
begin
     Value:=Trim(QueryPatientInfo.FieldByName('Title').AsString+' '+QueryPatientInfo.FieldByName('PATIENTNAME').AsString);
end;

procedure TFormReportDischargeBillDetail1st.QRExpr11Print(sender: TObject; var Value: string);
begin
     if (QueryPatientInfo.FieldByName('MemberNo').AsString<>'0') and (Trim(QueryPatientInfo.FieldByName('MemberNo').AsString)<>'') then
     Value:='MCP NO :'+QueryPatientInfo.FieldByName('MemberNo').AsString
     else
     Value:='';
end;

procedure TFormReportDischargeBillDetail1st.QRExpr21Print(sender: TObject;
  var Value: String);
begin
{  IF QueryPatientInfo.FieldByName('DistrictName').AsString<>' ' Then
  Value:=QueryPatientInfo.FieldByName('DistrictName').AsString;
  IF QueryPatientInfo.FieldByName('VdcName').AsString<>' ' Then
  Begin
    IF Value<>'' Then
    Value:=Value+','+QueryPatientInfo.FieldByName('VdcName').AsString
    Else
    Value:=QueryPatientInfo.FieldByName('VdcName').AsString;
  End;
  IF QueryPatientInfo.FieldByName('PAddress').AsString<>' ' Then
  Begin
    IF Value<>'' Then
    Value:=Value+','+QueryPatientInfo.FieldByName('PAddress').AsString
    Else
    Value:=QueryPatientInfo.FieldByName('PAddress').AsString;
  End;
  IF Value<>'' Then
  Value:=Value+'-'+IntToStr(QueryPatientInfo.FieldByName('WardNo').AsInteger)
  Else
  Value:=IntToStr(QueryPatientInfo.FieldByName('WardNo').AsInteger);}
end;

procedure TFormReportDischargeBillDetail1st.QRLabelEmailPrint(sender: TObject;
  var Value: String);
begin
     IF Trim(gs_HosEmailBill)<>'' Then
     Value:=gs_HosEmailBill
     Else
     Begin
          QRLabelEmail.Font.Color:=clWhite;
          QRLabelEmailCap.Font.Color:=clWhite;
     End;
end;

procedure TFormReportDischargeBillDetail1st.QRLabelWebsitePrint(sender: TObject;
  var Value: String);
begin
     IF Trim(gs_HosWebSiteBill)<>'' Then
     Value:=gs_HosWebSiteBill
     Else
     Begin
          QRLabelWebsite.Font.Color:=clWhite;
          QRLabelWebCap.Font.Color:=clWhite;
     End;
end;

procedure TFormReportDischargeBillDetail1st.QRLabelTPNoPrint(sender: TObject;
  var Value: String);
begin
{     IF Trim(gs_HosTPIN)<>'' Then
     Value:='TPIN : '+gs_HosTPIN
     Else
     QRLabelTPNo.Font.Color:=clWhite;}
end;

procedure TFormReportDischargeBillDetail1st.QRLabel15Print(sender: TObject;
  var Value: String);
begin
     //Value:='VAT';//gs_SvrTaxCap;
     //Value:='Vat(13%)';//gs_SvrTaxCap;
end;

procedure TFormReportDischargeBillDetail1st.QRLabel11Print(sender: TObject;
  var Value: String);
begin
     //Value:='VAT';//gs_SvrTaxCap;
     //Value:='Vat(13%)';//gs_SvrTaxCap;
end;

end.
