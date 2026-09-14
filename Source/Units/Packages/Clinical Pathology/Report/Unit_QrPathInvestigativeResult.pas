unit Unit_QrPathInvestigativeResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm,RichEdit,Unit_master,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt, ComCtrls;

type
     TForm_QrPathFinding = class(TForm)
          QrFinding: TQuickRep;
          PageHeaderBand1: TQRBand;
          GroupFooterBand1: TQRBand;
          GroupFooterBand2: TQRBand;
    Table_Findings: TTable;
    Table_Footnote: TTable;
    Table_Footer: TTable;
    QRShape9: TQRShape;
    QrImage_Top: TQRImage;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    lbl_ReportedDate: TQRLabel;
    lbl_Name: TQRLabel;
    Lbl_HosNo: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel15: TQRLabel;
    lbl_agegender: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    lbl_RegisteredDate: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    lbl_referaldoc: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel602: TQRLabel;
    lbl_Printdate: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    Lbl_sampno: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_billno: TQRLabel;
    QRAsBarcode_Sampleno: TQRAsBarcode;
    QRLabel27: TQRLabel;
    lbl_samplesource: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel32: TQRLabel;
    lblrefno2: TQRLabel;
    QRLabel3: TQRLabel;
    lblRefNo1: TQRLabel;
    OraQuery_PerformedBy: TOraQuery;
    OraQuery_CollectedBy: TOraQuery;
    OraQuery_FooterVerifiedBy: TOraQuery;
    SummaryBand1: TQRBand;
    QRLabel25: TQRLabel;
    lbl_dateh: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    lbl_verifybyh: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel47: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel48: TQRLabel;
    lbl_totpageh: TQRLabel;
    QRLabel9: TQRLabel;
    lbl_Qualification_LT: TQRLabel;
    lbl_DocName_LT: TQRLabel;
    QRLabel29: TQRLabel;
    lbl_DocName_RT: TQRLabel;
    lbl_Qualification_RT: TQRLabel;
    lbl_Specialization_LT: TQRLabel;
    lbl_Specialization_RT: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    SignatureRT: TQRImage;
    Image_GaneshT: TQRImage;
    Image_JyotiT: TQRImage;
    Image_AnilT: TQRImage;
    SignatureLT: TQRImage;
    Image_DeepakRajT: TQRImage;
    Image_PrashantT: TQRImage;
    Image_SanjeetPanditT: TQRImage;
    Image_RajendraT: TQRImage;
    Image_BimalT: TQRImage;
    Image_ShankerT: TQRImage;
    Image_UshaT: TQRImage;
    Image_LaxmanT: TQRImage;
    Image_PradipT: TQRImage;
    QRLabel28: TQRLabel;
    lbl_Qualification_CT: TQRLabel;
    lbl_Docname_CT: TQRLabel;
    lbl_Specialization_CT: TQRLabel;
    QRShape1: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    SignatureCT: TQRImage;
    LBL_NMCNO_CT: TQRLabel;
    LBL_NMCNO_RT: TQRLabel;
    PageFooterBand1: TQRBand;
    QRImage_Bottom: TQRImage;
    QRLabel2: TQRLabel;
    lbl_Qualification_LD: TQRLabel;
    lbl_Docname_LD: TQRLabel;
    QRLabel5: TQRLabel;
    lbl_DocName_RD: TQRLabel;
    lbl_Qualification_RD: TQRLabel;
    lbl_Specialization_LD: TQRLabel;
    lbl_Specialization_RD: TQRLabel;
    QRShape11: TQRShape;
    QRShape3: TQRShape;
    Image_GaneshB: TQRImage;
    Image_JyotiB: TQRImage;
    Image_AnilB: TQRImage;
    SignatureRD: TQRImage;
    SignatureLD: TQRImage;
    Image_SanjeetPanditD: TQRImage;
    Image_PrashantD: TQRImage;
    Image_ManitaD: TQRImage;
    Image_LavDevD: TQRImage;
    Image_BimalD: TQRImage;
    Image_ShankerD: TQRImage;
    Image_UshaD: TQRImage;
    Image_HemrajD: TQRImage;
    Image_PradipD: TQRImage;
    QRLabel30: TQRLabel;
    lbl_Qualification_CD: TQRLabel;
    lbl_DocName_CD: TQRLabel;
    lbl_Specialization_CD: TQRLabel;
    QRShape12: TQRShape;
    QRLBL_ReportByCap: TQRLabel;
    QRLBL_ReportBy: TQRLabel;
    SignatureCD: TQRImage;
    QRLabel13: TQRLabel;
    LBL_NMCNO_RD: TQRLabel;
    LBL_NMCNO_CD: TQRLabel;
    QRLBL_PageCap: TQRLabel;
    QRSysData_PageNo: TQRSysData;
    qrlbl_Of: TQRLabel;
    lbl_totpage: TQRLabel;
    qryTQuery: TOraQuery;
    QRDBText1: TQRDBText;
    Qry_Title: TOraQuery;
    orqryGetFindings: TOraQuery;
    qrsbdtl1: TQRSubDetail;
    QRRichTextFindingDetail: TQRRichText;
    QRLabel14: TQRLabel;
    qrlbl1: TQRLabel;
          procedure FormCreate(Sender: TObject);
          procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);

          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure Table_FooterAfterScroll(DataSet: TDataSet);
          procedure SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);




    procedure PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRLabel4Print(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
    procedure qrlbl3Print(sender: TObject; var Value: string);

    procedure QRLabel32Print(sender: TObject; var Value: string);
    procedure lbl_PrintdatePrint(sender: TObject; var Value: string);
    procedure orqryGetFindingsAfterScroll(DataSet: TDataSet);
     private
          ItemsCount: integer;
          ps_deptype:String;
          { Private declarations }
          procedure CreateFindingsTable;
          Procedure PrintBarcode;
          Procedure AddSignature;
          Procedure LoadPatientClinicalData;
     public
          { Public declarations }
     end;

var
     Form_QrPathFinding: TForm_QrPathFinding;

implementation

Procedure UpdateTestProgressStatus(BillNo, GroupPatientTestId: String; PatientTestId, TestProgressStatus: integer);
  stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_QrPathFinding.AddSignature;
Var
     ms,Ms1: TMemoryStream;
     JPG,Jpeg1: TJPEGImage;
begin
     {SignatureRT.Enabled:=true;
     SignatureRD.Enabled:=true;
     SignatureLT.Enabled:=true;
     SignatureLD.Enabled:=true;
     SignatureRT.Picture.Graphic:=nil;
     SignatureRD.Picture.Graphic:=nil;
     SignatureLT.Picture.Graphic:=nil;
     SignatureLD.Picture.Graphic:=nil;
     with qryTQuery do
     begin
       Close;
       Sql.Clear;
       SQL.Add('select signature from lab_usermain l where username in ( ');
       SQL.add ('Select distinct verifiedby from vw_sample_collected');
       SQL.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
//       SQL.savetofile('c:/footercheckverify.txt');
       Open;

       JPeg1:=TJPEGImage.Create;
       ms1:=TMemoryStream.Create;
       try
       TBlobField(FieldByName('Signature')).SaveToStream(ms1);
       ms1.Position := 0;
       if ms1.Size>0 then
       begin
           JPeG1.LoadFromStream(ms1);
           SignatureLD.Picture.Assign(JPeG1);
           SignatureLT.Picture.Assign(JPeG1);
       end;
       finally
       JPeG1.Free;
       ms1.Free;
       end;
     end;
     with qryTQuery do
     begin
       Close;
       Sql.Clear;
       Sql.Add('Select signature from lab_usermain where DoctorId='+inttostr(Gi_RefDocId));
       Open;

       JPG:=TJPEGImage.Create;
       ms:=TMemoryStream.Create;
       try
       TBlobField(FieldByName('Signature')).SaveToStream(ms);
       ms.Position := 0;
       if ms.Size>0 then
       begin
           JPG.LoadFromStream(ms);
           SignatureRT.Picture.Assign(JPG);
           SignatureRD.Picture.Assign(JPG);
       end;
       finally
       JPG.Free;
       ms.Free;
       end;
     end;}
end;

procedure TForm_QrPathFinding.CreateFindingsTable;
begin
     if FileExists(gs_temppath + '\Findings.db') then
     begin
          with Table_Findings do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'Findings.db';
               DeleteTable;
          end;
     end;
     with Table_Findings do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'Findings.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('TestNameID', ftInteger);
          FieldDefs.Add('TestID', ftInteger);
          FieldDefs.Add('TestHead', ftString, 64);
          FieldDefs.Add('Test', ftString, 64);
          FieldDefs.Add('Finding', ftString, 100);
          FieldDefs.Add('Range', ftString, 100);
          FieldDefs.Add('Unit', ftString, 32);
          FieldDefs.Add('Extra', ftString, 100);
          FieldDefs.Add('ExtraFinding', ftString, 100);
          FieldDefs.Add('SampleNo', ftString, 32);
          FieldDefs.Add('Flag', ftString, 1);
          FieldDefs.Add('IsSubjective', ftString, 1);
          CreateTable;
     end;

     if FileExists(gs_temppath + '\FindingFooter.db') then
     begin
          with Table_Footer do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'FindingFooter.db';
               DeleteTable;
          end;
     end;
     with Table_Footer do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'FindingFooter.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('SampleNO', ftString, 64);
          FieldDefs.Add('SampleSource', ftString, 64);
          FieldDefs.Add('Collected', ftString, 32);
          FieldDefs.Add('Collectedby', ftString, 32);
          FieldDefs.Add('Received', ftString, 32);
          FieldDefs.Add('ReceivedBy', ftString, 32);
          CreateTable;
     end;

     if FileExists(gs_temppath + '\Footnote.db') then
     begin
          with Table_Footnote do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'Footnote.db';
               DeleteTable;
          end;
     end;
     with Table_Footnote do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'Footnote.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('FootNote', ftMemo);
          CreateTable;
     end;

end;

procedure TForm_QrPathFinding.DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
//     QRShape2.Height:=QRRichText1.Height;
end;

procedure TForm_QrPathFinding.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     {if (DetailBand1.Expanded > 0) then
     begin
        QRShape2.Size.Height := DetailBand1.size.Height + DetailBand1.Expanded-50;
     end;}
end;

procedure TForm_QrPathFinding.FormCreate(Sender: TObject);
Var
     Refno,refno1,refno2:String;
begin
     if gb_isHalfPage then
     begin
          PageFooterBand1.Enabled := false;
          SummaryBand1.Enabled := true;
     end;

     if gb_ReportLineRemove then
     begin
       //QRShape2.Enabled:=false;
     end;

     ps_deptype:=GetUserDepType(gi_UserID);

     if gs_CalledFrom = 'VERIFICATION' then
     begin
          //QRLabel25.Enabled := false;
          //lbl_dateh.Enabled := false;
          //QRLabel33.Enabled := false;
          //QRLabel34.Enabled := false;
          //lbl_verifybyh.Enabled := false;
          //QRLabel43.Enabled := false;
          //QRLabel47.Enabled := false;
          //QRSysData2.Enabled := false;
          //QRLabel48.Enabled := false;
          //lbl_totpageh.Enabled := false;
          //QRLabel22.Enabled := false;
          //lbl_Date.Enabled := false;
          //QRLabel13.Enabled := false;
          //QRLabel14.Enabled := false;
          //lbl_Verifiedby.Enabled := false;
          //QRLabel26.Enabled := false;
          //QRLabel27.Enabled := false;
          //QRSysData1.Enabled := false;
          //QRLabel32.Enabled := false;
          //lbl_totpage.Enabled := false;

          //QRShape5.Enabled := false;
//          QRLabel9.Enabled := false;
//          QRShape8.Enabled := false;
//          QRLabel29.Enabled := false;
//          QRShape1.Enabled := false;
//          QRLabel2.Enabled := false;
//          QRShape1.Enabled := false;
          //QRLabel1.Enabled := false;



          //lbl_Qualification_LT.Enabled := false;
          //lbl_Qualification_RT.Enabled := false;
          //lbl_Qualification_LD.Enabled := false;
          //lbl_Qualification_RD.Enabled := false;

          //lbl_DocName_LT.Enabled := false;
          //lbl_DocName_RT.Enabled := false;
          //lbl_Docname_LD.Enabled := false;
          //lbl_DocName_RD.Enabled := false;

          //lbl_Specialization_LT.Enabled := false;
          //lbl_Specialization_RT.Enabled := false;
          //lbl_Specialization_LD.Enabled := false;
          //lbl_Specialization_RD.Enabled := false;
     end;
     if gb_HideIndication then
     begin
          // QRLabel28.Enabled := false;
          // QRLabel29.Enabled := false;
          // QRLabel30.Enabled := false;
          // QRLabel31.Enabled := false;
          // QRLabel41.Enabled := false;
          // QRLabel46.Enabled := false;
     end;


     CreateFindingsTable;
     lbl_samplesource.Caption:=SampleSource(Gs_SelectedPatientTestID);
     LoadPatientData(gi_PatientID);
    // QRLabel12.Caption := Gs_PatientIdCaption;
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);

     lbl_agegender.Caption := Gs_Age + ' / ' + copy(Gs_Gender, 1, 1);
     Lbl_sampno.Caption := gs_SampleNo;
     QRAsBarcode_Sampleno.Text:=  gs_SampleNo;
     lbl_billno.Caption:=Gs_BillNo;


     lbl_referaldoc.Caption := GetRefDoc(Gs_BillNo);


     if Trim(lbl_referaldoc.Caption) = '' then
     begin
          QRLabel23.Enabled := False;
          QRLabel24.Enabled := false;
     end;

     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);

     refno:=GetRefNoFromPatientTest(gi_PatientTestID);

     //refno1:=Copy(refno,1,pos(':',refno)-1);
     refno2:=Copy(refno,pos(':',refno)+1,length(refno));

     //lblRefNo1.Caption:=Trim(refno1);
     lblRefNo1.Enabled:=true;
     lblrefno2.Caption:=Trim(refno2);

     if Trim(lblRefNo2.Caption)='' then
     begin
          QRLabel3.Enabled:=False;
     end;

     //lbl_CptCode.Caption:=GetCptCode(gi_PatientTestID);


     if 1=2 then
     //if LoadImageFromDB(gi_PatientID) then
     begin
          // QRImage_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          // QRImage_Main.Enabled := true;
          // QRShape1.Enabled := true;
     end;

