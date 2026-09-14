unit Unit_QrDeptWiseA4Report_hetaudaref;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm, Unit_SampleCollectionFrame,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt,
  MemDS, DBAccess,Unit_Master, Ora, acPNG;

type
     TForm_QrDeptWiseA4_hetaudarefl = class(TForm)
    Qr_HetaudaRefDeptWise: TQuickRep;
          PageHeaderBand1: TQRBand;
          QRLabel10: TQRLabel;
          QRLabel12: TQRLabel;
          QRLabel16: TQRLabel;
          lbl_ReportedDate: TQRLabel;
          lbl_Name: TQRLabel;
          Lbl_HosNo: TQRLabel;
          QRLabel18: TQRLabel;
          QRLabel19: TQRLabel;
          QRLabel21: TQRLabel;
          Table_Findings: TTable;
          GroupFooterBand1: TQRBand;
          QRLabel1: TQRLabel;
          QRLabel15: TQRLabel;
          lbl_agegender: TQRLabel;
          QRLabel17: TQRLabel;
          QRLabel20: TQRLabel;
          lbl_RegisteredDate: TQRLabel;
          Table_Footer: TTable;
          GroupFooterBand2: TQRBand;
          QRDBText6: TQRDBText;
          QRDBText8: TQRDBText;
          QRDBText9: TQRDBText;
          QRLabel23: TQRLabel;
          QRLabel24: TQRLabel;
          lbl_referaldoc: TQRLabel;
          QRDBText12: TQRDBText;
          PageFooterBand1: TQRBand;
          GroupHeaderBand1: TQRBand;
          QRLabel37: TQRLabel;
          QRLabel38: TQRLabel;
          QRLabel39: TQRLabel;
          QRLabel40: TQRLabel;
          QRShape3: TQRShape;
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
          Table_Footnote: TTable;
          QRLabel35: TQRLabel;
          QRLabel36: TQRLabel;
          QRLabel42: TQRLabel;
          QRLabel44: TQRLabel;
          QRLabel45: TQRLabel;
          QRLabel9: TQRLabel;
          lbl_Qualification_LT: TQRLabel;
    lbl_DocName_L: TQRLabel;
          QRLabel29: TQRLabel;
          lbl_DocName_RT: TQRLabel;
          lbl_Qualification_RT: TQRLabel;
          QRLabel2: TQRLabel;
          lbl_Qualification_LD: TQRLabel;
          lbl_Docname_LD: TQRLabel;
          QRLabel5: TQRLabel;
          lbl_DocName_RD: TQRLabel;
          lbl_Qualification_RD: TQRLabel;
          lbl_Specialization_LT: TQRLabel;
          lbl_Specialization_RT: TQRLabel;
          lbl_Specialization_LD: TQRLabel;
          lbl_Specialization_RD: TQRLabel;
          QRDBText7: TQRDBText;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    SignatureRT: TQRImage;
    Image_GaneshT: TQRImage;
    Image_AnilT: TQRImage;
    Image_JyotiT: TQRImage;
    Image_GaneshB: TQRImage;
    Image_JyotiB: TQRImage;
    Image_AnilB: TQRImage;
    SignatureRD: TQRImage;
    SignatureLT: TQRImage;
    SignatureLD: TQRImage;
    Image_DeepakRajT: TQRImage;
    Image_PrashantT: TQRImage;
    Image_SanjeetPanditT: TQRImage;
    Image_SanjeetPanditD: TQRImage;
    Image_PrashantD: TQRImage;
    Image_ManitaD: TQRImage;
    Image_RajendraT: TQRImage;
    Image_LavDevD: TQRImage;
    Image_BimalT: TQRImage;
    Image_BimalD: TQRImage;
    Image_ShankerT: TQRImage;
    Image_ShankerD: TQRImage;
    Image_UshaT: TQRImage;
    Image_UshaD: TQRImage;
    Image_LaxmanT: TQRImage;
    Image_HemrajD: TQRImage;
    Image_PradipT: TQRImage;
    Image_PradipD: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel602: TQRLabel;
    lbl_Printdate: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    Lbl_sampno: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_billno: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape2: TQRShape;
    QRLabel30: TQRLabel;
    lbl_Qualification_CD: TQRLabel;
    lbl_DocName_CD: TQRLabel;
    lbl_Specialization_CD: TQRLabel;
    QRShape12: TQRShape;
    lbl_Qualification_CT: TQRLabel;
    lbl_Docname_CT: TQRLabel;
    lbl_Specialization_CT: TQRLabel;
    OraQuery_FooterVerifiedBy: TOraQuery;
    OraQuery_CollectedBy: TOraQuery;
    OraQuery_PerformedBy: TOraQuery;
    QRLBL_ReportByCap: TQRLabel;
    QRLBL_ReportBy: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    SignatureCT: TQRImage;
    SignatureCD: TQRImage;
    QRLabel3: TQRLabel;
    QRAsBarcode_Sampleno: TQRAsBarcode;
    LBL_NMCNO_RD: TQRLabel;
    LBL_NMCNO_CD: TQRLabel;
    LBL_NMCNO_CT: TQRLabel;
    LBL_NMCNO_RT: TQRLabel;
    QRLBL_PageCap: TQRLabel;
    QRSysData_PageNo: TQRSysData;
    qrlbl_Of: TQRLabel;
    lbl_totpage: TQRLabel;
    QRLabel27: TQRLabel;
    lbl_samplesource: TQRLabel;
    QRLabel41: TQRLabel;
    qryTQuery: TOraQuery;
    QRLabel32: TQRLabel;
    QRLabel_ReportHeader: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape9: TQRShape;
    QRLabel31: TQRLabel;
    QrImage_Top: TQRImage;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRSubDetail2: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText11: TQRDBText;
    Query1: TQuery;
    Hospital_name: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape4: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
          procedure FormCreate(Sender: TObject);
          //procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
          procedure FormDestroy(Sender: TObject);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          //procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure Table_FooterAfterScroll(DataSet: TDataSet);
          procedure SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
          procedure QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure lbl_referaldocPrint(Sender: TObject; var Value: string);
    procedure lbl_PrintdatePrint(sender: TObject; var Value: string);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSysData_PageNoPrint(sender: TObject; var Value: string);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRLabel32Print(sender: TObject; var Value: string);
    procedure QRSysData2Print(sender: TObject; var Value: string);
    procedure Qr_HetaudaRefDeptWiseAfterPrint(Sender: TObject);
    procedure Qr_HetaudaRefDeptWiseBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    //procedure QRDBText13Print(sender: TObject; var Value: string);
    //procedure QRDBText7Print(sender: TObject; var Value: string);
    //procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    //procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormShow(Sender: TObject);
    procedure QRSubDetail2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure Hospital_namePrint(sender: TObject; var Value: string);
    procedure QRLabel26Print(sender: TObject; var Value: string);
    procedure QRLabel46Print(sender: TObject; var Value: string);
     private
          ItemsCount: integer;
          ps_deptype: String;
          { Private declarations }
          procedure CreateFindingsTable;
          Procedure PrintBarcode;
          Procedure AddSignature;
     public
          Pi_DoctorId,pi_testhead :Integer;
          useridleft,useridright,useridcenter:string;
          { Public declarations }
          pbIsEmergency:Boolean;
     end;

