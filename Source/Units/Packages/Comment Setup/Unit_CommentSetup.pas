unit Unit_CommentSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate, DbGridExportToExcel, Unit_Master,
     Dialogs, StdCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, Buttons;

type
     TForm_CommentSetup = class(TForm)
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
          Le_CommentCode: TLabeledEdit;
          CB_IsActive: TCheckBox;
          RichEdit_Comment: TRichEdit;
          Label3: TLabel;
          Label4: TLabel;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          spbtnSendToExcel: TSpeedButton;
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchChange(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure spbtnSendToExcelClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          function  ValidData: Boolean;
          procedure FillVariables;
     private
          pb_isnew, ISACTIVE: Boolean;
          COMMENTID: Integer;
          COMMENTCODE, COMMENT, COMMENTTEXT: String;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_CommentSetup: TForm_CommentSetup;

implementation

Procedure SaveComment(COMMENTCODE, COMMENT, COMMENTTEXT: String; ISACTIVE: Boolean); stdcall;
external 'MidasFunction.bpl';

Procedure UpdateComment(COMMENTID: Integer; COMMENTCODE, COMMENT, COMMENTTEXT: String; ISACTIVE: Boolean); stdcall;
external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_CommentSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Edit_Search.SetFocus;
          Query_list.Close;
          Query_list.Session:=Dm_Hospital.Db;
          Query_list.Open;
     End
     else
          Close;
end;

procedure TForm_CommentSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     RichEdit_Comment.Lines.Clear;
     Le_CommentCode.SetFocus;
end;

function TForm_CommentSetup.ValidData: Boolean;
begin
     Result := false;
     if PageControl1.ActivePageIndex = 0 then
          exit;
     if (trim(Le_CommentCode.Text) = '') or (trim(RichEdit_Comment.Text) = '') then
     begin
          MsgBox(1004, 0, '', '', '');
          exit;
     end;
     Result := true;
end;

procedure TForm_CommentSetup.FillVariables;
var
     my_memo: TMemo;
begin
     my_memo := TMemo.Create(Nil);
     my_memo.Parent := self;
     my_memo.Lines.Clear;
     if CB_IsActive.Checked then
          ISACTIVE := true
     else
          ISACTIVE := false;
     COMMENTCODE := trim(Le_CommentCode.Text);
     COMMENTTEXT := StringReplace(trim(RichEdit_Comment.Lines.Text), '''', '''''', [rfReplaceAll]);
     RichEdit_Comment.Lines.SaveTofile('tt.txt');
     my_memo.Lines.LoadFromFile('tt.txt');
     COMMENT := StringReplace(trim(my_memo.Lines.Text), '''', '''''', [rfReplaceAll]);
     my_memo.Free;
end;

procedure TForm_CommentSetup.BB_SaveClick(Sender: TObject);
begin
     if not ValidData then
          exit;
     FillVariables;
     try
          DM_Hospital.DB.StartTransaction;
          try
               if pb_isnew then
                    SaveComment(COMMENTCODE, COMMENT, COMMENTTEXT, ISACTIVE)
               else
                    UpdateComment(COMMENTID, COMMENTCODE, COMMENT, COMMENTTEXT, ISACTIVE);
          except
               if pb_isnew then
                    SaveComment(COMMENTCODE, COMMENT, COMMENTTEXT, ISACTIVE)
               else
                    UpdateComment(COMMENTID, COMMENTCODE, COMMENT, COMMENTTEXT, ISACTIVE);
          end;
          DM_Hospital.DB.Commit;
          pb_isnew := true;
          ShowDoneMessage;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
          exit;
     end;
     ClearAll(PageControl1.Pages[1]);
     RichEdit_Comment.Clear;
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;
     ActiveControl := Le_CommentCode;
end;

procedure TForm_CommentSetup.DBGrid1DblClick(Sender: TObject);
var
     mymemo: TMemo;
begin
     if Query_list.RecordCount < 1 then
          exit;
     mymemo := TMemo.Create(Nil);
     mymemo.Parent := self;
     mymemo.Lines.Clear;
     PageControl1.ActivePageIndex := 1;
     pb_isnew := false;
     with Query_list do
     begin
          COMMENTID := FieldByName('CommentId').AsInteger;
          Le_CommentCode.Text := FieldByName('CommentCode').AsString;
          mymemo.Lines.Text := FieldByName('CommentName').AsString;
          mymemo.Lines.SaveTofile('tt.txt');
          RichEdit_Comment.Lines.LoadFromFile('tt.txt');
          if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
          else
               CB_IsActive.Checked := false;
     end;
     mymemo.Free;
end;

procedure TForm_CommentSetup.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
          DBGrid1DblClick(Sender);
end;

procedure TForm_CommentSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'CommentCode =' + #39 + trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_CommentSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);

end;

procedure TForm_CommentSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if (Key = #13) AND (not(ActiveControl = RichEdit_Comment)) then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_CommentSetup.FormShow(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;
     ActiveControl := Edit_Search;
end;

procedure TForm_CommentSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_CommentSetup.spbtnSendToExcelClick(Sender: TObject);
begin
     if Query_list.RecordCount < 1 then
          exit;
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_CommentSetup, DBGrid1, true, 'List of Comments',
               TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
