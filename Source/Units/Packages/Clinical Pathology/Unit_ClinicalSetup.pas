unit Unit_ClinicalSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dm,
  Dialogs, Grids, DBGrids, Spin, StdCtrls, ComCtrls, DBCtrls, Buttons, ExtCtrls,
  DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,
  fxn,  Unit_Master, ActnList, TeCanvas, ToolWin;

type
  TForm_ClinicalTest = class(TForm)
    Panel1: TPanel;
    Btn_close: TBitBtn;
    BB_New: TBitBtn;
    btn_save: TBitBtn;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox_Active: TCheckBox;
    DBLC_TestName: TDBLookupComboBox;
    DBLC_ReportType: TDBLookupComboBox;
    RichEdit_Title: TRichEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    RichEdit_DefaultFinding: TRichEdit;
    SpeedButton2: TSpeedButton;
    Query_TestName: TOraQuery;
    DS_TestName: TDataSource;
    Ds_ReportType: TDataSource;
    Ds_FindingTitle: TDataSource;
    DS_Listing: TDataSource;
    Query_Report: TOraQuery;
    Query_FindingTitle: TOraQuery;
    Query_Listing: TOraQuery;
    Memo1: TMemo;
    CheckBox_Default: TCheckBox;
    Query_blank: TOraQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    MyRichEdit: TRichEdit;
    ActionList1: TActionList;
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
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Edit_FindingTitle: TEdit;
    ToolButton8: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    BitBtn1: TBitBtn;
    memo2: TMemo;
    orqry_blank: TOraQuery;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_closeClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBLC_TestNameClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLC_ReportTypeClick(Sender: TObject);
    procedure MyRichEditChange(Sender: TObject);
    procedure MyRichEditSelectionChange(Sender: TObject);
    procedure RichEdit_DefaultFindingSelectionChange(Sender: TObject);
    procedure RichEdit_TitleSelectionChange(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ButtonColor1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure Tbtn_FontClick(Sender: TObject);
    procedure RichEdit_TitleEnter(Sender: TObject);
    procedure RichEdit_DefaultFindingEnter(Sender: TObject);
    procedure Edit_FindingTitleExit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PbIsNew,ClinicalTestId,ClinicalTestDetailId:integer;
    Col,Row,Pi_Length:LongInt;
    Ps_RichName:String;
    Procedure LoadDatainGrid;
//    Procedure LoadDataInRichEdit(Query:TOraQuery;RichEdit:TRichEdit;DataFieldName,DataFieldDetailName:String);
  end;

var
  Form_ClinicalTest: TForm_ClinicalTest;

implementation

uses Unit_ClinicalReportType, Unit_ClinicalFindingSetUp, Unit_ReportReplication;


{$R *.dfm}

procedure TForm_ClinicalTest.BB_NewClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_DefaultFinding.Lines.Clear;
     DBLC_TestName.KeyValue:=NULL;
     DBLC_ReportType.KeyValue:=NULL;
     SpinEdit1.Text:='0';
     PbIsNew:=0;
end;

procedure TForm_ClinicalTest.BitBtn1Click(Sender: TObject);
begin
     Try
          Form_Replicate:=TForm_Replicate.Create(Nil);
          Form_Replicate.ShowModal;
     Finally
          Form_Replicate.Free;
     End;
end;

procedure TForm_ClinicalTest.Btn_closeClick(Sender: TObject);
begin
     close;
end;

procedure TForm_ClinicalTest.btn_saveClick(Sender: TObject);
var
isdefault,isactive,rich,rich_reporttitle,rich_findingtitle,rich_defaultfinding,FindingsFresh,FindingsOld,FindingsFresh2,hello:string;
clinicaltestsetupdetailid:integer;
lb_IsMassData,lb_IsMassData2:Boolean;
Ora_Save,Ora_Update:TOraQuery;
begin
         // rich:=trim(RichEdit1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_Title.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     rich_reporttitle:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
//     RichEdit_Finding.Lines.SaveToFile('tt.txt');
//     Memo1.Lines.LoadFromFile('tt.txt');
//     rich_findingtitle:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_DefaultFinding.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     rich_defaultfinding:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;

     Memo2.clear;
     RichEdit_DefaultFinding.Lines.saveToFile('file.txt');
     Memo2.Lines.LoadFromFile('file.txt');
     FindingsFresh := Memo2.Text;

     if Length(FindingsFresh)>8000 then
     begin
          FindingsOLD:=FindingsFresh;
          lb_IsMassData:=True;
          FindingsFresh:=Copy(FindingsFresh,0,3999);
          FindingsFresh2:=StringReplace(FindingsOLD,FindingsFresh,'',[rfReplaceAll]);
          //FindingsFresh2:= Copy(memo2.Text,4000,7999);
     end
     else
     lb_IsMassData:=False;

     if lb_IsMassData=False then
     begin
          if Length(FindingsFresh)>4000 then
          begin
               FindingsOLD:=FindingsFresh;
               lb_IsMassData2:=True;
               FindingsFresh:=Copy(FindingsFresh,0,3999);
          end
          else
          lb_IsMassData2:=False;
     end;




     if CheckBox_Active.Checked=true then
     isactive:='Y'
     else
     isactive:='N';

     if CheckBox_Default.Checked=true then
     isdefault:='Y'
     else
     isdefault:='N';
     DeleteFile('tt.txt');


     if (DBLC_TestName.KeyValue<>null) and (DBLC_ReportType.KeyValue<>null) then
     Begin
            if PbIsNew=0 then
             BEGIN
              if Query_Listing.RecordCount>0 then
               begin
                    ShowMessage('Multiple Values Cannot be Added, Please create another heading to save');
                    Exit;
               end;
             END;
          try
          DM_Hospital.DB.StartTransaction;

          if PbIsNew=0 then
          begin
               if Query_Listing.FieldByName('Reporttitle').asString='' then
               begin
                    Saveclinical_testsetup(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue
                    ,StringReplace(RichEdit_Title.Text,'''','''''',[rfReplaceAll]),rich_reporttitle,isdefault,isactive);
                    with query_blank do
                    begin
                         close;
//                       Session:=Dm_Hospital.Db;
                         sql.Clear;
                         sql.Add('select max(CLINICAL_TESTsetupID)as nmax from Clinical_TestSetup');
                         Open;
                    end;
                    ClinicalTestId:=query_blank.FieldByName('Nmax').AsInteger;
               end
               else
               ClinicalTestId:=Query_Listing.FieldByName('CLINICAL_TESTsetupID').asinteger;
               (*Saveclinical_testSetupDetail(ClinicalTestId,strtoint(SpinEdit1.Text),StringReplace(Edit_FindingTitle.Text,'''','''''',[rfReplaceAll])
               ,StringReplace(Trim(RichEdit_DefaultFinding.Text),'''','''''',[rfReplaceAll]),rich_defaultfinding); *)

               Ora_Save := TOraQuery.Create(nil);
               clinicaltestsetupdetailid:=GetMaxId('clinical_testSetupDetail', 'clinical_testsetupdetailId');
               With Ora_Save do
               Begin
                    Close;
                    Session:=Dm_Hospital.Db;
                    sql.Clear;
                    sql.Add('insert into clinical_testSetupDetail(clinical_testsetupdetailid,clinical_testsetupid,displayorder');
                    sql.Add(',Finding_Title,Default_finding,Default_finding_Rich)');
                    sql.Add('values(' + IntToStr(clinicaltestsetupdetailid) + ',' + IntToStr(ClinicalTestId)
                         + ',' + QuotedStr(SpinEdit1.Text));
                    sql.Add(',' + #39 + StringReplace(Edit_FindingTitle.Text,'''','''''',[rfReplaceAll]) + #39 + ',' + #39 + StringReplace(Edit_FindingTitle.Text,'''','''''',[rfReplaceAll]) + #39 + ',' + QuotedStr(FindingsFresh));
                    sql.Add(')');
                    //Sql.SaveToFile('C:\savereportfinding.txt');
                    ExecSQL;
               end;
               (*ShowMessage(inttostr(Length(FindingsFresh)));

               ShowMessage(inttostr(Length(FindingsOld)));

               hello:=copy(FindingsFresh2,0,3999);
               ShowMessage(inttostr(Length(hello)));*)

               if lb_IsMassData=True then
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,0,3999)));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(clinicaltestsetupdetailid));
                              //sql.SaveToFile('c:\greatvalue.txt');
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;

                           With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,4000,Length(FindingsFresh2))));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(clinicaltestsetupdetailid));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end
                    else
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsOld,4000,Length(FindingsOld))));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(clinicaltestsetupdetailid));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end;


               Ora_Save.Free; //che

               ShowDoneMessage;
          end
          else
          begin
               Updateclinical_testsetup(ClinicalTestId,DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue
               ,RichEdit_Title.Text,rich_reporttitle,isdefault,isactive);

               Ora_Update := TOraQuery.Create(nil);
               With Ora_Update do
               Begin
                    Close;
                    Session:=Dm_Hospital.Db;
                    sql.Clear;
                    sql.Add(' Update clinical_testSetupDetail Set Finding_Title=' + #39 + Edit_FindingTitle.Text + #39 + ',Clinical_TestSetupId=' + IntToStr
                 (ClinicalTestId) + ',DISPLAYORDER=' +QuotedStr(SpinEdit1.Text));
                 //Default_finding=' + #39 + StringReplace(RichEdit_DefaultFinding.Text,'''','''''',[rfReplaceAll]) + #39 + '
                    sql.Add(',Default_finding_Rich=' + QuotedStr(FindingsFresh));
                    sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(ClinicalTestDetailId));
                    //sql.SaveToFile('C:\FindingsReport.txt');
                    ExecSQL;
               End;
               if lb_IsMassData=True then
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,0,3999)));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(ClinicalTestDetailId));
                              sql.SaveToFile('c:\greatvalue.txt');
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;

                           With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsFresh2,4000,Length(FindingsFresh2))));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(ClinicalTestDetailId));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end
                    else
                    begin
                         With orqry_blank do
                         Begin
                              close;
                              Session:=Dm_Hospital.Db;
                              SQL.clear;
                              sql.Add('update clinical_testSetupDetail set Default_finding_Rich=Default_finding_Rich||'+Quotedstr(copy(FindingsOld,4000,Length(FindingsOld))));
                              sql.Add(' where Clinical_TestSetupDetailId=' + IntToStr(ClinicalTestDetailId));
                              //sql.Add('Where PatientClinicalTestDetailID=' + IntToStr(PatientClinicalTestDetailID));
                              ExecSQL;
                         End;
                    end;




               Ora_Update.Free;
               (*Updateclinical_testSetupDetail(ClinicalTestDetailId,ClinicalTestId,strtoint(SpinEdit1.Text)
               ,StringReplace(Edit_FindingTitle.Text,'''','''''',[rfReplaceAll])
               ,StringReplace(Trim(RichEdit_DefaultFinding.Text),'''','''''',[rfReplaceAll]),rich_defaultfinding);*)
               ShowDoneMessage;
               PbIsNew:=0
          end;
          LoadDatainGrid;
          //RichEdit_Title.Lines.Clear;
           DM_Hospital.DB.Commit;
          RichEdit_DefaultFinding.Lines.Clear;

         except
               DM_Hospital.DB.Rollback;
          end;
     End;
//     LoadDataInRichEdit(Query_Listing,MyRichEdit,'Default_Finding_RIch',Query_Listing.FieldByName('Reporttitle_Rich').AsString);
//     PreviewClinicalInRichBox(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,MyRichEdit);
end;


procedure TForm_ClinicalTest.ButtonColor1Click(Sender: TObject);
begin
     if Ps_RichName='Title' then
      SetFontColor(ButtonColor1,RichEdit_Title)
      else if Ps_RichName='Default' then
      SetFontColor(ButtonColor1,RichEdit_DefaultFinding);
end;

procedure TForm_ClinicalTest.ComboBox1Change(Sender: TObject);
begin
      if Ps_RichName='Title' then

      SetFontSize(ComboBox1,RichEdit_Title)
      else if Ps_RichName='Default' then
      SetFontSize(ComboBox1,RichEdit_DefaultFinding);
end;

procedure TForm_ClinicalTest.ComboBox2Change(Sender: TObject);
begin
      if Ps_RichName='Title' then
      SetFontName(ComboBox2,RichEdit_title)
      else if Ps_RichName='Default' then
      SetFontName(ComboBox2,RichEdit_DefaultFinding);
end;


procedure TForm_ClinicalTest.DBGrid1DblClick(Sender: TObject);
begin
     PbIsNew:=1;
     ClinicalTestId:=Query_Listing.FieldByName('clinical_testsetupid').AsInteger;
     ClinicalTestDetailId:= Query_Listing.FieldByName('clinical_testSetupDetailid').AsInteger;
     DBLC_TestName.KeyValue:=Query_Listing.FieldByName('testnameid').AsInteger;
     with Query_Report do
     begin
          close;
//          Session:=Dm_Hospital.Db;
          parambyname('id').AsInteger:= Query_Listing.FieldByName('testnameid').AsInteger;
          open;
     end;
     DBLC_ReportType.KeyValue:=Query_report.FieldByName('reporttypeid').AsInteger;
     RichEdit_Title.Lines.Clear;
     RichEdit_DefaultFinding.Lines.Clear;

     Memo1.Lines.Clear;
     Memo1.lines.Text:=Query_Listing.FieldByName('ReportTitle_rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_Title.Lines.LoadFromFile('updt.txt');
     SpinEdit1.Text:=Query_Listing.FieldByName('DisplayOrder').AsString;
     Memo1.Lines.Clear;
//     Memo1.lines.Text:=Query_Listing.FieldByName('Finding_Title_Rich').AsString;
//     Memo1.lines.SaveToFile('updt.txt');
//     RichEdit_Finding.Lines.LoadFromFile('updt.txt');
//     Memo1.Lines.Clear;
     Edit_FindingTitle.Text:=Query_Listing.FieldByName('Finding_Title').AsString;
//     RichEdit_Finding.Lines.LoadFromFile('updt.txt');
     //DBLC_FindingTitle.KeyValue
     Memo1.Lines.Clear;
     Memo1.lines.Text:=Query_Listing.FieldByName('Default_Finding_Rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_DefaultFinding.Lines.LoadFromFile('updt.txt');

     if Query_Listing.FieldByName('isactive').AsString='Y' then
     CheckBox_Active.Checked:=true
     else
     CheckBox_Active.Checked:=false;

     if Query_Listing.FieldByName('isdefault').AsString='Y' then
     CheckBox_Default.Checked:=true
     else
     CheckBox_Default.Checked:=false;

     DeleteFile('updt.txt');
end;

procedure TForm_ClinicalTest.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Query_Listing.FieldByName('isactive').AsString='N' then
     DBGrid1.Canvas.Font.Color:=clGray
     else
     DBGrid1.Canvas.Font.Color := clBlack;
     DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm_ClinicalTest.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=VK_DELETE then
     begin
          if MessageDlg('Are you sure to delete?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
          begin
               DeleteClinical_TestSetupDetail(Query_Listing.FieldByName('Clinical_TestSetupDetailID').AsInteger);
               ShowDoneMessage;
               LoadDatainGrid;
          end;
     end;
end;

procedure TForm_ClinicalTest.DBLC_ReportTypeClick(Sender: TObject);
begin
     if DBLC_ReportType.KeyValue=null then
     DBLC_ReportType.KeyValue:=-1
     else
     begin
          LoadDatainGrid;
          with Query_blank do
          begin
               close;
//               Session:=Dm_Hospital.Db;
               sql.Clear;
               SQL.Add('select ReportTitle_Rich from clinical_testSetup');
               SQL.Add('Where TestNameID='+inttostr(DBLC_TestName.KeyValue));
               SQL.Add('And ReportFormatID='+IntToStr(DBLC_ReportType.KeyValue));
               open;
          end;
          Memo1.Lines.Clear;
          Memo1.lines.Text:=Query_blank.FieldByName('ReportTitle_Rich').AsString;
          Memo1.lines.SaveToFile('updt.txt');
          RichEdit_title.Lines.LoadFromFile('updt.txt');
     end;
//          //DBLC_FindingTitle.KeyValue
//          Memo1.Lines.Clear;
//          Memo1.lines.Text:=Query_blank.FieldByName('Default_Finding_Rich').AsString;
//          Memo1.lines.SaveToFile('updt.txt');
//          RichEdit_DefaultFinding.Lines.LoadFromFile('updt.txt');
//          PreviewClinicalInRichBox(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,MyRichEdit);
//     end;
end;

procedure TForm_ClinicalTest.DBLC_TestNameClick(Sender: TObject);
begin
     if DBLC_TestName.KeyValue=null then
     DBLC_TestName.KeyValue:=-1
     else
     begin
          with Query_Report do
          begin
               close;
               Session:=Dm_Hospital.Db;;
               parambyname('id').AsInteger:=DBLC_TestName.KeyValue;
               open;
          end;
     end;
end;

procedure TForm_ClinicalTest.Edit_FindingTitleExit(Sender: TObject);
begin
      if PbIsNew=0 then
     RichEdit_DefaultFinding.Text:=Edit_FindingTitle.Text;
     Pi_Length:=length(Edit_FindingTitle.text);

end;

procedure TForm_ClinicalTest.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Btn_closeClick(Sender);
end;

procedure TForm_ClinicalTest.FormShow(Sender: TObject);
begin
     WITH Query_TestName DO
     BEGIN
     Close;
     Session:=Dm_Hospital.Db;
     sql.Clear;
     SQL.Add('Select * From Hs_Tena_TestName Where Tena_DepId in (Select Dept_DepId From '+gs_Hos_DB_UserName+'.Hs_Dept_Department Where Dept_Extended_Report=''Y'' and dept_deptype='+QuotedStr(gs_DepType)+')');
     SQL.Add( 'ORDER by Tena_TestName');
     //SQL.SaveToFile('c:\radiology.txt');
     Open;
     END;
     //     Query_Report.Close;
//     Query_Report.Open;

     Query_FindingTitle.Close;
     Query_FindingTitle.Open;
     LoadDatainGrid;
     SetfontSizeValue(ComboBox1);
     SetfontNameValue(ComboBox2);

end;

procedure TForm_ClinicalTest.LoadDatainGrid;
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
          LoadDataInRichEdit(Query_Listing,MyRichEdit,'Default_Finding_RIch',Query_Listing.FieldByName('Reporttitle_Rich').AsString);
     end;
end;

//procedure TForm_ClinicalTest.LoadDataInRichEdit(Query: TOraQuery;
//  RichEdit: TRichEdit; DataFieldName, DataFieldDetailName: String);
//var
//MyMemo:Tmemo;
//MyRich:TRichEdit;
//MyRich1:TRichEdit;
//begin
//     MyMemo:=TMemo.Create(nil);
//     MyMemo.Parent:=self;
//     MyRich:=TRichEdit.Create(nil);
//     MyRich.Parent:=self;
//     MyRich1:=TRichEdit.Create(nil);
//     MyRich1.Parent:=self;
//     Mymemo.Lines.Clear;
//     RichEdit.ReadOnly:=false;
//     RichEdit.Lines.Clear;
//     Query.First;
//     while not Query.Eof do
//     begin
//          if trim(DataFieldDetailName)='' then
//          Mymemo.Lines.Text:=Query.FieldByName(''+DataFieldName+'').AsString
//          else
//          begin
//          Mymemo.Lines.Text:=Query.FieldByName(''+DataFieldName+'').AsString+':';
//          Mymemo.Lines.savetofile('tt.txt');
//          MyMemo.Lines.Clear;
//          Mymemo.Lines.Text:=Query.FieldByName(''+DataFieldDetailName+'').AsString;
//          Mymemo.Lines.SaveToFile('tt1.txt');
//          MyRich.Lines.LoadFromFile('tt.txt');
//          MyRich1.Lines.LoadFromFile('tt1.txt');
//          end;
//
//
//          MyRich.SelectAll;
//          MyRich.CopyToClipboard;
//          RichEdit.PasteFromClipboard;
//          if trim(DataFieldDetailName)<>'' then
//          begin
////               Row := SendMessage(RichEdit.Handle, EM_LINEFROMCHAR, RichEdit.SelStart, 0);
////               Col := RichEdit.SelStart - SendMessage(RichEdit.Handle, EM_LINEINDEX, Row, 0);
//
////               Length(MyRichEdit.Lines[row]);
//               showmessage(inttostr(RichEdit.GetTextLen));
////     RichEdit.SelStart := RichEdit.GetTextLen;
//
////               showmessage(IntTostr(row)+'/'+Inttostr(Col));
//               MyRich1.SelectAll;
//               MyRich1.CopyToClipboard;
//               RichEdit.PasteFromClipboard;
//
//
//               MyRich1.Lines.Clear;
//          end;
//          RichEdit.Lines.Add('');
//          MyRich.Lines.Clear;
//          MyMemo.Lines.Clear;
//
//          MyRich1.Lines.Clear;
//          Query.Next;
//     end;
//     RichEdit.ReadOnly:=true;
//     MyMemo.Free;
//     MyRich.Free;
//     MyRich1.Free;
//     DeleteFile('tt.txt');
//end;



procedure TForm_ClinicalTest.MyRichEditChange(Sender: TObject);
begin
//      Row := SendMessage(MyRichEdit.Handle,EM_LINEFROMCHAR, 0,
//                                   MyRichEdit.SelStart + MyRichEdit.SelLength);
//                Col := MyRichEdit.SelStart + MyRichEdit.SelLength -
//                SendMessage(MyRichEdit.Handle, EM_LINEINDEX, -1, 0);
//MyRichEdit.SelStart + MyRichEdit.SelLength-

//      EM_GETTEXTLENGTHEX
//               Col := MyRichEdit.ControlAtPos
end;

procedure TForm_ClinicalTest.MyRichEditSelectionChange(Sender: TObject);
begin
     Row := SendMessage(MyRichEdit.Handle, EM_LINEFROMCHAR, MyRichEdit.SelStart, 0);
       col:=SendMessage(MyRichEdit.Handle, EM_GETWORDBREAKPROC, 0, 0);
end;

procedure TForm_ClinicalTest.RichEdit_DefaultFindingEnter(Sender: TObject);
begin
     Ps_RichName:='Default';
     RichEdit_DefaultFinding.Margins.Left:=Pi_Length;
end;

procedure TForm_ClinicalTest.RichEdit_DefaultFindingSelectionChange(
  Sender: TObject);
begin
     GetFontAttribute(ToolButton1,RichEdit_DefaultFinding,[fsBold]);
     GetFontAttribute(ToolButton2,RichEdit_DefaultFinding,[fsItalic]);
     GetFontAttribute(ToolButton3,RichEdit_DefaultFinding,[fsUnderline]);
     GetFontAttribute(ToolButton7,RichEdit_DefaultFinding,[fsStrikeOut]);
     GetFontSize(ComboBox1,RichEdit_DefaultFinding);
     GetFontColor(ButtonColor1,RichEdit_DefaultFinding);
     GetFontName(ComboBox2,RichEdit_DefaultFinding);
end;

procedure TForm_ClinicalTest.RichEdit_TitleEnter(Sender: TObject);
begin
      Ps_RichName:='Title';
end;

procedure TForm_ClinicalTest.RichEdit_TitleSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1,RichEdit_Title,[fsBold]);
     GetFontAttribute(ToolButton2,RichEdit_Title,[fsItalic]);
     GetFontAttribute(ToolButton3,RichEdit_Title,[fsUnderline]);
     GetFontAttribute(ToolButton7,RichEdit_Title,[fsStrikeOut]);
     GetFontSize(ComboBox1,RichEdit_Title);
     GetFontColor(ButtonColor1,RichEdit_Title);
     GetFontName(ComboBox2,RichEdit_Title);
end;

procedure TForm_ClinicalTest.SpeedButton1Click(Sender: TObject);
begin
     with Query_blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('delete from clinical_TestSetupdetail where  clinical_TestSetupdetailId='+inttostr(Query_Listing.FieldByName('clinical_TestSetupdetailId').AsInteger));
          execsql;
     end;
     ShowDoneMessage;
     Query_Listing.Close;
     Query_Listing.Open;
end;

procedure TForm_ClinicalTest.SpeedButton2Click(Sender: TObject);
begin
     Form_ReportType:=TForm_ReportType.Create(nil);
     with Form_ReportType do
     begin
          try
               if self.dblc_testname.keyvalue>1 then
               Form_ReportType.Pi_TestNameId:=self.dblc_testname.keyvalue;
               ShowModal;
          finally
                 Form_ReportType.Free;
          end;
     end;
end;

procedure TForm_ClinicalTest.SpeedButton3Click(Sender: TObject);
begin
//     Form_FindingSetup:=TForm_FindingSetup.Create(nil);
//     with Form_FindingSetup do
//     begin
//          try
//               ShowModal;
//          finally
//                 Form_FindingSetup.Free;
//          end;
//     end
end;

procedure TForm_ClinicalTest.SpinEdit1Change(Sender: TObject);
begin
       if SpinEdit1.Text<>'' then
     begin
          try
          if StrToInt(SpinEdit1.Text)<0 then
         SpinEdit1.Text:='0';
          except
          end;
     end;
end;

procedure TForm_ClinicalTest.Tbtn_FontClick(Sender: TObject);
begin
     if FontDialog1.Execute then
     begin
          if Ps_RichName='Title' then
          begin
               RichEdit_Title.SelAttributes.Style:=FontDialog1.Font.Style;
               RichEdit_Title.SelAttributes.Name:=FontDialog1.Font.Name;
               RichEdit_Title.SelAttributes.Color:=FontDialog1.Font.Color;
               RichEdit_Title.SelAttributes.Size:=FontDialog1.Font.Size;
          end
     else if Ps_RichName='Default' then
          begin
               RichEdit_DefaultFinding.SelAttributes.Style:=FontDialog1.Font.Style;
               RichEdit_DefaultFinding.SelAttributes.Name:=FontDialog1.Font.Name;
               RichEdit_DefaultFinding.SelAttributes.Color:=FontDialog1.Font.Color;
               RichEdit_DefaultFinding.SelAttributes.Size:=FontDialog1.Font.Size;
          end;


     end;
end;

procedure TForm_ClinicalTest.ToolButton10Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taCenter)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taCenter);
end;

procedure TForm_ClinicalTest.ToolButton11Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taRightJustify)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taRightJustify);
end;

procedure TForm_ClinicalTest.ToolButton1Click(Sender: TObject);
begin
     if Ps_RichName='Title' then
     SetFontAttribute(ToolButton1,RichEdit_Title,[fsBold])
     else if Ps_RichName='Default' then
     SetFontAttribute(ToolButton1,RichEdit_DefaultFinding,[fsBold]);
end;

procedure TForm_ClinicalTest.ToolButton2Click(Sender: TObject);
begin
     if Ps_RichName='Title' then
     SetFontAttribute(ToolButton2,RichEdit_Title,[fsItalic])
    else if Ps_RichName='Default' then
     SetFontAttribute(ToolButton2,RichEdit_DefaultFinding,[fsItalic]);
end;

procedure TForm_ClinicalTest.ToolButton3Click(Sender: TObject);
begin
      if Ps_RichName='Title' then
     SetFontAttribute(ToolButton3,RichEdit_Title,[fsUnderline])
     else if Ps_RichName='Default' then
     SetFontAttribute(ToolButton3,RichEdit_DefaultFinding,[fsUnderline]);
end;

procedure TForm_ClinicalTest.ToolButton7Click(Sender: TObject);
begin
      if Ps_RichName='Title' then
     SetFontAttribute(ToolButton7,RichEdit_Title,[fsStrikeOut])
     else if Ps_RichName='Default' then
      SetFontAttribute(ToolButton7,RichEdit_DefaultFinding,[fsStrikeOut]) ;

end;

procedure TForm_ClinicalTest.ToolButton8Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          RichAlign(RichEdit_Title, taLeftJustify)
     else if Ps_RichName = 'Default' then
          RichAlign(RichEdit_DefaultFinding, taLeftJustify);
end;

end.