var
     Form_QrDeptWiseA4_hetaudarefl: TForm_QrDeptWiseA4_hetaudarefl;

implementation



Procedure UpdateTestProgressStatus(BillNo, GroupPatientTestId: String; PatientTestId, TestProgressStatus: integer);
  stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_QrDeptWiseA4_hetaudarefl.AddSignature;
Var
     ms,Ms1: TMemoryStream;
     JPG,Jpeg1: TJPEGImage;
begin
     SignatureRT.Enabled:=true;
     SignatureRD.Enabled:=true;
     SignatureLT.Enabled:=true;
     SignatureLD.Enabled:=true;
     SignatureCD.Enabled:=true;
     SignatureCD.Enabled:=true;

     SignatureRT.Picture.Graphic:=nil;
     SignatureRD.Picture.Graphic:=nil;
     SignatureLT.Picture.Graphic:=nil;
     SignatureLD.Picture.Graphic:=nil;
     with qryTQuery do
     begin
       Close;
       Sql.Clear;
       Sql.Add('Select signature from lab_usermain where userid='+quotedstr(useridleft));
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
       Sql.Add('Select signature from lab_usermain where userid='+quotedstr(useridright));
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
     end;


     with qryTQuery do
     begin
       Close;
       Sql.Clear;
       Sql.Add('Select signature from lab_usermain where userid='+quotedstr(useridcenter));
       Open;

       JPG:=TJPEGImage.Create;
       ms:=TMemoryStream.Create;
       try
            TBlobField(FieldByName('Signature')).SaveToStream(ms);
            ms.Position := 0;
            if ms.Size>0 then
            begin
                JPG.LoadFromStream(ms);
                SignatureCT.Picture.Assign(JPG);
                SignatureCD.Picture.Assign(JPG);
            end;
       finally
            JPG.Free;
            ms.Free;
       end;
     end;

