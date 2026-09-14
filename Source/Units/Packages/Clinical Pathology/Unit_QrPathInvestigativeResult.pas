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
    DetailBand1: TQRBand;
    QRLabel10: TQRLabel;
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
    QRLabel3: TQRLabel;
    lblrefno2: TQRLabel;
    QRRichText1: TQRRichText;
    QRShape2: TQRShape;
    Table_Findings: TTable;
    Table_Footnote: TTable;
    Table_Footer: TTable;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape12: TQRShape;
    QRShape9: TQRShape;
    qrlbl3: TQRLabel;
    lblRefNo1: TQRLabel;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    lbl_DocName_CT: TQRLabel;
    lbl_Qualification_CT: TQRLabel;
    lbl_Specialization_CT: TQRLabel;
    QRShape4: TQRShape;
    QRLabel30: TQRLabel;
    lbl_Docname_CD: TQRLabel;
    lbl_Qualification_CD: TQRLabel;
    lbl_Specialization_CD: TQRLabel;
    QRLabel4: TQRLabel;
    QRAsBarcode_Sampleno: TQRAsBarcode;
          procedure FormCreate(Sender: TObject);
          procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
          procedure FormDestroy(Sender: TObject);
          procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
          procedure Table_FooterAfterScroll(DataSet: TDataSet);
          procedure SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure lbl_DocName_RDPrint(sender: TObject; var Value: string);
    procedure lbl_Docname_LDPrint(sender: TObject; var Value: string);
    procedure lbl_DocName_RTPrint(sender: TObject; var Value: string);
    procedure lbl_DocName_LTPrint(sender: TObject; var Value: string);
    procedure PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRLabel4Print(sender: TObject; var Value: string);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
    procedure qrlbl3Print(sender: TObject; var Value: string);
    procedure lblrefno2Print(sender: TObject; var Value: string);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure lbl_DocName_CTPrint(sender: TObject; var Value: string);
    procedure lbl_Docname_CDPrint(sender: TObject; var Value: string);
    procedure QRSysData1Print(sender: TObject; var Value: string);
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
begin
     SignatureRT.Enabled:=true;
     SignatureRD.Enabled:=true;
     SignatureLT.Enabled:=true;
     SignatureLD.Enabled:=true;
     if UpperCase(lbl_DocName_RD.Caption)='GANESH ACHARYA' then
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
     end;

     if UpperCase(lbl_DocName_LT.Caption)='DEEPAK RAJ JOSHI' then
     begin
          SignatureLT.Picture.Graphic:=Image_DeepakRajT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_DeepakRajD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_LT.Caption)='SANJEET PANDIT' then
     begin
          SignatureLT.Picture.Graphic:=Image_SanjeetPanditT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_SanjeetPanditD.Picture.Graphic;
     end
     else if UpperCase(lbl_DocName_LT.Caption)='MEERA HADA' then
     begin
          SignatureLT.Picture.Graphic:=Image_MeeraT.Picture.Graphic;
          SignatureLD.Picture.Graphic:=Image_MeeraD.Picture.Graphic;
     end;
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
     if (DetailBand1.Expanded > 0) then
     begin
        QRShape2.Size.Height := DetailBand1.size.Height + DetailBand1.Expanded-50;
     end;
end;

procedure TForm_QrPathFinding.FormCreate(Sender: TObject);
Var
     Refno,refno1,refno2,referenceno:String;
