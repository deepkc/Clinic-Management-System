unit Unit_TestNameSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, Unit_Master, serverdate, dm, DbGridExportToExcel,
     Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, ComCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

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
          Query_Department: TOraQuery;
          Ds_Department: TDataSource;
          Dblcb_DepNew: TDBLookupComboBox;
          Query_list: TOraQuery;
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
          QuerySampleSource: TOraQuery;
          DS_SampleSource: TDataSource;
          le_Order: TLabeledEdit;
          CB_HideAllTestInPatientList: TCheckBox;
          Query_TestNameCategory: TOraQuery;
          DS_TestNameCategory: TDataSource;
          Query_GetAutoTestNameCode: TOraQuery;
          Label_TestNameCode: TLabel;
          CB_GlobalSearch: TCheckBox;
          CB_Extended: TCheckBox;
    Cb_IsPackageTest: TCheckBox;
    le_CptCode: TLabeledEdit;
    groupbox_hide: TGroupBox;
    Cb_hideunit: TCheckBox;
    cb_hideflag: TCheckBox;
    cb_hiderefrange: TCheckBox;
    cb_hidemethod: TCheckBox;
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
          procedure Dblcb_TestNameCategoryKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBlcb_SampleSourceKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure GetAutoTestNameCode;
          procedure Dblcb_DepNewClick(Sender: TObject);
          procedure CB_GlobalSearchClick(Sender: TObject);
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


{$R *.dfm}

procedure TForm_TestNameSetup.BB_CloseClick(Sender: TObject);
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

procedure TForm_TestNameSetup.BB_NewClick(Sender: TObject);
begin
     if DBLCB_Dep.KeyValue = NULL then
     Begin
          DBLCB_Dep.SetFocus;
          MessageDlg('Please Select Department First !', mtWarning, [mbok], 0);
          Exit;
     End;

     pb_isnew := true;
     CB_IsActive.Checked := true;
     CB_IsDicountable.Checked := true;
     CB_IsTaxable.Checked := true;
     cb_hiderefrange.Checked:=False;
     Cb_hideunit.Checked:=FALSE;
     cb_hidemethod.Checked:=FALSE;
     cb_hideflag.Checked:=FALSE;
     PageControl1.ActivePageIndex := 1;
     BB_Save.Enabled:=True;

     Le_TestNameCode.SetFocus;

     if DBLCB_Dep.KeyValue <> NULL then
     Begin
          Dblcb_DepNew.KeyValue := DBLCB_Dep.KeyValue;
          GetAutoTestNameCode;
     End;
end;

procedure TForm_TestNameSetup.BB_SaveClick(Sender: TObject);
Var
     TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST, ISCHARGEWITHSVRTAX: String;
     DEPID, DATAPOSTBY, SAMPLESOURCEID, DISPLAYORDER: integer;
     TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST,HIDEUNIT,HIDEFLAG,HIDEREFRANGE,HIDEMETHOD: Boolean;
     CptCode:String;
