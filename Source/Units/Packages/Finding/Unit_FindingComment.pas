unit Unit_FindingComment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn,dm,serverdate, Unit_Master,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_FindingComment = class(TForm)
    Le_Code: TLabeledEdit;
    Label4: TLabel;
    RichEdit_Comment: TRichEdit;
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    DBLCB_Department: TDBLookupComboBox;
    Label1: TLabel;
    Query_Department: TOraQuery;
    DS_Department: TDataSource;
    Label2: TLabel;
    Label_TestName: TLabel;
    procedure Le_CodeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_CloseClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Le_CodeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_FindingComment: TForm_FindingComment;

implementation

{$R *.dfm}

procedure TForm_FindingComment.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_FindingComment.BB_SaveClick(Sender: TObject);
Var
     ReportComment:String;
begin
     if MessageDlg('Are You Sure To Keep Comment for Test Name " '+Label_TestName.Caption+' " and Department " '+DBLCB_Department.Text+' " ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     Begin
          ReportComment:=RichEdit_Comment.Text;
          AddComment(gi_PatientTestID,Trim(ReportComment));
          showDoneMessage;
     End;
end;

procedure TForm_FindingComment.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_FindingComment.FormShow(Sender: TObject);
Var
     Qry : TQuery;
     OraQry:TOraQuery;
    ls_DepId : String;

    li_DepId : Integer;
begin
     ls_DepId:='';

     Qry :=TQuery.Create(nil);
     OraQry :=TOraQuery.Create(nil);
     With Qry Do
     Begin
          Close;
          DatabaseName:=gs_temppath;
          sql.Clear;
          sql.Add(' Select Distinct DepId From Findings.db');
          Open;
          First;
          while Not EOF do
          Begin
               if Trim(ls_DepId)<>'' then
               ls_DepId:=ls_DepId+','+Qry.FieldByName('DepId').AsString
               Else
               ls_DepId:=Qry.FieldByName('DepId').AsString;
               Qry.Next;
          End;

          with OraQry do
          begin
               Close;
               session:=Dm_Hospital.Db;
               sql.Clear;
               sql.Add(' Select TestNameId,DepId,(Select Tena_TestName as Testname From Hs_Tena_TestName where Tena_TestNameId=PT.TestNameId) as TestName');
               sql.Add(' From PatientTest PT where PatientTestId='+IntToStr(gi_PatientTestID));
               Open;

               Label_TestName.Caption:=FieldByName('TestName').AsString;
               li_DepId:=FieldByName('DepId').AsInteger;
          end;


     End;
     Qry.Free;

     With Query_Department do
     Begin
          Close;
          sql.Clear;
          sql.Add(' Select Dept_DepId as Depid,Dept_DepName as Depname From Hs_Dept_Department where Dept_DepId in ('+ls_DepId+')');
          Open;
     End;

     DBLCB_Department.KeyValue:=li_DepId;

     RichEdit_Comment.Text:=LoadReportComment(0,'',IntToStr(gi_PatientTestID));
end;

procedure TForm_FindingComment.Le_CodeExit(Sender: TObject);
begin
     if Le_Code.Text<>'' then
     RichEdit_Comment.Text:=GetCommentFromCode(Le_Code.Text);
end;

procedure TForm_FindingComment.Le_CodeKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     Le_CodeExit(Sender);
end;

end.
