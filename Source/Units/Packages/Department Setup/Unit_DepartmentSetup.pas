unit Unit_DepartmentSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls, DBCtrls;

type
     TForm_DepartmentSetup = class(TForm)
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
          le_DepartmentCode: TLabeledEdit;
          le_DepName: TLabeledEdit;
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Query_list: TOraQuery;
          Ds_List: TDataSource;
          le_deporder: TLabeledEdit;
          Label1: TLabel;
          DBlcb_ParentDep: TDBLookupComboBox;
          le_ReportTitle: TLabeledEdit;
    CB_IsClinicalDept: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit_InpatientTax: TEdit;
    Edit_RegTax: TEdit;
    Edit_RollowupTax: TEdit;
    Edit_RegSvrTax: TEdit;
    Edit_VisitChargeSvrTax: TEdit;
    Edit_InptChargeSvrTax: TEdit;
    Edit_RegChrgTotal: TEdit;
    Edit_VisitTotal: TEdit;
    Edit_InpatientTotal: TEdit;
    CheckBoxVatInclude: TCheckBox;
    le_FreeFollowupDays: TLabeledEdit;
    le_NEWREGCHARGE: TLabeledEdit;
    le_RollowUpChrg: TLabeledEdit;
    le_InpatientChrg: TLabeledEdit;
    CB_IsChargeRoundOffGEN: TCheckBox;
    CB_IsChargeRoundOffFRG: TCheckBox;
    Label3: TLabel;
    Edit_RegTaxPVT: TEdit;
    Edit_RegSvrTaxPVT: TEdit;
    Edit_RegChrgTotalPVT: TEdit;
    le_NEWREGCHARGEPVT: TLabeledEdit;
    Label4: TLabel;
    Edit_RegTaxFRG: TEdit;
    Edit_RegSvrTaxFRG: TEdit;
    Edit_RegChrgTotalFRG: TEdit;
    le_NEWREGCHARGEFRG: TLabeledEdit;
    Label5: TLabel;
    Edit_RegTaxCARD: TEdit;
    Edit_RegSvrTaxCARD: TEdit;
    Edit_RegChrgTotalCard: TEdit;
    le_NEWREGCHARGECARD: TLabeledEdit;
    Label6: TLabel;
    Label12: TLabel;
    Edit_RollowupTaxPVT: TEdit;
    Edit_VisitChargeSvrTaxPVT: TEdit;
    Edit_VisitTotalPVT: TEdit;
    le_RollowUpChrgPVT: TLabeledEdit;
    Edit_RollowupTaxFRG: TEdit;
    Edit_VisitChargeSvrTaxFRG: TEdit;
    Edit_VisitTotalFRG: TEdit;
    le_RollowUpChrgFRG: TLabeledEdit;
          procedure PageControl1Change(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure Edit_SearchChange(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure le_NEWREGCHARGEKeyPress(Sender: TObject; var Key: Char);
    procedure le_RollowUpChrgKeyPress(Sender: TObject; var Key: Char);
    procedure le_InpatientChrgKeyPress(Sender: TObject; var Key: Char);
    procedure le_NEWREGCHARGEExit(Sender: TObject);
    procedure le_RollowUpChrgExit(Sender: TObject);
    procedure le_InpatientChrgExit(Sender: TObject);
    procedure le_FreeFollowupDaysExit(Sender: TObject);
    procedure le_NEWREGCHARGEPVTExit(Sender: TObject);
    procedure le_NEWREGCHARGEFRGExit(Sender: TObject);
    procedure le_NEWREGCHARGEPVTKeyPress(Sender: TObject; var Key: Char);
    procedure le_NEWREGCHARGEFRGKeyPress(Sender: TObject; var Key: Char);
    procedure le_NEWREGCHARGECARDExit(Sender: TObject);
    procedure le_NEWREGCHARGECARDKeyPress(Sender: TObject; var Key: Char);
    procedure le_RollowUpChrgPVTExit(Sender: TObject);
    procedure le_RollowUpChrgPVTKeyPress(Sender: TObject; var Key: Char);
    procedure le_RollowUpChrgFRGKeyPress(Sender: TObject; var Key: Char);
    procedure le_RollowUpChrgFRGExit(Sender: TObject);
     private
          pb_isnew: Boolean;
          PI_DEPID: integer;
          { Private declarations }
          Procedure SaveData;
     public
               pf_NEWREGCHARGE,pf_NEWREGSVRTAX,pf_ADMISSONCHARGE,pf_ADMISSONCHARGESVRTAX : Double;

               pf_FOLLOWUPCHARGE,pf_FOLLOWUPSVRTAX : Double;
               pf_FOLLOWUPCHARGEPVT,pf_FOLLOWUPSVRTAXPVT : Double;
               pf_FOLLOWUPCHARGEFRG,pf_FOLLOWUPSVRTAXFRG : Double;


               pf_NEWREGCHARGEPVT,pf_NEWREGSVRTAXPVT : Double;
               pf_NEWREGCHARGEFRG,pf_NEWREGSVRTAXFRG : Double;

               pf_NEWREGCHARGECARD,pf_NEWREGSVRTAXCARD : Double;



               pi_FREEFOLLOWUPDAYS : Integer;

               procedure Calculate_Tax_And_Amount;
               Procedure Set_Zero_InBlank;
               procedure Set_SvrTax_Percent;


          { Public declarations }
     end;

var
     Form_DepartmentSetup: TForm_DepartmentSetup;

implementation

Procedure SaveDepartment(DEPCODE, DEPNAME, REPORTTITLE, ISCLINICALDEP, ISCHARGEWITHSVRTAX: String;
     FREEFOLLOWUPDAYS, DEPORDER, PARENTDEPID: Integer; NEWREGCHARGE, NEWREGSVRTAX, NEWREGCHARGEPVT, NEWREGSVRTAXPVT,
     NEWREGCHARGEFRG, NEWREGSVRTAXFRG,NEWREGCHARGECARD, NEWREGSVRTAXCARD, FOLLOWUPCHARGE, FOLLOWUPSVRTAX,FOLLOWUPCHARGEPVT, FOLLOWUPSVRTAXPVT,
     FOLLOWUPCHARGEFRG, FOLLOWUPSVRTAXFRG, ADMISSONCHARGE, ADMISSONCHARGESVRTAX: Double); stdcall;
external 'MidasFunction.bpl';
Procedure UpdateDepartment(DEPCODE, DEPNAME, REPORTTITLE, ISCLINICALDEP, ISCHARGEWITHSVRTAX: String; DEPID, FREEFOLLOWUPDAYS,
     DEPORDER, PARENTDEPID: Integer; NEWREGCHARGE, NEWREGSVRTAX,NEWREGCHARGEPVT, NEWREGSVRTAXPVT,NEWREGCHARGEFRG, NEWREGSVRTAXFRG,
     NEWREGCHARGECARD, NEWREGSVRTAXCARD, FOLLOWUPCHARGE, FOLLOWUPSVRTAX,FOLLOWUPCHARGEPVT, FOLLOWUPSVRTAXPVT,FOLLOWUPCHARGEFRG, FOLLOWUPSVRTAXFRG,
     ADMISSONCHARGE, ADMISSONCHARGESVRTAX: Double); stdcall;
external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_DepartmentSetup.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.Open;
     end
     else
          Close;
end;

procedure TForm_DepartmentSetup.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
     pb_isnew := true;
     DBlcb_ParentDep.SetFocus;
     Query_Department.Close;
     Query_Department.Session:=Dm_Hospital.Db;
     Query_Department.Open;
end;

procedure TForm_DepartmentSetup.BB_SaveClick(Sender: TObject);
begin
     if (le_DepartmentCode.Text = '') or (le_DepName.Text = '') then
     begin
          MsgBox(1006, 0, '', '', '');
          exit;
     end;
     try
          SaveData;
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          Set_SvrTax_Percent;
     except
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TForm_DepartmentSetup.DBGrid1DblClick(Sender: TObject);
begin
     with Query_list do
     begin
          PageControl1.ActivePageIndex:=1;
          if FieldByName('ParentDepId').AsString<>'' then
          DBlcb_ParentDep.KeyValue:=FieldByName('ParentDepId').AsInteger;
          le_DepartmentCode.Text:=FieldByName('DepCode').AsString;
          le_DepName.Text:=FieldByName('DepName').AsString;
          le_ReportTitle.Text:=FieldByName('ReportTitle').AsString;
          le_deporder.Text:=FieldByName('Deporder').AsString;
          PI_DEPID:=FieldByName('DepID').AsInteger;


          if FieldByName('ISCLINICALDEP').AsString='Y' then
          CB_IsClinicalDept.Checked:=true
          else
          CB_IsClinicalDept.Checked:=false;

          le_FreeFollowupDays.Text:=FieldByName('FREEFOLLOWUPDAYS').asstring;
          IF FieldByName('IsChargeWithSvrTax').ASString='Y' Then
          Begin
               CheckBoxVatInclude.Checked:=True;

               le_NEWREGCHARGE.Text:=FloatToStr(Query_list.FieldByName('NewRegCharge').ASFloat + Query_list.FieldByName('NewRegSVRTax').AsFloat);
               le_NEWREGCHARGEPVT.Text:=FloatToStr(Query_list.FieldByName('NewRegChargePVT').ASFloat + Query_list.FieldByName('NewRegSVRTaxPVT').AsFloat);
               le_NEWREGCHARGEFRG.Text:=FloatToStr(Query_list.FieldByName('NewRegChargeFRG').ASFloat + Query_list.FieldByName('NewRegSVRTaxFRG').AsFloat);
               le_NEWREGCHARGECARD.Text:=FloatToStr(Query_list.FieldByName('RegistrationCharge').ASFloat + Query_list.FieldByName('RegistrationChargeSvrTax').AsFloat);

               le_RollowUpChrg.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGE').ASFloat + FieldByName('FOLLOWUPSVRTAX').AsFloat );
               le_RollowUpChrgPVT.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEPVT').ASFloat + FieldByName('FOLLOWUPSVRTAXPVT').AsFloat );
               le_RollowUpChrgFRG.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEFRG').ASFloat + FieldByName('FOLLOWUPSVRTAXFRG').AsFloat );

               le_InpatientChrg.Text:=FloatToStr(FieldByName('ADMISSONCHARGE').ASFloat + FieldByName('ADMISSONCHARGESVRTAX').AsFloat);

          End
          Else
          Begin
               CheckBoxVatInclude.Checked:=False;

               le_NEWREGCHARGE.Text:=FloatToStr(FieldByName('NewRegCharge').ASFloat);
               le_NEWREGCHARGEPVT.Text:=FloatToStr(FieldByName('NewRegChargePVT').ASFloat);
               le_NEWREGCHARGEFRG.Text:=FloatToStr(FieldByName('NewRegChargeFRG').ASFloat);
               le_NEWREGCHARGECARD.Text:=FloatToStr(Query_list.FieldByName('RegistrationCharge').ASFloat);

               le_RollowUpChrg.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGE').ASFloat);
               le_RollowUpChrg.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEPVT').ASFloat);
               le_RollowUpChrg.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEFRG').ASFloat);

               le_InpatientChrg.Text:=FloatToStr(FieldByName('ADMISSONCHARGE').ASFloat);
          End;

          pf_NEWREGCHARGE:=Query_list.FieldByName('NewRegCharge').ASFloat;
          pf_NEWREGCHARGEPVT:=Query_list.FieldByName('NewRegChargePVT').ASFloat;
          pf_NEWREGCHARGEFRG:=Query_list.FieldByName('NewRegChargeFRG').ASFloat;
          pf_NEWREGCHARGECARD:=Query_list.FieldByName('RegistrationCharge').ASFloat;

          pf_FOLLOWUPCHARGE:=FieldByName('FOLLOWUPCHARGE').ASFloat;
          pf_FOLLOWUPCHARGEPVT:=FieldByName('FOLLOWUPCHARGEPVT').ASFloat;
          pf_FOLLOWUPCHARGEFRG:=FieldByName('FOLLOWUPCHARGEFRG').ASFloat;

          pf_ADMISSONCHARGE:=FieldByName('ADMISSONCHARGE').ASFloat;

          Edit_RegSvrTax.Text:=FloatToStr(FieldByName('NewRegSVRTax').AsFloat);
          Edit_RegSvrTaxPVT.Text:=FloatToStr(FieldByName('NewRegSVRTaxPVT').AsFloat);
          Edit_RegSvrTaxFRG.Text:=FloatToStr(FieldByName('NewRegSVRTaxFRG').AsFloat);
          Edit_RegSvrTaxCARD.Text:=FloatToStr(FieldByName('RegistrationChargeSvrTax').AsFloat);

          Edit_VisitChargeSvrTax.Text:=FloatToStr(FieldByName('FOLLOWUPSVRTAX').AsFloat);
          Edit_VisitChargeSvrTaxPVT.Text:=FloatToStr(FieldByName('FOLLOWUPSVRTAXPVT').AsFloat);
          Edit_VisitChargeSvrTaxFRG.Text:=FloatToStr(FieldByName('FOLLOWUPSVRTAXFRG').AsFloat);


          Edit_InptChargeSvrTax.Text:=FloatToStr(FieldByName('ADMISSONCHARGESVRTAX').AsFloat);

          Edit_RegChrgTotal.Text:=FloatToStr(FieldByName('NewRegCharge').AsFloat+FieldByName('NewRegSVRTax').AsFloat);
          Edit_RegChrgTotalPVT.Text:=FloatToStr(FieldByName('NewRegChargePVT').AsFloat+FieldByName('NewRegSVRTaxPVT').AsFloat);
          Edit_RegChrgTotalFRG.Text:=FloatToStr(FieldByName('NewRegChargeFRG').AsFloat+FieldByName('NewRegSVRTaxFRG').AsFloat);
          Edit_RegChrgTotalCARD.Text:=FloatToStr(FieldByName('RegistrationCharge').AsFloat+FieldByName('RegistrationChargeSvrTax').AsFloat);

          Edit_VisitTotal.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGE').AsFloat+FieldByName('FOLLOWUPSVRTAX').AsFloat);
          Edit_VisitTotalPVT.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEPVT').AsFloat+FieldByName('FOLLOWUPSVRTAXPVT').AsFloat);
          Edit_VisitTotalFRG.Text:=FloatToStr(FieldByName('FOLLOWUPCHARGEFRG').AsFloat+FieldByName('FOLLOWUPSVRTAXFRG').AsFloat);

          Edit_InpatientTotal.Text:=FloatToStr(FieldByName('ADMISSONCHARGE').AsFloat+FieldByName('ADMISSONCHARGESVRTAX').AsFloat);

          Set_SvrTax_Percent;

          pb_isnew:=false;
          DBlcb_ParentDep.SetFocus;
     end;
end;

procedure TForm_DepartmentSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'DEPNAME =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_DepartmentSetup.FormCreate(Sender: TObject);
begin
     Query_list.Close;
     Query_list.Session:=Dm_Hospital.Db;
     Query_list.Open;
     Query_Department.Close;
     Query_Department.Session:=Dm_Hospital.Db;
     Query_Department.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_DepartmentSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_DepartmentSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if KEY=#13 then
     keybd_event(9,13,0,0);
end;

procedure TForm_DepartmentSetup.FormShow(Sender: TObject);
begin
     Set_SvrTax_Percent;
end;

procedure TForm_DepartmentSetup.Set_SvrTax_Percent;
Begin
     Edit_RegTax.Text:=FloatToStr(gf_TaxPercent);
     Edit_RegTaxPVT.Text:=FloatToStr(gf_TaxPercent);
     Edit_RegTaxFRG.Text:=FloatToStr(gf_TaxPercent);
     Edit_RegTaxCARD.Text:=FloatToStr(gf_TaxPercent);

     Edit_RollowupTax.Text:=FloatToStr(gf_TaxPercent);
     Edit_RollowupTaxPVT.Text:=FloatToStr(gf_TaxPercent);
     Edit_RollowupTaxFRG.Text:=FloatToStr(gf_TaxPercent);


     Edit_InpatientTax.Text:=FloatToStr(gf_TaxPercent);
End;

procedure TForm_DepartmentSetup.le_FreeFollowupDaysExit(Sender: TObject);
begin
     if Trim(le_FreeFollowupDays.Text)='' then le_FreeFollowupDays.Text:='0';

end;

procedure TForm_DepartmentSetup.le_InpatientChrgExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_InpatientChrgKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then Exit;

    AvoidMultipleDecimal(le_InpatientChrg,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_InpatientChrg.Text<>'' Then
         le_deporder.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGECARDExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGECARDKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then exit;

    AvoidMultipleDecimal(le_NEWREGCHARGECARD,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_NEWREGCHARGECARD.Text<>'' Then
         le_RollowUpChrg.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEFRGExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEFRGKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then exit;

    AvoidMultipleDecimal(le_NEWREGCHARGEFRG,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_NEWREGCHARGEFRG.Text<>'' Then
         le_NEWREGCHARGECARD.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then exit;

    AvoidMultipleDecimal(le_NEWREGCHARGE,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_NEWREGCHARGE.Text<>'' Then
         le_NEWREGCHARGEPVT.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEPVTExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_NEWREGCHARGEPVTKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then exit;

    AvoidMultipleDecimal(le_NEWREGCHARGEPVT,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_NEWREGCHARGEPVT.Text<>'' Then
         le_NEWREGCHARGEFRG.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgFRGExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgFRGKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then Exit;

    AvoidMultipleDecimal(le_RollowUpChrg,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_RollowUpChrg.Text<>'' Then
         le_InpatientChrg.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then Exit;

    AvoidMultipleDecimal(le_RollowUpChrg,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_RollowUpChrg.Text<>'' Then
         le_RollowUpChrgPVT.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgPVTExit(Sender: TObject);
begin
     Set_Zero_InBlank;
     Calculate_Tax_And_Amount;
end;

procedure TForm_DepartmentSetup.le_RollowUpChrgPVTKeyPress(Sender: TObject; var Key: Char);
begin
    IF key=#8  then Exit;

    AvoidMultipleDecimal(le_RollowUpChrg,key);
    key:=Key;

    IF Key =#13 Then
    Begin
         IF le_RollowUpChrg.Text<>'' Then
         le_RollowUpChrgFRG.SetFocus;
    End;
end;

procedure TForm_DepartmentSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_DepartmentSetup.SaveData;
Var
     DEPCODE, DEPNAME, REPORTTITLE,ls_IsClinicalDept, ls_ISCHARGEWITHSVRTAX: String;
     DEPORDER, PARENTDEPID: integer;
begin
     DEPCODE := le_DepartmentCode.Text;
     DEPNAME := le_DepName.Text;
     REPORTTITLE := le_ReportTitle.Text;
     if le_deporder.Text<>'' then
     DEPORDER := StrToInt(le_deporder.Text)
     else
     DEPORDER:=0;
     if DBlcb_ParentDep.KeyValue>0 then
     PARENTDEPID := DBlcb_ParentDep.KeyValue
     else
     PARENTDEPID:=0;

     if CB_IsClinicalDept.Checked=True then
     ls_IsClinicalDept:='Y'
     Else
     ls_IsClinicalDept:='N';

     if CheckBoxVatInclude.Checked=True then
     ls_ISCHARGEWITHSVRTAX:='Y'
     Else
     ls_ISCHARGEWITHSVRTAX:='N';

     if Trim(le_FreeFollowupDays.Text)='' then le_FreeFollowupDays.Text:='0';

     pi_FREEFOLLOWUPDAYS:=StrToInt(le_FreeFollowupDays.Text);

     pf_NEWREGSVRTAX:=StrToFloat(Edit_RegSvrTax.Text);
     pf_NEWREGSVRTAXPVT:=StrToFloat(Edit_RegSvrTaxPVT.Text);
     pf_NEWREGSVRTAXFRG:=StrToFloat(Edit_RegSvrTaxFRG.Text);
     pf_NEWREGSVRTAXCARD:=StrToFloat(Edit_RegSvrTaxCARD.Text);

     pf_FOLLOWUPSVRTAX:=StrToFloat(Edit_VisitChargeSvrTax.Text);
     pf_FOLLOWUPSVRTAXPVT:=StrToFloat(Edit_VisitChargeSvrTaxPVT.Text);
     pf_FOLLOWUPSVRTAXFRG:=StrToFloat(Edit_VisitChargeSvrTaxFRG.Text);

     pf_ADMISSONCHARGESVRTAX:=StrToFloat(Edit_InptChargeSvrTax.Text);

     if pb_isnew then
          SaveDepartment(DEPCODE, DEPNAME, REPORTTITLE, ls_IsClinicalDept,ls_ISCHARGEWITHSVRTAX,
          pi_FREEFOLLOWUPDAYS,DEPORDER, PARENTDEPID,pf_NEWREGCHARGE,pf_NEWREGSVRTAX,pf_NEWREGCHARGEPVT,pf_NEWREGSVRTAXPVT,
          pf_NEWREGCHARGEFRG,pf_NEWREGSVRTAXFRG,pf_NEWREGCHARGECARD,pf_NEWREGSVRTAXCARD,
          pf_FOLLOWUPCHARGE,pf_FOLLOWUPSVRTAX,pf_FOLLOWUPCHARGEPVT,pf_FOLLOWUPSVRTAXPVT,pf_FOLLOWUPCHARGEFRG,pf_FOLLOWUPSVRTAXFRG,
          pf_ADMISSONCHARGE,pf_ADMISSONCHARGESVRTAX)
     else
          UpdateDepartment(DEPCODE, DEPNAME, REPORTTITLE, ls_IsClinicalDept,ls_ISCHARGEWITHSVRTAX, PI_DEPID,pi_FREEFOLLOWUPDAYS, DEPORDER, PARENTDEPID,pf_NEWREGCHARGE,pf_NEWREGSVRTAX,
          pf_NEWREGCHARGEPVT,pf_NEWREGSVRTAXPVT,pf_NEWREGCHARGEFRG,pf_NEWREGSVRTAXFRG,pf_NEWREGCHARGECARD,pf_NEWREGSVRTAXCARD,
          pf_FOLLOWUPCHARGE,pf_FOLLOWUPSVRTAX,pf_FOLLOWUPCHARGEPVT,pf_FOLLOWUPSVRTAXPVT,pf_FOLLOWUPCHARGEFRG,pf_FOLLOWUPSVRTAXFRG,
          pf_ADMISSONCHARGE,pf_ADMISSONCHARGESVRTAX);
     pb_isnew := true;
end;


procedure TForm_DepartmentSetup.Calculate_Tax_And_Amount;
Begin
     IF CheckBoxVatInclude.Checked=True Then
     Begin
          IF CB_IsChargeRoundOffGEN.Checked=False Then
          Begin
               Edit_RegSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGE.Text)-(StrToFloat(le_NEWREGCHARGE.Text) / ((StrToFloat(Edit_RegTax.Text)/100)+1)),3));
               pf_NEWREGCHARGE:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGE.Text)-StrToFloat(Edit_RegSvrTax.Text),3);


               Edit_RegSvrTaxPVT.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEPVT.Text)-(StrToFloat(le_NEWREGCHARGEPVT.Text) / ((StrToFloat(Edit_RegTaxPVT.Text)/100)+1)),3));
               pf_NEWREGCHARGEPVT:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEPVT.Text)-StrToFloat(Edit_RegSvrTaxPVT.Text),3);

               Edit_RegSvrTaxFRG.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEFRG.Text)-(StrToFloat(le_NEWREGCHARGEFRG.Text) / ((StrToFloat(Edit_RegTaxFRG.Text)/100)+1)),3));
               pf_NEWREGCHARGEFRG:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEFRG.Text)-StrToFloat(Edit_RegSvrTaxFRG.Text),3);

               Edit_RegSvrTaxCard.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGECARD.Text)-(StrToFloat(le_NEWREGCHARGECARD.Text) / ((StrToFloat(Edit_RegTaxCARD.Text)/100)+1)),3));
               pf_NEWREGCHARGECARD:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGECARD.Text)-StrToFloat(Edit_RegSvrTaxCARD.Text),3);

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotal.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGE.Text)+StrToFloat(Edit_RegSvrTax.Text))
               Else
               Edit_RegChrgTotal.Text:=le_NEWREGCHARGE.Text;


               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalPVT.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEPVT.Text)+StrToFloat(Edit_RegSvrTaxPVT.Text))
               Else
               Edit_RegChrgTotalPVT.Text:=le_NEWREGCHARGEPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalFRG.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEFRG.Text)+StrToFloat(Edit_RegSvrTaxFRG.Text))
               Else
               Edit_RegChrgTotalFRG.Text:=le_NEWREGCHARGEFRG.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalCard.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGECard.Text)+StrToFloat(Edit_RegSvrTaxCard.Text))
               Else
               Edit_RegChrgTotalCard.Text:=le_NEWREGCHARGECard.Text;

               Edit_VisitChargeSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrg.Text)-(StrToFloat(le_RollowUpChrg.Text) / ((StrToFloat(Edit_RollowupTax.Text)/100)+1)),3));
               Edit_VisitChargeSvrTaxPVT.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgPVT.Text)-(StrToFloat(le_RollowUpChrgPVT.Text) / ((StrToFloat(Edit_RollowupTaxPVT.Text)/100)+1)),3));
               Edit_VisitChargeSvrTaxFRG.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgFRG.Text)-(StrToFloat(le_RollowUpChrgFRG.Text) / ((StrToFloat(Edit_RollowupTaxFRG.Text)/100)+1)),3));

               pf_FOLLOWUPCHARGE:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrg.Text)-StrToFloat(Edit_VisitChargeSvrTax.Text),3);
               pf_FOLLOWUPCHARGEPVT:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgPVT.Text)-StrToFloat(Edit_VisitChargeSvrTaxPVT.Text),3);
               pf_FOLLOWUPCHARGEFRG:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgFRG.Text)-StrToFloat(Edit_VisitChargeSvrTaxFRG.Text),3);

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotal.Text:=FloatToStr(StrToFloat(le_RollowUpChrg.Text)+StrToFloat(Edit_VisitChargeSvrTax.Text))
               Else
               Edit_VisitTotal.Text:=le_RollowUpChrg.Text;


               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalPVT.Text:=FloatToStr(StrToFloat(le_RollowUpChrgPVT.Text)+StrToFloat(Edit_VisitChargeSvrTaxPVT.Text))
               Else
               Edit_VisitTotalPVT.Text:=le_RollowUpChrgPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalFRG.Text:=FloatToStr(StrToFloat(le_RollowUpChrgFRG.Text)+StrToFloat(Edit_VisitChargeSvrTaxFRG.Text))
               Else
               Edit_VisitTotalFRG.Text:=le_RollowUpChrgFRG.Text;


               Edit_InptChargeSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_InpatientChrg.Text)-(StrToFloat(le_InpatientChrg.Text) / ((StrToFloat(Edit_InpatientTax.Text)/100)+1)),3));
               pf_ADMISSONCHARGE:=GetNoOfDecimalPartOfFloatNum(StrToFloat(le_InpatientChrg.Text)-StrToFloat(Edit_InptChargeSvrTax.Text),3);

               IF CheckBoxVatInclude.Checked=False Then
               Edit_InpatientTotal.Text:=FloatToStr(StrToFloat(le_InpatientChrg.Text)+StrToFloat(Edit_InPtChargeSvrTax.Text))
               Else
               Edit_InpatientTotal.Text:=le_InpatientChrg.Text;
          End
          Else
          Begin
               Edit_RegSvrTax.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGE.Text)-(StrToFloat(le_NEWREGCHARGE.Text) / ((StrToFloat(Edit_RegTax.Text)/100)+1))));
               Edit_RegSvrTaxPVT.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGEPVT.Text)-(StrToFloat(le_NEWREGCHARGEPVT.Text) / ((StrToFloat(Edit_RegTaxPVT.Text)/100)+1))));
               Edit_RegSvrTaxFRG.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGEFRG.Text)-(StrToFloat(le_NEWREGCHARGE.Text) / ((StrToFloat(Edit_RegTaxFRG.Text)/100)+1))));
               Edit_RegSvrTaxCARD.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGECARD.Text)-(StrToFloat(le_NEWREGCHARGE.Text) / ((StrToFloat(Edit_RegTaxCARD.Text)/100)+1))));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotal.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGE.Text)+StrToFloat(Edit_RegSvrTax.Text))
               Else
               Edit_RegChrgTotal.Text:=le_NEWREGCHARGE.Text;


               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalPVT.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEPVT.Text)+StrToFloat(Edit_RegSvrTaxPVT.Text))
               Else
               Edit_RegChrgTotalPVT.Text:=le_NEWREGCHARGEPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalFRG.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEFRG.Text)+StrToFloat(Edit_RegSvrTaxFRG.Text))
               Else
               Edit_RegChrgTotalFRG.Text:=le_NEWREGCHARGEFRG.Text;


               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalCARD.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGECARD.Text)+StrToFloat(Edit_RegSvrTaxCARD.Text))
               Else
               Edit_RegChrgTotalCARD.Text:=le_NEWREGCHARGECARD.Text;

               Edit_VisitChargeSvrTax.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrg.Text)-(StrToFloat(le_RollowUpChrg.Text) / ((StrToFloat(Edit_RollowupTax.Text)/100)+1))));
               Edit_VisitChargeSvrTaxPVT.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrgPVT.Text)-(StrToFloat(le_RollowUpChrgPVT.Text) / ((StrToFloat(Edit_RollowupTaxPVT.Text)/100)+1))));
               Edit_VisitChargeSvrTaxFRG.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrgFRG.Text)-(StrToFloat(le_RollowUpChrgFRG.Text) / ((StrToFloat(Edit_RollowupTaxFRG.Text)/100)+1))));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotal.Text:=FloatToStr(StrToFloat(le_RollowUpChrg.Text)+StrToFloat(Edit_VisitChargeSvrTax.Text))
               Else
               Edit_VisitTotal.Text:=le_RollowUpChrg.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalPVT.Text:=FloatToStr(StrToFloat(le_RollowUpChrgPVT.Text)+StrToFloat(Edit_VisitChargeSvrTaxPVT.Text))
               Else
               Edit_VisitTotalPVT.Text:=le_RollowUpChrgPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalFRG.Text:=FloatToStr(StrToFloat(le_RollowUpChrgFRG.Text)+StrToFloat(Edit_VisitChargeSvrTaxFRG.Text))
               Else
               Edit_VisitTotalFRG.Text:=le_RollowUpChrgFRG.Text;

               Edit_InptChargeSvrTax.Text:=FloatToStr(Round(StrToFloat(le_InpatientChrg.Text)-(StrToFloat(le_InpatientChrg.Text) / ((StrToFloat(Edit_InptChargeSvrTax.Text)/100)+1))));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_InpatientTotal.Text:=FloatToStr(StrToFloat(le_InpatientChrg.Text)+StrToFloat(Edit_InPtChargeSvrTax.Text))
               Else
               Edit_InpatientTotal.Text:=le_InpatientChrg.Text;

               pf_NEWREGCHARGE:=StrToFloat(le_NEWREGCHARGE.Text)-StrToFloat(Edit_RegSvrTax.Text);
               pf_NEWREGCHARGEPVT:=StrToFloat(le_NEWREGCHARGEPVT.Text)-StrToFloat(Edit_RegSvrTaxPVT.Text);
               pf_NEWREGCHARGEFRG:=StrToFloat(le_NEWREGCHARGEFRG.Text)-StrToFloat(Edit_RegSvrTaxFRG.Text);
               pf_NEWREGCHARGECARD:=StrToFloat(le_NEWREGCHARGECARD.Text)-StrToFloat(Edit_RegSvrTaxCARD.Text);

               pf_FOLLOWUPCHARGE:=StrToFloat(le_RollowUpChrg.Text)-StrToFloat(Edit_VisitChargeSvrTax.Text);
               pf_FOLLOWUPCHARGEPVT:=StrToFloat(le_RollowUpChrgPVT.Text)-StrToFloat(Edit_VisitChargeSvrTaxPVT.Text);
               pf_FOLLOWUPCHARGEFRG:=StrToFloat(le_RollowUpChrgFRG.Text)-StrToFloat(Edit_VisitChargeSvrTaxFRG.Text);

               pf_ADMISSONCHARGE:=StrToFloat(le_InpatientChrg.Text)-StrToFloat(Edit_InptChargeSvrTax.Text);
          End;
     End
     Else
     Begin
          IF CB_IsChargeRoundOffGEN.Checked=False Then
          Begin
               Edit_RegSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGE.Text) * (StrToFloat(Edit_RegTax.Text)/100),3));
               Edit_RegSvrTaxPVT.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEPVT.Text) * (StrToFloat(Edit_RegTaxPVT.Text)/100),3));
               Edit_RegSvrTaxFRG.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGEFRG.Text) * (StrToFloat(Edit_RegTaxFRG.Text)/100),3));
               Edit_RegSvrTaxCARD.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_NEWREGCHARGECARD.Text) * (StrToFloat(Edit_RegTaxCARD.Text)/100),3));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotal.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGE.Text)+StrToFloat(Edit_RegSvrTax.Text))
               Else
               Edit_RegChrgTotal.Text:=le_NEWREGCHARGE.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalPVT.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEPVT.Text)+StrToFloat(Edit_RegSvrTaxPVT.Text))
               Else
               Edit_RegChrgTotalPVT.Text:=le_NEWREGCHARGEPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalFRG.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEFRG.Text)+StrToFloat(Edit_RegSvrTaxFRG.Text))
               Else
               Edit_RegChrgTotalFRG.Text:=le_NEWREGCHARGEFRG.Text;


               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalCARD.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGECARD.Text)+StrToFloat(Edit_RegSvrTaxCARD.Text))
               Else
               Edit_RegChrgTotalCARD.Text:=le_NEWREGCHARGECARD.Text;

               Edit_VisitChargeSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrg.Text) * (StrToFloat(Edit_RollowupTax.Text)/100),3));
               Edit_VisitChargeSvrTaxPVT.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgPVT.Text) * (StrToFloat(Edit_RollowupTaxPVT.Text)/100),3));
               Edit_VisitChargeSvrTaxFRG.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_RollowUpChrgFRG.Text) * (StrToFloat(Edit_RollowupTaxFRG.Text)/100),3));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotal.Text:=FloatToStr(StrToFloat(le_RollowUpChrg.Text)+StrToFloat(Edit_VisitChargeSvrTax.Text))
               Else
               Edit_VisitTotal.Text:=le_RollowUpChrg.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalPVT.Text:=FloatToStr(StrToFloat(le_RollowUpChrgPVT.Text)+StrToFloat(Edit_VisitChargeSvrTaxPVT.Text))
               Else
               Edit_VisitTotalPVT.Text:=le_RollowUpChrgPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalFRG.Text:=FloatToStr(StrToFloat(le_RollowUpChrgFRG.Text)+StrToFloat(Edit_VisitChargeSvrTaxFRG.Text))
               Else
               Edit_VisitTotalFRG.Text:=le_RollowUpChrgFRG.Text;

               Edit_InptChargeSvrTax.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum(StrToFloat(le_InpatientChrg.Text) * (StrToFloat(Edit_InpatientTax.Text)/100),3));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_InpatientTotal.Text:=FloatToStr(StrToFloat(le_InpatientChrg.Text)+StrToFloat(Edit_InPtChargeSvrTax.Text))
               Else
               Edit_InpatientTotal.Text:=le_InpatientChrg.Text;

               pf_NEWREGCHARGE:=StrToFloat(le_NEWREGCHARGE.Text);
               pf_NEWREGCHARGEPVT:=StrToFloat(le_NEWREGCHARGEPVT.Text);
               pf_NEWREGCHARGEFRG:=StrToFloat(le_NEWREGCHARGEFRG.Text);
               pf_NEWREGCHARGECARD:=StrToFloat(le_NEWREGCHARGECARD.Text);

               pf_FOLLOWUPCHARGE:=StrToFloat(le_RollowUpChrg.Text);
               pf_FOLLOWUPCHARGEPVT:=StrToFloat(le_RollowUpChrgPVT.Text);
               pf_FOLLOWUPCHARGEFRG:=StrToFloat(le_RollowUpChrgFRG.Text);

               pf_ADMISSONCHARGE:=StrToFloat(le_InpatientChrg.Text);
          End
          Else
          Begin
               Edit_RegSvrTax.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGE.Text) * (StrToFloat(Edit_RegTax.Text)/100)));
               Edit_RegSvrTaxPVT.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGEPVT.Text) * (StrToFloat(Edit_RegTaxPVT.Text)/100)));
               Edit_RegSvrTaxFRG.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGEFRG.Text) * (StrToFloat(Edit_RegTaxFRG.Text)/100)));
               Edit_RegSvrTaxCARD.Text:=FloatToStr(Round(StrToFloat(le_NEWREGCHARGECARD.Text) * (StrToFloat(Edit_RegTaxCARD.Text)/100)));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotal.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGE.Text)+StrToFloat(Edit_RegSvrTax.Text))
               Else
               Edit_RegChrgTotal.Text:=le_NEWREGCHARGE.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalPVT.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEPVT.Text)+StrToFloat(Edit_RegSvrTaxPVT.Text))
               Else
               Edit_RegChrgTotalPVT.Text:=le_NEWREGCHARGEPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalFRG.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGEFRG.Text)+StrToFloat(Edit_RegSvrTaxFRG.Text))
               Else
               Edit_RegChrgTotalFRG.Text:=le_NEWREGCHARGEFRG.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_RegChrgTotalCARD.Text:=FloatToStr(StrToFloat(le_NEWREGCHARGECARD.Text)+StrToFloat(Edit_RegSvrTaxCARD.Text))
               Else
               Edit_RegChrgTotalCARD.Text:=le_NEWREGCHARGECARD.Text;


               Edit_VisitChargeSvrTax.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrg.Text) * (StrToFloat(Edit_RollowupTax.Text)/100)));
               Edit_VisitChargeSvrTaxPVT.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrgPVT.Text) * (StrToFloat(Edit_RollowupTaxPVT.Text)/100)));
               Edit_VisitChargeSvrTaxFRG.Text:=FloatToStr(Round(StrToFloat(le_RollowUpChrgFRG.Text) * (StrToFloat(Edit_RollowupTaxFRG.Text)/100)));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotal.Text:=FloatToStr(StrToFloat(le_RollowUpChrg.Text)+StrToFloat(Edit_VisitChargeSvrTax.Text))
               Else
               Edit_VisitTotal.Text:=le_RollowUpChrg.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalPVT.Text:=FloatToStr(StrToFloat(le_RollowUpChrgPVT.Text)+StrToFloat(Edit_VisitChargeSvrTaxPVT.Text))
               Else
               Edit_VisitTotalPVT.Text:=le_RollowUpChrgPVT.Text;

               IF CheckBoxVatInclude.Checked=False Then
               Edit_VisitTotalFRG.Text:=FloatToStr(StrToFloat(le_RollowUpChrgFRG.Text)+StrToFloat(Edit_VisitChargeSvrTaxFRG.Text))
               Else
               Edit_VisitTotalFRG.Text:=le_RollowUpChrgFRG.Text;

               Edit_InptChargeSvrTax.Text:=FloatToStr(Round(StrToFloat(le_InpatientChrg.Text) * (StrToFloat(Edit_InpatientTax.Text)/100)));

               IF CheckBoxVatInclude.Checked=False Then
               Edit_InpatientTotal.Text:=FloatToStr(StrToFloat(le_InpatientChrg.Text)+StrToFloat(Edit_InPtChargeSvrTax.Text))
               Else
               Edit_InpatientTotal.Text:=le_InpatientChrg.Text;

               pf_NEWREGCHARGE:=StrToFloat(le_NEWREGCHARGE.Text);
               pf_NEWREGCHARGEPVT:=StrToFloat(le_NEWREGCHARGEPVT.Text);
               pf_NEWREGCHARGEFRG:=StrToFloat(le_NEWREGCHARGEFRG.Text);
               pf_NEWREGCHARGECARD:=StrToFloat(le_NEWREGCHARGECARD.Text);

               pf_FOLLOWUPCHARGE:=StrToFloat(le_RollowUpChrg.Text);
               pf_FOLLOWUPCHARGEPVT:=StrToFloat(le_RollowUpChrgPVT.Text);
               pf_FOLLOWUPCHARGEFRG:=StrToFloat(le_RollowUpChrgFRG.Text);


               pf_ADMISSONCHARGE:=StrToFloat(le_InpatientChrg.Text);
          End;
     End;
End;

Procedure TForm_DepartmentSetup.Set_Zero_InBlank;
Begin
     IF Trim(le_NEWREGCHARGE.Text)='' Then le_NEWREGCHARGE.Text:='0';
     IF Trim(le_NEWREGCHARGEPVT.Text)='' Then le_NEWREGCHARGEPVT.Text:='0';
     IF Trim(le_NEWREGCHARGEFRG.Text)='' Then le_NEWREGCHARGEFRG.Text:='0';

     IF Trim(le_NEWREGCHARGECARD.Text)='' Then le_NEWREGCHARGECARD.Text:='0';

     IF Trim(le_RollowUpChrg.Text)='' Then le_RollowUpChrg.Text:='0';
     IF Trim(le_RollowUpChrgPVT.Text)='' Then le_RollowUpChrgPVT.Text:='0';
     IF Trim(le_RollowUpChrgFRG.Text)='' Then le_RollowUpChrgFRG.Text:='0';

     IF Trim(le_InpatientChrg.Text)='' Then le_InpatientChrg.Text:='0';
End;

end.
