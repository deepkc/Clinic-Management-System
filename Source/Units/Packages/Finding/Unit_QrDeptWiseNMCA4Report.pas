unit Unit_QrDeptWiseNMCA4Report;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm, Unit_SampleCollectionFrame,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt,
  MemDS, DBAccess, Ora;

type
     TForm_QrDeptWiseNMCA4Report = class(TForm)
    Qr_NMCA4DeptWise: TQuickRep;
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
          QRDBText1: TQRDBText;
          QRDBText2: TQRDBText;
          QRDBText3: TQRDBText;
          QRDBText4: TQRDBText;
          QRDBText5: TQRDBText;
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
          QRShape4: TQRShape;
          PageFooterBand1: TQRBand;
          QRLabel22: TQRLabel;
          lbl_Date: TQRLabel;
          QRLabel13: TQRLabel;
          QRLabel14: TQRLabel;
          lbl_Verifiedby: TQRLabel;
    QRLBL_PageCap: TQRLabel;
    QRSysData_PageNo: TQRSysData;
    qrlbl_Of: TQRLabel;
          lbl_totpage: TQRLabel;
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
          QRDBRichText1: TQRDBRichText;
          QRLabel35: TQRLabel;
          QRLabel36: TQRLabel;
          QRLabel42: TQRLabel;
          QRLabel44: TQRLabel;
          QRLabel45: TQRLabel;
          QRLabel9: TQRLabel;
          lbl_Qualification_LT: TQRLabel;
          lbl_DocName_LT: TQRLabel;
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
          QRShape9: TQRShape;
          QRShape10: TQRShape;
          QrImage_Top: TQRImage;
          QRDBText7: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape1: TQRShape;
    QRImage_Bottom: TQRImage;
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
    QRImage_TopGrandy: TQRImage;
    QRImage_BottomGrandy: TQRImage;
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
    lbl_patienttype: TQRLabel;
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
    QRLabel31: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
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
    QRLabel26: TQRLabel;
    Richtext_Comment: TQRLabel;
    QRLabel79: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRImage1: TQRImage;
    QRAsBarcode_Sampleno: TQRAsBarcode;
          procedure FormCreate(Sender: TObject);
          procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
          procedure FormDestroy(Sender: TObject);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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
    procedure Qr_NMCA4DeptWiseBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
     private
          ItemsCount: integer;
          ps_deptype: String;
          { Private declarations }
          procedure CreateFindingsTable;
          Procedure PrintBarcode;
          Procedure AddSignature;
     public
          { Public declarations }
          pbIsEmergency:Boolean;
     end;

var
     Form_QrDeptWiseNMCA4Report: TForm_QrDeptWiseNMCA4Report;

implementation



Procedure UpdateTestProgressStatus(BillNo, GroupPatientTestId: String; PatientTestId, TestProgressStatus: integer);
  stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_QrDeptWiseNMCA4Report.AddSignature;
