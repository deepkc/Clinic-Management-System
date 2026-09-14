unit Unit_DoctorWiseFrctSetup;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     ExtCtrls, ComCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, Db, Variants,
     DBTables;

type
     TForm_DoctorWiseFrctSetup = class(TForm)
          Panel1: TPanel;
          BtnSave: TBitBtn;
          BtnCancel: TBitBtn;
          StatusBar1: TStatusBar;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          DBGridCommType: TDBGrid;
          Edit_Rate: TEdit;
          CB_STD: TCheckBox;
          Label8: TLabel;
          Label9: TLabel;
          LabelA: TLabel;
          Query_TestName: TQuery;
          DS_TestName: TDataSource;
          DBLCB_TestName: TDBLookupComboBox;
          Query_PositionWiseFraction: TQuery;
          DS_PositionWiseFraction: TDataSource;
          Query_Void: TQuery;
          Label1: TLabel;
          LabelCommAmt: TLabel;
          Label2: TLabel;
          SBDelete: TSpeedButton;
          CB_FractionProportional: TCheckBox;
          Label3: TLabel;
          Label_TestPrice: TLabel;
          Edit_RateAmt: TEdit;
          Label5: TLabel;
          Label6: TLabel;
          Label11: TLabel;
          Label12: TLabel;
          Label13: TLabel;
          Label14: TLabel;
          CB_CompForFration: TCheckBox;
          Label10: TLabel;
          Label15: TLabel;
          DBLCB_Position: TDBLookupComboBox;
          Query_Position: TQuery;
          DS_Position: TDataSource;
          Label16: TLabel;
          Label_FractionFor: TLabel;
          DBLCB_DefaultDocPos: TDBLookupComboBox;
          Query_DocPerson: TQuery;
          DS_DocPerosn: TDataSource;
          SpeedButton1: TSpeedButton;
          CB_IsActiveParticipant: TCheckBox;
          Label_Percent: TLabel;
          Label_Amt: TLabel;
          Label18: TLabel;
          BtnNew: TBitBtn;
          Label4: TLabel;
          Label17: TLabel;
          Label_Mode: TLabel;
          procedure FormShow(Sender: TObject);
          procedure BtnCancelClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBLCB_TestNameClick(Sender: TObject);
          procedure BtnSaveClick(Sender: TObject);
          procedure DBGridCommTypeDblClick(Sender: TObject);
          procedure Edit_RateKeyPress(Sender: TObject; var Key: Char);
          procedure DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure SBDeleteClick(Sender: TObject);
          procedure Edit_RateAmtKeyPress(Sender: TObject; var Key: Char);
          procedure SB_mattypeClick(Sender: TObject);
          procedure DBLCB_PositionKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_RateAmtExit(Sender: TObject);
          procedure DBGridCommTypeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
               State: TGridDrawState);
          procedure Edit_RateExit(Sender: TObject);
          procedure BtnNewClick(Sender: TObject);
     private
          Procedure ReadyForNewData;

          { Private declarations }
     public
          b_IsNew: Boolean;
          pi_POSITIONWISEFRACTIONID, pi_DOCTORWISEFRACTIONID: Integer;
          pf_TestPrice: Double;
          ps_FractionFor: String;

          pi_DocId: Integer;
          { Public declarations }
     end;

var
     Form_DoctorWiseFrctSetup: TForm_DoctorWiseFrctSetup;

implementation

uses Fxn, Unit_Message, DM, Unit_Master, Unit_Position;
{$R *.DFM}

procedure TForm_DoctorWiseFrctSetup.FormShow(Sender: TObject);
begin
     Query_TestName.Close;
     Query_TestName.Open;
     Query_Position.Close;
     Query_Position.Open;

     Query_DocPerson.Close;
     Query_DocPerson.Open;

     DBLCB_DefaultDocPos.Left := 76;

     IF DBLCB_TestName.KeyValue <> NULL Then
          DBLCB_TestNameClick(Sender);

     ReadyForNewData;
end;

procedure TForm_DoctorWiseFrctSetup.ReadyForNewData;
begin
     b_IsNew := True;
     Label_Mode.Caption := 'New Mode';
     Edit_Rate.Text := '';
     Edit_RateAmt.Text := '';
     DBLCB_DefaultDocPos.KeyValue := NULL;
     CB_FractionProportional.Checked := False;
     CB_CompForFration.Checked := False;
     DBLCB_DefaultDocPos.SetFocus;
