unit Unit_FractionSetup_Special;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ExtCtrls, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ComCtrls, Db, Variants,
     DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Spin, Fxn, ServerDate;

type
     TForm_FractionSetup_Specail = class(TForm)
          StatusBar1: TStatusBar;
          PageControl1: TPageControl;
          Panel1: TPanel;
          DS_Doctor: TDataSource;
          Query_Doctor: TOraQuery;
          Query_Process: TOraQuery;
          BtnSave: TBitBtn;
          BtnCancel: TBitBtn;
    Query_FractionSplList: TOraQuery;
    DS_FractionSplList: TDataSource;
          BtnNew: TBitBtn;
    PGC_FractionSetup: TPageControl;
    TS_FractionSetupList: TTabSheet;
    btnSPB_Preview: TSpeedButton;
    btn1: TSpeedButton;
    btnSPB_Delete: TSpeedButton;
    dbgrd1: TDBGrid;
    edit_Doctor: TEdit;
    TS_NewFractionSetup: TTabSheet;
    lbl4: TLabel;
    btnSPB_PosWiseSetup2nd: TSpeedButton;
    Edit_RateGen: TEdit;
    Edit_RateSPL: TEdit;
    lbl1: TLabel;
    DBLCB_Doctor: TDBLookupComboBox;
    lbl_Spl: TLabel;
    chk_IsFractionActive: TCheckBox;
          procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure Edit_RateGenExit(Sender: TObject);
    procedure Edit_RateSPLExit(Sender: TObject);
    procedure Edit_RateGenKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_RateSPLKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edit_DoctorChange(Sender: TObject);
    procedure btnSPB_DeleteClick(Sender: TObject);

     private
          { Private declarations }
          Is_Fixed_Empty, pb_IsNew, b_IsSendToExcel: Boolean;
          pi_FrctSplId: Integer;
          pf_TestPrice: Double;

          ps_IsFractionActive: string;

          Procedure FractionRateAmountCalculation;

     public

          { Public declarations }
     end;

var
     Form_FractionSetup_Specail: TForm_FractionSetup_Specail;

implementation

uses Unit_Message, Unit_PositionWiseFractionSetup, Unit_QRFraction, DBgridExportToExcel,
     Unit_DoctorWiseFrctSetup, DM, Unit_Master;
{$R *.DFM}

procedure TForm_FractionSetup_Specail.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_FractionSetup_Specail.BtnNewClick(Sender: TObject);
begin
     PGC_FractionSetup.ActivePageIndex:=1;
     TS_FractionSetupList.TabVisible:=False;
     TS_NewFractionSetup.TabVisible:=True;
     chk_IsFractionActive.Checked:=True;
     pb_IsNew:=True;
     BtnNew.Enabled:=False;
     BtnSave.Enabled:=True;
     Edit_RateGen.Text:='';
     Edit_RateSPL.Text:='';
     DBLCB_Doctor.KeyValue:='';
     DBLCB_Doctor.Enabled:=True;
     DBLCB_Doctor.SetFocus;
end;

