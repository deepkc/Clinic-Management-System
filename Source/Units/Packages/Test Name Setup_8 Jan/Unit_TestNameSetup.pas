
unit Unit_TestNameSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, serverdate, dm, DbGridExportToExcel,
     Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ComCtrls, DB, DBTables;

type
     TForm_TestNameSetup = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          BB_New: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          Label1: TLabel;
          DBLCB_Dep: TDBLookupComboBox;
          Label2: TLabel;
          Edit_Search: TEdit;
          DBGrid1: TDBGrid;
          Label3: TLabel;
          Le_TestNameCode: TLabeledEdit;
          CB_IsDicountable: TCheckBox;
          CB_IsTaxable: TCheckBox;
          Cb_IsEditable: TCheckBox;
          Le_TestName: TLabeledEdit;
          CB_IncSvrTax: TCheckBox;
          Le_TestPriceG: TLabeledEdit;
          Edit_TaxG: TEdit;
          Label4: TLabel;
          Edit_TaxAmtG: TEdit;
          Le_TestPriceF: TLabeledEdit;
          Edit_TaxF: TEdit;
          Label5: TLabel;
          Edit_TaxAmtF: TEdit;
          Label6: TLabel;
          Dblcb_TestNameCategory: TDBLookupComboBox;
          Le_Remarks: TLabeledEdit;
          CB_IsActive: TCheckBox;
          Cb_IsOt: TCheckBox;
          Query_Department: TQuery;
          Ds_Department: TDataSource;
          Dblcb_DepNew: TDBLookupComboBox;
          Query_list: TQuery;
          Ds_List: TDataSource;
          Label7: TLabel;
          Label8: TLabel;
          Label9: TLabel;
          Label10: TLabel;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          CB_WorkList: TCheckBox;
          Label11: TLabel;
          DBlcb_SampleSource: TDBLookupComboBox;
          QuerySampleSource: TQuery;
          DS_SampleSource: TDataSource;
          le_Order: TLabeledEdit;
          CB_HideAllTestInPatientList: TCheckBox;
          Cb_IsPackageTest: TCheckBox;
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure DBLCB_DepClick(Sender: TObject);
          procedure Edit_SearchChange(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure FormShow(Sender: TObject);
          procedure Le_TestPriceGKeyPress(Sender: TObject; var Key: Char);
          procedure FormKeyPress(Sender: TObject; var Key: Char);
          procedure Le_TestPriceGExit(Sender: TObject);
          procedure Le_TestPriceFExit(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
     private
          pf_testprice, pf_vat, pf_testpricefrg, pf_VatFrg: Double;
          pb_isnew: Boolean;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_TestNameSetup: TForm_TestNameSetup;

implementation

Procedure SaveTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
     HIDETESTINPATIENTLIST: String; DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: integer; TESTPRICE, VAT,
     TESTPRICEFOREIGNER, TAXFRG: Double; ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST,
     ISFRACTIONABLEITEM, WORKLIST: Boolean); Stdcall; external 'MidasFunction.bpl';

Procedure UpdateTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
     HIDETESTINPATIENTLIST: String; TESTNAMEID, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: integer;
     TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double; ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE,
     ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean); Stdcall; external 'MidasFunction.bpl';
Procedure DeleteTestName(TESTNAMEID: integer); stdcall; external 'MidasFunction.bpl';
{$R *.dfm}

procedure TForm_TestNameSetup.BB_CloseClick(Sender: TObject);
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

procedure TForm_TestNameSetup.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
end;

procedure TForm_TestNameSetup.BB_SaveClick(Sender: TObject);
Var
     TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST: String;
     DEPID, DATAPOSTBY, SAMPLESOURCEID, DISPLAYORDER: integer;
     TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean;