begin
     SignatureRT.Enabled:=true;
     SignatureRD.Enabled:=true;
     SignatureLT.Enabled:=true;
     SignatureLD.Enabled:=true;

     (*Signature on Right Align*)
     if UpperCase(lbl_DocName_RD.Caption)='PRASHANT REGMI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_PrashantD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_CD.Caption)='PRASHANT REGMI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureCD.Picture.Graphic:=Image_PrashantD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_LD.Caption)='PRASHANT REGMI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_PrashantD.Picture.Graphic;
     end;


      if UpperCase(lbl_DocName_RD.Caption)='HEMRAJ BHANDARI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_HemrajD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_CD.Caption)='HEMRAJ BHANDARI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureCD.Picture.Graphic:=Image_HemrajD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_LD.Caption)='HEMRAJ BHANDARI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_HemrajD.Picture.Graphic;
     end ;



     if UpperCase(lbl_DocName_RD.Caption)='MANITA CHETTRI THAPA' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_ManitaD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_CD.Caption)='MANITA CHETTRI THAPA' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureCD.Picture.Graphic:=Image_ManitaD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_LD.Caption)='MANITA CHETTRI THAPA' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_ManitaD.Picture.Graphic;
     end ;


     if UpperCase(lbl_DocName_RD.Caption)='LAV DEV JOSHI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_LavDevD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_CD.Caption)='LAV DEV JOSHI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureCD.Picture.Graphic:=Image_LavDevD.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_LD.Caption)='LAV DEV JOSHI' then
     begin
          //SignatureRT.Picture.Graphic:=Image_PrashantT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_LavDevD.Picture.Graphic;
     end ;


     {else if UpperCase(lbl_DocName_RD.Caption)='JYOTI ACHARYA' then
     begin
          SignatureRT.Picture.Graphic:=Image_JyotiT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_JyotiB.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='RAJENDRA KARMACHARYA' then
     begin
          SignatureRT.Picture.Graphic:=Image_RajendraT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_RajendraD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='ANIL REGMI' then
     begin
          SignatureRT.Picture.Graphic:=Image_AnilT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_AnilB.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='BIMAL BUDHATHOKI' then
     begin
          SignatureRT.Picture.Graphic:=Image_BimalT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_BimalD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='DEEPAK RAJ JOSHI' then
     begin
          SignatureRT.Picture.Graphic:=Image_DeepakRajT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_DeepakRajD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='SANJEET PANDIT' then
     begin
          SignatureRT.Picture.Graphic:=Image_SanjeetPanditT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_SanjeetPanditD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='SHANKER SHAHI' then
     begin
          SignatureRT.Picture.Graphic:=Image_ShankerT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_ShankerD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='MEERA HADA' then
     begin
          SignatureRT.Picture.Graphic:=Image_MeeraT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_MeeraD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='LAXMAN POKHREL' then
     begin
          SignatureRT.Picture.Graphic:=Image_LaxmanT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_Laxmand.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='PRADIP KUMAR RANABHAT' then
     begin
          SignatureRT.Picture.Graphic:=Image_PradipT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_Pradipd.Picture.Graphic;
     end;}
     (*Signature on Right Align end*)

     (*Signature on Left Align*)
     {if UpperCase(lbl_Docname_LD.Caption)='GANESH PRASAD ACHARYA' then
     begin
          SignatureLT.Picture.Graphic:=Image_GaneshT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_GaneshB.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='JYOTI ACHARYA' then
     begin
          SignatureLT.Picture.Graphic:=Image_JyotiT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_JyotiB.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='RAJENDRA KARMACHARYA' then
     begin
          SignatureLT.Picture.Graphic:=Image_RajendraT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_RajendraD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='ANIL REGMI' then
     begin
          SignatureLT.Picture.Graphic:=Image_AnilT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_AnilB.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='BIMAL BUDHATHOKI' then
     begin
          SignatureLT.Picture.Graphic:=Image_BimalT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_BimalD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='DEEPAK RAJ JOSHI' then
     begin
          SignatureLT.Picture.Graphic:=Image_DeepakRajT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_DeepakRajD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='SANJEET PANDIT' then
     begin
          SignatureLT.Picture.Graphic:=Image_SanjeetPanditT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_SanjeetPanditD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='SHANKER SHAHI' then
     begin
          SignatureLT.Picture.Graphic:=Image_ShankerT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_ShankerD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='MEERA HADA' then
     begin
          SignatureLT.Picture.Graphic:=Image_MeeraT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_MeeraD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='USHA KAFLE' then
     begin
          SignatureLT.Picture.Graphic:=Image_UshaT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_UshaD.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='LAXMAN POKHREL' then
     begin
          SignatureLT.Picture.Graphic:=Image_LaxmanT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_Laxmand.Picture.Graphic;
     end
     else if UpperCase(lbl_Docname_LD.Caption)='PRADIP KUMAR RANABHAT' then
     begin
          SignatureLT.Picture.Graphic:=Image_PradipT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_Pradipd.Picture.Graphic;
     end ; }

     (*Signature on Left Align end*)
end;

procedure TForm_QrDeptWiseNMCA4Report.CreateFindingsTable;
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
          FieldDefs.Add('IsHeading', ftString, 1);
          FieldDefs.Add('CptCode', ftString, 100);
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

