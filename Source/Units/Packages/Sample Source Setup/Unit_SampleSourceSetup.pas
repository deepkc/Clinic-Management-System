unit Unit_SampleSourceSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm,DbGridExportToExcel,ServerDate, Unit_Master,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
     TForm_SampleSourceSetup = class(TForm)
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
          le_SampleSource: TLabeledEdit;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchChange(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
     private
          pb_isnew: boolean;
          pi_samplesourceid: integer;
          { Private declarations }
          procedure savedata;
     public
          { Public declarations }
     end;

var
     Form_SampleSourceSetup: TForm_SampleSourceSetup;

implementation

Procedure SaveSampleSource(SAMPLESOURCE: STRING); STDCALL; external 'MidasFunction.bpl';
Procedure UpdateSampleSource(SampleSourceId: integer; SAMPLESOURCE: String); Stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_SampleSourceSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Session:=Dm_Hospital.Db;
          Query_list.Open;
          BB_Save.Enabled:=false;
     End
     else
          Close;
end;

procedure TForm_SampleSourceSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     BB_Save.Enabled:=true;
end;

procedure TForm_SampleSourceSetup.BB_SaveClick(Sender: TObject);
begin
     if le_SampleSource.Text <> '' then
     begin
          try
               savedata;
               ShowDoneMessage;
               ClearAll(PageControl1.Pages[1]);
          except
               MsgBox(1005, 0, '', '', '');
          end;
     end;
     le_SampleSource.SetFocus;
end;

procedure TForm_SampleSourceSetup.DBGrid1DblClick(Sender: TObject);
begin
     with Query_list do
     begin
          PageControl1.ActivePageIndex := 1;
          pb_isnew := false;
          le_SampleSource.Text := FieldByName('SASO_SampleSource').AsString;
          pi_samplesourceid := FieldByName('SASO_SampleSourceID').AsInteger;
          le_SampleSource.SetFocus;
     end;
     BB_Save.Enabled:=true;
end;

procedure TForm_SampleSourceSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'SampleSource =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_SampleSourceSetup.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;
     PageControl1.ActivePageIndex := 0;
     BB_Save.Enabled:=false;
end;

procedure TForm_SampleSourceSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_SampleSourceSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_SampleSourceSetup.savedata;
Var
     SAMPLESOURCE: STRING;
begin
     SAMPLESOURCE := le_SampleSource.Text;
     if pb_isnew then
          SaveSampleSource(SAMPLESOURCE)
     else
          UpdateSampleSource(pi_samplesourceid, SAMPLESOURCE);
     pb_isnew := true;
end;

procedure TForm_SampleSourceSetup.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          Deletesamplesource(Query_list.FieldByName('SASO_samplesourceID').AsInteger);
     end;
     Query_list.Close;
     Query_list.Open;
end;

procedure TForm_SampleSourceSetup.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_SampleSourceSetup, DBGrid1, true, 'Sample Source', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
