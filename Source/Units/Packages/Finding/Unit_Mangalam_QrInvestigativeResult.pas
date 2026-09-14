unit Unit_Mangalam_QrInvestigativeResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm, Unit_SampleCollectionFrame,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt;

type
     TForm_QrFinding_mangalam = class(TForm)
    QrFinding_mangalam: TQuickRep;
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
          QRLabel26: TQRLabel;
          QRLabel27: TQRLabel;
          QRSysData1: TQRSysData;
          QRLabel32: TQRLabel;
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
    Image_MeeraT: TQRImage;
    Image_SanjeetPanditT: TQRImage;
    Image_SanjeetPanditD: TQRImage;
    Image_MeeraD: TQRImage;
    Image_DeepakRajD: TQRImage;
    Image_RajendraT: TQRImage;
    Image_RajendraD: TQRImage;
    Image_BimalT: TQRImage;
    Image_BimalD: TQRImage;
    Image_ShankerT: TQRImage;
    Image_ShankerD: TQRImage;
    Image_UshaT: TQRImage;
    Image_UshaD: TQRImage;
    img_ANT_UP: TImage;
    img_PN_UP: TImage;
    img_PN_Down: TImage;
    img_ANT_Down: TImage;
    QRSubDetail2: TQRSubDetail;
    Richtext_Comment: TQRLabel;
    QRLabel79: TQRLabel;
    QRMemo_Range: TQRMemo;
    img_footer: TQRImage;
    lbl_Qualification_LT: TQRLabel;
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
     private
          ItemsCount: integer;
          ps_deptype: String;
          { Private declarations }
          procedure CreateFindingsTable;
          Procedure PrintBarcode;
          Procedure AddSignature;
     public
          { Public declarations }
     end;

var
     Form_QrFinding_mangalam: TForm_QrFinding_mangalam;

implementation

Procedure UpdateTestProgressStatus(BillNo, GroupPatientTestId: String; PatientTestId, TestProgressStatus: integer);
  stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_QrFinding_mangalam.AddSignature;
begin
     SignatureRT.Enabled:=true;
     SignatureRD.Enabled:=true;
     SignatureLT.Enabled:=true;
     SignatureLD.Enabled:=true;

     (*Signature on Right Align*)
     if UpperCase(lbl_DocName_RD.Caption)='GANESH PRASAD ACHARYA' then
     begin
          SignatureRT.Picture.Graphic:=Image_GaneshT.Picture.Graphic;
          SignatureRD.Picture.Graphic:=Image_GaneshB.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption)='JYOTI ACHARYA' then
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
     else if UpperCase(lbl_DocName_RD.Caption)='DR. PANKAJ B.N' then
     begin
          SignatureRT.Picture.Graphic:=img_PN_UP.Picture.Graphic;
          SignatureRD.Picture.Graphic:=img_PN_Down.Picture.Graphic;
     end;
     (*Signature on Right Align end*)

     (*Signature on Left Align*)
     if UpperCase(lbl_Docname_LD.Caption)='GANESH PRASAD ACHARYA' then
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
     else if UpperCase(lbl_Docname_LD.Caption)='PROF. (DR.) A.N. THAKUR' then
     begin
          SignatureLT.Picture.Graphic:=img_ANT_UP.Picture.Graphic;
          SignatureLD.Picture.Graphic:=img_ANT_Down.Picture.Graphic;
     end;
     (*Signature on Left Align end*)
end;

procedure TForm_QrFinding_mangalam.CreateFindingsTable;
begin
     if Table_Findings. Active=True then
          Table_Findings.Active := False;

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
          FieldDefs.Add('Range', ftMemo);
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

procedure TForm_QrFinding_mangalam.FormCreate(Sender: TObject);
var
    RepComment: String;
begin
     if gb_isHalfPage then
     begin
          PageFooterBand1.Enabled := false;
          SummaryBand1.Enabled := true;
     end;
     if gb_HideSource then
     begin
          GroupHeaderBand1.Enabled := false;
     end;

     if gb_QRHeadFoot then
     begin
       QrImage_Top.Enabled:=True;
       img_footer.Enabled:=True;
       QRImage_Bottom.Enabled:=True;
       SignatureLT.Enabled:=True;
       SignatureRT.Enabled:=True;
       SignatureLD.Enabled:=True;
       SignatureRD.Enabled:=True;
     end
     else
     begin
         QrImage_Top.Enabled:=False;
       img_footer.Enabled:=False;
       QRImage_Bottom.Enabled:=False;
       SignatureLT.Enabled:=False;
       SignatureRT.Enabled:=False;
       SignatureLD.Enabled:=False;
       SignatureRD.Enabled:=False;
     end;

     if gb_SingleDep then
          QRDBText7.Enabled := true
     else
          QRDBText7.Enabled := false;