//          if ps_deptype='RADIOLOGY' then
//          begin
//               lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Checked by',1);
//               lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Checked by',1);
//               lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Checked by',1);
//          end
//          else
//          begin
//               lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Verified by',2);
//               lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Verified by',2);
//               lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Verified by',2);
//          end;



          if gb_IsEmergencyReporting then
          begin
               //lbl_DocName_RT.Enabled:=true;
               //lbl_Qualification_RT.Enabled:=true;
               //lbl_Specialization_RT.Enabled:=true;
               lbl_DocName_RT.Enabled:=true;
               lbl_Qualification_RT.Enabled:=true;
               lbl_Specialization_RT.Enabled:=true;
               //lbl_DocName_RD.Caption :=' Medical Lab Technologist';
               //lbl_Qualification_RD.Caption := '[ Final Report Will be Issued ';
               //lbl_Specialization_RD.Caption := 'After Validated by Pathologist. ]';
               lbl_DocName_RT.Caption :=' Medical Lab Technologist';
               lbl_Qualification_RT.Caption := '[ Final Report Will be Issued ';
               lbl_Specialization_RT.Caption := 'After Validated by Pathologist. ]';
               QRLabel29.Enabled:=True;
               QRLabel29.Caption:='Performed by';
          end
          else
          begin
               if gs_ReportFooterRegulation='U' then  // user wise footer
              begin
                   with OraQuery_FooterVerifiedBy do
                   begin
                       Close;
                       SQL.Clear;
                       Session:=Dm_Hospital.Db;
                       SQL.Add('select docname||''''||l_name docname,QUALIFICATION,SPECIALIZATION,nmcno from doctor');
                       SQL.Add('where docid='+InttoStr(Gi_RefDocId));
    //                   SQL.savetofile('c:/footercheckverify.txt');
                       Open;
                       if Gi_RefDocId>0 then
                       begin
                            lbl_DocName_RT.Caption:= OraQuery_FooterVerifiedBy.FieldByName('docname').AsString+','+OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString;
                            lbl_DocName_RD.Caption:= OraQuery_FooterVerifiedBy.FieldByName('docname').AsString+','+OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString ;
                            lbl_Qualification_RT.Caption := OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString;
                            lbl_Qualification_RD.Caption := OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString;
                            lbl_Specialization_RT.Caption :=OraQuery_FooterVerifiedBy.FieldByName('SPECIALIZATION').AsString;
                            lbl_Specialization_RD.Caption :=OraQuery_FooterVerifiedBy.FieldByName('SPECIALIZATION').AsString;
                            if ORAQuery_FooterVerifiedBy.FieldByName('NMCNO').AsString<>'' then
                            LBL_NMCNO_RT.Caption :='NMC NO . :' +ORAQuery_FooterVerifiedBy.FieldByName('NMCNO').AsString
                            else
                            LBL_NMCNO_RT.Caption:='';
                            if ORAQuery_FooterVerifiedBy.FieldByName('NMCNO').AsString<>'' then
                            LBL_NMCNO_Rd.Caption :='NMC NO . :' +ORAQuery_FooterVerifiedBy.FieldByName('NMCNO').AsString
                            else
                            LBL_NMCNO_Rd.Caption:='';
                            QRLabel29.Enabled:=True;
                            QRShape8.Enabled:=True;
                            QRLabel5.Enabled:=True;
                            QRShape11.Enabled:=True;
                       end
                       else
                       begin
                            lbl_DocName_RT.enabled:=False;
                            lbl_DocName_RD.enabled:=False;
                            lbl_Qualification_RT.enabled:=False;
                            lbl_Qualification_RD.enabled:=False;
                            lbl_Specialization_RT.enabled:=False;
                            lbl_Specialization_RD.enabled:=False;
                            LBL_NMCNO_RT.enabled:=False;
                            LBL_NMCNO_Rd.enabled:=False;
                            LBL_NMCNO_Rd.Caption:='';

                            lbl_DocName_RT.Caption:='';
                            lbl_DocName_RD.Caption:='';
                            lbl_Qualification_RT.Caption:='';
                            lbl_Qualification_RD.Caption:='';
                            lbl_Specialization_RT.Caption:='';
                            lbl_Specialization_RD.Caption:='';
                            LBL_NMCNO_RT.Caption:='';
                            LBL_NMCNO_Rd.Caption:='';
                            LBL_NMCNO_Rd.Caption:='';
                            QRLabel29.Enabled:=False;
                            QRShape8.Enabled:=False;
                            QRLabel5.Enabled:=False;
                            QRShape11.Enabled:=False;
                       end;

                   end;

                  with OraQuery_CollectedBy do
                  begin
                      Close;
                      SQL.Clear;
                      Session:=Dm_Hospital.Db;
                      SQL.add ('select fullname,(select SPECIALIZATION from doctor WHERE DOCID=l.DOCTORID)specialization');
                      SQL.Add(',(select qualification from doctor WHERE DOCID=l.DOCTORID)qualification,(select NMCNO from doctor where  DOCID=l.DOCTORID)NMCNO');
                      SQL.Add(', (select signature from doctor WHERE DOCID=l.DOCTORID)signature from lab_usermain l where username in ( ');
                      SQL.add ('Select distinct collectedby from vw_sample_collected');
                      SQL.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
    //                  SQL.savetofile('c:/footercheckcollected.txt');
                      Open;
                      lbl_DocName_LT.Caption:= OraQuery_CollectedBy.FieldByName('fullname').AsString;
                      lbl_DocName_LD.Caption:= OraQuery_CollectedBy.FieldByName('fullname').AsString;
                      lbl_Qualification_LT.Caption := OraQuery_CollectedBy.FieldByName('qualification').AsString;
                      lbl_Qualification_LD.Caption := OraQuery_CollectedBy.FieldByName('qualification').AsString;
                      lbl_Specialization_LT.Caption := OraQuery_CollectedBy.FieldByName('specialization').AsString;
                      lbl_Specialization_LD.Caption := OraQuery_CollectedBy.FieldByName('specialization').AsString;
    //                  if OraQuery_CollectedBy.FieldByName('NMCNO').AsString<>'' then
    //                  LBL_NMCNO_RD.Caption :='NMC NO . :' +OraQuery_CollectedBy.FieldByName('NMCNO').AsString
    //                  else
    //                  LBL_NMCNO_RD.Caption:='';
    //
    //                  if OraQuery_CollectedBy.FieldByName('NMCNO').AsString<>'' then
    //                  LBL_NMCNO_Rt.Caption :='NMC NO . :' +OraQuery_CollectedBy.FieldByName('NMCNO').AsString
    //                  else
    //                  LBL_NMCNO_Rt.Caption:='';
                  end;
                  begin
                      with OraQuery_PerformedBy do
                      begin
                          Close;
                          SQL.Clear;
                          Session:=Dm_Hospital.Db;
                          SQL.add ('select fullname,(select SPECIALIZATION from doctor WHERE DOCID=l.DOCTORID)specialization');
                          SQL.Add(',(select qualification from doctor WHERE DOCID=l.DOCTORID)qualification,(select NMCNO from doctor where  DOCID=l.DOCTORID)NMCNO');
                          SQL.Add(', (select signature from doctor WHERE DOCID=l.DOCTORID)signature from lab_usermain l where username in ( ');
                          SQL.add ('Select distinct verifiedby from vw_sample_collected');
                          SQL.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
    //                      sql.savetofile('c:/footercheckperformed.txt');
                          open;
                          lbl_DocName_CT.Caption:= OraQuery_PerformedBy.FieldByName('fullname').AsString+','+OraQuery_PerformedBy.FieldByName('qualification').AsString;
                          lbl_DocName_CD.Caption:= OraQuery_PerformedBy.FieldByName('fullname').AsString+','+OraQuery_PerformedBy.FieldByName('qualification').AsString;
                          //lbl_Qualification_CT.Caption := OraQuery_PerformedBy.FieldByName('qualification').AsString;
                          //lbl_Qualification_CD.Caption := OraQuery_PerformedBy.FieldByName('qualification').AsString;
                          lbl_Specialization_CT.Caption :=OraQuery_PerformedBy.FieldByName('specialization').AsString;
                          lbl_Specialization_CD.Caption :=OraQuery_PerformedBy.FieldByName('specialization').AsString;
                          if OraQuery_PerformedBy.FieldByName('NMCNO').AsString<>'' then
                          LBL_NMCNO_CD.Caption :='NMC NO . :' +OraQuery_PerformedBy.FieldByName('NMCNO').AsString
                          else
                          LBL_NMCNO_CD.Caption:='';
                          if OraQuery_PerformedBy.FieldByName('NMCNO').AsString<>'' then
                          LBL_NMCNO_CT.Caption :='NMC NO . :' +OraQuery_PerformedBy.FieldByName('NMCNO').AsString
                          else
                          LBL_NMCNO_CT.Caption:='';
                      end;
                  end;
          end;

          LoadPatientClinicalData;



     WIth Qry_Title do
     Begin
          Close;
          Session:=dm_Hospital.Db;
          Sql[2]:='where PatientTestId='+IntToSTr(Gi_PatientTestId)+')';
          OPen;
     End;


     if gb_ReportLineRemove then
     begin
       //QRShape2.Enabled:=false;
     end;

     Table_Footer.Close;
     Table_Footer.DatabaseName := gs_temppath;
     Table_Footer.Open;
     Table_Footnote.Close;
     Table_Footnote.DatabaseName := gs_temppath;
     Table_Footnote.Open;
     if gb_Signature then
     AddSignature;
end;
end;


procedure TForm_QrPathFinding.lbl_PrintdatePrint(sender: TObject;
  var Value: string);
begin
    value:=TodaysDate+' '+TodaysTime;
end;

procedure TForm_QrPathFinding.LoadPatientClinicalData;
Var
     Qry:TOraQuery;
     MyRichEdit,MyRichEdit1:TRichEdit;
begin
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('select * from Vw_ClinicalFinding');
          SQL.Add('Where Status=1 and PatientTestID=' + IntToStr(gi_PatientTestID));
//          SQL.Add('And Delete_Status=''N''');
          SQL.Add('Order by Sn');
          Open;
     end;
     {MyRichEdit:=TRichEdit.Create(Nil);
     MyRichEdit.Parent:=Self;
     MyRichEdit.Visible:=False;

     MyRichEdit1:=TRichEdit.Create(Nil);
     MyRichEdit1.Parent:=Self;
     MyRichEdit1.Visible:=False;}
