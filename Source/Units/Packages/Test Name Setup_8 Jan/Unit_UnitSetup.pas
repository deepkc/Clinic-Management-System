unit Unit_UnitSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, serverdate, dm,
     Dialogs, DB, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
     TForm_UnitName = class(TForm)
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
          le_UnitCode: TLabeledEdit;
          Le_UnitName: TLabeledEdit;
          Query_Department: TQuery;
          Ds_Department: TDataSource;
          Query_list: TQuery;
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
     Form_UnitName: TForm_UnitName;

implementation

Procedure SaveUnits(UnitCode, UnitNames: String); stdcall; external 'MidasFunction.bpl';
Procedure UpdateUnits(UnitId: integer; UnitCode, UnitNames: String); stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_UnitName.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.DatabaseName := gs_DatabaseName;
          Query_list.Open;
     End
     else
          Close;
end;

procedure TForm_UnitName.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
end;

procedure TForm_UnitName.BB_SaveClick(Sender: TObject);
Var
     UnitCode, UnitNames: String;
begin
     UnitCode := le_UnitCode.Text;
     UnitNames := Le_UnitName.Text;
     Try
          DM_Hospital.DB.StartTransaction;

          try
               if pb_isnew then
                    SaveUnits(UnitCode, UnitNames)
               else
                    UpdateUnits(Pi_UnitID, UnitCode, UnitNames);
          except
               if pb_isnew then
                    SaveUnits(UnitCode, UnitNames)
               else
                    UpdateUnits(Pi_UnitID, UnitCode, UnitNames);
          end;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          le_UnitCode.SetFocus;
          pb_isnew := true;
     Except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     End;
end;

procedure TForm_UnitName.DBGrid1DblClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
     pb_isnew := false;
     with Query_list do
     begin
          Pi_UnitID := FieldByName('UnitId').AsInteger;
          le_UnitCode.Text := FieldByName('UnitCode').AsString;
          Le_UnitName.Text := FieldByName('UnitName').AsString;
     end;
end;

procedure TForm_UnitName.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'UnitName =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_UnitName.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.DatabaseName := gs_DatabaseName;
     Query_list.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_UnitName.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_UnitName.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

end.