//     if gb_HideUnitFlagRefrange then
//     begin
//          QRLabel42.Enabled := false;
//          QRLabel44.Enabled := false;
//          QRLabel45.Enabled := false;
//          QRDBText3.Enabled := false;
//          QRDBText4.Enabled := false;
//          QRDBText5.Enabled := false;
//          QRDBText2.Width := 400;
//     end;
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

//          if gi_compileValue=4 then
//          begin
//               QRImage_TopGrandy.Enabled:=True;
//               QRImage_BottomGrandy.Enabled:=True;
//          end
//          else if gi_compileValue=2 then
//          begin
//               QRImage_Bottom.Enabled := true;
//               QrImage_Top.Enabled := true;
//          end;

          ps_deptype := GetUserDepType(gi_UserID);

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
     QRLabel12.Caption := Gs_PatientIdCaption;
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age + ' / ' + Gs_Gender;
     //lbl_agegender.Caption := Gs_Age + ' ' + Gs_agetype + '  / ' + copy(Gs_Gender, 1, 1);
     lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
     lbl_referaldoc.Caption := GetRefDoc(Gs_BillNo);
     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);

     if 1=2 then
     //if LoadImageFromDB(gi_PatientID) then
     begin
          // QRImage_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          // QRImage_Main.Enabled := true;
          // QRShape1.Enabled := true;
     end;

     //gb_PrintSelected := True;
     if gb_PrintSelected then
     begin
          if LoadInvestigativeResult(Table_Findings,Table_Findings, Table_Footnote,gi_PatientID, gi_PatientTestID, true, gs_TestDate,
               Gs_SelectedDepList, Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               // This is Gs_SelectedTestNameList= PatientTestId
               LoadFindingFooter(Table_Footer, gi_PatientTestID, true, gs_TestDate, Gs_SelectedTestNameList);
          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
               Gs_SelectedTestNameList, true);
     end
     else
     begin
//          lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo, 'Left');
//          lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo, 'Left');
//          lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo, 'Left');
//          QRLabel2.Caption:=GetReportFooterStatus(gs_SampleNo, 'Left');
//          if Trim(QRLabel2.Caption)='' then
//               QRShape1.Enabled:=False;
//
//
//          lbl_Qualification_RD.Caption := GetReportFooterQualification(gs_SampleNo, 'Right');
//          lbl_DocName_RD.Caption := GetReportFooterName(gs_SampleNo, 'Right');
//          lbl_Specialization_RD.Caption := GetReportFooterSpecialization(gs_SampleNo, 'Right');
//          QRLabel5.Caption:=GetReportFooterStatus(gs_SampleNo, 'Right');
//          if Trim(QRLabel5.Caption)='' then
//               QRShape11.Enabled:=False;
//
//          lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo, 'Left');
//          lbl_DocName_LT.Caption := GetReportFooterName(gs_SampleNo, 'Left');
//          lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo, 'Left');
//          QRLabel9.Caption:=GetReportFooterStatus(gs_SampleNo, 'Left');
//          if Trim(QRLabel9.Caption)='' then
//               QRShape5.Enabled:=False;
//
//          lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo, 'Right');
//          lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo, 'Right');
//          lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo, 'Right');
//          QRLabel29.Caption:=GetReportFooterStatus(gs_SampleNo, 'Right');
//          if Trim(QRLabel29.Caption)='' then
//               QRShape8.Enabled:=False;
//
//          if LoadInvestigativeResult(Table_Findings, Table_Footer, gi_PatientID,gi_PatientTestID, false, gs_TestDate,
//               Gs_SelectedDepList, Gs_SelectedTestNameList) then
//               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
//               LoadFindingFooter(Table_Footer, gi_PatientTestID, false, gs_TestDate, Gs_SelectedTestNameList);
//          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate,
//               Gs_SelectedPatientTestID, false);
          if gb_IsEmergencyReporting then
          begin
               lbl_DocName_RD.Enabled:=True;
               lbl_Qualification_RD.Enabled:=True;
               lbl_Specialization_RD.Enabled:=True;
               QRLabel5.Enabled:=True;
               lbl_DocName_RD.Caption := ' Medical Lab Technologist';
               lbl_Qualification_RD.Caption := '[ Final Report Will be Issued ';
               lbl_Specialization_RD.Caption := 'After Validated by Lab In-Charge. ]';
               QRLabel5.Caption := 'Performed by';

               QRLabel29.Enabled:=True;
               lbl_DocName_RT.Enabled:=true;
               lbl_Qualification_RT.Enabled:=true;
               lbl_Specialization_RT.Enabled:=true;
               QRLabel29.Caption := 'Performed by';
               lbl_DocName_RT.Caption :=' Medical Lab Technologist';
               lbl_Qualification_RT.Caption := '[ Final Report Will be Issued ';
               lbl_Specialization_RT.Caption := 'After Validated by Lab In-Charge. ]';

               QRShape1.Enabled:=False;
               QRShape5.Enabled:=false;
               //QRLabel9.Enabled:=false;
               QRLabel2.Enabled:=false;
