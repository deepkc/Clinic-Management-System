unit Unit_ClinicalSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Spin, StdCtrls, ComCtrls, DBCtrls, Buttons, ExtCtrls,
  DB, DBTables,fxn,Unit_Master;

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
    DBLC_FindingTitle: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    RichEdit_DefaultFinding: TRichEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    RichEdit_Finding: TRichEdit;
    Query_TestName: TQuery;
    DS_TestName: TDataSource;
    Ds_ReportType: TDataSource;
    Ds_FindingTitle: TDataSource;
    DS_Listing: TDataSource;
    Query_Report: TQuery;
    Query_FindingTitle: TQuery;
    Query_Listing: TQuery;
    Memo1: TMemo;
    CheckBox_Default: TCheckBox;
    Query_blank: TQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    MyRichEdit: TRichEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_closeClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBLC_FindingTitleClick(Sender: TObject);
    procedure DBLC_TestNameClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLC_ReportTypeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PbIsNew,ClinicalTestId:integer;
  end;

var
  Form_ClinicalTest: TForm_ClinicalTest;

implementation

uses Unit_ClinicalReportType, Unit_ClinicalFindingSetUp;


{$R *.dfm}

procedure TForm_ClinicalTest.BB_NewClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_DefaultFinding.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     DBLC_TestName.KeyValue:=NULL;
     DBLC_ReportType.KeyValue:=NULL;
     DBLC_FindingTitle.KeyValue:=NULL;
     SpinEdit1.Text:='0';
     PbIsNew:=0;
end;

procedure TForm_ClinicalTest.Btn_closeClick(Sender: TObject);
begin
     close;
end;

procedure TForm_ClinicalTest.btn_saveClick(Sender: TObject);
var
isdefault,isactive,rich,rich_reporttitle,rich_findingtitle,rich_defaultfinding:string;
begin
    // rich:=trim(RichEdit1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_Title.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     rich_reporttitle:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_Finding.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     rich_findingtitle:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     RichEdit_DefaultFinding.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     rich_defaultfinding:=trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     if CheckBox_Active.Checked=true then
     isactive:='Y'
     else
     isactive:='N';

     if CheckBox_Default.Checked=true then
     isdefault:='Y'
     else
     isdefault:='N';
     DeleteFile('tt.txt');

     if (DBLC_TestName.KeyValue<>null) and (DBLC_ReportType.KeyValue<>null) and (DBLC_FindingTitle.KeyValue<>null) then
     Begin
          if PbIsNew=0 then
          begin
               Saveclinical_test(DBLC_FindingTitle.KeyValue,DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,strtoint(SpinEdit1.Text),RichEdit_Title.Text,rich_reporttitle,
               RichEdit_Finding.Text,rich_findingtitle,RichEdit_DefaultFinding.Text,rich_defaultfinding,isdefault,isactive);
               ShowDoneMessage;
          end
          else
          begin
               Updateclinical_test(ClinicalTestId,DBLC_FindingTitle.KeyValue,DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,strtoint(SpinEdit1.Text),RichEdit_Title.Text,rich_reporttitle,
               RichEdit_Finding.Text,rich_findingtitle,RichEdit_DefaultFinding.Text,rich_defaultfinding,isdefault,isactive);
               ShowDoneMessage;
               PbIsNew:=0
          end;
          query_listing.close;
          query_listing.open;
          //RichEdit_Title.Lines.Clear;
          RichEdit_DefaultFinding.Lines.Clear;
          RichEdit_Finding.Lines.Clear;
          //DBLC_TestName.KeyValue:=null;
          //DBLC_ReportType.KeyValue:=null;
          DBLC_FindingTitle.KeyValue:=null;
          SpinEdit1.Text:='0';
     End;
     PreviewClinicalInRichBox(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,MyRichEdit);
end;