begin
     if gb_isHalfPage then
     begin
          PageFooterBand1.Enabled := false;
          SummaryBand1.Enabled := true;
     end;

     if gb_ReportLineRemove then
     begin
       QRShape2.Enabled:=false;
     end;


     (*Clearing report footer*)
     QRShape5.Enabled:=False;
     QRLabel9.Caption:='';
     lbl_DocName_LT.Caption:='';
     lbl_Qualification_LT.Caption:='';
     lbl_Specialization_LT.Caption:='';

     QRShape8.Enabled:=False;
     QRLabel29.Caption:='';
     lbl_DocName_RT.Caption:='';
     lbl_Qualification_RT.Caption:='';
     lbl_Specialization_RT.Caption:='';

     QRShape1.Enabled:=False;
     QRLabel2.Caption:='';
     lbl_Docname_LD.Caption:='';
     lbl_Qualification_LD.Caption:='';
     lbl_Specialization_LD.Caption:='';

     QRShape11.Enabled:=False;
     QRShape4.Enabled:=False;
     QRLabel5.Caption:='';
     lbl_DocName_RD.Caption:='';
     lbl_Qualification_RD.Caption:='';
     lbl_Specialization_RD.Caption:='';

     QRShape4.Enabled:=False;
     lbl_Docname_CD.Caption:='';
     lbl_Qualification_CD.Caption:='';
     lbl_Specialization_CD.Caption:='';
     QRLabel30.Caption:='';
     (*************************)


     ps_deptype:=GetUserDepType(gi_UserID);

     if ps_deptype='RADIOLOGY' then
     begin
          QRLabel9.Enabled:=true;
          QRLabel29.Enabled:=TRUE;
          QRLabel2.Enabled:=True;
          QRLabel5.Enabled:=TRUE;
          PageFooterBand1.Enabled:=False;
          SummaryBand1.Enabled:=True;
     end
     else
     begin
          {QRLabel5.Enabled:=False;
          QRLabel2.Enabled:=False;
          lbl_DocName_RD.Left:=32;
          lbl_Qualification_RD.Left:=32;
          lbl_Specialization_RD.Left:=32;
          QRShape11.Left:=32;

          lbl_Docname_LD.Left:=512;
          lbl_Qualification_LD.Left:=512;
          lbl_Specialization_LD.Left:=512;
          QRShape1.Left:=512;  }

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

     if gi_compileValue in[3,10,9] then
     begin
       //QRImage1.Enabled:=false;
       //QRLabel11.Enabled:=False;
       //QRLabel28.Enabled:=false;
       QRShape2.Enabled:=True;
       //QRLabel8.Enabled:=False;
       //QRLabel7.Enabled:=False;
     end;

     CreateFindingsTable;
     LoadPatientData(gi_PatientID);
    // QRLabel12.Caption := Gs_PatientIdCaption;
     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);
     QRAsBarcode_Sampleno.Text:=  (gs_SampleNo);
     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age + ' / ' + copy(Gs_Gender, 1, 1);
     lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
     if gi_compileValue=3 then
        lbl_referaldoc.Caption := GetRefDoc(Gs_BillNo)
     else
        lbl_referaldoc.Caption:=GetRefDocNameFromPatientTest(gi_PatientTestID);

     if Trim(lbl_referaldoc.Caption) = '' then
     begin
          QRLabel23.Enabled := False;
          QRLabel24.Enabled := false;
     end;

     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);

     refno:=GetRefNoFromPatientTest(gi_PatientTestID);
      referenceno:=GetReferenceNoFromPatientTest(gi_PatientTestID);

      lblRefNo1.Caption:=referenceno;

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
               lbl_Qualification_RD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
               lbl_DocName_RD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
               lbl_Specialization_RD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
               QRLabel5.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
               QRShape11.Enabled:=True;
               if Trim(lbl_DocName_RD.Caption)='' then
                    QRShape11.Enabled:=False;

               lbl_Qualification_CD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
               lbl_DocName_CD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
               lbl_Specialization_CD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
               QRLabel30.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
               QRShape4.Enabled:=True;
               if Trim(lbl_DocName_CD.Caption)='' then
                    QRShape4.Enabled:=False;


              lbl_Qualification_LD.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
              lbl_Docname_LD.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
              lbl_Specialization_LD.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
              QRLabel2.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
              QRShape1.Enabled:=True;
              if Trim(lbl_Docname_LD.Caption)='' then
                QRShape1.Enabled:=False;


              lbl_Qualification_RT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Right');
              lbl_DocName_RT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Right');
              lbl_Specialization_RT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Right');
              QRLabel29.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Right');
              QRShape8.Enabled:=True;
              if Trim(lbl_DocName_RT.Caption)='' then
               QRShape8.Enabled:=False;

              lbl_Qualification_CT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Center');
              lbl_DocName_CT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Center');
              lbl_Specialization_CT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Center');
              QRLabel12.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Center');
              QRShape3.Enabled:=True;
              if Trim(lbl_DocName_CT.Caption)='' then
               QRShape3.Enabled:=False;


               lbl_Qualification_LT.Caption := GetReportFooterQualification(gs_SampleNo,ps_deptype, 'Left');
              lbl_DocName_LT.Caption := GetReportFooterName(gs_SampleNo,ps_deptype, 'Left');
              lbl_Specialization_LT.Caption := GetReportFooterSpecialization(gs_SampleNo,ps_deptype, 'Left');
              QRLabel9.Caption:=GetReportFooterStatus(gs_SampleNo,ps_deptype, 'Left');
              QRShape5.Enabled:=True;
              if Trim(lbl_DocName_LT.Caption)='' then
               QRShape5.Enabled:=False;

          end;

          LoadPatientClinicalData;


     if gb_ReportLineRemove then
     begin
       QRShape2.Enabled:=false;
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

procedure TForm_QrPathFinding.FormDestroy(Sender: TObject);
begin
     Table_Findings.Free;
     Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     gb_SingleDep:=false;
end;

procedure TForm_QrPathFinding.lblrefno2Print(sender: TObject;
  var Value: string);
begin
    if Value='' then
        lblRefNo1.Enabled:=false;
end;

procedure TForm_QrPathFinding.lbl_Docname_CDPrint(sender: TObject;
  var Value: string);
begin
     if Trim(Value)='' then
     QRShape4.Enabled:=False;
end;

procedure TForm_QrPathFinding.lbl_DocName_CTPrint(sender: TObject;
  var Value: string);
begin
     if Trim(Value)='' then
     QRShape3.Enabled:=False;
