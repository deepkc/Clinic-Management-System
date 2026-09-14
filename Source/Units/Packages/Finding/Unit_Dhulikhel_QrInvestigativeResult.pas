unit Unit_Dhulikhel_QrInvestigativeResult;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, Serverdate, dm, Unit_SampleCollectionFrame, Unit_Master,
     Dialogs, QuickRpt,QRPrntr, QRCtrls, ExtCtrls, DB, DBTables, jpeg, DBCtrls, StdCtrls, qrBarcode, QRPDFFilt,
  ADODB;

type
     TForm_dhulikhel_QrFinding = class(TForm)
    dhulikhel_QrFinding: TQuickRep;
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
          QRSubDetail1: TQRSubDetail;
          Richtext_Comment: TQRLabel;
          QRLabel79: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    img_dhulikhel: TQRImage;
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
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    lbl_sampleNo: TQRLabel;
    qry1: TADOQuery;
    qrlbl_labno: TQRLabel;
    qrlbl19: TQRLabel;
    qrlbl_labb: TQRLabel;
    qrlblissue: TQRLabel;
    qrshp_lastlne: TQRShape;
    qrshp_lastlne2: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel41: TQRLabel;
    lbl_patienttype: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl18: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel49: TQRLabel;
    qrlbl20: TQRLabel;
    QRExpr1: TQRExpr;
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
          procedure dhulikhel_QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRLabel80Print(sender: TObject; var Value: string);
    procedure QRLabel81Print(sender: TObject; var Value: string);
    procedure QRLabel82Print(sender: TObject; var Value: string);
    procedure dhulikhel_QrFindingAfterPrint(Sender: TObject);
    procedure QRLabel30Print(sender: TObject; var Value: string);

     private
          ItemsCount: integer;
          ps_flag: String;
          ps_deptype: String;
          { Private declarations }

          Procedure PrintBarcode;
          Procedure AddSignature;
     public
          pb_italicResult:Boolean;
          { Public declarations }
          procedure CreateFindingsTable;
     end;

var
     Form_dhulikhel_QrFinding: TForm_dhulikhel_QrFinding;



implementation

{$R *.dfm}

procedure TForm_dhulikhel_QrFinding.AddSignature;
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

procedure TForm_dhulikhel_QrFinding.CreateFindingsTable;
begin
     if FileExists(gs_temppath + '\Findings.db') then
     begin
          with Table_Findings do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'Findings.db';
               EmptyTable;
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
          FieldDefs.Add('Flag', ftString, 3);
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