//     MyRichEdit.Color:=clBlue;
     //LoadDataInRichEdit(Qry, MyRichEdit, 'Result','TitleOne');
     //QRRichText1.ParentRichEdit:=MyRichEdit;
     //LoadDataInRichEditTitle(Qry, MyRichEdit1, 'Result','TitleOne');
     //QRRichText2.ParentRichEdit:=MyRichEdit1;
end;

procedure TForm_QrPathFinding.orqryGetFindingsAfterScroll(DataSet: TDataSet);
var
     ms: TMemoryStream;
     rtfString: AnsiString;
begin
     ms := TMemoryStream.Create;
     {}
     {MyRichEdit:=TRichEdit.Create(Nil);
     MyRichEdit.Parent:=Self;
     MyRichEdit.Visible:=False;
     LoadDataInRichEdit(orqryGetFindings,MyRichEdit,'Result');}
     rtfString := orqryGetFindings.FieldByName('Result').AsAnsiString;
     QRLabel14.Caption:= orqryGetFindings.FieldByName('titleone').AsAnsiString;
     ms.Clear;
     ms.Write(PAnsiChar(rtfString)^, Length(rtfString));
     ms.Position := 0;

     QRRichTextFindingDetail.Lines.LoadFromStream(ms);
     ms.Free;
     //qrdbtxttITLE1.Font.Style := [fsBold];
