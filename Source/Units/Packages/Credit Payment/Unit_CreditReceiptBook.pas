unit Unit_CreditReceiptBook;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, StdCtrls, Mask, Buttons, ExtCtrls,
     Fxn, ServerDate,Unit_QrBill,DM, Spin;

type
     TFrame_CreditReceiptBook = class(TFrame)
          Panel2: TPanel;
          Label1: TLabel;
          MaskEdit_FYear: TMaskEdit;
          BitBtn_List: TBitBtn;
          Edit_Receipt: TEdit;
          Edit_Bill: TEdit;
          Edit_Hno: TEdit;
          Edit_Patient: TEdit;
          CheckBox_Cancelled: TCheckBox;
          DBGrid_List: TDBGrid;
          DataSource_List: TDataSource;
          SpeedButton2: TSpeedButton;
          Query_list: TOraQuery;
    Se_NoofPrint: TSpinEdit;
    Label14: TLabel;
    BB_Reprint: TSpeedButton;
    CheckBoxPreview: TCheckBox;
          procedure BitBtn_ListClick(Sender: TObject);
          procedure DBGrid_ListDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
          procedure Edit_ReceiptChange(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure CheckBox_CancelledClick(Sender: TObject);
          procedure DBGrid_ListDblClick(Sender: TObject);
    procedure BB_ReprintClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
          constructor Create(AOwner: Tcomponent); Override;
          destructor Destroy; Override;
          procedure Initialize;
     end;

implementation

{$R *.dfm}
{ TFrame1 }

procedure TFrame_CreditReceiptBook.BB_ReprintClick(Sender: TObject);
Var
     i: Integer;
begin
     gi_PatientId:=Query_list.FieldByName('HNO').AsInteger;
     gs_BillNo:=Query_list.FieldByName('BillNo').AsString;
     if Copy(gs_BillNo,1,2)<>'RF' then
     gi_BillCase:=2
     Else
     gi_BillCase:=6;

     gb_IsOtherPatientPharmacyBill:=True;

     try
          Form_QRBill := TForm_QRBill.Create(nil);

          //if Gb_IsReprint then
          Form_QRBill.lbl_reprint.Enabled := true;

          if CheckBoxPreview.Checked=True then
          begin
               with Form_QRBill do
               begin
                    QrBill.Prepare;
                    lbl_totpage.Caption := IntToStr(QrBill.QRPrinter.PageCount);
                    QrBill.PreviewModal;
               end;
          end
          else
          begin
               Form_QRBill.QrBill.Prepare;
               for i := 0 to StrToInt(Se_NoofPrint.Text) - 1 do
                    Form_QRBill.QrBill.Print;
          end;
     finally
          Gb_IsReprint := false;
          Form_QRBill.Free;
     end;
end;

procedure TFrame_CreditReceiptBook.BitBtn_ListClick(Sender: TObject);
begin
     Query_list.close;
     Query_list.sql[5] := 'AND CRM.Fyear=' + #39 + MaskEdit_FYear.Text + #39;
     Query_list.sql[12] := 'AND CRM.Fyear=' + #39 + MaskEdit_FYear.Text + #39;
     Query_list.ParamByName('CounterID').asInteger := 2;
     if CheckBox_Cancelled.Checked then
          Query_list.ParamByName('ST').asString := 'C'
     Else
          Query_list.ParamByName('ST').asString := 'N';
     Query_list.open;
     Query_list.FetchAll;
     Query_list.RecordCount;
end;

procedure TFrame_CreditReceiptBook.CheckBox_CancelledClick(Sender: TObject);
begin
     BitBtn_ListClick(Sender);
     DBGrid_List.Columns[6].Visible := CheckBox_Cancelled.Checked;
end;

constructor TFrame_CreditReceiptBook.Create(AOwner: Tcomponent);

begin
     inherited;

     Initialize;
end;

procedure TFrame_CreditReceiptBook.DBGrid_ListDblClick(Sender: TObject);
begin
     if (not Query_list.Active) OR (Query_list.RecordCount = 0) OR (Query_list.fieldbyname('ST').asString = 'C') then
          Exit;

     {Form_Main.loaddata(Query_list.fieldbyname('ReceiptID').asInteger);}
     Query_list.close;
     Query_list.open;
end;

procedure TFrame_CreditReceiptBook.DBGrid_ListDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
     State: TGridDrawState);
begin
     If Query_list.fieldbyname('ST').asString = 'C' Then
     begin
          DBGrid_List.Canvas.Brush.Color := cl3DLight;
          DBGrid_List.Canvas.Font.Color := clRed;
          DBGrid_List.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end
end;