//               lbl_DocName_LT.Caption:='';
//               lbl_Qualification_LT.Caption:='';
//               lbl_Specialization_LT.Caption:='';
//               lbl_DocName_Ld.Caption:='';
//               lbl_Qualification_Ld.Caption:='';
//               lbl_Specialization_LD.Caption:='';
          end
          else
          begin
              //User Wise REport Footer
              if gs_ReportFooterRegulation='U' then
              begin
                     lbl_Qualification_LD.Caption := GetReportFooterQualificationNew(Gs_SelectedPatientTestID, 'Left');
                     lbl_Docname_LD.Caption := GetReportFooterNameNew(Gs_SelectedPatientTestID, 'Left');
                     lbl_Specialization_LD.Caption:=GetReportFooterSpecializationNew(Gs_SelectedPatientTestID,'Left');
                     //QRLabel2.Caption:=GetReportFooterStatusNew(Gs_SelectedPatientTestID, 'Left');
                     QRLabel2.Caption:='Verified by';
                    // lbl_DocName_CT.Caption:=GetFindingPostByNameNew(Gs_SelectedPatientTestID);
                    // lbl_DocName_CD.Caption:=GetFindingPostByNameNew(Gs_SelectedPatientTestID);

                     if Trim(lbl_Docname_LD.caption)='' then
                     begin
                          QRShape1.Enabled:=False;
                          QRLabel2.Enabled:=False;
                     end;

                     lbl_DocName_RD.Caption := gs_UserName;
                     lbl_Qualification_LT.Caption := GetReportFooterQualificationNew(Gs_SelectedPatientTestID, 'Left');
                     lbl_DocName_LT.Caption := GetReportFooterNameNew(Gs_SelectedPatientTestID,'Left');
                     //lbl_Specialization_LT.Caption:=GetReportFooterSpecializationNew(Gs_SelectedPatientTestID, 'Left');
                     //QRLabel9.Caption:=GetReportFooterStatusNew(Gs_SelectedPatientTestID, 'Left');
                     //QRLabel9.Caption:='Verified by';
                     //lbl_DocName_CT.Caption:=GetFindingPostByName(Gs_SelectedPatientTestID);
                     if Trim(lbl_DocName_LT.caption)='' then
                     begin
                          QRShape5.Enabled:=False;
                          //QRLabel9.Enabled:=False;
                     end;

                     lbl_DocName_RT.Caption :=gs_UserName;
              end
              else if gs_ReportFooterRegulation='C' then  //CheckBox Wise Report footer
              begin
                   lbl_Qualification_RD.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Right');
                   lbl_DocName_RD.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Right');
                   lbl_Specialization_RD.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Right');
                   QRLabel5.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Right');
                   if Trim(QRLabel5.Caption) = '' then
                        QRShape11.Enabled := false;


                  lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Left');
                  lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Left');
                  lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Left');
                  QRLabel2.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Left');
                  if Trim(QRLabel2.Caption) = '' then
                     QRShape1.Enabled := false;



                  lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Left');
                  lbl_DocName_LT.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Left');
                  //lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Left');
                  //QRLabel9.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Left');
                  //if Trim(QRLabel9.Caption) = '' then
                  //   QRShape5.Enabled := false;

                  lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Right');
                  lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Right');
                  lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Right');
                  QRLabel29.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Right');
                  if Trim(QRLabel29.Caption) = '' then
                    QRShape8.Enabled := false;
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




                  lbl_Qualification_LT.Caption := GetManualFooternameLeftQualification(gs_userdepid);
                  lbl_DocName_LT.Caption :=GetManualFooternameLeft(gs_userdepid);
                  //lbl_Specialization_LT.Caption := GetManualFooternameLeftSpecialization(gs_userdepid);
                  //QRLabel9.Caption := GetManualFooternameLeftStatus(gs_userdepid);
                  //if Trim(QRLabel9.Caption) = '' then
                 //    QRShape5.Enabled := false;

                  lbl_Qualification_RT.Caption :=GetManualFooternameRightQualification(gs_userdepid);
                  lbl_DocName_RT.Caption := GetManualFooternameRight(gs_userdepid);
                  lbl_Specialization_RT.Caption := GetManualFooternameRightSpecialization(gs_userdepid);
                  QRLabel29.Caption := GetManualFooternameRightStatus(gs_userdepid);
                  if Trim(QRLabel29.Caption) = '' then
                    QRShape8.Enabled := false;
              end;
          end;
           if LoadInvestigativeResult(Table_Findings,Table_Findings, Table_Footer, gi_PatientID, gi_PatientTestID, false, gs_TestDate, Gs_SelectedDepList,
               Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               LoadFindingFooter(Table_Footer, gi_PatientTestID, false, gs_TestDate, Gs_SelectedTestNameList);
          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate, Gs_SelectedPatientTestID, false);

          RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);

          if Trim(RepComment) <> '' then
          begin
               Richtext_Comment.Caption := Trim(RepComment);
          end
          else
          begin
               QRSubDetail2.Height := 0;
          end;

     end;

     //.........Hide Unit ,Flag , RefRange ,Method............//
     if gi_compileValue<>3 then
     begin
           if gb_HideUnit then
           begin
                QRLabel42.Enabled:=False;
                QRDBText3.Enabled:=False;
           end;

      //     if gb_HideMethod then
      //     begin
      //          QRLabel35.Enabled:=False;
      //          QRDBText10.Enabled:=False;
      //     end;

           if gb_HideFlag then
           begin
              QRLabel44.Enabled := false;
              QRDBText4.Enabled := false;
              QRDBText2.Width := 400;
           end;


           if gb_HideRefrange then
           begin
              QRLabel45.Enabled := false;
              QRDBText5.Enabled := false;
              QRDBText2.Width := 400;
           end;
     end;

     if gi_compileValue=3 then
     begin
         if gb_hideunitRange then
         begin
              QRLabel42.Enabled:=False;
              QRDBText3.Enabled:=False;
              QRLabel44.Enabled := false;
              QRDBText4.Enabled := false;
              QRDBText2.Width := 400;
              QRLabel45.Enabled := false;
              QRDBText5.Enabled := false;
         end;
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