begin
     if (Dblcb_DepNew.KeyValue = null) or (Le_TestNameCode.Text = '') or (Le_TestName.Text = '') or
       (Le_TestPriceG.Text = '') then
     begin
          MsgBox(1004, 0, '', '', '');
          exit;
     end;
     { SaveTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME: String;
       DEPID, DATAPOSTBY: integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double; ISVATABLE, ISEDITABLE, ISACTIVE,
       ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM: Boolean) }
     TESTNAMECODE := Le_TestNameCode.Text;
     TESTNAME := Le_TestName.Text;
     if Dblcb_TestNameCategory.KeyValue = null then
          TNCATEGORYCODE := ''
     else
          TNCATEGORYCODE := Dblcb_TestNameCategory.KeyValue;
     if DBlcb_SampleSource.KeyValue <> null then
          SAMPLESOURCEID := DBlcb_SampleSource.KeyValue;
     REMARKS := Le_Remarks.Text;
     DATAPOSTDATE := TodaysDate;
     DATAPOSTTIME := TodaysTime;
     DEPID := Dblcb_DepNew.KeyValue;
     DATAPOSTBY := gi_UserID;
     TESTPRICE := StrToFloat(format('%.4f', [pf_testprice]));
     VAT := StrToFloat(format('%.4f', [pf_vat]));
     TESTPRICEFOREIGNER := StrToFloat(format('%.4f', [pf_testpricefrg]));
     TAXFRG := StrToFloat(format('%.4f', [pf_VatFrg]));
     if CB_IsTaxable.Checked = true then
          ISVATABLE := true
     else
          ISVATABLE := false;
     if Cb_IsEditable.Checked = true then
          ISEDITABLE := true
     else
          ISEDITABLE := false;
     if CB_IsActive.Checked = true then
          ISACTIVE := true
     else
          ISACTIVE := false;
     if Cb_IsOt.Checked = true then
          ISOT := true
     else
          ISOT := false;
     if CB_IsDicountable.Checked = true then
          ISDISCOUNTABLE := true
     else
          ISDISCOUNTABLE := false;
     if CB_WorkList.Checked = true then
          WORKLIST := true
     else
          WORKLIST := false;
     if Cb_IsPackageTest.Checked then
          ISPACKAGETEST := true
     else
          ISPACKAGETEST := false;
     ISFRACTIONABLEITEM := false;
     if le_Order.Text <> '' then
          DISPLAYORDER := StrToInt(le_Order.Text)
     ELSE
          DISPLAYORDER := 0;

     if CB_HideAllTestInPatientList.Checked = true then
          HIDETESTINPATIENTLIST := 'Y'
     Else
          HIDETESTINPATIENTLIST := 'N';

     try
          DM_Hospital.DB.StartTransaction;
          try
               if pb_isnew then
                    SaveTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
                         HIDETESTINPATIENTLIST, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT,
                         TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE,
                         ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST)
               else
                    UpdateTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
                         HIDETESTINPATIENTLIST, gi_TestNameId, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER,
                         TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT,
                         ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST);

          except
               if pb_isnew then
                    SaveTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
                         HIDETESTINPATIENTLIST, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT,
                         TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE,
                         ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST)
               else
                    UpdateTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME,
                         HIDETESTINPATIENTLIST, gi_TestNameId, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER,
                         TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT,
                         ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST);
          end;
          DM_Hospital.DB.Commit;
          pb_isnew := true;
          ShowDoneMessage;
          ClearAll(PageControl1.Pages[1]);
          Dblcb_DepNew.KeyValue := DEPID;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     end;

end;

procedure TForm_TestNameSetup.DBGrid1DblClick(Sender: TObject);
begin
     pb_isnew := false;
     PageControl1.ActivePageIndex := 1;
     with Query_list do
     begin
          Dblcb_DepNew.KeyValue := FieldByName('Depid').AsInteger;
          Le_TestNameCode.Text := FieldByName('TestNameCode').AsString;
          Le_TestName.Text := FieldByName('TestName').AsString;
          Le_TestPriceG.Text := FloatToStr(FieldByName('TestPrice').AsFloat + FieldByName('Vat').AsFloat);
          Le_TestPriceF.Text := FloatToStr(FieldByName('TestPriceForeigner').AsFloat + FieldByName('TaxFrg').AsFloat);
          Le_Remarks.Text := FieldByName('Remarks').AsString;
          le_Order.Text := FieldByName('DisplayOrder').AsString;
          if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
          else
               CB_IsActive.Checked := false;
          if FieldByName('IsOT').AsString = 'Y' then
               Cb_IsOt.Checked := true
          else
               Cb_IsOt.Checked := false;
          if FieldByName('IsDiscountable').AsString = 'Y' then
               CB_IsDicountable.Checked := true
          else
               CB_IsDicountable.Checked := false;
          if FieldByName('IsVatable').AsString = 'Y' then
               CB_IsTaxable.Checked := true
          else
               CB_IsTaxable.Checked := false;
          if FieldByName('IsEditable').AsString = 'Y' then
               Cb_IsEditable.Checked := true
          else
               Cb_IsEditable.Checked := false;
          if FieldByName('Worklist').AsString = 'Y' then
               CB_WorkList.Checked := true
          else
               CB_WorkList.Checked := false;

          if FieldByName('HIDETESTINPATIENTLIST').AsString = 'Y' then
               CB_HideAllTestInPatientList.Checked := true
          else
               CB_HideAllTestInPatientList.Checked := false;

          if FieldByName('ISPACKAGETEST').AsString = 'Y' then
               Cb_IsPackageTest.Checked := true
          else
               Cb_IsPackageTest.Checked := false;

          gi_TestNameId := FieldByName('TestNameid').AsInteger;
          pf_testprice := FieldByName('TestPrice').AsFloat + FieldByName('Vat').AsFloat;
          pf_vat := FieldByName('Vat').AsFloat;
          pf_testpricefrg := FieldByName('TestPriceForeigner').AsFloat + FieldByName('TaxFrg').AsFloat;
          pf_VatFrg := FieldByName('TaxFrg').AsFloat;
          Edit_TaxG.Text := FloatToStr(gf_TaxPercent);
          Edit_TaxF.Text := FloatToStr(gf_TaxPercent);
          Edit_TaxAmtG.Text := FieldByName('Vat').AsString;
          Edit_TaxAmtF.Text := FieldByName('TaxFrg').AsString;
          if FieldByName('SampleSourceId').AsString <> '' then
               DBlcb_SampleSource.KeyValue := FieldByName('SampleSourceId').AsInteger;
          Le_TestPriceGExit(Sender);
          Le_TestPriceFExit(Sender);
     end;