procedure TForm_QrDeptWiseNMCA4Report.FormCreate(Sender: TObject);
var
RepComment: String;
begin
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

          if gi_compileValue=4 then
          begin
               QRImage_TopGrandy.Enabled:=True;
               QRImage_BottomGrandy.Enabled:=True;
          end
          else if gi_compileValue=2 then
          begin
               QRImage_Bottom.Enabled := true;
               QrImage_Top.Enabled := true;
          end;

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
     LoadPatientData(gi_PatientID);
     //QRLabel12.Caption := Gs_PatientIdCaption;
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     Lbl_sampno.Caption := gs_SampleNo;
     QRAsBarcode_Sampleno.Text:=  FormatFloat('00000',StrtoInt(Copy(gs_SampleNo,9,length(gs_SampleNo))));
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age + ' / ' + copy(Gs_Gender, 1, 1);
     //ShowMessage(lbl_agegender.Caption);
     lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
     //lbl_referaldoc.Caption := GetRefDoc(Gs_BillNo);
     lbl_referaldoc.Caption := GetRefDocfrompatienttest(gs_billno);
     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);
     lbl_patienttype.Caption:=GetOPDWard(Gs_BillNo);
     //ShowMessage(gs_SampleNo);

     if 1=2 then
     //if LoadImageFromDB(gi_PatientID) then
     begin
          // QRImage_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          // QRImage_Main.Enabled := true;
          // QRShape1.Enabled := true;
     end;
     if gb_PrintSelected then
     begin
          if LoadInvestigativeResult(Table_Findings,Table_Findings, Table_Footnote,gi_PatientID, gi_PatientTestID, true, gs_TestDate,
               Gs_SelectedDepList, Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               // This is Gs_SelectedTestNameList= PatientTestId
               LoadFindingFooter(Table_Footer, gi_PatientTestID, true, gs_TestDate, Gs_SelectedTestNameList);
          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
               Gs_SelectedTestNameList, true);
               RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);

          if Trim(RepComment) <> '' then
          begin
               Richtext_Comment.Caption := Trim(RepComment);
          end
          else
          begin
               QRSubDetail3.Height := 0;
          end;


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
                  sql.add ('select fullname,(select specilization from doctor where f_name||'' ''||l_name=upper(l.fullname))specialization');
                  sql.Add(',(select qualification from doctor where f_name||'' ''||l_name=upper(l.fullname))qualification');
                  sql.Add(', (select signature from doctor where f_name||'' ''||l_name=upper(l.fullname))signature from lab_usermain l where username in ( ');
                  sql.add ('Select distinct verifiedby from vw_sample_collected');
                  sql.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
                  sql.savetofile('c:/footercheckverify.txt');
                  open;
                  lbl_DocName_RT.Caption:= OraQuery_FooterVerifiedBy.FieldByName('fullname').AsString;
                  lbl_DocName_RD.Caption:= OraQuery_FooterVerifiedBy.FieldByName('fullname').AsString;
                  lbl_Qualification_RT.Caption := OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString;
                  lbl_Qualification_RD.Caption := OraQuery_FooterVerifiedBy.FieldByName('qualification').AsString;
                  lbl_Specialization_RT.Caption :=OraQuery_FooterVerifiedBy.FieldByName('specialization').AsString;
                  lbl_Specialization_RD.Caption :=OraQuery_FooterVerifiedBy.FieldByName('specialization').AsString;
              end;

              with OraQuery_CollectedBy do
              begin
                  Close;
                  SQL.Clear;
                  Session:=Dm_Hospital.Db;
                  sql.add ('select fullname,(select specilization from doctor where f_name||'' ''||l_name=upper(l.fullname))specialization');
                  sql.Add(',(select qualification from doctor where f_name||'' ''||l_name=upper(l.fullname))qualification');
                  sql.Add(', (select signature from doctor where f_name||'' ''||l_name=upper(l.fullname))signature from lab_usermain l where username in ( ');
                  sql.add ('Select distinct collectedby from vw_sample_collected');
                  sql.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
                  sql.savetofile('c:/footercheckcollected.txt');
                  open;
                  lbl_DocName_LT.Caption:= OraQuery_CollectedBy.FieldByName('fullname').AsString;
                  lbl_DocName_LD.Caption:= OraQuery_CollectedBy.FieldByName('fullname').AsString;
                  lbl_Qualification_LT.Caption := OraQuery_CollectedBy.FieldByName('qualification').AsString;
                  lbl_Qualification_LD.Caption := OraQuery_CollectedBy.FieldByName('qualification').AsString;
                  lbl_Specialization_LT.Caption := OraQuery_CollectedBy.FieldByName('specialization').AsString;
                  lbl_Specialization_LD.Caption := OraQuery_CollectedBy.FieldByName('specialization').AsString;
              end;


              with OraQuery_PerformedBy do
              begin
                  Close;
                  SQL.Clear;
                  Session:=Dm_Hospital.Db;
                  sql.add ('select fullname,(select specilization from doctor where f_name||'' ''||l_name=upper(l.fullname))specialization');
                  sql.Add(',(select qualification from doctor where f_name||'' ''||l_name=upper(l.fullname))qualification');
                  sql.Add(',(select signature from doctor where f_name||'' ''||l_name=upper(l.fullname))signature from lab_usermain l where username in ( ');
                  sql.add ('Select distinct findingpostby from vw_sample_collected');
                  sql.add ('Where PatientTestID in (' +Gs_SelectedPatientTestID+'))');
                  sql.savetofile('c:/footercheckperformed.txt');
                  open;
                  lbl_DocName_CT.Caption:= OraQuery_PerformedBy.FieldByName('fullname').AsString;
                  lbl_DocName_CD.Caption:= OraQuery_PerformedBy.FieldByName('fullname').AsString;
                  lbl_Qualification_CT.Caption := OraQuery_PerformedBy.FieldByName('qualification').AsString;
                  lbl_Qualification_CD.Caption := OraQuery_PerformedBy.FieldByName('qualification').AsString;
                  lbl_Specialization_CT.Caption :=OraQuery_PerformedBy.FieldByName('specialization').AsString;
                  lbl_Specialization_CD.Caption :=OraQuery_PerformedBy.FieldByName('specialization').AsString;
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
          end
          else if gs_ReportFooterRegulation='C' then  // checkbox wise footer
          begin
               lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
               lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
               lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
               QRLabel2.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
               if Trim(QRLabel2.Caption)='' then
                    QRShape1.Enabled:=False;


               lbl_Qualification_RD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
               lbl_DocName_RD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
               lbl_Specialization_RD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
               QRLabel5.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
               if Trim(QRLabel5.Caption)='' then
                    QRShape11.Enabled:=False;

               lbl_Qualification_CD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
               lbl_DocName_CD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
               lbl_Specialization_CD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
               QRLabel30.Caption := GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
               if Trim(QRLabel30.Caption) = '' then
                    QRShape12.Enabled := false;

               lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
               lbl_DocName_LT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
               lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
               QRLabel9.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
               if Trim(QRLabel9.Caption)='' then
                    QRShape5.Enabled:=False;

               lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
               lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
               lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
               QRLabel29.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
               if Trim(QRLabel29.Caption)='' then
                    QRShape8.Enabled:=False;

               lbl_Qualification_CT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
               lbl_Docname_CT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
               lbl_Specialization_CT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
               QRLabel28.Caption := GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
               if Trim(QRLabel28.Caption) = '' then
                    QRShape2.Enabled := false;
          end
          else if gs_ReportFooterRegulation='S' then//Manual Report Footer
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
              end;
          end;

          if LoadInvestigativeResult(Table_Findings,Table_Findings, Table_Footer, gi_PatientID,gi_PatientTestID, false, gs_TestDate,
               Gs_SelectedDepList, Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               LoadFindingFooter(Table_Footer, gi_PatientTestID, false, gs_TestDate, Gs_SelectedTestNameList);
          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
               Gs_SelectedPatientTestID, false);


          RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);

          if Trim(RepComment) <> '' then
          begin
               Richtext_Comment.Caption := Trim(RepComment);
          end
          else
          begin
               QRSubDetail3.Height := 0;
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