begin
     if (Dblcb_DepNew.KeyValue = NULL) or (Le_TestNameCode.Text = '') or (Le_TestName.Text = '') or (Le_TestPriceG.Text = '') then
     begin
          MsgBox(1004, 0, '', '', '');
          Exit;
     end;
     { SaveTestName(TESTNAMECODE, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME: String;
       DEPID, DATAPOSTBY: integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double; ISVATABLE, ISEDITABLE, ISACTIVE,
       ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM: Boolean) }

     TESTNAMECODE := Le_TestNameCode.Text;
     if pb_isnew then
     Begin
          IF IsDataExist('TestName', 'TestNameCode', TESTNAMECODE) Then
          Begin
               MessageDlg('Duplicate Test Name Code(' + TESTNAMECODE + ') !', mtWarning, [mbok], 0);
               Exit;
          End;
     End;

     TESTNAME := Le_TestName.Text;
     IF pb_isnew Then
     Begin
          IF IsDataExist('TestName', 'TestName', TESTNAME) Then
          Begin
               IF MessageDlg('Already Exist Such Test Name (' + TESTNAME + '). Do You Want Continuee ?', mtConfirmation, [mbYes, mbNo], 0)
                 <> mrYes Then
                    Exit;
          End;
     End;

     if Dblcb_TestNameCategory.KeyValue = NULL then
          TNCATEGORYCODE := ''
     else
          TNCATEGORYCODE := Dblcb_TestNameCategory.KeyValue;

     if DBlcb_SampleSource.KeyValue <> NULL then
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

     if TESTPRICE > 0 then
          Cb_IsEditable.Checked := False
     Else
          Cb_IsEditable.Checked := true;

     if CB_IsTaxable.Checked = true then
          ISVATABLE := true
     else
          ISVATABLE := False;

     if Cb_IsEditable.Checked = true then
          ISEDITABLE := true
     else
          ISEDITABLE := False;

     if CB_IsActive.Checked = true then
          ISACTIVE := true
     else
          ISACTIVE := False;

     if Cb_IsOt.Checked = true then
          ISOT := true
     else
          ISOT := False;
     if CB_IsDicountable.Checked = true then
          ISDISCOUNTABLE := true
     else
          ISDISCOUNTABLE := False;
     if CB_WorkList.Checked = true then
          WORKLIST := true
     else
          WORKLIST := False;
     ISPACKAGETEST := False;
     ISFRACTIONABLEITEM := False;
     if le_Order.Text <> '' then
          DISPLAYORDER := StrToInt(le_Order.Text)
     ELSE
          DISPLAYORDER := 0;

     if CB_HideAllTestInPatientList.Checked = true then
          HIDETESTINPATIENTLIST := 'Y'
     Else
          HIDETESTINPATIENTLIST := 'N';

     if Cb_IsPackageTest.Checked = true then
          ISPACKAGETEST := true
     Else
          ISPACKAGETEST := False;

     if CB_IncSvrTax.Checked = true then
          ISCHARGEWITHSVRTAX := 'Y'
     Else
          ISCHARGEWITHSVRTAX := 'N';

     CptCode:=le_CptCode.Text;

     if Cb_hideunit.Checked then
        HIDEUNIT:=True
     else
        HIDEUNIT:=false;

     if cb_hideflag.Checked then
        HIDEFLAG:=True
     else
        HIDEFLAG:=false;

     if cb_hiderefrange.Checked then
        HIDEREFRANGE:=True
     else
        HIDEREFRANGE:=false;

     if cb_hidemethod.Checked then
        HIDEMETHOD:=True
     else
        HIDEMETHOD:=false;




     try
          DM_Hospital.DB.StartTransaction;
          try
               if pb_isnew then
               (*TestNameCode,CptCode, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST: String;
     DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: Integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean*)
                    SaveTestName(TESTNAMECODE, CptCode,TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST,
                         DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG,
                         ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST,HIDEUNIT,HIDEMETHOD,HIDEFLAG,HIDEREFRANGE)
               else
                    (*TestNameCode,CptCode, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST: String;
     TestNameID, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: Integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean*)
                    UpdateTestName(TESTNAMECODE,CptCode,TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST,
                         gi_TestNameId, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT,
                         TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST,
                         ISFRACTIONABLEITEM, WORKLIST,HIDEUNIT,HIDEMETHOD,HIDEFLAG,HIDEREFRANGE);

          except
               if pb_isnew then
               (*TestNameCode,CptCode, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST: String;
     DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: Integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean*)
                    SaveTestName(TESTNAMECODE, CptCode,TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST,
                         DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG,
                         ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST,HIDEUNIT,HIDEMETHOD,HIDEFLAG,HIDEREFRANGE)
               else
                    (*TestNameCode,CptCode, TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST: String;
     TestNameID, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER: Integer; TESTPRICE, VAT, TESTPRICEFOREIGNER, TAXFRG: Double;
     ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST, ISFRACTIONABLEITEM, WORKLIST: Boolean*)
                    UpdateTestName(TESTNAMECODE,CptCode,TESTNAME, TNCATEGORYCODE, REMARKS, DATAPOSTDATE, DATAPOSTTIME, HIDETESTINPATIENTLIST,
                         gi_TestNameId, DEPID, SAMPLESOURCEID, DATAPOSTBY, DISPLAYORDER, TESTPRICE, VAT,
                         TESTPRICEFOREIGNER, TAXFRG, ISVATABLE, ISEDITABLE, ISACTIVE, ISOT, ISDISCOUNTABLE, ISPACKAGETEST,
                         ISFRACTIONABLEITEM, WORKLIST,HIDEUNIT,HIDEMETHOD,HIDEFLAG,HIDEREFRANGE);
          end;
          DM_Hospital.DB.Commit;
          pb_isnew := true;
          ShowDoneMessage;
          Dblcb_DepNew.KeyValue := DEPID;
     except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     end;
     ClearAll(PageControl1.Pages[1]);
     CB_IsActive.Checked := true;
     CB_IsDicountable.Checked := true;
     CB_IsTaxable.Checked := true;
     CB_IncSvrTax.Checked := true;
     Cb_IsEditable.Enabled := False;
     Cb_IsEditable.Checked := False;
     GetAutoTestNameCode;
     CB_IncSvrTax.Checked := true;
     cb_hiderefrange.Checked:=False;
     Cb_hideunit.Checked:=FALSE;
     cb_hidemethod.Checked:=FALSE;
     cb_hideflag.Checked:=FALSE;
