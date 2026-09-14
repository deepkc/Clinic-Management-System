unit Unit_ClinicalFindingSetUp;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dm,
     Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, fxn,
     Unit_Master, TeCanvas, ToolWin;

type
     TForm_FindingSetup = class(TForm)
          Panel1: TPanel;
          Btn_close: TBitBtn;
          BB_New: TBitBtn;
          btn_save: TBitBtn;
          DBGrid1: TDBGrid;
          Panel2: TPanel;
          SpeedButton1: TSpeedButton;
          Label1: TLabel;
          Label2: TLabel;
          CheckBox_Active: TCheckBox;
          RichEdit_Title: TRichEdit;
          RichEdit_Finding: TRichEdit;
          Query_Listing: TOraQuery;
          Ds_Listing: TDataSource;
          Memo1: TMemo;
          Label7: TLabel;
          Label8: TLabel;
          Label3: TLabel;
          Label4: TLabel;
          Query_Blank: TOraQuery;
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
          FontDialog1: TFontDialog;
          ColorDialog1: TColorDialog;
          procedure Btn_closeClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure btn_saveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure RichEdit_TitleSelectionChange(Sender: TObject);
          procedure RichEdit_FindingSelectionChange(Sender: TObject);
          procedure RichEdit_TitleEnter(Sender: TObject);
          procedure RichEdit_FindingEnter(Sender: TObject);
          procedure ToolButton1Click(Sender: TObject);
          procedure ToolButton2Click(Sender: TObject);
          procedure ToolButton3Click(Sender: TObject);
          procedure ToolButton7Click(Sender: TObject);
          procedure Tbtn_FontClick(Sender: TObject);
          procedure ButtonColor1Click(Sender: TObject);
          procedure ComboBox2Change(Sender: TObject);
          procedure ComboBox1Change(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
          FindingSetupId, PbisNew: Integer;
          title, finding, Isactive, Ps_RichName: string;
     end;

var
     Form_FindingSetup: TForm_FindingSetup;

implementation

uses Unit_ClinicalSetup;
{$R *.dfm}

procedure TForm_FindingSetup.BB_NewClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     PbisNew := 0;
end;

procedure TForm_FindingSetup.Btn_closeClick(Sender: TObject);
begin
     close;
     RefreshQuery(Form_ClinicalTest.Query_FindingTitle, gs_DatabaseName);
end;

procedure TForm_FindingSetup.btn_saveClick(Sender: TObject);

begin
     { RichEdit_DefaultFinding.sellength:=0;
       RichEdit_DefaultFinding.selstart:=0;
       RichEdit_DefaultFinding.SelStart:=length(RichEdit_DefaultFinding.Lines[0]); }
     RichEdit_Title.Lines.SaveToFile('tt.txt');
     // l:= length(RichEdit_Title.lines[0]);
     Memo1.Lines.Clear;
     Memo1.Lines.LoadFromFile('tt.txt');
     title := trim(Memo1.Lines.Text);
     Memo1.Lines.Clear;
     // for I := 0 to RichEdit_Finding.lines.Count do
     // begin
     // RichEdit_Title.clear;
     // if i=0 then
     // RichEdit_Title.Lines[i]:=trim(RichEdit_Finding.Lines[0])
     // else
     // RichEdit_Title.Lines[i]:=RichEdit_Finding.Lines[i];
     // end;

     RichEdit_Finding.Lines.SaveToFile('tt.txt');
     Memo1.Lines.LoadFromFile('tt.txt');
     finding := trim(Memo1.Lines.Text);
     if CheckBox_Active.Checked = true then
          Isactive := 'Y'
     else
          Isactive := 'N';
     if trim(RichEdit_Title.Text) = '' then
          MessageDlg('Title Cannot Be Blank', mtInformation, [mbok], 0);

     if trim(RichEdit_Finding.Text) = '' then
          MessageDlg('Finding Cannot Be Blank', mtInformation, [mbok], 0);

     if (trim(RichEdit_Title.Text) <> '') and (trim(RichEdit_Finding.Text) <> '') then
     begin
          if PbisNew = 0 then
          begin
               if (CheckDuplicateDataFrmTmp('clinical_findingsetup', 'findingtitle', gs_DatabaseName, RichEdit_Title.Text) = false) and
                 (CheckDuplicateDataFrmTmp('clinical_findingsetup', 'default_finding', gs_DatabaseName, RichEdit_Finding.Text) = false) then
                    SaveFindingSetup(trim(RichEdit_Title.Text), title, trim(RichEdit_Finding.Text), finding, Isactive);
          end
          else
          begin
               UpdateFindingSetup(FindingSetupId, RichEdit_Title.Text, title, RichEdit_Finding.Text, finding, Isactive);
               PbisNew := 0;
          end;

          Query_Listing.close;
          Query_Listing.open;

          RichEdit_Title.Lines.Clear;
          RichEdit_Finding.Lines.Clear;
          DeleteFile('tt.txt');
     end;

end;

procedure TForm_FindingSetup.ButtonColor1Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontColor(ButtonColor1, RichEdit_Title)
     else if Ps_RichName = 'Finding' then
          SetFontColor(ButtonColor1, RichEdit_Finding);
end;

procedure TForm_FindingSetup.ComboBox1Change(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontSize(ComboBox1, RichEdit_Title)
     else if Ps_RichName = 'Finding' then
          SetFontSize(ComboBox1, RichEdit_Finding);
end;

procedure TForm_FindingSetup.ComboBox2Change(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontName(ComboBox2, RichEdit_Title)
     else if Ps_RichName = 'Finding' then
          SetFontName(ComboBox2, RichEdit_Finding);
end;

procedure TForm_FindingSetup.DBGrid1DblClick(Sender: TObject);
begin
     RichEdit_Title.Lines.Clear;
     RichEdit_Finding.Lines.Clear;
     Memo1.Lines.Clear;
     FindingSetupId := Query_Listing.FieldByName('FindingSetupId').AsInteger;
     Memo1.Lines.Text := Query_Listing.FieldByName('FindingTitle_rich').AsString;
     Memo1.Lines.SaveToFile('updt.txt');
     RichEdit_Title.Lines.LoadFromFile('updt.txt');
     // RichEdit_Title.lines.Text:=Memo1.Lines.Text;
     Memo1.Clear;
     // RichEdit_Title.lines.Text:=Memo1.Lines.Text;
     Memo1.Lines.Text := Query_Listing.FieldByName('Default_Finding_rich').AsString;
     Memo1.Lines.SaveToFile('updt.txt');
     RichEdit_Finding.Lines.LoadFromFile('updt.txt');

     if Query_Listing.FieldByName('isactive').AsString = 'Y' then
          CheckBox_Active.Checked := true
     else
          CheckBox_Active.Checked := false;

     PbisNew := 1;
     DeleteFile('updt.txt');
end;

procedure TForm_FindingSetup.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if Query_Listing.FieldByName('isactive').AsString = 'N' then
          DBGrid1.Canvas.Font.Color := clGray
     else
          DBGrid1.Canvas.Font.Color := clBlack;
     DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TForm_FindingSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Btn_closeClick(Sender);
end;

procedure TForm_FindingSetup.FormShow(Sender: TObject);
begin
     Query_Listing.close;
     Query_Listing.open;
     PbisNew := 0;
     CheckBox_Active.Checked := true;
     SetfontSizeValue(ComboBox1);
     SetfontNameValue(ComboBox2);
end;

procedure TForm_FindingSetup.RichEdit_FindingEnter(Sender: TObject);
begin
     Ps_RichName := 'Finding';
end;

procedure TForm_FindingSetup.RichEdit_FindingSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1, RichEdit_Finding, [fsBold]);
     GetFontAttribute(ToolButton2, RichEdit_Finding, [fsItalic]);
     GetFontAttribute(ToolButton3, RichEdit_Finding, [fsUnderline]);
     GetFontAttribute(ToolButton7, RichEdit_Finding, [fsStrikeOut]);
     GetFontSize(ComboBox1, RichEdit_Finding);
     GetFontColor(ButtonColor1, RichEdit_Finding);
     GetFontName(ComboBox2, RichEdit_Finding);
end;

procedure TForm_FindingSetup.RichEdit_TitleEnter(Sender: TObject);
begin
     Ps_RichName := 'Title';
end;

procedure TForm_FindingSetup.RichEdit_TitleSelectionChange(Sender: TObject);
begin
     GetFontAttribute(ToolButton1, RichEdit_Title, [fsBold]);
     GetFontAttribute(ToolButton2, RichEdit_Title, [fsItalic]);
     GetFontAttribute(ToolButton3, RichEdit_Title, [fsUnderline]);
     GetFontAttribute(ToolButton7, RichEdit_Title, [fsStrikeOut]);
     GetFontSize(ComboBox1, RichEdit_Title);
     GetFontColor(ButtonColor1, RichEdit_Title);
     GetFontName(ComboBox2, RichEdit_Title);
end;

procedure TForm_FindingSetup.SpeedButton1Click(Sender: TObject);
begin
     with Query_Blank do
     begin
          close;
          Session := Dm_Hospital.DB;
          sql.Clear;
          sql.Add('delete from clinical_findingsetup where findingsetupid=' + inttostr(Query_Listing.FieldByName('findingsetupid').AsInteger));
          execsql;
     end;
     Query_Listing.close;
     Query_Listing.open;
end;

procedure TForm_FindingSetup.Tbtn_FontClick(Sender: TObject);
begin
     if FontDialog1.Execute then
     begin
          if Ps_RichName = 'Title' then
          begin
               RichEdit_Title.SelAttributes.Style := FontDialog1.Font.Style;
               RichEdit_Title.SelAttributes.Name := FontDialog1.Font.Name;
               RichEdit_Title.SelAttributes.Color := FontDialog1.Font.Color;
               RichEdit_Title.SelAttributes.Size := FontDialog1.Font.Size;
          end
          else if Ps_RichName = 'Finding' then
          begin
               RichEdit_Finding.SelAttributes.Style := FontDialog1.Font.Style;
               RichEdit_Finding.SelAttributes.Name := FontDialog1.Font.Name;
               RichEdit_Finding.SelAttributes.Color := FontDialog1.Font.Color;
               RichEdit_Finding.SelAttributes.Size := FontDialog1.Font.Size;
          end;

     end;
end;

procedure TForm_FindingSetup.ToolButton1Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton1, RichEdit_Title, [fsBold])
     else if Ps_RichName = 'Finding' then
          SetFontAttribute(ToolButton1, RichEdit_Finding, [fsBold]);
end;

procedure TForm_FindingSetup.ToolButton2Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton2, RichEdit_Title, [fsItalic])
     else if Ps_RichName = 'Finding' then
          SetFontAttribute(ToolButton2, RichEdit_Finding, [fsItalic]);
end;

procedure TForm_FindingSetup.ToolButton3Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton3, RichEdit_Title, [fsUnderline])
     else if Ps_RichName = 'Finding' then
          SetFontAttribute(ToolButton3, RichEdit_Finding, [fsUnderline]);
end;

procedure TForm_FindingSetup.ToolButton7Click(Sender: TObject);
begin
     if Ps_RichName = 'Title' then
          SetFontAttribute(ToolButton7, RichEdit_Title, [fsStrikeOut])
     else if Ps_RichName = 'Finding' then
          SetFontAttribute(ToolButton7, RichEdit_Finding, [fsStrikeOut]);
end;

end.