end;

procedure TForm_QrDeptWiseA4_hetaudarefl.CreateFindingsTable;
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
          FieldDefs.Add('Range', ftString, 450);
          FieldDefs.Add('Unit', ftString, 32);
          FieldDefs.Add('Extra', ftString, 250);
          FieldDefs.Add('ExtraFinding', ftString,250);
          FieldDefs.Add('SampleNo', ftString, 32);
          FieldDefs.Add('Flag', ftString, 1);
          FieldDefs.Add('isaccredation', ftString, 1);
          FieldDefs.Add('IsSubjective', ftString, 1);
          FieldDefs.Add('IsHeading', ftString, 1);
          FieldDefs.Add('CptCode', ftString, 100);
          FieldDefs.Add('Footer',ftmemo);
          FieldDefs.Add('Comment',ftmemo);
          FieldDefs.Add('IsFooter',ftString,10);
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
          //FieldDefs.Add('TestNameId',FTinteger);
          CreateTable;
     end;

end;

procedure TForm_QrDeptWiseA4_hetaudarefl.FormCreate(Sender: TObject);

begin
     //gi_testhead:=0;


     ps_deptype := GetUserDepType(gi_UserID);
     if gb_isHalfPage then
     begin
          PageFooterBand1.Enabled := false;
          SummaryBand1.Enabled := true;
     end;
     if gb_HideSource then
     begin
          GroupHeaderBand1.Enabled := false;
     end;
     if gb_SingleDep then
          QRDBText7.Enabled := true
     else
          QRDBText7.Enabled := false;

     if gb_HideUnitFlagRefrange then
     begin
          QRLabel42.Enabled := false;
          QRLabel44.Enabled := false;
          QRLabel45.Enabled := false;
          QRDBText3.Enabled := false;
          QRDBText4.Enabled := false;
          QRDBText5.Enabled := false;
          QRDBText2.Width := 400;
     end;
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
     if gi_compileValue=22 then
     begin
          //QRImage_Bottom.Enabled := False;
          //QrImage_Top.Enabled :=False;
          if gi_depid=4 then
          begin
               QRDBText2.Width:=435;
               QRDBText3.Enabled:=false;
               QRDBText4.Enabled:=false;
               QRDBText5.Enabled:=false;
               QRDBText10.Enabled:=false;
               QRLabel42.Enabled :=false;
               QRLabel44.Enabled:=false;
               QRLabel45.Enabled:=false;
               QRLabel31.Enabled:=false;
          end;
     end;
     CreateFindingsTable;
     LoadPatientData(gi_PatientID);
     lbl_samplesource.Caption:=SampleSource(Gs_SelectedPatientTestID);
     //QRLabel12.Caption := Gs_PatientIdCaption;
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     Lbl_sampno.Caption := gs_SampleNo;
     QRAsBarcode_Sampleno.Text:=  gs_SampleNo;
     //lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age +' '+ Gs_agetype+' / ' + Gs_Gender;;
     //ShowMessage(lbl_agegender.Caption);
     //lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
     lbl_referaldoc.Caption :=GetRefDoc(Gs_BillNo);// GetRefDoctFromPatientTest(gi_PatientTestID,Gs_BillNo);          //
     lbl_billno.Caption:=Gs_BillNo;
     //lbl_referaldoc.Caption := GetRefDocfrompatienttest(gs_billno);
     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);
     //lbl_patienttype.Caption:=GetOPDWard(Gs_BillNo);
     //ShowMessage(gs_SampleNo);

     //

     //

     if 1=2 then
     //if LoadImageFromDB(gi_PatientID) then
     begin
          // QRImage_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          // QRImage_Main.Enabled := true;
          // QRShape1.Enabled := true;
     end;
     if gb_PrintSelected then
     begin
          if LoadInvestigativeResultForBiodiag(Table_Findings,Table_Findings, Table_Footnote,gi_PatientID, gi_PatientTestID, true, gs_TestDate,
               Gs_SelectedDepList, Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               // This is Gs_SelectedTestNameList= PatientTestId
               //LoadFindingFooter(Table_Footer, gi_PatientTestID, true, gs_TestDate, Gs_SelectedTestNameList);
         //LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
               //Gs_SelectedTestNameList, true);
               //RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);

          {if Trim(RepComment) <> '' then
          begin
               Richtext_Comment.Caption := Trim(RepComment);
          end
          else
          begin
               //QRSubDetail3.Height := 0;
          end;}
     end
     else
     begin
          {if gs_ReportFooterRegulation='U' then  // user wise footer
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

              if gb_Signature= true then
              begin
                  //SignatureLT.Picture.Graphic:=OraQuery_CollectedBy.FieldByName('signature').AsString;
                  //SignatureLD.Picture.Graphic:=OraQuery_CollectedBy.FieldByName('signature').AsString;
                  //SignatureRT.Picture.Graphic:=OraQuery_FooterVerifiedBy.FieldByName('signature').AsString;
                  //SignatureRD.Picture.Graphic:=OraQuery_FooterVerifiedBy.FieldByName('signature').AsString;
                  //SignatureCT.Picture.Graphic:=OraQuery_PerformedBy.FieldByName('signature').AsString;
                  //SignatureCD.Picture.Graphic:=OraQuery_PerformedBy.FieldByName('signature').AsString;
              end;
          end }
          if gs_ReportFooterRegulation='C' then  // checkbox wise footer
          begin
               lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
               lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
               lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
               useridleft:=(GetReportFooterID(gs_SampleNo,ps_deptype, 'Left'));
               QRLabel2.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
               if Trim(lbl_Docname_LD.Caption)='' then
                    QRShape1.Enabled:=False;


               lbl_Qualification_RD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
               lbl_DocName_RD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
               lbl_Specialization_RD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
               useridright:=(GetReportFooterID(gs_SampleNo,ps_deptype, 'Right'));
               QRLabel5.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
               if Trim(lbl_DocName_RD.Caption)='' then
                    QRShape11.Enabled:=False;

               lbl_Qualification_CD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
               lbl_DocName_CD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
               useridcenter:=(GetReportFooterID(gs_SampleNo,ps_deptype, 'Center'));
               lbl_Specialization_CD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
               QRLabel30.Caption := GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
               if Trim(lbl_DocName_CD.Caption) = '' then
                    QRShape9.Enabled := false;

               lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
               lbl_DocName_L.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
               lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
               QRLabel9.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
               if Trim(lbl_DocName_L.Caption)='' then
                    QRShape5.Enabled:=False;

               lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
               lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
               lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
               QRLabel29.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
               if Trim(lbl_DocName_RT.Caption)='' then
                    QRShape8.Enabled:=False;

               lbl_Qualification_CT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
               lbl_Docname_CT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
               lbl_Specialization_CT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
               QRLabel28.Caption := GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
               if Trim(lbl_Docname_CT.Caption) = '' then
                    QRShape2.Enabled := false;
          end ;
          {else if gs_ReportFooterRegulation='S' then//Manual Report Footer
          begin
               lbl_Qualification_RD.Caption := GetManualFooternameRightQualification(gs_userdepid);
               lbl_DocName_RD.Caption := GetManualFooternameRight(gs_userdepid);
               lbl_Specialization_RD.Caption :=GetManualFooternameRightSpecialization(gs_userdepid);
               QRLabel5.Caption :=GetManualFooternameRightStatus(gs_userdepid);
               if Trim(QRLabel5.Caption) = '' then
                    QRShape11.Enabled := false;


              lbl_Qualification_LD.Caption := GetManualFooternameLeftQualification(gs_userdepid);
              lbl_Docname_LD.Caption := GetManualFooternameLeft(gs_userdepid);
              lbl_Specialization_LD.Caption := GetManualFooternameLeftSpecialization(gs_userdepid);
              QRLabel2.Caption := GetManualFooternameLeftStatus(gs_userdepid);
              if Trim(QRLabel2.Caption) = '' then
                 QRShape1.Enabled := false;

               lbl_Qualification_CD.Caption := GetManualFooternameCenterQualification(gs_userdepid);
               lbl_DocName_CD.Caption := GetManualFooternameCenter(gs_userdepid);
               lbl_Specialization_CD.Caption := GetManualFooternameCenterSpecialization(gs_userdepid);
               QRLabel30.Caption := GetManualFooternameCenterStatus(gs_userdepid);
               if Trim(QRLabel30.Caption) = '' then
                    QRShape12.Enabled := false;


              lbl_Qualification_CT.Caption :=GetManualFooternameCenterQualification(gs_userdepid);
              lbl_Docname_CT.Caption :=GetManualFooternameCenter(gs_userdepid);
              lbl_Specialization_CT.Caption :=GetManualFooternameCenterSpecialization(gs_userdepid);
              QRLabel28.Caption := GetManualFooternameCenterStatus(gs_userdepid);
              if Trim(QRLabel28.Caption) = '' then
                    QRShape2.Enabled := false;


              lbl_Qualification_LT.Caption := GetManualFooternameLeftQualification(gs_userdepid);
              lbl_DocName_LT.Caption :=GetManualFooternameLeft(gs_userdepid);
              lbl_Specialization_LT.Caption := GetManualFooternameLeftSpecialization(gs_userdepid);
              QRLabel9.Caption := GetManualFooternameLeftStatus(gs_userdepid);
              if Trim(QRLabel9.Caption) = '' then
                 QRShape5.Enabled := false;

              lbl_Qualification_RT.Caption :=GetManualFooternameRightQualification(gs_userdepid);
              lbl_DocName_RT.Caption := GetManualFooternameRight(gs_userdepid);
              lbl_Specialization_RT.Caption := GetManualFooternameRightSpecialization(gs_userdepid);
              QRLabel29.Caption := GetManualFooternameRightStatus(gs_userdepid);
              if Trim(QRLabel29.Caption) = '' then
                QRShape8.Enabled := false;
          end;}
          end;

          if LoadInvestigativeResultForBiodiag(Table_Findings,Table_Findings, Table_Footer, gi_PatientID,gi_PatientTestID, false, gs_TestDate,
               Gs_SelectedDepList, Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               //LoadFindingFooter(Table_Footer, gi_PatientTestID, false, gs_TestDate, Gs_SelectedTestNameList);

         //LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
               //Gs_SelectedPatientTestID, false);


          //RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);
          //

          {if Trim(RepComment) <> '' then
          begin
              Richtext_Comment.Caption := Trim(RepComment);
               QRDBText11.Enabled:=false;
          end
          else
          begin
                QRLabel79.Enabled:=false;
                Richtext_Comment.Enabled:=false;
                QRDBText11.Enabled:=True;
                QRDBText11.Left:=10;
                //Richtext_Comment.Enabled:=true;
               //QRSubDetail3.Height := 0;
          end; }

     Table_Footer.Close;
     Table_Footer.DatabaseName := gs_temppath;
     Table_Footer.Open;
     Table_Footnote.Close;
     Table_Footnote.DatabaseName := gs_temppath;
     Table_Footnote.Open;


     if gb_Signature then
     AddSignature;


end;

procedure TForm_QrDeptWiseA4_hetaudarefl.FormDestroy(Sender: TObject);
begin
     Table_Findings.Free;
     Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     //gb_SingleDep:=false;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.FormShow(Sender: TObject);
begin
     //gi_testhead:=0;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.Hospital_namePrint(sender: TObject;
  var Value: string);
begin
   value:=gs_HospitalName;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.lbl_PrintdatePrint(sender: TObject;
  var Value: string);
begin
     value:=TodaysDate+' '+TodaysTime;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.lbl_referaldocPrint(Sender: TObject; var Value: string);
begin
     if Value = '' then
     begin
          QRLabel23.Enabled := false;
          QRLabel24.Enabled := false;
     end;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLBL_ReportBy.Caption:= gs_UserName;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.PrintBarcode;
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

procedure TForm_QrDeptWiseA4_hetaudarefl.QRDBText1Print(Sender: TObject; var Value: string);

begin

     ItemsCount := ItemsCount + 1;


     if (Table_Findings.FieldByName('TestNameid').AsString = '') then
     begin
              // QRDBText1.Font.Style:=[fsUnderline];


          // QRDBText1.Enabled:=false;
          // lbl_TestHeading.Caption:=Value;
          if gb_SingleDep then
               QRDBText1.Font.Color := clWhite;
          QRDBText1.Font.Size := 10;
          QRDBText1.Font.Style := [fsBold,fsUnderline];
          QRDBText1.DoubleBuffered := true;
          QRDBText1.Alignment := taLeftJustify;
          QRDBText1.Width := 272;   //240
          QRDBText1.Left :=5;


     end
     else
     begin
          //QRDBText1.Left :=8;
          if Table_Findings.FieldByName('IsHeading').AsString = 'Y' then
          begin
               QRDBText1.Font.Color := clBlack;
               QRDBText1.Font.Size := 8;
               QRDBText1.Font.Style := [fsBold];
               QRDBText1.Alignment := taLeftJustify;
               QRDBText1.Width := 289;


          end
          else
          begin
               // QRDBText1.Enabled:=true;
               QRDBText1.Font.Color := clBlack;
               QRDBText1.Font.Size := 8;
               QRDBText1.Font.Style := [];
               QRDBText1.Alignment := taLeftJustify;
               QRDBText1.Width := 272;  //289
               QRDBText1.Left :=5;


          end;
     end;
     {if Table_Findings.FieldByName('isaccredation').AsString = 'Y' then
     begin
           QRDBText1.Caption:= Table_Findings.FieldByName('test').AsString+'*';
     end; }


     if Table_Findings.FieldByName('IsSubjective').AsString = 'Y' then
          QRDBText2.Width := 400
     else
          QRDBText2.Width := 140;

     if gi_depid=4 then
          QRDBText2.Width := 435;


end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRLabel26Print(sender: TObject;
  var Value: string);
begin
    value:=gs_HospitalAddress;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRLabel32Print(sender: TObject;
  var Value: string);
begin
     value:=TodaysDateVS+' '+TodaysTime;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRLabel46Print(sender: TObject;
  var Value: string);
begin
      value:=gs_HospitalPhoneNumber;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSubDetail2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     //new page
     if (Table_Findings.FieldByName('FOOTER').AsString<>'')and(Table_Findings.FindNext=true)  then
     begin
          Qr_HetaudaRefDeptWise.NewPage;
        //  gb_isheadershown:=True;
          Table_Findings.FindPrior;
     end;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSubDetail2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin

     if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
          QRDBText2.Font.Style := [fsBold]
     else
          QRDBText2.Font.Style := [];
     if Table_Findings.FieldByName('isheading').AsString = '' then
     begin
          QRDBText1.Left :=275;
     end
     else
     begin
          QRDBText1.Left :=5;
     end;

     //new page
     if (Table_Findings.FieldByName('testnameid').AsString='')and(ItemsCount<>0)then
     begin
          Table_Findings.Next;
          if Table_Findings.FieldByName('ISFOOTER').AsString='Y' then
          Qr_HetaudaRefDeptWise.NewPage;
          Table_Findings.Prior;
     end
     else
     begin
          if (Table_Findings.FieldByName('ISFOOTER').AsString='Y')and(ItemsCount<>0)then
          begin
               Table_Findings.Prior;
               if Table_Findings.FieldByName('testnameid').AsString<>'' then
                    Qr_HetaudaRefDeptWise.NewPage;
               Table_Findings.Next;
          end

     end;
     //height
     if (Table_Findings.FieldByName('footer').AsString<>'')and (Table_Findings.FieldByName('comment').AsString='') then
     begin
          QRLabel22.Caption:='';
          QRDBText11.Enabled:=False;
          QRSubDetail2.Height:=46;
     end
     else if (Table_Findings.FieldByName('comment').AsString<>'')and(Table_Findings.FieldByName('footer').AsString='') then
     begin
          QRLabel22.Caption:='Comment:';
          QRDBText11.Enabled:=true;
          QRSubDetail2.Height:=46;
     end
     else {if (Table_Findings.FieldByName('footer').AsString='')or (Table_Findings.FieldByName('comment').AsString='')  then }
     begin
          QRLabel22.Caption:='';
          QRDBText11.Enabled:=False;
          QRDBText11.Visible:=False;
          QRSubDetail2.Height:=22;
     end;

end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);