end;

procedure TForm_TestNameSetup.CB_GlobalSearchClick(Sender: TObject);
begin
     if CB_GlobalSearch.Checked = true then
     Begin
          DBLCB_Dep.KeyValue := NULL;
          DBLCB_Dep.Enabled := False;
          DBLCB_Dep.Color := clScrollBar;
          With Query_list do
          Begin
               Close;
               SQL[4] := ' ';
               Open;
          End;
          DBGrid1.Columns[2].Visible := true;
          DBGrid1.Columns[2].Width := 70;
     End
     Else
     Begin
          DBLCB_Dep.KeyValue := NULL;
          DBLCB_Dep.Enabled := true;
          DBLCB_Dep.Color := clWhite;
          DBGrid1.Columns[2].Visible := False;
          CB_Extended.Checked:=False;
          DBLCB_Dep.SetFocus;
     End;
end;

procedure TForm_TestNameSetup.DBGrid1DblClick(Sender: TObject);
begin
     pb_isnew := False;
     BB_Save.Enabled:=True;
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
          if gi_compileValue=3 then
          begin
             if FieldByName('IsActive').AsString = 'Y' then
               CB_IsActive.Checked := true
             else
               CB_IsActive.Checked := False;
          end
          else
          begin
             if FieldByName('IsActive').AsString = 'T' then
               CB_IsActive.Checked := true
            else
               CB_IsActive.Checked := False;
          end;

          if FieldByName('IsOT').AsString = 'Y' then
               Cb_IsOt.Checked := true
          else
               Cb_IsOt.Checked := False;
          if FieldByName('IsDiscountable').AsString = 'Y' then
               CB_IsDicountable.Checked := true
          else
               CB_IsDicountable.Checked := False;
          if FieldByName('IsVatable').AsString = 'Y' then
               CB_IsTaxable.Checked := true
          else
               CB_IsTaxable.Checked := False;

          if FieldByName('IsEditable').AsString = 'Y' then
               Cb_IsEditable.Checked := true
          else
               Cb_IsEditable.Checked := False;

          if FieldByName('Worklist').AsString = 'Y' then
               CB_WorkList.Checked := true
          else
               CB_WorkList.Checked := False;


           if FieldByName('IsPackageTest').AsString = 'Y' then
               Cb_IsPackageTest.Checked := true
          else
               Cb_IsPackageTest.Checked := False;

          if FieldByName('HIDETESTINPATIENTLIST').AsString = 'Y' then
               CB_HideAllTestInPatientList.Checked := true
          else
               CB_HideAllTestInPatientList.Checked := False;

          if FieldByName('HIDEUNIT').AsString = 'Y' then
               Cb_hideunit.Checked := true
          else
               Cb_hideunit.Checked := False;

          if FieldByName('HIDEMETHOD').AsString = 'Y' then
               cb_hidemethod.Checked := true
          else
               cb_hidemethod.Checked := False;
          if FieldByName('HIDEFLAG').AsString = 'Y' then
               cb_hideflag.Checked := true
          else
               cb_hideflag.Checked := False;

          if FieldByName('HIDEREFRANGE').AsString = 'Y' then
               cb_hiderefrange.Checked := true
          else
               cb_hiderefrange.Checked := False;