procedure TForm_ClinicalTest.DBGrid1DblClick(Sender: TObject);
begin
     PbIsNew:=1;
     ClinicalTestId:=Query_Listing.FieldByName('clinicaltestid').AsInteger;
     DBLC_TestName.KeyValue:=Query_Listing.FieldByName('testnameid').AsInteger;
     with Query_Report do
     begin
          close;
          databasename:=gs_databasename;
          parambyname('id').AsInteger:= Query_Listing.FieldByName('testnameid').AsInteger;
          open;
     end;
     DBLC_ReportType.KeyValue:=Query_report.FieldByName('reporttypeid').AsInteger;
     DBLC_FindingTitle.KeyValue:=Query_Listing.FieldByName('FINDINGSETUPID').AsInteger;
     RichEdit_Title.Lines.Clear;
     RichEdit_DefaultFinding.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     Memo1.Lines.Clear;
     Memo1.lines.Text:=Query_Listing.FieldByName('ReportTitle_rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_Title.Lines.LoadFromFile('updt.txt');
     SpinEdit1.Text:=Query_Listing.FieldByName('DisplayOrder').AsString;
     Memo1.Lines.Clear;
     Memo1.lines.Text:=Query_Listing.FieldByName('Finding_Title_Rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_Finding.Lines.LoadFromFile('updt.txt');
     Memo1.Lines.Clear;
     Memo1.lines.Text:=Query_Listing.FieldByName('Finding_Title_Rich').AsString;
     Memo1.lines.SaveToFile('updt.txt');
     RichEdit_Finding.Lines.LoadFromFile('updt.txt');
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

procedure TForm_ClinicalTest.DBLC_FindingTitleClick(Sender: TObject);
begin
     if DBLC_FindingTitle.KeyValue=null then
     DBLC_FindingTitle.KeyValue:=-1
     else
     begin
          with Query_blank do
          begin
               close;
               databasename:=gs_DatabaseName;
               sql.Clear;
               sql.Add('select * from clinical_findingsetup where findingsetupid='+inttostr(DBLC_FindingTitle.KeyValue));
               open;
          end;
          Memo1.Lines.Clear;
          Memo1.lines.Text:=Query_blank.FieldByName('FindingTitle_rich').AsString;
          Memo1.lines.SaveToFile('updt.txt');
          RichEdit_Finding.Lines.LoadFromFile('updt.txt');
          //DBLC_FindingTitle.KeyValue
          Memo1.Lines.Clear;
          Memo1.lines.Text:=Query_blank.FieldByName('Default_Finding_Rich').AsString;
          Memo1.lines.SaveToFile('updt.txt');
          RichEdit_DefaultFinding.Lines.LoadFromFile('updt.txt');
     end;
end;

procedure TForm_ClinicalTest.DBLC_ReportTypeClick(Sender: TObject);
begin
     if DBLC_ReportType.KeyValue=null then
     DBLC_ReportType.KeyValue:=-1
     else
//     begin
//          with Query_blank do
//          begin
//               close;
//               databasename:=gs_DatabaseName;
//               sql.Clear;
//               SQL.Add('Select * from clinical_Test');
//               SQL.Add('Where TestNameID='+inttostr(DBLC_TestName.KeyValue));
//               SQL.Add('And ReportTypeID='+IntToStr(DBLC_ReportType.KeyValue));
//               open;
//          end;
//          Memo1.Lines.Clear;
//          Memo1.lines.Text:=Query_blank.FieldByName('Finding_Title_rich').AsString;
//          Memo1.lines.SaveToFile('updt.txt');
//          RichEdit_Finding.Lines.LoadFromFile('updt.txt');
//          //DBLC_FindingTitle.KeyValue
//          Memo1.Lines.Clear;
//          Memo1.lines.Text:=Query_blank.FieldByName('Default_Finding_Rich').AsString;
//          Memo1.lines.SaveToFile('updt.txt');
//          RichEdit_DefaultFinding.Lines.LoadFromFile('updt.txt');
          PreviewClinicalInRichBox(DBLC_TestName.KeyValue,DBLC_ReportType.KeyValue,MyRichEdit);
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
               databasename:=gs_DatabaseName;
               parambyname('id').AsInteger:=DBLC_TestName.KeyValue;
               open;
          end;
     end;
end;

procedure TForm_ClinicalTest.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Btn_closeClick(Sender);
end;

procedure TForm_ClinicalTest.FormShow(Sender: TObject);
begin
     Query_TestName.Close;
     query_testname.Open;
//     Query_Report.Close;
//     Query_Report.Open;
     Query_FindingTitle.Close;
     Query_FindingTitle.Open;
     Query_Listing.Close;
     Query_Listing.Open;
end;

procedure TForm_ClinicalTest.SpeedButton1Click(Sender: TObject);
begin
     with Query_blank do
     begin
          close;
          databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add('delete from clinical_test where  clinicaltestid='+inttostr(Query_Listing.FieldByName('clinicaltestid').AsInteger));
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
               ShowModal;
          finally
                 Form_ReportType.Free;
          end;
     end;
end;

procedure TForm_ClinicalTest.SpeedButton3Click(Sender: TObject);
begin
     Form_FindingSetup:=TForm_FindingSetup.Create(nil);
     with Form_FindingSetup do
     begin
          try
               ShowModal;
          finally
                 Form_FindingSetup.Free;
          end;
     end
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

end.