procedure TForm_QrDeptWiseNMCA4Report.FormDestroy(Sender: TObject);
begin
     Table_Findings.Free;
     Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     //gb_SingleDep:=false;
end;

procedure TForm_QrDeptWiseNMCA4Report.lbl_PrintdatePrint(sender: TObject;
  var Value: string);
begin
     value:=TodaysDateVS+' '+TodaysTime;
end;

procedure TForm_QrDeptWiseNMCA4Report.lbl_referaldocPrint(Sender: TObject; var Value: string);
begin
     {if Value = '' then
     begin
          QRLabel23.Enabled := false;
          QRLabel24.Enabled := false;
     end;}
end;

procedure TForm_QrDeptWiseNMCA4Report.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLBL_ReportBy.Caption:= gs_UserName;
end;

procedure TForm_QrDeptWiseNMCA4Report.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_QrDeptWiseNMCA4Report.PrintBarcode;
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

procedure TForm_QrDeptWiseNMCA4Report.QRDBText1Print(Sender: TObject; var Value: string);
begin
     ItemsCount := ItemsCount + 1;


     if (Table_Findings.FieldByName('TestNameid').AsString = '') then
     begin
          // QRDBText1.Enabled:=false;
          // lbl_TestHeading.Caption:=Value;
          if gb_SingleDep then
               QRDBText1.Font.Color := clWhite;
          QRDBText1.Font.Size := 10;
          QRDBText1.Font.Style := [fsBold];
          QRDBText1.DoubleBuffered := true;
          QRDBText1.Alignment := taCenter;
          QRDBText1.Width := 720;
     end
     else
     begin
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
               QRDBText1.Width := 289;
          end;
     end;



     if Table_Findings.FieldByName('IsSubjective').AsString = 'Y' then
          QRDBText2.Width := 400
     else
          QRDBText2.Width := 106;