end;

procedure TForm_QrPathFinding.PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     //QRShape2.Height:=QRRichText1.Height;
end;

procedure TForm_QrPathFinding.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;

     with orqryGetFindings do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('select * from Vw_ClinicalFinding');
          SQL.Add('Where Status=1 and PatientTestID=' + IntToStr(gi_PatientTestID));
//          SQL.Add('And Delete_Status=''N''');
          SQL.Add('Order by Sn');
          Open;
     end;
end;

procedure TForm_QrPathFinding.PrintBarcode;
Var
     Day, DayNo, SAMPLENO: String;
begin
     // gs_SampleNo := Edit_PreviousSampleNo.Text;
     Day := copy(gs_SampleNo, 8, 1);
     if Day = 'S' then
          DayNo := '1'
     else if Day = 'M' then
          DayNo := '2'
     else if Day = 'T' then
          DayNo := '3'
     else if Day = 'W' then
          DayNo := '4'
     else if Day = 'H' then
          DayNo := '5'
     else if Day = 'F' then
          DayNo := '6';
     // SAMPLENO := copy(gs_SampleNo, 1, 6) + DayNo + copy(gs_SampleNo, 9, 999);
     SAMPLENO := gs_SampleNo;
     // qrBarcode.Text := SAMPLENO;
