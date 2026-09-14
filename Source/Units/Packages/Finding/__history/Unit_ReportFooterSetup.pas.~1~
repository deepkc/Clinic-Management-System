unit Unit_ReportFooterSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, DbGridExportToExcel, ServerDate,Unit_Master,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  DBCtrls;

type
     TForm_ReportFooterSetup = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          BB_New: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Label2: TLabel;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          Edit_Search: TEdit;
          DBGrid1: TDBGrid;
          TabSheet2: TTabSheet;
          Label7: TLabel;
          Label8: TLabel;
          le_Doccode: TLabeledEdit;
          le_Docname: TLabeledEdit;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          le_qualification: TLabeledEdit;
          le_sepcialization: TLabeledEdit;
          cb_isactive: TCheckBox;
    Label1: TLabel;
    Cb_Align: TComboBox;
    Le_Status: TLabeledEdit;
    lbl1: TLabel;
    cbb1: TComboBox;
    lbl2: TLabel;
    Dblcb_Doctor: TDBLookupComboBox;
    Query_Doc: TOraQuery;
    DS_Doctor: TDataSource;
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure Edit_SearchChange(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure SpeedButton2Click(Sender: TObject);
    procedure Dblcb_DoctorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
     private
          pb_isnew: Boolean;
          pi_DoctorID: integer;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_ReportFooterSetup: TForm_ReportFooterSetup;

implementation

{$R *.dfm}

procedure TForm_ReportFooterSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Session:=Dm_Hospital.Db;
          Query_list.Open;
          BB_Save.Enabled:=False;
     End
     else
          Close;
end;

procedure TForm_ReportFooterSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     BB_Save.Enabled:=True;
end;

procedure TForm_ReportFooterSetup.BB_SaveClick(Sender: TObject);
Var
     DOCCODE, DACTIVE, DOCNAME, QUALIFICATION, SPECIALIZATION, STATUS,ALIGN: String;
begin
     if (Dblcb_Doctor.Text = '')  then
     begin
          MsgBox(1006, 0, '', '', '');
          exit;
     end;

     DOCCODE := le_Doccode.Text;
     if cb_isactive.Checked = true then
          DACTIVE := 'Y'
     else
          DACTIVE := 'N';
     STATUS := Le_Status.Text;
     DOCNAME :=Dblcb_Doctor.Text;
     QUALIFICATION := le_qualification.Text;
     SPECIALIZATION := le_sepcialization.Text;


     ALIGN:=Cb_Align.Text;
     try
          if pb_isnew then
               SaveReportFooter(Dblcb_Doctor.KeyValue,DOCCODE, DACTIVE, DOCNAME, QUALIFICATION, SPECIALIZATION, STATUS,ALIGN)
          else
               UpdateReportFooter(pi_DoctorID, DOCCODE, DACTIVE, DOCNAME, QUALIFICATION, SPECIALIZATION, STATUS,ALIGN);
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          Dblcb_Doctor.SetFocus;
          pb_isnew := true;
     except
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TForm_ReportFooterSetup.DBGrid1DblClick(Sender: TObject);
begin
     with Query_list do
     begin
          PageControl1.ActivePageIndex := 1;
          pb_isnew := false;
          le_Doccode.Text := FieldByName('DocCode').AsString;
          le_Docname.Text := FieldByName('DocName').AsString;
          Dblcb_Doctor.KeyValue:=FieldByName('DocId').AsInteger;
          le_qualification.Text := FieldByName('Qualification').AsString;
          le_sepcialization.Text := FieldByName('Specialization').AsString;
          pi_DoctorID := FieldByName('DocId').AsInteger;
          Dblcb_Doctor.SetFocus;
          if FieldByName('Dactive').AsString = 'Y' then
               cb_isactive.Checked := true
          else
               cb_isactive.Checked := false;
          Le_Status.Text:=FieldByName('Status').AsString;
          Cb_Align.ItemIndex := Cb_Align.Items.IndexOf(FieldByName('Align').AsString);
     end;
     BB_Save.Enabled:=True;
end;

procedure TForm_ReportFooterSetup.Dblcb_DoctorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
        Dblcb_Doctor.KeyValue:=null;
end;

procedure TForm_ReportFooterSetup.Edit_SearchChange(Sender: TObject);
begin

     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'DocName =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_ReportFooterSetup.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;

     with Query_Doc do
     begin
        close;
        Session:=DM_Hospital.DB;
        sql.Clear;
        if gi_compileValue<>3 then
        begin
           SQL.Add('Select doct_DocId as docid,doct_docname as docname,doct_doccode as doccode from Hs_Doct_Doctor Order by DocName');
           Dblcb_Doctor.ListField:='Docname';
        end
        else
        begin
           sql.Add('Select DocId,docname||l_name as DrName,doccode from Doctor order by DocName') ;
           Dblcb_Doctor.ListField:='Drname';
        end;

        Open;
     end;
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_ReportFooterSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_ReportFooterSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_ReportFooterSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_ReportFooterSetup.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_ReportFooterSetup, DBGrid1, true, 'Doctors List ', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