procedure TForm_dhulikhel_QrFinding.FormCreate(Sender: TObject);
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
    QRShape4.Enabled:=False;             //For Grey Line
     QRLabel9.Caption:='';
     lbl_DocName_LT.Caption:='';
     lbl_Qualification_LT.Caption:='';
     lbl_Specialization_LT.Caption:='';

    // QRShape8.Enabled:=False;
   //  QRLabel29.Caption:='';
     lbl_DocName_RT.Caption:='';
     lbl_Qualification_RT.Caption:='';
     lbl_Specialization_RT.Caption:='';


    // qrlbl1.Caption:='';
     lbl_DocName_CT.Caption:='';
     lbl_Qualification_CT.Caption:='';
     lbl_Specialization_CT.Caption:='';

    // QRShape1.Enabled:=False;
     //QRLabel2.Caption:='';
     lbl_Docname_LD.Caption:='';
     lbl_Qualification_LD.Caption:='';
     lbl_Specialization_LD.Caption:='';

    // qrlbl2.Caption:='';
     lbl_Docname_CD.Caption:='';
     lbl_Qualification_CD.Caption:='';
     lbl_Specialization_CD.Caption:='';

     //QRShape11.Enabled:=False;
   //  QRLabel5.Caption:='';
     lbl_DocName_RD.Caption:='';
     lbl_Qualification_RD.Caption:='';
     lbl_Specialization_RD.Caption:='';
     (*************************)

     gb_SingleDep:=True;

     if gb_SingleDep then
          QRDBText7.Enabled := true
     else
          QRDBText7.Enabled := false;

     if gi_compileValue=1 then  //For Dhulikhel Hospital
     begin
          QRSubDetail2.Frame.DrawTop:=FALSE;
          QRSubDetail2.Frame.DrawLeft:=FALSE;
          QRSubDetail2.Frame.DrawRight:=FALSE;
          QRSubDetail2.Frame.DrawBottom:=FALSE;
          QRLabel80.Enabled:=False;
          QRLabel81.Enabled:=False;
          QRLabel82.Enabled:=False;
         if IsBiochemistryUser then
         begin
                qrlblissue.Enabled:=True;
                QRLabel23.Caption:='REQUISITION DONE BY';
                QRLabel3.Caption:='ANALYTE/S REQUESTED';
                QRLabel3.Font.Style:=[fsBold,fsUnderline];
                QRLabel36.Caption:='OBSERVED VALUE';
                QRLabel36.Font.Style:=[fsBold,fsUnderline];
                QrLABEL45.Caption:='BIOLOGICAL REF.RANGE';
                QrLABEL45.Font.Style:=[fsBold,fsUnderline];
                QRLabel17.Caption:='DATE & TIME OF ANALYSIS';
                QRLabel45.Font.Style:=[fsBold,fsUnderline];
                QRLabel44.Caption:='FLAG';
                QRLabel44.Font.Style:=[fsBold,fsUnderline];
                QRLabel35.caption:='METHOD USED';
                QRLabel35.Font.Style:=[fsBold,fsUnderline];
                QRLabel42.caption:='UNITS';
                QRLabel42.Font.Style:=[fsBold,fsUnderline];
                QRLabel8.Caption:='SAMPLE ID NO.';
                qrlbl_labno.Caption:='LAB REF. NO.';

                QRLabel25.Enabled:=false;
                lbl_dateh.Enabled:=false;
                QRLabel22.Enabled:=false;
                lbl_Date.Enabled:=false;

                QRLabel23.Enabled:=True;
                QRLabel24.Enabled:=True;

                QRDBText7.Enabled:=False;
                img_dhulikhel.Enabled:=false;
                qrlabel_footer.Enabled:=false;
                QRLabel4.Enabled:=false;
                QRLabel6.Enabled:=false;
                qrlabel7.Enabled:=false;
                QRShape6.Enabled:=False;
                QRShape7.Enabled:=False;
                QRShape9.Enabled:=False;
                QRShape12.Enabled:=False;
                QRShape2.Enabled:=False;
                QRShape4.Enabled:=False;             //For Grey Line
                QRShape6.Enabled:=False;
                GroupFooterBand2.Enabled:=False;
                QRShape10.Enabled:=False;
                lbl_note.Enabled:=True;
                lbl_note1.Enabled:=True;
                qrlbl3.Enabled:=True;
                qrlbl4.Enabled:=True;
                qrlbl5.Enabled:=True;
                qrlbl6.Enabled:=True;
                qrlbl7.Enabled:=True;
                qrlbl8.Enabled:=True;
                qrlbl18.Enabled:=True;
                QRSubDetail1.Frame.DrawTop:=FALSE;
                QRSubDetail1.Frame.DrawLeft:=FALSE;
                QRSubDetail1.Frame.DrawRight:=FALSE;
                QRSubDetail1.Frame.DrawBottom:=FALSE;
                qrlbl10.Enabled:=True;
                qrlbl11.Enabled:=True;
                qrlbl12.Enabled:=True;
                qrlbl13.Enabled:=True;
                qrlbl14.Enabled:=True;
                qrlbl15.Enabled:=True;
                qrlbl16.Enabled:=True;
                qrlbl17.Enabled:=True;
                qrlbl9.Enabled:=True;
                qrlbl20.Enabled:=True;
                Qrlabel9.font.Style:=[fsBold];
                qrlbl1.Font.Style:=[fsBold];
                QRLabel29.Font.Style:=[fsBold];
                lbl_DocName_LT.Font.Style:=[fsBold];
                lbl_DocName_CT.Font.Style:=[fsBold];
                lbl_DocName_RT.Font.Style:=[fsBold];
                QRLabel49.Enabled:=True;

                QRLabel2.Font.Style:=[fsBold];
                qrlbl2.Font.Style:=[fsbold];
                QRLabel5.Font.Style:=[fsbold];
                lbl_Docname_LD.Font.Style:=[fsBold];
                lbl_Docname_CD.Font.Style:=[fsBold];
                lbl_DocName_RD.Font.Style:=[fsBold];
                qrshp_lastlne.Enabled:=True;

                //qrlbl1.Left:=290;
                //qrlbl2.Left:=290;

                //lbl_DocName_CT.Left:=290;
                //lbl_Qualification_CT.Left:=290;
                //lbl_Specialization_CT.Left:=290;

                //lbl_Docname_CD.Left:=290;
                //lbl_Qualification_CD.Left:=290;
                //lbl_Specialization_CD.Left:=290;

                QRLabel1.Font.Style:=[];
                QRLabel8.Font.Style:=[];
                QRLabel23.Font.Style:=[];
                QRLabel16.Font.Style:=[];
                QRLabel17.Font.Style:=[];
                qrlbl_labno.Font.Style:=[];
                QRLabel28.Font.Style:=[];
                QRLABEL31.Font.Style:=[];
                //qrshp1.Left:=284;
                //qrshp1.Width:=149;

                QRLabel36.LEFT:=190;
         end
         else if (IsMicroBiologyUser=True) or (IsSerologyUser=True) or (IsPARASITOLOGYUser=True)  then
         begin
             QRDBText7.Enabled:=false;           //Test Head
             QRLabel25.Enabled:=false;
             lbl_dateh.Enabled:=false;
             QRLabel22.Enabled:=false;
             lbl_Date.Enabled:=false;
             img_dhulikhel.Enabled:=false;     //Letter Head.
             qrlabel_footer.Enabled:=false;
             QRLabel4.Enabled:=false;
             QRLabel6.Enabled:=false;
             qrlabel7.Enabled:=false;

             //.........Line Removing............//
             QRSubDetail1.Frame.DrawTop:=FALSE;
             QRSubDetail1.Frame.DrawLeft:=FALSE;
             QRSubDetail1.Frame.DrawRight:=FALSE;
             QRSubDetail1.Frame.DrawBottom:=FALSE;
             QRShape6.Enabled:=False;
             QRShape7.Enabled:=False;
             QRShape9.Enabled:=False;
             QRShape12.Enabled:=False;
             QRShape10.Enabled:=False;
             QRShape2.Enabled:=False;
             QRShape4.Enabled:=False; //For Grey Line
             //**********************************//



             //*******************Column Header*************//
             QRLabel3.Font.Style:=[fsBold,fsUnderline];
             QRLabel36.Font.Style:=[fsBold,fsUnderline];
             QrLABEL45.Font.Style:=[fsBold,fsUnderline];
             QRLabel45.Font.Style:=[fsBold,fsUnderline];
             QRLabel44.Font.Style:=[fsBold,fsUnderline];
             QRLabel35.Font.Style:=[fsBold,fsUnderline];
             QRLabel42.Font.Style:=[fsBold,fsUnderline];
             //********************************************//

         end
         else if (IshamematologyUser=true)or(IsBloodBankUser=true) then
         begin
             QRShape6.Enabled:=False;
             QRShape7.Enabled:=False;
             QRShape9.Enabled:=False;
             QRShape12.Enabled:=False;
             QRShape2.Enabled:=False;
             QRShape4.Enabled:=False; //For Grey Line
             QRShape6.Enabled:=False;
             GroupFooterBand2.Enabled:=False;
             QRShape10.Enabled:=False;
             QRSubDetail1.Frame.DrawTop:=FALSE;
             QRSubDetail1.Frame.DrawLeft:=FALSE;
             QRSubDetail1.Frame.DrawRight:=FALSE;
             QRSubDetail1.Frame.DrawBottom:=FALSE;
             QRLabel3.Font.Style:=[fsUnderline,fsBold];
             QRLabel36.Font.Style:=[fsUnderline,fsBold];
             QRLabel42.Font.Style:=[fsUnderline,fsBold];
             QRLabel45.Font.Style:=[fsUnderline,fsBold];
             QRLabel35.Font.Style:=[fsUnderline,fsBold];
             QRDBText7.Enabled:=False;
         end;
     end
     else if gi_compileValue in [2,5] then
     begin
       img_dhulikhel.Enabled:=false;
       QRLabel80.Enabled:=True;
       QRLabel81.Enabled:=True;
       QRLabel82.Enabled:=True;
       QRLabel7.Enabled:=False;
       QRLabel6.Enabled:=False;
       qrlabel_footer.Enabled:=False;
       QRLabel4.Enabled:=False;
       QRLabel25.Top:=156;
       lbl_dateh.Top:=156;
       QRLabel22.Top:=152;
       lbl_Date.Top:=152;
     end;


     with Table_Findings do
     begin
       close;
       DatabaseName:=gs_temppath;
       TableName:='Findings.db';
       EmptyTable;
       Open;
     end;
     //CreateFindingsTable;


     with Table_Footer do
     begin
       close;
       DatabaseName:=gs_temppath;
       TableName:='Findingfooter.db';
       EmptyTable;
       Open;
     end;

     with Table_Footnote do
     begin
       close;
       DatabaseName:=gs_temppath;
       TableName:='Footnote.db';
       EmptyTable;
       Open;
     end;


     LoadPatientData(gi_PatientID);

     if IsBiochemistryUser then
        QRlabel12.Caption:='HOSPITAL REG. NO'
     else
        QRLabel12.Caption := UpperCase(Gs_PatientIdCaption);

     lbl_Name.Caption := Gs_PatientName;
     Lbl_HosNo.Caption := IntToStr(gi_PatientID);