end;

procedure TForm_TestNameSetup.DBLCB_DepClick(Sender: TObject);
begin
     with Query_list do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL[4] := 'Where Depid=' + IntToStr(DBLCB_Dep.KeyValue);
          Open;
     end;
end;

procedure TForm_TestNameSetup.Edit_SearchChange(Sender: TObject);
begin
     Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
     with Query_list do
     Begin
          IF Trim(Edit_Search.Text) <> '' Then
          Begin
               Filter := 'TTestName =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
end;

procedure TForm_TestNameSetup.FormCreate(Sender: TObject);
begin
     Query_Department.Close;
     Query_Department.DatabaseName := gs_DatabaseName;
     Query_Department.Open;
     QuerySampleSource.Close;
     QuerySampleSource.DatabaseName := gs_DatabaseName;
     QuerySampleSource.Open;
     Edit_TaxG.Text := FloatToStr(gf_TaxPercent);
     Edit_TaxF.Text := FloatToStr(gf_TaxPercent);
     pf_testprice := 0;
     pf_vat := 0;
     pf_testpricefrg := 0;
     pf_VatFrg := 0;
end;

procedure TForm_TestNameSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_TestNameSetup.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          keybd_event(9, 13, 0, 0);
end;

procedure TForm_TestNameSetup.FormShow(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
end;

procedure TForm_TestNameSetup.Le_TestPriceFExit(Sender: TObject);
Var
     x, p, y: Double;
begin
     if Le_TestPriceF.Text = '' then
          exit;
     y := StrToFloat(Le_TestPriceF.Text);
     p := gf_TaxPercent;
     if CB_IncSvrTax.Checked = true then
     begin
          x := (100 * y) / (100 + p);
          pf_testpricefrg := x;
          pf_VatFrg := (p * x) / 100;
     end
     else
     begin
          x := (p * y) / 100;
          pf_testpricefrg := y;
          pf_VatFrg := x;
     end;
     Edit_TaxAmtF.Text := format('%.2f', [pf_VatFrg]);
end;

procedure TForm_TestNameSetup.Le_TestPriceGExit(Sender: TObject);
Var
     x, p, y: Double;
begin
     if Le_TestPriceG.Text = '' then
          exit;
     y := StrToFloat(Le_TestPriceG.Text);
     p := gf_TaxPercent;
     if CB_IncSvrTax.Checked = true then
     begin
          x := (100 * y) / (100 + p);
          pf_testprice := x;
          pf_vat := (p * x) / 100;
     end
     else
     begin
          x := (p * y) / 100;
          pf_testprice := y;
          pf_vat := x;
     end;
     Edit_TaxAmtG.Text := format('%.2f', [pf_vat]);

end;

procedure TForm_TestNameSetup.Le_TestPriceGKeyPress(Sender: TObject; var Key: Char);
begin
     if not(Key in [#8, '0' .. '9', '-', DecimalSeparator]) then
          Key := #0
     else if ((Key = DecimalSeparator) or (Key = '-')) and (Pos(Key, (Sender as TLabeledEdit).Text) > 0) then
          Key := #0
     else if (Key = '-') and ((Sender as TLabeledEdit).SelStart <> 0) then
          Key := #0;

end;

procedure TForm_TestNameSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0
     else
          PageControl1.ActivePageIndex := 1;
end;

procedure TForm_TestNameSetup.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          DeleteTestName(Query_list.FieldByName('TestNameID').AsInteger);
     end;
     Query_list.Close;
     Query_list.Open;

end;

procedure TForm_TestNameSetup.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_TestNameSetup, DBGrid1, true, DBLCB_Dep.Text, TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