end;

procedure TForm_DoctorWiseFrctSetup.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_DoctorWiseFrctSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = 27 Then
          Close;
     IF Key = VK_F2 Then
          CB_FractionProportional.Checked := Not(CB_FractionProportional.Checked);
     IF Key = VK_F12 Then
          BtnSaveClick(Sender);
end;

procedure TForm_DoctorWiseFrctSetup.DBLCB_TestNameClick(Sender: TObject);
begin
     IF DBLCB_TestName.KeyValue = NULL Then
          Exit;
     With Query_PositionWiseFraction do
     Begin
          Close;
          ParamByName('FractionId').AsInteger := DBLCB_TestName.KeyValue;
          Open;
     End;
     LabelCommAmt.Caption := Query_TestName.FieldByName('FRACTIONAMOUNT').AsString + ' (Rs.)' + ' ( ' + Query_TestName.FieldByName
       ('FRACTIONRATE').AsString + ' (%)' + ' )';
end;

procedure TForm_DoctorWiseFrctSetup.BtnSaveClick(Sender: TObject);
var
     lf_StdAmt, lf_TotAmt: Double;
     ls_Name: String;
     li_DocId: Integer;
begin
     IF DBLCB_TestName.KeyValue = NULL Then
     Begin
          MessageDlg('Plz. First Select Test Name.', mtInformation, [mbok], 0);
          DBLCB_TestName.SetFocus;
          Exit;
     End;

     IF (DBLCB_DefaultDocPos.KeyValue = NULL) Then
     Begin
          MessageDlg('Plz. Choose Doctor/Tech. for Fixed Person(Position) Getting Fraction.', mtInformation, [mbok], 0);
          DBLCB_DefaultDocPos.SetFocus;
          Exit;
     End;

     IF DBLCB_Position.KeyValue = NULL Then
     Begin
          MessageDlg('Plz. First Select Position.', mtInformation, [mbok], 0);
          DBLCB_Position.SetFocus;
          Exit;
     End;

     IF DBLCB_DefaultDocPos.KeyValue = NULL Then
     Begin
          MessageDlg('Plz. Choose Doctor for Position Wise Fraction.', mtInformation, [mbok], 0);
          DBLCB_DefaultDocPos.SetFocus;
          Exit;
     End;

     IF (Trim(Edit_Rate.Text) = '') and (Trim(Edit_RateAmt.Text) = '') Then
     Begin
          MessageDlg('Plz. Put Fraction.', mtInformation, [mbok], 0);
          Edit_Rate.SetFocus;
          Exit;
     End;

     IF Trim(Edit_RateAmt.Text) = '' Then
          Edit_RateAmt.Text := '0';
     IF (Trim(Edit_Rate.Text) = '') and (StrToFloat(Edit_RateAmt.Text) > 0) Then
          Edit_RateAmtExit(Sender);

     IF DBLCB_DefaultDocPos.KeyValue <> NULL Then
     Begin
          li_DocId := DBLCB_DefaultDocPos.KeyValue;
          ls_Name := DBLCB_DefaultDocPos.Text;
     End
     Else
     Begin
          li_DocId := 0;
          ls_Name := '';
     End;

     IF (StrToFloat(Label_TestPrice.Caption) > 0) and (((StrToFloat(Edit_Rate.Text) <= 0) and (StrToFloat(Edit_RateAmt.Text) > 0)) or
            ((StrToFloat(Edit_Rate.Text) > 0) and (StrToFloat(Edit_RateAmt.Text) <= 0))) Then
     Begin
          IF ((StrToFloat(Edit_Rate.Text) <= 0) and (StrToFloat(Edit_RateAmt.Text) > 0)) Then
               Edit_RateAmtExit(Sender)
          Else
               Edit_RateExit(Sender);
     End;

     IF b_IsNew = False Then
     Begin
          IF pi_DocId <> DBLCB_DefaultDocPos.KeyValue Then
          Begin
               MessageDlg('Sorry You Cannot Change One Doctor to Another. But You Can Add New Doctor or Make Inactive For Fraction.',
                    mtWarning, [mbok], 0);
               DBLCB_DefaultDocPos.SetFocus;
               Exit;
          End;
     End;

     With Query_Void do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(FRACTIONRATE) as FRACTIONRATE,Sum(FRACTIONAMOUNT) as FRACTIONAMOUNT From ');
          sql.add(' DOCTORWISEFRACTION where FRACTIONID=' + IntToStr(DBLCB_TestName.KeyValue));
          Open;
     End;

     IF Query_TestName.FieldByName('ISRATEAMT').AsString = 'R' Then
     Begin
          lf_StdAmt := Query_TestName.FieldByName('FRACTIONRATE').AsFloat;
          IF b_IsNew Then
               lf_TotAmt := Query_Void.FieldByName('FRACTIONRATE').AsFloat + StrToFloat(Edit_Rate.Text)
          Else
               lf_TotAmt := Query_Void.FieldByName('FRACTIONRATE').AsFloat + StrToFloat(Edit_Rate.Text)
                 - Query_PositionWiseFraction.FieldByName('FRACTIONRATE').AsFloat;

          { IF lf_StdAmt < lf_TotAmt Then
            Begin
            MessageDlg('Total Commession Rate  ('+FloatToStr(lf_TotAmt)+')  Excede The Statndard Total  ('+FloatToStr(lf_StdAmt)+')  Commession Rate.',mtWarning,[mbok],0);
            Edit_Rate.SetFocus;
            Exit;
            End; }
     End
     Else
     Begin
          lf_StdAmt := Query_TestName.FieldByName('FRACTIONAMOUNT').AsFloat;
          IF b_IsNew Then
               lf_TotAmt := Query_Void.FieldByName('FRACTIONAMOUNT').AsFloat + StrToFloat(Edit_Rate.Text)
          Else
               lf_TotAmt := Query_Void.FieldByName('FRACTIONAMOUNT').AsFloat + StrToFloat(Edit_Rate.Text)
                 - Query_PositionWiseFraction.FieldByName('FRACTIONAMOUNT').AsFloat;

     End;

     IF DBLCB_Position.Text = 'SERVICE' Then { Sp. Case For Om Hospital (Service as Part of Operation) }
     Begin
          ls_Name := 'SERVICE';
          li_DocId := 0;
     End;

     IF b_IsNew Then
     Begin
          pi_DOCTORWISEFRACTIONID := GetMaxId('DOCTORWISEFRACTION', 'DOCTORWISEFRACTIONID');
          With Query_Void do
          Begin
               Close;
               sql.Clear;
               sql.add(' Insert Into DOCTORWISEFRACTION(DOCTORWISEFRACTIONID,POSITIONWISEFRACTIONID,FRACTIONID,');
               sql.add(' POSITIONNAME,POSITIONID,NAME,DOCID,FRACTIONRATE,FRACTIONAMOUNT,ISFIXEDPERSONFORFRACTION,');
               sql.add(' ISACTIVE,ISFRACTIONPROPWITHDISPER,ISCOMPFORFRACTION,');
               sql.add(' FRACTIONFOR) Values (' + IntToStr(pi_DOCTORWISEFRACTIONID) + ',' + IntToStr(pi_POSITIONWISEFRACTIONID));
               sql.add(' ,' + IntToStr(DBLCB_TestName.KeyValue) + ',' + #39 + DBLCB_Position.Text + #39 + ',' + IntToStr
                      (DBLCB_Position.KeyValue));
               sql.add(' ,' + #39 + DBLCB_DefaultDocPos.Text + #39);
               sql.add(' ,' + IntToStr(li_DocId));
               sql.add(' ,' + Edit_Rate.Text + ',' + Edit_RateAmt.Text + ',''Y''');

               IF CB_IsActiveParticipant.Checked = True Then
                    sql.add(' ,''Y''')
               Else
                    sql.add(' ,''N''');

               IF CB_FractionProportional.Checked = True Then
                    sql.add(' ,''Y''')
               Else
                    sql.add(' ,''N''');

               IF CB_CompForFration.Checked = True Then
                    sql.add(' ,''Y''')
               Else
                    sql.add(' ,''N''');
               sql.add(' ,' + #39 + ps_FractionFor + #39);
               sql.add(' )');
               ExecSQL;
          End;
     End
     Else
     Begin
          With Query_Void do
          Begin
               Close;
               sql.Clear;
               sql.add(' Update DOCTORWISEFRACTION Set ');
               sql.add(' PositionId=' + IntToStr(DBLCB_Position.KeyValue) + ',');
               sql.add(' PositionName=' + #39 + DBLCB_Position.Text + #39 + ',');
               sql.add(' Name=' + #39 + ls_Name + #39 + ',');
               sql.add(' DocId=' + IntToStr(li_DocId) + ',');
               sql.add(' FRACTIONAMOUNT=' + Edit_RateAmt.Text + ',FRACTIONRATE=' + Edit_Rate.Text);

               IF CB_IsActiveParticipant.Checked = True Then
                    sql.add(' ,IsActive=''Y''')
               Else
                    sql.add(' ,IsActive=''N''');

               IF CB_FractionProportional.Checked = True Then
                    sql.add(' ,IsFractionPropWithDisPer=''Y''')
               Else
                    sql.add(' ,IsFractionPropWithDisPer=''N''');

               IF CB_CompForFration.Checked = True Then
                    sql.add(' ,IsCompForFraction=''Y''')
               Else
                    sql.add(' ,IsCompForFraction=''N''');
               sql.add(' where DOCTORWISEFRACTIONID=' + IntToStr(pi_DOCTORWISEFRACTIONID));
               ExecSQL;
          End;
     End;

     ShowDoneMessage;

     With Query_Void do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select * From DOCTORWISEFRACTION where IsActive=''T'' and FRACTIONID=' + IntToStr(DBLCB_TestName.KeyValue));
          Open;
          IF Query_Void.FieldByName('DOCTORWISEFRACTIONID').AsInteger > 0 Then
          Begin
               Close;
               sql.Clear;
               sql.add(' Update POSITIONWISEFRACTION Set ISDOCWISEFRACTIONSETUP=''Y'' where POSITIONWISEFRACTIONID=' + IntToStr
                      (pi_POSITIONWISEFRACTIONID));
               ExecSQL;
          End
          Else
          Begin
               Close;
               sql.Clear;
               sql.add(' Update POSITIONWISEFRACTION Set ISDOCWISEFRACTIONSETUP=''N'' where POSITIONWISEFRACTIONID=' + IntToStr
                      (pi_POSITIONWISEFRACTIONID));
               ExecSQL;
          End;
     End;

     Query_PositionWiseFraction.Close;
     Query_PositionWiseFraction.Open;
     Query_PositionWiseFraction.Locate('DOCTORWISEFRACTIONID', pi_DOCTORWISEFRACTIONID, []);
     ReadyForNewData;
end;

procedure TForm_DoctorWiseFrctSetup.DBGridCommTypeDblClick(Sender: TObject);
begin
     b_IsNew := False;
     Label_Mode.Caption := 'Edit Mode';
     DBLCB_DefaultDocPos.SetFocus;
     pi_DOCTORWISEFRACTIONID := Query_PositionWiseFraction.FieldByName('DOCTORWISEFRACTIONID').AsInteger;

     IF Query_PositionWiseFraction.FieldByName('ISFIXEDPERSONFORFRACTION').AsString = 'Y' Then
          DBLCB_DefaultDocPos.KeyValue := Query_PositionWiseFraction.FieldByName('DocId').AsInteger
     Else
          DBLCB_DefaultDocPos.KeyValue := NULL;

     pi_DocId := Query_PositionWiseFraction.FieldByName('DocId').AsInteger;

     Edit_Rate.Text := Query_PositionWiseFraction.FieldByName('FRACTIONRATE').AsString;
     Edit_RateAmt.Text := Query_PositionWiseFraction.FieldByName('FRACTIONAMOUNT').AsString;

     DBLCB_Position.KeyValue := Query_PositionWiseFraction.FieldByName('PositionId').AsInteger;

     IF Query_PositionWiseFraction.FieldByName('ISFRACTIONPROPWITHDISPER').AsString = 'Y' Then
          CB_FractionProportional.Checked := True
     Else
          CB_FractionProportional.Checked := False;

     IF Query_PositionWiseFraction.FieldByName('ISCOMPFORFRACTION').AsString = 'Y' Then
          CB_CompForFration.Checked := True
     Else
          CB_CompForFration.Checked := False;

     IF Query_PositionWiseFraction.FieldByName('ISACTIVE').AsString = 'Y' Then
          CB_IsActiveParticipant.Checked := True
     Else
          CB_IsActiveParticipant.Checked := False;
end;

procedure TForm_DoctorWiseFrctSetup.Edit_RateKeyPress(Sender: TObject; var Key: Char);
begin
     if Key in [#8] then
          Exit;
     AvoidMultipleDecimal(Edit_Rate, Key);
     Key := Key;
end;

procedure TForm_DoctorWiseFrctSetup.DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Delete Then
     Begin
          DBLCB_TestName.KeyValue := NULL;
          Query_PositionWiseFraction.Close;
     End;
end;

procedure TForm_DoctorWiseFrctSetup.SBDeleteClick(Sender: TObject);
begin
     IF MessageDlg('Are You Sure To Delete Position Wise Commession SetUp ?', mtConfirmation, [mbYes, MBNo], 0) = mrYes Then
     Begin
          With Query_Void do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select * From DrProcedures where POSITIONWISEFRACTIONID=' + IntToStr(Query_PositionWiseFraction.FieldByName
                           ('POSITIONWISEFRACTIONID').AsInteger));
               Open;
               IF RecordCount > 0 Then
               Begin
                    MessageDlg('Sorry ! You Cannot Delete This Setup Because It Is Already Used In Doctor Fraction.', mtWarning, [mbok], 0);
                    Exit;
               End;
          End;

          With Query_Void do
          Begin
               Close;
               sql.Clear;
               sql.add(' Delete From DOCTORWISEFRACTION where  POSITIONWISEFRACTIONID=' + IntToStr(Query_PositionWiseFraction.FieldByName
                           ('POSITIONWISEFRACTIONID').AsInteger));
               ExecSQL;
          End;

          Query_PositionWiseFraction.Close;
          Query_PositionWiseFraction.Open;

          Frm_Message.ShowModal;
     End;
end;

procedure TForm_DoctorWiseFrctSetup.Edit_RateAmtKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          Edit_RateAmtExit(Sender);

     IF Key in [#8] Then
          Exit;
     AvoidMultipleDecimal(Edit_RateAmt, Key);
     Key := Key;
end;

procedure TForm_DoctorWiseFrctSetup.SB_mattypeClick(Sender: TObject);
begin
     With Form_Position Do
     Begin
          Try
               Form_Position := TForm_Position.Create(Application);
               ShowModal;
          Finally
               Free;
          End;
     End;
     Query_Position.Close;
     Query_Position.Open;
end;

procedure TForm_DoctorWiseFrctSetup.DBLCB_PositionKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Delete Then
          DBLCB_Position.KeyValue := NULL;
end;

procedure TForm_DoctorWiseFrctSetup.Edit_RateAmtExit(Sender: TObject);
begin
     IF Trim(Edit_RateAmt.Text) = '' Then
          Edit_RateAmt.Text := '0';
     IF (DBLCB_TestName.KeyValue <> NULL) and (pf_TestPrice > 0) and (Trim(Edit_RateAmt.Text) <> '') Then
          Edit_Rate.Text := FormatFloat('0.00000', ((StrToFloat(Edit_RateAmt.Text) / pf_TestPrice) * 100));
end;

procedure TForm_DoctorWiseFrctSetup.DBGridCommTypeDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
     State: TGridDrawState);
begin
     IF Query_PositionWiseFraction.FieldByName('IsActive').AsString = 'F' Then
     Begin
          DBGridCommType.Canvas.Font.Color := clRed;
          DBGridCommType.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
end;

procedure TForm_DoctorWiseFrctSetup.Edit_RateExit(Sender: TObject);
begin
     IF Trim(Edit_Rate.Text) = '' Then
          Edit_Rate.Text := '0';
     IF (DBLCB_TestName.KeyValue <> NULL) and (pf_TestPrice > 0) and (Trim(Edit_Rate.Text) <> '') Then
     Begin
          IF Trim(Edit_RateAmt.Text) = '' Then
               Edit_RateAmt.Text := '0';
          IF Abs((pf_TestPrice * (StrToFloat(Edit_Rate.Text)) / 100) - StrToFloat(Edit_RateAmt.Text)) > 0.5 Then
               Edit_RateAmt.Text := FormatFloat('0.00000', (pf_TestPrice * (StrToFloat(Edit_Rate.Text)) / 100));
     End;
end;

procedure TForm_DoctorWiseFrctSetup.BtnNewClick(Sender: TObject);
begin
     b_IsNew := True;
     DBLCB_DefaultDocPos.KeyValue := NULL;
     DBLCB_DefaultDocPos.SetFocus;
     CB_FractionProportional.Checked := False;
     CB_CompForFration.Checked := False;
     Edit_Rate.Text := '';
     Edit_RateAmt.Text := '';
end;

end.
