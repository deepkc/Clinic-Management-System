unit DateRange;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, Buttons, OleCtrls, DateEditXControl_TLB, StdCtrls, ExtCtrls,
  DBCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_DateRange = class(TForm)
          Label1: TLabel;
          Label2: TLabel;
          Dex_From: TDateEditX;
          Label3: TLabel;
          Dex_To: TDateEditX;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          SpeedButton3: TSpeedButton;
          Shape1: TShape;
          SpeedButton4: TSpeedButton;
          Label4: TLabel;
          Edit_from: TEdit;
          Label5: TLabel;
          Edit_to: TEdit;
    DBLCB_TestName: TDBLookupComboBox;
    Label6: TLabel;
    Query_TestName: TOraQuery;
    DS_TestName: TDataSource;
    CB_HideAllTest: TCheckBox;
          procedure FormCreate(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure SpeedButton3Click(Sender: TObject);
          procedure SpeedButton4Click(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure MakeRounded(Control: TWinControl);
    procedure Dex_FromExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CB_HideAllTestClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_DateRange: TForm_DateRange;

implementation

uses Fxn, ServerDate;

Function GetNextSampleNo: String; stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_DateRange.CB_HideAllTestClick(Sender: TObject);
begin
     if CB_HideAllTest.Checked=True then
     Begin
          With Query_TestName do
          Begin
               Close;
               sql[1]:=' Where HIDETESTINPATIENTLIST=''Y'' Order by TestName';
               Open;
          End;
     End
     Else
     Begin
          With Query_TestName do
          Begin
               Close;
               sql[1]:=' Where IsActive=''Y'' Order by TestName';
               Open;
          End;
     End;

end;

procedure TForm_DateRange.DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=VK_Delete then
     DBLCB_TestName.KeyValue:=NULL;
end;

procedure TForm_DateRange.Dex_FromExit(Sender: TObject);
begin
    if gi_compileValue=3 then
     begin
          Edit_from.Text := Copy(GetMinMaxSampleNobyDate_Mangalam('min', Dex_From.Text),6);
          Edit_to.Text := Copy(GetMinMaxSampleNobyDate_Mangalam('max', Dex_From.Text),6);
     end
     else
     begin
          Edit_from.Text := Copy(GetMinMaxSampleNobyDate('min', Dex_From.Text),8, 10);
          Edit_to.Text := Copy(GetMinMaxSampleNobyDate('max', Dex_From.Text),8, 10);
     end;
    // Edit_from.Text := Copy(GetMinMaxSampleNobyDate('min', Dex_From.Text),8, 10);
    // Edit_to.Text := Copy(GetMinMaxSampleNobyDate('max', Dex_From.Text),8, 10);
end;

procedure TForm_DateRange.FormCreate(Sender: TObject);
begin
     CreateQuery;
     Dex_From.ADDateAsText := TodaysDate;
     Dex_From.SystemOfDate := gi_datesystem;
     SpeedButton1.Caption := gs_DateCaption;

     Dex_To.ADDateAsText := TodaysDate;
     Dex_To.SystemOfDate := gi_datesystem;
     SpeedButton2.Caption := gs_DateCaption;

     if (gs_CalledFrom='WORK LIST') OR (gs_CalledFrom='PATIENTTEST LIST') then
     begin
          Label2.Caption:='Date';
          Dex_To.Left:=-100;
          label3.Visible:=false;
          SpeedButton2.Visible:=false;
     end;
     if gi_compileValue=3 then
     begin
          Edit_from.Text := Copy(GetMinMaxSampleNobyDate_Mangalam('min', Dex_From.Text),6);
          Edit_to.Text := Copy(GetMinMaxSampleNobyDate_Mangalam('max', Dex_From.Text),6);
     end
     else
     begin
          Edit_from.Text := Copy(GetMinMaxSampleNobyDate('min', Dex_From.Text),8, 10);
          Edit_to.Text := Copy(GetMinMaxSampleNobyDate('max', Dex_From.Text),8, 10);
     end;
     try
          MakeRounded(Form_DateRange);
     except
     end;
end;

procedure TForm_DateRange.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          close;
end;

procedure TForm_DateRange.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_DateRange.FormShow(Sender: TObject);
begin
     Query_TestName.Close;
     Query_TestName.Open;
end;

procedure TForm_DateRange.MakeRounded(Control: TWinControl);
var
     R: TRect;
     Rgn: HRGN;
begin
     with Control do
     begin
          R := ClientRect;
          Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
          Perform(EM_GETRECT, 0, lParam(@R));
          InflateRect(R, -5, -5);
          Perform(EM_SETRECTNP, 0, lParam(@R));
          SetWindowRgn(Handle, Rgn, True);
          Invalidate;
     end;
end;

procedure TForm_DateRange.SpeedButton1Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_From, SpeedButton1);
end;

procedure TForm_DateRange.SpeedButton2Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_To, SpeedButton2);
end;

procedure TForm_DateRange.SpeedButton3Click(Sender: TObject);
begin
     if gi_datesystem = 0 then
     begin
          gs_From := Dex_From.VSDateAsText;
          gs_to := Dex_To.VSDateAsText;
     end
     else
     begin
          gs_From := Dex_From.ADDateAsText;
          gs_to := Dex_To.ADDateAsText;
     end;

     if gi_compileValue=3 then
     begin
        gs_fromDailyNo:=Trim(Edit_from.Text);
        gs_ToDailyNo:=Trim(Edit_to.Text);
     end
     else
     begin
        gs_fromDailyNo := StringReplace(gs_From, '/', '', [rfReplaceAll]) + '-' + Edit_from.Text;
        gs_ToDailyNo := StringReplace(gs_From, '/', '', [rfReplaceAll]) + '-' + Edit_to.Text;
     end;


     if CB_HideAllTest.Checked=True then
     gb_AltWorkList:=True
     Else
     gb_AltWorkList:=False;

     if DBLCB_TestName.KeyValue<>NULL then
     gi_TestNameId:=DBLCB_TestName.KeyValue
     Else
     gi_TestNameId:=0;

     gb_proceed := True;
     close;
end;

procedure TForm_DateRange.SpeedButton4Click(Sender: TObject);
begin
     gb_proceed := false;
     close;
end;

end.