procedure TForm_FractionSetup_Specail.BtnSaveClick(Sender: TObject);
begin
     if PGC_FractionSetup.ActivePageIndex=1 then
     begin
          if Trim(DBLCB_Doctor.Text)='' then
          begin
               MessageDlg('Doctor Selection is Compulsory',mtWarning,[mbOK],0);
               DBLCB_Doctor.SetFocus;
               Exit;
          end;

          if Trim(Edit_RateGen.Text)='' then Edit_RateGen.Text:='0';
          if Trim(Edit_RateSPL.Text)='' then Edit_RateSPL.Text:='0';

          if chk_IsFractionActive.Checked=True then
          ps_IsFractionActive:='Y'
          else
          ps_IsFractionActive:='N';

          if pb_IsNew then
          begin
               pi_FrctSplId:=GetMaxId('HS_Frsp_FractionSpecial','Frsp_FrctSplId');
               with Query_Process do
               begin
                    Close;
                    SQL.Clear;
                    SQL.Add(' Insert Into hs_frsp_FractionSpecial(frsp_FrctSplId,FRSP_DocCode,frsp_FractionRateGEN,frsp_FractionRateSPL,');
                    SQL.Add(' frsp_IsFractionActive,frsp_DataPostBy,frsp_DataPostDate,frsp_DataPostTime) Values ('+IntToStr(pi_FrctSplId));
                    SQL.Add(' ,'+#39+DBLCB_Doctor.KeyValue+#39+','+Edit_RateGen.Text+','+Edit_RateSPL.Text);
                    SQL.Add(' ,'+#39+ps_IsFractionActive+#39+','+IntToStr(gi_UserID)+','+#39+ServerDate.TodaysDate+#39+','+#39+ServerDate.TodaysTime+#39+')');
                    ExecSQL;
               end;
          end
          else
          begin
               with Query_Process do
               begin
                    Close;
                    SQL.Clear;
                    SQL.Add(' Update hs_frsp_FractionSpecial Set frsp_FractionRateGEN='+Edit_RateGen.Text);
                    SQL.Add(' ,frsp_FractionRateSPL='+Edit_RateSPL.Text+',frsp_IsFractionActive='+#39+ps_IsFractionActive+#39);
                    SQL.Add(' ,frsp_DataPostBy='+IntToStr(gi_UserID)+',frsp_DataPostDate='+#39+TodaysDate+#39);
                    SQL.Add(' ,frsp_DataPostTime='+#39+TodaysTime+#39+' where frsp_FrctSplId='+IntToStr(pi_FrctSplId));
                    ExecSQL;
               end;
          end;
          ShowDoneMessage;
          PGC_FractionSetup.ActivePageIndex:=0;
          TS_FractionSetupList.TabVisible:=True;
          TS_NewFractionSetup.TabVisible:=False;
          Query_FractionSplList.Close;
          Query_FractionSplList.Open;
          Query_FractionSplList.Locate('FrctSplId',pi_FrctSplId,[]);
          BtnSave.Enabled:=False;
          BtnNew.Enabled:=True;
     end;
end;

procedure TForm_FractionSetup_Specail.btnSPB_DeleteClick(Sender: TObject);
begin
     if ((gi_UserID=1) or (gi_UserID=9)) then
     begin
          If MessageDlg('Are you sure you want to delete this Fraction Details?', mtConfirmation, [mbYes,MbNo], 0) = mrYes then
          begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.Add(' Delete From hs_frsp_FractionSpecial where frsp_FRCTSPLID=' + IntToStr(Query_FractionSplList.FieldbyName('FRCTSPLID').AsInteger));
                    ExecSQL;
               End;
          end;
          Query_FractionSplList.Close;
          Query_FractionSplList.Open;
     end
     else
     begin
          MessageDlg('Please Contact your System Administrator to delete fraction details !', mtConfirmation, [mbok], 0);
     end;
end;

procedure TForm_FractionSetup_Specail.dbgrd1DblClick(Sender: TObject);
begin
     pi_FrctSplId:=Query_FractionSplList.FieldByName('FrctSplId').AsInteger;
     DBLCB_Doctor.KeyValue:=Query_FractionSplList.FieldByName('Doccode').AsString;
     DBLCB_Doctor.Enabled:=False;
     pb_IsNew:=False;
     Edit_RateGen.Text:=FloatToStr(Query_FractionSplList.FieldByName('FractionRateGEN').AsFloat);
     Edit_RateSPL.Text:=FloatToStr(Query_FractionSplList.FieldByName('FractionRateSPL').AsFloat);
     if Query_FractionSplList.FieldByName('IsFractionActive').AsString='Y' then
     chk_IsFractionActive.Checked:=True
     else
     chk_IsFractionActive.Checked:=False;

     PGC_FractionSetup.ActivePageIndex:=1;
     TS_FractionSetupList.TabVisible:=False;
     TS_NewFractionSetup.TabVisible:=True;

     BtnNew.Enabled:=False;
     BtnSave.Enabled:=True;
     Edit_RateGen.SetFocus;
end;

procedure TForm_FractionSetup_Specail.dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     IF Query_FractionSplList.FieldByName('ISFRACTIONACTIVE').AsString = 'N' Then
     Begin
          dbgrd1.Canvas.Font.Color := clRed;
          dbgrd1.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
end;

procedure TForm_FractionSetup_Specail.Edit_RateGenExit(Sender: TObject);
begin
     IF Trim(Edit_RateGen.Text) = '' Then
          Edit_RateGen.Text := '0';

     IF StrToFloat(Edit_RateGen.Text) > 100 Then
     Begin
          MessageDlg('Percent Exceeds 100. Check It Out.', mtWarning, [mbok], 0);
          Edit_RateGen.SetFocus;
          Exit;
     End;
end;

procedure TForm_FractionSetup_Specail.Edit_RateGenKeyPress(Sender: TObject; var Key: Char);
begin
     if Key in [#8] then
          Exit;
     AvoidMultipleDecimal(Edit_RateGen, Key);
     Key := Key;
end;

procedure TForm_FractionSetup_Specail.Edit_RateSPLExit(Sender: TObject);
begin
     IF Trim(Edit_RateSPL.Text) = '' Then
          Edit_RateSPL.Text := '0';

     IF StrToFloat(Edit_RateSPL.Text) > 100 Then
     Begin
          MessageDlg('Percent Exceeds 100. Check It Out.', mtWarning, [mbok], 0);
          Edit_RateSPL.SetFocus;
          Exit;
     End;
end;

procedure TForm_FractionSetup_Specail.Edit_RateSPLKeyPress(Sender: TObject; var Key: Char);
begin
     if Key in [#8] then
          Exit;
     AvoidMultipleDecimal(Edit_RateSPL, Key);
     Key := Key;
end;

procedure TForm_FractionSetup_Specail.edit_DoctorChange(Sender: TObject);
begin
     Edit_Doctor.Text := StringReplace(Edit_Doctor.Text, '''', '''''', [rfReplaceAll]);
     with Query_FractionSplList do
     Begin
          IF Trim(Edit_Doctor.Text) <> '' Then
          Begin
               Filter := 'DOC=' + #39 + Edit_Doctor.Text + '*' + #39;
               Filtered := True;
          End
          Else
               Filtered := False;
     End;
end;

procedure TForm_FractionSetup_Specail.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_FractionSetup_Specail.FormShow(Sender: TObject);
begin
     PGC_FractionSetup.ActivePageIndex:=0;
     TS_FractionSetupList.TabVisible:=True;
     TS_NewFractionSetup.TabVisible:=False;
     Query_FractionSplList.Close;
     Query_FractionSplList.Open;
     Query_Doctor.Close;
     Query_Doctor.Open;
end;

procedure TForm_FractionSetup_Specail.FractionRateAmountCalculation;
begin

end;

END.