destructor TFrame_CreditReceiptBook.Destroy;
begin
     //
     inherited;
end;

procedure TFrame_CreditReceiptBook.Edit_ReceiptChange(Sender: TObject);
var
     Str, Key: String;
begin
     Str := '';
     Key := TRIM(Edit_Receipt.Text);
     if Key <> '' then
          Str := Str + ' AND ReceiptDate=' + #39 + Key + '*' + #39;
     Key := TRIM(Edit_Bill.Text);
     if Key <> '' then
          Str := Str + ' AND ReceiptNo=' + #39 + COPY(Key, 1, 6) + '*' + #39;
     Key := StringReplace(TRIM(Edit_Hno.Text), '''', '''''', [rfReplaceAll]);
     if Key <> '' then
          Str := Str + ' AND HNo=' + #39 + Key + '*' + #39;
     Key := StringReplace(TRIM(Edit_Patient.Text), '''', '''''', [rfReplaceAll]);
     if Key <> '' then
          Str := Str + ' AND PatientName=' + #39 + Key + '*' + #39;
     // STR:=STR+' AND FYEAR='+#39+MaskEdit_FYear.Text+#39;
     TRY
          Query_list.Filtered := False;
          if TRIM(Str) <> '' then
          begin
               Str := COPY(Str, 5, LENGTH(Str));
               Query_list.Filter := Str;
               Query_list.Filtered := TRUE;
          end;
     Except
     End;
end;

procedure TFrame_CreditReceiptBook.Initialize;
var
     Str,ls_TodysDate: String;
begin
     ls_TodysDate:= TodaysDate;
     Edit_Receipt.Text := ls_TodysDate;
     str:=FYFinder(ls_TodysDate);
     MaskEdit_FYear.Text := Str;
     CheckBox_Cancelled.Checked := False;
     BitBtn_List.Click;
end;

procedure TFrame_CreditReceiptBook.SpeedButton2Click(Sender: TObject);
var
     Qry, QryB: TOraQuery;
     ls_TodaysDate : String;
begin
     ls_TodaysDate := TodaysDate;
     if Query_list.fieldbyname('ReceiptDate').asString <  ls_TodaysDate then
     begin
          messagedlg('Sorry, Receipt can only be cancelled within 1 day.', mtinformation, [mbok], 0);
          Exit;
     end;

     if (not Query_list.Active) OR (Query_list.RecordCount = 0) then
          Exit;

     if Query_list.fieldbyname('ST').asString = 'C' then
     begin
          messagedlg('Sorry, Receipt already cancelled.', mtinformation, [mbok], 0);
          Exit;
     end;
     if messagedlg('Are you sure?', mtconfirmation, [mbyes, mbno], 0) = mrno then
          Exit;
     Qry := TOraQuery.Create(nil);
     QryB := TOraQuery.Create(nil);

     DM_Hospital.DB.StartTransaction;
     try
          with Qry do
          begin
               close;
               DatabaseName := gs_DatabaseName;
               sql.add('SELECT * FROM CreditReceiptDetail WHERE ReceiptID=' + Query_list.fieldbyname('ReceiptID').asString);
               open;
               first;
               QryB.DatabaseName := gs_DatabaseName;
               while not eof do
               begin
                    QryB.close;
                    QryB.sql.Clear;
                    if fieldbyname('Flag').asString = 'S' then
                    begin
                         QryB.sql.add('UPDATE SaleMaster SET CASHED=''N'' ');
                         QryB.sql.add('WHERE SaleMasterID=' + fieldbyname('SaleMasterID').asString);
                    End
                    Else if fieldbyname('Flag').asString = 'R' then
                    begin
                         QryB.sql.add('UPDATE ReturnMaster SET CASHED=''N'' ');
                         QryB.sql.add(' WHERE ReturnMasterID=' + fieldbyname('SaleMasterID').asString);
                    end;
                    QryB.ExecSQL;
                    next;
               end;

               close;
               sql.Clear;
               sql.add('UPDATE CreditReceiptMaster SET ST=''C'',');
               sql.add(' CancelledBy=' + #39 + 'MIDAS' + #39); // global variable gs_username
               sql.add(' , CancelDate=' + #39 + ls_TodaysDate + #39);
               sql.add(' WHERE ReceiptID=' + Query_list.fieldbyname('ReceiptID').asString);
               ExecSQL;
          end;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
     Except
          DM_Hospital.DB.Rollback;
          messagedlg('Sorry, unable to cancel.', mtinformation, [mbok], 0);
     End;
     Qry.close;
     Qry.Free;
     DBGrid_List.SetFocus;
     Query_list.close;
     Query_list.open;
end;

end.