end;

procedure TForm_QrDeptWiseNMCA4Report.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
      if ItemsCount > 35 then
      Qr_NMCA4DeptWise.NewPage;
end;

procedure TForm_QrDeptWiseNMCA4Report.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
      if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
      QRDBText2.Font.Style := [fsBold]
      else
      QRDBText2.Font.Style := [];
end;

procedure TForm_QrDeptWiseNMCA4Report.QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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

procedure TForm_QrDeptWiseNMCA4Report.QRSubDetail3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    if Richtext_Comment.Caption='' then
     begin
          PrintBand:= false;
     end
     else
     PrintBand:= true;
end;

procedure TForm_QrDeptWiseNMCA4Report.QRSysData_PageNoPrint(sender: TObject;
  var Value: string);
begin
     if QRSysData_PageNo.Caption= lbl_totpageh.Caption then
     begin
          //PageFooterBand1.Enabled:=False;
          //QRSysData1.Height:=0;
          PageFooterBand1.Height:=100;
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
          QRShape11.Enabled:= True;

          QRLabel30.Enabled:= True;
          lbl_DocName_CD.Enabled:= True;
          lbl_Specialization_CD.Enabled:= True;
          lbl_Qualification_CD.Enabled:= True;
          QRShape12.Enabled:= True;

          QRLabel2.Enabled:= True;
          lbl_Docname_LD.Enabled:=True;
          lbl_Specialization_LD.Enabled:= True;
          lbl_Qualification_LD.Enabled:= True;
          QRShape1.Enabled:= True;

          SignatureLD.Enabled:= True;
          SignatureCD.Enabled:= True;
          SignatureRD.Enabled:= True;
     end
     else
     begin
          //PageFooterBand1.Enabled:=true;
          //QRSysData1.Height:=15;
          PageFooterBand1.Height:=15;
          SummaryBand1.Enabled:=False;
          SummaryBand1.Height:=0;
          //QRLabel43.Top:=1;
          QRSysData_PageNo.Top:=50;
          QRLBL_PageCap.Top:=50;
          qrlbl_Of.Top:=50;
          lbl_totpage.Top:=50;
          QRLBL_ReportBy.Top:=50;
          QRLBL_ReportByCap.Top:=50;
          QRLabel26.Top:=70;
          QRLabel5.Enabled:=False;
          lbl_DocName_RD.Enabled:=False;
          lbl_Specialization_RD.Enabled:=False;
          lbl_Qualification_RD.Enabled:=false;
          QRShape11.Enabled:= False;

          QRLabel30.Enabled:= False;
          lbl_DocName_CD.Enabled:= False;
          lbl_Specialization_CD.Enabled:= False;
          lbl_Qualification_CD.Enabled:= false;
          QRShape12.Enabled:= False;

          QRLabel2.Enabled:= False;
          lbl_Docname_LD.Enabled:=False;
          lbl_Specialization_LD.Enabled:= False;
          lbl_Qualification_LD.Enabled:= False;
          QRShape1.Enabled:= False;

          SignatureLD.Enabled:= False;
          SignatureCD.Enabled:= False;
          SignatureRD.Enabled:= False;
     end;
end;

procedure TForm_QrDeptWiseNMCA4Report.Qr_NMCA4DeptWiseBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     if pbIsEmergency=true then
     QRLabel26.Enabled:=True
     else
     QRLabel26.Enabled:=False;
end;

procedure TForm_QrDeptWiseNMCA4Report.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
end;

procedure TForm_QrDeptWiseNMCA4Report.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLabel50.Caption:= gs_UserName;
end;

procedure TForm_QrDeptWiseNMCA4Report.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;
end;

end.
