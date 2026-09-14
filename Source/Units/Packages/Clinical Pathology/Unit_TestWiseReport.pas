unit Unit_TestWiseReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,serverdate,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, ExtCtrls, TeCanvas, ToolWin,fxn, DB, Dm,
  DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Buttons,QuickRpt,QRCtrls,unit_Master;

type
  TForm_TestWiseReport = class(TForm)

    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton6: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    ToolButton12: TToolButton;
    ToolButton9: TToolButton;
    Tbtn_Font: TToolButton;
    ToolButton16: TToolButton;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    ButtonColor1: TButtonColor;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBLC_TestName: TDBLookupComboBox;
    DBLC_ReportType: TDBLookupComboBox;
    RichEdit_Whole: TRichEdit;
    DS_TestName: TDataSource;
    Query_TestName: TOraQuery;
    Query_Report: TOraQuery;
    Ds_ReportType: TDataSource;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Query_Listing: TOraQuery;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    BitBtn7: TBitBtn;
    BitBtn5: TBitBtn;
    Query_Blank: TOraQuery;
    procedure ButtonColor1Click(Sender: TObject);
    procedure RichEdit_WholeSelectionChange(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Tbtn_FontClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLC_TestNameClick(Sender: TObject);
    procedure DBLC_ReportTypeClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure LoadDatainGrid;
//    PRocedure  PrintRichEdit(RichEdit: tRichEdit;
//                        Canvas      : tCanvas;
//                        r           : TRect;
//                        XInch,YInch : Extended;
//                        xalign      : TAlignment;
//                        yalign      : TAlignment);
  end;

var
  Form_TestWiseReport: TForm_TestWiseReport;

implementation

uses Unit_QrPathologyReport;

{$R *.dfm}

procedure TForm_TestWiseReport.BitBtn1Click(Sender: TObject);
var
Report:string;
begin
     if DBLC_TestName.KeyValue=null then
     begin
          MessageDlg('Please select the testname',mtInformation,[mbOK],0);
          exit;
     end;
     if DBLC_ReportType.KeyValue=null then
     begin
          MessageDlg('Please select the ReportType',mtInformation,[mbOK],0);
          exit;
     end;
     RichEdit_Whole.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     Report:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     with Query_Blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('select t.*,d.* from ClinicalTestReport t,ClinicalTestReportdetail d');
          sql.Add ('where T.CLINICALTESTREPORTID=D.CLINICALTESTREPORTID ');
          sql.Add('and t.TestnameId='+Inttostr(DBLC_TestName.KeyValue)+' and t.ReportFormatId='+Inttostr(DBLC_ReportType.KeyValue));
          sql.Add('and t.PatientId='+IntTOstr(gi_patientId));
          Open;
     end;
     try
     DM_Hospital.DB.StartTransaction;
     if Query_Blank.FieldByName('ClinicalTestReportID').AsInteger<1 then
     begin
          SaveClinicalTestReport(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,gi_PatientID,gi_InPatientID,gi_VisitId,gi_UserID,
          TodaysDate,TodaysTime,gs_MacID);
          with Query_Blank do
          begin
               close;
               Session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('select max(ClinicalTestReportID) as Nmax From ClinicalTestReport');
               Open;
          end;

          SaveClinicalTestReportDetail(Query_Blank.FieldByName('Nmax').AsInteger,StringReplace(RichEdit_Whole.Text,'''','''''',[rfReplaceAll]),Report)
     end
     else
     begin
          UpdateClinicalTestReport(Query_Blank.FieldByName('ClinicalTestReportID').AsInteger,DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,Gi_Userid,TodaysDate,TodaysTime,gs_MacID);
          UpdateClinicalTestReportDetail(Query_Blank.FieldByName('ClinicalTestReportDetailId').AsInteger,Query_Blank.FieldByName('ClinicalTestReportId').AsInteger,RichEdit_Whole.Text,Report);
     end;

     DM_Hospital.DB.Commit;
     ShowDoneMessage;
     except
     DM_Hospital.DB.Rollback;
     end;

end;

procedure TForm_TestWiseReport.BitBtn5Click(Sender: TObject);
begin
     Form_ReportClinicalPathology:=TForm_ReportClinicalPathology.Create(nil);
     try
         Memo1.Lines.Clear;
         Form_ReportClinicalPathology.Query1.close;
         Form_ReportClinicalPathology.Query1.sql[6]:='and pm.patientid=1';
         Form_ReportClinicalPathology.Query1.Open;

          with Query_Blank do
          begin
               close;
               Session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('select t.*,d.* from ClinicalTestReport t,ClinicalTestReportdetail d');
               sql.Add ('where T.CLINICALTESTREPORTID=D.CLINICALTESTREPORTID ');
               sql.Add('and t.TestnameId='+Inttostr(DBLC_TestName.KeyValue)+' and t.ReportFormatId='+Inttostr(DBLC_ReportType.KeyValue));
               sql.Add('and t.PatientId='+IntTOstr(gi_patientId));
               Open;
         end;

         memo1.Lines.Text:=Query_Blank.FieldByName('ClinicalTestReportDetail_Rich').AsString;
         Memo1.Lines.SaveToFile('tt.txt');
         Form_ReportClinicalPathology.QRRichText1.Lines.LoadFromFile('tt.txt');

         Form_ReportClinicalPathology.QuickRep1.Preview;
     finally
            Form_ReportClinicalPathology.Free;
            DeleteFile('tt.txt');
     end;
end;

procedure TForm_TestWiseReport.BitBtn7Click(Sender: TObject);
begin
     Form_ReportClinicalPathology:=TForm_ReportClinicalPathology.Create(nil);
     try
        Memo1.Lines.Clear;
          with Query_Blank do
          begin
               close;
               Session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add('select t.*,d.* from ClinicalTestReport t,ClinicalTestReportdetail d');
               sql.Add ('where T.CLINICALTESTREPORTID=D.CLINICALTESTREPORTID ');
               sql.Add('and t.TestnameId='+Inttostr(DBLC_TestName.KeyValue)+' and t.ReportFormatId='+Inttostr(DBLC_ReportType.KeyValue));
               sql.Add('and t.PatientId='+IntTOstr(gi_patientId));
               Open;
         end;
         memo1.Lines.Text:=Query_Blank.FieldByName('ClinicalTestReportDetail_Rich').AsString;
         Memo1.Lines.SaveToFile('tt.txt');
         Form_ReportClinicalPathology.QRRichText1.Lines.LoadFromFile('tt.txt');
        Form_ReportClinicalPathology.SendtoPdf;
     finally
        Form_ReportClinicalPathology.Free;
     end;
end;

procedure TForm_TestWiseReport.ButtonColor1Click(Sender: TObject);
begin
     SetFontColor(ButtonColor1,RichEdit_Whole);
end;

//function GetPreciseTextLen(ARichEditCtrl : TRichedit): integer;
//var
//  gtlex : TGetTextLengthEx;
//begin
//  with gtlex do
//  begin
//    flags := GTL_PRECISE;
//    codepage := CP_ACP;
//  end;
//  Result := ARichEditCtrl.Perform(EM_GETTEXTLENGTHEX,WPARAM(@gtlex), 0 );
//end;




procedure TForm_TestWiseReport.ComboBox1Click(Sender: TObject);
begin
     SetFontSize(ComboBox1,RichEdit_Whole);
end;

procedure TForm_TestWiseReport.ComboBox2Change(Sender: TObject);
begin
     SetFontName(ComboBox2,RichEdit_Whole);
end;

procedure TForm_TestWiseReport.DBLC_ReportTypeClick(Sender: TObject);
begin
     LoadDatainGrid;
     RichEdit_Whole.ReadOnly:=false;
end;

procedure TForm_TestWiseReport.DBLC_TestNameClick(Sender: TObject);
begin
      if DBLC_TestName.KeyValue=null then
     DBLC_TestName.KeyValue:=-1
     else
     begin
          with Query_Report do
          begin
               close;
               Session:=Dm_Hospital.Db;
               parambyname('id').AsInteger:=DBLC_TestName.KeyValue;
               open;
          end;
     end;
end;

procedure TForm_TestWiseReport.FormShow(Sender: TObject);
begin
     Query_TestName.Close;
     Query_TestName.Open;
//     Query_Report.Close;
//     Query_Report.Open;
      SetfontSizeValue(ComboBox1);
     SetfontNameValue(ComboBox2);
end;

procedure TForm_TestWiseReport.LoadDatainGrid;
begin
      if (DBLC_TestName.KeyValue>0) and (DBLC_ReportType.KeyValue>0) then
     begin
          with Query_Listing do
          begin
               close;
               Session:=Dm_Hospital.Db;
               sql[2]:='and testnameid='+Inttostr(DBLC_TestName.KeyValue)+' and reportformatid='+inttostr(DBLC_ReportType.KeyValue);
               Open;
          end;
          LoadDataInRichEdit(Query_Listing,RichEdit_Whole,'Default_Finding_RIch',Query_Listing.FieldByName('Reporttitle_Rich').AsString);
     end;
end;

//
//procedure PrintRichEdit(RichEdit    : tRichEdit;
//                        Canvas      : tCanvas;
//                        r           : tRect;
//                        XInch,YInch : extended;
//                        xalign      : tAlignment;
//                        yalign      : tAlignment);
//var Meta : tMetafile;
//    MetafileRect : tRect;
//begin
//  RichEdit.SelStart:=0;
//  RichEdit.SelLength:=Length(RichEdit.Text);
//  RichEdit.Paragraph.Alignment:=xAlign;
//
////  if (XInch   if Canvas  Printer.Canvas then
////  begin
//    // Preview with Metafile
//    Meta:=tMetafile.Create;
//    Meta.MMWidth :=round(XInch*2.54*1000);   // Unit is 0.01 mm
//    Meta.MMHeight:=round(YInch*2.54*1000);
//    MetafileRect:=Rect(0,0,Meta.MMWidth,Meta.MMHeight);
//    with tMetafileCanvas.Create(Meta,0) do
//     try
////      RichEdit.PrintPreview(Handle,MetafileRect,yAlign);
//     finally
//      free;
//     end;
//    Canvas.StretchDraw(r,Meta);
////    SendMessage(Self.Handle, EM_FORMATRANGE, 1, Longint(@Range));
//
//    Meta.Free;
////  end else
////    // Printing
////    RichEdit.PrintRect(Printer.Canvas.Handle,r,yAlign);
//end;




procedure TForm_TestWiseReport.RichEdit_WholeSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1,RichEdit_Whole,[fsBold]);
     GetFontAttribute(ToolButton2,RichEdit_Whole,[fsItalic]);
     GetFontAttribute(ToolButton3,RichEdit_Whole,[fsUnderline]);
     GetFontAttribute(ToolButton7,RichEdit_Whole,[fsStrikeOut]);
     GetFontSize(ComboBox1,RichEdit_Whole);
     GetFontColor(ButtonColor1,RichEdit_Whole);
     GetFontName(ComboBox2,RichEdit_Whole);
end;

procedure TForm_TestWiseReport.Tbtn_FontClick(Sender: TObject);
begin
      if FontDialog1.Execute then
     begin
          RichEdit_Whole.SelAttributes.Style:=FontDialog1.Font.Style;
          RichEdit_Whole.SelAttributes.Name:=FontDialog1.Font.Name;
          RichEdit_Whole.SelAttributes.Color:=FontDialog1.Font.Color;
          RichEdit_Whole.SelAttributes.Size:=FontDialog1.Font.Size;
     end;
end;

procedure TForm_TestWiseReport.ToolButton1Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton1,RichEdit_Whole,[fsBold]);
end;

procedure TForm_TestWiseReport.ToolButton2Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton2,RichEdit_Whole,[fsItalic]);
end;

procedure TForm_TestWiseReport.ToolButton3Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton3,RichEdit_Whole,[fsUnderline]);
end;

procedure TForm_TestWiseReport.ToolButton7Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton7,RichEdit_Whole,[fsStrikeOut]);
end;

end.
