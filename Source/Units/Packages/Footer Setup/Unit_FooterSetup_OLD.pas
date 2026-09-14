unit Unit_FooterSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     DbGridExportToExcel, fxn, dm, serverdate, Unit_Master,
     Dialogs, DBCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, Buttons, SMDBGrid,
  ToolWin, TeCanvas;

type
     TForm_FooterSetup = class(TForm)
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
          TabSheet2: TTabSheet;
          Label7: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Le_FooterCode: TLabeledEdit;
          CB_IsActive: TCheckBox;
          RichEdit_Footer: TRichEdit;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          Label1: TLabel;
          Dblcb_TestNameNew: TDBLookupComboBox;
          Label5: TLabel;
          Query_TestName: TOraQuery;
          DS_TestName: TDataSource;
          Label6: TLabel;
          Dblcb_TestName: TDBLookupComboBox;
          spbtnSendToExcel: TSpeedButton;
    SMDBGrid1: TSMDBGrid;
    SpeedButton3: TSpeedButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ComboBox1: TComboBox;
    ButtonColor1: TButtonColor;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    ToolButton9: TToolButton;
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchChange(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure spbtnSendToExcelClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          function ValidData: Boolean;
          procedure FillVariables;
          procedure DBGrid1DblClick(Sender: TObject);
          procedure Dblcb_TestNameClick(Sender: TObject);
          procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Dblcb_TestNameNewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Dblcb_TestNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ButtonColor1Click(Sender: TObject);
     private
          pb_isnew, ISACTIVE: Boolean;
          FOOTERID, TESTNAMEID: Integer;
          FOOTERCODE, FOOTER, FOOTERTEXT: String;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_FooterSetup: TForm_FooterSetup;

implementation

Procedure SaveFooter(TESTNAMEID: Integer; FOOTERCODE, FOOTER, FOOTERTEXT: String; ISACTIVE: Boolean); stdcall;
external 'MidasFunction.bpl';
Procedure UpdateFooter(FOOTERID, TESTNAMEID: Integer; FOOTERCODE, FOOTER, FOOTERTEXT: String; ISACTIVE: Boolean);
  stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_FooterSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Session:=Dm_Hospital.Db;
          if Dblcb_TestName.KeyValue<>null then
             Query_list.SQL[1] := 'Where TestNameID=' + quotedstr(Dblcb_TestName.KeyValue);

          try
               Query_list.Open;
          except
               Query_list.Close;
          end;
          Dblcb_TestName.SetFocus;
     End
     else
          Close;
end;

procedure TForm_FooterSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     RichEdit_Footer.Lines.Clear;
     Dblcb_TestNameNew.SetFocus;
end;

function TForm_FooterSetup.ValidData: Boolean;
begin
     Result := false;
     if PageControl1.ActivePageIndex = 0 then
          exit;
     if (Dblcb_TestNameNew.KeyValue = null) or (trim(Le_FooterCode.Text) = '') or (trim(RichEdit_Footer.Text) = '') then
     begin
          MsgBox(1004, 0, '', '', '');
          exit;
     end;
     Result := true;
end;

procedure TForm_FooterSetup.FillVariables;
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
     TESTNAMEID := Dblcb_TestNameNew.KeyValue;
     FOOTERCODE := trim(Le_FooterCode.Text);
     FOOTERTEXT := StringReplace(trim(RichEdit_Footer.Text), '''', '''''', [rfReplaceAll]);
     RichEdit_Footer.Lines.SaveTofile('tt.txt');
     my_memo.Lines.LoadFromFile('tt.txt');
     FOOTER := StringReplace(trim(my_memo.Lines.Text), '''', '''''', [rfReplaceAll]);
     my_memo.Free;
end;

procedure TForm_FooterSetup.BB_SaveClick(Sender: TObject);
begin
     if not ValidData then
          exit;
     FillVariables;
     try
          DM_Hospital.DB.StartTransaction;
          try
               if pb_isnew then
                    SaveFooter(TESTNAMEID, FOOTERCODE, FOOTER, FOOTERTEXT, ISACTIVE)
               else
                    UpdateFooter(FOOTERID, TESTNAMEID, FOOTERCODE, FOOTER, FOOTERTEXT, ISACTIVE);
          except
               if pb_isnew then
                    SaveFooter(TESTNAMEID, FOOTERCODE, FOOTER, FOOTERTEXT, ISACTIVE)
               else
                    UpdateFooter(FOOTERID, TESTNAMEID, FOOTERCODE, FOOTER, FOOTERTEXT, ISACTIVE);
          end;
          DM_Hospital.DB.Commit;
          pb_isnew := true;
          ShowDoneMessage;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
          exit;
     end;
     // ClearAll(PageControl1.Pages[1]);
     Le_FooterCode.Clear;
     RichEdit_Footer.Clear;
     Query_list.Close;
     Query_list.Open;
     ActiveControl := Dblcb_TestNameNew;
end;

procedure TForm_FooterSetup.ButtonColor1Click(Sender: TObject);
begin
     SetFontColor(ButtonColor1,RichEdit_Footer);
end;

procedure TForm_FooterSetup.ComboBox1Change(Sender: TObject);
begin
     SetFontSize(ComboBox1,RichEdit_Footer);
end;

procedure TForm_FooterSetup.DBGrid1DblClick(Sender: TObject);
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
          FOOTERID := FieldByName('FooterId').AsInteger;
          Dblcb_TestNameNew.KeyValue := FieldByName('TestNameID').AsInteger;
          Le_FooterCode.Text := FieldByName('FooterCode').AsString;
          mymemo.Lines.Text := FieldByName('Footer').AsString;
          mymemo.Lines.SaveTofile('tt.txt');
          RichEdit_Footer.Lines.LoadFromFile('tt.txt');
          if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
          else
               CB_IsActive.Checked := false;
     end;
     mymemo.Free;
end;

procedure TForm_FooterSetup.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_RETURN then
          DBGrid1DblClick(Sender);
end;

procedure TForm_FooterSetup.Dblcb_TestNameClick(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.SQL[1] := 'Where TestNameID=' + Floattostr(Dblcb_TestName.KeyValue);
     try
          Query_list.Open;
     except
          Query_list.Close;
     end;
end;

procedure TForm_FooterSetup.Dblcb_TestNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
       if Key=VK_DELETE then
         Dblcb_TestName.KeyValue:=null;
end;

procedure TForm_FooterSetup.Dblcb_TestNameNewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if Key=VK_DELETE then
         Dblcb_TestNameNew.KeyValue:=null;
end;

procedure TForm_FooterSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'FooterCode =' + #39 + trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_FooterSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
     if (Key = 13) AND (not(ActiveControl = RichEdit_Footer)) then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_FooterSetup.FormShow(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     Query_TestName.Close;
     Query_TestName.Session:=Dm_Hospital.Db;
     Query_TestName.Open;
     Dblcb_TestName.SetFocus;
end;

procedure TForm_FooterSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_FooterSetup.SMDBGrid1DblClick(Sender: TObject);
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
          FOOTERID := FieldByName('FooterId').AsInteger;
          Dblcb_TestNameNew.KeyValue := FieldByName('TestNameID').AsInteger;
          Le_FooterCode.Text := FieldByName('FooterCode').AsString;
          mymemo.Lines.Text := FieldByName('Footer').AsString;
          mymemo.Lines.SaveTofile('tt.txt');
          RichEdit_Footer.Lines.LoadFromFile('tt.txt');
          if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
          else
               CB_IsActive.Checked := false;
     end;
     mymemo.Free;
end;

procedure TForm_FooterSetup.spbtnSendToExcelClick(Sender: TObject);
begin
     if Query_list.RecordCount < 1 then
          exit;

     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_FooterSetup, SMDBGrid1, true, 'Footer List of ' + Dblcb_TestName.Text,
               TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

procedure TForm_FooterSetup.ToolButton1Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton1,RichEdit_Footer,[fsBold]);
end;

procedure TForm_FooterSetup.ToolButton2Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton2,RichEdit_Footer,[fsItalic]);
end;

procedure TForm_FooterSetup.ToolButton3Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton3,RichEdit_Footer,[fsUnderline]);
end;

procedure TForm_FooterSetup.ToolButton4Click(Sender: TObject);
begin
     SetFontAttribute(ToolButton4,RichEdit_Footer,[fsStrikeOut]);
end;

procedure TForm_FooterSetup.ToolButton5Click(Sender: TObject);
begin
      if FontDialog1.Execute then
      RichEdit_Footer.SelAttributes.Style:=FontDialog1.Font.Style;
end;

procedure TForm_FooterSetup.ToolButton6Click(Sender: TObject);
begin
      RichAlign(RichEdit_Footer, taLeftJustify);
end;

procedure TForm_FooterSetup.ToolButton7Click(Sender: TObject);
begin
     RichAlign(RichEdit_Footer, taCenter);
end;

procedure TForm_FooterSetup.ToolButton8Click(Sender: TObject);
begin
      RichAlign(RichEdit_Footer, taRightJustify);
end;

end.