//          if FieldByName('ISCHARGEWITHSVRTAX').AsString = 'Y' then
//               CB_IncSvrTax.Checked := true
//          else
//               CB_IncSvrTax.Checked := False;

          CB_IncSvrTax.Checked := true;

          gi_TestNameId := FieldByName('TestNameid').AsInteger;

          if FieldByName('ISCHARGEWITHSVRTAX').AsString = 'Y' then
          Begin
               CB_IncSvrTax.Checked := true;
               Le_TestPriceG.Text := FloatToStr(FieldByName('TestPrice').AsFloat + FieldByName('Vat').AsFloat);
          End
          Else
          Begin
               CB_IncSvrTax.Checked := False;
               Le_TestPriceG.Text := FloatToStr(FieldByName('TestPrice').AsFloat);
          End;

          pf_testprice := FieldByName('TestPrice').AsFloat;
          pf_vat := FieldByName('Vat').AsFloat;
          pf_testpricefrg := FieldByName('TestPriceForeigner').AsFloat;
          pf_VatFrg := FieldByName('TaxFrg').AsFloat;
          Edit_TaxG.Text := FloatToStr(gf_TaxPercent);
          Edit_TaxF.Text := FloatToStr(gf_TaxPercent);
          Edit_TaxAmtG.Text := FieldByName('Vat').AsString;
          Edit_TaxAmtF.Text := FieldByName('TaxFrg').AsString;
          if FieldByName('SampleSourceId').AsString <> '' then
               DBlcb_SampleSource.KeyValue := FieldByName('SampleSourceId').AsInteger;

          Dblcb_TestNameCategory.KeyValue := FieldByName('TNCATEGORYCODE').AsString;

          le_CptCode.Text:=FieldByName('CptCode').AsString;

          Le_TestPriceGExit(Sender);
          Le_TestPriceFExit(Sender);
     end;
end;

procedure TForm_TestNameSetup.DBLCB_DepClick(Sender: TObject);
begin
     with Query_list do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL[4] := 'Where Depid=' + IntToStr(DBLCB_Dep.KeyValue);
          Open;
     end;
end;

procedure TForm_TestNameSetup.Dblcb_DepNewClick(Sender: TObject);
begin
     if pb_isnew then
          GetAutoTestNameCode;
end;

procedure TForm_TestNameSetup.DBlcb_SampleSourceKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_Delete then
          DBlcb_SampleSource.KeyValue := NULL;
end;

procedure TForm_TestNameSetup.Dblcb_TestNameCategoryKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_Delete then
          Dblcb_TestNameCategory.KeyValue := NULL;
end;

