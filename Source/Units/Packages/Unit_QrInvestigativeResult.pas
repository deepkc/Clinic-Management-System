unit Unit_QrInvestigativeResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm, Unit_SampleCollectionFrame, Unit_Master,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt;

type
     TForm_QrFinding = class(TForm)
          QrFinding: TQuickRep;
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
          QRShape10: TQRShape;
          QRShape6: TQRShape;
          QRShape7: TQRShape;
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
          Image_MeeraT: TQRImage;
          Image_SanjeetPanditT: TQRImage;
          Image_SanjeetPanditD: TQRImage;
          Image_MeeraD: TQRImage;
          Image_DeepakRajD: TQRImage;
          Image_RajendraT: TQRImage;
          Image_RajendraD: TQRImage;
          QRDBText10: TQRDBText;
          QRLabel3: TQRLabel;
          QRShape2: TQRShape;
          QRSubDetail2: TQRSubDetail;
          Richtext_Comment: TQRLabel;
          QRLabel79: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRImage1: TQRImage;
    qrlabel_footer: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    qrlbl1: TQRLabel;
    lbl_Qualification_CT: TQRLabel;
    lbl_DocName_CT: TQRLabel;
    lbl_Specialization_CT: TQRLabel;
    qrshp1: TQRShape;
    img1: TQRImage;
    qrlbl2: TQRLabel;
    lbl_Qualification_CD: TQRLabel;
    lbl_Docname_CD: TQRLabel;
    lbl_Specialization_CD: TQRLabel;
    qrshp2: TQRShape;
    img2: TQRImage;
    lbl_note: TQRLabel;
    lbl_note1: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
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
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_sampleNo: TQRLabel;
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
          procedure QRDBText4Print(Sender: TObject; var Value: string);
          procedure QRDBText2Print(Sender: TObject; var Value: string);
          procedure lbl_DocName_RDPrint(Sender: TObject; var Value: string);
          procedure QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRLabel80Print(sender: TObject; var Value: string);
    procedure QRLabel81Print(sender: TObject; var Value: string);
    procedure QRLabel82Print(sender: TObject; var Value: string);
    procedure QrFindingAfterPrint(Sender: TObject);
     private
          ItemsCount: integer;
          ps_flag: String;
          ps_deptype: String;
          { Private declarations }
          procedure CreateFindingsTable;
          Procedure PrintBarcode;
          Procedure AddSignature;
     public
          { Public declarations }
     end;

var
     Form_QrFinding: TForm_QrFinding;

implementation

{$R *.dfm}

procedure TForm_QrFinding.AddSignature;
begin
     {SignatureRT.Enabled := true;
     SignatureRD.Enabled := true;
     SignatureLT.Enabled := true;
     SignatureLD.Enabled := true;
     if UpperCase(lbl_DocName_RD.Caption) = 'GANESH ACHARYA' then
     begin
          SignatureRT.Picture.Graphic := Image_GaneshT.Picture.Graphic;
          SignatureRD.Picture.Graphic := Image_GaneshB.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption) = 'JYOTI ACHARYA' then
     begin
          SignatureRT.Picture.Graphic := Image_JyotiT.Picture.Graphic;
          SignatureRD.Picture.Graphic := Image_JyotiB.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption) = 'RAJENDRA KARMACHARYA' then
     begin
          SignatureRT.Picture.Graphic := Image_RajendraT.Picture.Graphic;
          SignatureRD.Picture.Graphic := Image_RajendraD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_RD.Caption) = 'ANIL REGMI' then
     begin
          SignatureRT.Picture.Graphic := Image_AnilT.Picture.Graphic;
          SignatureRD.Picture.Graphic := Image_AnilB.Picture.Graphic;
     end;

     if UpperCase(lbl_DocName_LT.Caption) = 'DEEPAK RAJ JOSHI' then
     begin
          SignatureLT.Picture.Graphic := Image_DeepakRajT.Picture.Graphic;
          SignatureLD.Picture.Graphic := Image_DeepakRajD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_LT.Caption) = 'SANJEET PANDIT' then
     begin
          SignatureLT.Picture.Graphic := Image_SanjeetPanditT.Picture.Graphic;
          SignatureLD.Picture.Graphic := Image_SanjeetPanditD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_LT.Caption) = 'MEERA HADA' then
     begin
          SignatureLT.Picture.Graphic := Image_MeeraT.Picture.Graphic;
          SignatureLD.Picture.Graphic := Image_MeeraD.Picture.Graphic;
     end;}
end;

procedure TForm_QrFinding.CreateFindingsTable;
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
          FieldDefs.Add('Finding', ftString, 255);
          FieldDefs.Add('Range', ftString, 250);
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