begin
     {if QRDBRichText1.DataSet.RecordCount > 0 then
     begin
          BandPrinted := true ;
     end
     else
     begin
          BandPrinted := false;
     end; }
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSubDetail3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);

begin
    {if Richtext_Comment.Caption='' then
     begin
          PrintBand:= false;
     end
     else
     PrintBand:= true;}
     
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSysData2Print(sender: TObject;
  var Value: string);
begin
     if QRSysData2.Caption=lbl_totpageh.Caption then
     begin
         // QRLabel13.Enabled:=true;
     end
     else
     qrlabel13.Enabled:=false;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.QRSysData_PageNoPrint(sender: TObject;
  var Value: string);
begin
     if QRSysData_PageNo.Caption= lbl_totpageh.Caption  then
     begin
          //PageFooterBand1.Enabled:=False;
          //QRSysData1.Height:=0;
          PageFooterBand1.Height:=177;
          SummaryBand1.Enabled:=False;
          SummaryBand1.Height:=0;
          //QRSysData1.Top:=80;
          //QRLabel26.Top:=80;
          //QRLabel27.Top:=80;
          //QRLabel32.Top:=80;
          //lbl_totpage.Top:=80;
          //QRLabel41.Top:=80;
          //QRLabel46.Top:=80;
          QRLabel5.Enabled:=True;
          lbl_DocName_RD.Enabled:=True;
          lbl_Specialization_RD.Enabled:=True;
          lbl_Qualification_RD.Enabled:=True;
         // QRShape11.Enabled:= True;

          QRLabel30.Enabled:= True;
          lbl_DocName_CD.Enabled:= True;
          lbl_Specialization_CD.Enabled:= True;
          lbl_Qualification_CD.Enabled:= True;