procedure TForm_TestNameSetup.Edit_SearchChange(Sender: TObject);
begin

     if CB_Extended.Checked = False then
     Begin
          Edit_Search.Text := StringReplace(Edit_Search.Text, '''', '''''', [rfReplaceAll]);
          with Query_list do
          Begin
               IF Trim(Edit_Search.Text) <> '' Then
               Begin
                    Filter := 'TTestName =' + #39 + Trim(Edit_Search.Text) + '*' + #39;
                    Filtered := true;
               End
               Else
                    Filtered := False;
          End;
     End
     Else
     Begin
          With Query_list do
          begin
               Filtered := False;
               Close;
               SQL[4]:=' Where IsActive=''Y'' and TestName Like ''%' + uppercase(Edit_Search.Text) + '%''';
               Open;
          end;
     End;

end;

procedure TForm_TestNameSetup.FormCreate(Sender: TObject);
begin
     with Query_Department do
     begin
     Close;
     Session:=Dm_Hospital.Db;
     sql.Clear;
     if True then
        sql.Add('Select * from '+gs_Hos_DB_UserName+'.Department  order by DepName ')
     else
        sql.Add('Select * from '+gs_Hos_DB_UserName+'.Department where ISPATHOLOGICALDEP=''Y'' order by DepName ');
     Open;
     end;
     QuerySampleSource.Close;
     QuerySampleSource.Session:=Dm_Hospital.Db;
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
     if Key = VK_F1 then
          CB_GlobalSearch.Checked := Not(CB_GlobalSearch.Checked);

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
     if gi_compileValue=1 then
     begin
        Query_TestNameCategory.Close;
        Query_TestNameCategory.Open;
     end;
     BB_Save.Enabled:=false;
end;

procedure TForm_TestNameSetup.Le_TestPriceFExit(Sender: TObject);
Var
     x, p, y: Double;
begin
     if Le_TestPriceF.Text = '' then
          Exit;
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
     Edit_TaxAmtF.Text := format('%.4f', [pf_VatFrg]);
end;

procedure TForm_TestNameSetup.Le_TestPriceGExit(Sender: TObject);
Var
     x, p, y: Double;
begin
     if Le_TestPriceG.Text = '' then
          Exit;
     y := StrToFloat(Le_TestPriceG.Text);
     p := gf_TaxPercent;
     if CB_IncSvrTax.Checked = true then
     begin
          x := GetNoOfDecimalPartOfFloatNum((100 * y) / (100 + p), 4);
          pf_testprice := x;
          pf_vat := y - x;
          // pf_vat := (p * x) / 100;
     end
     else
     begin
          x := GetNoOfDecimalPartOfFloatNum((p * y) / 100, 4);
          pf_testprice := y;
          pf_vat := x;
     end;
     Edit_TaxAmtG.Text := format('%.4f', [pf_vat]);

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

procedure TForm_TestNameSetup.GetAutoTestNameCode;
begin
     With Query_GetAutoTestNameCode do
     Begin
          Close;
          SQL.Clear;
          IF Dblcb_DepNew.KeyValue = 24 Then // PANELS AND ORDER SETS
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''PAN%''')
          Else IF Dblcb_DepNew.KeyValue = 25 Then // BIOCHEMESTRY
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''BIO%''')
          Else IF Dblcb_DepNew.KeyValue = 26 Then // SEROLOGY
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''SER%''')
          Else IF Dblcb_DepNew.KeyValue = 27 Then // TDM
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''TDM%''')
          Else IF Dblcb_DepNew.KeyValue = 28 Then // HORMONE
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''HOR%''')
          Else IF Dblcb_DepNew.KeyValue = 29 Then // DAT & TECHNOLOGY
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''DAT%''')
          Else IF Dblcb_DepNew.KeyValue = 30 Then // METABOLIC
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''MET%''')
          Else IF Dblcb_DepNew.KeyValue = 31 Then // HAEMATOLOGY
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''HAE%''')
          Else IF Dblcb_DepNew.KeyValue = 32 Then // HEMOSTASIS
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''HEM%''')
          Else IF Dblcb_DepNew.KeyValue = 33 Then // FACTOR ASSAY
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''FAC%''')
          Else IF Dblcb_DepNew.KeyValue = 34 Then // URINE EXAMINATION
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''URE%''')
          Else IF Dblcb_DepNew.KeyValue = 35 Then // STOOL EXAMINATION
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''STE%''')
          Else IF Dblcb_DepNew.KeyValue = 36 Then // FLUID ANALYSIS
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''FLD%''')
          Else IF Dblcb_DepNew.KeyValue = 8 Then // Otho
               SQL.Add(' Select Nvl(Max(SubStr(TestnameCode,4,5)),0) as Num From TestName where TestNameCode Like ''ORT%''')
          Else
               SQL.Add(' Select * From TestName where TestNameId=-10');
          Open;
     End;

     IF Dblcb_DepNew.KeyValue = 24 Then // PANELS AND ORDER SETS
          Label_TestNameCode.Caption := 'PAN' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 25 Then // BIOCHEMESTRY
          Label_TestNameCode.Caption := 'BIO' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 26 Then // SEROLOGY
          Label_TestNameCode.Caption := 'SER' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 27 Then // TDM
          Label_TestNameCode.Caption := 'TDM' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 28 Then // HORMONE
          Label_TestNameCode.Caption := 'HOR' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 29 Then // DAT & TECHNOLOGY
          Label_TestNameCode.Caption := 'DAT' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 30 Then // METABOLIC
          Label_TestNameCode.Caption := 'MET' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 31 Then // HAEMATOLOGY
          Label_TestNameCode.Caption := 'HAE' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 32 Then // HEMOSTASIS
          Label_TestNameCode.Caption := 'HEM' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 33 Then // FACTOR ASSAY
          Label_TestNameCode.Caption := 'FAC' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 34 Then // URINE EXAMINATION
          Label_TestNameCode.Caption := 'URE' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 35 Then // STOOL EXAMINATION
          Label_TestNameCode.Caption := 'STE' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 36 Then // FLUID ANALYSIS
          Label_TestNameCode.Caption := 'FLD' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else IF Dblcb_DepNew.KeyValue = 8 Then // ORTH
          Label_TestNameCode.Caption := 'ORT' + FormatFloat('00', Query_GetAutoTestNameCode.FieldByName('Num').AsFloat + 1)
     Else
          Label_TestNameCode.Caption := '';

     IF pb_isnew = true Then
          Le_TestNameCode.Text := Trim(Label_TestNameCode.Caption);
end;

end.
