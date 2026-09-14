unit UnitDischargeClearanceDetail;

interface

uses
     Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     OleCtrls, DateEditXControl_TLB, DBCtrls, StdCtrls, Grids, DBGrids,
     ComCtrls, Buttons, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ServerDate;

type
     TFormDischargeClearanceDetail = class(TForm)
          Panel1: TPanel;
          Shape2: TShape;
          Query_Process: TOraQuery;
          Query_GetReturnMedicine: TOraQuery;
          Query_TempProcess: TOraQuery;
          PageControlServiceCharge: TPageControl;
          TabSheet2: TTabSheet;
          GroupBox4: TGroupBox;
          DBGridPatientTest: TDBGrid;
          GroupBox_Account: TGroupBox;
          Label16: TLabel;
          Label32: TLabel;
          Label33: TLabel;
          Label7: TLabel;
          Label19: TLabel;
          Label67: TLabel;
          LabelVTot: TLabel;
          Label69: TLabel;
          LabelTotal: TLabel;
          EditECharge: TEdit;
          EditDisAmt: TEdit;
          EditTotal: TEdit;
          CMBPayType: TComboBox;
          EditDisPer: TEdit;
          EditCheckNo: TEdit;
          Panel2: TPanel;
          Shape3: TShape;
          Label25: TLabel;
          Label26: TLabel;
          LabelNo: TLabel;
          Labelname: TLabel;
          Shape4: TShape;
          Label22: TLabel;
          Label1: TLabel;
          LabelIpNo: TLabel;
          Label84: TLabel;
          Label85: TLabel;
          LabelTotalDay: TLabel;
          DateEditXSCDate: TDateEditX;
          ButtonADVSregInvestigation: TButton;
          DateEditXIPDate: TDateEditX;
          DateEditXDisDate: TDateEditX;
          Button2: TButton;
          Button4: TButton;
          Table_TempDetailPTest: TOraTable;
          DataSourceTablePTTestTemp: TDataSource;
          QueryPatientTest: TOraQuery;
          Query_Community: TOraQuery;
          DataSource_Community: TDataSource;
          PageControlMedicineCharge: TPageControl;
          TabSheet1: TTabSheet;
          Label2: TLabel;
          GroupBox1: TGroupBox;
          DBGridMedicineCharge: TDBGrid;
          GroupBox2: TGroupBox;
          Label3: TLabel;
          Label4: TLabel;
          Label5: TLabel;
          Label8: TLabel;
          Label10: TLabel;
          Label11: TLabel;
          LabelMCVTot: TLabel;
          Label13: TLabel;
          LabelMCTotal: TLabel;
          Edit1: TEdit;
          EditMCDisAmt: TEdit;
          EditMCTotal: TEdit;
          ComboBox1: TComboBox;
          Edit4: TEdit;
          Edit5: TEdit;
          Panel5: TPanel;
          Shape1: TShape;
          Label17: TLabel;
          Label18: TLabel;
          LabelMCNo: TLabel;
          LabelMCName: TLabel;
          Shape5: TShape;
          Label23: TLabel;
          Label24: TLabel;
          LabelMCIPNo: TLabel;
          Label28: TLabel;
          Label29: TLabel;
          LabelMCTotDay: TLabel;
          DateEditXMCDate: TDateEditX;
          Button1: TButton;
          DateEditX2: TDateEditX;
          DateEditXMCDisDate: TDateEditX;
          Button3: TButton;
          Button5: TButton;
          PageControlBedCharge: TPageControl;
          TabSheet3: TTabSheet;
          Label34: TLabel;
          GroupBox5: TGroupBox;
          DBGridBedCharge: TDBGrid;
          GroupBox6: TGroupBox;
          Label35: TLabel;
          Label36: TLabel;
          Label37: TLabel;
          Label38: TLabel;
          Label39: TLabel;
          Label40: TLabel;
          LabelBCVTot: TLabel;
          Label42: TLabel;
          LabelBCTotal: TLabel;
          Edit6: TEdit;
          EditBCDisAmt: TEdit;
          EditBCTotal: TEdit;
          ComboBox2: TComboBox;
          Edit9: TEdit;
          Edit10: TEdit;
          Panel7: TPanel;
          Shape6: TShape;
          Label45: TLabel;
          Label46: TLabel;
          LabelBCNo: TLabel;
          LabelBCName: TLabel;
          Shape7: TShape;
          Label49: TLabel;
          Label50: TLabel;
          LabelBCIPNO: TLabel;
          Label52: TLabel;
          Label53: TLabel;
          LabelBCTotDay: TLabel;
          DateEditXBCDate: TDateEditX;
          Button6: TButton;
          DateEditXBCIPDate: TDateEditX;
          DateEditXBCDisDate: TDateEditX;
          Button7: TButton;
          Button8: TButton;
          Table_TempBedCharge: TOraTable;
          DataSource_TempBedCharge: TDataSource;
          QueryBedCharge: TOraQuery;
          Table_TempMedicineCharge: TOraTable;
          DataSource_TempMedicineCharge: TDataSource;
          QueryMedicineCharge: TOraQuery;
          BitBtnPrint: TBitBtn;
          Label12: TLabel;
          Label15: TLabel;
          Label9: TLabel;
          Label44: TLabel;
          Label14: TLabel;
          Label20: TLabel;
          Query_User: TOraQuery;
          QueryPatientTestBILLDETAILID: TFloatField;
          QueryPatientTestBILLNO: TStringField;
          QueryPatientTestBILLDATE: TStringField;
          QueryPatientTestPATIENTID: TFloatField;
          QueryPatientTestINPATIENTID: TFloatField;
          QueryPatientTestPATIENTTESTID: TFloatField;
          QueryPatientTestMODIFYBY: TFloatField;
          QueryPatientTestSERVICE: TStringField;
          QueryPatientTestSERVICETYPE: TStringField;
          QueryPatientTestQTY: TFloatField;
          QueryPatientTestAMOUNT: TFloatField;
          QueryPatientTestTOTALAMT: TFloatField;
          QueryPatientTestDIS: TFloatField;
          QueryPatientTestVATAMT: TFloatField;
          QueryPatientTestDISCOUNT: TFloatField;
          QueryPatientTestNETTOTAL: TFloatField;
          QueryPatientTestRATETYPE: TStringField;
          LabelCommunity: TLabel;
          LabelCommunityBC: TLabel;
          LabelCommunityMC: TLabel;
          StatusBar1: TStatusBar;
          BtnSave: TBitBtn;
          BtnCancel: TBitBtn;
          QueryPatientTestCRMODIFYDATE: TStringField;
          QueryPatientTestOLd: TOraQuery;
          QueryPatientTestOLdCRMODIFYDATE: TStringField;
          QueryPatientTestOLdBILLDETAILID: TFloatField;
          QueryPatientTestOLdBILLNO: TStringField;
          QueryPatientTestOLdRATETYPE: TStringField;
          QueryPatientTestOLdBILLDATE: TStringField;
          QueryPatientTestOLdPATIENTID: TFloatField;
          QueryPatientTestOLdINPATIENTID: TFloatField;
          QueryPatientTestOLdPATIENTTESTID: TFloatField;
          QueryPatientTestOLdMODIFYBY: TFloatField;
          QueryPatientTestOLdSERVICE: TStringField;
          QueryPatientTestOLdSERVICETYPE: TStringField;
          QueryPatientTestOLdQTY: TFloatField;
          QueryPatientTestOLdAMOUNT: TFloatField;
          QueryPatientTestOLdTOTALAMT: TFloatField;
          QueryPatientTestOLdDIS: TFloatField;
          QueryPatientTestOLdVATAMT: TFloatField;
          QueryPatientTestOLdDISCOUNT: TFloatField;
          QueryPatientTestOLdNETTOTAL: TFloatField;
          QueryPatientTestOLdUser: TStringField;
          QueryPatientTestCRBILLNO: TStringField;
          Query_Subprocess: TOraQuery;
          QueryPatientTestPAYMENT: TFloatField;
          Sbtn_ChangeRateType: TSpeedButton;
          QueryPatientTestCOMMUNITYID: TFloatField;
          QueryPatientTestSCHEMEID: TFloatField;
          QueryPatientTestTNCATEGORYCODE: TStringField;
          QueryPatientTestDOCCODE: TStringField;
          Edit_DisPer: TEdit;
          Label21: TLabel;
          LabelTestName: TLabel;
          Label30: TLabel;
          BitBtn_SetDiscount: TBitBtn;
          Query_ActDoctor: TOraQuery;
          DS_ActulaDoctor: TDataSource;
          Label31: TLabel;
          DBLCB_ActualDrTech: TDBLookupComboBox;
          Label41: TLabel;
          Label_FractionAmt: TLabel;
          Label43: TLabel;
          Label_DisAmount: TLabel;
          CB_SPDiscount: TCheckBox;
          QueryPatientTestUSERNAME: TStringField;
          Label27: TLabel;
          procedure FormShow(Sender: TObject);
          procedure Edit_InPatientNoKeyPress(Sender: TObject; var Key: Char);
          procedure BtnCancelClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          Function GetTestNameCode(PatientTestId: LongInt): String;
          procedure DBGridPatientTestKeyPress(Sender: TObject; var Key: Char);
          procedure DBGridPatientTestCellClick(Column: TColumn);
          procedure DBGridPatientTestKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BtnSaveClick(Sender: TObject);
          procedure DBGridBedChargeKeyPress(Sender: TObject; var Key: Char);
          procedure DBGridMedicineChargeKeyPress(Sender: TObject; var Key: Char);
          procedure DBGridBedChargeCellClick(Column: TColumn);
          procedure DBGridBedChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBGridMedicineChargeCellClick(Column: TColumn);
          procedure DBGridMedicineChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBGridBedChargeColEnter(Sender: TObject);
          // Function GetTotalDays(InptDate,OutDate:String):Integer;
          Procedure CheckTestNameCode;
          Procedure RefreshVatable;
          procedure RefreshTotalPrice;
          Function GetNonVatableAmount: Double;
          Function GetVatableAmount: Double;
          Function GetDiscountAmount: Double;
          procedure CreateTempDetailPTest;
          procedure CreateTableBedCharge;
          procedure CreateTableMedicineCharge;
          procedure FillPatientTest;
          procedure FillBedCharge;
          procedure FillMedicineCharge;
          procedure ServiceChargeCalculation;
          procedure BedChargeCalculation;
          procedure MedicineChargeCalculation;
          procedure DBGridMedicineChargeColEnter(Sender: TObject);
          procedure DBGridBedChargeColExit(Sender: TObject);
          procedure DBGridMedicineChargeColExit(Sender: TObject);
          procedure DBGridPatientTestColExit(Sender: TObject);
          procedure Button7Click(Sender: TObject);
          procedure Button8Click(Sender: TObject);
          procedure Button6Click(Sender: TObject);
          procedure Button3Click(Sender: TObject);
          procedure Button5Click(Sender: TObject);
          procedure Button1Click(Sender: TObject);
          procedure Button2Click(Sender: TObject);
          procedure Button4Click(Sender: TObject);
          procedure ButtonADVSregInvestigationClick(Sender: TObject);
          procedure BitBtnPrintClick(Sender: TObject);
          procedure PrintHospitalCharge;
          procedure PrintMedicineCharge;
          procedure FormCreate(Sender: TObject);
          procedure FormClose(Sender: TObject; var Action: TCloseAction);
          procedure FormDestroy(Sender: TObject);
          procedure UserVerification;
          procedure AvoidDisPerErrorInGridSFSLWGTNL;
          procedure DBGridPatientTestColEnter(Sender: TObject);
          procedure DBGridPatientTestDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
               State: TGridDrawState);
          procedure Sbtn_ChangeRateTypeClick(Sender: TObject);
          procedure Edit_DisPerKeyPress(Sender: TObject; var Key: Char);
          procedure BitBtn_SetDiscountClick(Sender: TObject);
          procedure CB_SPDiscountClick(Sender: TObject);
          procedure DBLCB_ActualDrTechClick(Sender: TObject);
          procedure DBLCB_ActualDrTechKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure DBLCB_ActualDrTechKeyPress(Sender: TObject; var Key: Char);
          procedure Edit_DisPerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BitBtn_SetDiscountKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_DisPerExit(Sender: TObject); // SFSLWGTNL- save from same line without going to next line
          procedure Display_DrTech_For_FrctItem;

     private
          { Private declarations }
     public
          pi_InPatientId, pi_PatientId, pi_CommunityID, pi_SchemeId: LongInt;
          pi_PanelShow, pi_TotDays, pi_NoOfDays: Integer;
          ps_PName, ps_InptDate, ps_DisDate, ps_MemberNo, ps_DisInDeposit: String;
          pf_DisPer: Double;
          DateEditX_In, DateEditX_Out: TDateEditX;
          b_IsDischargePt: Boolean;

          ps_FormAccessFrom: String;

          { Public declarations }
     end;

var
     FormDischargeClearanceDetail: TFormDischargeClearanceDetail;

implementation

uses Unit_GlobalFxnVar, UnitdmHospital, Unit_QRDischargeBilling,
     Unit_QRHospitalChargeDetail,
     Unit_QRMedicineChargeDetail, UnitDischargeClearance, Unit_Message,
     UnitInchargeVerification, Unit_ChangeRateType;
{$R *.DFM}