end;

procedure TForm_QrPathFinding.lbl_Docname_LDPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
     QRShape1.Enabled:=False;
end;

procedure TForm_QrPathFinding.lbl_DocName_LTPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
     QRShape5.Enabled:=False;
end;

procedure TForm_QrPathFinding.lbl_DocName_RDPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
     QRShape11.Enabled:=False;
end;

procedure TForm_QrPathFinding.lbl_DocName_RTPrint(sender: TObject; var Value: string);
begin
     if Trim(Value)='' then
     QRShape8.Enabled:=False;
end;

procedure TForm_QrPathFinding.LoadPatientClinicalData;
Var
     Qry:TOraQuery;
     MyRichEdit:TRichEdit;
begin
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select * from PatientClinicalTestDetail');
          SQL.Add('Where PatientTestID=' + IntToStr(gi_PatientTestID));
          SQL.Add('And Delete_Status=''N''');
          SQL.Add('Order by DisplayOrder');
          Open;
     end;
     MyRichEdit:=TRichEdit.Create(Nil);
     MyRichEdit.Parent:=Self;
     MyRichEdit.Visible:=False;
//     MyRichEdit.Color:=clBlue;
     LoadDataInRichEdit(Qry, MyRichEdit, 'Finding_RIch', Qry.FieldByName('Reporttitle_Rich').AsString);
     QRRichText1.ParentRichEdit:=MyRichEdit;
end;

procedure TForm_QrPathFinding.PageFooterBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     //QRShape2.Height:=QRRichText1.Height;
end;

procedure TForm_QrPathFinding.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_QrPathFinding.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if gi_compileValue= 10 then
  begin
        lblRefNo1.Caption:='Running No.';
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
    value:=UpperCase(qrlbl3.Caption);
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

procedure TForm_QrPathFinding.QRSysData1Print(sender: TObject;
  var Value: string);
begin
     if QRSysData1.Caption= lbl_totpageh.Caption then
     begin
          //PageFooterBand1.Enabled:=False;
          //QRSysData1.Height:=0;
          PageFooterBand1.Height:=200;
          SummaryBand1.Enabled:=False;
          SummaryBand1.Height:=0;
          //QRSysData1.Top:=80;
          //QRLabel26.Top:=80;
          //QRLabel27.Top:=80;
          //QRLabel32.Top:=80;
          //lbl_totpage.Top:=80;
          //QRLabel41.Top:=80;
          //QRLabel46.Top:=80;

          QRLabel26.Top:=30;
          QRLabel27.Top:=30;
          QRSysData1.Top:=30;
          QRLabel32.Top:=30;
          lbl_totpage.Top:=30;
          QRLabel22.Top:=30;
          lbl_Date.Top:=30;
          QRLabel5.Enabled:=True;
          lbl_DocName_RD.Enabled:=True;
          lbl_Specialization_RD.Enabled:=True;
          lbl_Qualification_RD.Enabled:=True;
          QRShape11.Enabled:= True;

          QRLabel30.Enabled:= True;
          lbl_DocName_CD.Enabled:= True;
          lbl_Specialization_CD.Enabled:= True;
          lbl_Qualification_CD.Enabled:= True;
          //QRShape4.Enabled:= True;

          QRLabel2.Enabled:= True;
          lbl_Docname_LD.Enabled:=True;
          lbl_Specialization_LD.Enabled:= True;
          lbl_Qualification_LD.Enabled:= True;
          QRShape1.Enabled:= True;

          SignatureLD.Enabled:= True;
          //SignatureCD.Enabled:= True;
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
          //QRSysData1.Top:=106;
          QRLabel26.Top:=30;
          QRLabel27.Top:=30;
          QRSysData1.Top:=30;
          QRLabel32.Top:=30;
          lbl_totpage.Top:=30;
          QRLabel22.Top:=30;
          lbl_Date.Top:=30;
          //QRLabel32.Top:=106;
          //lbl_totpage.Top:=106;
          //QRLBL_ReportBy.Top:=106;
          //QRLBL_ReportByCap.Top:=106;
          //QRLabel26.Top:=121;
          QRLabel5.Enabled:=False;
          lbl_DocName_RD.Enabled:=False;
          lbl_Specialization_RD.Enabled:=False;
          lbl_Qualification_RD.Enabled:=false;
          QRShape11.Enabled:= False;

          QRLabel30.Enabled:= False;
          lbl_DocName_CD.Enabled:= False;
          lbl_Specialization_CD.Enabled:= False;
          lbl_Qualification_CD.Enabled:= false;
          QRShape4.Enabled:= False;

          QRLabel2.Enabled:= False;
          lbl_Docname_LD.Enabled:=False;
          lbl_Specialization_LD.Enabled:= False;
          lbl_Qualification_LD.Enabled:= False;
          QRShape1.Enabled:= False;

          SignatureLD.Enabled:= False;
          //SignatureCD.Enabled:= False;
          SignatureRD.Enabled:= False;
     end;
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
