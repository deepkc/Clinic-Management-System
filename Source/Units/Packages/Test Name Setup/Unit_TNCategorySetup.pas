unit Unit_TNCategorySetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, serverdate, dm,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
     TForm_TNCategorySetup = class(TForm)
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
    le_TNCategoryCode: TLabeledEdit;
    Le_TestNameCategory: TLabeledEdit;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure Edit_SearchChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          pb_isnew: Boolean;
          Pi_UnitID: integer;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_TNCategorySetup: TForm_TNCategorySetup;

implementation

Procedure SaveTestNameCategory(TNCATEGORYCODE, TESTNAMECATEGORY: String); stdcall;external 'MidasFunction.bpl';
Procedure UpdateTestNameCategory(TNCATEGORYCODE, TESTNAMECATEGORY: String); stdcall; external 'MidasFunction.bpl';

{$R *.dfm}

procedure TForm_TNCategorySetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Session := DM_Hospital.DB;
          Query_list.Open;
     End
     else
          Close;
end;

procedure TForm_TNCategorySetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     le_TNCategoryCode.Text:='';
     Le_TestNameCategory.Text:='';
     le_TNCategoryCode.SetFocus;
end;

procedure TForm_TNCategorySetup.BB_SaveClick(Sender: TObject);
Var
     ls_Code, ls_Names: String;
begin
     ls_Code := le_TNCategoryCode.Text;
     ls_Names := Le_TestNameCategory.Text;

     if Length(Trim(le_TNCategoryCode.Text))<>6 then
     Begin
          MessageDlg(' Test Name Category Code Lenght Must be of 6 Char.',mtWarning,[mbok],0);
          le_TNCategoryCode.SetFocus;
          Exit;
     End;

     Try
          DM_Hospital.DB.StartTransaction;

          try
               if pb_isnew then
                    SaveTestNameCategory(ls_Code, ls_Names)
               else
                    UpdateTestNameCategory(ls_Code, ls_Names);
          except
               if pb_isnew then
                    SaveTestNameCategory(ls_Code, ls_Names)
               else
                    UpdateTestNameCategory(ls_Code, ls_Names);
          end;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          le_TNCategoryCode.SetFocus;
          pb_isnew := true;
     Except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     End;
end;

procedure TForm_TNCategorySetup.DBGrid1DblClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
     pb_isnew := false;
     with Query_list do
     begin
          le_TNCategoryCode.Text := FieldByName('TENC_TNCATEGORYCODE').AsString;
          Le_TestNameCategory.Text := FieldByName('TENC_TESTNAMECATEGORY').AsString;
     end;
end;

procedure TForm_TNCategorySetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'TENC_TESTNAMECATEGORY =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_TNCategorySetup.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session := DM_Hospital.DB;
     Query_list.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_TNCategorySetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_TNCategorySetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

end.