//     if gi_InPatientID > 0 then    //For Inpatient number in report
//     begin
//          QRLabel12.Caption := 'HOSPITAL NO./IP NO.';
//          Lbl_HosNo.Caption := IntToStr(gi_PatientID) + '/' + IntToStr(gi_InPatientID);
//     end;

     lbl_Date.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_dateh.Caption := TodaysDate + ' AD - ' + TodaysDateVS + ' BS' + TodaysTime;
     lbl_agegender.Caption := Gs_Age + ' / ' + Gs_Gender;
     lbl_Verifiedby.Caption := gs_UserName;
     lbl_verifybyh.Caption := gs_UserName;
     lbl_referaldoc.Caption := GetRefDocfrompatienttest(gs_billno);
     lbl_RegisteredDate.Caption := GetSampleRegesteredDate(gs_SampleNo);
     lbl_ReportedDate.Caption := GetFindingPostDate(gs_SampleNo);
     lbl_SampleNo.Caption := gs_SampleNo;
     qrlbl_labb.Caption:=GetLabnumberfromPatienttest(gs_SampleNo);



     if gb_PrintSelected then
     begin
          if LoadInvestigativeResult(Table_Findings,Table_Findings, Table_Footnote, gi_PatientID, gi_PatientTestID, true, gs_TestDate, Gs_SelectedDepList,
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
               qrlbl1.Enabled:=false;
               qrshp1.Enabled:=false;

               QRLabel29.Enabled:=True;
               lbl_DocName_RT.Enabled:=true;
               lbl_Qualification_RT.Enabled:=true;
               lbl_Specialization_RT.Enabled:=true;
               QRLabel29.Caption := 'Performed by';
               lbl_DocName_RT.Caption :=' Medical Lab Technologist';
               lbl_Qualification_RT.Caption := '[ Final Report Will be Issued ';
               lbl_Specialization_RT.Caption := 'After Validated by Lab In-Charge. ]';
               qrlbl2.Enabled:=false;
               qrshp2.Enabled:=false;

               QRShape1.Enabled:=False;
               QRShape5.Enabled:=false;
               QRLabel9.Enabled:=false;
               QRLabel2.Enabled:=false;
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
                     lbl_DocName_CT.Caption:=GetFindingPostByNameNew(Gs_SelectedPatientTestID);
                     lbl_DocName_CD.Caption:=GetFindingPostByNameNew(Gs_SelectedPatientTestID);

                     if Trim(lbl_Docname_LD.caption)='' then
                     begin
                          QRShape1.Enabled:=False;
                          QRLabel2.Enabled:=False;
                     end;

                     lbl_DocName_RD.Caption := gs_UserName;
                     lbl_Qualification_LT.Caption := GetReportFooterQualificationNew(Gs_SelectedPatientTestID, 'Left');
                     lbl_DocName_LT.Caption := GetReportFooterNameNew(Gs_SelectedPatientTestID,'Left');
                     lbl_Specialization_LT.Caption:=GetReportFooterSpecializationNew(Gs_SelectedPatientTestID, 'Left');
                     //QRLabel9.Caption:=GetReportFooterStatusNew(Gs_SelectedPatientTestID, 'Left');
                     QRLabel9.Caption:='Verified by';
                     lbl_DocName_CT.Caption:=GetFindingPostByName(Gs_SelectedPatientTestID);
                     if Trim(lbl_DocName_LT.caption)='' then
                     begin
                          QRShape5.Enabled:=False;
                          QRLabel9.Enabled:=False;
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
                   qrlbl2.Caption := GetManualFooternameCenterStatus(gs_userdepid);
                   if Trim(qrlbl2.Caption) = '' then
                        qrshp2.Enabled := false;


                  lbl_Qualification_CT.Caption :=GetManualFooternameCenterQualification(gs_userdepid);
                  lbl_Docname_CT.Caption :=GetManualFooternameCenter(gs_userdepid);
                  lbl_Specialization_CT.Caption :=GetManualFooternameCenterSpecialization(gs_userdepid);
                  qrlbl1.Caption := GetManualFooternameCenterStatus(gs_userdepid);
                  if Trim(qrlbl1.Caption) = '' then
                        qrshp1.Enabled := false;


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

     lbl_patienttype.Caption:=GetOPDWard(Gs_BillNo);

     Table_Footer.Close;
     Table_Footer.DatabaseName := gs_temppath;
     Table_Footer.Open;
     Table_Footnote.Close;
     Table_Footnote.DatabaseName := gs_temppath;
     Table_Footnote.Open;


     if gb_Signature then
          AddSignature;

//     if gb_hideufrm then
//     begin
//        gb_HideUnit:=True;
//        gb_HideMethod:=True;
//        gb_HideFlag:=True;
//        gb_HideRefrange:=True;
//     end
//     else
//     begin
//        gb_HideUnit := False;
//        gb_HideMethod:=False;
//        gb_HideFlag:=False;
//        gb_HideRefrange:=False;
//     end;


     //.........Hide Unit ,Flag , RefRange ,Method............//
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

     if gb_ReportLineRemove then
     begin
          //.........Line Removing............//
          QRSubDetail1.Frame.DrawTop:=FALSE;
          QRSubDetail1.Frame.DrawLeft:=FALSE;
          QRSubDetail1.Frame.DrawRight:=FALSE;
          QRSubDetail1.Frame.DrawBottom:=FALSE;
          QRShape6.Enabled:=False;
          QRShape7.Enabled:=False;
          QRShape9.Enabled:=False;
          QRShape12.Enabled:=False;
          QRShape10.Enabled:=False;
          QRShape2.Enabled:=False;
          QRShape4.Enabled:=False; //For Grey Line
          //**********************************//
     end;
     //********************************************************//
end;

procedure TForm_dhulikhel_QrFinding.FormDestroy(Sender: TObject);
begin
     //Table_Findings.Free;
     //Table_Footer.Free;
     Gs_SelectedTestNameList := '';
     gb_SingleDep := false;
end;

procedure TForm_dhulikhel_QrFinding.lbl_DocName_RDPrint(Sender: TObject; var Value: string);
begin
     // Value:=GetReportFooterQualification(gs_SampleNo, 'Verified by');
end;

procedure TForm_dhulikhel_QrFinding.lbl_referaldocPrint(Sender: TObject; var Value: string);
begin
//     if (Value = '') or (value='Refereal Doctor') then
//     begin
//          QRLabel23.Enabled := false;
//          QRLabel24.Enabled := false;
//          lbl_referaldoc.enabled:=false;
//     end;
end;

procedure TForm_dhulikhel_QrFinding.PageHeaderBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     ItemsCount := 0;
end;

procedure TForm_dhulikhel_QrFinding.PrintBarcode;
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

procedure TForm_dhulikhel_QrFinding.QRDBText1Print(Sender: TObject; var Value: string);
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

     //result to be italic
     if Trim(value)='Result' then
        pb_italicResult:=True
     else
        pb_italicResult:=False;
end;

procedure TForm_dhulikhel_QrFinding.QRDBText2Print(Sender: TObject; var Value: string);
begin
     (* ********************************* *)

     if pb_italicResult then
     begin
        QRDBText2.Font.Style := [fsItalic];
        QRDBText2.Font.Size:=10;
     end
     else
     begin
        QRDBText2.Font.Style := [];
        QRDBText2.Font.Size:=8;
     end;

     if (ps_flag = 'H') or (ps_flag = 'L') then
     begin
          QRDBText2.Font.Style := [fsBold];
     end
     else if (pb_italicResult=False) or (ps_flag <> 'H') or (ps_flag <> 'L') then
          QRDBText2.Font.Style := [];

end;

procedure TForm_dhulikhel_QrFinding.QRDBText4Print(Sender: TObject; var Value: string);
begin
     ps_flag := Value;

     if (ps_flag = 'H') or (ps_flag = 'L') then
     begin
          QRDBText4.Font.Style := [fsBold];
     end
     else
     begin
          QRDBText4.Font.Style := [];
     end;
end;

procedure TForm_dhulikhel_QrFinding.QRDBText7Print(sender: TObject; var Value: string);
begin
     Value:=UpperCase(Value);
end;

procedure TForm_dhulikhel_QrFinding.dhulikhel_QrFindingAfterPrint(Sender: TObject);
begin
     //QrFinding.NewPage;
end;

procedure TForm_dhulikhel_QrFinding.dhulikhel_QrFindingApplyPrinterSettings(Sender: TObject; var Cancel: Boolean; DevMode: Pointer);
begin
     UpdateTestProgressStatus(Gs_BillNo, Gs_SelectedPatientTestID, 0, gi_Printing);
end;

procedure TForm_dhulikhel_QrFinding.QRLabel30Print(sender: TObject;
  var Value: string);
begin
    value:=TodaysDate+' '+TodaysTime;
end;

procedure TForm_dhulikhel_QrFinding.QRLabel80Print(sender: TObject; var Value: string);
begin
QRlabel80.Caption:=gs_HospitalName;
end;

procedure TForm_dhulikhel_QrFinding.QRLabel81Print(sender: TObject; var Value: string);
begin
QRLabel81.Caption:=gs_HospitalAddress;
end;

procedure TForm_dhulikhel_QrFinding.QRLabel82Print(sender: TObject; var Value: string);
begin
QRLabel82.Caption:=gs_HospitalPhoneNumber;
end;

procedure TForm_dhulikhel_QrFinding.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     // if ItemsCount > 32 then
     // QrFinding.NewPage;
end;

procedure TForm_dhulikhel_QrFinding.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     // if (Table_Findings.FieldByName('Flag').AsString = 'H') or (Table_Findings.FieldByName('Flag').AsString = 'L') then
     // Sender.Color := clWebLightCyan
     // else
     // Sender.Color := clWhite;
end;

procedure TForm_dhulikhel_QrFinding.QRSubDetail3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if QRDBRichText1.DataSet.RecordCount > 0 then
          BandPrinted := true
     else
          BandPrinted := false;
end;

procedure TForm_dhulikhel_QrFinding.SubDetail_SampleSourceBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     if gb_HideSource then
          PrintBand := false;
end;

procedure TForm_dhulikhel_QrFinding.Table_FooterAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Footer.FieldByName('SampleNo').AsString;
     PrintBarcode;
end;

end.