procedure TForm_QrFinding.FormCreate(Sender: TObject);
Var
     RepComment: String;
begin
     if IsCSFFluid(gi_PatientTestID) then
     begin
          QRLabel44.Enabled:=False;
          QRLabel45.Enabled:=False;
          QRDBText4.Enabled:=False;
          QRDBText5.Enabled:=False;
          gb_SingleDep:=True;
     end;

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

       (*Clearing report footer*)
    // QRShape5.Enabled:=False;
     QRLabel9.Caption:='';
     lbl_DocName_LT.Caption:='';
     lbl_Qualification_LT.Caption:='';
     lbl_Specialization_LT.Caption:='';

    // QRShape8.Enabled:=False;
     QRLabel29.Caption:='';
     lbl_DocName_RT.Caption:='';
     lbl_Qualification_RT.Caption:='';
     lbl_Specialization_RT.Caption:='';


     qrlbl1.Caption:='';
     lbl_DocName_CT.Caption:='';
     lbl_Qualification_CT.Caption:='';
     lbl_Specialization_CT.Caption:='';

    // QRShape1.Enabled:=False;
     QRLabel2.Caption:='';
     lbl_Docname_LD.Caption:='';
     lbl_Qualification_LD.Caption:='';
     lbl_Specialization_LD.Caption:='';

     qrlbl2.Caption:='';
     lbl_Docname_CD.Caption:='';
     lbl_Qualification_CD.Caption:='';
     lbl_Specialization_CD.Caption:='';

     //QRShape11.Enabled:=False;
     QRLabel5.Caption:='';
     lbl_DocName_RD.Caption:='';
     lbl_Qualification_RD.Caption:='';
     lbl_Specialization_RD.Caption:='';
     (*************************)

     gb_SingleDep:=True;

     if gb_SingleDep then
          QRDBText7.Enabled := true
     else
          QRDBText7.Enabled := false;

     if IsBiochemistryUser then
     begin
            QRDBText7.Enabled:=False;
            QRImage1.Enabled:=false;
            qrlabel_footer.Enabled:=false;
            QRLabel4.Enabled:=false;
            QRLabel6.Enabled:=false;
            qrlabel7.Enabled:=false;
            QRShape6.Enabled:=False;
            QRShape7.Enabled:=False;
            QRShape9.Enabled:=False;
            QRShape12.Enabled:=False;
            QRShape2.Enabled:=False;
            QRShape4.Enabled:=False;
            QRShape6.Enabled:=False;
            GroupFooterBand2.Enabled:=False;
            QRShape10.Enabled:=False;

     end;
     if gs_CalledFrom = 'VERIFICATION' then
     begin
          // QRLabel25.Enabled := false;
          // lbl_dateh.Enabled := false;
          // QRLabel33.Enabled := false;
          // QRLabel34.Enabled := false;
          // lbl_verifybyh.Enabled := false;
          // QRLabel43.Enabled := false;
          // QRLabel47.Enabled := false;
          // QRSysData2.Enabled := false;
          // QRLabel48.Enabled := false;
          // lbl_totpageh.Enabled := false;
          // QRLabel22.Enabled := false;
          // lbl_Date.Enabled := false;
          // QRLabel13.Enabled := false;
          // QRLabel14.Enabled := false;
          // lbl_Verifiedby.Enabled := false;
          // QRLabel26.Enabled := false;
          // QRLabel27.Enabled := false;
          // QRSysData1.Enabled := false;
          // QRLabel32.Enabled := false;
          // lbl_totpage.Enabled := false;

          // QRShape5.Enabled := false;
          // QRLabel9.Enabled := false;
          // QRShape8.Enabled := false;
          // QRLabel29.Enabled := false;
          // QRShape1.Enabled := false;
          // QRLabel2.Enabled := false;
          // QRShape1.Enabled := false;
          // QRLabel1.Enabled := false;

          if gi_compileValue = 4 then
          begin
               // QRImage_TopGrandy.Enabled:=True;
               // QRImage_BottomGrandy.Enabled:=True;
          end
          else if gi_compileValue = 2 then
          begin
               // QRImage_Bottom.Enabled := true;
               // QrImage_Top.Enabled := true;
          end;



          // lbl_Qualification_LT.Enabled := false;
          // lbl_Qualification_RT.Enabled := false;
          // lbl_Qualification_LD.Enabled := false;
          // lbl_Qualification_RD.Enabled := false;

          // lbl_DocName_LT.Enabled := false;
          // lbl_DocName_RT.Enabled := false;
          // lbl_Docname_LD.Enabled := false;
          // lbl_DocName_RD.Enabled := false;

          // lbl_Specialization_LT.Enabled := false;
          // lbl_Specialization_RT.Enabled := false;
          // lbl_Specialization_LD.Enabled := false;
          // lbl_Specialization_RD.Enabled := false;
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
     QRLabel12.Caption := UpperCase(Gs_PatientIdCaption);
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     if gi_InPatientID > 0 then
     begin
          QRLabel12.Caption := 'HOSPITAL NO./IP NO.';
          Lbl_HosNo.Caption := IntToStr(gi_PatientID) + '/' + IntToStr(gi_InPatientID);
     end;
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age + ' / ' + copy(Gs_Gender, 1, 1);
     lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
   //  lbl_referaldoc.Caption := GetRefDoc(Gs_BillNo);
     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);
     lbl_SampleNo.Caption := gs_SampleNo;

     if 1 = 2 then
     // if LoadImageFromDB(gi_PatientID) then
     begin
          // QRImage_Main.Picture.LoadFromFile(gs_picpath + '\' + IntToStr(gi_PatientID) + 'IMAGEMAIN.JPG');
          // QRImage_Main.Enabled := true;
          // QRShape1.Enabled := true;
     end;
     if gb_PrintSelected then
     begin
          if LoadInvestigativeResult(Table_Findings, Table_Footnote, gi_PatientID, gi_PatientTestID, true, gs_TestDate, Gs_SelectedDepList,
               Gs_SelectedTestNameList) then
               // UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedTestNameList, 0, gi_Printing);
               // This is Gs_SelectedTestNameList= PatientTestId
               LoadFindingFooter(Table_Footer, gi_PatientTestID, true, gs_TestDate, Gs_SelectedTestNameList);
          LoadPatientFootnoteinQRRichBox(gi_PatientID, gi_PatientTestID, Table_Footnote, gs_TestDate, Gs_SelectedTestNameList, true);
          RepComment := LoadReportComment(gi_PatientID, gs_TestDate, Gs_SelectedPatientTestID);

          if Trim(RepComment) <> '' then
          begin
               Richtext_Comment.Caption := Trim(RepComment);
          end
          else
          begin
               QRSubDetail2.Height := 0;
          end;
     end
     else
     begin
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
          end
          else
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

               lbl_Qualification_CD.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Center');
               lbl_DocName_CD.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Center');
               lbl_Specialization_CD.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Center');
               qrlbl2.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Center');
               if Trim(qrlbl2.Caption) = '' then
                    qrshp2.Enabled := false;


              lbl_Qualification_CT.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Center');
              lbl_Docname_CT.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Center');
              lbl_Specialization_CT.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Center');
              qrlbl1.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Center');
              if Trim(qrlbl1.Caption) = '' then
                    qrshp1.Enabled := false;


              lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Left');
              lbl_DocName_LT.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Left');
              lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Left');
              QRLabel9.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Left');
              if Trim(QRLabel9.Caption) = '' then
                 QRShape5.Enabled := false;

              lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo, ps_deptype, 'Right');
              lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo, ps_deptype, 'Right');
              lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo, ps_deptype, 'Right');
              QRLabel29.Caption := GetReportFooterStatus(gs_SampleNo, ps_deptype, 'Right');
              if Trim(QRLabel29.Caption) = '' then
                QRShape8.Enabled := false;

          end;
          if LoadInvestigativeResult(Table_Findings, Table_Footer, gi_PatientID, gi_PatientTestID, false, gs_TestDate, Gs_SelectedDepList,
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

     Table_Footer.Close;
     Table_Footer.DatabaseName := gs_temppath;
     Table_Footer.Open;
     Table_Footnote.Close;
     Table_Footnote.DatabaseName := gs_temppath;
     Table_Footnote.Open;
     if gb_Signature then
          AddSignature;

     if gb_HideUnit then
     begin
          QRLabel42.Enabled:=False;
          QRDBText3.Enabled:=False;
     end;

     if gb_HideMethod then
     begin
          QRLabel35.Enabled:=False;
          QRDBText10.Enabled:=False;
     end;

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

//     if gb_HideUnitFlagRefrange then
//     begin
//          QRLabel44.Enabled := false;
//          QRLabel45.Enabled := false;
//          QRDBText4.Enabled := false;
//          QRDBText5.Enabled := false;
//          QRDBText2.Width := 400;
//     end;
end;

procedure TForm_QrFinding.FormDestroy(Sender: TObject);
begin
     Table_Findings.Free;
     Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     gb_SingleDep := false;
end;

procedure TForm_QrFinding.lbl_DocName_RDPrint(Sender: TObject; var Value: string);
begin
     // Value:=GetReportFooterQualification(gs_SampleNo, 'Verified by');
end;

procedure TForm_QrFinding.lbl_referaldocPrint(Sender: TObject; var Value: string);
begin
     if (Value = '') or (value='Refereal Doctor') then
     begin
          QRLabel23.Enabled := false;
          QRLabel24.Enabled := false;
          lbl_referaldoc.enabled:=false;
     end;
end;

procedure TForm_QrFinding.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_QrFinding.PrintBarcode;
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

procedure TForm_QrFinding.QRDBText1Print(Sender: TObject; var Value: string);
begin
     ItemsCount := ItemsCount + 1;
//     if (Table_Findings.FieldByName('TestNameid').AsString = '') then
//     begin
//          // QRDBText1.Enabled:=false;
//          // lbl_TestHeading.Caption:=Value;
//          if gb_SingleDep then
//          begin
//               QRDBText1.Font.Color := clWhite;
//          end;
//          QRDBText1.Font.Size := 10;
//          QRDBText1.Font.Style := [fsBold];
//          QRDBText1.DoubleBuffered := true;
//          // QRDBText1.AlignToBand:=True;
//          QRDBText1.Alignment := taCenter;
//          // QRDBText1.Left:=0;
//          QRDBText1.Width := 600;
//     end;
//     else
//     begin
//          // QRDBText1.Enabled:=true;
//          // QRDBText1.AlignToBand:=False;
//          QRDBText1.Left := 74;
//          QRDBText1.Font.Color := clBlack;
//          QRDBText1.Font.Size := 8;
//          QRDBText1.Font.Style := [];
//          QRDBText1.Width := 289;
//          QRDBText1.Alignment := taLeftJustify;
//     end;
     if Table_Findings.FieldByName('IsSubjective').AsString = 'Y' then
          QRDBText2.Width := 400
     else
          QRDBText2.Width := 106;


     if Table_Findings.FieldByName('IsHeading').AsString = 'Y' then
          QRDBText1.Font.Style := [fsBold]
     else
          QRDBText1.Font.Style := [];
     if (Table_Findings.FieldByName('TestNameid').AsString = '') then
     begin
          QRDBText1.Font.Size := 10;
          QRDBText1.Font.Style := [fsBold];
          QRDBText1.DoubleBuffered := true;
          QRDBText1.Alignment := taLeftJustify; // taCenter;
          QRDBText1.Width := 720;
     end
     else
     begin
          QRDBText1.Font.Size := 8;
          //QRDBText1.Font.Style := [];
          QRDBText1.Alignment := taLeftJustify;
          QRDBText1.Width := 289;
     end;


end;

procedure TForm_QrFinding.QRDBText2Print(Sender: TObject; var Value: string);
begin
     (* ********************************* *)

     if (ps_flag = 'H') or (ps_flag = 'L') then
     begin
          QRDBText2.Font.Style := [fsBold];
     end
     else
          QRDBText2.Font.Style := [];

end;

procedure TForm_QrFinding.QRDBText4Print(Sender: TObject; var Value: string);
begin
     ps_flag := Value;

     if (ps_flag = 'H') or (ps_flag = 'L') then
     begin
          QRDBText4.Font.Style := [fsBold];
     end
     else
          QRDBText4.Font.Style := [];
end;

procedure TForm_QrFinding.QRDBText7Print(sender: TObject; var Value: string);
begin
     Value:=UpperCase(Value);
end;

procedure TForm_QrFinding.QrFindingAfterPrint(Sender: TObject);
begin
     QrFinding.NewPage;
end;

procedure TForm_QrFinding.QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
begin
     UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedPatientTestID, 0, gi_Printing);
end;

procedure TForm_QrFinding.QRLabel80Print(sender: TObject; var Value: string);
begin
QRlabel80.Caption:=gs_HospitalName;
end;

procedure TForm_QrFinding.QRLabel81Print(sender: TObject; var Value: string);
begin
QRLabel81.Caption:=gs_HospitalAddress;
end;

procedure TForm_QrFinding.QRLabel82Print(sender: TObject; var Value: string);
begin
QRLabel82.Caption:=gs_HospitalPhoneNumber;
end;

procedure TForm_QrFinding.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     // if ItemsCount > 32 then
     // QrFinding.NewPage;
end;

procedure TForm_QrFinding.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     // if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
     // Sender.Color := clWebLightCyan
     // else
     // Sender.Color := clWhite;
end;

procedure TForm_QrFinding.QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if QRDBRichText1.DataSet.RecordCount > 0 then
          BandPrinted := true
     else
          BandPrinted := false;
end;

procedure TForm_QrFinding.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
end;

procedure TForm_QrFinding.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;
end;

end.