end;

procedure TForm_QrPathFinding.QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
begin
     UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedPatientTestID, 0, gi_Printing);
end;

procedure TForm_QrPathFinding.QRLabel32Print(sender: TObject;
  var Value: string);
begin
     value:=TodaysDateVS+' '+TodaysTime;
end;

procedure TForm_QrPathFinding.QRLabel4Print(sender: TObject; var Value: string);
begin
     //ShowMessage(IntToStr(QRRichText1.Lines.Count));
     //QRShape2.Height:=(QRRichText1.Lines.Count)*6+10;
//     QRRichText1.Frame.DrawTop:=true;
//     QRRichText1.Frame.DrawLeft:=true;
     //QRRichText1.AutoStretch:=True;
end;

procedure TForm_QrPathFinding.qrlbl3Print(sender: TObject; var Value: string);
begin
//value:=UpperCase(qrlbl3.Caption)   ;
end;

procedure TForm_QrPathFinding.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     // if ItemsCount > 32 then
     // QrFinding.NewPage;
end;

procedure TForm_QrPathFinding.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     // if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
     // Sender.Color := clWebLightCyan
     // else
     // Sender.Color := clWhite;
end;

procedure TForm_QrPathFinding.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
end;

procedure TForm_QrPathFinding.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;
end;

end.