procedure TFormDischargeClearanceDetail.CreateTempDetailPTest;
begin
     IF FileExists(gs_TempPath + '\DetailPatientTest.db') Then
          DeleteFile(gs_TempPath + '\DetailPatientTest.db');
     With Table_TempDetailPTest do
     begin
          IF Active Then
               Active := False;
          databasename := gs_TempPath;
          tablename := 'DetailPatientTest.db';
          tableType := TTParadox;
          FieldDefs.Clear;
          FieldDefs.add('BillDetailId', ftInteger);
          FieldDefs.add('InPatientID', ftInteger);
          FieldDefs.add('PatientTestID', ftInteger);
          FieldDefs.add('TestNameID', ftInteger);
          FieldDefs.add('SchemeId', ftInteger);
          FieldDefs.add('CommunityId', ftInteger);
          FieldDefs.add('DepID', ftInteger);
          FieldDefs.add('BillDate', ftString, 10);
          FieldDefs.add('CrModifyDate', ftString, 10);
          FieldDefs.add('BillNo', ftString, 15);
          FieldDefs.add('CrBillNo', ftString, 16);
          FieldDefs.add('DepCode', ftString, 25);
          FieldDefs.add('DocCode', ftString, 15);
          FieldDefs.add('TestNameCode', ftString, 25);
          FieldDefs.add('TestName', ftString, 50);
          FieldDefs.add('TNCategoryCode', ftString, 10);
          FieldDefs.add('Category', ftString, 5);
          FieldDefs.add('CostPrice', FtFloat);
          FieldDefs.add('Qty', FtFloat);
          FieldDefs.add('Total', FtFloat);
          FieldDefs.add('DisPer', FtFloat);
          FieldDefs.add('OldDisPer', FtFloat); { ****not round off value... }
          FieldDefs.add('OrgDisPer', FtFloat);
          FieldDefs.add('Discount', FtFloat);
          FieldDefs.add('OldDiscount', FtFloat);
          FieldDefs.add('VatAmt', FtFloat);
          FieldDefs.add('NetTotal', FtFloat);
          FieldDefs.add('Payment', FtFloat);
          FieldDefs.add('User', ftString, 20);
          createtable;
     End;
End;

procedure TFormDischargeClearanceDetail.CreateTableBedCharge;
begin
     IF FileExists(gs_TempPath + '\BedChargeDetail.db') Then
          DeleteFile(gs_TempPath + '\BedChargeDetail.db');
     with Table_TempBedCharge do
     Begin
          IF Active Then
               Active := False;
          databasename := gs_TempPath;
          tablename := 'BedChargeDetail.db';
          tableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.add('InPatientDId', ftInteger);
          FieldDefs.add('InPatientId', ftInteger);
          FieldDefs.add('SchemeId', ftInteger);
          FieldDefs.add('CommunityId', ftInteger);
          FieldDefs.add('RoomType', ftString, 30);
          FieldDefs.add('FromDate', ftString, 10);
          FieldDefs.add('ToDate', ftString, 10);
          FieldDefs.add('TotalDays', ftInteger);
          FieldDefs.add('Rate', FtFloat);
          FieldDefs.add('Total', FtFloat);
          FieldDefs.add('DisPer', FtFloat);
          FieldDefs.add('OldDisPer', FtFloat); { ****not round off value... }
          FieldDefs.add('OrgDisPer', FtFloat);
          FieldDefs.add('Discount', FtFloat);
          FieldDefs.add('OldDiscount', FtFloat);
          FieldDefs.add('NetTotal', FtFloat);
          FieldDefs.add('VatAmt', FtFloat);
          FieldDefs.add('User', ftString, 20);
          createtable;
     End;
end;

procedure TFormDischargeClearanceDetail.CreateTableMedicineCharge;
begin
     IF FileExists(gs_TempPath + '\MedicineChargeDetail.db') Then
          DeleteFile(gs_TempPath + '\MedicineChargeDetail.db');
     with Table_TempMedicineCharge do
     Begin
          IF Active Then
               Active := False;
          databasename := gs_TempPath;
          tablename := 'MedicineChargeDetail.db';
          tableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.add('SaleDetailId', ftInteger);
          FieldDefs.add('SaleMasterId', ftInteger);
          FieldDefs.add('InPatientID', ftInteger);
          FieldDefs.add('PatientID', ftInteger);
          FieldDefs.add('ItemsID', ftInteger);
          FieldDefs.add('ItemsName', ftString, 50);
          FieldDefs.add('BillDate', ftString, 10);
          FieldDefs.add('BillNo', ftString, 15);
          FieldDefs.add('Qty', FtFloat);
          FieldDefs.add('UnitRate', FtFloat);
          FieldDefs.add('Total', FtFloat);
          FieldDefs.add('DisPer', FtFloat);
          FieldDefs.add('OldDisPer', FtFloat); { ****not round off value... }
          FieldDefs.add('Discount', FtFloat);
          FieldDefs.add('OldDiscount', FtFloat);
          FieldDefs.add('VatAmt', FtFloat);
          FieldDefs.add('NetTotal', FtFloat);
          FieldDefs.add('User', ftString, 20);
          createtable;
     End;
End;

procedure TFormDischargeClearanceDetail.Edit_InPatientNoKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #8 Then
          Exit;
     IF Not(Key In ['0' .. '9']) Then
     Begin
          Key := #0;
          Beep;
     End;
end;

procedure TFormDischargeClearanceDetail.BtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TFormDischargeClearanceDetail.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = 27 Then
          Close;

     IF (pi_PanelShow = 1) and (Key = VK_F1) Then
          CB_SPDiscount.Checked := Not(CB_SPDiscount.Checked);

     IF (pi_PanelShow = 1) and (Key = VK_F2) and (BitBtn_SetDiscount.Enabled = True) Then
          BitBtn_SetDiscountClick(Sender);

     IF (Key = VK_F12) and (BtnSave.Enabled = True) Then
          BtnSaveClick(Sender);
End;

procedure TFormDischargeClearanceDetail.FormShow(Sender: TObject);
begin

     Update_SvrTax_Percent;

     IF gi_HospitalID = 2 Then
          Sbtn_ChangeRateType.Visible := True
     Else
          Sbtn_ChangeRateType.Visible := False;

     StatusBar1.Panels[1].Text := 'Login Date :' + gs_UserLoginDate + '      Time :' + gs_UserLoginTime;
     StatusBar1.Panels[2].Text := 'User :     ' + gs_UserName;
     StatusBar1.Panels[0].Text := 'F12 -> Save ';

     IF pi_PanelShow = 1 Then { for panel service charge }
     Begin
          PageControlServiceCharge.Visible := True;
          PageControlServiceCharge.BringToFront;
          PageControlBedCharge.Visible := False;
          PageControlMedicineCharge.Visible := False;

          IF gs_IsDoctorFractionActive <> 'Y' Then
          Begin
               CB_SPDiscount.Checked := False;

               CB_SPDiscount.Enabled := False;
               CB_SPDiscount.Visible := False;

               Label21.Visible := False;
               Label_DisAmount.Visible := False;
               Label31.Visible := False;

               DBLCB_ActualDrTech.Visible := False;

               Label30.Visible := False;

               Edit_DisPer.Visible := False;

               Label41.Visible := False;
               Label_FractionAmt.Visible := False;
               Label43.Visible := False;
               Label_DisAmount.Visible := False;

               BitBtn_SetDiscount.Enabled := False;
               BitBtn_SetDiscount.Visible := False;
          End;

          LabelNo.Caption := IntToStr(pi_PatientId);
          Labelname.Caption := ps_PName;
          LabelIpNo.Caption := IntToStr(pi_InPatientId);
          LabelTotalDay.Caption := IntToStr(pi_TotDays);

          DateEditXSCDate.SystemOfDate := gi_DateSystem;
          DateEditXSCDate.Text := ServerDate.TodaysDate;
          ChangeCaption(ButtonADVSregInvestigation, gi_DateSystem);

          DateEditXIPDate.SystemOfDate := gi_DateSystem;
          DateEditXIPDate.Text := ps_InptDate;
          ChangeCaption(Button2, gi_DateSystem);

          DateEditXDisDate.SystemOfDate := gi_DateSystem;
          DateEditXDisDate.Text := ps_DisDate; // ServerDate.TodaysDate;
          ChangeCaption(Button4, gi_DateSystem);
          IF pi_CommunityID > 0 Then
          Begin
               With Query_Community Do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select SchemeName as Community From Scheme where SchemeId=' + IntToStr(pi_SchemeId));
                    Open;
               End;
               IF ps_MemberNo = '' Then
                    LabelCommunity.Caption := Query_Community.FieldByName('Community').AsString
               Else
                    LabelCommunity.Caption := Query_Community.FieldByName('Community').AsString + '- MED.No. ' + ps_MemberNo;
               DBGridPatientTest.Columns[8].ReadOnly := False;
               DBGridPatientTest.Columns[9].ReadOnly := False;
          End
          Else
          Begin
               DBGridPatientTest.Columns[8].ReadOnly := True;
               DBGridPatientTest.Columns[9].ReadOnly := True;

               // DBGridPatientTest.Columns[8].ReadOnly:=False;
               // DBGridPatientTest.Columns[9].ReadOnly:=False;
          End;

          CreateTempDetailPTest;
          FillPatientTest;
          ServiceChargeCalculation;
          ActiveControl := DBGridPatientTest;
          DBGridPatientTest.SelectedIndex := 8;

          { for Fraction Modification }
          IF UpperCase(ps_FormAccessFrom) = 'FRACTIONMODIFY' Then
          Begin
               GroupBox_Account.Visible := False;
               BtnSave.Enabled := False;
               BitBtnPrint.Visible := False;
               BitBtnPrint.Enabled := False;
               DBGridPatientTest.Height := 384;
          End;
     End
     Else IF pi_PanelShow = 2 Then { **** for bed charge.... }
     Begin
          PageControlBedCharge.Visible := True;
          PageControlBedCharge.BringToFront;
          PageControlServiceCharge.Visible := False;
          PageControlMedicineCharge.Visible := False;

          LabelBCNo.Caption := IntToStr(pi_PatientId);
          LabelBCName.Caption := ps_PName;
          LabelBCIPNO.Caption := IntToStr(pi_InPatientId);
          LabelBCTotDay.Caption := IntToStr(pi_TotDays);

          DateEditXBCIPDate.SystemOfDate := gi_DateSystem;
          DateEditXBCIPDate.Text := ps_InptDate;
          ChangeCaption(Button7, gi_DateSystem);

          DateEditXBCDisDate.SystemOfDate := gi_DateSystem;
          DateEditXBCDisDate.Text := ps_DisDate; // ServerDate.TodaysDate;
          ChangeCaption(Button8, gi_DateSystem);
          If gi_HospitalID = 14 Then
               DBGridBedCharge.Columns[4].ReadOnly := False
          Else
               DBGridBedCharge.Columns[4].ReadOnly := True;
          IF pi_SchemeId > 0 Then
          Begin
               With Query_Community Do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select SchemeName as Community From Scheme where SchemeId=' + IntToStr(pi_SchemeId));
                    Open;
               End;

               IF ps_MemberNo = '' Then
                    LabelCommunityBC.Caption := Query_Community.FieldByName('Community').AsString
               Else
                    LabelCommunityBC.Caption := Query_Community.FieldByName('Community').AsString + '- MED.No. ' + ps_MemberNo;
               DBGridBedCharge.Columns[6].ReadOnly := False;
               DBGridBedCharge.Columns[7].ReadOnly := False;
          End
          Else
          Begin
               DBGridBedCharge.Columns[6].ReadOnly := True;
               DBGridBedCharge.Columns[7].ReadOnly := True;
          End;

          DateEditXBCDate.SystemOfDate := gi_DateSystem;
          DateEditXBCDate.Text := ServerDate.TodaysDate;
          ChangeCaption(Button6, gi_DateSystem);
          CreateTableBedCharge;
          FillBedCharge;
          BedChargeCalculation;
          ActiveControl := DBGridBedCharge;
          DBGridBedCharge.SelectedIndex := 6;
     End
     Else { **** for medicine Charge...... }
     Begin
          PageControlMedicineCharge.Visible := True;
          PageControlMedicineCharge.BringToFront;
          PageControlServiceCharge.Visible := False;
          PageControlBedCharge.Visible := False;

          LabelMCNo.Caption := IntToStr(pi_PatientId);
          LabelMCName.Caption := ps_PName;
          LabelMCIPNo.Caption := IntToStr(pi_InPatientId);
          LabelMCTotDay.Caption := IntToStr(pi_TotDays);

          DateEditX2.SystemOfDate := gi_DateSystem;
          DateEditX2.Text := ps_InptDate;
          ChangeCaption(Button3, gi_DateSystem);

          DateEditXMCDisDate.SystemOfDate := gi_DateSystem;
          DateEditXMCDisDate.Text := ps_DisDate; // ServerDate.TodaysDate;
          ChangeCaption(Button5, gi_DateSystem);

          DateEditXMCDate.SystemOfDate := gi_DateSystem;
          DateEditXMCDate.Text := ServerDate.TodaysDate;
          ChangeCaption(Button1, gi_DateSystem);
          With Query_Community do
          Begin
               Close;
               ParamByName('CommunityId').AsInteger := pi_CommunityID;
               Open;
          End;
          IF ps_MemberNo = '' Then
               LabelCommunityMC.Caption := Query_Community.FieldByName('Community').AsString
          Else
               LabelCommunityMC.Caption := Query_Community.FieldByName('Community').AsString + '- MED.No. ' + ps_MemberNo;
          CreateTableMedicineCharge;
          FillMedicineCharge;
          MedicineChargeCalculation;
          ActiveControl := DBGridMedicineCharge;
          DBGridMedicineCharge.SelectedIndex := 8;
     End;
End;