procedure TForm_QrFinding_mangalam.FormDestroy(Sender: TObject);
begin
     Table_Findings.Free;
     Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     //gb_SingleDep:=false;
end;

procedure TForm_QrFinding_mangalam.lbl_referaldocPrint(Sender: TObject; var Value: string);
begin
     if Value = '' then
     begin
          QRLabel23.Enabled := false;
          QRLabel24.Enabled := false;
     end;
end;

procedure TForm_QrFinding_mangalam.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_QrFinding_mangalam.PrintBarcode;
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

procedure TForm_QrFinding_mangalam.QRDBText1Print(Sender: TObject; var Value: string);
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

procedure TForm_QrFinding_mangalam.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     // if ItemsCount > 32 then
     // QrFinding.NewPage;
end;

procedure TForm_QrFinding_mangalam.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
      {if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
      Sender.Color := clWebLightCyan
      else
      Sender.Color := clWhite;}
end;

procedure TForm_QrFinding_mangalam.QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if QRDBRichText1.DataSet.RecordCount > 0 then
          BandPrinted := true
     else
          BandPrinted := false;
end;

procedure TForm_QrFinding_mangalam.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
     if Length(Table_Findings.FieldByName('Range').AsString)>200 then
     ShowMessage(inttostr(Length(Table_Findings.FieldByName('Range').AsString)));

end;

procedure TForm_QrFinding_mangalam.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     (*gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;*)
end;

end.
