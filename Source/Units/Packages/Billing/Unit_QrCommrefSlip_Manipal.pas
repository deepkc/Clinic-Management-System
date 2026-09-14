unit Unit_QrCommrefSlip_Manipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Fxn_Hos,dm,ServerDate,InWordsSu,
  Dialogs, QRCtrls, qrBarcode, QuickRpt, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_QrCommRefSlip_Manipal = class(TForm)
    QrDepositSlip: TQuickRep;
    PageHeaderBand1: TQRBand;
    lbl_headName: TQRLabel;
    lbl_reprint: TQRLabel;
    QRShape2: TQRShape;
    QRSubDetail1: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    QRLabel28: TQRLabel;
    lbl_Inwords: TQRLabel;
    QRLabel30: TQRLabel;
    lbl_user: TQRLabel;
    QRLabel40: TQRLabel;
    lbl_Total: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape3: TQRShape;
    QRLabel22: TQRLabel;
    lbl_Date: TQRLabel;
    QRLabel34: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel13: TQRLabel;
    lbl_pagetotal: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    lbl_totpage: TQRLabel;
    QRSysData1: TQRSysData;
    lbl_contd: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    lbl_Addres: TQRLabel;
    lbl_Name: TQRLabel;
    Lbl_HosNo: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lbl_agesex: TQRLabel;
    lbl_billtype: TQRLabel;
    lbl_InvoiceNo: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbl_contactno: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    lbl_InvoiceDate: TQRLabel;
    QrBarcode: TQRAsBarcode;
    lbl_Particular: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    lbl_amount: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    qry_Process: TOraQuery;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel_IPNO: TQRLabel;
    Lbl_InvDateBS: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
     pf_Total:Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrCommRefSlip_Manipal: TForm_QrCommRefSlip_Manipal;

implementation

{$R *.dfm}

procedure TForm_QrCommRefSlip_Manipal.FormCreate(Sender: TObject);
Var
     Str:String;
begin
     SetPrinter('Bill Printer');
     LoadPatientData(gi_PatientID);
     With qry_Process do
     Begin
          Close;
          Session :=dm_hospital.db;
          sql.Clear;
          SQL.Add(' Select BillNo,BillDate,BillTime,SchemeId,Amount,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=Cr.RefundBy) as UserName,');
          SQL.Add(' (Select SCHE_Scheme From HS_SCHE_Scheme where SCHE_SchemeId=CR.SCHEMEID) as SchemeName,BillType');
          SQL.Add(' From CommunityRefund CR');
          SQL.Add(' where BillNo='+#39+gs_BillNo+#39);
          Open;
          //QRLabel_IPNO.Caption:=IntToStr(qry_Process.FieldByName('InpatientId').AsInteger);
     End;
     if gi_HospitalId=562 then // 562 - Manipal
     QrBarcode.Text:=''
     Else
     QrBarcode.Text:='';
     lbl_InvoiceNo.Caption:=qry_Process.FieldByname('BillNo').AsString;
     lbl_InvoiceDate.Caption:=qry_Process.FieldByname('BillDate').AsString;
     lbl_Name.Caption:=Trim(Gs_Title+' '+UpperCase(Gs_PatientName));//UpperCase(MyPatient.PatientName);
     Lbl_HosNo.Caption:=IntToStr(gi_PatientID);//IntToStr(MyPatient.PatientId);
     lbl_Addres.Caption:=Gs_Address;//MyPatient.Address;
     lbl_agesex.Caption:=Gs_Age+' '+Copy(Gs_agetype,1,1)+' / '+Copy(Gs_Gender,1,1);//MyPatient.AgeGender;
     if Trim(Gs_MobileNo)<>'' then
     lbl_contactno.Caption:=Gs_MobileNo//MyPatient.ContactNo;
     Else
     lbl_contactno.Caption:=Gs_PhoneNo;

     lbl_Date.Caption:=qry_Process.FieldByname('BillDate').AsString;//GetBillDate(Gs_BillNo);//TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;

     //lbl_Date.Caption:=GetBillDate(Gs_BillNo);//TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + ' ' + TodaysTime;

     if gi_datesystem=1 then
     Lbl_InvDateBS.Caption := '( '+ADToVSS(Copy(qry_Process.FieldByname('BillDate').AsString,1,10))+' BS )'
     Else
     Lbl_InvDateBS.Caption := '( '+VSTOADS(Copy(qry_Process.FieldByname('BillDate').AsString,1,10))+' AD )';


     (*if Copy(Gs_BillNo,1,2)='DP' then
     pf_Total:=GetDrAmount(Gs_BillNo)
     else if Copy(Gs_BillNo,1,2)='DR' then
     pf_Total:=GetCrAmount(Gs_BillNo);*)
     pf_Total:=qry_Process.FieldByname('Amount').AsFloat;

     lbl_amount.Caption:=FormatFloat('#0,0.00',pf_Total);
     lbl_Total.Caption:=FormatFloat('#0,0.00',pf_Total);
     lbl_Inwords.Caption:=AmountInWords(pf_Total);

     (*if Copy(Gs_BillNo,1,2)='DP' then
     //Str:='Deposit for '+GetDepositRefType(Gs_BillNo)
     Str:='Deposit Received'
     else if Copy(Gs_BillNo,1,2)='DR' then
     //Str:='Deposit refund for '+GetDepositRefType(Gs_BillNo);*)
     Str:=' Community Refund ( '+qry_Process.FieldByname('SchemeName').AsString+' )';

     lbl_Particular.Caption:=Str;
     lbl_user.Caption:=qry_Process.FieldByname('UserName').AsString//GetDepositUser(UserName);
end;

end.