//          QRShape12.Enabled:= True;

//          QRLabel2.Enabled:= True;
//          lbl_Docname_LD.Enabled:=True;
//          lbl_Specialization_LD.Enabled:= True;
//          lbl_Qualification_LD.Enabled:= True;
          QRShape1.Enabled:= True;
          SignatureLD.Enabled:= True;
          SignatureCD.Enabled:= True;
          SignatureRD.Enabled:= True;
          //QRLabel14.Enabled:=true;
     end
     else
        QRLabel14.Enabled:=false;
//     else
//     begin
//          //PageFooterBand1.Enabled:=true;
//          //QRSysData1.Height:=15;
//          PageFooterBand1.Height:=15;
//          SummaryBand1.Enabled:=False;
//          SummaryBand1.Height:=0;
//          //QRLabel43.Top:=1;
//          QRSysData_PageNo.Top:=50;
//          QRLBL_PageCap.Top:=50;
//          qrlbl_Of.Top:=50;
//          lbl_totpage.Top:=50;
//          QRLBL_ReportBy.Top:=50;
//          QRLBL_ReportByCap.Top:=50;
//          QRLabel26.Top:=70;
//          QRLabel5.Enabled:=False;
//          lbl_DocName_RD.Enabled:=False;
//          lbl_Specialization_RD.Enabled:=False;
//          lbl_Qualification_RD.Enabled:=false;
//          QRShape11.Enabled:= False;
//
//          QRLabel30.Enabled:= False;
//          lbl_DocName_CD.Enabled:= False;
//          lbl_Specialization_CD.Enabled:= False;
//          lbl_Qualification_CD.Enabled:= false;
//          QRShape12.Enabled:= False;
//
//          QRLabel2.Enabled:= False;
//          lbl_Docname_LD.Enabled:=False;
//          lbl_Specialization_LD.Enabled:= False;
//          lbl_Qualification_LD.Enabled:= False;
//          QRShape1.Enabled:= False;
//
//          SignatureLD.Enabled:= False;
//          SignatureCD.Enabled:= False;
//          SignatureRD.Enabled:= False;
//     end;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.Qr_HetaudaRefDeptWiseAfterPrint(
  Sender: TObject);

begin

   {  Lb_IsSpecialTest:=isSpecialTestCheck(Table_Findings.FieldByName('testnameid').AsInteger);
     if Lb_IsSpecialTest=True then
     begin
          if ItemsCount > 0 then
          Qr_NMCA4DeptWise.NewPage;
     end;}
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.Qr_HetaudaRefDeptWiseBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);

begin
     {Lb_IsSpecialTest:=isSpecialTestCheck(Table_Findings.FieldByName('testnameid').AsInteger);
     if Lb_IsSpecialTest=True then
     begin
          if ItemsCount > 0 then
          Qr_NMCA4DeptWise.NewPage;
     end;}
      
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLabel50.Caption:= gs_UserName;
end;

procedure TForm_QrDeptWiseA4_hetaudarefl.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;
end;

end.