procedure TFormDischargeClearanceDetail.FillPatientTest;
begin
     DateEditXDisDate.SystemOfDate := gi_DateSystem;
     DateEditXIPDate.SystemOfDate := gi_DateSystem;
     Table_TempDetailPTest.databasename := gs_TempPath;
     Table_TempDetailPTest.Close;
     Table_TempDetailPTest.Exclusive := True;
     Table_TempDetailPTest.EmptyTable;
     Table_TempDetailPTest.Open;

     IF b_IsDischargePt = True Then
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select DisDate From InpatientReg where InpatientId=' + IntToStr(pi_InPatientId));
               Open;
          End;
     End;

     with QueryPatientTest do
     Begin
          Close;
          ParamByName('IPID').AsInteger := pi_InPatientId;
          ParamByName('FromDate').AsString := DateEditXIPDate.Text;
          IF ps_DisInDeposit = 'Y' Then
          Begin
               IF b_IsDischargePt = True Then
                    ParamByName('ToDate').AsString := Query_Process.FieldByName('DisDate').AsString
               Else
                    ParamByName('ToDate').AsString := ServerDate.TodaysDate;
          End
          Else
               ParamByName('ToDate').AsString := DateEditXDisDate.Text;

          IF b_IsDischargePt = True Then
               sql[8] := ' And Service<>''BED'' and Service<>''DOCROUND'''
          Else
               sql[8] := ' and PayType=''CREDIT'' ';
          Open;
     End;

     QueryPatientTest.First;
     while not QueryPatientTest.EOF Do
     Begin
          with Table_TempDetailPTest do
          Begin
               Append;
               FieldByName('BillDetailId').AsInteger := QueryPatientTest.FieldByName('BillDetailId').AsInteger;
               FieldByName('InPatientId').AsInteger := QueryPatientTest.FieldByName('InPatientId').AsVariant;

               IF (QueryPatientTest.FieldByName('SchemeId').AsVariant > 0) and (pi_SchemeId = 0) and
                 (QueryPatientTest.FieldByName('Dis').AsFloat > 0) Then
               Begin
                    FieldByName('CommunityId').AsInteger := QueryPatientTest.FieldByName('CommunityId').AsVariant;
                    FieldByName('SchemeId').AsInteger := QueryPatientTest.FieldByName('SchemeId').AsVariant;
               End
               Else
               Begin
                    FieldByName('CommunityId').AsInteger := pi_CommunityID;
                    FieldByName('SchemeId').AsInteger := pi_SchemeId;
               End;

               FieldByName('BillDate').AsString := QueryPatientTest.FieldByName('BillDate').AsString;
               FieldByName('CrModifyDate').AsString := QueryPatientTest.FieldByName('CrModifyDate').AsString;
               FieldByName('BillNo').AsString := QueryPatientTest.FieldByName('BillNo').AsString;
               FieldByName('CrBillNo').AsString := QueryPatientTest.FieldByName('CrBillNo').AsString;
               FieldByName('TestNameCode').AsString := QueryPatientTest.FieldByName('Service').AsString;
               // GetTestNameCode(QueryPatientTest.FieldByName('PatientTestId').AsVariant);
               FieldByName('TestName').AsString := QueryPatientTest.FieldByName('ServiceType').AsString;
               FieldByName('Category').AsString := QueryPatientTest.FieldByName('RateType').AsString;
               FieldByName('DocCode').AsString := QueryPatientTest.FieldByName('DocCode').AsString;
               FieldByName('TNCategoryCode').AsString := QueryPatientTest.FieldByName('TNCategoryCode').AsString;
               FieldByName('CostPrice').AsFloat := QueryPatientTest.FieldByName('Amount').AsFloat;
               FieldByName('Qty').AsFloat := QueryPatientTest.FieldByName('Qty').AsFloat;
               FieldByName('Total').AsFloat := QueryPatientTest.FieldByName('TotalAmt').AsFloat;
               FieldByName('DisPer').AsFloat := QueryPatientTest.FieldByName('Dis').AsFloat;
               FieldByName('OldDisPer').AsFloat := QueryPatientTest.FieldByName('Dis').AsFloat;
               FieldByName('OrgDisPer').AsFloat := QueryPatientTest.FieldByName('Dis').AsFloat;
               FieldByName('Discount').AsFloat := QueryPatientTest.FieldByName('Discount').AsFloat;
               FieldByName('OldDiscount').AsFloat := QueryPatientTest.FieldByName('Discount').AsFloat;
               FieldByName('VatAmt').AsFloat := QueryPatientTest.FieldByName('VatAmt').AsFloat;
               FieldByName('NetTotal').AsFloat := QueryPatientTest.FieldByName('NetTotal').AsFloat;
               FieldByName('Payment').AsFloat := QueryPatientTest.FieldByName('Payment').AsFloat;
               FieldByName('User').AsString := QueryPatientTest.FieldByName('UserName').AsString;
               Post;
          End;
          QueryPatientTest.Next;
     End;

     { FOR GETTING THE PREVIOUS CREDIT CHARGE }
     { ======================================= }
     { With QueryPatientTestOLd Do
       Begin
       Close;
       ParamByName('PatientID').AsInteger:=pi_PatientId;
       ParamByName('Todate').AsString:=DateEditXDisDate.text;
       ParamByName('FromDate').AsString:=DateEditXIPDate.Text;
       Open;
       First;
       While Not Eof Do
       Begin
       With Table_TempDetailPTest do
       Begin
       Append;
       FieldByName('BillDetailId').AsInteger:=QueryPatientTestOLd.FieldByName('BillDetailId').AsInteger;
       FieldByName('InPatientId').AsInteger:=QueryPatientTestOLd.FieldByName('InPatientId').AsVariant;
       FieldByName('BillDate').AsString:=QueryPatientTestOLd.FieldByName('BillDate').AsString;
       FieldByName('CrModifyDate').AsString:=QueryPatientTestOLd.FieldByName('CrModifyDate').AsString;
       FieldByName('BillNo').AsString:=QueryPatientTestOLd.FieldByName('BillNo').AsString;
       FieldByName('TestNameCode').AsString:=QueryPatientTestOLd.FieldByName('Service').AsString;//GetTestNameCode(QueryPatientTest.FieldByName('PatientTestId').AsVariant);
       FieldByName('TestName').AsString:=QueryPatientTestOLd.FieldByName('ServiceType').AsString;
       FieldByName('Category').AsString:=QueryPatientTestOLd.FieldByName('RateType').AsString;
       FieldByName('CostPrice').AsFloat:=QueryPatientTestOLd.FieldByName('Amount').AsFloat;
       FieldByName('Qty').AsFloat:=QueryPatientTestOLd.FieldByName('Qty').AsFloat;
       FieldByName('Total').AsFloat:=QueryPatientTestOLd.FieldByName('TotalAmt').AsFloat;
       FieldByName('DisPer').AsFloat:=QueryPatientTestOLd.FieldByName('Dis').AsFloat;
       FieldByName('OldDisPer').AsFloat:=QueryPatientTestOLd.FieldByName('Dis').AsFloat;
       FieldByName('Discount').AsFloat:=QueryPatientTestOLd.FieldByName('Discount').AsFloat;
       FieldByName('OldDiscount').AsFloat:=QueryPatientTestOLd.FieldByName('Discount').AsFloat;
       FieldByName('VatAmt').AsFloat:=QueryPatientTestOLd.FieldByName('VatAmt').AsFloat;
       FieldByName('NetTotal').AsFloat:=QueryPatientTestOLd.FieldByName('NetTotal').AsFloat;
       FieldByName('User').AsString:=QueryPatientTestOLd.FieldByName('User').AsString;
       Post;
       End;
       Next;
       End;
       End;
       Table_TempDetailPTest.First; }
End;

procedure TFormDischargeClearanceDetail.FillBedCharge;
var
     lf_DisAmt, lf_TotAmt, lf_DisPer, lf_TotTaxAmt: Double;
     ls_CurrentDate, ls_CurrentTime, ls_CurTime, ls_IsDischargePoint: String;
     i: Integer;
begin
     with QueryBedCharge do
     Begin
          Close;
          ParamByName('InptID').AsInteger := pi_InPatientId;
          Open;
     End;
     Table_TempBedCharge.databasename := gs_TempPath;
     Table_TempBedCharge.Close;
     Table_TempBedCharge.Exclusive := True;
     Table_TempBedCharge.EmptyTable;
     Table_TempBedCharge.Open;
     QueryBedCharge.First;
     lf_DisPer := 0;
     i := 0;
     while not QueryBedCharge.EOF do
     Begin
          with Table_TempBedCharge do
          Begin
               i := i + 1;
               ls_CurrentDate := QueryBedCharge.FieldByName('OutDate').AsString;
               ls_IsDischargePoint := 'N';
               IF ls_CurrentDate = 'C' Then { *** C- means at Current.... }
               Begin
                    ls_CurrentDate := ps_DisDate;
                    ls_CurTime := ServerDate.TodaysTime;
                    ls_CurrentTime := 'C';
               End
               Else
               Begin
                    ls_CurrentTime := QueryBedCharge.FieldByName('OutDate').AsString;
                    IF Trim(QueryBedCharge.FieldByName('DisBillDate').AsString) <> '' Then
                         ls_IsDischargePoint := 'Y';
               End;

               pi_NoOfDays := GetTotalDays(QueryBedCharge.FieldByName('InptDate').AsString, ls_CurrentDate, ls_CurrentTime,
                    ls_IsDischargePoint);

               Append;
               FieldByName('InPatientDId').AsInteger := QueryBedCharge.FieldByName('InPatientDId').AsInteger;
               FieldByName('RoomType').AsString := QueryBedCharge.FieldByName('RoomType').AsString;
               FieldByName('FromDate').AsString := QueryBedCharge.FieldByName('InptDate').AsString;
               FieldByName('ToDate').AsString := ls_CurrentDate;

               IF (pi_NoOfDays = 0) and (i = 1) Then
               Begin
                    lf_TotAmt := QueryBedCharge.FieldByName('BedCharge').AsFloat * 1;
                    FieldByName('TotalDays').AsInteger := 1;
                    pi_NoOfDays := 1;
               End
               Else
               Begin
                    lf_TotAmt := QueryBedCharge.FieldByName('BedCharge').AsFloat * pi_NoOfDays;
                    FieldByName('TotalDays').AsInteger := pi_NoOfDays;
               End;

               FieldByName('Rate').AsFloat := QueryBedCharge.FieldByName('BedCharge').AsFloat;
               lf_TotTaxAmt := QueryBedCharge.FieldByName('VatAmt').AsFloat * pi_NoOfDays;
               IF gs_GovtTaxRule = 'TAD' Then
                    FieldByName('VatAmt').AsFloat := lf_TotTaxAmt - (lf_TotTaxAmt * QueryBedCharge.FieldByName('DisPer').AsFloat / 100)
               Else
                    FieldByName('VatAmt').AsFloat := lf_TotTaxAmt;
               FieldByName('DisPer').AsFloat := QueryBedCharge.FieldByName('DisPer').AsFloat;
               FieldByName('OldDisPer').AsFloat := QueryBedCharge.FieldByName('DisPer').AsFloat;
               FieldByName('OrgDisPer').AsFloat := QueryBedCharge.FieldByName('DisPer').AsFloat;
               // lf_TotAmt:=QueryBedCharge.FieldByName('BedCharge').AsFloat * pi_TotDays;
               FieldByName('Total').AsFloat := StrToFloat(Format('%.2f', [lf_TotAmt]));
               lf_DisAmt := lf_TotAmt * (QueryBedCharge.FieldByName('DisPer').AsFloat / 100);
               FieldByName('Discount').AsFloat := StrToFloat(Format('%.2f', [lf_DisAmt]));
               FieldByName('OldDiscount').AsFloat := StrToFloat(Format('%.2f', [lf_DisAmt]));
               FieldByName('NetTotal').AsFloat := StrToFloat(Format('%.2f', [lf_TotAmt - lf_DisAmt]));
               Post;
          End;
          QueryBedCharge.Next;
     End;
     Table_TempBedCharge.First;
End;

