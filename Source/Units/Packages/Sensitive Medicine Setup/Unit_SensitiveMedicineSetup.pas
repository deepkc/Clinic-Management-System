unit Unit_SensitiveMedicineSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm,DBGridExportToExcel,Unit_Master,ServerDate,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls;

type
     TForm_SensitiveMedicineSetup = class(TForm)
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
          le_Medcode: TLabeledEdit;
          le_MedicineName: TLabeledEdit;
          cb_isactive: TCheckBox;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          procedure PageControl1Change(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure Edit_SearchChange(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
     private
          pb_isnew: Boolean;
          pi_MedicineID: integer;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_SensitiveMedicineSetup: TForm_SensitiveMedicineSetup;

implementation

Procedure SaveSensitiveMedicine(MEDCODE, MEDICINE, ISACTIVE: String); stdcall; external 'MidasFunction.bpl';
Procedure UpdateSensitiveMedicine(SENSITIVEMEDICINEID: integer; MEDCODE, MEDICINE, ISACTIVE: String); stdcall;
external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_SensitiveMedicineSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Session:=Dm_Hospital.Db;
          Query_list.Open;
     End
     else
          Close;
end;

procedure TForm_SensitiveMedicineSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     le_Medcode.SetFocus;
end;

procedure TForm_SensitiveMedicineSetup.BB_SaveClick(Sender: TObject);
Var
     SENSITIVEMEDICINEID: integer;
     MEDCODE, MEDICINE, ISACTIVE: String;
begin
     if (le_Medcode.Text = '') or (le_MedicineName.Text = '') then
     begin
          MsgBox(1006, 0, '', '', '');
          exit;
     end;

     MEDCODE := le_Medcode.Text;
     if cb_isactive.Checked = true then
          ISACTIVE := 'Y'
     else
          ISACTIVE := 'N';
     MEDICINE := le_MedicineName.Text;
     SENSITIVEMEDICINEID:=pi_MedicineID;
     try
          if pb_isnew then
               SaveSensitiveMedicine(MEDCODE, MEDICINE, ISACTIVE)
          else
               UpdateSensitiveMedicine(SENSITIVEMEDICINEID, MEDCODE, MEDICINE, ISACTIVE);
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          le_Medcode.SetFocus;
          pb_isnew := true;
     except
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TForm_SensitiveMedicineSetup.DBGrid1DblClick(Sender: TObject);
begin
     with Query_list do
     begin
          PageControl1.ActivePageIndex := 1;
          pb_isnew := false;
          le_Medcode.Text := FieldByName('MedCode').AsString;
          le_MedicineName.Text := FieldByName('Medicine').AsString;
          pi_MedicineID := FieldByName('SensitiveMedicineID').AsInteger;
          le_Medcode.SetFocus;
          if FieldByName('IsActive').AsString = 'Y' then
               cb_isactive.Checked := true
          else
               cb_isactive.Checked := false;
     end;
end;

procedure TForm_SensitiveMedicineSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'Medicine =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_SensitiveMedicineSetup.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_SensitiveMedicineSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_SensitiveMedicineSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     keybd_event(9,13,0,0);
end;

procedure TForm_SensitiveMedicineSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_SensitiveMedicineSetup.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          Deletesensitivemedicine(Query_list.FieldByName('sensitivemedicineID').AsInteger);
     end;
     Query_list.Close;
     Query_list.Open;
end;

procedure TForm_SensitiveMedicineSetup.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_SensitiveMedicineSetup, DBGrid1, true, 'Sensitive Medicine', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
