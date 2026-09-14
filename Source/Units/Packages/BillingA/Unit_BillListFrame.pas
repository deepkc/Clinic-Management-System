unit Unit_BillListFrame;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, Spin, OleCtrls,
     fxn, dm, ServerDate,
     DateEditXControl_TLB, DB, DBTables;

type
     TFrame_BillList = class(TFrame)
          Panel2: TPanel;
          Panel1: TPanel;
          Label2: TLabel;
          Edit_Billno: TEdit;
          Edit_Billdate: TEdit;
          DBGrid1: TDBGrid;
          CB_BillType: TComboBox;
          Edit_HosNo: TEdit;
          Label21: TLabel;
          lbl_Billno: TLabel;
          Edit_PatientName: TEdit;
          GroupBox1: TGroupBox;
          Label4: TLabel;
          SpeedButton2: TSpeedButton;
          Label5: TLabel;
          SpeedButton3: TSpeedButton;
          Dex_From: TDateEditX;
          Dex_To: TDateEditX;
          GroupBox2: TGroupBox;
          Label6: TLabel;
          Label7: TLabel;
          Se_Days: TSpinEdit;
          QueryList: TQuery;
          Ds_List: TDataSource;
          DBGrid2: TDBGrid;
          QueryListR: TQuery;
          Ds_listR: TDataSource;
    BB_Refresh: TBitBtn;
    Label1: TLabel;
    Edit_Search: TEdit;
          procedure Edit_HosNoChange(Sender: TObject);
          procedure Edit_BillnoChange(Sender: TObject);
          procedure Edit_PatientNameChange(Sender: TObject);
          procedure Edit_BilldateChange(Sender: TObject);
          procedure QueryListAfterScroll(DataSet: TDataSet);
          procedure Se_DaysChange(Sender: TObject);
          procedure Se_DaysKeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure BB_RefreshClick(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure SpeedButton3Click(Sender: TObject);
          procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
          procedure DBGrid2CellClick(Column: TColumn);
          procedure QueryListRAfterScroll(DataSet: TDataSet);
    procedure Edit_SearchChange(Sender: TObject);
    procedure Edit_SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_SearchKeyPress(Sender: TObject; var Key: Char);
     private
          { Private declarations }
     public
          { Public declarations }
          constructor Create(AOwner: TComponent); override;
     end;

implementation

uses Unit_BillingParent;
{$R *.dfm}
{ TFrame_BillList }

procedure TFrame_BillList.BB_RefreshClick(Sender: TObject);
begin
     gs_From := Dex_From.text;
     gs_to := Dex_To.text;

     with QueryListR do
     begin
          { SERVICE
            FINAL BILL
            DEPOSIT
            ADVANCE
            REFUND
          }
          Close;
          if CB_BillType.ItemIndex = 0 then
          begin
               SQL[0] := 'SELECT DISTINCT PATIENTID,PATIENTNAME FROM VW_UNPAIDBILL';
          end
          else if CB_BillType.ItemIndex = 1 then
          begin
               SQL[0] := 'SELECT DISTINCT PATIENTID,PATIENTNAME FROM VW_PAIDBILL';
          end
          else if CB_BillType.ItemIndex = 2 then
          begin
               SQL[0] := 'SELECT DISTINCT PATIENTID,PATIENTNAME FROM VW_DEPOSITBILL';
          end
          else if CB_BillType.ItemIndex = 4 then
          begin
               SQL[0] := 'SELECT DISTINCT PATIENTID,PATIENTNAME FROM VW_REFUNDBILL';
          end;
          SQL[1] := 'Where Billdate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39;
          Open;
     end;
     if QueryListR.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := QueryListR.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;

     with QueryList do
     begin
          Close;
          if CB_BillType.ItemIndex = 0 then
          begin
               SQL[0] := 'SELECT * FROM VW_UNPAIDBILL';
          end
          else if CB_BillType.ItemIndex = 1 then
          begin
               SQL[0] := 'SELECT * FROM VW_PAIDBILL';
          end
          else if CB_BillType.ItemIndex = 2 then
          begin
               SQL[0] := 'SELECT * FROM VW_DEPOSITBILL';
               with DBGrid1 do
               begin
                    Columns[1].Title.Caption := 'Deposit No.';
                    Columns[3].Title.Caption := 'Deposit Date';
                    Columns[4].Title.Caption := 'Deposit Time';
                    Columns[5].Visible := false;
                    Columns[7].Visible := false;
               end;
          end
          else if CB_BillType.ItemIndex = 4 then
          begin
               SQL[0] := 'SELECT * FROM VW_REFUNDBILL';
               with DBGrid1 do
               begin
                    Columns[1].Title.Caption := 'Refund No.';
                    Columns[3].Title.Caption := 'Refund Date';
                    Columns[4].Title.Caption := 'Refund Time';
                    Columns[6].Visible := false;
                    Columns[7].Visible := false;
               end;
          end;
          SQL[1] := 'Where Billdate Between ' + #39 + gs_From + #39 + ' and ' + #39 + gs_to + #39;
          SQL[3] := 'And PatientID=' + IntToStr(gi_PatientID);
          Open;
     end;
end;

constructor TFrame_BillList.Create(AOwner: TComponent);
Var
     Sender: TObject;
begin
     inherited;
     CB_BillType.ItemIndex := 0;
     if (gi_billcase = 1) or (gi_billcase = 0) then
     begin
          CB_BillType.Enabled := false;
     end;
     // with QueryList do
     // begin
     // Close;
     // SQL[1]:='Where Billdate='+#39+TodaysDate+#39;
     // Open;
     // end;
     DBGrid2.Columns[0].Title.Caption := Gs_PatientIdCaption;
     Dex_From.SystemOfDate := gi_datesystem;
     Dex_To.SystemOfDate := gi_datesystem;
     SpeedButton2.Caption := gs_DateCaption;
     SpeedButton3.Caption := gs_DateCaption;
     Dex_From.text := gs_From;
     Dex_To.text := gs_to;
     DBGrid2.Color := clWebLightSeaGreen;
     DBGrid1.Color := clWebLightBlue;
     BB_RefreshClick(Sender);
end;

procedure TFrame_BillList.DBGrid1DblClick(Sender: TObject);
begin
     if Gb_isServiceBill then
          gi_billcase := 1;


     Form_BillingParent.BB_FinalBillingClick(Sender);
end;

procedure TFrame_BillList.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          Form_BillingParent.BB_FinalBillingClick(Sender);
end;

procedure TFrame_BillList.DBGrid2CellClick(Column: TColumn);
begin
     if QueryListR.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := QueryListR.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;

     with QueryList do
     begin
          Close;
          SQL[3] := 'And PatientID=' + IntToStr(gi_PatientID);
          Open;
     end;
end;

procedure TFrame_BillList.Edit_SearchChange(Sender: TObject);
begin
     if trim(Edit_Search.Text) <> '' then
     begin
          if IsStrANumber(Edit_Search.Text) then
          begin
               Edit_HosNo.Text := Edit_Search.Text;
               Edit_HosNoChange(Sender);
          end
          else
          begin
               Edit_PatientName.Text := Edit_Search.Text;
               Edit_PatientNameChange(Sender);
          end;
     end
     else
     begin
          Edit_HosNo.Clear;
          Edit_PatientName.Clear;
          BB_RefreshClick(Sender);
     end;
end;

procedure TFrame_BillList.Edit_SearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=vk_up then
     QueryListR.Prior;
     if key=VK_DOWN then
     QueryListR.Next;
end;

procedure TFrame_BillList.Edit_SearchKeyPress(Sender: TObject; var Key: Char);
begin
     if (key=#13) and (queryList.FieldByName('PatientId').AsString<>'') then
     begin
          key:=#0;
          DBGrid1DblClick(Sender);
     end;
end;
procedure TFrame_BillList.Edit_BilldateChange(Sender: TObject);
begin
     Edit_Billdate.text := StringReplace(Edit_Billdate.text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF Trim(Edit_Billdate.text) <> '' Then
          Begin
               Filter := 'BillDate =' + #39 + Edit_Billdate.text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TFrame_BillList.Edit_BillnoChange(Sender: TObject);
begin
     Edit_Billno.text := StringReplace(Edit_Billno.text, '''', '''''', [rfReplaceAll]);
     with QueryList do
     Begin
          IF Trim(Edit_Billno.text) <> '' Then
          Begin
               Filter := 'BillNo =' + #39 + Edit_Billno.text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TFrame_BillList.Edit_HosNoChange(Sender: TObject);
begin
     Edit_HosNo.text := StringReplace(Edit_HosNo.text, '''', '''''', [rfReplaceAll]);
     with QueryListR do
     Begin
          IF Trim(Edit_HosNo.text) <> '' Then
          Begin
               Filter := 'PatientId =' + Edit_HosNo.text;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
     BB_RefreshClick(Sender);
end;

procedure TFrame_BillList.Edit_PatientNameChange(Sender: TObject);
begin
     Edit_PatientName.text := StringReplace(Edit_PatientName.text, '''', '''''', [rfReplaceAll]);
     with QueryListR do
     Begin
          IF Trim(Edit_PatientName.text) <> '' Then
          Begin
               Filter := 'PatientName =' + #39 + Edit_PatientName.text + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
     BB_RefreshClick(Sender);
end;

procedure TFrame_BillList.QueryListAfterScroll(DataSet: TDataSet);
begin
     gi_PatientID := QueryList.FieldByName('PatientId').AsInteger;
     gs_PatientName := QueryList.FieldByName('PatientName').AsString;
     Gs_BillNo := QueryList.FieldByName('BillNo').AsString;
     lbl_Billno.Caption := Gs_BillNo;
     with Form_BillingParent do
     begin
          try
               lbl_Hosno.Caption := IntToStr(gi_PatientID);
               lbl_patientname.Caption := gs_PatientName;
               lbl_InpatientNo.Caption := IntToStr(gi_InPatientID);
          except

          end;
     end;
end;

procedure TFrame_BillList.QueryListRAfterScroll(DataSet: TDataSet);
begin
     if QueryListR.FieldByName('PatientId').AsString <> '' then
          gi_PatientID := QueryListR.FieldByName('PatientId').AsInteger
     else
          gi_PatientID := 0;

     with QueryList do
     begin
          Close;
          SQL[3] := 'And PatientID=' + IntToStr(gi_PatientID);
          Open;
     end;
end;

procedure TFrame_BillList.Se_DaysChange(Sender: TObject);
begin
     if Se_Days.text <> '' then
     begin
          if StrToInt(Se_Days.text) < 0 then
               Se_Days.text := '0';
     end;
end;

procedure TFrame_BillList.Se_DaysKeyPress(Sender: TObject; var Key: Char);
begin
     if not(Key in ['0' .. '9', #8]) then
          Key := #8;
end;

procedure TFrame_BillList.SpeedButton2Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_From, SpeedButton2);
end;

procedure TFrame_BillList.SpeedButton3Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_To, SpeedButton3);
end;

end.