{ procedure TFormDischargeClearanceDetail.FillBedCharge;
  var lf_DisAmt,lf_TotAmt,lf_DisPer:Double;
  ls_CurrentDate:String;
  i:Integer;
  begin
  with QueryBedCharge do
  Begin
  Close;
  ParamByName('InptID').AsInteger:=pi_InpatientId;
  open;
  End;
  Table_TempBedCharge.DatabaseName:=gs_TempPath;
  Table_TempBedCharge.Close;
  Table_TempBedCharge.Exclusive:=True;
  Table_TempBedCharge.EmptyTable;
  Table_TempBedCharge.open;
  QueryBedCharge.First;
  lf_DisPer:=0;
  i:=0;
  while not QueryBedCharge.EOF do
  Begin
  with Table_TempBedCharge do
  Begin
  i:=i+1;
  ls_CurrentDate:=QueryBedCharge.FieldByName('OutDate').AsString;
  IF ls_CurrentDate='C' Then {*** C- means at Current.... }
{ ls_CurrentDate:=ps_DisDate;
  pi_NoOfDays:=GetTotalDays(QueryBedCharge.FieldByName('InptDate').AsString,ls_CurrentDate);

  Append;
  FieldByName('InPatientDId').AsInteger:=QueryBedCharge.FieldByName('InPatientDId').AsInteger;
  FieldByName('RoomType').AsString:=QueryBedCharge.FieldByName('RoomType').AsString;
  FieldByName('FromDate').AsString:=QueryBedCharge.FieldByName('InptDate').AsString;
  FieldByName('ToDate').AsString:=ls_CurrentDate;

  IF (pi_NoOfDays=0) and (i=1) Then
  Begin
  lf_TotAmt:=QueryBedCharge.FieldByName('BedCharge').AsFloat * 1;
  FieldByName('TotalDays').AsInteger:=1;
  End
  Else
  Begin
  lf_TotAmt:=QueryBedCharge.FieldByName('BedCharge').AsFloat * pi_NoOfDays;
  FieldByName('TotalDays').AsInteger:=pi_NoOfDays;
  End;

  FieldByName('Rate').AsFloat:=QueryBedCharge.FieldByName('BedCharge').AsFloat;
  FieldByName('VatAmt').AsFloat:=QueryBedCharge.FieldByName('VatAmt').AsFloat;
  FieldByName('DisPer').AsFloat:=QueryBedCharge.FieldByName('DisPer').AsFloat;
  FieldByName('OldDisPer').AsFloat:=QueryBedCharge.FieldByName('DisPer').AsFloat;
  FieldByName('OrgDisPer').AsFloat:=QueryBedCharge.FieldByName('DisPer').AsFloat;
  //lf_TotAmt:=QueryBedCharge.FieldByName('BedCharge').AsFloat * pi_TotDays;
  FieldByName('Total').AsFloat:=StrToFloat(Format('%.2f',[lf_TotAmt]));
  lf_DisAmt:=lf_TotAmt * (QueryBedCharge.FieldByName('DisPer').AsFloat/100);
  FieldByName('Discount').AsFloat:=StrToFloat(Format('%.2f',[lf_DisAmt]));
  FieldByName('OldDiscount').AsFloat:=StrToFloat(Format('%.2f',[lf_DisAmt]));
  FieldByName('NetTotal').AsFloat:=StrToFloat(Format('%.2f',[lf_TotAmt - lf_DisAmt]));
  Post;
  End;
  QueryBedCharge.Next;
  End;
  Table_TempBedCharge.First;
  End; }

procedure TFormDischargeClearanceDetail.FillMedicineCharge;
Var
     lf_TotalAmt, lf_RtTotalAmt, lf_DisAmt, lf_RtDisAmt: Double;
Begin
     with QueryMedicineCharge do
     Begin
          Close;
          sql.Clear;
          sql.add(' select SM.InvoiceNo,SM.BillDate,SM.SaleMasterId,SD.SaleDetailId,SM.CustomerId,SD.ItemsId,SD.CurQty,SM.InpatientId,');
          sql.add(' SD.VatAmt, SD.UnitRate,(SD.CurQty*SD.UnitRate) as Total,'); { ** CurQty- Remaining quantity after returning... }
          sql.add(' SD.Discount as DisPer,((SD.CurQty*SD.UnitRate)*(SD.Discount/100)) as Discount,');
          sql.add(' IL.itemsname From SaleMaster SM,SaleDetail SD,ItemsList IL where (SM.SaleMasterId=SD.SaleMasterId)');
          sql.add(' and (SD.itemsid=IL.itemsid) and (SM.ST=''N'')'); { *** N for credit bill... }
          sql.add(' and (SM.STATUS1=1) and (SD.InPatientId=' + IntToStr(pi_InPatientId) + ') and (SD.CurQty > 0) ');
          { ** O status for Credit bill .. }
          sql.add(' Order by SM.BillDate,SM.InvoiceNo');
          Open;
     End;

     Table_TempMedicineCharge.databasename := gs_TempPath;
     Table_TempMedicineCharge.Close;
     Table_TempMedicineCharge.Exclusive := True;
     Table_TempMedicineCharge.EmptyTable;
     Table_TempMedicineCharge.Open;
     QueryMedicineCharge.First;
     while not QueryMedicineCharge.EOF do
     Begin
          With Table_TempMedicineCharge do
          Begin
               Append;
               FieldByName('SaleDetailId').AsInteger := QueryMedicineCharge.FieldByName('SaleDetailId').AsInteger;
               FieldByName('SaleMasterId').AsInteger := QueryMedicineCharge.FieldByName('SaleMasterId').AsVariant;
               FieldByName('InPatientId').AsInteger := QueryMedicineCharge.FieldByName('InpatientId').AsInteger;
               FieldByName('BillDate').AsString := QueryMedicineCharge.FieldByName('BillDate').AsString;
               FieldByName('BillNo').AsString := QueryMedicineCharge.FieldByName('InvoiceNo').AsString;
               FieldByName('ItemsName').AsString := QueryMedicineCharge.FieldByName('ItemsName').AsString;
               FieldByName('UnitRate').AsFloat := QueryMedicineCharge.FieldByName('UnitRate').AsFloat;
               FieldByName('Qty').AsFloat := QueryMedicineCharge.FieldByName('CurQty').AsFloat;
               FieldByName('Total').AsFloat := QueryMedicineCharge.FieldByName('Total').AsFloat;
               FieldByName('DisPer').AsFloat := QueryMedicineCharge.FieldByName('DisPer').AsFloat;
               FieldByName('OldDisPer').AsFloat := QueryMedicineCharge.FieldByName('DisPer').AsFloat;
               FieldByName('Discount').AsFloat := QueryMedicineCharge.FieldByName('Discount').AsFloat;
               FieldByName('OldDiscount').AsFloat := QueryMedicineCharge.FieldByName('Discount').AsFloat;
               FieldByName('VatAmt').AsFloat := QueryMedicineCharge.FieldByName('VatAmt').AsFloat;
               FieldByName('NetTotal').AsFloat := QueryMedicineCharge.FieldByName('Total').AsFloat - QueryMedicineCharge.FieldByName
                 ('Discount').AsFloat;
               Post;
          End;
          QueryMedicineCharge.Next;
     End;
     Table_TempMedicineCharge.First;
End;

procedure TFormDischargeClearanceDetail.ServiceChargeCalculation;
Begin
     Query_TempProcess.databasename := gs_TempPath;
     with Query_TempProcess do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(Total) as Total,Sum(Discount) as Discount,');
          sql.add(' Sum(NetTotal) as NetTotal, Sum(VatAmt) as VatAmt From ');
          sql.add(' DetailPatientTest.db Group by InPatientId');
          Open;
     End;
     EditTotal.Text := FloatToStr(Query_TempProcess.FieldByName('Total').AsFloat);
     LabelVTot.Caption := FloatToStr(Query_TempProcess.FieldByName('VatAmt').AsFloat);
     EditDisAmt.Text := FloatToStr(Query_TempProcess.FieldByName('Discount').AsFloat);
     LabelTotal.Caption := FloatToStr((Query_TempProcess.FieldByName('Total').AsFloat + Query_TempProcess.FieldByName('VatAmt').AsFloat)
            - Query_TempProcess.FieldByName('Discount').AsFloat);
End;

procedure TFormDischargeClearanceDetail.BedChargeCalculation;
Begin
     Query_TempProcess.databasename := gs_TempPath;
     with Query_TempProcess do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(Total) as Total,Sum(Discount) as Discount,');
          sql.add(' Sum(NetTotal) as NetTotal, Sum(VatAmt) as VatAmt From ');
          sql.add(' BedChargeDetail.db Group by InPatientId');
          Open;
     End;
     EditBCTotal.Text := FloatToStr(Query_TempProcess.FieldByName('Total').AsFloat);
     LabelBCVTot.Caption := FloatToStr(Query_TempProcess.FieldByName('VatAmt').AsFloat);
     EditBCDisAmt.Text := FloatToStr(Query_TempProcess.FieldByName('Discount').AsFloat);
     LabelBCTotal.Caption := FloatToStr((Query_TempProcess.FieldByName('Total').AsFloat + Query_TempProcess.FieldByName('VatAmt').AsFloat)
            - Query_TempProcess.FieldByName('Discount').AsFloat);
End;

procedure TFormDischargeClearanceDetail.MedicineChargeCalculation;
Begin
     Query_TempProcess.databasename := gs_TempPath;
     with Query_TempProcess do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(Total) as Total,Sum(Discount) as Discount,');
          sql.add(' Sum(NetTotal) as NetTotal, Sum(VatAmt) as VatAmt From ');
          sql.add(' MedicineChargeDetail.db Group by InPatientId');
          Open;
     End;
     EditMCTotal.Text := FloatToStr(Query_TempProcess.FieldByName('Total').AsFloat);
     LabelMCVTot.Caption := FloatToStr(Query_TempProcess.FieldByName('VatAmt').AsFloat);
     EditMCDisAmt.Text := FloatToStr(Query_TempProcess.FieldByName('Discount').AsFloat);
     LabelMCTotal.Caption := FloatToStr((Query_TempProcess.FieldByName('Total').AsFloat + Query_TempProcess.FieldByName('VatAmt').AsFloat)
            - Query_TempProcess.FieldByName('Discount').AsFloat);
End;

Function TFormDischargeClearanceDetail.GetTestNameCode(PatientTestId: LongInt): String;
Begin
     with Query_Process do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select TestNameCode From PatientTest where PatientTestId=' + IntToStr(PatientTestId));
          Open;
     End;
     Result := Query_Process.FieldByName('TestNameCode').AsString;
End;

procedure TFormDischargeClearanceDetail.DBGridPatientTestKeyPress(Sender: TObject; var Key: Char);
var
     lf_Discount, lf_DiscountPer: Double;
begin
     IF Key = #13 Then
     Begin
          IF not Table_TempDetailPTest.Active Then
               Table_TempDetailPTest.Active := True;
          IF (DBGridPatientTest.SelectedIndex = 9) and (DBGridPatientTest.Fields[9].Value > 100) Then
          Begin
               MessageDlg('Sorry ! Discount Per. shouldn''t be greate than 100', mtWarning, [mbok], 0);
               DBGridPatientTest.SelectedIndex := 9;
               Exit;
          End;
          IF DBGridPatientTest.Fields[10].Value > DBGridPatientTest.Fields[8].Value Then
          Begin
               MessageDlg('Sorry ! Discount amount shouldn''t be greate than total amount', mtWarning, [mbok], 0);
               DBGridPatientTest.SelectedIndex := 10;
               Exit;
          End;
          IF (DBGridPatientTest.SelectedIndex = 9) or (DBGridPatientTest.SelectedIndex = 10) Then { *** specail for manipal requirment.... }
          Begin
               IF Table_TempDetailPTest.FieldByName('TestName').AsString <> 'INPATIENT REG CHARGE' Then
               Begin
                    With Query_Process do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(
                              ' Select NVL(IsVatable,''N'') IsVatable,NVL(ISDiscountable,''N'') as IsDiscountable From TestName where TestNameCode=' +
                                #39 + Table_TempDetailPTest.FieldByName('TestNameCode').AsString + #39);
                         Open;
                    End;

                    // IF Query_Process.FieldByName('Vat').AsFloat = 0 Then //0 - non vatable(so dont give discount to non vatable items) , 1- vatable.
                    IF (Query_Process.FieldByName('IsVatable').AsString = 'N') or
                      (Query_Process.FieldByName('IsDiscountable').AsString = 'N') Then
                    Begin
                         Table_TempDetailPTest.Edit;
                         DBGridPatientTest.Fields[9].Value := 0;
                         DBGridPatientTest.Fields[10].Value := 0;
                         Table_TempDetailPTest.Post;
                         IF DBGridPatientTest.SelectedIndex = 10 Then
                         Begin
                              Table_TempDetailPTest.Next;
                              DBGridPatientTest.SelectedIndex := 9;
                         End
                         Else
                              DBGridPatientTest.SelectedIndex := 10;
                         Exit;
                    End;
               End;

               // 7-Total, 8-Disper ,9-Discount, 10-NetTotal, 11-OldDisper,12-OldDiscount

               IF (DBGridPatientTest.Fields[9].Text <> '') or (DBGridPatientTest.Fields[10].Text <> '') Then
               Begin
                    Table_TempDetailPTest.Edit;
                    IF DBGridPatientTest.Fields[12].Value = DBGridPatientTest.Fields[9].Value Then
                    Begin
                         // DBGridPatientTest.Fields[8].Value:=RoundingFloatValue((DBGridPatientTest.Fields[9].Value/DBGridPatientTest.Fields[7].Text)*100);
                         DBGridPatientTest.Fields[9].Value := ((DBGridPatientTest.Fields[10].Value / DBGridPatientTest.Fields[8].Text)
                                * 100);
                         DBGridPatientTest.Fields[12].Value := (DBGridPatientTest.Fields[10].Value / DBGridPatientTest.Fields[8].Text)
                           * 100;
                         IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                              DBGridPatientTest.Fields[7].Value :=
                                (((DBGridPatientTest.Fields[8].Value) - (DBGridPatientTest.Fields[10].Value)) * gf_VatPer / 100);
                         // (DBGridPatientTest.Fields[10].Value * gf_VatPer /100);
                    End
                    Else
                    Begin
                         IF Abs((DBGridPatientTest.Fields[12].Value - DBGridPatientTest.Fields[9].Value)) > 0.0001 Then
                         Begin
                              IF DBGridPatientTest.Fields[9].Value > 0 Then
                                   DBGridPatientTest.Fields[12].Value := DBGridPatientTest.Fields[9].Value;
                              IF DBGridPatientTest.Fields[9].Value = 0 Then
                              Begin
                                   lf_DiscountPer := DBGridPatientTest.Fields[9].Value;
                                   DBGridPatientTest.Fields[12].Value := DBGridPatientTest.Fields[9].Value;
                              End
                              Else
                                   lf_DiscountPer := DBGridPatientTest.Fields[12].Value;
                              IF lf_DiscountPer > 0 Then
                              Begin
                                   lf_Discount := DBGridPatientTest.Fields[8].Value * lf_DiscountPer / 100;
                                   DBGridPatientTest.Fields[10].Text := Format('%.2f', [lf_Discount]);
                                   DBGridPatientTest.Fields[13].Text := Format('%.2f', [lf_Discount]);
                                   DBGridPatientTest.Fields[11].Text := (DBGridPatientTest.Fields[8].Value) -
                                     (DBGridPatientTest.Fields[10].Value);
                                   IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                        DBGridPatientTest.Fields[7].Value := (DBGridPatientTest.Fields[11].Value * gf_VatPer / 100);
                              End
                              Else
                              Begin
                                   lf_Discount := DBGridPatientTest.Fields[8].Value * lf_DiscountPer / 100;
                                   DBGridPatientTest.Fields[10].Text := Format('%.2f', [lf_Discount]);
                                   DBGridPatientTest.Fields[13].Text := Format('%.2f', [lf_Discount]);
                                   DBGridPatientTest.Fields[11].Text := (DBGridPatientTest.Fields[8].Value) -
                                     (DBGridPatientTest.Fields[10].Value);
                                   IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                        DBGridPatientTest.Fields[7].Value := (DBGridPatientTest.Fields[11].Value * gf_VatPer / 100);
                              End;
                         End
                         Else IF DBGridPatientTest.Fields[10].Value <> DBGridPatientTest.Fields[13].Value Then
                         Begin
                              // DBGridPatientTest.Fields[8].Value:=RoundingFloatValue((DBGridPatientTest.Fields[9].Value/DBGridPatientTest.Fields[7].Text)*100);
                              DBGridPatientTest.Fields[9].Value := ((DBGridPatientTest.Fields[10].Value / DBGridPatientTest.Fields[8].Text)
                                     * 100);
                              DBGridPatientTest.Fields[12].Value := (DBGridPatientTest.Fields[10].Value / DBGridPatientTest.Fields[8].Text)
                                * 100;
                              IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                   DBGridPatientTest.Fields[7].Value :=
                                     (((DBGridPatientTest.Fields[8].Value) - (DBGridPatientTest.Fields[10].Value)) * gf_VatPer / 100);
                              // (DBGridPatientTest.Fields[10].Value * gf_VatPer /100);
                         End;
                    End;
                    Table_TempDetailPTest.Post;
                    ServiceChargeCalculation;
                    IF DBGridPatientTest.SelectedIndex = 10 Then
                    Begin
                         Table_TempDetailPTest.Next;
                         DBGridPatientTest.SelectedIndex := 9;
                    End
                    Else
                         DBGridPatientTest.SelectedIndex := 10;
               End;
          End;
     End;
End;

procedure TFormDischargeClearanceDetail.DBGridBedChargeKeyPress(Sender: TObject; var Key: Char);
var
     lf_Discount, lf_DiscountPer: Double;
begin
     IF Key = #13 Then
     Begin
          IF not Table_TempBedCharge.Active Then
               Table_TempBedCharge.Active := True;

          If (DBGridBedCharge.SelectedIndex = 4) And (DBGridBedCharge.Fields[4].Value <= 0) Then
          Begin
               MessageDlg('Sorry ! Rate shouldn''t be less than 0', mtWarning, [mbok], 0);
               DBGridBedCharge.SelectedIndex := 4;
               Exit;
          End;
          IF (DBGridBedCharge.SelectedIndex = 6) and (DBGridBedCharge.Fields[6].Value > 100) Then
          Begin
               MessageDlg('Sorry ! Discount Per. shouldn''t be greater than 100', mtWarning, [mbok], 0);
               DBGridBedCharge.SelectedIndex := 6;
               Exit;
          End;

          IF DBGridBedCharge.Fields[7].Value > DBGridBedCharge.Fields[5].Value Then
          Begin
               MessageDlg('Sorry ! Discount amount shouldn''t be greater than total amount', mtWarning, [mbok], 0);
               DBGridBedCharge.SelectedIndex := 9;
               Exit;
          End;

          IF (DBGridBedCharge.SelectedIndex = 6) or (DBGridBedCharge.SelectedIndex = 7) or (DBGridBedCharge.SelectedIndex = 4) Then
          Begin
               IF (DBGridBedCharge.Fields[4].Text <> '') And (gi_HospitalID = 14) Then
               Begin
                    Table_TempBedCharge.Edit;
                    DBGridBedCharge.Fields[4].Value := RoundingAfterSecondPlace(DBGridBedCharge.Fields[4].Value);
                    DBGridBedCharge.Fields[5].Value := ((DBGridBedCharge.Fields[4].Value) * (DBGridBedCharge.Fields[3].Value));
                    DBGridBedCharge.Fields[8].Text := (DBGridBedCharge.Fields[5].Value);
                    DBGridBedCharge.Fields[9].Value := (DBGridBedCharge.Fields[8].Value * gf_VatPer / 100);
                    Table_TempBedCharge.Post;
                    BedChargeCalculation;
                    Table_TempBedCharge.Next;
               End;
               IF (DBGridBedCharge.Fields[6].Text <> '') or (DBGridBedCharge.Fields[7].Text <> '') Then
               Begin
                    Table_TempBedCharge.Edit;
                    IF DBGridBedCharge.Fields[10].Value = DBGridBedCharge.Fields[6].Value Then
                    Begin
                         // DBGridBedCharge.Fields[6].Value:=RoundingFloatValue((DBGridBedCharge.Fields[7].Value/DBGridBedCharge.Fields[5].Text)*100);
                         DBGridBedCharge.Fields[6].Value := ((DBGridBedCharge.Fields[7].Value / DBGridBedCharge.Fields[5].Text) * 100);
                         DBGridBedCharge.Fields[10].Value := (DBGridBedCharge.Fields[7].Value / DBGridBedCharge.Fields[5].Text) * 100;
                         IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                         Begin
                              DBGridBedCharge.Fields[8].Text := (DBGridBedCharge.Fields[5].Value) - (DBGridBedCharge.Fields[7].Value);
                              DBGridBedCharge.Fields[9].Value := (DBGridBedCharge.Fields[8].Value * gf_VatPer / 100);
                         End;
                    End
                    Else
                    Begin
                         IF Abs((DBGridBedCharge.Fields[10].Value - DBGridBedCharge.Fields[6].Value)) > 0.0001 Then
                         Begin
                              IF DBGridBedCharge.Fields[6].Value > 0 Then
                                   DBGridBedCharge.Fields[10].Value := DBGridBedCharge.Fields[6].Value;
                              IF DBGridBedCharge.Fields[6].Value = 0 Then
                              Begin
                                   lf_DiscountPer := DBGridBedCharge.Fields[6].Value;
                                   DBGridBedCharge.Fields[10].Value := DBGridBedCharge.Fields[6].Value;
                              End
                              Else
                                   lf_DiscountPer := DBGridBedCharge.Fields[10].Value;

                              IF lf_DiscountPer > 0 Then
                              Begin
                                   lf_Discount := DBGridBedCharge.Fields[5].Value * lf_DiscountPer / 100;
                                   DBGridBedCharge.Fields[7].Text := Format('%.2f', [lf_Discount]);
                                   DBGridBedCharge.Fields[11].Text := Format('%.2f', [lf_Discount]);
                                   DBGridBedCharge.Fields[8].Text := (DBGridBedCharge.Fields[5].Value) - (DBGridBedCharge.Fields[7].Value);
                                   IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                        DBGridBedCharge.Fields[9].Value := (DBGridBedCharge.Fields[8].Value * gf_VatPer / 100);
                              End
                              Else
                              Begin
                                   lf_Discount := DBGridBedCharge.Fields[5].Value * lf_DiscountPer / 100;
                                   DBGridBedCharge.Fields[7].Text := Format('%.2f', [lf_Discount]);
                                   DBGridBedCharge.Fields[11].Text := Format('%.2f', [lf_Discount]);
                                   DBGridBedCharge.Fields[8].Text := (DBGridBedCharge.Fields[5].Value) - (DBGridBedCharge.Fields[7].Value);
                                   IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                        DBGridBedCharge.Fields[9].Value := (DBGridBedCharge.Fields[8].Value * gf_VatPer / 100);
                              End;
                         End
                         Else IF DBGridBedCharge.Fields[7].Value <> DBGridBedCharge.Fields[11].Value Then
                         Begin
                              // DBGridBedCharge.Fields[6].Value:=RoundingFloatValue((DBGridBedCharge.Fields[7].Value/DBGridBedCharge.Fields[5].Text)*100);
                              DBGridBedCharge.Fields[6].Value := ((DBGridBedCharge.Fields[7].Value / DBGridBedCharge.Fields[5].Text) * 100);
                              DBGridBedCharge.Fields[10].Value := (DBGridBedCharge.Fields[7].Value / DBGridBedCharge.Fields[5].Text) * 100;
                              IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
                                   DBGridBedCharge.Fields[9].Value :=
                                     (((DBGridBedCharge.Fields[5].Value) - (DBGridBedCharge.Fields[7].Value)) * gf_VatPer / 100);
                              // (DBGridBedCharge.Fields[8].Value * gf_VatPer /100);
                         End;
                    End;
                    Table_TempBedCharge.Post;
                    BedChargeCalculation;
                    IF DBGridBedCharge.SelectedIndex = 7 Then
                    Begin
                         Table_TempBedCharge.Next;
                         DBGridBedCharge.SelectedIndex := 6;
                    End
                    Else
                         DBGridBedCharge.SelectedIndex := 7;
               End;
          End;
     End;
End;

procedure TFormDischargeClearanceDetail.DBGridMedicineChargeKeyPress(Sender: TObject; var Key: Char);
var
     lf_Discount: Double;
begin
     IF Key = #13 Then
     Begin
          IF not Table_TempMedicineCharge.Active Then
               Table_TempMedicineCharge.Active := True;
          IF DBGridMedicineCharge.SelectedIndex = 8 Then { specail for manipal requirment }
          Begin
               IF (DBGridMedicineCharge.Fields[8].Text <> '') Then
               Begin
                    Table_TempMedicineCharge.Edit;
                    lf_Discount := ((StrToFloat(DBGridMedicineCharge.Fields[7].Text)) * ((DBGridMedicineCharge.Fields[8].Value) / 100));
                    DBGridMedicineCharge.Fields[9].Text := Format('%.2f', [lf_Discount]);
                    DBGridMedicineCharge.Fields[10].Text := (DBGridMedicineCharge.Fields[7].Value) - (DBGridMedicineCharge.Fields[9].Value);
                    Table_TempMedicineCharge.Post;
                    MedicineChargeCalculation;
                    Table_TempMedicineCharge.Next;
               End;
          End;
     End;
end;

Procedure TFormDischargeClearanceDetail.CheckTestNameCode;
Var
     TestNameCodeP: String;
     TestPriceP, Discount: Double;
Begin
     { {  TestNameCodeP:=Uppercase(DBGridPatientTest.Fields[2].Text);
       With QueryTestName Do
       Begin
       IF Not Active Then Active:=True;
       IF Locate('TestNameCode',TestNameCodeP,[])Then
       Begin
       IF Not TablePTTestTemp.Active Then TablePTTestTemp.Active:=True;
       TablePTTestTemp.Edit;
       DBGridPatientTest.Fields[2].Text:=FieldByName('TestNameCode').asString;
       DBGridPatientTest.Fields[3].Text:=FieldByName('TestName').asString;

       DBGridPatientTest.Fields[4].Text:=Format('%.2f',[(ActualTestPrice)]);
       IF DBGridPatientTest.Fields[5].Text='' Then
       DBGridPatientTest.Fields[5].Text:=FloatToStr(1);

       DBGridPatientTest.Fields[6].Text:=Format('%.2f',[((ActualTestPrice*DmHospital.GVat/100)*StrToFloat(DBGridPatientTest.Fields[5].Text))]);
       DBGridPatientTest.Fields[7].Text:=Format('%.2f',[({FieldByName('Vat').AsFloat+ }
     { {ActualTestPrice*StrToFloat(DBGridPatientTest.Fields[5].Text))]);
       //DBGridPatientTest.Fields[7].Text:=Format('%.2f',[(FieldByName('Vat').AsFloat+FieldByName('TestPrice').AsFloat*StrToFloat(DBGridPatientTest.Fields[5].Text))]);
       DBGridPatientTest.Fields[8].Text:='YES';
       DBGridPatientTest.Fields[9].Text:='FALSE';
       IF DBGridPatientTest.Fields[10].Text<>''  Then
       Begin
       Discount:=((StrToFloat(DBGridPatientTest.Fields[7].Text))*((DBGridPatientTest.Fields[10].Value)/100));
       DBGridPatientTest.Fields[11].Text:=Format('%.2f',[Discount]);
       DBGridPatientTest.Fields[12].Text:=(DBGridPatientTest.Fields[7].Value)-(DBGridPatientTest.Fields[11].Value);
       End
       Else
       Begin
       DBGridPatientTest.Fields[10].Value:=0;
       DBGridPatientTest.Fields[11].Value:=0;
       DBGridPatientTest.Fields[12].Value:=DBGridPatientTest.Fields[7].Value;
       End;
       TablePTTestTemp.FieldByName('DepID').AsInteger:=FieldByName('DepID').AsInteger;
       TablePTTestTemp.FieldByName('TestNameID').AsInteger:=FieldByName('TestNameID').AsInteger;
       TablePTTestTemp.FieldByName('TestName').AsString:=FieldByName('TestName').AsString;
       //TablePTTestTemp.FieldByName('VatAmt').AsInteger:=FieldByName('Vat').AsInteger;
       TablePTTestTemp.Post;
       RefreshVatable;
       End;
       End; }
End;

Function TFormDischargeClearanceDetail.GetVatableAmount: Double;
Var
     NTotalVatableAmt: Double;
Begin
     { {  With QueryGetVatAmount do
       Begin
       Close;
       Open;
       NTotalVatableAmt:=FieldByName('TotalVatableAmt').asFloat;
       Result:=NTotalVatableAmt;
       End;
     }
End;

Function TFormDischargeClearanceDetail.GetNonVatableAmount: Double;
Var
     NTotalVatableAmt: Double;
Begin
     { {  With QueryGetNonVatAmount do
       Begin
       Close;
       Open;
       NTotalVatableAmt:=FieldByName('TotalNonVatableAmt').asFloat;
       Result:=NTotalVatableAmt;
       End;
     }
End;

Procedure TFormDischargeClearanceDetail.RefreshVatable;
Begin
     { {  ISVatable:='V';
       {
       IF TablePTTestTemp.RecordCount=1 Then
       Begin
       IF NVat<=0 Then
       ISVatable:='N'
       Else IF NVat>0 Then
       ISVatable:='V';
       End;
       }
End;

procedure TFormDischargeClearanceDetail.RefreshTotalPrice;
Begin
     { {  IF DBGridPatientTest.SelectedIndex=5 Then
       Begin
       With TablePTTestTemp Do
       Begin
       Edit;
       FieldByName('TestPrice').AsFloat:=FieldByName('CostPrice').AsFloat*StrToFloat(DBGridPatientTest.Fields[5].Text);
       //FieldByName('TestPrice').AsFloat:=FieldByName('VatAmt').AsFloat*StrToFloat(DBGridPatientTest.Fields[5].Text)+FieldByName('CostPrice').AsFloat*StrToFloat(DBGridPatientTest.Fields[5].Text);
       FieldByName('VatAmt').AsFloat:=(FieldByName('CostPrice').AsFloat*StrToFloat(DBGridPatientTest.Fields[5].Text)*DMhospital.GVat/100);
       Post;
       End;
       EditTotal.Text:=Format('%.2f',[GetVatableAmount+GetNonVatableAmount]);
       LabelGToatal.Caption:=Format('%.2f',[GetVatableAmount+GetNonVatableAmount]);
       IF ISVatable='V' Then
       //LabelVTot.Caption:=Format('%.2f',[(GetVatableAmount{+GetNonVatableAmount-StrToFloat(EditDisAmt.Text) } { {)*DMhospital.GVat/100])
       {{    LabelVTot.Caption:=Format('%.2f',[(GetVatableAmount-(GetVatableAmount*StrToFloat(EditDisPer.Text)/100))*DMhospital.GVat/100])
       Else
       LabelVTot.Caption:='0';
       LabelTotal.Caption:=Format('%.2f',[StrToFloat(LabelGToatal.Caption)+StrToFloat(LabelVTot.Caption)]);
       End; }
End;

Function TFormDischargeClearanceDetail.GetDiscountAmount: Double;
Var
     lf_DiscountAmt: Double;
Begin
     { With Query_GetDiscount do
       Begin
       Close;
       Open;
       lf_DiscountAmt:=FieldByName('Discount').asFloat;
       IF lf_DiscountAmt > 0 Then
       Begin
       EditDisAmt.Enabled:=False;
       EditDisPer.Enabled:=False;
       EditDisAmt.Text:=FloatToStr(lf_DiscountAmt);
       End
       Else
       Begin
       EditDisAmt.Enabled:=True;
       EditDisPer.Enabled:=True;
       EditDisAmt.Text:='0';
       End;
       Result:=lf_DiscountAmt;
       End; }
End;

procedure TFormDischargeClearanceDetail.DBGridPatientTestCellClick(Column: TColumn);
begin
     IF (DBGridPatientTest.SelectedIndex <> 9) and (DBGridPatientTest.SelectedIndex <> 10) Then
     Begin
          DBGridPatientTest.SelectedIndex := 8;
          Exit;
     End;

     IF (DBGridPatientTest.Fields[9].Text = '0') Xor (DBGridPatientTest.Fields[10].Text = '0') Then
          AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next line

     IF CB_SPDiscount.Checked = True Then
          Display_DrTech_For_FrctItem;

end;

procedure TFormDischargeClearanceDetail.Display_DrTech_For_FrctItem;
Begin
     IF CB_SPDiscount.Checked = True Then
     Begin
          { Idetify Doctor Commession Either Set In Individula Item Or Department Wise }
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select * From DoctorCommession where TestNameId In (Select TestNameId From ');
               sql.add(' TestName where TestNameCode=:TestNameCode) ');
               sql.add(' Union ');
               sql.add(' Select * From DoctorCommession where DepId In (Select DepId From ');
               sql.add(' TestName where TestNameCode=:TestNameCode) and TestNameId=0 ');
               ParamByName('TestNameCode').AsString := Table_TempDetailPTest.FieldByName('TestNameCode').AsString;
               Open;
          End;

          IF Query_Process.RecordCount > 0 Then
          Begin
               IF Query_Process.RecordCount = 1 Then // Individal Item wise Fraction Setup
               Begin
                    With Query_ActDoctor do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select BD.BillDetailId,BD.Service,TN.TestName,TN.TestNameId,BD.AMOUNT,BD.QTY,BD.DIS,BD.OrgDis,');
                         sql.add(
                              ' PWC.COMMAMTA,PWC.COMMRATEA,Round(BD.Amount*PWC.CommRateA/100) as NewCommAmt,(BD.AMOUNT-PWC.COMMAMTA) as ActualAmt,');
                         sql.add(' DC.DRCOMMID,PWC.POSITIONWISECOMMID, PWC.PositionName,PWC.Name,PWC.ISHOSPITALPART');
                         sql.add(' From BillDetail BD,TestName TN,DoctorCommession DC,PositionWiseCommession PWC');
                         sql.add(' where BD.SERVICE=TN.TESTNAMECODE');
                         sql.add('       and TN.TESTNAMEID=DC.TESTNAMEID');
                         sql.add('       and DC.DRCOMMID=PWC.DRCOMMID');
                         sql.add('       and TN.IsDiscountable=''Y''');
                         sql.add('       and BD.INPATIENTID=' + IntToStr(pi_InPatientId));
                         sql.add('       and BD.service=' + #39 + Table_TempDetailPTest.FieldByName('TestNameCode').AsString + #39);
                         sql.add('       and PWC.ISHOSPITALPART=''N''');
                         sql.add(' Order By PWC.POSITIONWISECOMMID ');
                         sql.saveToFile('C:\DocPartDiscount.Txt');
                         Open;
                    End;
               End
               Else // Dept. wise Fraction Setup
               Begin
                    With Query_ActDoctor do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select BD.BillDetailId,BD.Service,TN.TestName,TN.TestNameId,BD.AMOUNT,BD.QTY,BD.DIS,BD.OrgDis,');
                         sql.add(
                              ' PWC.COMMAMTA,PWC.COMMRATEA,Round(BD.Amount*PWC.CommRateA/100) as NewCommAmt,(BD.AMOUNT-PWC.COMMAMTA) as ActualAmt,');
                         sql.add(' DC.DRCOMMID,PWC.POSITIONWISECOMMID, PWC.PositionName,PWC.Name,PWC.ISHOSPITALPART');
                         sql.add(' From BillDetail BD,TestName TN,DoctorCommession DC,PositionWiseCommession PWC');
                         sql.add(' where BD.SERVICE=TN.TESTNAMECODE');
                         sql.add('       and TN.DepId=DC.DepId ');
                         sql.add('       and DC.TestNameId=0 ');
                         sql.add('       and DC.DRCOMMID=PWC.DRCOMMID');
                         sql.add('       and TN.IsDiscountable=''Y''');
                         sql.add('       and BD.INPATIENTID=' + IntToStr(pi_InPatientId));
                         sql.add('       and BD.service=' + #39 + Table_TempDetailPTest.FieldByName('TestNameCode').AsString + #39);
                         sql.add('       and PWC.ISHOSPITALPART=''N''');
                         sql.add(' Order By PWC.POSITIONWISECOMMID ');
                         sql.saveToFile('C:\DocPartDiscount.Txt');
                         Open;
                    End;
               End;
               LabelTestName.Caption := Table_TempDetailPTest.FieldByName('TestName').AsString
          End
          Else
          Begin
               LabelTestName.Caption := '........................';
               Query_ActDoctor.Close;
          End;
     End;
End;

procedure TFormDischargeClearanceDetail.DBGridPatientTestKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Tab Then
          BtnSave.SetFocus;
end;

procedure TFormDischargeClearanceDetail.BtnSaveClick(Sender: TObject);
Var
     lf_VatAmt, lf_DisPer, lf_Discount, lf_TotAmt: Double;
begin
     IF MessageDlg(' Are you sure to save the changes made in this bill ?', mtConfirmation, [mbyes, mbno], 0) = mrYes Then
     Begin
          IF pi_PanelShow = 1 Then { *** for service charge..... }
          Begin
               Table_TempDetailPTest.databasename := gs_TempPath;
               Table_TempDetailPTest.Last;
               IF ((DBGridPatientTest.Fields[9].Value = 0) Xor (DBGridPatientTest.Fields[10].Value = 0)) Then
                    AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next line
               Table_TempDetailPTest.First;
               Try
                    DMhospital.Hospital.StartTransaction;
                    while not Table_TempDetailPTest.EOF do
                    Begin
                         IF (DBGridPatientTest.Fields[9].Value <> DBGridPatientTest.Fields[12].Value) or
                           (DBGridPatientTest.Fields[10].Value <> DBGridPatientTest.Fields[13].Value) Then
                              AvoidDisPerErrorInGridSFSLWGTNL;
                         { for to control Tax Amt,Discount ..reason if user enter disper
                           and move down from down arrow key then doesn't calculate Tax for to avoid it .. }
                         IF Table_TempDetailPTest.FieldByName('TestName').AsString <> 'INPATIENT REG CHARGE' Then
                         Begin
                              with Query_Process do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select Vat From TestName where TestNameCode=' + #39 + Table_TempDetailPTest.FieldByName
                                        ('TestNameCode').AsString + #39);
                                   Open;
                              End;
                              lf_DisPer := Table_TempDetailPTest.FieldByName('DisPer').AsFloat;
                              lf_TotAmt := Table_TempDetailPTest.FieldByName('Total').AsFloat;
                              { IF Query_Process.FieldByName('Vat').AsInteger=1 Then { Vatable Items }
                              { Begin
                                IF gs_GovtTaxRule='TAD' Then
                                Begin
                                lf_Discount:=(lf_TotAmt*lf_DisPer/100);
                                lf_VatAmt:=(lf_TotAmt-lf_Discount)*gf_VatPer/100;
                                End
                                Else
                                lf_VatAmt:=(lf_TotAmt*gf_VatPer/100);
                                End
                                Else { Non Vatable Items no discount }
                              { Begin
                                lf_DisPer:=0;
                                lf_VatAmt:=0;
                                End;
                                }
                         End
                         Else
                         Begin
                              lf_DisPer := Table_TempDetailPTest.FieldByName('DisPer').AsFloat;
                              lf_TotAmt := Table_TempDetailPTest.FieldByName('Total').AsFloat;
                              { IF gs_GovtTaxRule='TAD' Then
                                Begin
                                lf_Discount:=(lf_TotAmt*lf_DisPer/100);
                                lf_VatAmt:=(lf_TotAmt-lf_Discount)*gf_VatPer/100;
                                End
                                Else
                                lf_VatAmt:=(lf_TotAmt*gf_VatPer/100);
                                }
                         End;

                         { ... }

                         with Query_Process do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Update BillDetail set Dis=' + FloatToStr(lf_DisPer));
                              // Table_TempDetailPTest.FieldByName('DisPer').AsFloat));
                              sql.add(' ,CommunityId=' + IntToStr(Table_TempDetailPTest.FieldByName('CommunityId').AsInteger));
                              sql.add(' ,SchemeId=' + IntToStr(Table_TempDetailPTest.FieldByName('SchemeId').AsInteger));
                              IF gs_GovtTaxRule = 'TAD' Then //
                                   sql.add(' ,VatAmt=' + Table_TempDetailPTest.FieldByName('VatAmt').AsString);
                              IF Table_TempDetailPTest.FieldByName('OrgDisPer').AsInteger <> Table_TempDetailPTest.FieldByName('DisPer')
                                .AsFloat Then
                                   sql.add(' ,FinalDiscountBy=' + IntToStr(gi_UserId));
                              sql.add(' where BillDetailId=' + IntToStr(Table_TempDetailPTest.FieldByName('BillDetailId').AsInteger));
                              ExecSQL;
                         End;

                         IF gs_IsDoctorFractionActive = 'Y' Then
                         Begin
                              with Query_Process do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Update DrProcedures set DisPer=' + FloatToStr(lf_DisPer));
                                   sql.add(' where BillDetailId=' + IntToStr(Table_TempDetailPTest.FieldByName('BillDetailId').AsInteger));
                                   ExecSQL;
                              End;
                         End;
                         Table_TempDetailPTest.Next;
                    End;
                    DMhospital.Hospital.Commit;
               except
                    showmessage(' Filure to Update !');
                    DMhospital.Hospital.Rollback;
                    Exit;
               End;
          End
          Else IF pi_PanelShow = 2 Then { ****** for bed Charge...... }
          Begin
               Table_TempBedCharge.databasename := gs_TempPath;
               Table_TempBedCharge.Last;
               IF (DBGridBedCharge.Fields[6].Value = 0) Xor (DBGridBedCharge.Fields[7].Value = 0) Then
                    AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next
               Table_TempBedCharge.First;
               Try
                    DMhospital.Hospital.StartTransaction;
                    while not Table_TempBedCharge.EOF do
                    Begin
                         with Query_Process do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Update InPatientDetail set DisPer=' + FloatToStr(Table_TempBedCharge.FieldByName('DisPer').AsFloat)
                                );
                              If gi_HospitalID = 14 Then
                                   sql.add(' ,BedCharge=' + FloatToStr(Table_TempBedCharge.FieldByName('Rate').AsFloat));
                              IF Table_TempBedCharge.FieldByName('OrgDisPer').AsInteger <> Table_TempBedCharge.FieldByName('DisPer')
                                .AsFloat Then
                                   sql.add(' ,FinalDiscountBy=' + IntToStr(gi_UserId));
                              sql.add
                                (' ,VatAmt=' + FloatToStr
                                     ((Table_TempBedCharge.FieldByName('VatAmt').AsFloat / Table_TempBedCharge.FieldByName('TotalDays')
                                        .AsFloat)));
                              sql.add(' where InPatientDId=' + IntToStr(Table_TempBedCharge.FieldByName('InPatientDId').AsInteger));
                              ExecSQL;
                         End;
                         Table_TempBedCharge.Next;
                    End;
                    DMhospital.Hospital.Commit;
               except
                    showmessage(' Filure to Update !');
                    DMhospital.Hospital.Rollback;
                    Exit;
               End;
          End
          Else { ***** for medicine Charge..... }
          Begin
               Table_TempMedicineCharge.databasename := gs_TempPath;
               Table_TempMedicineCharge.Last;
               IF (DBGridMedicineCharge.Fields[8].Value = 0) Xor (DBGridMedicineCharge.Fields[9].Value = 0) Then
                    AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to n
               Table_TempMedicineCharge.First;
               Try
                    DMhospital.Hospital.StartTransaction;
                    while not Table_TempMedicineCharge.EOF do
                    Begin
                         with Query_Process do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Update SaleDetail set Discount=' + FloatToStr(Table_TempMedicineCharge.FieldByName('DisPer')
                                        .AsFloat));
                              sql.add(' where SaleDetailId=' + IntToStr(Table_TempMedicineCharge.FieldByName('SaleDetailId').AsInteger));
                              ExecSQL;
                         End;
                         Table_TempMedicineCharge.Next;
                    End;
                    DMhospital.Hospital.Commit;
               except
                    showmessage(' Filure to Update !');
                    DMhospital.Hospital.Rollback;
                    Exit;
               End;
          End;
          Frm_Message.ShowModal;
     End;
End;

procedure TFormDischargeClearanceDetail.DBGridBedChargeCellClick(Column: TColumn);
begin
     If (DBGridBedCharge.SelectedIndex = 4) And (gi_HospitalID = 14) Then
          DBGridPatientTest.SelectedIndex := 4
     Else IF (DBGridBedCharge.SelectedIndex <> 6) and (DBGridBedCharge.SelectedIndex <> 7) Then
     Begin
          DBGridBedCharge.SelectedIndex := 6;
          Exit;
     End;
     IF (DBGridBedCharge.Fields[6].Value = 0) Xor (DBGridBedCharge.Fields[7].Value = 0) Then
          AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next line
end;

procedure TFormDischargeClearanceDetail.DBGridBedChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Tab Then
          BtnSave.SetFocus;
end;

procedure TFormDischargeClearanceDetail.DBGridMedicineChargeCellClick(Column: TColumn);
begin
     IF DBGridMedicineCharge.SelectedIndex <> 8 Then
     Begin
          DBGridMedicineCharge.SelectedIndex := 8;
          Exit;
     End;
     IF (DBGridMedicineCharge.Fields[8].Value = 0) Xor (DBGridMedicineCharge.Fields[9].Value = 0) Then
          AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next line
end;

procedure TFormDischargeClearanceDetail.DBGridMedicineChargeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Tab Then
          BtnSave.SetFocus;
end;

procedure TFormDischargeClearanceDetail.DBGridBedChargeColEnter(Sender: TObject);
begin
     If (DBGridBedCharge.SelectedIndex = 4) And (gi_HospitalID = 14) Then
          DBGridPatientTest.SelectedIndex := 4
     Else If (DBGridBedCharge.SelectedIndex <> 6) and (DBGridBedCharge.SelectedIndex <> 7) Then
          DBGridPatientTest.SelectedIndex := 6;
end;

{ Function TFormDischargeClearanceDetail.GetTotalDays(InptDate,OutDate:String):Integer;
  var ls_CurrentTime:String;
  Begin
  DateEditX_In.SystemOfDate:=gi_DateSystem;
  DateEditX_Out.SystemOfDate:=gi_DateSystem;
  DateEditX_In.text:=InptDate;
  DateEditX_Out.text:=OutDate;
  pi_TotDays:=DateEditX_Out.VSDateAsDays-DateEditX_In.VSDateAsDays;
  IF gi_HospitalID=2 Then // 2 - Manamohan
  Begin
  ls_CurrentTime:=ServerDate.TodaysTime;
  IF (ls_CurrentTime > '12:00:00') and (pi_TotDays > 0) Then
  pi_TotDays:=pi_TotDays+1;
  Result:=pi_TotDays;
  End
  Else
  Result:=pi_TotDays;
  End; }

procedure TFormDischargeClearanceDetail.DBGridMedicineChargeColEnter(Sender: TObject);
begin
     IF DBGridMedicineCharge.SelectedIndex <> 8 Then
          DBGridMedicineCharge.SelectedIndex := 8;
end;

procedure TFormDischargeClearanceDetail.DBGridBedChargeColExit(Sender: TObject);
begin
     If (DBGridBedCharge.SelectedIndex = 4) And (gi_HospitalID = 14) Then
          DBGridPatientTest.SelectedIndex := 4
     Else If (DBGridBedCharge.SelectedIndex <> 6) and (DBGridBedCharge.SelectedIndex <> 7) Then
          DBGridPatientTest.SelectedIndex := 6;
end;

procedure TFormDischargeClearanceDetail.DBGridMedicineChargeColExit(Sender: TObject);
begin
     IF DBGridMedicineCharge.SelectedIndex <> 8 Then
          DBGridMedicineCharge.SelectedIndex := 8;
end;

procedure TFormDischargeClearanceDetail.DBGridPatientTestColExit(Sender: TObject);
begin
     IF (DBGridPatientTest.SelectedIndex <> 9) and (DBGridPatientTest.SelectedIndex <> 10) Then
          DBGridPatientTest.SelectedIndex := 9;
end;

procedure TFormDischargeClearanceDetail.Button7Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXBCIPDate, Button7);
end;

procedure TFormDischargeClearanceDetail.Button8Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXBCDisDate, Button8);
end;

procedure TFormDischargeClearanceDetail.Button6Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXBCDate, Button6);
end;

procedure TFormDischargeClearanceDetail.Button3Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditX2, Button3);
end;

procedure TFormDischargeClearanceDetail.Button5Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXMCDisDate, Button5);
end;

procedure TFormDischargeClearanceDetail.Button1Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXMCDate, Button1);
end;

procedure TFormDischargeClearanceDetail.Button2Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXIPDate, Button2);
end;

procedure TFormDischargeClearanceDetail.Button4Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditXDisDate, Button4);
end;

procedure TFormDischargeClearanceDetail.ButtonADVSregInvestigationClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXSCDate, ButtonADVSregInvestigation);
end;

procedure TFormDischargeClearanceDetail.BitBtnPrintClick(Sender: TObject);
begin
     IF pi_PanelShow = 1 Then
     Begin
          PrintHospitalCharge;
     End
     Else IF pi_PanelShow = 2 Then
     Begin
          // PrintBedCharge;
     End
     Else
     Begin
          PrintMedicineCharge;
     End;
end;

procedure TFormDischargeClearanceDetail.PrintHospitalCharge;
Begin
     Try
          QR_HospitalChargeDetail := TQR_HospitalChargeDetail.Create(self);
          with QR_HospitalChargeDetail do
          Begin
               with QueryPatientInfo do
               Begin
                    Close;
                    ParamByName('PID').AsInteger := pi_PatientId;
                    Open;
               End;

               with Query_Bill do
               Begin
                    databasename := gs_TempPath;
                    Close;
                    sql.Clear;
                    sql.add(' Select * From DetailPatientTest.db ');
                    Open;
               End;

               with Query_TotalBill do
               Begin
                    databasename := gs_TempPath;
                    Close;
                    sql.Clear;
                    sql.add(' Select Sum(Total+TaxAmt-Discount) as Total From FinalDischargeBill.db');
                    Open;
               End;

               with Query_Deposit do
               Begin
                    Close;
                    ParamByName('IPID').AsInteger := pi_InPatientId;
                    Open;
               End;

               IF Query_TotalBill.FieldByName('Total').AsFloat >= Query_Deposit.FieldByName('Deposit').AsFloat Then
               Begin
                    QRLabelGTotal.Caption := 'Paid Amount:';
                    QRLabel_GrandTotal.Caption := FormatFloat
                      ('#,##0.00', Query_TotalBill.FieldByName('Total').AsFloat - Query_Deposit.FieldByName('Deposit').AsFloat);
               End
               Else
               Begin
                    QRLabelGTotal.Caption := 'Refund Amount:';
                    QRLabel_GrandTotal.Caption := FormatFloat
                      ('#,##0.00', Query_Deposit.FieldByName('Deposit').AsFloat - Query_TotalBill.FieldByName('Total').AsFloat);
               End;

               IF QueryPatientInfo.FieldByName('Community').AsString <> '' Then
               Begin
                    QRLabel_Community.Font.Color := clBlack;
                    QRLabel_Community.Caption := QueryPatientInfo.FieldByName('Community').AsString;
                    QRLabel_Community1.Font.Color := clBlack;
               End
               Else
               Begin
                    QRLabel_Community.Font.Color := clWhite;
                    QRLabel_Community1.Font.Color := clWhite;
               End;

               IF QueryPatientInfo.FieldByName('Scheme').AsString <> '' Then
               Begin
                    QRLabel_Scheme.Font.Color := clBlack;
                    QRLabel_Scheme.Caption := QueryPatientInfo.FieldByName('Scheme').AsString;
                    QRLabel_Scheme1.Font.Color := clBlack;
               End
               Else
               Begin
                    QRLabel_Scheme.Font.Color := clWhite;
                    QRLabel_Scheme1.Font.Color := clWhite;
               End;

               QRLabelPrintDate.Caption := ServerDate.TodaysDate;
               Preview;
               QueryPatientInfo.Close;
               Query_Bill.Close;
               Query_TotalBill.Close;
               Free;
          End;
     Except
          QR_HospitalChargeDetail.Free;
     End;
End;

procedure TFormDischargeClearanceDetail.PrintMedicineCharge;
Begin
     Try
          QR_MedicineChargeDetail := TQR_MedicineChargeDetail.Create(self);
          with QR_MedicineChargeDetail do
          Begin
               with QueryPatientInfo do
               Begin
                    Close;
                    ParamByName('PID').AsInteger := pi_PatientId;
                    Open;
               End;

               with Query_Bill do
               Begin
                    databasename := gs_TempPath;
                    Close;
                    sql.Clear;
                    sql.add(' Select * From FinalDischargeBill.db Order By PaymentCategory');
                    Open;
               End;

               with Query_TotalBill do
               Begin
                    databasename := gs_TempPath;
                    Close;
                    sql.Clear;
                    sql.add(' Select Sum(Total+TaxAmt-Discount) as Total From FinalDischargeBill.db');
                    Open;
               End;

               with Query_Deposit do
               Begin
                    Close;
                    ParamByName('IPID').AsInteger := pi_InPatientId;
                    Open;
               End;

               IF Query_TotalBill.FieldByName('Total').AsFloat >= Query_Deposit.FieldByName('Deposit').AsFloat Then
               Begin
                    QRLabelGTotal.Caption := 'Paid Amount:';
                    QRLabel_GrandTotal.Caption := FormatFloat
                      ('#,##0.00', Query_TotalBill.FieldByName('Total').AsFloat - Query_Deposit.FieldByName('Deposit').AsFloat);
               End
               Else
               Begin
                    QRLabelGTotal.Caption := 'Refund Amount:';
                    QRLabel_GrandTotal.Caption := FormatFloat
                      ('#,##0.00', Query_Deposit.FieldByName('Deposit').AsFloat - Query_TotalBill.FieldByName('Total').AsFloat);
               End;

               IF QueryPatientInfo.FieldByName('Community').AsString <> '' Then
               Begin
                    QRLabel_Community.Font.Color := clBlack;
                    QRLabel_Community.Caption := QueryPatientInfo.FieldByName('Community').AsString;
                    QRLabel_Community1.Font.Color := clBlack;
               End
               Else
               Begin
                    QRLabel_Community.Font.Color := clWhite;
                    QRLabel_Community1.Font.Color := clWhite;
               End;

               IF QueryPatientInfo.FieldByName('Scheme').AsString <> '' Then
               Begin
                    QRLabel_Scheme.Font.Color := clBlack;
                    QRLabel_Scheme.Caption := QueryPatientInfo.FieldByName('Scheme').AsString;
                    QRLabel_Scheme1.Font.Color := clBlack;
               End
               Else
               Begin
                    QRLabel_Scheme.Font.Color := clWhite;
                    QRLabel_Scheme1.Font.Color := clWhite;
               End;
               QRLabelPrintDate.Caption := ServerDate.TodaysDate;
               Preview;
               QueryPatientInfo.Close;
               Query_Bill.Close;
               Query_TotalBill.Close;
               Free;
          End;
     Except
          QR_MedicineChargeDetail.Free;
     End;
End;

procedure TFormDischargeClearanceDetail.FormCreate(Sender: TObject);
begin
     DateEditX_In := TDateEditX.Create(nil);
     DateEditX_Out := TDateEditX.Create(nil);
     { Application.CreateForm(TQR_HospitalChargeDetail,QR_HospitalChargeDetail);
       Application.CreateForm(TQR_BedChargeDetail,QR_BedChargeDetail);
       Application.CreateForm(TQR_MedicineChargeDetail,QR_MedicineChargeDetail); }
end;

procedure TFormDischargeClearanceDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     { QR_HospitalChargeDetail.Free;
       QR_BedChargeDetail.Free;
       QR_MedicineChargeDetail.Free; }
end;

procedure TFormDischargeClearanceDetail.FormDestroy(Sender: TObject);
begin
     DateEditX_In.Free;
     DateEditX_Out.Free;
end;

procedure TFormDischargeClearanceDetail.UserVerification;
Begin
     b_InchVerified := False;
     Form_InchargeVerification := TForm_InchargeVerification.Create(self);
     with Form_InchargeVerification do
     Begin
          Try
               ShowModal;
          Finally
               Free;
          End;
     End;
     IF b_InchVerified = True Then
     Begin
          // ps_TodaysDate:=ServerDate.TodaysDate;
          // ps_TodaysTime:=ServerDate.TodaysTime;
          Try
               DMhospital.Hospital.StartTransaction;
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Delete From BillMaster where BillNo=' + #39 + Table_TempDetailPTest.FieldByName('BillNo').AsString + #39);
                    ExecSQL;

                    Close;
                    sql.Clear;
                    sql.add(' Delete From BillDetail where BillNo=' + #39 + Table_TempDetailPTest.FieldByName('BillNo').AsString + #39);
                    ExecSQL;
               End;
               DMhospital.Hospital.Commit;
          Except
               DMhospital.Hospital.Rollback;
               showmessage('Failure to delete');
          End;
          Frm_Message.ShowModal;
          FillPatientTest;
     End
     Else
     Begin
          MessageDlg(' Would you mind ! You dont have access to cancel this bill.', mtInformation, [mbok], 0);
          Exit;
     End;
End;

Procedure TFormDischargeClearanceDetail.AvoidDisPerErrorInGridSFSLWGTNL; // SFSLWGTNL- save from same line without going to next line
Begin
     IF pi_PanelShow = 1 Then { Service charge }
     Begin
          IF DBGridPatientTest.Fields[9].Value > 100 Then
          Begin
               MessageDlg('Sorry ! Discount Per. shouldn''t be greate than 100', mtWarning, [mbok], 0);
               DBGridPatientTest.SelectedIndex := 8;
               Exit;
          End;
          IF DBGridPatientTest.Fields[10].Value > DBGridPatientTest.Fields[8].Value Then
          Begin
               MessageDlg('Sorry ! Discount amount shouldn''t be greate than total amount', mtWarning, [mbok], 0);
               DBGridPatientTest.SelectedIndex := 10;
               Exit;
          End;

          Table_TempDetailPTest.Edit;

          IF (DBGridPatientTest.Fields[9].Value = 0) or (DBGridPatientTest.Fields[10].Value = 0) Then
          Begin
               DBGridPatientTest.Fields[9].Value := 0;
               DBGridPatientTest.Fields[10].Value := 0;
          End
          Else
          Begin
               IF DBGridPatientTest.Fields[9].Value <> DBGridPatientTest.Fields[12].Value Then
                    DBGridPatientTest.Fields[10].Value := GetNoOfDecimalPartOfFloatNum
                      (((DBGridPatientTest.Fields[8].Value * DBGridPatientTest.Fields[9].Value) / 100), 4)
               Else IF DBGridPatientTest.Fields[10].Value <> DBGridPatientTest.Fields[13].Value Then
                    DBGridPatientTest.Fields[9].Value := GetNoOfDecimalPartOfFloatNum
                      ((DBGridPatientTest.Fields[10].Value / DBGridPatientTest.Fields[8].Value) * 100, 4);
          End;

          IF gs_GovtTaxRule = 'TAD' Then // Tax after discount
               DBGridPatientTest.Fields[7].Value := GetNoOfDecimalPartOfFloatNum
                 ((((DBGridPatientTest.Fields[8].Value) - (DBGridPatientTest.Fields[10].Value)) * gf_VatPer / 100), 4);

          Table_TempDetailPTest.Post;
          ServiceChargeCalculation;
     End
     Else IF pi_PanelShow = 2 Then { Bed Charge }
     Begin
          IF DBGridBedCharge.Fields[6].Value > 100 Then
          Begin
               MessageDlg('Sorry ! Discount Per. shouldn''t be greate than 100', mtWarning, [mbok], 0);
               DBGridBedCharge.SelectedIndex := 6;
               Exit;
          End;
          IF DBGridBedCharge.Fields[7].Value > DBGridBedCharge.Fields[5].Value Then
          Begin
               MessageDlg('Sorry ! Discount amount shouldn''t be greate than total amount', mtWarning, [mbok], 0);
               DBGridBedCharge.SelectedIndex := 9;
               Exit;
          End;

          Table_TempBedCharge.Edit;
          IF (DBGridBedCharge.Fields[6].Value = 0) or (DBGridBedCharge.Fields[7].Value = 0) Then
          Begin
               DBGridBedCharge.Fields[6].Value := 0; // ((DBGridBedCharge.Fields[6].Value*100)/DBGridBedCharge.Fields[5].Value);
               DBGridBedCharge.Fields[7].Value := 0;
          End
          Else
          Begin
               IF (DBGridBedCharge.Fields[6].Value <> DBGridBedCharge.Fields[10].Value) Then
                    DBGridBedCharge.Fields[7].Value := GetNoOfDecimalPartOfFloatNum
                      (((DBGridBedCharge.Fields[5].Value * DBGridBedCharge.Fields[6].Value) / 100), 4)
               Else IF (DBGridBedCharge.Fields[7].Value <> DBGridBedCharge.Fields[11].Value) Then
                    DBGridBedCharge.Fields[6].Value := GetNoOfDecimalPartOfFloatNum
                      (((DBGridBedCharge.Fields[7].Value / DBGridBedCharge.Fields[5].Value) * 100), 4);
          End;

          IF gs_GovtTaxRule = 'TAD' Then
               DBGridBedCharge.Fields[9].Value := RoundingAfterSecondPlace
                 (((DBGridBedCharge.Fields[4].Value - (DBGridBedCharge.Fields[4].Value * DBGridBedCharge.Fields[6].Value / 100))
                           * gf_VatPer / 100) * DBGridBedCharge.Fields[3].Value);
          Table_TempBedCharge.Post;
          BedChargeCalculation;
     End
     Else { Medicine Charge }
     Begin
          Table_TempMedicineCharge.Edit;
          IF DBGridMedicineCharge.Fields[8].Value = 0 Then
               DBGridMedicineCharge.Fields[8].Value := ((DBGridMedicineCharge.Fields[8].Value * 100) / DBGridPatientTest.Fields[7].Value)
          Else
               DBGridMedicineCharge.Fields[9].Value := ((DBGridMedicineCharge.Fields[7].Value * DBGridPatientTest.Fields[8].Value) / 100);
          Table_TempMedicineCharge.Post;
          MedicineChargeCalculation;
     End;
End;

procedure TFormDischargeClearanceDetail.DBGridPatientTestColEnter(Sender: TObject);
begin
     IF (DBGridPatientTest.SelectedIndex <> 9) and (DBGridPatientTest.SelectedIndex <> 10) Then
          DBGridPatientTest.SelectedIndex := 9;
end;

procedure TFormDischargeClearanceDetail.DBGridPatientTestDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
     Column: TColumn; State: TGridDrawState);
begin
     IF Table_TempDetailPTest.FieldByName('Payment').AsFloat > 0 Then
     Begin
          DBGridPatientTest.Canvas.Font.Color := clRed;
          DBGridPatientTest.DefaultDrawDataCell(Rect, Column.Field, State);
     End;
end;

procedure TFormDischargeClearanceDetail.Sbtn_ChangeRateTypeClick(Sender: TObject);
begin
     IF Table_TempDetailPTest.FieldByName('TestName').AsString = 'INPATIENT REG CHARGE' Then
     Begin
          MessageDlg(' Sorry ! You Can not Change Admission Charge.', mtInformation, [mbok], 0);
          Exit;
     End;

     IF Table_TempDetailPTest.FieldByName('Category').AsString = 'FRG' Then
     Begin
          MessageDlg(' Sorry ! You can not Change Foreigner''s Test Price.', mtInformation, [mbok], 0);
          Exit;
     End;

     { User Verification }
     b_InchVerified := False;
     Form_InchargeVerification := TForm_InchargeVerification.Create(self);
     With Form_InchargeVerification do
     Begin
          Try
               ShowModal;
          Finally
               Free;
          End;
     End;
     IF b_InchVerified = False Then
     Begin
          MessageDlg(' Would you mind ! You dont have access to change the rate type.', mtInformation, [mbok], 0);
          Exit;
     End;

     With Form_ChangeRateType Do
     Begin
          Try
               Form_ChangeRateType := TForm_ChangeRateType.Create(self);
               With Query_Process Do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(
                         ' Select BillDetailId,RateType,Service,Dis,BillDate,BillNo,ServiceType,(Qty-RefQty) as Qty,Amount,(VatAmt-RefVatAmt) as VatAmt From BillDetail');
                    sql.add(' Where BillDetailId=' + Table_TempDetailPTest.FieldByName('BillDetailId').AsString);
                    Open;

                    Bill_DetailID := FieldByName('BillDetailId').AsInteger;
                    Pf_PreRateType := FieldByName('RateType').AsString;
                    Item_Code := FieldByName('Service').AsString;
                    Dis_Per := FieldByName('Dis').AsFloat;
                    Label_BillDate.Caption := FieldByName('BillDate').AsString;
                    Label_BillNo.Caption := FieldByName('BillNo').AsString;
                    Label_TestName.Caption := FieldByName('ServiceType').AsString;
                    Label_Qty.Caption := FieldByName('Qty').AsString;
                    Label_UnitCost.Caption := FieldByName('Amount').AsString;
                    Label_DisCount.Caption := FormatFloat('0.00', FieldByName('Amount').AsFloat * FieldByName('Qty').AsFloat * FieldByName
                           ('Dis').AsFloat / 100) + '  @ ' + FieldByName('Dis').AsString + ' %';
                    Label_VatAmt.Caption := FieldByName('VatAmt').AsString;
                    Label_NetTotal.Caption := FormatFloat
                      ('0.00', (FieldByName('Amount').AsFloat * FieldByName('Qty').AsFloat + FieldByName('VatAmt').AsFloat) -
                           (FieldByName('Amount').AsFloat * FieldByName('Qty').AsFloat * FieldByName('Dis').AsFloat / 100));
               End;
               ShowModal;
          Finally
               Free;
               FillPatientTest;
               ServiceChargeCalculation;
          End;
     End;
end;

procedure TFormDischargeClearanceDetail.Edit_DisPerKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          BitBtn_SetDiscount.SetFocus;

     IF Key in [#8] Then
          Exit;
     AvoidMultipleDecimal(Edit_DisPer, Key);
     Key := Key;
end;

procedure TFormDischargeClearanceDetail.BitBtn_SetDiscountClick(Sender: TObject);
Var
     lf_DisPer, lf_OldDisPer, lf_DisAmt, lf_IndivDocDisAmt, lf_ActualSetDis: Double;
begin
     IF Trim(Edit_DisPer.Text) = '' Then
          Edit_DisPer.Text := '0';

     IF StrToInt(Edit_DisPer.Text) > 100 Then
     Begin
          MessageDlg('Discount Percent Exceeds 100. Plz Check It Properly', mtWarning, [mbok], 0);
          Edit_DisPer.SetFocus;
          Exit;
     End;

     IF MessageDlg('Are You Sure To Set Discount For Doctor Part Only.', mtInformation, [mbyes, mbno], 0) = mrYes Then
     Begin
          { While Set Discount Due to Service(non Discountable) part charges Disper In billdetail
            but what acutally set it is in InpatientDetail for e.g If set 10 Per In some case in
            billdetail it changes into 9.56 or something like that . Plz reffer into Set Discount
            of Discharge part . }
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Distinct DisPer From InpatientDetail where DisPer > 0 and InpatientId=' + IntToStr(pi_InPatientId));
               Open;
          End;

          lf_ActualSetDis := Query_Process.FieldByName('DisPer').AsFloat;

          lf_DisAmt := GetNoOfDecimalPartOfFloatNum
            ((Query_ActDoctor.FieldByName('Amount').AsFloat * Query_ActDoctor.FieldByName('OrgDis').AsFloat) / 100, 4);

          IF Query_ActDoctor.FieldByName('COMMAMTA').AsFloat > 0 Then // some time in setup disper only exist so...
               lf_IndivDocDisAmt := (Query_ActDoctor.FieldByName('CommAmtA').AsFloat * (StrToFloat(Edit_DisPer.Text) - lf_ActualSetDis))
                 / 100
          Else
               lf_IndivDocDisAmt := (Query_ActDoctor.FieldByName('NewCommAmt').AsFloat * (StrToFloat(Edit_DisPer.Text) - lf_ActualSetDis))
                 / 100;

          lf_DisAmt := lf_DisAmt + lf_IndivDocDisAmt;

          lf_DisPer := GetNoOfDecimalPartOfFloatNum((lf_DisAmt / Query_ActDoctor.FieldByName('Amount').AsFloat) * 100, 4);

          Try
               DMhospital.Hospital.StartTransaction;
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update BillDetail BD set BD.Dis=' + FloatToStr(lf_DisPer) + ',OrgDis=' + FloatToStr(lf_DisPer));
                    IF gs_GovtTaxRule = 'TAD' Then
                    Begin
                         sql.add(' ,VatAmt=((Qty*Amount)-((Qty*Amount)*' + FloatToStr(lf_DisPer) + '/100))*' + FloatToStr(gf_VatPer)
                                + '/100');
                         sql.add(' ,CurVatAmt=((Qty*Amount)-((Qty*Amount)*' + FloatToStr(lf_DisPer) + '/100))*' + FloatToStr(gf_VatPer)
                                + '/100');
                    End;
                    sql.add(' where BillDetailId=' + IntToStr(Query_ActDoctor.FieldByName('BillDetailId').AsInteger));
                    ExecSQL;

                    { update DrProceduers }
                    Close;
                    sql.Clear;
                    sql.add(' Update DrProcedures set DisPer=' + Edit_DisPer.Text);
                    sql.add(' where InpatientId=' + IntToStr(pi_InPatientId));
                    sql.add(' and BillDetailId=' + IntToStr(Query_ActDoctor.FieldByName('BillDetailId').AsInteger));
                    sql.add(' and PositionWiseCommId=' + IntToStr(Query_ActDoctor.FieldByName('PositionWiseCommId').AsInteger));
                    ExecSQL;
               End;
               DMhospital.Hospital.Commit;
               Frm_Message.ShowModal;
          Except
               DMhospital.Hospital.Rollback;
               MessageDlg('Failure to set discount.', mtWarning, [mbok], 0);
          End;
     End;
end;

procedure TFormDischargeClearanceDetail.CB_SPDiscountClick(Sender: TObject);
begin
     IF CB_SPDiscount.Checked = True Then
     Begin

          Display_DrTech_For_FrctItem;

          Label21.Enabled := True;
          LabelTestName.Enabled := True;
          Label31.Enabled := True;

          DBLCB_ActualDrTech.KeyValue := Null;
          DBLCB_ActualDrTech.Enabled := True;
          DBLCB_ActualDrTech.Color := clWhite;

          Label30.Enabled := True;

          Edit_DisPer.ReadOnly := False;
          Edit_DisPer.Enabled := True;
          Edit_DisPer.Color := clWhite;

          Label41.Enabled := True;
          Label_FractionAmt.Enabled := True;
          Label43.Enabled := True;
          Label_DisAmount.Enabled := True;

          BitBtn_SetDiscount.Enabled := True;
          // DBGridPatientTestCellClick(Sender);
     End
     Else
     Begin
          Label21.Enabled := False;
          LabelTestName.Enabled := False;
          Label31.Enabled := False;

          DBLCB_ActualDrTech.KeyValue := Null;
          DBLCB_ActualDrTech.Enabled := False;
          DBLCB_ActualDrTech.Color := clScrollBar;

          Label30.Enabled := False;

          Edit_DisPer.Text := '0';

          Edit_DisPer.ReadOnly := True;
          Edit_DisPer.Enabled := False;
          Edit_DisPer.Color := clScrollBar;

          Label41.Enabled := False;
          Label_FractionAmt.Enabled := False;
          Label43.Enabled := False;
          Label_DisAmount.Enabled := False;

          BitBtn_SetDiscount.Enabled := False;
     End;
end;

procedure TFormDischargeClearanceDetail.DBLCB_ActualDrTechClick(Sender: TObject);
begin
     IF Query_ActDoctor.RecordCount > 0 Then
     Begin
          // IF Query_ActDoctor.FieldByName('CommAmtA').AsFloat > 0 Then
          IF Query_ActDoctor.FieldByName('CommRateA').AsFloat = 0 Then
               Label_FractionAmt.Caption := Query_ActDoctor.FieldByName('CommAmtA').AsString
          Else
               Label_FractionAmt.Caption := FloatToStr
                 ((Query_ActDoctor.FieldByName('Amount').AsFloat * Query_ActDoctor.FieldByName('CommRateA').AsFloat) / 100);
     End;
end;

procedure TFormDischargeClearanceDetail.DBLCB_ActualDrTechKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Delete Then
     Begin
          Label_FractionAmt.Caption := '0.00';
          Label_DisAmount.Caption := '0.00';
     End;

     IF Key = VK_Prior Then
          CB_SPDiscount.SetFocus;
end;

procedure TFormDischargeClearanceDetail.DBLCB_ActualDrTechKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key = #13 Then
          Edit_DisPer.SetFocus;
end;

procedure TFormDischargeClearanceDetail.Edit_DisPerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Prior Then
          DBLCB_ActualDrTech.SetFocus;
end;

procedure TFormDischargeClearanceDetail.BitBtn_SetDiscountKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF Key = VK_Prior Then
          Edit_DisPer.SetFocus;
end;

procedure TFormDischargeClearanceDetail.Edit_DisPerExit(Sender: TObject);
begin
     IF Trim(Edit_DisPer.Text) = '' Then
          Edit_DisPer.Text := '0';

     IF StrToFloat(Label_FractionAmt.Caption) > 0 Then
          Label_DisAmount.Caption := FloatToStr((StrToFloat(Label_FractionAmt.Caption) * StrToFloat(Edit_DisPer.Text)) / 100);
end;

end.
