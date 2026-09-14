unit Unit_Billing;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, OleCtrls, DateEditXControl_TLB,
  fxn,dm,
  Spin, Grids, DBGrids, DBCtrls, DB, DBTables;

type
  TFormInpMain = class(TForm)
    Panel2: TPanel;
    BtnCancel: TBitBtn;
    BtnSave: TBitBtn;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Chk_photo: TCheckBox;
    BitBtn_BringPending: TSpeedButton;
    BitBtnPending: TSpeedButton;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    EditHospitalNo: TLabeledEdit;
    EditXsearch: TLabeledEdit;
    CheckBoxToday: TCheckBox;
    BitBtnGo: TSpeedButton;
    RadioButtonAdmit: TRadioButton;
    RadioButtonDischargedOnly: TRadioButton;
    RadioButtonDischarge: TRadioButton;
    GroupBox2: TGroupBox;
    CheckBox_Search: TCheckBox;
    DateEditX_From: TDateEditX;
    Label1: TLabel;
    Label2: TLabel;
    DateEditX_To: TDateEditX;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
    LabelIncreasedDate1: TLabel;
    SpeedButton6: TSpeedButton;
    DateEditX_TodayIPView: TDateEditX;
    Label5: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape3: TShape;
    EditDay: TSpinEdit;
    BitBtnRefresh: TSpeedButton;
    Panel4: TPanel;
    DBGridMain: TDBGrid;
    EditLName: TEdit;
    Edit3: TEdit;
    EditPatientId: TEdit;
    EditInpatientId: TEdit;
    EditIPDate: TEdit;
    Edit7: TEdit;
    EditDisDate: TEdit;
    EditWardRoom: TEdit;
    EditDoctor: TEdit;
    EditAddress: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    SP_PatientSearch: TSpeedButton;
    EditPsearch: TLabeledEdit;
    CheckBox_Schemes: TCheckBox;
    CMBBillType: TComboBox;
    Label8: TLabel;
    SPB_MedicareNo: TSpeedButton;
    Edit_MemberNo: TEdit;
    DBLookupComboBox_Community: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox_Scheme: TDBLookupComboBox;
    GroupBox5: TGroupBox;
    Label14: TLabel;
    LabelNo: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Labelname: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    LabelIpNo: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    LabelDepTotal: TLabel;
    Label12: TLabel;
    LabelCB: TLabel;
    Label24: TLabel;
    DBLC_Doctor: TDBLookupComboBox;
    CheckBox9: TCheckBox;
    Label27: TLabel;
    DateEditX6: TDateEditX;
    Button_TodayBilling: TSpeedButton;
    Label28: TLabel;
    Edit_NoOFCopy: TEdit;
    CheckBox_Preview: TCheckBox;
    DBGridPatientTest: TDBGrid;
    aa: TGroupBox;
    GroupBox7: TGroupBox;
    Label29: TLabel;
    CB_DirectDiscountSet: TCheckBox;
    CB_DisForAllItems: TCheckBox;
    EditTotal: TLabeledEdit;
    EditDisAmt: TLabeledEdit;
    EditDisPer: TEdit;
    Edit_SubTotal: TLabeledEdit;
    Edit_ExDuty: TLabeledEdit;
    Edit_GrandTotal: TLabeledEdit;
    Label30: TLabel;
    DBLookupComboBox_DepositType: TDBLookupComboBox;
    Label31: TLabel;
    CMBPayType: TComboBox;
    EditCheckNo: TEdit;
    EditRemarks: TEdit;
    EditPayment: TEdit;
    EditFName: TEdit;
    Query_Ward: TQuery;
    DataSource_Ward: TDataSource;
    Query_Bed: TQuery;
    TablePTTestTemp: TTable;
    TablePTTestTempPending: TTable;
    DataSourceTablePTTestTemp: TDataSource;
    QueryOldPatientTest: TQuery;
    QueryOldPatientTest1: TQuery;
    QueryOldPatientTest1NTestName: TStringField;
    QueryOldPatientTest1TESTNAMECODE: TStringField;
    QueryOldPatientTest1PATIENTTESTID: TFloatField;
    QueryOldPatientTest1DEPCODE: TStringField;
    QueryOldPatientTest1DOCCODE: TStringField;
    QueryOldPatientTest1PATIENTID: TFloatField;
    QueryOldPatientTest1TESTDATE: TStringField;
    QueryOldPatientTest1MODIFYBY: TFloatField;
    QueryOldPatientTest1WORKINGSTATUS: TStringField;
    QueryOldPatientTest1PAYSTATUS: TStringField;
    QueryOldPatientTest1SPECIAL: TStringField;
    QueryOldPatientTest1TESTTIME: TStringField;
    QueryOldPatientTest1MODIFYDATE: TStringField;
    QueryOldPatientTest1REMARKS: TStringField;
    QueryOldPatientTest1DEPID: TFloatField;
    QueryOldPatientTest1TESTNAMEID: TFloatField;
    QueryOldPatientTest1QTY: TFloatField;
    QueryOldPatientTest1AMOUNT: TFloatField;
    QueryOldPatientTest1VATAMT: TFloatField;
    QueryOldPatientTest1TOTALAMOUNT: TFloatField;
    QueryOldPatientTest1BILLNO: TStringField;
    QueryOldPatientTest1TESTAMOUNT: TFloatField;
    QueryOldPatientTest1INPATIENTID: TFloatField;
    QueryOldPatientTest1USERNAME: TStringField;
    QueryOldPatientTest1BILLDETAILID: TFloatField;
    DataSourceQueryOldPatientTest: TDataSource;
    QuerySearch: TQuery;
    QuerySum: TQuery;
    QuerySumTotal: TFloatField;
    QueryMaxIPNo: TQuery;
    QueryIPAllDetail: TQuery;
    QueryDisScheme: TQuery;
    QueryBillMaster: TQuery;
    QueryBillMasterBILLNO: TStringField;
    QueryBillMasterBILLDATE: TStringField;
    QueryBillMasterMODIFYBY: TFloatField;
    QueryBillMasterTOTAL: TFloatField;
    QueryBillMasterTAX: TFloatField;
    QueryBillMasterDISCOUNT: TFloatField;
    QueryBillMasterGRANDTOTAL: TFloatField;
    QueryBillMasterBILLTYPE: TStringField;
    QueryBillMasterEXTRACHARGE: TFloatField;
    QueryBillMasterSCHEMEID: TFloatField;
    QueryBillMasterPATIENTID: TFloatField;
    QueryBillMasterUSERNAME: TStringField;
    DataSourceBillMaster: TDataSource;
    QueryUser: TQuery;
    QueryAllOverManage: TQuery;
    QueryDoctor: TQuery;
    QueryRoom: TQuery;
    QueryFoodCharge: TQuery;
    QuerySno: TQuery;
    QueryDepartment: TQuery;
    QueryPatientTest: TQuery;
    QueryPatientTestNTestName: TStringField;
    QueryPatientTestNUnitCost: TFloatField;
    QueryPatientTestVat: TFloatField;
    QueryPatientTestTESTNAMECODE: TStringField;
    QueryPatientTestPATIENTTESTID: TFloatField;
    QueryPatientTestDEPCODE: TStringField;
    QueryPatientTestDOCCODE: TStringField;
    QueryPatientTestPATIENTID: TFloatField;
    QueryPatientTestTESTDATE: TStringField;
    QueryPatientTestMODIFYBY: TFloatField;
    QueryPatientTestWORKINGSTATUS: TStringField;
    QueryPatientTestPAYSTATUS: TStringField;
    QueryPatientTestSPECIAL: TStringField;
    QueryPatientTestTESTTIME: TStringField;
    QueryPatientTestMODIFYDATE: TStringField;
    QueryPatientTestREMARKS: TStringField;
    QueryPatientTestDEPID: TFloatField;
    QueryPatientTestTESTNAMEID: TFloatField;
    QueryCancelTest: TQuery;
    QueryUpdateBedAssign: TQuery;
    QueryUpDatePatientData: TQuery;
    QueryTestName: TQuery;
    QueryGetNonVatAmount: TQuery;
    QueryGetNonVatAmountTotalNonVatableAmt: TFloatField;
    QueryGetVatAmount: TQuery;
    QueryGetVatAmountTotalVatableAmt: TFloatField;
    QueryBillMasterBill: TQuery;
    Query_Department: TQuery;
    DataSource_Department: TDataSource;
    Table_PackageTest: TTable;
    Query_PatientInfo: TQuery;
    DataSourceListOfBill: TDataSource;
    QueryCurrIPDep: TQuery;
    QueryListOfBill: TQuery;
    Query_PackageTestList: TQuery;
    Query_Doctor: TQuery;
    DataSource_Community: TDataSource;
    QueryRegistration2: TQuery;
    QueryRegistration2RoomName: TStringField;
    QueryRegistration2FNAME: TStringField;
    QueryRegistration2LNAME: TStringField;
    QueryRegistration2MARITALSTATUS: TStringField;
    QueryRegistration2AGE: TStringField;
    QueryRegistration2GENDER: TStringField;
    QueryRegistration2AGETYPE: TStringField;
    QueryRegistration2DEPDEPCODE: TStringField;
    QueryRegistration2DEPDEPNAME: TStringField;
    QueryRegistration2PADDRESS: TStringField;
    QueryRegistration2INPATIENTID: TFloatField;
    QueryRegistration2DETWARDCODE: TStringField;
    QueryRegistration2ROOMNO: TFloatField;
    QueryRegistration2PATIENTID: TFloatField;
    QueryRegistration2FILENO: TFloatField;
    QueryRegistration2INPTDATE: TStringField;
    QueryRegistration2REGDEPCODE: TStringField;
    QueryRegistration2REFERBY: TStringField;
    QueryRegistration2REGDOCCODE: TStringField;
    QueryRegistration2REMARKS: TStringField;
    QueryRegistration2DISCHARGED: TStringField;
    QueryRegistration2DISDATE: TStringField;
    QueryRegistration2DOCTORFULLNAME: TStringField;
    QueryRegistration2DISTRICTID: TFloatField;
    QueryRegistration2District: TStringField;
    QueryInpatientSearch: TQuery;
    DataSourceInpatientSearch: TDataSource;
    Query_Scheme: TQuery;
    DataSource_Scheme: TDataSource;
    QueryDepart: TQuery;
    Query_BillDetailUpdate: TQuery;
    Query_BillMasterUpdate: TQuery;
    Query_PatientTestUpdate: TQuery;
    Query_GetRefDoc: TQuery;
    Timer1: TTimer;
    QueryVoid: TQuery;
    QueryMemberSearch: TQuery;
    DataSourceQueryDisName: TDataSource;
    QueryR: TQuery;
    QueryDisName: TQuery;
    QueryRoomNo: TQuery;
    QueryRoomNoROOMID: TFloatField;
    QueryRoomNoROOMNO: TStringField;
    Query_DepositType: TQuery;
    DataSource_DepositType: TDataSource;
    Query_GetReturnMedicine: TQuery;
    Query_GetMedicineCharge: TQuery;
    Query_Process: TQuery;
    Query_TempProcess: TQuery;
    Query_Community: TQuery;
    Query_IsTestDeptInCommSetup: TQuery;
    Query_TNCategoryCP: TQuery;
    Query_PrevBillNo: TQuery;
    QuerySchemeCP: TQuery;
    QueryCommunityCP: TQuery;
    QuerySumDepCP: TQuery;
    QuerySumDepCPAMT: TFloatField;
    QuerySumDepCPDEPID: TFloatField;
    QuerySumDepCPLDepCode: TStringField;
    QuerySumAmtCP: TQuery;
    QuerySumAmtCPTOTALAMT: TFloatField;
    QuerySumAmtCPDISTOT: TFloatField;
    QuerySumAmtCPVATAMT: TFloatField;
    QuerySumAmtCPNETAMOUNT: TFloatField;
    QuerySumAmtCPDOLLARTOTALAMOUNT: TFloatField;
    QuerySumAmtCPDOLLARVATAMT: TFloatField;
    QuerySumAmtCPDOLLARDISTOT: TFloatField;
    QuerySumAmtCPDOLLARNETAMOUNT: TFloatField;
    QueryDetailCP: TQuery;
    QueryDetailCPCummunity: TStringField;
    QueryDetailCPScheme: TStringField;
    QueryDetailCPTNCategory: TStringField;
    QueryDetailCPBILLNO: TStringField;
    QueryDetailCPSERVICE: TStringField;
    QueryDetailCPSERVICETYPE: TStringField;
    QueryDetailCPQTY: TFloatField;
    QueryDetailCPAMOUNT: TFloatField;
    QueryDetailCPCOMMUNITYID: TFloatField;
    QueryDetailCPMEMBERNO: TStringField;
    QueryDetailCPSCHEMEID: TFloatField;
    QueryDetailCPTOTALAMOUNT: TFloatField;
    QueryDetailCPNETAMOUNT: TFloatField;
    QueryDetailCPDIS: TFloatField;
    QueryDetailCPDISCOUNT: TFloatField;
    QueryDetailCPVATAMT: TFloatField;
    QueryDetailCPDEPID: TFloatField;
    QueryDetailCPDepCode: TStringField;
    QueryDetailCPCANCELSTATUS: TStringField;
    QueryDetailCPRATETYPE: TStringField;
    QueryDetailCPDOLLARAMOUNT: TFloatField;
    QueryDetailCPDOLLARDISCOUNT: TFloatField;
    QueryDetailCPDOLLARVATAMT: TFloatField;
    QueryDetailCPDOLLAREXRATE: TFloatField;
    QueryDetailCPRFBILLNO: TStringField;
    QueryDetailCPISREFUND: TStringField;
    QueryDetailCPBILLTYPE: TStringField;
    QueryDetailCPLABNO: TStringField;
    QueryDetailCPDOCCODE: TStringField;
    QueryDetailCPDOCTOR: TStringField;
    QueryDetailCPISPACKAGETEST: TStringField;
    DataSourceMaster: TDataSource;
    QueryBillMasterCP: TQuery;
    QueryBillMasterCPBILLNO: TStringField;
    QueryBillMasterCPBILLDATE: TStringField;
    QueryBillMasterCPBILLTIME: TStringField;
    QueryBillMasterCPPAYTYPE: TStringField;
    QueryBillMasterCPUSERNAME: TStringField;
    QueryBillMasterCPEXTRACHARGE: TFloatField;
    QueryBillMasterCPREMARKS: TStringField;
    QueryNameCP: TQuery;
    QueryNameCPNAME: TStringField;
    QueryNameCPPATIENTID: TFloatField;
    QueryNameCPINPATIENTID: TFloatField;
    QueryNameCPDISTRICTNAME: TStringField;
    QueryNameCPVDCNAME: TStringField;
    QueryNameCPPADDRESS: TStringField;
    QueryNameCPWARDNO: TFloatField;
    QueryNameCPMEMBERNO: TStringField;
    QueryNameCPDEPCODE: TStringField;
    QueryNameCPAGESEX: TStringField;
    Query_CheckeIVFDep: TQuery;
    QryProcedureDep: TQuery;
    Timer2: TTimer;
    Table_OperationCase: TTable;
    Table_OperationPending: TTable;
    Table_XRayPlateSize: TTable;
    Table_TestWiseCommession: TTable;
    Query_TempSubProcess: TQuery;
    QueryForDoctor: TQuery;
    Query_GetFrctInvoPerson: TQuery;
    DS_GetFrctInvoPerson: TDataSource;
    Query_SubProcess: TQuery;
    GroupBox_CashInfo: TPanel;
    Label_BillingStatus: TLabel;
    Label13: TLabel;
    Label_TotBillAmt: TLabel;
    Label18: TLabel;
    Label_ReceivedAmt: TLabel;
    Label23: TLabel;
    Label_ToalAmt: TLabel;
    Label33: TLabel;
    Label_ReAmt: TLabel;
    Label_Fraction: TLabel;
    Label36: TLabel;
    LabelItem: TLabel;
    Label38: TLabel;
    LabelBillNo: TLabel;
    Label40: TLabel;
    LabelDepBillNo: TLabel;
    LabelUserName: TLabel;
    DBGrid_DocInvolved: TDBGrid;
    Sp_DocInvolve: TSpeedButton;
    procedure BitBtnBedExchangeClick(Sender: TObject);
    procedure BitBtn_PathoDueClearClick(Sender: TObject);
    procedure BitBtnDepositClick(Sender: TObject);
    procedure BitBtnCrBillingClick(Sender: TObject);
    procedure BitBtnUndoClick(Sender: TObject);
    procedure BitBtn_ReferralDocClick(Sender: TObject);
    procedure BitBtnBillBreakupClick(Sender: TObject);
    procedure BitBtnDischargeBillClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure Chk_photoClick(Sender: TObject);
    procedure BitBtn_BringPendingClick(Sender: TObject);
    procedure BitBtnPendingClick(Sender: TObject);
    procedure CheckBoxIPRefundClick(Sender: TObject);
    procedure CheckBoxOPRefClick(Sender: TObject);
    procedure RB_OPAdvanceBillingClick(Sender: TObject);
    procedure RadioButton_OPRefundBillingClick(Sender: TObject);
    procedure RadioButton_OPBillingClick(Sender: TObject);
    procedure RadioButton_IPBillingClick(Sender: TObject);
    procedure Edit_PreviousBillNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBLC_DoctorClick(Sender: TObject);
    procedure DBLC_DoctorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLC_DoctorKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_MemberNoExit(Sender: TObject);
    procedure Edit_MemberNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_MemberNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPsearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPsearchKeyPress(Sender: TObject; var Key: Char);
    procedure CMBBillTypeChange(Sender: TObject);
    procedure CMBBillTypeExit(Sender: TObject);
    procedure CMBBillTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox_CommunityClick(Sender: TObject);
    procedure DBLookupComboBox_CommunityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox_CommunityKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox_SchemeClick(Sender: TObject);
    procedure DBLookupComboBox_SchemeKeyPress(Sender: TObject; var Key: Char);
    procedure DateEditX6KeyPress(ASender: TObject; var Key: SmallInt);
    procedure Edit_NoOFCopyExit(Sender: TObject);
    procedure Edit_NoOFCopyKeyPress(Sender: TObject; var Key: Char);
    procedure ChkBoxAllDisClick(Sender: TObject);
    procedure DBGridPatientTestCellClick(Column: TColumn);
    procedure DBGridPatientTestColEnter(Sender: TObject);
    procedure DBGridPatientTestColExit(Sender: TObject);
    procedure DBGridPatientTestDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridPatientTestExit(Sender: TObject);
    procedure DBGridPatientTestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPatientTestKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridPatientTestKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridOldBillDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CB_DirectDiscountSetClick(Sender: TObject);
    procedure EditTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisAmtExit(Sender: TObject);
    procedure EditDisAmtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditDisAmtKeyPress(Sender: TObject; var Key: Char);
    procedure EditDisPerExit(Sender: TObject);
    procedure EditDisPerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditDisPerKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_SubTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_ExDutyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_GrandTotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox_DepositTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CMBPayTypeChange(Sender: TObject);
    procedure CMBPayTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CMBPayTypeKeyPress(Sender: TObject; var Key: Char);
    procedure EditCheckNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditRemarksKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditRemarksKeyPress(Sender: TObject; var Key: Char);
    procedure EditPaymentExit(Sender: TObject);
    procedure EditPaymentKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPaymentKeyPress(Sender: TObject; var Key: Char);
    procedure BitbtnCommonClick(Sender: TObject);
    procedure BitBtnBillCancelClick(Sender: TObject);
    procedure EditHospitalNoChange(Sender: TObject);
    procedure EditHospitalNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditXsearchChange(Sender: TObject);
    procedure EditXsearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditXsearchKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBoxTodayClick(Sender: TObject);
    procedure CheckBoxTodayKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButtonAdmitClick(Sender: TObject);
    procedure RadioButtonDischargedOnlyClick(Sender: TObject);
    procedure RadioButtonDischargeClick(Sender: TObject);
    procedure CheckBox_SearchClick(Sender: TObject);
    procedure EditDayExit(Sender: TObject);
    procedure BitBtnRefreshClick(Sender: TObject);
    procedure DBGridMainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit90Change(Sender: TObject);
    procedure EditLNameChange(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure EditFNameChange(Sender: TObject);
    procedure EditFNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditFNameKeyPress(Sender: TObject; var Key: Char);
    procedure EditLNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditLNameKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPatientIdChange(Sender: TObject);
    procedure EditPatientIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPatientIdKeyPress(Sender: TObject; var Key: Char);
    procedure EditInpatientIdChange(Sender: TObject);
    procedure EditInpatientIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIPDateChange(Sender: TObject);
    procedure EditIPDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditIPDateKeyPress(Sender: TObject; var Key: Char);
    procedure EditDisDateChange(Sender: TObject);
    procedure EditDisDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditDisDateKeyPress(Sender: TObject; var Key: Char);
    procedure EditWardRoomChange(Sender: TObject);
    procedure EditWardRoomKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditWardRoomKeyPress(Sender: TObject; var Key: Char);
    procedure EditDoctorChange(Sender: TObject);
    procedure EditDoctorKeyPress(Sender: TObject; var Key: Char);
    procedure EditDoctorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditAddressChange(Sender: TObject);
    procedure EditAddressKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
     DateStr,ps_RateType,ps_DocCode,ps_RefDocCode,ls_IsDischarged:string;
    TodaysInpatient,b_IsRefundQtyDiff,IsConverted:boolean;
    { Private declarations }
    Procedure OnRefresh;
    procedure Xsearch;
    Procedure setquerytoselection(ISNumeric:Boolean);
    Procedure FillPatientTestData;
    Procedure BillRefund;
    procedure OpenBedAssign;
    procedure RetriveRequiredData;
    Procedure ZeroPosition;
    Function  FoodChargeAmount:Double;
    Procedure CheckingItemsRelationWithPrevBill;
    Procedure DeleteFractionCharge;
    procedure SetDefaultXrayPlate;
    procedure SaveDoctorFraction;
    Function  IsDiscountGranted:Boolean;
    Function  GetTotIVFDeposit:Double;
    Procedure TableCreateOperationCase;
    Function  CheckIsNewItemAddInAdvDueClear : Boolean;
    procedure CancelDoctorPortion(BillNo,TestNameCode:String; BillDetailId,RefundBy:Integer; RFQty:Double );
    function GetMeAdvance(AdvanceBillNo: String): Double;
    function GetTotProcedureDeposit: Double;
    function IsDiscount: Boolean;
    function IsDiscountMoreThan100: Boolean;
  public
     FillDate,CheckCtrl,CheckInpatient,IsCreditParty,Is_CalledFrmReg,b_IsPathoDueClear:boolean;
    NBillNo,CheckButton,Patientid,DischargeID,ChkDischarge,ChkUndo,PTsearch:Integer;
    NoOfDay,NursingCheck,pi_ClinicalDepId,pi_NoOfTimes,pi_DocFraDepId,pi_DocFraTestNameId,pi_IVFNO:Integer;
    DepCode,Freecase,ISVatable,ps_IsDependent,ps_PathoDueBill,ps_PathoDueTestCode:String;
    FDate,TDate,ps_PayType,ps_BillType,ps_PatientType,ps_PatientCatg,ZeroAmt,TestNameCodeP1,ps_MemberNo,ps_SearchStr,ps_BillingStatus:String;
    TotalAmt,pf_Balance,BalanceAmt,PBalanceAmt,payment,pf_DiscountPer,pf_TestPrice,pf_TotalAmt:Double;
    pi_InPatientId,pi_PatientId,pi_PatientTestID,pi_SchemeId,pi_CommunityId,pi_IpDepositId,Countno:LongInt;
    ps_TodaysDate,ps_TodaysTime,ps_Month,ps_Year,ps_MyBillNo,ps_AdvBillNo,ps_IsDiscountable,ps_XRayDocCode,ps_LabNo,ps_IVFBIll,ps_ProcedureBill:String;
    pf_DollarExRate,pf_DollarAmount,pf_OPDProcedureComPer,pf_PathologyComPer,pf_VatAmt:Double;
    b_CustomPrint,b_SaveSuccess,pb_OPDDuePaid,b_IsQtyCtrlMsgDisplay,b_IsAdvanceDueClear:Boolean;
    b_Reprint,b_CheckForAdvanceBilling,b_IsInteger:Boolean;
    ps_DocName:String;
    { Public declarations }
    procedure RetriveIndex;
    Procedure TableCreatePatientTest;
    procedure DataProcessing;
    Procedure UpdateInpatientDetail(UPatientId,UInPatient,URoomNo:LongInt);
    procedure CheckDep(DbGName:TdbGrid;AnyCode:String);
    procedure CheckDoc(DbGName:TdbGrid;AnyCode:String);
    procedure SaveRefundBilling;
    Function  PatientAddress:String;
    Function VatDiscountReCalculate:Boolean;
    procedure FindBalanceDeposit;
    Procedure AccountSummaryDisplay;
    Procedure TableCreateDrOperation;
    Procedure TableCreateXRayPlateSize;
    Procedure TableCreateTestWiseCommession;
    procedure FillBillItems;
    Procedure AllocateTestWiseDoctorFraction(TestNameCode:String; NetAmount:Double; DepId:Integer);
    Procedure TableCreatePackageTest;
    Procedure DiscountCalculationFromPercent;
    Procedure DiscountCalculationFromAmt;
    Procedure AdvanceBillingProcessing;
    Procedure Display_Frct_Involve_Person;
    procedure UserVerification;
    Procedure QueryInpatientSearchInitialization;
  end;

var
  FormInpMain: TFormInpMain;
  DateTemp:TDate;
  DateStr,mainstr:String;
  gs_IsDoctorFractionActive:string;
  gi_UserId:integer;
  todaysdate:string;
  b_InchVerified:boolean;
  gi_InchargeId:integer;
  gi_HospitalID:integer;
  gs_IsRefDocForInvBill:string;
  gs_IsDoctorCompForBilling:string;

implementation

{$R *.dfm}

procedure TFormInpMain.BitBtnBedExchangeClick(Sender: TObject);
begin
     Try
           IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
           Begin
                    MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
                    EditXsearch.SetFocus;
                    Exit;
           End;
     Except
          MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
          EditXsearch.SetFocus;
          Exit;
     End;

//     with FormBedExchange do
//     Begin
//          Try
//               FormBedExchange:=TFormBedExchange.Create(self);
//               ps_IsDischarge:='N';
//               IF QueryInpatientSearch.FieldByName('Discharged').AsString<>'NO' Then
//               Begin
//                    BtnSave.Enabled:=False;
//                    ps_IsDischarge:='Y';
//               End;
//               pi_InpatientId:=QueryInpatientSearch.FieldByName('InpatientId').AsInteger;
//               Showmodal;
//          Finally
//               Free;
//          End;
//     End;
     IF PageControl1.ActivePageIndex=0 Then
     EditXsearch.SetFocus
     Else
     EditPsearch.SetFocus;
end;

procedure TFormInpMain.BitBtnDepositClick(Sender: TObject);
begin
     IF ChkDischarge=2 Then // For Out Patient or Misc. Deposit
     Begin
          IF Trim(EditPsearch.Text)='' Then
          Begin
               MessageDlg('Plz Put Patient No First.',mtWarning,[mbok],0);
               EditPsearch.SetFocus;
               Exit;
          End;

//          Try
//               Application.CreateForm(TFormOPAdvanceAndRefund,FormOPAdvanceAndRefund);
//               With FormOPAdvanceAndRefund do
//               Begin
//                    pi_PatientID:=StrToInt(EditPsearch.Text);
//                    Showmodal;
//               End;
//          Finally
//               FormOPAdvanceAndRefund.Free;
//          End;
     End
     Else
     Begin
          Try
               IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
               Begin
                    MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
                    EditXsearch.SetFocus;
                    Exit;
               End;
          Except
               MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
               EditXsearch.SetFocus;
               Exit;
          End;

          with QueryRoom do
          Begin
               Close;
               Open;
          End;
          OpenBedAssign;

//          With FormGroupTransact Do
//          Begin
//               Try
//                    FGroup:=1;
//                    IF FormInpMain.QueryInpatientSearch.fieldbyname('Discharged').AsString<>'NO' Then
//                    BitBtnSave.Enabled:=False
//                    Else
//                    BitBtnSave.Enabled:=True;
//                    GInpatientID:=FormInpMain.QueryInpatientSearch.fieldbyname('InPatientID').AsInteger;
//                    GpatientID:=FormInpMain.QueryInpatientSearch.fieldbyname('PatientID').AsInteger;
//                    LabelP.Caption:=FormInpMain.QueryInpatientSearch.fieldbyname('PatientID').asstring;
//                    LabelIp.Caption:=FormInpMain.QueryInpatientSearch.fieldbyname('InPatientID').AsString;
//                    LabelPName.Caption:=FormInpMain.QueryInpatientSearch.fieldbyname('FName').AsString+' '+FormInpMain.QueryInpatientSearch.fieldbyname('LName').AsString;
//                    LabelWard.Caption:=GWard;
//                    LabelRoomType.Caption:=GRoomType;
//                    Label_InptDate.Caption:=ps_InptDate;
//                    {LabelRoom.Caption:=GRoom;
//                    LabelBedNo.Caption:=GBedNo;}
//
//                    //PCStaff.Visible:=False;
//                    //PCStaffDetails.Visible:=True;
//                    //BitBtnSave.Enabled:=False;
//                    BitBtnNew.Enabled:=True;
//                    //BitBtnNewClick(Sender);
//                    Showmodal;
//                    //
//               Finally
//                    //Free;
//               End;
//          End;
     End;

     IF PageControl1.ActivePageIndex=0 Then
     EditXsearch.SetFocus
     Else
     EditPsearch.SetFocus;
end;

procedure TFormInpMain.BitBtnDischargeBillClick(Sender: TObject);
begin
     Try
           IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
           Begin
                MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
                EditXsearch.SetFocus;
                Exit;
           End;
     Except
          MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
          EditXsearch.SetFocus;
          Exit;
     End;

//     IF gs_IsDoctorFractionActive='Y' Then
//     Begin
//          IF QueryInpatientSearch.FieldByName('Discharged').AsString='MAN' Then // Man - Manual, CAN - Admission Cancel, YES- Discharged, NO- Still Admitted
//          Begin
//               MessageDlg('Patient Is Discharged Manually With '+QueryInpatientSearch.FieldByName('Remarks').AsString,mtWarning,[mbok],0);
//               Exit;
//          End;
//
//          FormDischargeClearanceDocFract:=TFormDischargeClearanceDocFract.Create(Application);
//          with FormDischargeClearanceDocFract do
//          Begin
//               Try
//                    Edit_InPatientNo.Text:=IntToStr(QueryInpatientSearch.FieldByName('InpatientId').AsInteger);
//                    b_IsDischargePt:=False;
//                    pi_ClinicalDepId:=Self.pi_ClinicalDepId;
//                    IF (Length(Trim(QueryInpatientSearch.FieldByName('DisDate').AsString))=10) or (RadioButtonDischargedOnly.Checked=True) Then
//                    Begin
//                          b_IsDischargePt:=True;
//                          DateEditXIPDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXIPDate.Text:=QueryInpatientSearch.FieldByName('InptDate').AsString;
//                          DateEditXDisDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXDisDate.Text:=QueryInpatientSearch.FieldByName('DisDate').AsString;
//                    End;
//                    b_Execute:=True;
//                    ps_PatientType:=QueryInpatientSearch.FieldByName('PatientType').AsString;//Self.ps_PatientType;
//                    showmodal;
//               Finally
//                    Free;
//               End;
//          End;
//     End
//     Else IF gs_IsInptPharmacyService='Y' Then
//     Begin
//          FormDischargeClearanceWithMedicine:=TFormDischargeClearanceWithMedicine.Create(Application);
//          with FormDischargeClearanceWithMedicine do
//          Begin
//               Try
//                    Edit_InPatientNo.Text:=IntToStr(QueryInpatientSearch.FieldByName('InpatientId').AsInteger);
//                    b_IsDischargePt:=False;
//                    IF (Length(Trim(QueryInpatientSearch.FieldByName('DisDate').AsString))=10) or (RadioButtonDischargedOnly.Checked=True) Then
//                    Begin
//                          b_IsDischargePt:=True;
//                          DateEditXIPDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXIPDate.Text:=QueryInpatientSearch.FieldByName('InptDate').AsString;
//                          DateEditXDisDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXDisDate.Text:=QueryInpatientSearch.FieldByName('DisDate').AsString;
//                    End;
//                    b_Execute:=True;
//                    showmodal;
//               Finally
//                    Free;
//               End;
//          End;
//     End
//     Else // With Doctor Fraction Discharge
//     Begin
//          FormDischargeClearance:=TFormDischargeClearance.Create(Application);
//          with FormDischargeClearance do
//          Begin
//               Try
//                    Edit_InPatientNo.Text:=IntToStr(QueryInpatientSearch.FieldByName('InpatientId').AsInteger);
//                    b_IsDischargePt:=False;
//                    IF (Length(Trim(QueryInpatientSearch.FieldByName('DisDate').AsString))=10) or (RadioButtonDischargedOnly.Checked=True) Then
//                    Begin
//                          b_IsDischargePt:=True;
//                          DateEditXIPDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXIPDate.Text:=QueryInpatientSearch.FieldByName('InptDate').AsString;
//                          DateEditXDisDate.SystemOfDate:=gi_DateSystem;
//                          DateEditXDisDate.Text:=QueryInpatientSearch.FieldByName('DisDate').AsString;
//                    End;
//                    b_Execute:=True;
//                    showmodal;
//               Finally
//                    Free;
//               End;
//          End;
//     End;

     IF PageControl1.ActivePageIndex=0 Then
     EditXsearch.SetFocus
     Else
     EditPsearch.SetFocus;
end;

procedure TFormInpMain.BitBtn_PathoDueClearClick(Sender: TObject);
begin
//     With Form_PathoLeftBillItem Do
//     Begin
//          Try
//               Form_PathoLeftBillItem:=TForm_PathoLeftBillItem.Create(Application);
//               ps_AccessFrom:='BILLING';
//               ShowModal;
//          Finally
//               Free;
//          End;
//     End;
end;

procedure TFormInpMain.BitBtnUndoClick(Sender: TObject);
var li_InpatientId,li_PatientId,li_NewPrimaryId:Integer;
    ls_TodaysDate,ls_TodaysTime,ls_BillNo,ls_PtType:String;
begin
     {  identifying whether he is discharged or not
          .. or if he again readmitted with another new ipno or not      }
     li_InpatientId:=QueryInpatientSearch.FieldByName('InpatientId').AsInteger;
     li_PatientId:=QueryInpatientSearch.FieldByName('PatientId').AsInteger;
     If (QueryInpatientSearch.FieldByName('Discharged').AsString='YES')  then
     Begin
          with Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select InpatientId,InptDate,DisDate From InpatientReg where InpatientId > '+IntToStr(li_InpatientId));
               sql.add(' and PatientId='+IntToStr(li_PatientId));
               Open;
          End;

          IF (TodaysDate > QueryInpatientSearch.FieldByName('DisDate').AsString) and (gi_UserId <> 1) and (gi_UserId <> 39)  Then
          Begin
               MessageDlg('You Can Do Discharge Cancel In Same Day Only. But Discharge Date is " '+QueryInpatientSearch.FieldByName('DisDate').AsString+' "',
               mtWarning,[mbok],0);
               Exit;
          End;

          IF Query_Process.RecordCount > 0 Then
          Begin
               MessageDlg(' Sorry you canno''t do task     " Undo Discharge ".     '+Char(10)+Char(10)+'Reason ->     After this Inpatient No     " '+
               IntToStr(li_InpatientId)+ ' "     the patient is again admitted on date     " '+
               Query_Process.FieldByName('InptDate').AsString+' "  '+Char(10)+'with  Inpatient No.     " '+
               Query_Process.FieldByName('InpatientId').AsString+' ".',mtWarning,[mbOk],0);
               Exit;
          End;

          UserVerification;     {     password verification     }
          IF b_InchVerified=False Then
          Exit;

//          ls_TodaysDate:=ServerDate.TodaysDate;
//          ls_TodaysTime:=ServerDate.TodaysTime;
          //li_InpatientId:=QueryInpatientSearch.FieldByName('InpatientId').AsInteger;
          //li_PatientId:=QueryInpatientSearch.FieldByName('PatientId').AsInteger;
          Try
               DM_hospital.db.StartTransaction;
               with Query_SubProcess do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select DisBillBY,DisBillTime,DisBillDate,BillNo,DepCode,RoomTypeCode From InpatientDetail where ');
                    sql.add(' InpatientDID In (Select Max(InpatientDId) as InpatientDId From InpatientDetail where ');
                    sql.add(' InpatientId='+IntToStr(li_InPatientId)+')');
                    Open;
               End;
               ls_BillNo:=Query_SubProcess.FieldByName('BillNo').AsString;
               ls_PtType:=Query_SubProcess.FieldByName('RoomTypeCode').AsString;
               {     Post info into UndoDischargeLog  }
//               li_NewPrimaryId:=GetNewLongIntKeyValue('UndoDischargeLog','UndoDisId');
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Insert Into UndoDischargeLog(UndoDisId,InpatientId,PatientId,');
                    sql.add(' DisBy,DisDate,DisTime,OldBillNo,ModifyBy,ModifyDate,ModifyTime)');
                    sql.add(' Values ('+IntToStr(li_NewPrimaryId));
                    sql.add(' ,'+IntToStr(li_InPatientId)+','+IntToStr(li_PatientId));
                    sql.add(' ,'+IntToStr(Query_SubProcess.FieldByName('DisBillBY').AsInteger));
                    sql.add(' ,'+#39+Query_SubProcess.FieldByName('DisBillDate').AsString+#39);
                    sql.add(' ,'+#39+Query_SubProcess.FieldByName('DisBillTime').AsString+#39);
                    sql.add(' ,'+#39+ls_BillNo+#39);
                    sql.add(' ,'+IntToStr(gi_InchargeId)+','+#39+ls_TodaysDate+#39);
                    sql.add(' ,'+#39+ls_TodaysTime+#39+')');
                    ExecSQL;
               End;

               {  reset inpatient detail  }
               with Query_Process do
               Begin
                    Close;
                    Sql.Clear;
                    sql.add(' Update InpatientDetail set OutDate=''C'',OutTime='' '',');//DisPer=0,');
                    sql.add(' DisBillBy=0,DisBillTime=''0'',DisBillDate='' '',BillNo='' '' ');
                    If gi_HospitalID In[14,19] Then //HAMS
                    sql.add(' ,IsExtraCharged=''N''');
                    sql.add(' where InpatientDID In (Select Max(InpatientDId) as InpatientDId From ');
                    sql.add(' InpatientDetail where InpatientId='+IntToStr(li_InPatientId)+')');
                    ExecSQL;
               End;

               {  reset inpatientreg  }
               with Query_Process do
               Begin
                    Close;
                    Sql.Clear;
                    sql.add(' Update InpatientReg set DisDate='' '',Discharged=''NO''');
                    sql.add(' where InpatientId='+IntToStr(li_InPatientId));
                    ExecSQL;
               End;

               {  reset PatientMain  }
               with Query_Process do
               Begin
                    Close;
                    Sql.Clear;
                    sql.add(' Update PatientMain set IsInpatient=''T'',InpatientId='+IntToStr(li_InPatientId));
                    sql.add(' ,PatientType=''INPATIENT'' where PatientId='+IntToStr(li_PatientId));
                    ExecSQL;
               End;

               {  reset BillDetail  }
               with Query_Process do
               Begin
                    Close;
                    Sql.Clear;
                    sql.add(' Select BillDetailId,CRBillNo,CrModifyDate,CrModifyTime ');
                    IF ls_PtType='FRG' Then
                    sql.add(' ,DollarTotalAmount,DollarAmount,DollarVatAmt');
                    sql.add(' From BillDetail where BillNo='+#39+ls_BillNo+#39);
                    sql.add(' and Service<>''BED'' and CancelStatus=''N''');
                    IF gs_IsDoctorFractionActive='Y' Then
                    sql.add(' and Service<>''DOCROUND''');
                    Open;
                    First;
               End;

               While Not Query_Process.EOF do
               Begin
                    With Query_SubProcess do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Update BillDetail Set BillNo='+#39+Query_Process.FieldByName('CRBillNo').AsString+#39);
                         sql.add(' ,BillDate='+#39+Query_Process.FieldByName('CrModifyDate').AsString+#39);
                         sql.add(' ,BillTime='+#39+Query_Process.FieldByName('CrModifyTime').AsString+#39);
                         IF ls_PtType='FRG' Then
                         Begin
                              sql.add(' ,TotalAmount='+FloatToStr(Query_Process.FieldByName('DollarTotalAmount').AsFloat));
                              sql.add(' ,Amount='+FloatToStr(Query_Process.FieldByName('DollarAmount').AsFloat));
                              sql.add(' ,VatAmt='+FloatToStr(Query_Process.FieldByName('DollarVatAmt').AsFloat));
                         End;
                         sql.add(' ,PayType=''CREDIT'' ,DisBillBy=0, DisBillDate='' '', DisBillTime='' '' where ');
                         sql.add(' BillDetailId='+IntToStr(Query_Process.FieldByName('BillDetailId').AsInteger));
                         ExecSQL;
                    End;
                    Query_Process.Next;
               End;

               { keep this bill in BED(Service) rows in calcel status }
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update BillDetail Set Service=''CANCEL'',ServiceType=''DISCHARGE CANCEL'',');
                    sql.add(' TotalAmount=0, VatAmt=0, Amount=0, Dis=0,CancelStatus=''Y''');
                    sql.add(' where BillNo='+#39+ls_BillNo+#39);
                    sql.add(' and Service=''BED''');
                    ExecSQL;

                    IF gs_IsDoctorFractionActive='Y' Then
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Delete From BillDetail where BillNo='+#39+ls_BillNo+#39);
                         sql.add(' and Service=''DOCROUND''');
                         ExecSQL;
                    End;
               End;

               { cancel in billmaster }
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update BillMaster set ExtraCharge=0 , DisType=''Discharge Cancel''');
                    sql.add(' where BillNo='+#39+ls_BillNo+#39);
                    ExecSQL;
               End;

               { keep log of Discharge Bill(which was previously made for to see in future what actually bill was) }

               { must have to keep in future }

               { Delete From DrProcedure Of Bed and IPcons }
               If gi_HospitalID=14 Then
               Begin
                    with Query_Process do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Delete From DrProcedures Where DepID In (100,101)');
                         sql.add(' And BillNo='+#39+ls_BillNo+#39);
                         ExecSQL;
                    End;
               End
               Else If gi_HospitalID=19 Then // 19 - Medicare
               Begin
                    with Query_Process do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Delete From DrProcedures Where DepID In (28,80)');
                         sql.add(' And BillNo='+#39+ls_BillNo+#39);
                         ExecSQL;
                    End;
               End;


               DM_hospital.db.Commit;
               //Frm_Message.ShowModal;
          Except
               DM_hospital.db.RollBack;
               MessageDlg('Failure to do task " Undo Discharge ".',mtInformation,[mbok],0);
          End;
          RadioButtonAdmit.Checked:=True;
          QueryInpatientSearchInitialization;
     End
     Else
     Begin
          MessageDlg('This Patient has not been DISCHARGED yet!',mtInformation,[mbok],0);
     End;
end;

procedure TFormInpMain.ChkBoxAllDisClick(Sender: TObject);
begin
     IF ChkBoxAllDis.Checked Then
     Begin
          Try
               StrToInt(LabelNo.Caption);
          Except
              // MessageDlg('Plz. first type '+LabelPatientNo.Caption+'.',mtInformation,[mbok],0);
               EditPsearch.SetFocus;
               Exit;
          End;
          GroupBoxOldTest.Visible:=True;
          GroupBox_CashInfo.Visible:=False;
          ChkBoxOldbill.Checked:=False;
          Try
               IF QueryInpatientSearch.FieldByName('Discharged').AsString='YES' Then
               BitbtnCommon.Enabled:=False
               Else
               BitbtnCommon.Enabled:=True;
          Except
               BitbtnCommon.Enabled:=True;
          End;

          BitbtnCommon.Caption:='&Cancel Test';
          ButtonCash.Enabled:=False;
          GroupBoxOldTest.Visible:=True;
          GroupBoxOldTest.Caption:='Old Test';
          DBGridOldTest.Visible:=True;
          DBGridOldBill.Visible:=False;

          IF RadioButton_IPBilling.Checked=True  Then
          Begin
               DBGridOldTest.Columns[8].Visible:=True;
               DBGridOldTest.Columns[9].Visible:=True;
               DBGridOldTest.Columns[10].Visible:=True;
               DBGridOldTest.Columns[11].Visible:=True;

               Edit_TestCancelRemarks.Visible:=True;
               Edit_TestCancelRemarks.Visible:=True;

          End
          Else
          Begin
               DBGridOldTest.Columns[8].Visible:=False;
               DBGridOldTest.Columns[9].Visible:=False;
               DBGridOldTest.Columns[10].Visible:=False;
               DBGridOldTest.Columns[11].Visible:=False;

               Edit_TestCancelRemarks.Visible:=False;
          End;


          With QueryOldPatientTest Do
          Begin
               Close;
               ParamByName('PatientID').AsInteger:=pi_PatientId;
               IF (RadioButton_OPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
               Begin
                    sql[1]:=' BD.BillNo,BD.BillDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.BillNo) as ExtraCharge,';
                    sql[6]:=' And (BD.BillType=''B'') And BD.CancelStatus=''N'' and BD.ModifyBy=U.UserId';
               End
               Else IF RadioButton_IPBilling.Checked=True Then
               Begin
                    sql[1]:=' BD.CrBillNo as BillNo,BD.CrModifyDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.CrBillNo) as ExtraCharge,';
                    sql[6]:=' And (BD.BillType=''IP'') and BD.Service<>''BED'' and BD.CrModifyBy=U.UserId And BD.InpatientId='+IntToStr(pi_InPatientId);
                    //sql[5]:=' And (BD.BillType=''IP'') And BD.CancelStatus=''N'' and InpatientId='+IntToStr(pi_InPatientId);
               End
               Else
               Begin
                    IF CheckBoxOPRef.Checked=True Then
                    Begin
                         sql[1]:=' BD.BillNo,BD.BillDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.BillNo) as ExtraCharge,';
                         sql[6]:=' And (BD.BillType=''B'') and PayType=''REFUND'' and BD.ModifyBy=U.UserId';
                    End
                    Else
                    Begin
                         sql[1]:=' BD.BillNo,BD.BillDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.CrBillNo) as ExtraCharge,';
                         sql[6]:=' And (BD.BillType=''IP'') and PayType=''REFUND'' and BD.Service<>''BED'' and BD.ModifyBy=U.UserId And BD.InpatientId='+IntToStr(pi_InPatientId);
                    End;
               End;
               //Sql.SaveToFile('C:\Test.Txt');
               Open;
          End;
     End
     Else
     Begin
          //BitbtnCommon.Visible:=False;
          GroupBoxOldTest.Visible:=False;
          With QueryOldPatientTest Do
          Begin
               Close;
          End;
     End;

     IF (ChkBoxAllDis.Checked=False) and (ChkBoxOldbill.Checked=False) Then
     Begin
          GroupBoxOldTest.Visible:=False;
          GroupBox_CashInfo.Visible:=True;
     End;
end;

procedure TFormInpMain.CB_DirectDiscountSetClick(Sender: TObject);
begin
     IF CB_DirectDiscountSet.Checked=True Then
     Begin
          EditDisPer.Color:=clWhite;
          EditDisPer.ReadOnly:=False;
          EditDisPer.Enabled:=True;
          //EditDisAmt.Color:=clWhite;
          //EditDisAmt.Enabled:=True;
          EditDisAmt.ReadOnly:=True;//False;
          DBGridPatientTest.Columns[10].ReadOnly:=True;
          DBGridPatientTest.Columns[10].Color:=$00DFE3E6;

          DBGridPatientTest.Columns[11].ReadOnly:=True;
          DBGridPatientTest.Columns[11].Color:=$00DFE3E6;
          EditDisPer.SetFocus;
     End
     Else
     Begin
          EditDisPer.Color:=clScrollBar;
          EditDisPer.ReadOnly:=True;
          //EditDisPer.Enabled:=False;

          EditDisAmt.Color:=clScrollBar;
          EditDisAmt.ReadOnly:=True;
          DBGridPatientTest.Columns[10].ReadOnly:=False;
          DBGridPatientTest.Columns[10].Color:=clWhite;

          DBGridPatientTest.Columns[11].ReadOnly:=False;
          DBGridPatientTest.Columns[11].Color:=clWhite;

          IF StrToFloat(EditDisPer.Text) > 0 Then
          Begin
               EditDisAmt.Text:='0.00';
               EditDisPer.Text:='0.00';
               EditDisPerExit(Sender);
          End;
     End;
end;

procedure TFormInpMain.CheckBoxOPRefClick(Sender: TObject);
begin
     IF CheckBoxOPRef.Checked=True Then
   Begin
      //LabelPatientNo.Caption:='Hosp. No';
      //Label_BillingStatus.Font.Size:=20;
      Label_BillingStatus.Caption:='OP Refund Billing';
      CheckBoxIPRefund.Checked:=False;
      IF PageControl1.ActivePageIndex=1 then
      EditPsearch.SetFocus;
   End
   Else
   CheckBoxIPRefund.Checked:=True;
end;

procedure TFormInpMain.CheckBoxIPRefundClick(Sender: TObject);
begin
     IF CheckBoxIPRefund.Checked=True Then
   Begin
      EditPsearch.EditLabel.Caption:='Inpatient No.';
      Label_BillingStatus.Font.Size:=20;
      Label_BillingStatus.Caption:='IP Refund Billing';
      CheckBoxOPRef.Checked:=False;
      IF PageControl1.ActivePageIndex=1 Then
      EditPsearch.SetFocus;
   End
   Else
   CheckBoxOPRef.Checked:=True;
end;

procedure TFormInpMain.Chk_photoClick(Sender: TObject);
Var
     Qry:Tquery;
begin
     {if EditPsearch.Text='' then
     begin
          MessageDlg('Plz put the patient Id',mtInformation ,[MbOk],0);
          exit;
     end;   }
     if Chk_photo.Checked=true then
     begin
          Qry:=TQuery.Create(nil);
          with Qry do
          begin
               close;
               DatabaseName:=gs_DatabaseName;
               Sql.Clear;
               sql.Add('select * from member where patientid = '+IntToStr(pi_PatientId));
               open;
          end;
          if Qry.RecordCount>0 then
          begin
//          Form_MemberPhoto:=TForm_MemberPhoto.create(nil);
//          with Form_MemberPhoto  do
//          begin
//               try
//                    with  Query_Image do
//                    begin
//                          close;
//                          sql.clear;
//                          DatabaseName:=gs_DB_MidasImageUser;
//                          sql.add('Select * from Image_main where memberid=:mid');
//                          Sql.Add('and patientid = '+IntToStr(pi_PatientId));
//                          ParamByName('mid').asstring:=ps_MemberNo;
//                          open;
//                    end;
//                    ShowModal;
//               finally
//                    free;
//               end;
//          end;
          end;
     end;
end;

procedure TFormInpMain.CheckBoxTodayClick(Sender: TObject);
begin
     IF gi_HospitalId=19 Then // Medicare
     Begin
          EditHospitalNo.SetFocus;
          EditDay.Text:='0';
     End
     Else
     Begin
          If CheckBoxToday.Checked then
          Begin
               TodaysInpatient:=False;
               QueryInpatientSearchInitialization;
          End
          Else
          Begin
               TodaysInpatient:=True;
               QueryInpatientSearchInitialization;
          End;
     End;
end;

procedure TFormInpMain.CheckBoxTodayKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_UP Then
   EditHospitalNo.SetFocus;

   IF key=VK_Down Then
   EditFName.SetFocus;
end;

procedure TFormInpMain.CheckBox_SearchClick(Sender: TObject);
begin
     IF CheckBox_Search.Checked=True Then
     Begin
          EditDay.Color:=$00ACB8BD;
          EditDay.Enabled:=False;
          //UpDown2.Enabled:=False;

          DateEditX_From.Color:=ClWhite;
          DateEditX_From.Enabled:=True;
          //ButtonFrom.Enabled:=True;

          DateEditX_To.Color:=ClWhite;
          DateEditX_To.Enabled:=True;
          //ButtonTo.Enabled:=True;

          Label9.Enabled:=True;
          Label8.Enabled:=True;
     End
     Else
     Begin
          EditDay.Color:=clWhite;
          EditDay.Enabled:=True;
          //UpDown2.Enabled:=True;

          DateEditX_From.Color:=$00ACB8BD;
          DateEditX_From.Enabled:=False;
          //ButtonFrom.Enabled:=False;

          DateEditX_To.Color:=$00ACB8BD;
          DateEditX_To.Enabled:=False;
          //ButtonTo.Enabled:=False;

          Label8.Enabled:=False;
          Label9.Enabled:=False;
     End;
end;

procedure TFormInpMain.CMBBillTypeChange(Sender: TObject);
begin
     DBLookupComboBox_Community.Enabled:=True;
     IF CMBBillType.Text='EXPRESS' Then
     Begin
          CMBPayType.ItemIndex:=0;
          CMBPayType.Enabled:=False;
          DBLookupComboBox_Community.KeyValue:=NULL;
          DBLookupComboBox_Community.Enabled:=False;
     End;
end;

procedure TFormInpMain.CMBBillTypeExit(Sender: TObject);
begin
     IF (CMBBillType.Text='GENERAL') OR (CMBBillType.Text='PRIVATE') OR (CMBBillType.Text='SPECIAL')
     OR (CMBBillType.Text='G.BED') OR (CMBBillType.Text='EXPRESS') OR (CMBBillType.Text='FOREIGNER') THEN
     Begin
          //DBGridPatientTest.SetFocus;
          //DBGridPatientTest.SelectedIndex:=2;
     End
     Else
     Begin
          MessageDlg('Plz. First Select BillType.',mtWarning,[mbok],0);
          CMBBillType.SetFocus;
          Exit;
     End;
end;

procedure TFormInpMain.CMBBillTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=13 Then
     Begin
          IF gs_IsRefDocForInvBill='Y' Then
          Begin
               DBLC_Doctor.SetFocus;
               Exit;
          End;

          ActiveControl:=DBGridPatientTest;
          DBGridPatientTest.SetFocus;

          IF gs_IsDoctorCompForBilling='Y' Then
          Begin
               DBGridPatientTest.SelectedIndex:=1;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End
          Else
          DBGridPatientTest.SelectedIndex:=2;
     End;

     IF (key=VK_Left) or (key=vk_prior) Then
     EditPsearch.SetFocus;

     IF (key=VK_Right) and (CMBBillType.Text<>'EXPRESS') Then
     Begin
          Edit_MemberNo.SetFocus;
          key:=VK_Left;
          Exit;
     End;
end;

procedure TFormInpMain.CMBPayTypeChange(Sender: TObject);
begin
     If (RadioButton_IPBilling.Checked=True) And (gi_HospitalID In [14,19]) Then
     CMBPayType.ItemIndex:=1
     Else If (RadioButton_OPBilling.Checked=True) And (gi_HospitalID In [14,19]) And (CMBPayType.ItemIndex=1) Then
     Begin
          If MessageDlg('CREDIT BILLING?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
          CMBPayType.ItemIndex:=1
          Else
          CMBPayType.ItemIndex:=0;
     End;



     IF (CMBPayType.ItemIndex=1) Then
     Begin
          EditPayment.ReadOnly:=False;
          EditPayment.Text:='0.00';
     End
     Else IF (CMBPayType.ItemIndex=0) Then
     Begin
          EditPayment.ReadOnly:=True;
          EditPayment.Text:=Label_TotBillAmt.Caption;
     End;
end;

procedure TFormInpMain.CMBPayTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Prior Then
    Begin
         ActiveControl:=DBGridPatientTest;
         DBGridPatientTest.SelectedIndex:=5;
    End;
end;

procedure TFormInpMain.CMBPayTypeKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#13 Then
   Begin
      IF (CMBPayType.Text='') and (Trim(Edit_MemberNo.Text)<>'') Then
      Begin
         MessageDlg(' Plz. put pay type for medicare patient.',mtinformation,[mbok],0);
         CMBPayType.SetFocus;
         Exit;
      End;
      EditPayment.SetFocus;
   End;
end;

procedure TFormInpMain.DateEditX6KeyPress(ASender: TObject; var Key: SmallInt);
begin
     IF key=13 Then
   Begin
      ActiveControl:=DBGridPatientTest;
      IF gs_IsDoctorCompForBilling='Y' Then
      Begin
           DBGridPatientTest.SelectedIndex:=1;
           DBGridPatientTest.Fields[1].Text:='HOS01';
      End
      Else
      DBGridPatientTest.SelectedIndex:=2;
   End;
end;

procedure TFormInpMain.DBGridMainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
      IF (QueryInpatientSearch.FieldByName('DisInDeposit').asString='Y') and (QueryInpatientSearch.FieldByName('Discharged').asString='NO') Then
     Begin
          DBGridMain.Canvas.Font.Color:=clRed;
          DBGridMain.DefaultDrawDataCell(rect,Column.Field,State);
     End
     Else IF (QueryInpatientSearch.FieldByName('DisInDeposit').asString='Y') and (QueryInpatientSearch.FieldByName('Discharged').asString='YES') Then
     Begin
          DBGridMain.Canvas.Font.Color:=$0006FF06;//clFuchsia;
          DBGridMain.DefaultDrawDataCell(rect,Column.Field,State);
     End;
end;

procedure TFormInpMain.DBGridMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF ((ssShift in Shift) and (key = vk_up)) then
     EditFName.setfocus;
end;

procedure TFormInpMain.DBGridPatientTestCellClick(Column: TColumn);
begin
     IF DBGridPatientTest.SelectedIndex=12 Then
     DBGridPatientTest.SelectedIndex:=11;

     IF gs_IsDoctorFractionActive='Y' Then
     Display_Frct_Involve_Person;
end;

procedure TFormInpMain.DBGridPatientTestColEnter(Sender: TObject);
var
     li_DocFraDepId:Integer;
begin
     IF TablePTTestTemp.RecordCount<0 Then
     Begin
          IF gs_IsDoctorCompForBilling='Y' Then
          Begin
               DBGridPatientTest.SelectedIndex:=1;
               TablePTTestTemp.Edit;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End
          Else
          DBGridPatientTest.SelectedIndex:=2;
     End;

     IF TablePTTestTemp.RecordCount<0 Then
     DBGridPatientTest.SelectedIndex:=2;

     IF TablePTTestTemp.FieldbyName('IsOperational') .AsString='Y' Then
     Sp_DocInvolve.Enabled:=True
     Else
     Sp_DocInvolve.Enabled:=False;

     IF (gs_IsDoctorFractionActive='Y')  Then
     Begin
          { Get DeptId or TestNameId whether there is commession or not }
          With Query_IsTestDeptInCommSetup Do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
               sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
               Open;
               li_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
          End;

          pi_DocFraDepId:=li_DocFraDepId;
          IF (TablePTTestTemp.FieldbyName('DepId') .AsInteger In [li_DocFraDepId,63]) Then // 63- X-Ray Dept.
          Sp_DocInvolve.Enabled:=True;
     End;

end;

procedure TFormInpMain.DBGridPatientTestColExit(Sender: TObject);
begin
      IF DBGridPatientTest.SelectedIndex=1 Then
     Begin
          IF DBGridPatientTest.Fields[1].Text<>'HOS01' Then
          Begin
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select DocCode From Doctor where DocCode='+#39+UpperCase(DBGridPatientTest.Fields[1].Text)+#39);
                    Open;
               End;

               IF Query_Process.RecordCount <=0 Then
               Begin
                    TablePTTestTemp.Edit;
                    DBGridPatientTest.Fields[1].Text:='HOS01';
                    DBGridPatientTest.SelectedIndex:=2;
                    Exit;
               End;
          End;
     End;

     { checking duplicate items in same billing instance (i.e with same bill not) }
     IF (DBGridPatientTest.SelectedIndex=2) or (DBGridPatientTest.SelectedIndex=3) Then
     Begin
          IF DBGridPatientTest.Fields[2].Text<>'' Then
          Begin
               with Query_TempProcess do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select * From PatientTestTemp.db where ');
                    sql.add(' TestNameCode='+#39+DBGridPatientTest.Fields[2].Text+#39);

                    IF gi_HospitalId=1 Then //1 - NMC { Except BB03 avoid duplicate items billing }
                    sql.add(' And TestNameCode<>''BB03''');
                    Open;
               End;

               IF Query_TempProcess.RecordCount > 1 Then
               Begin
                    MessageDlg(' Duplicate Items !    Items With the code   " '+DBGridPatientTest.Fields[2].Text+'  "  is already exist. ',mtWarning,[mbok],0);
                    TablePTTestTemp.Delete;
                    IF gs_IsDoctorCompForBilling='Y' Then
                    Begin
                         DBGridPatientTest.SelectedIndex:=1;
                         TablePTTestTemp.Edit;
                         DBGridPatientTest.Fields[1].Text:='HOS01';
                    End
                    Else
                    DBGridPatientTest.SelectedIndex:=2;
                    Exit;
               End;
          End;
     End;
end;

procedure TFormInpMain.DBGridPatientTestDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     IF TablePTTestTemp.FieldByName('IsFractionableItem').asString='Y' Then
     Begin
          DBGridPatientTest.Canvas.Font.Color:=clRed;
          DBGridPatientTest.DefaultDrawDataCell(rect,Column.Field,State);
     End;
end;

procedure TFormInpMain.DBGridPatientTestExit(Sender: TObject);
begin
     b_IsQtyCtrlMsgDisplay:=False;
     AvoidDisPerErrorInGridSFSLWGTNL;
end;

procedure TFormInpMain.DBGridPatientTestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=VK_TAB Then
     Begin
          IF RadioButton_IPBilling.Checked=True Then
          Begin
               DBLookupComboBox_DepositType.SetFocus;
          End
          Else
          Begin
               IF (Trim(Edit_MemberNo.Text)<>'') and (RadioButton_OPBilling.Checked=True) Then
               Begin
                    CMBPayType.Text:='';
                    //CMBPayType.Style:=csDropDownList;
                    CMBPayType.SetFocus;
               End
               Else
               EditPayment.SetFocus;
          End;
     End;

     IF key=VK_Prior Then
     Begin
          IF CMBBillType.Text='EXPRESS' Then
          CMBBillType.SetFocus
          Else
          Begin
                 IF gs_IsRefDocForInvBill='Y' Then
                 DBLC_Doctor.SetFocus
                 Else
                 Begin
                      IF CheckBox_Schemes.Checked=True Then
                      DBLookupComboBox_Community.SetFocus
                      Else
                      CMBBillType.SetFocus;
                 End;
          End;
     End;

     IF Key=VK_CONTROL Then
     CheckCtrl:=True;

     IF CheckCtrl=True Then
     Begin
          IF Key=VK_Return Then
          Begin
               With TablePTTestTemp Do
               Begin
                    Edit;
                    Post;
               End;
               TablePTTestTemp.Edit;
               TablePTTestTemp.Delete;

               EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
               pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
               EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
               Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);

               IF gs_GovtTaxRule='TAD' Then
               Begin
                    Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                    //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                    Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
               End
               Else
               Begin
                    Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                    //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                    Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
               End;

               EditPayment.Text:=Edit_GrandTotal.Text;

               //IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then

               IF (gi_HospitalId In [5,14,19]) Then
               Begin
                    IF RadioButton_IPBilling.Checked=True Then
                    Begin
                         CMBPayType.ItemIndex:=1;
                         EditPayment.Text:='0.00';
                    End;
               End;

               Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;

               EditPayment.SetFocus;
               CheckCtrl:=False;
          End;
     End;

     IF Key=VK_DELETE Then
     Begin

          { while OP Advance Due Clear ,If Item Delete Checking.  }
          IF (TablePTTestTemp.FieldByName('WorkingStatus').AsString='FE') and (b_IsAdvanceDueClear=True) Then
          Begin
               MessageDlg(' Sorry,  Cannot Delete( Test Has Already Done )',mtWarning,[mbok],0);
               Exit;
          End;

          { Some Times There is Package Test }
          IF TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
          Begin
               With Query_TempProcess do
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Delete From PackageTest.db where MTestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    ExecSQL;
               End;
          End;

          IF gs_IsDoctorFractionActive='Y' Then // In Case Of Doctor Fraction
          DeleteFractionCharge;

          TablePTTestTemp.Edit;
          TablePTTestTemp.Delete;

          EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
          pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
          EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
          Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);

          IF gs_GovtTaxRule='TAD' Then
          Begin
               Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
               //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
               Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
          End
          Else
          Begin
               Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
               //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
               Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
          End;

          EditPayment.Text:=Edit_GrandTotal.Text;
          //IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
          IF (gi_HospitalId In [5,14,19]) Then
          Begin
               IF RadioButton_IPBilling.Checked=True Then
               Begin
                    CMBPayType.ItemIndex:=1;
                    EditPayment.Text:='0.00';
               End;
          End;

          Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
          {IF TablePTTestTemp.RecordCount > 0 Then
          DBLookupComboBox_Community.Enabled:=False
          Else
          DBLookupComboBox_Community.Enabled:=True;}
          LabelItem.Caption:=IntToStr(TablePTTestTemp.RecordCount);
     End;

     IF Key=VK_RIGHT Then
     Begin
          IF (DBGridPatientTest.SelectedIndex=1) and (gs_IsDoctorCompForBilling='Y') Then
          Begin
               DBGridPatientTest.SelectedIndex:=2;
          End
          Else
          Begin
               IF (DBGridPatientTest.Fields[2].Text<>'') or (DBGridPatientTest.Fields[3].Text<>'') Then
               Begin
                    IF DBGridPatientTest.SelectedIndex=2 Then
                    DBGridPatientTest.SelectedIndex:=3
                    Else IF DBGridPatientTest.SelectedIndex=3 Then
                    DBGridPatientTest.SelectedIndex:=5
                    Else IF DBGridPatientTest.SelectedIndex=5 Then
                    DBGridPatientTest.SelectedIndex:=10;
               End
               Else
               Begin
                    TablePTTestTemp.Cancel;
                    DBGridPatientTest.SelectedIndex:=5;//10
               End;
          ENd;
     End;

     IF Key=VK_LEFT Then
     Begin
          IF DBGridPatientTest.SelectedIndex=10 Then
          DBGridPatientTest.SelectedIndex:=5
          Else IF DBGridPatientTest.SelectedIndex=5 Then
          DBGridPatientTest.SelectedIndex:=3
          Else IF DBGridPatientTest.SelectedIndex=3 Then
          DBGridPatientTest.SelectedIndex:=2
          Else IF (DBGridPatientTest.SelectedIndex=2) and (gs_IsDoctorCompForBilling='Y') Then
          Begin
               DBGridPatientTest.SelectedIndex:=1;
               TablePTTestTemp.Edit;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End;
     End;
end;

procedure TFormInpMain.DBGridPatientTestKeyPress(Sender: TObject; var Key: Char);
var
     lf_TestPrice:Double;
begin
     Key:=UpCase(Key);
     IF (key<>#13) and (key<>#9) and (key<>#27) and (key<>#8) and (key<>#32) Then
     Begin
          IF gs_IsDoctorCompForBilling='Y' Then
          Begin
              IF (DBGridPatientTest.SelectedIndex=1)  Then
               Begin
                    ps_SearchStr:=ps_SearchStr+Key;
                    ps_SearchStr:=UpperCase(ps_SearchStr);
                    with Query_Process do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select DocCode From Doctor where DocCode Like '+#39+ps_SearchStr+'%'+#39);
                         Open;
                    End;

                    IF Query_Process.RecordCount > 0 Then
                    Exit
                    Else
                    Key:=#13;
               End;
          End;

          IF (DBGridPatientTest.SelectedIndex=2) or (DBGridPatientTest.SelectedIndex=3) Then
          Begin
               ps_SearchStr:=ps_SearchStr+Key;
               ps_SearchStr:=UpperCase(ps_SearchStr);
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select TestNameCode From TestName where TestNameCode Like '+#39+ps_SearchStr+'%'+#39);
                    sql.add(' or TestName Like '+#39+ps_SearchStr+'%'+#39+' Order By TestNameCode');
                    Open;
               End;

               IF Query_Process.RecordCount > 0 Then
               Exit
               Else
               Key:=#13;
          End;
     End;

     IF (DBGridPatientTest.SelectedIndex>=0) And (DBGridPatientTest.SelectedIndex<=11)Then
     Begin
          IF Key =#13 Then
          Begin
               IF Trim(CMBBillType.Text)='' Then
               Begin
                    MessageDlg('Plz. First Select BillType.',mtWarning,[mbok],0);
                    CMBBillType.SetFocus;
                    Exit;
               End;

               With TablePTTestTemp Do
               Begin
                    IF Not Active Then Active:=True;
                    IF (State=DsEdit)OR (State=DSInsert) Then
                    Post;
               End;

               With FrmCode Do
               Begin
                    IF DBGridPatientTest.SelectedIndex=1 Then
                    Begin
                         //FormInpMain.CheckDep(DBGridPatientTest,Uppercase(DBGridPatientTest.SelectedField.Text));
                         FormInpMain.CheckDoc(DBGridPatientTest,Uppercase(DBGridPatientTest.SelectedField.Text));
                         IF DBGridPatientTest.Fields[1].Text='' Then
                         Begin
                              DBGridPatientTest.SelectedIndex:=1;
                              Exit;
                         End;
                         ps_SearchStr:='';


                         { Doctor Fraction }
                         IF (gs_IsDoctorFractionActive='Y') Then
                         Begin
                              IF (ChkDischarge<>3) and (TablePTTestTemp.FieldbyName('IsFractionableItem').AsString='Y')
                              and (Trim(TablePTTestTemp.FieldbyName('TestNameCode') .AsString)<>'') Then
                              AllocateTestWiseDoctorFraction(TablePTTestTemp.FieldbyName('TestNameCode') .AsString,
                                   TablePTTestTemp.FieldbyName('Total').AsFloat,TablePTTestTemp.FieldbyName('DepId').AsInteger);
                              Display_Frct_Involve_Person;
                         End;

                         DBGridPatientTest.SelectedIndex:=2;
                         Exit;
                    End
                    Else IF (DBGridPatientTest.SelectedIndex=2) or ((DBGridPatientTest.SelectedIndex=3) and (DBGridPatientTest.Fields[2].Text=''))  Then
                    Begin
                         RetriveSelData;
                         CheckTestNameCode;
                         IF DBGridPatientTest.Fields[3].Text='' Then
                         Begin
                              DBGridPatientTest.SelectedIndex:=2;
                              Exit;
                         End;

                         { Doctor Fraction }
                         IF (gs_IsDoctorFractionActive='Y') Then
                         Begin
                              { Get DeptId or TestNameId whether there is commession or not }
                              With Query_IsTestDeptInCommSetup Do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                   sql.add(' TestNameId='+IntToStr(TablePTTestTemp.FieldByName('TestNameID').AsInteger));
                                   Open;

                                   IF RecordCount > 0 Then
                                   pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   Else
                                   Begin
                                        Close;
                                        sql.Clear;
                                        sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                        sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
                                        Open;
                                        pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   End;
                              End;

                              // ChkDischarge = 3 -> Refund Billing
                              IF (ChkDischarge<>3) and (TablePTTestTemp.FieldbyName('IsFractionableItem').AsString='Y') Then
                              AllocateTestWiseDoctorFraction(TablePTTestTemp.FieldbyName('TestNameCode') .AsString,
                                   TablePTTestTemp.FieldbyName('Total').AsFloat,TablePTTestTemp.FieldbyName('DepId').AsInteger);
                              Display_Frct_Involve_Person;
                         End;

                         {IF ps_TaxSystem='TAD' Then
                         Begin
                              TablePTTestTemp.Edit;
                              IF ISVatable='V' Then
                              DBGridPatientTest.Fields[6].Text:=Format('%.2f',[((DBGridPatientTest.Fields[12].Value*gf_VatPer/100)*StrToFloat(DBGridPatientTest.Fields[5].Text))])
                              Else
                              DBGridPatientTest.Fields[6].Text:='0';
                              TablePTTestTemp.Post;
                         End;}
                         EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                         pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                         EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                         Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);

                         IF gs_GovtTaxRule='TAD' Then
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                         End
                         Else
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                         End;

                         EditPayment.Text:=Edit_GrandTotal.Text;
                         //IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
                         IF (gi_HospitalId In [5,14,19]) Then
                         Begin
                              IF RadioButton_IPBilling.Checked=True Then
                              Begin
                                   CMBPayType.ItemIndex:=1;
                                   EditPayment.Text:='0.00';
                              End;
                         End;

                         Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;

                         IF gi_HospitalId In [19] Then { Medicare Special Case }
                         Begin { In Case of Zero Price or Operation Item Could Change test price }
                              IF (TablePTTestTemp.FieldByName('CostPrice').AsFloat=0)
                              or (TablePTTestTemp.FieldbyName('IsOperational').AsString='Y') or (TablePTTestTemp.FieldbyName('IsTestPriceEditInBill').AsString='Y') Then
                              Begin
                                   DBGridPatientTest.Columns[4].ReadOnly:=False;
                                   DBGridPatientTest.SelectedIndex:=4;
                                   Exit;
                              End
                              Else
                              Begin
                                   DBGridPatientTest.Columns[4].ReadOnly:=True;
                                   IF (DBGridPatientTest.Fields[2].Text='') and (DBGridPatientTest.Fields[3].Text='') Then
                                   DBGridPatientTest.SelectedIndex:=2
                                   Else
                                   DBGridPatientTest.SelectedIndex:=5;
                                   Exit;
                              End;
                         End
                         Else
                         Begin
                              IF (TablePTTestTemp.FieldByName('CostPrice').AsFloat=0) Then
                              Begin
                                   DBGridPatientTest.Columns[4].ReadOnly:=False;
                                   DBGridPatientTest.SelectedIndex:=4;
                                   Exit;
                              End
                              Else
                              Begin
                                   DBGridPatientTest.Columns[4].ReadOnly:=True;
                                   IF (DBGridPatientTest.Fields[2].Text='') and (DBGridPatientTest.Fields[3].Text='') Then
                                   DBGridPatientTest.SelectedIndex:=2
                                   Else
                                   DBGridPatientTest.SelectedIndex:=5;
                                   Exit;
                              End;
                         End;
                    End
                    Else IF (DBGridPatientTest.SelectedIndex=3) and (DBGridPatientTest.Fields[4].Text<>'') Then
                    Begin
                         {IF gi_HospitalId In [14,19] Then
                         Begin
                              IF (TablePTTestTemp.FieldByName('CostPrice').AsFloat=0) or (TablePTTestTemp.FieldbyName('IsOperational').AsString='Y') Then
                              Begin
                                   DBGridPatientTest.Columns[4].ReadOnly:=False;
                                   DBGridPatientTest.SelectedIndex:=4;
                                   Exit;
                              End;
                         End;}

                         FormInpMain.DBGridPatientTest.SelectedIndex:=4;
                         Exit;
                    End
                    Else IF FormInpMain.DBGridPatientTest.SelectedIndex=4 Then
                    Begin
                         { Medicare Special Case } { In Case of Zero Price or Operation Item Could Change test price }
                         IF (gi_HospitalId In [19]) and ((TablePTTestTemp.FieldbyName('IsOperational').AsString='Y')
                         or (TablePTTestTemp.FieldbyName('IsTestPriceEditInBill').AsString='Y')) Then

                         DBGridPatientTest.Columns[4].ReadOnly:=False;

                         lf_TestPrice:=pf_TestPrice;
                         RetriveSelData;
                         CheckTestNameCode;

                         { Doctor Fraction }
                         IF ((gs_IsDoctorFractionActive='Y') and (lf_TestPrice=0)) or
                         ((gi_HospitalId=19) and (gs_IsDoctorFractionActive='Y') and (TablePTTestTemp.FieldbyName('IsTestPriceEditInBill').AsString='Y')) Then
                         Begin
                                                            { Get DeptId or TestNameId whether there is commession or not }
                              With Query_IsTestDeptInCommSetup Do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                   sql.add(' TestNameId='+IntToStr(TablePTTestTemp.FieldByName('TestNameID').AsInteger));
                                   Open;

                                   IF RecordCount > 0 Then
                                   pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   Else
                                   Begin
                                        Close;
                                        sql.Clear;
                                        sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                        sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
                                        Open;

                                        pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   End;
                              End;


                              IF (ChkDischarge<>3) and (TablePTTestTemp.FieldbyName('IsFractionableItem').AsString='Y') Then
                              AllocateTestWiseDoctorFraction(TablePTTestTemp.FieldbyName('TestNameCode') .AsString,
                                   TablePTTestTemp.FieldbyName('Total').AsFloat,TablePTTestTemp.FieldbyName('DepId').AsInteger)
                              Else IF TablePTTestTemp.FieldbyName('DepId').AsInteger=63 Then // X-Ray Plate Size Setting
                              Begin
                                   IF (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY01') or
                                   (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY02') or
                                   (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY03') Then
                                   SetDefaultXrayPlate;
                              End;
                         End;

                         EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                         pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                         EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                         Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
                         IF gs_GovtTaxRule='TAD' Then
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                         End
                         Else
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                         End;

                         EditPayment.Text:=Edit_GrandTotal.Text;
                         //IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
                         IF (gi_HospitalId In [5,14,19]) Then
                         Begin
                              IF RadioButton_IPBilling.Checked=True Then
                              Begin
                                   CMBPayType.ItemIndex:=1;
                                   EditPayment.Text:='0.00';
                              End;
                         End;

                         Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
                         DBGridPatientTest.SelectedIndex:=5;
                         //FormInpMain.TablePTTestTemp.Append;
                         //FormInpMain.DBGridPatientTest.SelectedIndex:=2;
                    End
                    Else IF FormInpMain.DBGridPatientTest.SelectedIndex=5 Then
                    Begin
                         IF (DBGridPatientTest.Fields[5].Text='') or (DBGridPatientTest.Fields[5].Text='0') Then
                         Begin
                              TablePTTestTemp.Edit;
                              DBGridPatientTest.Fields[5].Text:='1';
                         End;

                         CheckTestNameCode;
                         {IF ps_TaxSystem='TAD' Then //Tax After Discount
                         Begin
                              TablePTTestTemp.Edit;
                              IF ISVatable='V' Then
                              DBGridPatientTest.Fields[6].Text:=Format('%.2f',[((DBGridPatientTest.Fields[12].Value*gf_VatPer/100)*StrToFloat(DBGridPatientTest.Fields[5].Text))])
                              Else
                              DBGridPatientTest.Fields[6].Text:='0';
                              TablePTTestTemp.Post;
                         End;}
                         EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                         pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                         EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                         Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);

                         IF gs_GovtTaxRule='TAD' Then
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                         End
                         Else
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                         End;

                         EditPayment.Text:=Edit_GrandTotal.Text;
                         //IF (gi_HospitalId in [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
                         //EditPayment.Text:='0.00';
                         IF (gi_HospitalId In [5,14,19]) Then
                         Begin
                              IF RadioButton_IPBilling.Checked=True Then
                              Begin
                                   CMBPayType.ItemIndex:=1;
                                   EditPayment.Text:='0.00';
                              End;
                         End;

                         Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;

                         //DBGridPatientTest.SelectedIndex:=11; //10

                         { Doctor Fraction }
                         IF (gs_IsDoctorFractionActive='Y') Then
                         Begin
                              { Get DeptId or TestNameId whether there is commession or not }
                              With Query_IsTestDeptInCommSetup Do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                   sql.add(' TestNameId='+IntToStr(TablePTTestTemp.FieldByName('TestNameID').AsInteger));
                                   Open;

                                   IF RecordCount > 0 Then
                                   pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   Else
                                   Begin
                                        Close;
                                        sql.Clear;
                                        sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                        sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
                                        Open;

                                        pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   End;
                              End;


                              IF (ChkDischarge<>3) and (TablePTTestTemp.FieldbyName('IsFractionableItem').AsString='Y') Then
                              AllocateTestWiseDoctorFraction(TablePTTestTemp.FieldbyName('TestNameCode') .AsString,
                                   TablePTTestTemp.FieldbyName('Total').AsFloat,TablePTTestTemp.FieldbyName('DepId').AsInteger)
                              Else IF TablePTTestTemp.FieldbyName('DepId').AsInteger=63 Then // X-Ray Plate Size Setting
                              Begin
                                   IF (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY01') or
                                   (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY02') or
                                   (TablePTTestTemp.FieldbyName('TestNameCode').AsString='GXRY03') Then
                                   SetDefaultXrayPlate;
                              End;
                              Display_Frct_Involve_Person;
                         End;
                         TablePTTestTemp.Append;

                         IF gs_IsDoctorCompForBilling='Y' Then
                         Begin
                              DBGridPatientTest.SelectedIndex:=1;
                              DBGridPatientTest.Fields[1].Text:='HOS01';
                         End
                         Else
                         DBGridPatientTest.SelectedIndex:=2;

                         Label_Fraction.Visible:=False;
                         DBGrid_DocInvolved.Visible:=False;
                         Exit;
                    End
                    Else IF DBGridPatientTest.SelectedIndex=10 Then {*** specail for manipal requirment....}
                    Begin
                         IF DBGridPatientTest.Fields[10].Value > 100 Then
                         Begin
                              TablePTTestTemp.Edit;
                              DBGridPatientTest.Fields[10].Value:=0;
                         End;

                         IF DBGridPatientTest.Fields[5].Text='' Then
                         DBGridPatientTest.Fields[5].Text:='1';

                         CheckTestNameCode;
                         {IF ps_TaxSystem='TAD' Then //Tax After Discount
                         Begin
                              TablePTTestTemp.Edit;
                              IF ISVatable='V' Then
                              DBGridPatientTest.Fields[6].Text:=Format('%.2f',[((DBGridPatientTest.Fields[12].Value*gf_VatPer/100)*StrToFloat(DBGridPatientTest.Fields[5].Text))])
                              Else
                              DBGridPatientTest.Fields[6].Text:='0';
                              TablePTTestTemp.Post;
                         End;}
                         EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                         pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                         EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                         Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
                         IF gs_GovtTaxRule='TAD' Then
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                         End
                         Else
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                         End;

                         EditPayment.Text:=Edit_GrandTotal.Text;
                         //IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
                         //EditPayment.Text:='0.00';
                         IF (gi_HospitalId In [5,14,19]) Then
                         Begin
                              IF RadioButton_IPBilling.Checked=True Then
                              Begin
                                   CMBPayType.ItemIndex:=1;
                                   EditPayment.Text:='0.00';
                              End;
                         End;

                         Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
                         DBGridPatientTest.SelectedIndex:=11;
                         Exit;
                    End
                    Else IF DBGridPatientTest.SelectedIndex=11 Then
                    Begin
                         IF DBGridPatientTest.Fields[11].Value > DBGridPatientTest.Fields[7].Value Then
                         Begin
                              TablePTTestTemp.Edit;
                              DBGridPatientTest.Fields[11].Value:=0;
                         End;

                         IF DBGridPatientTest.Fields[5].Text='' Then
                         DBGridPatientTest.Fields[5].Text:='1';

                         CheckTestNameCode;
                         {IF ps_TaxSystem='TAD' Then //Tax After Discount
                         Begin
                              TablePTTestTemp.Edit;
                              IF ISVatable='V' Then
                              DBGridPatientTest.Fields[6].Text:=Format('%.2f',[((DBGridPatientTest.Fields[12].Value*gf_VatPer/100)*StrToFloat(DBGridPatientTest.Fields[5].Text))])
                              Else
                              DBGridPatientTest.Fields[6].Text:='0';
                              TablePTTestTemp.Post;
                         End;}
                         EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                         pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                         EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                         Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
                         IF gs_GovtTaxRule='TAD' Then
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                         End
                         Else
                         Begin
                              Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                              //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                              Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                         End;

                         EditPayment.Text:=Edit_GrandTotal.Text;
                         //IF (gi_HospitalId in [5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
                         //EditPayment.Text:='0.00';
                         IF (gi_HospitalId In [5,14,19]) Then
                         Begin
                              IF RadioButton_IPBilling.Checked=True Then
                              Begin
                                   CMBPayType.ItemIndex:=1;
                                   EditPayment.Text:='0.00';
                              End;
                         End;

                         Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;

                         { Doctor Fraction }
                         IF (gs_IsDoctorFractionActive='Y') Then
                         Begin
                              { Get DeptId or TestNameId whether there is commession or not }
                              With Query_IsTestDeptInCommSetup Do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                   sql.add(' TestNameId='+IntToStr(TablePTTestTemp.FieldByName('TestNameID').AsInteger));
                                   Open;

                                   IF RecordCount > 0 Then
                                   pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   Else
                                   Begin
                                        Close;
                                        sql.Clear;
                                        sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
                                        sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
                                        Open;

                                        pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
                                   End;
                              End;


                              IF (RadioButton_OPBilling.Checked=True) and (ChkDischarge<>3) and ((TablePTTestTemp.FieldbyName('IsOperational') .AsString='Y')
                              or  (TablePTTestTemp.FieldbyName('DepId').AsInteger=pi_DocFraDepId)) Then // 62 - Histopathology, 8 - USG, ChkDischarge = 3 ->Refund ,17 -Pathology
                              AllocateTestWiseDoctorFraction(TablePTTestTemp.FieldbyName('TestNameCode') .AsString,
                                        TablePTTestTemp.FieldbyName('Total').AsFloat,TablePTTestTemp.FieldbyName('DepId').AsInteger);
                              Display_Frct_Involve_Person;
                         End;
                         TablePTTestTemp.Append;


                         IF gs_IsDoctorCompForBilling='Y' Then
                         Begin
                              DBGridPatientTest.SelectedIndex:=1;
                              DBGridPatientTest.Fields[1].Text:='HOS01';
                         End
                         Else
                         DBGridPatientTest.SelectedIndex:=2;

                         Label_Fraction.Visible:=False;
                         DBGrid_DocInvolved.Visible:=False;
                    End;
               End;
          End;
          ps_SearchStr:='';
     End;

end;

procedure TFormInpMain.DBGridPatientTestKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=VK_CONTROL Then
  Begin
    CheckCtrl:=False;
  End;
end;

procedure TFormInpMain.DBGridOldBillDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     IF (QueryBillMaster.FieldByName('ExtraCharge').AsFloat > 0) and (RadioButton_IPBilling.Checked=True) Then
     Begin
          DBGridOldBill.Canvas.Font.Color:=clRed;
          DBGridOldBill.DefaultDrawDataCell(rect,Column.Field,State);
     End ;
end;

procedure TFormInpMain.DBLookupComboBox_CommunityClick(Sender: TObject);
begin
     IF DBLookupComboBox_Community.KeyValue<>Null Then
     Begin
          With Query_Scheme do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select * From Scheme where (CommunityId='+IntToStr(DBLookupComboBox_Community.KeyValue));
               IF RadioButton_OPBilling.Checked=True Then
               sql.add(' and OutPTDiscount > 0 ')
               Else IF RadioButton_IPBilling.Checked=True Then
               sql.add(' and InPtDiscount > 0 ');
               sql.add(' )');
               sql.add(' Or (CommunityId='+IntToStr(DBLookupComboBox_Community.KeyValue)+' and IsDisplayWithoutDiscount=''Y'')');
               Open;
          End;
          DBLookupComboBox_Scheme.KeyValue:=NULL;
     End;
end;

procedure TFormInpMain.DBLookupComboBox_CommunityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Delete Then
     Begin
           DBLookupComboBox_Community.KeyValue:=NULL;
           pf_DiscountPer:=0;
           Query_Scheme.close;
           DBGridPatientTest.Columns[10].ReadOnly:=True;
           DBGridPatientTest.Columns[11].ReadOnly:=True;
     End;

     IF (key=vk_Left) or (key=vk_prior) Then
     Edit_MemberNo.SetFocus;

     IF (DBLookupComboBox_Community.KeyValue=NULL) and (Trim(Edit_MemberNo.Text)='') Then
     Begin
           ps_PatientCatg:='ORD';
           CMBPayType.ItemIndex:=0;
           CMBPayType.Font.Color:=clBlack;
     End;
end;

procedure TFormInpMain.DBLookupComboBox_CommunityKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#13 Then
     DBLookupComboBox_Scheme.SetFocus;
end;

procedure TFormInpMain.DBLookupComboBox_SchemeClick(Sender: TObject);
Var lf_Discount,lf_DisPercent,lf_SchemeDis,lf_SchemeDisPer:Double;
    lf_TotDiscount:Double;
begin
     IF DBLookupComboBox_Scheme.KeyValue<>Null Then
     Begin
          With QueryDisScheme do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select OPTCreditFacility,OutPTDiscount,IPTCreditFacility,INPTDiscount ');
               sql.add(' From Scheme  where SchemeId='+IntToStr(DBLookupComboBox_Scheme.KeyValue));
               Open;
          End;

          IF RadioButton_OPBilling.Checked=True Then
          Begin
               IF QueryDisScheme.FieldByName('OPTCreditFacility').AsString='Y' Then
               Begin
                    IF gi_HospitalId<>19 Then // 19 - Medicare
                    CMBPayType.ItemIndex:=1;
                    CMBPayType.Font.Color:=clRed;
                    IsCreditParty:=True;
               End
               Else
               Begin
                    CMBPayType.ItemIndex:=0;
                    CMBPayType.Font.Color:=clBlack;
                    IsCreditParty:=False;
               End;
               pf_DiscountPer:=QueryDisScheme.FieldByName('OutPTDiscount').AsFloat;
          End
          Else
          Begin
               IF QueryDisScheme.FieldByName('IPTCreditFacility').AsString='Y' Then
               Begin
                    CMBPayType.ItemIndex:=1;
                    CMBPayType.Enabled:=True;
                    IsCreditParty:=True;
                    Label_Community.Font.Color:=clRed;
               End
               Else
               Begin
                    IsCreditParty:=False;
                    Label_Community.Font.Color:=clBlack;
               End;
               pf_DiscountPer:=QueryDisScheme.FieldByName('INPTDiscount').AsFloat;

               IF gi_HospitalId=5 Then
               CMBPayType.ItemIndex:=1;

          End;
          DBGridPatientTest.Columns[10].ReadOnly:=False;

          IF gi_HospitalId=5 Then // 5- OM
          Begin
               DBGridPatientTest.Columns[11].ReadOnly:=False;
               CB_DirectDiscountSet.Enabled:=True;
               CB_DisForAllItems.Enabled:=True;
          End
          Else
          DBGridPatientTest.Columns[11].ReadOnly:=True;
     End
     Else
     Begin
          pf_DiscountPer:=0;
          Label_Community.Font.Color:=clBlack;
          IF Edit_MemberNo.Text='' Then
          Begin
               DBGridPatientTest.Columns[10].ReadOnly:=False;
               DBGridPatientTest.Columns[11].ReadOnly:=True;
               ps_PatientCatg:='ORD';
               CMBPayType.ItemIndex:=0;
               IsCreditParty:=False;
          End;
          CB_DirectDiscountSet.Enabled:=False;
          CB_DisForAllItems.Enabled:=False;
     End;

end;

procedure TFormInpMain.DBLookupComboBox_SchemeKeyPress(Sender: TObject; var Key: Char);
begin
      IF key=#13 Then
     Begin
          IF gs_IsRefDocForInvBill='Y' Then
          Begin
               DBLC_Doctor.SetFocus;
               Exit;
          End;

          DBGridPatientTest.SetFocus;
          IF gs_IsDoctorCompForBilling='Y' Then
          Begin
               DBGridPatientTest.SelectedIndex:=1;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End
          Else
          DBGridPatientTest.SelectedIndex:=2;
     End;
end;

procedure TFormInpMain.DBLC_DoctorClick(Sender: TObject);
begin
     IF gi_HospitalId=19 Then // 19 - Medicare
     Begin
          IF (DBLC_Doctor.KeyValue<>NULL) and (DBGrid_DocInvolved.Visible=True) Then
          Begin
               With Query_TempProcess do
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Select * From DrOperation.DB Where IsFixedPersonForComm=''N''');
                    sql.add(' and Description=''REFERAL DOCTOR''');
                    sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39);
                    Open;

                    IF Query_GetFrctInvoPerson.FieldByName('Description').AsString='REFERAL DOCTOR' Then
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Update DrOperation.DB Set DrCode='+#39+DBLC_Doctor.KeyValue+#39+', DrName='+#39+DBLC_Doctor.Text+#39);
                         sql.add(' Where IsFixedPersonForComm=''N'' and Description=''REFERAL DOCTOR''');
                         sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39);
                         ExecSQL;

                         With Query_GetFrctInvoPerson do
                         Begin
                              Close;
                              DatabaseName:=gs_TempPath;
                              sql.Clear;
                              sql.add(' Select * From DrOperation.DB Where IsFixedPersonForComm=''N''');
                              sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39);
                              sql.add(' Order By DrName ');
                              Open;
                         End;
                    End;
               End;
          End;
     End;
end;

procedure TFormInpMain.DBLC_DoctorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Delete Then
     DBLC_Doctor.KeyValue:=NULL;

     IF key=VK_Prior Then
     Begin
          IF CheckBox_Schemes.Checked=True Then
          DBLookupComboBox_Community.SetFocus
          Else
          CMBBillType.SetFocus;
     End;
end;

procedure TFormInpMain.DBLC_DoctorKeyPress(Sender: TObject; var Key: Char);
begin
     IF Key=#13 Then
     Begin
          ActiveControl:=DBGridPatientTest;
          DBGridPatientTest.SetFocus;

          IF gs_IsDoctorCompForBilling='Y' Then
          Begin
               DBGridPatientTest.SelectedIndex:=1;
               TablePTTestTemp.Edit;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End
          Else
          DBGridPatientTest.SelectedIndex:=2;
     End;
end;

procedure TFormInpMain.DBLookupComboBox_DepositTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF (key=13) and (RadioButton_IPBilling.Checked=False) Then
  BtnSave.SetFocus;
  IF (key=13) and (RadioButton_IPBilling.Checked=True) Then
  EditPayment.SetFocus;
end;

procedure TFormInpMain.EditDoctorChange(Sender: TObject);
begin
EditDoctor.text:=StringReplace(EditDoctor.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditDoctor.text)<>'' Then
      Begin
         Filter:='DOCTORFULLNAME ='+#39+EditDoctor.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditDoctorKeyPress(Sender: TObject; var Key: Char);
begin

     IF key=VK_Left Then
     EditWardRoom.SetFocus;

     IF key=VK_Right Then
     EditAddress.SetFocus;
end;

procedure TFormInpMain.EditDoctorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key=#13 then
  setquerytoselection(False);
end;

procedure TFormInpMain.EditAddressChange(Sender: TObject);
begin
      EditAddress.text:=StringReplace(EditAddress.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditDoctor.text)<>'' Then
      Begin
         Filter:='PAddress ='+#39+EditAddress.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditAddressKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Left Then
     EditDoctor.SetFocus;
end;

procedure TFormInpMain.Edit_MemberNoExit(Sender: TObject);
begin
     IF CMBBillType.Text<>'FOREIGNER' Then
     Begin
          IF Trim(Edit_MemberNo.Text)<>'' Then
          Begin
               IF RadioButton_IPBilling.Checked=True Then
               Begin
                    with Query_Process Do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select InpatientId From InpatientReg where MemberNo='+#39+Edit_MemberNo.Text+#39);
                         sql.add(' and Discharged=''NO''');
                         Open;
                    End;
                    Try
                         IF Query_Process.FieldByName('InPatientId').AsInteger=StrToInt(LabelIpNo.Caption) Then
                         Exit;
                    Except
                    End;
                    EditPsearch.Text:=IntToStr(Query_Process.FieldByName('InPatientId').AsInteger);
                    SP_PatientSearchClick(Sender);
               End
               Else
               Begin
                    with Query_Process Do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select PatientId From PatientMain where MemberNo='+#39+Edit_MemberNo.Text+#39);
                         Open;
                    End;

                    Try
                         IF Query_Process.FieldByName('PatientId').AsInteger=StrToInt(LabelIpNo.Caption) Then
                         Exit;
                    Except
                    End;
                    EditPsearch.Text:=IntToStr(Query_Process.FieldByName('PatientId').AsInteger);
                    SP_PatientSearchClick(Sender);
               End;
          End
          Else
          Begin
               IF (DBLookupComboBox_Community.KeyValue=NULL) and (RadioButton_OPBilling.Checked=True) Then
               Begin
                    ps_PatientCatg:='ORD';
                    CMBPayType.ItemIndex:=0;
               End;
          End;
     End
     Else
     Begin

     End;
end;

procedure TFormInpMain.Edit_MemberNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF Key=VK_TAB Then
     Begin
          if Edit_MemberNo.Text<>'' then
          Begin
               DBGridPatientTest.SetFocus;
               DBGridPatientTest.SelectedIndex:=1;
               DBGridPatientTest.Fields[1].Text:='HOS01';
          End
          Else
               DBLookupComboBox_Community.SetFocus;
     End;

     IF (key=vk_Right) and (CMBBillType.Text<>'EXPRESS') Then
     CheckBox_Schemes.SetFocus;

     IF (key=vk_Left) or (key=vk_prior) Then
     CMBBillType.SetFocus;
end;

procedure TFormInpMain.Edit_MemberNoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key=#13 then
     Begin
          If (Trim(Edit_MemberNo.Text)<>'') then
          Begin
               with Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select * From Member where MemberNo='+#39+Edit_MemberNo.Text+#39);
                    Open;
               End;

               IF Query_Process.FieldByName('MemberId').AsInteger > 0 Then {***just as record count...}
               Begin
                    CheckBox_Schemes.Checked:=True;
                    CheckBox_SchemesClick(Sender);
                    With QueryDisScheme do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select S.INPTDiscount,S.SchemeId From Scheme S,Member M where S.SchemeId=M.SchemeId');
                         sql.add(' and M.MemberNo='+#39+Edit_MemberNo.Text+#39);
                         Open;
                    End;

                    pf_DiscountPer:=QueryDisScheme.FieldByName('INPTDiscount').AsFloat;
                    IsCreditParty:=True;
                    CMBPayType.ItemIndex:=1;
                    with Query_Process do
                    Begin
                         Close;
                         sql.Clear;
                         IF gi_HospitalId=4 Then // 4 - manipal
                         sql.add(' Select CommunityId From Community where Community Like ''MEDICARE%''')
                         Else
                         sql.add(' Select CommunityId From Community where Community Like ''STAFF%''');
                         open;
                    End;
                    DBLookupComboBox_Community.KeyValue:=Query_Process.FieldByName('CommunityId').AsInteger;
                    DBLookupComboBox_CommunityClick(Sender);

                    DBLookupComboBox_Scheme.KeyValue:=QueryDisScheme.FieldbyName('SchemeId').AsInteger;
                    DBLookupComboBox_SchemeClick(Sender);

                    EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
                    pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
                    EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
                    Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
                    IF gs_GovtTaxRule='TAD' Then
                    Begin
                           Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
                           //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                           Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
                    End
                    Else
                    Begin
                           Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
                           //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                           Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
                    End;
                    Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
               End
               Else
               Begin
                    MessageDlg('Would you mind ! There is not such medicare no, Plz. contact at Account department.',mtinformation,[mbok],0);
                    Edit_MemberNo.SetFocus;
                    CMBBillType.ItemIndex:=0;
                    Exit;
               End;
               DBGridPatientTest.SetFocus;
               IF gs_IsDoctorCompForBilling='Y' Then
               Begin
                      DBGridPatientTest.SelectedIndex:=1;
                      TablePTTestTemp.Edit;
                      DBGridPatientTest.Fields[1].Text:='HOS01';
               End
               Else
               DBGridPatientTest.SelectedIndex:=2;
          End
          Else
          Begin
               IF DBLookupComboBox_Community.KeyValue=NULL Then
               Begin
                    IsCreditParty:=False;
                    CMBPayType.ItemIndex:=0;
               End;
               IF CMBBillType.Text<>'EXPRESS' Then
               DBLookupComboBox_Community.SetFocus
               Else
               Begin
                    DBGridPatientTest.SetFocus;
                    IF gs_IsDoctorCompForBilling='Y' Then
                    Begin
                           DBGridPatientTest.SelectedIndex:=1;
                           DBGridPatientTest.Fields[1].Text:='HOS01';
                    End
                    Else
                    DBGridPatientTest.SelectedIndex:=2;
               End;
          End;
     End;
end;

procedure TFormInpMain.Edit_NoOFCopyExit(Sender: TObject);
begin
     IF (Trim(Edit_NoOFCopy.Text)='') or (Edit_NoOFCopy.Text='0') Then
     Edit_NoOFCopy.Text:='1';
end;

procedure TFormInpMain.Edit_NoOFCopyKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8 Then
     Exit;

     IF Not(key In['0'..'9']) Then
     Begin
          Key:=#0;
          Beep;
     End;
end;

procedure TFormInpMain.EditDisPerExit(Sender: TObject);
begin
     IF EditDisPer.Text='' Then
     EditDisPer.Text:='0.00';

     IF StrToFloat(EditDisPer.Text) > 100 Then
     Begin
          MessageDlg('Discount Percentage Must not More Then 100.',mtWarning,[mbok],0);
          EditDisPer.Text:='0.00';
          EditDisAmt.Text:='0.00';
          EditDisAmt.SetFocus;
          Exit;
     End;

     DiscountCalculationFromPercent;
     VatDiscountReCalculate;

     IF DBLookupComboBox_Community.KeyValue<>NULL Then
     EditDisAmt.Text:=Format('%.2f',[(GetVatableAmount+GetNonVatableAmount)*StrToFloat(EditDisPer.Text)/100])
     Else
     EditDisAmt.Text:=Format('%.2f',[(GetVatableAmount+GetNonVatableAmount-FoodChargeAmount)*StrToFloat(EditDisPer.Text)/100]);
     TotalAmt:=GetVatableAmount+GetNonVatableAmount-StrToFloat(EditDisAmt.Text);

     Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);

     IF gs_GovtTaxRule='TAD' Then
     Begin
          Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
          //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
          Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
     End
     Else
     Begin
          Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
          //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
          Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
     End;

     If b_CheckForAdvanceBilling=True Then
     EditPayment.Text:=Edit_GrandTotal.Text;

     Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
     EditPayment.SetFocus;

     IF Trim(EditPayment.Text)<>'' Then
     Label_ReAmt.Caption:=Format('%.2f',[StrToFloat(LabelIPBalanace.Caption)+StrToFloat(EditPayment.Text)-StrToFloat(Edit_GrandTotal.Text)]);
end;

procedure TFormInpMain.EditDisPerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
     Begin
          ActiveControl:=DBGridPatientTest;
          DBGridPatientTest.SelectedIndex:=5;
     End;
end;

procedure TFormInpMain.EditDisPerKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8  then exit;

     IF key=#13 Then EditDisPerExit(Sender);

     AvoidMultipleDecimal(EditDisPer,key);
     key:=Key;
end;

procedure TFormInpMain.EditCheckNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF key=13 Then
  EditPayment.SetFocus;
end;

procedure TFormInpMain.EditRemarksKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (Key=VK_Prior) and (RadioButton_OPBilling.Checked=True) Then
     EditPayment.SetFocus;
end;

procedure TFormInpMain.EditRemarksKeyPress(Sender: TObject; var Key: Char);
begin
      IF key=#13 Then
     BtnSave.SetFocus;
end;


procedure TFormInpMain.EditPaymentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF (key=VK_UP) and (RadioButton_IPBilling.Checked=False) and (CMBBillType.Text<>'EXPRESS') Then
     CMBPayType.SetFocus;

     IF (key=VK_UP) and (RadioButton_IPBilling.Checked=True) Then
     CMBPayType.SetFocus;

     IF key=VK_Prior Then
     Begin
          ActiveControl:=DBGridPatientTest;
          DBGridPatientTest.SelectedIndex:=5;
     End;
end;

procedure TFormInpMain.EditPaymentKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8 then exit;
     IF Key=#13 Then
     Begin
          IF IsCreditParty=False Then
          Begin
               Label_ToalAmt.Caption:=FormatFloat('#,##0.00',StrToFloat(Edit_GrandTotal.Text));
               Label_ReceivedAmt.Caption:=FormatFloat('#,##0.00',StrToFloat(EditPayment.Text));
               IF CMBPayType.ItemIndex=0 Then
               Label_ReAmt.Caption:=FormatFloat('#,##0.00',(StrToFloat(EditPayment.Text)-StrToFloat(Edit_GrandTotal.Text)))
               Else
               Label_ReAmt.Caption:='0.00';
          End;

          IF gi_HospitalId=5 Then
          Begin
               IF (RadioButton_OPBilling.Checked=True) Or (RB_OPAdvanceBilling.Checked=True) Then
               EditRemarks.SetFocus
               Else
               BtnSave.SetFocus;
          End
          Else
          Begin
               IF RadioButton_OPRefundBilling.Checked=True Then
               EditRemarks.SetFocus
               Else
               BtnSave.SetFocus;

               {IF gi_HospitalId=19 Then
               Begin
                    IF (StrToFloat(EditDisAmt.Text) > 0) Then
                    EditRemarks.SetFocus
                    Else
                    BtnSave.SetFocus;
               End;}
          End;
     End;

     AvoidMultipleDecimal(EditPayment,key);
     key:=key;
end;

procedure TFormInpMain.EditLNameChange(Sender: TObject);
begin
      EditLName.text:=StringReplace(EditLName.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditLName.text)<>'' Then
      Begin
         Filter:='LName ='+#39+EditLName.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditLNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Left Then
   EditFName.SetFocus;

   IF key=VK_Right Then
   EditAgeSex.SetFocus;
end;

procedure TFormInpMain.EditLNameKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
  setquerytoselection(False);
end;

procedure TFormInpMain.Edit3Change(Sender: TObject);
begin
     EditAgeSex.text:=StringReplace(EditAgeSex.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditAgeSex.text)<>'' Then
      Begin
         Filter:='AgeSex ='+#39+EditAgeSex.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Left Then
   EditLName.SetFocus;
   IF key=VK_Right Then
   EditPatientId.SetFocus;
end;

procedure TFormInpMain.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
  setquerytoselection(False);
end;

procedure TFormInpMain.EditPatientIdChange(Sender: TObject);
begin
      EditPatientId.text:=StringReplace(EditPatientId.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditPatientId.text)<>'' Then
      Begin
         Filter:='PatientId ='+#39+EditPatientId.text+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditPatientIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Left Then
   EditAgeSex.SetFocus;
   IF key=VK_Right Then
   EditInpatientId.SetFocus;
end;

procedure TFormInpMain.EditPatientIdKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
  setquerytoselection(False);
end;

procedure TFormInpMain.EditInpatientIdChange(Sender: TObject);
begin
     EditInpatientId.text:=StringReplace(EditInpatientId.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditInpatientId.text)<>'' Then
      Begin
         Filter:='InPatientId ='+#39+EditInpatientId.Text+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditInpatientIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Left Then
   EditPatientId.SetFocus;

   IF key=VK_Right Then
   EditIPDate.SetFocus;
end;

procedure TFormInpMain.EditIPDateChange(Sender: TObject);
begin
     EditIPDate.text:=StringReplace(EditIPDate.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditIPDate.text)<>'' Then
      Begin
         Filter:='InptDate ='+#39+EditIPDate.Text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditIPDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Left Then
     EditInpatientId.SetFocus;

     IF key=VK_Right Then
     EditDisDate.SetFocus;
end;

procedure TFormInpMain.EditIPDateKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
     setquerytoselection(False);
end;

procedure TFormInpMain.EditDisDateChange(Sender: TObject);
begin
     EditDisDate.text:=StringReplace(EditDisDate.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditDisDate.text)<>'' Then
      Begin
         Filter:='DisDate ='+#39+EditDisDate.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditDisDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Left Then
   EditIPDate.SetFocus;

   IF key=VK_Right Then
   EditWardRoom.SetFocus;
end;

procedure TFormInpMain.EditDisDateKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#13 then
    Begin
         IF EditDisDate.Text<>'' Then
         setquerytoselection(true)
         Else
         QueryInpatientSearchInitialization;
    End;
end;

procedure TFormInpMain.EditWardRoomChange(Sender: TObject);
begin
      EditWardRoom.text:=StringReplace(EditWardRoom.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditWardRoom.text)<>'' Then
      Begin
         Filter:='DETWARDCODE ='+#39+EditWardRoom.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditWardRoomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Left Then
     EditDisDate.SetFocus;

     IF key=VK_Right Then
     EditDoctor.SetFocus;
end;

procedure TFormInpMain.EditWardRoomKeyPress(Sender: TObject; var Key: Char);
begin
      if key=#13 then
     setquerytoselection(False);
end;

procedure TFormInpMain.Edit_GrandTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF key=13 Then
  CMBPayType.SetFocus;
end;

procedure TFormInpMain.EditXsearchChange(Sender: TObject);
begin
      with QueryInpatientSearch do
   Begin
      IF Trim(EditXsearch.text)<>'' Then
      Begin
         Filter:='InpatientIdStr ='+#39+EditXsearch.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditXsearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_UP Then
   EditHospitalNo.SetFocus;

     IF key=VK_Down Then
     Begin
          IF CheckBoxToday.Enabled=True Then
          CheckBoxToday.SetFocus
          Else
          EditFName.SetFocus;
     End;
end;

procedure TFormInpMain.EditXsearchKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8 Then Exit;
   IF Key=#13 Then
   Begin
      IF EditXsearch.Text='' Then
      Begin
         TodaysInpatient:=True;
         QueryInpatientSearchInitialization;
      End
      Else
      Begin
         BitBtnGoClick(sender);
      End;
   End;
   IF Not (key In['0'..'9']) Then Key:=#0;
end;

procedure TFormInpMain.EditPsearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=VK_RIGHT Then
     Begin
          IF EditPsearch.Text<>'' Then
          Begin
               SP_PatientSearchClick(Sender);
               CMBBillType.SetFocus;
          End;
     End;
end;

procedure TFormInpMain.EditPsearchKeyPress(Sender: TObject; var Key: Char);
begin
     If key=#8 then exit;

     IF Key=#13 Then
     SP_PatientSearchClick(Sender);

     If (key<'0') or (key>'9')then
     begin
          key:=#0;
          exit;
     End;
end;


procedure TFormInpMain.EditTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF key=13 Then
  Edit_ExDuty.SetFocus;
end;

procedure TFormInpMain.EditDisAmtExit(Sender: TObject);
begin
     IF Trim(EditDisAmt.Text)='' Then
     EditDisAmt.Text:='0.00';

     {IF StrToFloat(EditDisAmt.Text) > StrToFloat(Format('%.2f',[GetVatableAmount+GetNonVatableAmount])) Then
     Begin
          Showmessage(' Discount amount is not greater then total amount !');
          EditDisAmt.Text:='0.00';
          EditDisAmt.SetFocus;
          Exit;
     End;}

     DiscountCalculationFromAmt;

     TotalAmt:=GetVatableAmount+GetNonVatableAmount-StrToFloat(EditDisAmt.Text);
     Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
     IF gs_GovtTaxRule='TAD' Then
     Begin
          Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
          //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
          Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
     End
     Else
     Begin
          Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
          //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
          Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
     End;

     Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
     EditDisPer.Text:=FloatToStr(GetNoOfDecimalPartOfFloatNum((StrToFloat(EditDisAmt.Text)/(GetVatableAmount+GetNonVatableAmount) * 100),4));
     //EditDisPer.Text:=FloatToStr(StrToFloat(EditDisAmt.Text)/(GetVatableAmount+GetNonVatableAmount-FoodChargeAmount)*100);

     IF Trim(EditPayment.Text)<>'' Then
     Label_ReAmt.Caption:=Format('%.2f',[StrToFloat(LabelIPBalanace.Caption)+StrToFloat(EditPayment.Text)-StrToFloat(Edit_GrandTotal.Text)]);
end;

procedure TFormInpMain.EditDisAmtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF key=13 Then
  Edit_GrandTotal.SetFocus;
end;

procedure TFormInpMain.EditDisAmtKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8  then exit;
     AvoidMultipleDecimal(EditDisAmt,key);
     key:=Key;
end;

procedure TFormInpMain.Edit_SubTotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;

  IF key=13 Then
  EditDisAmt.SetFocus;
end;

procedure TFormInpMain.EditHospitalNoChange(Sender: TObject);
begin
     //IF Key<>#13 Then
     //Begin
          with QueryInpatientSearch do
          Begin
               Try
                    li_PtId:=StrToInt(EditHospitalNo.text);
                    IF Trim(EditHospitalNo.text)<>'' Then
                    Begin
                         Filter:='PatientIdStr ='+#39+EditHospitalNo.text+'*'+#39;
                         Filtered:=True;
                    End
                    Else
                    Filtered:=False;
               Except
                    IF Trim(EditHospitalNo.text)<>'' Then
                    Begin
                         Filter:='FName ='+#39+EditHospitalNo.text+'*'+#39+' or LName='+#39+EditHospitalNo.text+'*'+#39;
                         Filtered:=True;
                    End
                    Else
                    Filtered:=False;
               End;
          End;
     //End;
end;

procedure TFormInpMain.EditHospitalNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      IF key=VK_Down Then
   EditXsearch.SetFocus;
   IF Key=13 Then
   Begin
      IF EditHospitalNo.Text='' Then
      Begin
         TodaysInpatient:=True;
         b_IsInteger:=True;
         QueryInpatientSearchInitialization;
      End
      Else
      Begin
         BitBtnGoClick(sender);
      End;
   End;
end;

procedure TFormInpMain.EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8 Then Exit;
   IF key=#13 Then
   Begin
        QueryInpatientSearch.Filtered:=False;
        BitBtnGoClick(sender);
   End;
end;

procedure TFormInpMain.Edit_ExDutyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_Prior Then
  Begin
    ActiveControl:=DBGridPatientTest;
    DBGridPatientTest.SelectedIndex:=5;
  End;
  IF key=13 Then
  Edit_SubTotal.SetFocus;
end;

procedure TFormInpMain.RadioButton_OPBillingClick(Sender: TObject);
begin
     IF RadioButton_OPBilling.Checked=True Then
     Begin
          BitBtnBedExchange.Visible:=False;

          IF Not gi_HospitalId In [5,14,19] Then
          Begin
               BitBtnDeposit.Visible:=False;
               BitBtnDeposit.Enabled:=False;
          End
          Else
          Begin
               If ps_ProcedureBill='Y' Then
               Begin
                    BitBtnDeposit.Visible:=False;
                    BitBtnDeposit.Enabled:=False;
                    BBtnOPDueclear.Visible:=False;
                    BBtnOPDueclear.Enabled:=False;
               End
               Else
               Begin
                    BitBtnDeposit.Visible:=True;
                    BitBtnDeposit.Enabled:=True;
                    BBtnOPDueclear.Visible:=True;
                    BBtnOPDueclear.Enabled:=True;
               End;
          End;

          LabelAdvBillingBack.Visible:=False;
          Label_AdvBilling.Visible:=False;
          Timer2.Enabled:=False;
          Timer2.Interval:=1500;

          pi_InPatientId:=0;
          EditCheckNo.ReadOnly:=True;
          RadioButton_OPBilling.Font.Color:=clRed;

          IF gs_OPAdvanceSystem='Y' Then
          Begin
               RB_OPAdvanceBilling.Font.Color:=clBlack;
               RB_OPAdvanceBilling.Visible:=True;
          End;

          CMBBillType.Items.Clear;
          IF gi_HospitalId=5 Then
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.ItemIndex:=0;
          End
          Else IF gi_HospitalId=19 Then
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('FOREIGNER');
               CMBBillType.ItemIndex:=0;
          End
          Else
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('PRIVATE');
               CMBBillType.Items.Add('SPECIAL');
               CMBBillType.Items.Add('FOREIGNER');
               //CMBBillType.Items.Add('EXPRESS');
          End;

          FormInpMain.Caption:='OP Billing';
          ps_BillingStatus:='OPB';
          ps_BillType:='B';
          Label_BillingStatus.Font.Size:=26;
          Label_BillingStatus.Caption:='OP Billing';
          Label_BillingStatus.Left:=93;

          IF (gs_IsIPChrgAddBill='Y') and (ps_ProcedureBill<>'Y') Then
          Begin
               CB_AddedChrgForIP.Visible:=True;
               CB_AddedChrgForIP.Enabled:=True;
          End
          Else
          Begin
               CB_AddedChrgForIP.Visible:=False;
               CB_AddedChrgForIP.Enabled:=False;
          End;

          If ps_ProcedureBill='Y' Then
          Begin
               LabelPatientNo.Caption:='Proced. No :';
               Label_BillingStatus.Font.Size:=20;
               Label_BillingStatus.Left:=8;
               Label_BillingStatus.Caption:='Procedure Billing';
               RB_OPAdvanceBilling.Visible:=False;
               RB_OPAdvanceBilling.Enabled:=False;
          End
          Else
          LabelPatientNo.Caption:='Hospital No.';

          Label_Payment.Caption:='Payment :';
          DBLookupComboBox_DepositType.Visible:=False;

          Label_Remarks.Caption:='Remarks :';
          //Label_Remarks.Caption:='Lab No :';

          Label_PayType.Caption:='Pay Type :';
          EditPsearch.Text:='';
          LabelNo.Caption:='None';
          Labelname.Caption:='None';
          ChkBoxAllDis.Checked:=False;
          ChkBoxOldbill.Checked:=False;
          RadioButton_IPBilling.Font.Color:=clBlack;
          RadioButton_OPRefundBilling.Font.Color:=clBlack;


          LabelIpNo.Caption:='None';
          CheckBoxIPDischarge.Visible:=False;
          CheckBoxIPTransfer.Visible:=False;
          LabelBalance.Visible:=False;
          LabelIPBalanace.Visible:=False;
          Label84.Visible:=False;
          DateEditXIPDate.Visible:=False;
          Button2.Visible:=False;
          Label85.Visible:=False;
          DateEditXDisDate.Visible:=False;
          Button4.Visible:=False;
          Label86.Visible:=False;
          LabelTotalDay.Visible:=False;
          BtnSave.Enabled:=True;

          Label_Community.Font.Color:=clBlack;
          DBLookupComboBox_Community.KeyValue:=NULL;
          CMBPayType.Enabled:=True;
          CMBPayType.ItemIndex:=0;

          BitbtnCommon.Visible:=False;
          ButtonCash.Visible:=False;
          EditPsearch.SetFocus;

          Label_PayType.Top:=123;
          CMBPayType.Top:=120;
          EditCheckNo.Top:=120;
          Label_PayType.Visible:=True;
          CMBPayType.Visible:=True;
          EditCheckNo.Visible:=True;

          Label_Payment.Top:=145;
          EditPayment.Top:=142;
          EditPayment.Height:=21;
          EditPayment.Font.Size:=8;
          EditPayment.Font.Color:=clBlack;
          EditPayment.ReadOnly:=False;

          Label_Remarks.Top:=166;
          EditRemarks.Top:=163;
          EditRemarks.Visible:=True;

          //BBtnOPDueClear.Visible:=True;
          BBtnOPDueClear.Left:=505;
     End;
end;

procedure TFormInpMain.RadioButton_OPRefundBillingClick(Sender: TObject);
begin
     IF RadioButton_OPRefundBilling.Checked=True Then
     Begin
          pi_InPatientId:=0;
          ps_BillingStatus:='OPB';
          ps_BillType:='R'; {*** for OP Refund Billing BillType-> R ...}
          ps_PayType:='CASH';
          CMBBillType.Items.Clear;

          IF gi_HospitalId In [5,19] Then // 5- OM hospital
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('FOREIGNER');
          End
          Else
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('PRIVATE');
               CMBBillType.Items.Add('SPECIAL');
               CMBBillType.Items.Add('FOREIGNER');
               CMBBillType.Items.Add('EXPRESS');
          End;
          FormInpMain.Caption:='OP Refund Billing';
          Label_BillingStatus.Font.Size:=20;
          Label_BillingStatus.Caption:='OP Refund Billing';
          Label_BillingStatus.Left:=20;
          LabelPatientNo.Caption:='Hospital No.';
          Label_Payment.Caption:='Payment :';
          DBLookupComboBox_DepositType.Visible:=False;
          Label_Remarks.Caption:='Remarks :';
          Label_PayType.Caption:='Pay Type :';
          EditPsearch.Text:='';
          LabelNo.Caption:='None';
          Labelname.Caption:='None';
          ChkBoxAllDis.Checked:=False;
          ChkBoxOldbill.Checked:=False;
          RadioButton_IPBilling.Visible:=False;
          RadioButton_OPBilling.Visible:=False;
          RadioButton_OPRefundBilling.Visible:=False;
          BitBtnDeposit.Enabled:=False;

          LabelIpNo.Caption:='None';
          CheckBoxIPDischarge.Visible:=False;
          CheckBoxIPTransfer.Visible:=False;
          LabelBalance.Visible:=False;
          LabelIPBalanace.Visible:=False;
          Label84.Visible:=False;
          DateEditXIPDate.Visible:=False;
          Button2.Visible:=False;
          Label85.Visible:=False;
          DateEditXDisDate.Visible:=False;
          Button4.Visible:=False;
          Label86.Visible:=False;
          LabelTotalDay.Visible:=False;
          BtnSave.Enabled:=True;
          CMBPayType.ItemIndex:=0;
          EditPsearch.SetFocus;

          Label_PayType.Top:=123;
          CMBPayType.Top:=120;
          EditCheckNo.Top:=120;
          Label_PayType.Visible:=True;
          CMBPayType.Visible:=True;
          EditCheckNo.Visible:=True;

          Label_Payment.Top:=145;
          EditPayment.Top:=142;
          EditPayment.Height:=21;
          EditPayment.Font.Size:=8;
          EditPayment.Font.Color:=clBlack;

          Label_Remarks.Top:=166;
          EditRemarks.Top:=163;
          EditRemarks.Visible:=True;
     End;
end;

procedure TFormInpMain.RB_OPAdvanceBillingClick(Sender: TObject);
begin
     IF RB_OPAdvanceBilling.Checked=True Then
     Begin
          LabelAdvBillingBack.Visible:=True;
          Label_AdvBilling.Visible:=True;
          Timer2.Enabled:=True;
          Timer2.Interval:=1000;

          CB_AddedChrgForIP.Visible:=False;
          CB_AddedChrgForIP.Enabled:=False;

          BitBtnBedExchange.Visible:=False;
          //BitBtnDeposit.Visible:=False;

          pi_InPatientId:=0;
          EditCheckNo.ReadOnly:=True;

          IF gs_OPAdvanceSystem='Y' Then
          Begin
               RB_OPAdvanceBilling.Font.Color:=clRed;
               RB_OPAdvanceBilling.Visible:=True;
               RadioButton_OPBilling.Font.Color:=clBlack;
          End;

          FormInpMain.Caption:='OP Advance Billing';
          ps_BillingStatus:='OPB';
          ps_BillType:='B';
          Label_BillingStatus.Font.Size:=22;
          Label_BillingStatus.Caption:='OP Advance Billing';
          Label_BillingStatus.Left:=8;
          LabelPatientNo.Caption:='Hospital No.';
          Label_Payment.Caption:='Payment :';
          DBLookupComboBox_DepositType.Visible:=False;
          Label_Remarks.Caption:='Remarks :';
          Label_PayType.Caption:='Pay Type :';

          //EditPsearch.Text:='';
          //LabelNo.Caption:='None';
          //Labelname.Caption:='None';
          LabelIpNo.Caption:='0';

          ChkBoxAllDis.Checked:=False;
          ChkBoxOldbill.Checked:=False;
          RadioButton_IPBilling.Font.Color:=clBlack;
          RadioButton_OPRefundBilling.Font.Color:=clBlack;
          BitBtnDeposit.Enabled:=False;

          Label_Payment.Caption:='Advance Amt.:';
          Label_Payment.Font.Color:=clBlue;
          Label_Payment.Top:=163;


          CheckBoxIPDischarge.Visible:=False;
          CheckBoxIPTransfer.Visible:=False;
          LabelBalance.Visible:=False;
          LabelIPBalanace.Visible:=False;
          Label84.Visible:=False;
          DateEditXIPDate.Visible:=False;
          Button2.Visible:=False;
          Label85.Visible:=False;
          DateEditXDisDate.Visible:=False;
          Button4.Visible:=False;
          Label86.Visible:=False;
          LabelTotalDay.Visible:=False;
          BtnSave.Enabled:=True;

          Label_Community.Font.Color:=clBlack;
          DBLookupComboBox_Community.KeyValue:=NULL;
          CMBPayType.Enabled:=True;
          CMBPayType.ItemIndex:=0;

          BitbtnCommon.Visible:=False;
          ButtonCash.Visible:=False;


          Label_PayType.Top:=123;
          CMBPayType.Top:=120;
          EditCheckNo.Top:=120;
          Label_PayType.Visible:=True;
          CMBPayType.Visible:=True;
          EditCheckNo.Visible:=True;

          Label_Payment.Top:=145;
          EditPayment.Top:=142;
          EditPayment.Height:=21;
          EditPayment.Font.Size:=8;
          EditPayment.Font.Color:=clBlack;
          EditPayment.ReadOnly:=False;

          Label_Remarks.Top:=166;
          EditRemarks.Top:=163;
          EditRemarks.Visible:=True;

          BBtnOPDueClear.Visible:=True;
          BBtnOPDueClear.Left:=505;

          IF TablePTTestTemp.RecordCount > 0 Then
          Begin
               ActiveControl:=DBGridPatientTest;
               TablePTTestTemp.Last;
               IF gs_IsDoctorCompForBilling='Y' Then // While doing Billing Doctor is compulsory or not
               DBGridPatientTest.SelectedIndex:=1
               Else
               DBGridPatientTest.SelectedIndex:=2;
          End
          Else
          EditPsearch.SetFocus;

     End;
end;

procedure TFormInpMain.RadioButton_IPBillingClick(Sender: TObject);
begin
     IF RadioButton_IPBilling.Checked=True Then
     Begin
          RadioButton_IPBilling.Font.Color:=clRed;

          IF gs_OPAdvanceSystem='Y' Then
          Begin
               RB_OPAdvanceBilling.Font.Color:=clBlack;
               RB_OPAdvanceBilling.Visible:=False;
          End;
          ps_BillingStatus:='IPB';
          ps_BillType:='IP'; {*** for OP Billing BillType-> B ...}
          EditCheckNo.ReadOnly:=False;


          CB_AddedChrgForIP.Visible:=False;
          CB_AddedChrgForIP.Enabled:=False;

          CMBBillType.Items.Clear;
          IF gi_HospitalId In [5,19] Then // 5 - om hos
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('FOREIGNER');
          End
          Else
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('PRIVATE');
               CMBBillType.Items.Add('SPECIAL');
               CMBBillType.Items.Add('FOREIGNER');
               CMBBillType.Items.Add('EXPRESS');
          End;

          FormInpMain.Caption:='IP Billing';
          Label_BillingStatus.Font.Size:=26;
          Label_BillingStatus.Caption:='IP Billing';
          Label_BillingStatus.Left:=113;
          LabelPatientNo.Caption:='Inpatient No.';


          EditPsearch.Text:='';
          ChkBoxAllDis.Checked:=False;
          ChkBoxOldbill.Checked:=False;
          RadioButton_OPBilling.Font.Color:=clBlack;
          RadioButton_OPRefundBilling.Font.Color:=clBlack;
          BitBtnDeposit.Enabled:=True;

          LabelIpNo.Caption:='None';

          DateEditXIPDate.SystemOfDate:=gi_DateSystem;
          DateEditXIPDate.text:=ServerDate.TodaysDate;
          DateEditXDisDate.SystemOfDate:=gi_DateSystem;
          DateEditXDisDate.text:=ServerDate.TodaysDate;
          LabelTotalDay.Caption:='0';

          AccountSummaryDisplay;

          CheckBoxIPDischarge.Visible:=False;
          CheckBoxIPTransfer.Visible:=False;

          LabelBalance.Visible:=True;
          LabelBalance.Left:=247;
          LabelBalance.Top:=38;
          LabelBalance.Caption:='D.Balance';

          LabelIPBalanace.Left:=314;
          LabelIPBalanace.Top:=37;
          LabelIPBalanace.Visible:=True;

          Label84.Visible:=True;
          DateEditXIPDate.Visible:=True;
          Button2.Visible:=True;
          Label85.Visible:=True;
          DateEditXDisDate.Visible:=True;
          Button4.Visible:=True;
          Label86.Visible:=True;
          LabelTotalDay.Visible:=True;
          BtnSave.Enabled:=True;

          EditPsearch.SetFocus;

          BitBtnDeposit.Enabled:=False;
          BitBtnDeposit.Visible:=True;
          BitBtnDeposit.Left:=539;

          BitBtnBedExchange.Enabled:=False;
          BitBtnBedExchange.Visible:=True;
          BitBtnBedExchange.Left:=438;

          EditRemarks.Visible:=False;
          BBtnOPDueClear.Visible:=false;
          EditPayment.ReadOnly:=True;

          If gi_HospitalID In [14,19] Then
          CMBPayType.ItemIndex:=1;
     End;
end;

procedure TFormInpMain.RadioButtonAdmitClick(Sender: TObject);
begin
     CheckBoxToday.Checked:=True;
     CheckBoxToday.Enabled:=True;
     QueryInpatientSearchInitialization;
end;

procedure TFormInpMain.RadioButtonDischargedOnlyClick(Sender: TObject);
begin
     CheckBoxToday.Checked:=False;
     CheckBoxToday.Enabled:=False;
     QueryInpatientSearchInitialization;
end;

procedure TFormInpMain.RadioButtonDischargeClick(Sender: TObject);
begin
      CheckBoxToday.Checked:=False;
     CheckBoxToday.Enabled:=False;
     QueryInpatientSearchInitialization;
end;

procedure TFormInpMain.BitBtnBillCancelClick(Sender: TObject);
begin
     b_InchVerified:=False;
   IF ChkBoxOldbill.Checked Then
   Begin
      IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) Then
      Begin
         IF MessageDlg(' Are you sure to cancel bill no. " '+QueryBillMaster.FieldByName('BillNo').AsString+' " ?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
         UserVerification;
         IF b_InchVerified=False Then
         Begin
            MessageDlg(' Would you mind ! You dont have access to cancel this bill.',mtInformation,[mbok],0);
            Exit;
         End;

         ps_TodaysDate:=ServerDate.TodaysDate;
         ps_TodaysTime:=ServerDate.TodaysTime;
         MakeBillAmountZero(QueryBillMaster.FieldByName('BillNo').AsString,ps_TodaysDate,ps_TodaysTime,'',gi_InchargeId);
         With QueryBillMaster Do
         Begin
            Close;
                IF RadioButton_OPBilling.Checked=True Then
                Begin
                     sql[1]:=' BillNo,BillDate,(Select ExtraCharge From BillMaster where BillNo=BillDetail.BillNo) as ExtraCharge,';
                     sql[5]:=' (BillType=''B'' or BillType=''O'') and CancelStatus=''N'' and PatientId='+IntToStr(pi_PatientId);
                     sql[6]:=' ';
                     sql[7]:=' Group By BillNo,BillDate,BillType,ModifyBy,PatientId Order By BillDate,BillNo';

                End
                Else IF RadioButton_IPBilling.Checked=True Then
                Begin
                     sql[1]:=' CrBillNo as BillNo,CrModifyDate as BillDate,(Select ExtraCharge From BillMaster where BillNo=BillDetail.CrBillNo) as ExtraCharge,';
                     sql[5]:=' (BillType=''IP'' or BillType=''A'')and CancelStatus=''N'' and InPatientId='+IntToStr(pi_InPatientId);
                     sql[6]:=' ';
                     sql[7]:=' Group By CrBillNo,CrModifyDate,BillType,ModifyBy,PatientId Order By CrModifyDate,CrBillNo';
                End
                Else     {     Refund Billing     }
                Begin
                     sql[1]:=' BillNo,BillDate,(Select ExtraCharge From BillMaster where BillNo=BillDetail.BillNo) as ExtraCharge,';
                     sql[6]:=' (PayType=''REFUND'') and CancelStatus=''Y'' and PatientId='+IntToStr(pi_PatientId);
                     sql[7]:=' Group By BillNo,BillDate,BillType,ModifyBy,PatientId Order By BillDate,BillNo';
                End;
            Open;
         End;
         frm_Message.Showmodal;
      End
      Else
      Begin
         if NursingCheck=0 then
         Begin
            If (QueryBillMaster.FieldByName('BillType').AsString='R') or(QueryBillMaster.FieldByName('BillType').AsString='D')or (QueryBillMaster.FieldByName('BillType').AsString='F')and (QueryBillMaster.FieldByName('PayType').AsString='CASH') then
           Begin
              IF MessageDlg('Are you sure to cancel this bill ? ',mtconfirmation,[mbyes,mbno],0)=mryes then
              BillRefund
              Else
              ShowMessage('You Cannot Cancel this Bill');
           End Else
           Begin
              If (QueryBillMaster.FieldByName('BillType').AsString='IP')and (QueryBillMaster.FieldByName('PayType').AsString='CREDIT') then
              Begin
                IF MessageDlg('Are you sure to cancel this bill ? ',mtconfirmation,[mbyes,mbno],0)=mryes then
                BillRefund
                Else
                ShowMessage('You Cannot Cancel this Bill');
              End;
           End;
         End;
      End;
   End;

   {**** used in other hospital........}
{   IF ChkBoxOldbill.Checked Then
   Begin
      if NursingCheck=0 then
      Begin
        If (QueryBillMaster.FieldByName('BillType').AsString='D')or (QueryBillMaster.FieldByName('BillType').AsString='F')and (QueryBillMaster.FieldByName('PayType').AsString='CASH') then
        Begin
           IF MessageDlg('Are you sure to cancel this bill ? ',mtconfirmation,[mbyes,mbno],0)=mryes then
           BillRefund
           Else
           ShowMessage('You Cannot Cancel this Bill');
        End Else
        Begin
           If (QueryBillMaster.FieldByName('BillType').AsString='D')and (QueryBillMaster.FieldByName('PayType').AsString='CREDIT') then
           Begin
             IF MessageDlg('Are you sure to cancel this bill ? ',mtconfirmation,[mbyes,mbno],0)=mryes then
             BillRefund
             Else
             ShowMessage('You Cannot Cancel this Bill');
           End;
        End;
      End Else
      Begin
        If messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then
        DisplayInvestigationPaymentReport(pi_PatientId,QueryBillMaster.FieldByName('BillNo').AsString);
      End;
   End;}
end;

procedure TFormInpMain.BitbtnCommonClick(Sender: TObject);
begin
     IF ChkBoxOldbill.Checked Then
     Begin
          b_Reprint:=True;
               For i:=1 to StrToInt(Edit_NoOFCopy.Text) do
               Begin
                    IF gi_HospitalID=1 Then //NMC
                    AlternateBillPrintNMC(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                    Else IF gi_HospitalID=2 Then //Manamohan
                    AlternateBillPrintManamohan(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                    Else IF gi_HospitalID=5 Then //OM
                    Begin
                         IF gs_BillingOm2ndType='Y' Then
                         AlternateBillPrintOM2ndType(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                         Else
                         AlternateBillPrintOM(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString);
                    End
                    Else IF gi_HospitalID=12 Then //Blue Bird
                    AlternateBillPrint_BlueBird(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                    Else If gi_HospitalID=14 Then //HAMS
                    Begin
                         If (QueryBillMaster.FieldByName('SchemeID').AsInteger=9)Then
                         AlternateBillPrintHAMSFREE(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                         Else IF gs_BillingOm2ndType='Y' Then
                         AlternateBillPrintOM2ndType(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString)
                         Else
                         AlternateBillPrintOM(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString);
                    End
                    Else If gi_HospitalID=19 Then //Medicare
                    Begin
                         AlternateBillPrint_Medicare(pi_PatientId, QueryBillMaster.FieldByName('BillNo').AsString);
                    End;
               End;
               Edit_NoOFCopy.Text:='1';
     End
     Else
     Begin
          IF QueryOldPatientTest.FieldByName('CancelStatus').AsString='Y' Then
          Begin
               MessageDlg(' Sorry ! This test is already canceled, Plz Check It.',mtWarning,[mbok],0);
               Exit;
          End;

          IF Trim(Edit_TestCancelRemarks.Text)='' Then
          Begin
               MessageDlg(' Plz. Put Test Cancel Reason.',mtWarning,[mbok],0);
               Edit_TestCancelRemarks.SetFocus;
               Exit;
          End;


          With QueryBillMasterBill do
          Begin
               Close;
               ParamByName('BillNo').AsString:=QueryOldPatientTest.FieldByname('BillNo').AsString;
               Open;
          End;

          if NursingCheck=0 then
          Begin
               If ((QueryBillMasterBill.FieldByName('BillType').AsString='D')or (QueryBillMasterBill.FieldByName('BillType').AsString='IP'))
               and (QueryBillMasterBill.FieldByName('PayType').AsString='CREDIT') then
               Begin
                    IF MessageDlg(' Are you sure to cancel test ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes Then Exit;
                    {UserVerification;
                    IF b_InchVerified=False Then
                    Begin
                        MessageDlg(' Would you mind ! You dont have access to cancel this bill.',mtInformation,[mbok],0);
                        Exit;
                    End;}


                    with Query_Process do
                    Begin
                        Close;
                        sql.Clear;
                        sql.add(' Select WORKINGSTATUS From PatientTest where ');
                        sql.add(' PatientTestId='+IntToStr(QueryOldPatientTest.FieldByName('PatientTestId').AsInteger));
                        Open;
                    End;

                    IF Query_Process.FieldByName('WORKINGSTATUS').AsString<>'FE' Then
                    Begin
                         IF CancelTest=False Then Exit;
                         If messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then
                         Begin
                              IF gi_HospitalID=1 Then //NMC
                              AlternateBillPrintNMC(pi_PatientId,QueryOldPatientTest.FieldByName('BillNo').AsString)
                              Else IF gi_HospitalID=2 Then //Manamohan
                              AlternateBillPrintManamohan(pi_PatientId,QueryOldPatientTest.FieldByName('BillNo').AsString)
                              Else IF gi_HospitalID=5 Then // OM
                              AlternateBillPrintManamohan(pi_PatientId,QueryOldPatientTest.FieldByName('BillNo').AsString);
                         End;
                    End
                    Else
                    ShowMessage('Test has already been done !');

                    With QueryOldPatientTest Do
                    Begin
                         Close;
                         IF RadioButton_OPBilling.Checked=True Then
                         Begin
                              sql[1]:=' BD.BillNo,BD.BillDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.BillNo) as ExtraCharge,';
                              sql[6]:=' And (BD.BillType=''B'') And BD.CancelStatus=''N'' and BD.ModifyBy=U.UserId';
                         End
                         Else
                         Begin
                              sql[1]:=' BD.CrBillNo as BillNo,BD.CrModifyDate as TestDate,(Select ExtraCharge From BillMaster where BillNo=BD.CrBillNo) as ExtraCharge,';
                              sql[6]:=' And (BD.BillType=''IP'') and BD.Service<>''BED'' and BD.CrModifyBy=U.UserId And BD.InpatientId='+IntToStr(pi_InPatientId);
                              //sql[5]:=' And (BD.BillType=''IP'') And BD.CancelStatus=''N'' and InpatientId='+IntToStr(pi_InPatientId);
                         End;
                         Open;
                    End;
               End
               Else
               Begin
                    ShowMessage('You do not have previllege to cancel this bill !');
               End;
          End
          Else
          Begin
               If (QueryBillMasterBill.FieldByName('BillType').AsString='D')and (QueryBillMasterBill.FieldByName('PayType').AsString='CREDIT') then
               Begin
                   IF MessageDlg('Are you sure to cancel this bill ? ',mtconfirmation,[mbyes,mbno],0)=mryes then
                   Begin
                       IF QueryOldPatientTest.FieldByName('WORKINGSTATUS').AsString<>'FE'Then
                       Begin
                           IF CancelTest=False Then Exit;
                       End
                       Else
                       Begin
                           ShowMessage('Test has already been done !');
                       End;

                       With QueryOldPatientTest Do
                       Begin
                           Close;
                           Open;
                       End;
                   End;
               End
               Else
               Begin
                    ShowMessage('You do not have previllege to cancel this bill !');
               End;
          End;
     End;
end;

procedure TFormInpMain.BitBtn_BringPendingClick(Sender: TObject);
begin
     If pi_PatientId<=0 Then Exit;

     If (RadioButton_OPBilling.Checked=False) And (RB_OPAdvanceBilling.Checked=False) And (RadioButton_IPBilling.Checked=False) Then Exit;

     With Query_TempSubProcess Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct PatientID From PatientTestTempPending.db Where PatientID='+IntToStr(pi_PatientId));
          End;
          Open;
          If Trim(FieldByName('PatientID').AsString)='' Then
          Begin
               MessageDlg('This Patient Has No Bill Pending.',mtInformation,[mbOk],0);
               Exit;
          End;
     End;

     With TablePTTestTemp Do
     Begin
          Close;
          EmptyTable;
          Open;
     End;

     With Query_TempSubProcess Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          With Sql Do
          Begin
               Clear;
               Add('Select * From PatientTestTempPending.db Where PatientID='+IntToStr(pi_PatientId));
               Add(' Order By TestNameID Asc');
          End;
          Open;
          First;
          While Not Eof Do
          Begin
               TablePTTestTemp.Append;
               TablePTTestTemp.FieldByName('BilldetailID').AsInteger:=FieldByName('BilldetailID').AsInteger;
               TablePTTestTemp.FieldByName('PatientID').AsInteger:=pi_PatientId;
               TablePTTestTemp.FieldByName('DepID').AsInteger:=FieldByName('DepID').AsInteger;
               TablePTTestTemp.FieldByName('TestNameID').AsInteger:=FieldByName('TestNameID').AsInteger;
               TablePTTestTemp.FieldByName('Qty').AsInteger:=FieldByName('Qty').AsInteger;
               TablePTTestTemp.FieldByName('CurQty').AsInteger:=FieldByName('CurQty').AsInteger;
               TablePTTestTemp.FieldByName('OrgQty').AsInteger:=FieldByName('OrgQty').AsInteger; // For Refund Case It is used
               TablePTTestTemp.FieldByName('PatientTestID').AsInteger:=FieldByName('PatientTestID').AsInteger;
               TablePTTestTemp.FieldByName('DepCode').AsString:=FieldByName('DepCode').AsString;
               TablePTTestTemp.FieldByName('DocCode').AsString:=FieldByName('DocCode').AsString;
               TablePTTestTemp.FieldByName('TestNameCode').AsString:=FieldByName('TestNameCode').AsString;
               TablePTTestTemp.FieldByName('TestDate').AsString:=FieldByName('TestDate').AsString;
               TablePTTestTemp.FieldByName('TestName').AsString:=FieldByName('TestName').AsString;
               TablePTTestTemp.FieldByName('TestPrice').AsFloat:=FieldByName('TestPrice').AsFloat;
               TablePTTestTemp.FieldByName('DisPer').AsFloat:=FieldByName('DisPer').AsFloat;
               TablePTTestTemp.FieldByName('OldDisPer').AsFloat:=FieldByName('OldDisPer').AsFloat;
               TablePTTestTemp.FieldByName('Discount').AsFloat:=FieldByName('Discount').AsFloat;
               TablePTTestTemp.FieldByName('OldDiscount').AsFloat:=FieldByName('OldDiscount').AsFloat;
               TablePTTestTemp.FieldByName('Total').AsFloat:=FieldByName('Total').AsFloat;
               TablePTTestTemp.FieldByName('VatAmt').AsFloat:=FieldByName('VatAmt').AsFloat;
               TablePTTestTemp.FieldByName('CurVatAmt').AsFloat:=FieldByName('CurVatAmt').AsFloat;
               TablePTTestTemp.FieldByName('CostPrice').AsFloat:=FieldByName('CostPrice').AsFloat;
               TablePTTestTemp.FieldByName('PayStatus').AsString:=FieldByName('PayStatus').AsString;
               TablePTTestTemp.FieldByName('Special').AsString:=FieldByName('Special').AsString;
               TablePTTestTemp.FieldByName('WorkingStatus').AsString:=FieldByName('WorkingStatus').AsString;
               TablePTTestTemp.FieldByName('IsDiscountable').AsString:=FieldByName('IsDiscountable').AsString;
               TablePTTestTemp.FieldByName('IsOperational').AsString:=FieldByName('IsOperational').AsString;
               TablePTTestTemp.FieldByName('IsVatable').AsString:=FieldByName('IsVatable').AsString;
               TablePTTestTemp.FieldByName('PreBillDetailId').AsInteger:=FieldByName('PreBillDetailId').AsInteger;
               TablePTTestTemp.FieldByName('IsFractionableItem').AsString:=FieldByName('IsFractionableItem').AsString;
               TablePTTestTemp.FieldByName('LineEdit').AsString:=FieldByName('LineEdit').AsString;
               TablePTTestTemp.FieldByName('RefBillNo').AsString:=FieldByName('RefBillNo').AsString;
               TablePTTestTemp.FieldByName('IsAdvanceBill').AsString:=FieldByName('IsAdvanceBill').AsString;

               { Pre. Amount In Zero Price, Some Time if Mistake Entry and Correct The Field
               at this time this field value }
               TablePTTestTemp.FieldByName('CostPriceForZero').AsFloat:=FieldByName('CostPriceForZero').AsFloat;

               { For Doctor Fraction }
               TablePTTestTemp.FieldByName('BATDFCostPrice').AsFloat:=FieldByName('BATDFCostPrice').AsFloat; // Before Add Extra Charge Amount During Doctor Fraction
               TablePTTestTemp.FieldByName('BATDFVatAmt').AsFloat:=FieldByName('BATDFVatAmt').AsFloat;// BATDF-Before Add To Doctor Fraction

               TablePTTestTemp.FieldByName('IsPackageTest').AsString:=FieldByName('IsPackageTest').AsString;
               TablePTTestTemp.Post;
               Next;
          End;
     End;

     With TablePTTestTemp Do
     Begin
          Close;
          Open;
     End;

     With Table_Operation  Do
     Begin
          Close;
          EmptyTable;
          Open;
     End;

     With Query_TempSubProcess Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          With Sql Do
          Begin
               Clear;
               Add('Select * From DrOperationPending.db Where PatientID='+IntToStr(pi_PatientId));
               Add(' Order By TestNameID Asc');
          End;
          Open;
          First;
          While Not Eof Do
          Begin
               Table_Operation.Append;
               Table_Operation.FieldByName('Sno').AsInteger:=FieldByName('Sno').AsInteger;
               Table_Operation.FieldByName('TestNameCode').AsString:=FieldByName('TestNameCode').AsString;
               Table_Operation.FieldByName('TestName').AsString:=FieldByName('TestName').AsString;
               Table_Operation.FieldByName('TestNameId').AsInteger:=FieldByName('TestNameId').AsInteger;
               //Table_Operation.FieldByName('PatientId').AsInteger:=pi_PatientId;
               Table_Operation.FieldByName('InpatientId').AsInteger:=FieldByName('InpatientId').AsInteger;
               Table_Operation.FieldByName('DepId').AsInteger:=FieldByName('DepId').AsInteger;
               Table_Operation.FieldByName('BillDetailId').AsInteger:=FieldByName('BillDetailId').AsInteger;
               Table_Operation.FieldByName('DrCode').AsString:=FieldByName('DrCode').AsString;
               Table_Operation.FieldByName('DrName').AsString:=FieldByName('DrName').AsString;
               Table_Operation.FieldByName('Description').AsString:=FieldByName('Description').AsString;
               Table_Operation.FieldByName('DocId').AsInteger:=FieldByName('DocId').AsInteger;
               Table_Operation.FieldByName('PositionWiseCommId').AsInteger:=FieldByName('PositionWiseCommId').AsInteger;
               Table_Operation.FieldByName('DocRatePer').AsFloat:=FieldByName('DocRatePer').AsFloat;
               Table_Operation.FieldByName('DocAmount').AsFloat:=FieldByName('DocAmount').AsFloat;
               Table_Operation.FieldByName('DocAmountOrg').AsFloat:=FieldByName('DocAmountOrg').AsFloat;
               Table_Operation.FieldByName('UnitTestCost').AsFloat:=FieldByName('UnitTestCost').AsFloat;
               Table_Operation.FieldByName('DisPer').AsFloat:=FieldByName('DisPer').AsFloat;
               Table_Operation.FieldByName('Qty').AsFloat:=FieldByName('Qty').AsFloat;
               Table_Operation.FieldByName('IsFixedPersonForComm').AsString:=FieldByName('IsFixedPersonForComm').AsString;
               Table_Operation.FieldByName('IsFractionPropWithDisPer').AsString:=FieldByName('IsFractionPropWithDisPer').AsString;

               Table_Operation.FieldByName('AddedPercent').AsFloat:=FieldByName('AddedPercent').AsFloat;
               Table_Operation.FieldByName('AddedAmt').AsFloat:=FieldByName('AddedAmt').AsFloat;
               Table_Operation.FieldByName('AddAmtType').AsString:=FieldByName('AddAmtType').AsString;

               Table_Operation.FieldByName('ISCOMPFORFRACTION').AsString:=FieldByName('ISCOMPFORFRACTION').AsString;
               Table_Operation.FieldByName('ISExtraCharge').AsString:=FieldByName('ISExtraCharge').AsString;
               Table_Operation.FieldByName('AddTo').AsString:=FieldByName('AddTo').AsString;

               Table_Operation.FieldByName('IsHospitalPart').AsString:=FieldByName('IsHospitalPart').AsString;
               Table_Operation.FieldByName('IsOperation').AsString:=FieldByName('IsOperation').AsString;
               Table_Operation.Post;
               Next;
          End;
     End;

     With Table_Operation Do
     Begin
          Close;
          Open;
     End;

     DBGridPatientTestExit(Sender);
end;

procedure TFormInpMain.BitBtnPendingClick(Sender: TObject);
begin
     If pi_PatientId<=0 Then Exit;

     If (RadioButton_OPBilling.Checked=False) And (RB_OPAdvanceBilling.Checked=False) And (RadioButton_IPBilling.Checked=False) Then Exit;

     With TablePTTestTemp Do
     Begin
          Close;
          Open;
          If RecordCount<=0 Then
          Begin
               MessageDlg('No Item for Pending',mtConfirmation,[mbOk],0);
               Exit;
          End;
     End;

     With Query_TempSubProcess  Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct PatientID From PatientTestTempPending.db Where PatientID='+IntToStr(pi_PatientId));
          End;
          Open;
          If Trim(FieldByName('PatientID').AsString)<>'' Then
          Begin
               MessageDlg('This Patient Has Earlier Bill Pending, You Can''t Keep More Pending?',mtConfirmation,[mbok],0);
               Exit;
          End;
     End;

     With TablePTTestTempPending Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          TableName:='PatientTestTempPending.db';
          Open;
     End;

     With TablePTTestTemp Do
     Begin
          Edit;
          Post;
          Close;
          Open;
          First;
          While Not Eof Do
          Begin
               TablePTTestTempPending.Append;
               TablePTTestTempPending.FieldByName('BilldetailID').AsInteger:=FieldByName('BilldetailID').AsInteger;
               TablePTTestTempPending.FieldByName('PatientID').AsInteger:=pi_PatientId;
               TablePTTestTempPending.FieldByName('DepID').AsInteger:=FieldByName('DepID').AsInteger;
               TablePTTestTempPending.FieldByName('TestNameID').AsInteger:=FieldByName('TestNameID').AsInteger;
               TablePTTestTempPending.FieldByName('Qty').AsInteger:=FieldByName('Qty').AsInteger;
               TablePTTestTempPending.FieldByName('CurQty').AsInteger:=FieldByName('CurQty').AsInteger;
               TablePTTestTempPending.FieldByName('OrgQty').AsInteger:=FieldByName('OrgQty').AsInteger; // For Refund Case It is used
               TablePTTestTempPending.FieldByName('PatientTestID').AsInteger:=FieldByName('PatientTestID').AsInteger;
               TablePTTestTempPending.FieldByName('DepCode').AsString:=FieldByName('DepCode').AsString;
               TablePTTestTempPending.FieldByName('DocCode').AsString:=FieldByName('DocCode').AsString;
               TablePTTestTempPending.FieldByName('TestNameCode').AsString:=FieldByName('TestNameCode').AsString;
               TablePTTestTempPending.FieldByName('TestDate').AsString:=FieldByName('TestDate').AsString;
               TablePTTestTempPending.FieldByName('TestName').AsString:=FieldByName('TestName').AsString;
               TablePTTestTempPending.FieldByName('TestPrice').AsFloat:=FieldByName('TestPrice').AsFloat;
               TablePTTestTempPending.FieldByName('DisPer').AsFloat:=FieldByName('DisPer').AsFloat;
               TablePTTestTempPending.FieldByName('OldDisPer').AsFloat:=FieldByName('OldDisPer').AsFloat;
               TablePTTestTempPending.FieldByName('Discount').AsFloat:=FieldByName('Discount').AsFloat;
               TablePTTestTempPending.FieldByName('OldDiscount').AsFloat:=FieldByName('OldDiscount').AsFloat;
               TablePTTestTempPending.FieldByName('Total').AsFloat:=FieldByName('Total').AsFloat;
               TablePTTestTempPending.FieldByName('VatAmt').AsFloat:=FieldByName('VatAmt').AsFloat;
               TablePTTestTempPending.FieldByName('CurVatAmt').AsFloat:=FieldByName('CurVatAmt').AsFloat;
               TablePTTestTempPending.FieldByName('CostPrice').AsFloat:=FieldByName('CostPrice').AsFloat;
               TablePTTestTempPending.FieldByName('PayStatus').AsString:=FieldByName('PayStatus').AsString;
               TablePTTestTempPending.FieldByName('Special').AsString:=FieldByName('Special').AsString;
               TablePTTestTempPending.FieldByName('WorkingStatus').AsString:=FieldByName('WorkingStatus').AsString;
               TablePTTestTempPending.FieldByName('IsDiscountable').AsString:=FieldByName('IsDiscountable').AsString;
               TablePTTestTempPending.FieldByName('IsOperational').AsString:=FieldByName('IsOperational').AsString;
               TablePTTestTempPending.FieldByName('IsVatable').AsString:=FieldByName('IsVatable').AsString;
               TablePTTestTempPending.FieldByName('PreBillDetailId').AsInteger:=FieldByName('PreBillDetailId').AsInteger;
               TablePTTestTempPending.FieldByName('IsFractionableItem').AsString:=FieldByName('IsFractionableItem').AsString;
               TablePTTestTempPending.FieldByName('LineEdit').AsString:=FieldByName('LineEdit').AsString;
               TablePTTestTempPending.FieldByName('RefBillNo').AsString:=FieldByName('RefBillNo').AsString;
               TablePTTestTempPending.FieldByName('IsAdvanceBill').AsString:=FieldByName('IsAdvanceBill').AsString;

               { Pre. Amount In Zero Price, Some Time if Mistake Entry and Correct The Field
               at this time this field value }
               TablePTTestTempPending.FieldByName('CostPriceForZero').AsFloat:=FieldByName('CostPriceForZero').AsFloat;

               { For Doctor Fraction }
               TablePTTestTempPending.FieldByName('BATDFCostPrice').AsFloat:=FieldByName('BATDFCostPrice').AsFloat; // Before Add Extra Charge Amount During Doctor Fraction
               TablePTTestTempPending.FieldByName('BATDFVatAmt').AsFloat:=FieldByName('BATDFVatAmt').AsFloat;// BATDF-Before Add To Doctor Fraction

               TablePTTestTempPending.FieldByName('IsPackageTest').AsString:=FieldByName('IsPackageTest').AsString;
               TablePTTestTempPending.Post;
               Next;
          End;
     End;

     With Table_OperationPending  Do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          TableName:='DrOperationPending.db';
          Open;
     End;

     With Table_Operation Do
     Begin
          Edit;
          Post;
          Close;
          Open;
          First;
          While Not Eof Do
          Begin
               Table_OperationPending.Append;
               Table_OperationPending.FieldByName('Sno').AsInteger:=FieldByName('Sno').AsInteger;
               Table_OperationPending.FieldByName('TestNameCode').AsString:=FieldByName('TestNameCode').AsString;
               Table_OperationPending.FieldByName('TestName').AsString:=FieldByName('TestName').AsString;
               Table_OperationPending.FieldByName('TestNameId').AsInteger:=FieldByName('TestNameId').AsInteger;
               Table_OperationPending.FieldByName('PatientId').AsInteger:=pi_PatientId;
               Table_OperationPending.FieldByName('InpatientId').AsInteger:=FieldByName('InpatientId').AsInteger;
               Table_OperationPending.FieldByName('DepId').AsInteger:=FieldByName('DepId').AsInteger;
               Table_OperationPending.FieldByName('BillDetailId').AsInteger:=FieldByName('BillDetailId').AsInteger;
               Table_OperationPending.FieldByName('DrCode').AsString:=FieldByName('DrCode').AsString;
               Table_OperationPending.FieldByName('DrName').AsString:=FieldByName('DrName').AsString;
               Table_OperationPending.FieldByName('Description').AsString:=FieldByName('Description').AsString;
               Table_OperationPending.FieldByName('DocId').AsInteger:=FieldByName('DocId').AsInteger;
               Table_OperationPending.FieldByName('PositionWiseCommId').AsInteger:=FieldByName('PositionWiseCommId').AsInteger;
               Table_OperationPending.FieldByName('DocRatePer').AsFloat:=FieldByName('DocRatePer').AsFloat;
               Table_OperationPending.FieldByName('DocAmount').AsFloat:=FieldByName('DocAmount').AsFloat;
               Table_OperationPending.FieldByName('DocAmountOrg').AsFloat:=FieldByName('DocAmountOrg').AsFloat;
               Table_OperationPending.FieldByName('UnitTestCost').AsFloat:=FieldByName('UnitTestCost').AsFloat;
               Table_OperationPending.FieldByName('DisPer').AsFloat:=FieldByName('DisPer').AsFloat;
               Table_OperationPending.FieldByName('Qty').AsFloat:=FieldByName('Qty').AsFloat;
               Table_OperationPending.FieldByName('IsFixedPersonForComm').AsString:=FieldByName('IsFixedPersonForComm').AsString;
               Table_OperationPending.FieldByName('IsFractionPropWithDisPer').AsString:=FieldByName('IsFractionPropWithDisPer').AsString;

               Table_OperationPending.FieldByName('AddedPercent').AsFloat:=FieldByName('AddedPercent').AsFloat;
               Table_OperationPending.FieldByName('AddedAmt').AsFloat:=FieldByName('AddedAmt').AsFloat;
               Table_OperationPending.FieldByName('AddAmtType').AsString:=FieldByName('AddAmtType').AsString;

               Table_OperationPending.FieldByName('ISCOMPFORFRACTION').AsString:=FieldByName('ISCOMPFORFRACTION').AsString;
               Table_OperationPending.FieldByName('ISExtraCharge').AsString:=FieldByName('ISExtraCharge').AsString;
               Table_OperationPending.FieldByName('AddTo').AsString:=FieldByName('AddTo').AsString;

               Table_OperationPending.FieldByName('IsHospitalPart').AsString:=FieldByName('IsHospitalPart').AsString;
               Table_OperationPending.FieldByName('IsOperation').AsString:=FieldByName('IsOperation').AsString;
               Table_OperationPending.Post;
               Next;
          End;
          Frm_Message.Show;
     End;
end;

procedure TFormInpMain.BitBtnRefreshClick(Sender: TObject);
begin
     BitBtnGoClick(sender);
     EditHospitalNo.SetFocus;
     //QueryInpatientSearchInitialization;
end;

procedure TFormInpMain.EditDayExit(Sender: TObject);
begin
     IF EditDay.Text='' Then
  EditDay.Text:='0';
end;

procedure TFormInpMain.BitBtnBillBreakupClick(Sender: TObject);
begin
     Try
          IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
          Begin
               MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
               EditXsearch.SetFocus;
               Exit;
          End;
     Except
          MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
          EditXsearch.SetFocus;
          Exit;
     End;



     With Form_Medicare_IPBillreakup do
     Begin
          Try
               //CreateTempTable_BillBreakUp;

               With QueryPatientInfo do
               Begin
                    Close;
                    ParamByName('PID').AsInteger:=QueryInpatientSearch.FieldByName('PatientId').AsInteger;
                    Open;
               End;

               With Query_DischargeDate do
               Begin
                    Close;
                    ParamByName('IPID').AsInteger:=QueryInpatientSearch.FieldByName('InPatientId').AsInteger;
                    Open;
               End;

               With Query_Master do
               Begin
                    Close;
                    ParamByName('InPatientId').AsInteger:=QueryInpatientSearch.FieldByName('InPatientId').AsInteger;
                    Open;
               End;

               With Query_BillreakUp do
               Begin
                    Close;
                    Open;
               End;
               QRLabelToday.Caption:=ServerDate.TodaysDate;
               QRLabel_Time.Caption:=ServerDate.TodaysTime;
               QR_BillBreakUp.Preview;
          Finally
          End;
     End;
end;

procedure TFormInpMain.BitBtn_ReferralDocClick(Sender: TObject);
begin
     Try
           IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
           Begin
                    MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
                    EditXsearch.SetFocus;
                    Exit;
           End;
     Except
          MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
          EditXsearch.SetFocus;
          Exit;
     End;

     with Form_DoctorService do
     Begin
          Try
               Form_DoctorService:=TForm_DoctorService.Create(self);

               pi_InPatientId:=QueryInpatientSearch.FieldByName('InpatientId').AsInteger;
               pi_PatientId:=QueryInpatientSearch.FieldByName('PatientId').AsInteger;
               LabelName.Caption:=QueryInpatientSearch.FieldByName('FName').AsString+' '+QueryInpatientSearch.FieldByName('LName').AsString;
               ps_InptDate:=QueryInpatientSearch.FieldByName('InptDate').AsString;
               IF Trim(QueryInpatientSearch.FieldByName('DisDate').AsString)<>'' Then
               ps_DisDate:=QueryInpatientSearch.FieldByName('DisDate').AsString
               Else
               ps_DisDate:=ServerDate.Todaysdate;

               IF QueryInpatientSearch.FieldByName('Discharged').AsString<>'NO' Then
               Begin
                    b_IsDischargePt:=True;
                    BtnSave.Enabled:=False;
                    SpeedButton1.Enabled:=False;
                    SpeedButton2.Enabled:=False;
                    SpeedButton3.Enabled:=False;
                    SpButtonDelete.Enabled:=False;
               End;
               Showmodal;
          Finally
               Free;
          End;
     End;

     IF PageControlmain.Visible=True Then
     EditXsearch.SetFocus
     Else
     EditPsearch.SetFocus;
end;

procedure TFormInpMain.BtnSaveClick(Sender: TObject);
var i:Integer;
begin
     //For Re-Calculating VAT
     b_CheckForAdvanceBilling:=False;
     //EditDisPerExit(Sender);
     IF VatDiscountReCalculate=False Then Exit;

     IF Trim(EditPsearch.Text)='' Then
     Begin
          MessageDlg('You must have '+LabelPatientNo.Caption+' before save.',mtWarning,[mbok],0);
          EditPsearch.Setfocus;
          Exit;
     End;

     IF Trim(EditPayment.Text)='' Then
     EditPayment.Text:='0';
     b_Reprint:=False;

     IF Not TablePTTestTemp.Active Then TablePTTestTemp.Active:=True;
     IF TablePTTestTemp.RecordCount <=0 Then
     Begin
          MessageDlg('No Record To Save !',mtWarning,[mbok],0);
          ActiveControl:=DBGridPatientTest;
          Exit;
     End;

     IF (CMBPayType.Text='') and (Trim(Edit_MemberNo.Text)<>'') and (RadioButton_OPBilling.Checked=True) Then
     Begin
          MessageDlg(' Plz. put pay type for medicare patient.',mtWarning,[mbok],0);
          CMBPayType.SetFocus;
          Exit;
     End;

     IF ((CMBPayType.Text<>'CASH') and (CMBPayType.Text<>'CREDIT')) and (Trim(Edit_MemberNo.Text)<>'') and (RadioButton_OPBilling.Checked=True) Then
     Begin
          MessageDlg('Don''t  type on Pay Type just choose " CASH "  or " CREDIT "  from down or up arrow  .',mtWarning,[mbok],0);
          CMBPayType.SetFocus;
          Exit;
     End;


     IF b_IsAdvanceDueClear=True Then
     Begin
          IF CheckIsNewItemAddInAdvDueClear=True Then
          Exit;
     End;

     {IF (Trim(Edit_MemberNo.Text)='') and (RadioButton_OPBilling.Checked=True) and (DBLookupComboBox_Community.KeyValue=18) Then  //18 Medicare
     Begin
          MessageDlg(' Sorry ! You have to Medicare No for Medicare Community.',mtWarning,[mbok],0);
          DBLookupComboBox_Community.SetFocus;
          Exit;
     End;}

     IF CMBBillType.Text='GENERAL' Then
     ps_RateType:='GEN'
     Else IF CMBBillType.Text='PRIVATE' Then
     ps_RateType:='PVT'
     Else IF CMBBillType.Text='SPECIAL' Then
     ps_RateType:='SPL'
     Else IF CMBBillType.Text='EXPRESS' Then
     ps_RateType:='EXP'
     Else
     ps_RateType:='FRG';

     pf_DollarExRate:=0;
     pf_DollarAmount:=0;

     IF (DBLC_Doctor.KeyValue=Null) and (CheckBoxIPRefund.Checked=False) and (RadioButton_OPRefundBilling.Checked=False) Then
     Begin
          MessageDlg('Sorry ! You Must Have To Put Refferal Doctor.',mtWarning,[mbok],0);
          DBLC_Doctor.SetFocus;
          Exit;
     End;

     if (DBLC_Doctor.KeyValue=Null) and (TablePTTestTemp.FieldByName('Depid').asInteger in [3,23,76,77,75,37,38,39,40,41,42,43]) Then
     begin
          MessageDlg('Sorry ! You Must Have To Put Referal Doctor.',mtWarning,[mbok],0);
          DBLC_Doctor.SetFocus;
          Exit;
     end;

     if  (DBLC_Doctor.KeyValue=Null) and (TablePTTestTemp.FieldByName('TestNameId').asInteger = 879) and (TablePTTestTemp.FieldByName('TestNameId').asInteger = 960)
          and (TablePTTestTemp.FieldByName('TestNameId').asInteger = 903) and (TablePTTestTemp.FieldByName('TestNameId').asInteger =60) and (TablePTTestTemp.FieldByName('TestNameId').asInteger = 411) Then
     begin
          MessageDlg('Sorry ! You Must Have To Put Referal Doctor.',mtWarning,[mbok],0);
          DBLC_Doctor.SetFocus;
          Exit;
     end;

     IF (ps_RateType='FRG') and (StrToFloat(EditPayment.Text) > 0) and (RadioButton_IPBilling.Checked=True) Then
     Begin
          MessageDlg('Plz. keep Advance or Deposit of Foreigner Patient From Deposit Section.',mtInformation,[mbok],0);
          EditPayment.SetFocus;
          Exit;
     End;

     IF (RadioButton_OPRefundBilling.Checked=True) and (Trim(Edit_PreviousBillNo.Text)='') And (CheckBoxOPRef.Enabled=True) Then
     Begin
          MessageDlg('Sorry ! You Must Have To Put Previous Bill No.',mtWarning,[mbok],0);
          Edit_PreviousBillNo.SetFocus;
          Exit;
     End;

     IF (RadioButton_OPRefundBilling.Checked=True) and (Trim(EditRemarks.Text)='') Then
     Begin
          MessageDlg('Sorry ! You Must Have To Put Refund Reason.',mtWarning,[mbok],0);
          EditRemarks.SetFocus;
          Exit;
     End;

     IF (RadioButton_OPRefundBilling.Checked=True) and (Copy(Edit_PreviousBillNo.Text,1,2)='AD') Then
     Begin
          MessageDlg('This is Advacne Bill. Plz. First Make It Cash Bill Then Only Do Refund Process.',mtWarning,[mbok],0);
          Edit_PreviousBillNo.SetFocus;
          Exit;
     End;

     IF (RadioButton_OPBilling.Checked=True) and (RadioButton_OPRefundBilling.Checked=False) and (CMBPayType.ItemIndex=1)
     and (DBLookupComboBox_Scheme.KeyValue=NULL) Then
     Begin
          MessageDlg('Sorry ! You Must Have To Choose Scheme.',mtWarning,[mbok],0);
          CheckBox_Schemes.Checked:=True;
          Exit;
     End;

     IF (RadioButton_OPBilling.Checked=True) and (RadioButton_OPRefundBilling.Checked=False) and (CMBPayType.ItemIndex=1) Then
     Begin
          IF (CMBPayType.ItemIndex=1) Then
          Begin
               With Query_Process Do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select OPTCreditFacility From Scheme where SchemeId='+IntToStr(DBLookupComboBox_Scheme.KeyValue));
                    Open;
               End;

               IF Query_Process.FieldByName('OPTCreditFacility').AsString='N' Then
               Begin
                    MessageDlg('Sorry ! This scheme has not credit facility.',mtWarning,[mbok],0);
                    DBLookupComboBox_Scheme.SetFocus;
                    Exit;
               End;
          End;
     End;

     IF ((RadioButton_OPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)) and (Trim(EditRemarks.Text)='') Then
     Begin
          If gi_HospitalID=5 Then //OM
          Begin
               IF MessageDlg('Without Lab No, Do You Want To Bill ?',mtWarning,[mbYes,mbNo],1)=mrNo Then
               Begin
                    EditRemarks.SetFocus;
                    Exit;
               End;
          End;
     End;

    IF RadioButton_IPBilling.Checked=False Then
    Begin
         IF (EditPsearch.Text<>LabelNo.Caption) and (CheckBoxIPRefund.Checked=False) Then
         Begin
              MessageDlg('Hospital No Changed ! Plz. Check Name and Hospital No Displayed and Recently You Typed.',mtWarning,[mbok],0);
              EditPsearch.SetFocus;
              Exit;
         End;

         IF pi_PatientId=0 Then
         pi_PatientId:=StrToInt(EditPsearch.Text);

    End;

    IF RadioButton_IPBilling.Checked=True Then
    Begin
         IF EditPsearch.Text<>LabelIpNo.Caption Then
         Begin
              MessageDlg('Inpatient No Changed ! Plz. Check Name and Inpatient No Displayed and Recently You Typed.',mtWarning,[mbok],0);
              EditPsearch.SetFocus;
              Exit;
         End;
    End;

    IF RB_OPAdvanceBilling.Checked=True Then
    Begin
          IF Trim(EditPayment.Text)='' Then
          EditPayment.Text:='0';
          IF StrToFloat(EditPayment.Text)<=0 Then
          Begin
               MessageDlg('Advance Amt.(Rs.) must be greater than Zero (0).',mtWarning,[mbok],0);
               EditPayment.SetFocus;
               Exit;
          End;

          {IF StrToFloat(Label_TotBillAmt.Caption) > 0 Then
          Begin
               IF (StrToFloat(EditPayment.Text)/StrToFloat(Label_TotBillAmt.Caption))*100 < 60 Then
               Begin
                    MessageDlg('Advance Amt.(Rs.) must be greater than 60% ( i.e Minimum Rs '+FloatToStr(StrToFloat(Label_TotBillAmt.Caption)*0.6)+' ) of total amount( Rs. '+Label_TotBillAmt.Caption+' ).',mtWarning,[mbok],0);
                    EditPayment.SetFocus;
                    Exit;
               End;
          End;}
    End;


     If (RadioButton_OPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
     ps_LabNo:=StringReplace(EditRemarks.Text,'''','''',[rfReplaceAll])
     Else
     ps_LabNo:='';

     If gi_HospitalID In [14,19] Then
     Begin
          ps_LabNo:='';

          IF ChkDischarge=2 Then // 2-OutDoor billing
          Begin
               IF ((CMBPayType.Text='CREDIT') or (StrToFloat(EditDisAmt.Text) > 0))
               and (Trim(EditRemarks.Text)='') Then
               Begin
                    MessageDlg('Sorry ! While giving Credit or Discount you must have to put remarks.',mtWarning,[mbok],0);
                    EditRemarks.SetFocus;
                    Exit;
               End;
          End
          Else IF ChkDischarge=0 Then // 0- IPBilling
          Begin
               {IF (StrToFloat(EditDisAmt.Text) > 0) and (Trim(EditRemarks.Text)='') Then
               Begin
                    MessageDlg('Sorry ! While giving Discount you must have to put remarks.',mtWarning,[mbok],0);
                    EditRemarks.SetFocus;
                    Exit;
               End;}
          End
     End;


     IF ((StrToFloat(EditDisPer.Text) > 0) or (StrToFloat(EditDisAmt.Text) > 0)) and (DBLookupComboBox_Scheme.KeyValue=NULL) Then
     Begin
          MessageDlg('You Must Have To Choose Scheme For Discount.',mtWarning,[mbok],0);
          CheckBox_Schemes.Checked:=True;
          DBLookupComboBox_Community.SetFocus;
          Exit;
     End;

     {  Message Alert if Dep Balance Amt is Less }
     IF (RadioButton_IPBilling.Checked) and (Not(gi_HospitalId In[5,14,19])) then // For Time Being This message is removed for OM Hos.
     Begin
          IF (StrToFloat(EditPayment.text) + StrToFloat(LabelIPBalanace.caption)) < strToFloat(Edit_GrandTotal.text) then
          begin
               IF messageDlg('The Deposit amount is less than the Bill amount!'
                             +#13+'Would you like to continue billing anyway?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               else
               begin
                    EditPayment.setfocus;
                    exit;
               end;
          end;
     End;

     { For IP Added Charge After Discharge Bill (due to Extra Day stay) }
     IF CB_AddedChrgForIP.Checked=True Then
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select DisDate,Discharged,InpatientId From InpatientReg where InpatientId= (Select Max(InpatientId) From ');
               sql.add(' InpatientReg where PatientId='+EditPsearch.Text+')');
               Open;
          End;

          IF Query_Process.RecordCount <=0 Then
          Begin
               MessageDlg('No Patient Admitted Yet All With This Hospital No  "  '+EditPsearch.Text+'  ".',mtWarning,[mbok],0);
               EditPsearch.SetFocus;
               Exit;
          End;

          IF Query_Process.FieldByName('Discharged').AsString<>'YES' Then
          Begin
               MessageDlg('Discharge Bill Has Not Made Yet All So Plz. Put Added Charge From Credit Billing Having Hospital No " '
               +EditPsearch.Text+'  " or Inpatient No  " '+Query_Process.FieldByName('InpatientId').AsString+' ".',mtWarning,[mbok],0);
               EditPsearch.SetFocus;
               Exit;
          End;

          DEX_Control.SystemOfDate:=gi_DateSystem;
          DEX_TodayDate.SystemOfDate:=gi_DateSystem;

          DEX_Control.Text:=Query_Process.FieldByName('DisDate').AsString;
          DEX_TodayDate.Text:=ServerDate.TodaysDate;

          IF (DEX_TodayDate.ADDateAsDate - DEX_Control.ADDateAsDate) > 2  Then
          Begin
               MessageDlg('Inpatient Added Charge Shouldn''t Taken For More Than 1 Days (Discharge On - '
               +Query_Process.FieldByName('DisDate').AsString+'). IF So Re-Admit The Patient.',mtWarning,[mbok],0);
               EditPsearch.SetFocus;
               Exit;
          End;
     End;

     b_IsQtyCtrlMsgDisplay:=True;

     IF StrToFloat(EditDisPer.Text)=0 Then
     IF AvoidDisPerErrorInGridSFSLWGTNL=False Then Exit;//SFSLWGTNL- save from same line without going to next line

     If IsDiscountMoreThan100()=True Then
     Begin
          MessageDlg('Would you mind? Discount Is More Than 100%',mtConfirmation,[mbYes,mbNo],0);
          Exit;
     End;

     {If (pi_SchemeId<=0) And (IsDiscount()=True) Then
     Begin
          MessageDlg('Would you mind? No Scheme And You Are Trying Discount.',mtConfirmation,[mbYes,mbNo],0);
          Exit;
     End;}

     {IF (RadioButton_OPBilling.Checked=True) and (ChkDischarge<> 3) Then
     Begin
          With Query_TempProcess do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select TestNameCode,Count(TestNameCode) as Num From DrOperation.DB ');
               sql.add(' where IsFixedPersonForComm=''N'' and (DrCode is null or DrCode=''HOS01'') Group By TestNameCode');
               sql.add(' Having Count(TestNameCode)  > 1');
               Open;
          End;

          IF Query_TempProcess.FieldByName('Num').AsInteger > 1 Then
          Begin
               TablePTTestTemp.Locate('TestNameCode',Query_TempProcess.FieldByName('TestNameCode').AsString,[]);
               MessageDlg('Plz. Put Involve Doctor/Technician For The Investigation ('+TablePTTestTemp.FieldByName('TestName').AsString+') .'+Char(10)+Char(10)+Char(10)
               +' For To Keep Doctor/Technician Plz Do   " F4 " or Click On Button Having Caption  "  DI  "',
               mtWarning,[mbok],0);
               Display_Frct_Involve_Person;
               Exit;
          End;
     End;
     }


     IF Not(MessageDlg('Are you ready to do billing ?',mtConfirmation,[mbYes,mbNo],0)=mrYes) Then
     Exit;


     Case CheckButton of
     4:
     Begin
          Try
              //IF ((DBGridPatientTest.Fields[10].Value=0) Xor (DBGridPatientTest.Fields[11].Value=0))
              //or ((Trim(DBGridPatientTest.Fields[2].Text)='') and (Trim(DBGridPatientTest.Fields[3].Text)='')) Then
              //or (DBGridPatientTest.Fields[7].Value=0) Then


              Freecase:=DBLookupComboBox_Community.Text;

              DateEditX_TodayBilling.SystemOfdate:=gi_DateSystem;
              ChangeCaption(Button_TodayBilling,gi_DateSystem);
              ps_TodaysDate:=ServerDate.TodaysDate;//DateEditX_TodayBilling.Text;
              ADTOVSS(ps_TodaysDate);
              ps_TodaysTime:=ServerDate.TodaysTime;
              ps_Month:=ServerDate.Month;
              ps_Year:=ServerDate.Year;

              BtnSave.Enabled:=False;
              pi_InPatientId:=StrToInt(LabelIpNo.Caption);
              IF (Edit_MemberNo.Text<>'') and (CMBPayType.Text='CREDIT') Then {  Some time Medicare pt. also may have Cash Bill  }
              Begin
                   ps_PatientCatg:='STF';
                   pi_CommunityId:=DBLookupComboBox_Community.KeyValue;
                   pi_SchemeId:=Query_Community.FieldByName('SCHEMEID').AsInteger;
              End
              Else
              Begin
                   ps_PatientCatg:='ORD';
                   If (DBLookupComboBox_Community.KeyValue=Null) or (DBLookupComboBox_Community.KeyValue=0) then
                   Begin
                        pi_CommunityId:=0;
                        pi_SchemeId:=0;
                   End
                   Else
                   Begin
                        pi_CommunityId:=DBLookupComboBox_Community.KeyValue;
                        pi_SchemeId:=DBLookupComboBox_Scheme.KeyValue;
                   End;
              End;

              //VatDiscountReCalculate;

              IF RadioButton_OPRefundBilling.Checked=False Then
              Begin
                   IF b_IsAdvanceDueClear=False Then
                   DataProcessing
                   Else
                   begin
                        AdvanceBillingProcessing;
                        b_IsAdvanceDueClear:=False;
                   end;
              End
              Else
              begin
                   CheckingItemsRelationWithPrevBill;
                   IF b_IsRefundQtyDiff Then
                   Begin
                        BtnSave.Enabled:=True;
                        Exit;
                   End;
                   SaveRefundBilling;
              end;

              IF b_SaveSuccess=False Then
              Exit;

              IF RadioButton_OPRefundBilling.Checked=False Then
              Begin
                   IF RadioButton_IPBilling.Checked=False Then
                   //IF Not((RadioButton_IPBilling.Checked=True)) Then //and (CMBPayType.Text='CREDIT')) Then
                   IF (messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes) and (ChkDischarge<>10) then //10 - Ward Billing no need to Print
                   Begin
                        For i:=1 to StrToInt(Edit_NoOFCopy.Text) do
                        Begin
                             IF gi_HospitalID=1 Then //NMC
                             AlternateBillPrintNMC(pi_PatientId,ps_MyBillNo)
                             Else IF gi_HospitalID=2 Then //Manamohan
                             AlternateBillPrintManamohan(pi_PatientId,ps_MyBillNo)
                             Else IF gi_HospitalID=5 Then //OM
                             Begin
                                  IF gs_BillingOm2ndType='Y' Then
                                  AlternateBillPrintOM2ndType(pi_PatientId,ps_MyBillNo) // 6 By 8
                                  Else
                                  AlternateBillPrintOM(pi_PatientId,ps_MyBillNo); // 8 by 8 i.e large
                             End
                             Else IF gi_HospitalID=12 Then //Manamohan
                             AlternateBillPrint_BlueBird(pi_PatientId,ps_MyBillNo)
                             Else If gi_HospitalID=14 Then //HAMS
                             Begin
                                  If (pi_SchemeId=9)Then
                                  AlternateBillPrintHAMSFREE(pi_PatientId, ps_MyBillNo)
                                  Else IF gs_BillingOm2ndType='Y' Then
                                  AlternateBillPrintOM2ndType(pi_PatientId,ps_MyBillNo) // 6 By 8
                                  Else
                                  AlternateBillPrintOM(pi_PatientId,ps_MyBillNo); // 8 by 8 i.e large
                             End
                             Else If gi_HospitalID=19 Then //Medicare
                             Begin
                                  AlternateBillPrint_Medicare(pi_PatientId,ps_MyBillNo);
                             End;
                        End;
                        Edit_NoOFCopy.Text:='1';
                   End;
              End
              Else
              Begin
                   If messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then
                   Begin
                        IF gi_HospitalID=1 Then //NMC
                        AlternateBillPrintNMC(pi_PatientId,ps_MyBillNo)
                        Else IF gi_HospitalID=2 Then //Manamohan
                        AlternateBillPrintManamohan(pi_PatientId,ps_MyBillNo)
                        Else IF gi_HospitalID=5 Then //OM
                        Begin
                             IF gs_BillingOm2ndType='Y' Then
                             AlternateBillPrintOM2ndType(pi_PatientId,ps_MyBillNo)
                             Else
                             AlternateBillPrintOM(pi_PatientId,ps_MyBillNo);
                        End
                        Else IF gi_HospitalID=12 Then //Blue Bird
                        AlternateBillPrint_BlueBird(pi_PatientId,ps_MyBillNo)
                        Else If gi_HospitalID=14 Then //HAMS
                        Begin
                              IF gs_BillingOm2ndType='Y' Then
                              AlternateBillPrintOM2ndType(pi_PatientId,ps_MyBillNo) // 6 By 8
                              Else
                              AlternateBillPrintOM(pi_PatientId,ps_MyBillNo); // 8 by 8 i.e large
                        End
                        Else If gi_HospitalID=19 Then //Medicare
                        Begin
                              With Query_Process do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Select BD.PrevBillNo,Count(BD.PrevBillNo) as TotNoOfItemRefund,(Select Count(BillNo) From BillDetail ');
                                   sql.add(' where BillNo=BD.PrevBillNo) as TotNoOfItemInFristBill ');
                                   sql.add(' From BillDetail BD where BillNo='+#39+ps_MyBillNo+#39);
                                   sql.add(' Group by BD.PrevBillNo ');
                                   Open;
                              End;

                              // Partial Refund Bill and Org. Remaining(Not Refunded Item) Print
                              IF Query_Process.FieldByName('TotNoOfItemRefund').AsInteger < Query_Process.FieldByName('TotNoOfItemInFristBill').AsInteger Then
                              AlternateBillPrint_Medicare(pi_PatientId,Query_Process.FieldByName('PrevBillNo').AsString);

                              { Refund Bill }
                              AlternateBillPrint_Medicare(pi_PatientId,ps_MyBillNo);
                        End;
                   End;
              End;

              IsCreditParty:=False;

              EditTotal.Text:='0.00';
              Edit_ExDuty.Text:='0.00';
              EditDisAmt.Text:='0.00';
              EditDisPer.Text:='0.00';
              Edit_SubTotal.Text:='0.00';
              Edit_GrandTotal.Text:='0.00';
              EditPayment.Text:=Edit_GrandTotal.Text;
              EditECharge.Text:='0.00';
              EditPayment.Text:='0.00';
              EditRemarks.Text:='';

              EditPatientid.Text:='';
              //pi_InpatientId:=0;
              //pi_PatientId:=0;
              pi_SchemeId:=0;
              pi_CommunityId:=0;
              ps_MemberNo:='';

              IF CB_DirectDiscountSet.Checked=True Then
              CB_DirectDiscountSet.Checked:=False;

              IF gi_HospitalId=5 Then
              Begin
                   IF RadioButton_IPBilling.Checked=True Then
                   CMBBillType.ItemIndex:=1
                   Else
                   CMBBillType.ItemIndex:=0;
              End
              Else
              CMBBillType.ItemIndex:=0;
              CMBPayType.Style:=csDropDownList;
              Label_Community.Font.Color:=clBlack;
              EditPsearch.Text:='';
              pf_DiscountPer:=0;
              ChkBoxAllDis.Checked:=False;
              ChkBoxOldbill.Checked:=False;
              CheckBox_Schemes.Checked:=False;
              CheckBox_SchemesClick(Sender);

              CB_DisForAllItems.Checked:=False;

              Label_Fraction.Visible:=False;
              DBGrid_DocInvolved.Visible:=False;

              EditPsearch.SetFocus;

              CB_ChrgOldTest.Checked:=False;
              CB_AddedChrgForIP.Checked:=False;

              IF RB_OPAdvanceBilling.Checked=True Then
              RadioButton_OPBilling.Checked:=True;

              IF gs_IsDoctorFractionActive='Y' Then
              Begin
                   Table_Operation.DatabaseName:=gs_TempPath;
                   Table_Operation.Close;
                   Table_Operation.EmptyTable;
                   Table_Operation.Open;

                   Table_XRayPlateSize.DatabaseName:=gs_TempPath;
                   Table_XRayPlateSize.Close;
                   Table_XRayPlateSize.EmptyTable;
                   Table_XRayPlateSize.Open;
              End;

              IF (gi_HospitalId In [5,14,19]) and (RadioButton_IPBilling.Checked=True) Then
              Begin
                   Table_OperationCase.DatabaseName:=gs_TempPath;
                   Table_OperationCase.Close;
                   Table_OperationCase.EmptyTable;
                   Table_OperationCase.Open;
              End;

              If (RadioButton_OPBilling.Checked=True) Or (RB_OPAdvanceBilling.Checked=True) Or (RadioButton_IPBilling.Checked=True) Then
              Begin
                   With Query_TempProcess Do
                   Begin
                         Close;
                         DatabaseName:=gs_TempPath;
                         With Sql Do
                         Begin
                              Clear;
                              Add('Delete From PatientTestTempPending.db Where PatientID='+IntToStr(pi_PatientId));
                         End;
                         ExecSQL;

                         Close;
                         DatabaseName:=gs_TempPath;
                         With Sql Do
                         Begin
                              Clear;
                              Add('Delete From DrOperationPending.db Where PatientID='+IntToStr(pi_PatientId));
                         End;
                         ExecSQL;
                   End;
              End;

         Except
              MessageDlg('Some error in your windows, Data Successfully saved !'+#13' Please, exit MiDas Dr.HoMS and re-open'
              ,mtInformation,[MbOk],0);
         End;
     End;
     End; {*** Case End...}
end;

procedure TFormInpMain.BtnCancelClick(Sender: TObject);
begin
     IF ChkDischarge < 2 Then {*** 2 for normal billing...}
     Begin
         IF PageControlmain.Visible=False Then
         Begin
              RadioButton_IPBilling.Checked:=True;
              RadioButton_IPBilling.Visible:=False;
              RadioButton_OPBilling.Visible:=False;
              CloseInPatientBilling;
              Exit;
         End;
     End
     Else IF ChkDischarge =10 Then //Ward Billing
     Begin
          IF PageControlmain.Visible=False Then
          Begin
              CloseInPatientBilling;
              Exit;
          End;
     End;

     IF MessageDlg('Are you sure to quit billing ?',MTConfirmation,[mbyes,mbno],0)=mryes then
     Close;
end;

procedure TFormInpMain.BitBtnCrBillingClick(Sender: TObject);
begin
     Try
          IF (QueryInpatientSearch.RecordCount <=0) or (QueryInpatientSearch.Active=False) Then
          Begin
               MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
               EditXsearch.SetFocus;
               Exit;
          End;
     Except
          MessageDlg('Plz Choose Patient First.',mtInformation,[mbok],0);
          EditXsearch.SetFocus;
          Exit;
     End;

     Timer2.Enabled:=False;

     RadioButton_OPBilling.Visible:=False;
     RadioButton_OPBilling.Enabled:=False;
     RadioButton_IPBilling.Enabled:=True;
     RadioButton_IPBilling.Visible:=True;
     RadioButton_IPBilling.Left:=75;

     IF ChkDischarge=10 Then// ward billing
     Begin
          BitBtn_ReferralDoc.Visible:=False;
          BitBtnBedExchange.Visible:=False;
     End;

     IF gi_HospitalId=19 Then // 19 - Medicare
     DBLC_Doctor.keyValue:='DAS';

     Try
          IF (QueryInpatientSearch.FieldByName('IsInpatient').asString<>'T') and (QueryInpatientSearch.FieldByName('Discharged').AsString='NO') Then
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update PatientMain Set IsInpatient=''T'' where ');
                    sql.add(' PatientId='+IntToStr(QueryInpatientSearch.fieldbyname('PatientID').AsInteger));
                    ExecSQL;
               End;
          End;
          BitBtnDeposit.Enabled:=True;
          PageControlmain.Visible:=False;
          pagecontrolPayment.visible:=true;
          //pagecontrolPayment.Align:=AlClient;

          GroupBox_CashInfo.Visible:=True;
          GroupBoxOldTest.Visible:=False;

          DateEditX_TodayBilling.SystemOfDate:=gi_DateSystem;
          DateEditX_TodayBilling.text:=ServerDate.TodaysDate;
          ChangeCaption(Button_TodayBilling,gi_DateSystem);

          CheckButton:=4;{***** for saving inpatient billing status (for case condition)....}

          pi_InPatientId:=QueryInpatientSearch.FieldByName('InpatientId').AsInteger;

          CMBBillType.Items.Clear;

          IF gi_HospitalId In [5,12,19] Then // 5 -OM Hospital,12-Blue bird international Clinic,19 - Medicare
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('FOREIGNER');
          End
          Else
          Begin
               CMBBillType.Items.Add('GENERAL');
               CMBBillType.Items.Add('PRIVATE');
               CMBBillType.Items.Add('SPECIAL');
               CMBBillType.Items.Add('FOREIGNER');
          End;

          DisplayInpatientInfo;

          //**************** find Balance deposit

          if RadioButton_IPBilling.Checked then
          begin
               If gi_HospitalID In [14,19] Then //14-HAMS,19 - Medicare
               CMBPayType.ItemIndex:=1
               Else
               CMBPayType.ItemIndex:=0;
               End;

               FindBalanceDeposit;
     Except

     End;

     IF gs_IsDoctorFractionActive='Y' Then
     With Table_Operation Do
     Begin
          Close;
          EmptyTable;
          Open;
     End;
end;

procedure TFormInpMain.EditFNameChange(Sender: TObject);
begin
     EditFName.text:=StringReplace(EditFName.text,'''','''''',[rfReplaceAll]);
   with QueryInpatientSearch do
   Begin
      IF Trim(EditFName.text)<>'' Then
      Begin
         Filter:='FName ='+#39+EditFName.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TFormInpMain.EditFNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=VK_UP Then
     Begin
          IF CheckBoxToday.Enabled=True Then
          CheckBoxToday.SetFocus
          Else
          EditXsearch.SetFocus;
     End;

     IF key=VK_Right Then
     EditLName.SetFocus;

     IF key=VK_Down Then
     Begin
          ActiveControl:=DBGridMain;
          DBGridMain.SelectedIndex:=0;
     End;
end;

procedure TFormInpMain.EditFNameKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     setquerytoselection(False);
end;
procedure TFormInpMain.RetriveIndex;
Begin
  With FrmCode Do
  Begin
    IF DBGridPatientTest.SelectedIndex=1 Then
    Begin
      CheckDep:=0; //For Department
      Show;
    End
    Else IF DBGridPatientTest.SelectedIndex=2 Then
    Begin
      CheckDep:=1; //For Test Name Code
      RetriveSelData;
      Show;
    End;
    {Else IF DBGridPatientTest.SelectedIndex=3 Then
    Begin
      CheckDep:=2; //For Test Name
    End;}
    //Showmodal;
  End;
end;

Function TFormInpMain.SumRefresh:Double;
Var NTotal:Double;
Begin
  With QuerySum do
  Begin
    Close;
    Open;
    NTotal:=FieldByName('Total').asFloat;
    Result:=NTotal;
  End;
End;


Procedure TFormInpMain.RetriveSelData;
Begin
     With QueryTestName Do
     Begin
          Close;
          Sql.Clear;
          Sql.Add(' SELECT * from TestName Where ISactive='+Chr(39)+'T'+Chr(39));
          sql.add(' Order By TestNameCode');
          Open;
     End;
End;
Procedure TFormInpMain.UpdateInpatientDetail(UPatientId,UInPatient,URoomNo:LongInt);
Var IPDetailNo,VRoomNo:Integer;
Begin
  DateEditX_TodayIPView.SystemOfDate:=gi_DateSystem;
  With QueryUpdateBedAssign Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      Add('Update InpatientReg');
      if ChkUndo=1 then
        Add('Set Discharged='+Chr(39)+'NO'+Chr(39)+','+'DisDate='+Chr(39)+''+Chr(39))
      Else
        Add('Set Discharged='+Chr(39)+'YES'+Chr(39)+','+'DisDate='+Chr(39)+DateEditX_TodayIPView.Text{ServerDate.TodaysDate}+Chr(39));

      Add('Where InpatientID=:InpatientID');
      ParamByName('InpatientID').AsInteger:=UInPatient;
      ExecSql;
    End;

    With SQL Do
    Begin
      Clear;
      Add('Update InpatientDetail');
      if ChkUndo=1 then
      Begin
        Add(' Set OutTime='+chr(39)+''+chr(39));
        Add(',OutDate='+chr(39)+''+chr(39));
      End
      Else
      Begin
        Add(' Set OutTime='+chr(39)+gs_TodaysTime+chr(39));
        Add(',OutDate='+chr(39)+{ADToVS(Date)}{ServerDate.TodaysDate}DateEditX_TodayIPView.Text+chr(39));
      End;

      Add('Where InPatientID=:InPatientID');
      ParamByName('InPatientID').AsInteger:=UInPatient;
      ExecSql;
    End;
    With SQL Do
    Begin
      Clear;
      Add('Select * from InpatientDetail');
      Add('Where FileNo=:InpatientID');
      ParamByName('InpatientID').AsInteger:=UInPatient;
      ExecSql;
    End;
    Open;
    VRoomNo:=QueryUpdateBedAssign.FieldByName('ROOMNO').AsInteger;
    Close;
    With SQL Do
    Begin
      Clear;
      Add('Update Room');
      if ChkUndo=1 then
        Add('Set Vacant='+Chr(39)+'F'+Chr(39))
      Else
        Add('Set Vacant='+Chr(39)+'T'+Chr(39));
      Add('Where Roomid=:BedNo');
      ParamByName('BedNo').AsInteger:=URoomNo;
      ExecSql;
    End;
  End;
End;

Procedure TFormInpMain.UpdatePersonalBalance(InpatientID:Integer;Balance:Double);
Begin
  With QueryCancelTest Do
  Begin
    Close;
    {WIth SQL Do
    Begin
      Select
    End;}
    With SQL Do
    Begin
      Clear;
      Add('Update PersonalBalance');
      Add(' Set Balance='+FloatToStr(Balance));
      Add(' Where InpatientID=:InpatientID');
    End;
    ParamByName('InpatientID').AsInteger:=InpatientID;
    //ParamByName('InpatientID').AsInteger:=pi_InPatientId;
    EXECSQL;
  End;
End;

Procedure TFormInpMain.UpDatePatientDetail(PatientID,InPatientID:Integer;IsIP:String);
Begin
  With QueryCancelTest Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      Add('Update PatientMain');
      Add('Set PatientType='+chr(39)+'INPATIENT'+chr(39));
      Add(',ISINPatient='+chr(39)+IsIP+chr(39));
      Add(',InPatientID='+IntToStr(InPatientID{FileNo}));
      Add('Where PatientID=:PatientID');
      ParamByName('PatientID').AsInteger:=PatientID;
      ExecSQL;
    End;
  End;
End;

Function TFormInpMain.RetriveIPDeposit(InPatientId:Integer):Double;
Begin
   With QueryCancelTest Do
   Begin
      Close;
      Sql.Clear;
      Sql.ADD(' Select Sum(Cr-Dr) as Balance From IPDeposit');
      Sql.ADD(' Where InpatientID='+IntToStr(InPatientId));
      Sql.ADD(' Group by patientID');
      Open;
      RetriveIPDeposit:=FieldByName('Balance').AsFloat;
   End;
End;

Procedure TFormInpMain.FillPatientTestData;
Begin
  FillDate:=False;
  With TablePTTestTemp Do
  Begin
    Close;
    Exclusive:=True;
    EmptyTable;
    Active:=True;
    RetriveRequiredData;
    QueryPatientTest.First;
    While Not QueryPatientTest.Eof Do
    Begin
      First;
      IF Not Active Then Active:=True;
      Append;
      FieldByName('PatientID').asInteger:=QueryPatientTest.FieldByName('PatientID').asInteger;
      FieldByName('PatientTestID').asInteger:=QueryPatientTest.FieldByName('PatientTestID').asInteger;
      FieldByName('DepID').asInteger:=QueryPatientTest.FieldByName('DepID').asInteger;
      FieldByName('TestNameID').asInteger:=QueryPatientTest.FieldByName('TestNameID').asInteger;
      FieldByName('TestDate').AsString:=QueryPatientTest.FieldByName('TestDate').AsString;
      FieldByName('DepCode').asString:=QueryPatientTest.FieldByName('DepCode').asString;
      FieldByName('TestNameCode').asString:=QueryPatientTest.FieldByName('TestNameCode').asString;
      FieldByName('TestName').asString:=QueryPatientTest.FieldByName('NTestName').asString;
      FieldByName('CostPrice').asFloat:=QueryPatientTest.FieldByName('NUnitCost').asFloat;
      FieldByName('Qty').AsFloat:=1;
      FieldByName('VatAmt').asFloat:=QueryPatientTest.FieldByName('Vat').asFloat;
      FieldByName('TestPrice').asFloat:=QueryPatientTest.FieldByName('NUnitCost').asFloat*FieldByName('Qty').AsFloat+FieldByName('VatAmt').AsFloat;
      FieldByName('PayStatus').asString:='YES';//QueryPatientTest.FieldByName('PayStatus').asString;
      FieldByName('Special').asString:=QueryPatientTest.FieldByName('Special').asString;
      FieldByName('WorkingStatus').asString:=QueryPatientTest.FieldByName('WorkingStatus').asString;
      Post;
      QueryPatientTest.Next;
    End;
  End;
  {IF DMhospital.TablePatientDetailTest.Locate('PatientID',pi_PatientId,[]) Then
  Begin
  End;}
End;

Procedure TFormInpMain.FillDefDate;
Begin
     FillDate:=True;
     With TablePTTestTemp Do
     Begin
          IF Not Active Then Active:=True;
          Append;
          FieldByName('TestDate').asString:=DateEditX_TodayBilling.ADDateAsText;
          Post;
          DBGridPatientTest.SetFocus;
          DBGridPatientTest.SelectedIndex:=2;
     End;
End;

Function TFormInpMain.PatientType:String;
Begin
  With QueryInpatientSearch Do
  Begin
    IF FieldByName('ISEmergency').AsString='Y' Then
      PatientType:='Emergency'
    Else IF FieldByName('ISInpatient').AsString='T' Then
      PatientType:='Inpatient'
    Else
      PatientType:='Outpatient';
  End;
End;

procedure TFormInpMain.CheckDep(DbGName:TdbGrid;AnyCode:String);
Begin
  With QueryDepartment Do
  Begin
    IF Not Active Then Active:=True;
    IF Locate('DepCode',AnyCode,[])Then
    Begin
      IF Not TablePTTestTemp.Active Then TablePTTestTemp.Active:=True;
      TablePTTestTemp.Edit;
      DbGName.SelectedField.Text:=FieldByName('DepCode').asString;
      DepCode:=FieldByName('DepCode').asString;
      DbGName.SelectedIndex:=DbGName.SelectedIndex+1;
    End
    Else
    Begin
      With FrmCode Do
      Begin
        DepCode:=AnyCode;
        CheckDep:=0;
        ShowModal;
      End;
    End;
  End;
End;

Procedure TFormInpMain.BillRefund;
Var DFBillNo:String;
    DNTotalAmount,DVatAmt,DDis:Double;
Begin
  Try
    DFBillNo:=QueryBillMaster.FieldByName('BillNo').ASString;
    DNTotalAmount:=StrToFloat(QueryBillMaster.FieldByName('Total').ASString);
    DVatAmt:=QueryBillMaster.FieldByName('Tax').AsFloat;
    DDis:=QueryBillMaster.FieldByName('Discount').AsFloat;

    with Query_Process do
    Begin
       Close;
       sql.Clear;
       sql.add(' Update BillDetail Set CancelStatus=''Y'' where BillNo='+#39+DFBillNo+#39);
       ExecSQL;
    End;
  With QueryUpDatePatientData Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      ADD('SELECT * from BillMaster');
      ADD('Where BillNo='+Chr(39)+DFBillNo+Chr(39));
    End;
    Open;
    {
    IF FieldByName('Discount').AsFloat>0 Then
    Begin
      Showmessage('Would you mind ! cancel by manual');
      QueryUpDatePatientData.Close;
      Exit;
    End;
    }

  End;
  With QueryUpDatePatientData Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      ADD('Insert into Billcancelmaster (BILLNO,BILLDATE,TOTAL,GRANDTOTAL,TAX,Dis,BILLTYPE,MODIFYBY,MODIFYDATE)');
      ADD('values (');
      ADD(Chr(39)+QueryBillMaster.FieldByName('BillNo').ASString+Chr(39)+',');
      ADD(Chr(39)+QueryBillMaster.FieldByName('BillDate').ASString+Chr(39)+',');
      ADD(FloatToStr(DNTotalAmount)+',');
      ADD(FloatToStr(DNTotalAmount)+',');
      ADD(FloatToStr(DVatAmt)+',');
      ADD(FloatToStr(DDis)+',');
      ADD(Chr(39)+'REFUND'+Chr(39)+',');
      ADD(IntToStr(gi_UserID)+',');
      ADD(Chr(39)+DateEditX_TodayIPView.ADDateAsText+Chr(39)+')');
      //SaveToFile('C:\Cancel.txt');
      ExecSQL;
    End;
  End;
  With QueryUpDatePatientData Do
  Begin
    Close;
    With SQL Do
    Begin
    Clear;
    ADD('Insert into billcancel values (');
    ADD(IntToStr(0)+',');
    ADD(Chr(39)+QueryBillMaster.FieldByName('BillNo').ASString+Chr(39)+',');
    ADD(IntToStr(0)+',');
    ADD(IntToStr(QueryBillMaster.FieldByName('PatientID').ASInteger)+',');
    ADD(IntToStr(0)+',');
    ADD(Chr(39)+'REFUND'+Chr(39)+',');
    ADD(Chr(39)+'REFUND'+Chr(39)+',');
    ADD(FloatToStr(DNTotalAmount)+',');//*QueryBillMaster.FieldByName('Qty').ASInteger)+',');
    ADD(Chr(39)+QueryBillMaster.FieldByName('BillDate').ASString+Chr(39)+',');
    ADD(IntToStr(1)+',');
    ADD(FloatToStr(DVatAmt)+',');
    ADD(FloatToStr(DNTotalAmount)+',');
    ADD(IntToStr(gi_UserID)+',');
    ADD(Chr(39)+DateEditX_TodayIPView.ADDateAsText+Chr(39)+',');
    ADD(Chr(39)+ServerDate.TodaysTime+Chr(39)+',');
    ADD(FloatToStr(0)+')');
    EXECSQL;
    End;
  End;
  Except
    ShowMessage('Please try again !');
  End;
End;

Function TFormInpMain.CancelTest:Boolean;
Var li_PatientTestId:Longint;
    lf_Amount,lf_DollarAmount,lf_DollarExRate:Double;
    GTId,li_InpatientId:Integer;
Begin
    li_PatientTestId:=QueryOldPatientTest.FieldByName('PatientTestID').AsInteger;
    li_InpatientId:=QueryOldPatientTest.FieldByName('InpatientId').AsInteger;
    ps_TodaysDate:=ServerDate.TodaysDate;
    ps_TodaysTime:=ServerDate.TodaysTime;
    Try
         DMhospital.Hospital.StartTransaction;
         {   updating BillDetail for Cancelation of bill  }
         with Query_Process do
         Begin
              Close;
              sql.Clear;
              sql.Add(' Update BillDetail Set CancelStatus=''Y'',');
              sql.add(' CancelRemarks='+#39+Edit_TestCancelRemarks.Text+#39+',');
              sql.ADD(' CancelBy='+IntToStr(gi_UserId)+',');
              sql.ADD(' CancelDate='+Chr(39)+ps_TodaysDate+Chr(39)+',');
              sql.ADD(' CancelTime='+Chr(39)+ps_TodaysTime+Chr(39));
              //sql.add(' CancelRemarks='+#39+StringReplace(Edit_BillCancelRemarks.Text,'''','''''',[rfReplaceAll])+#39);
              sql.add(' where BillDetailId='+IntToStr(QueryOldPatientTest.FieldBYName('BillDetailId').AsInteger));
              ExecSQL;
         End;

         {   deleting cancel test items }
         With QueryCancelTest Do
         Begin
              Close;
              sql.Clear;
              sql.Add('Delete from PatientTest');
              sql.Add('where PatientTestID='+IntToStr(li_PatientTestId));
              EXECSQL;
         End;



         { Cash Refund }
         IF QueryOldPatientTest.FieldByName('ExtraCharge').AsFloat > 0 Then
         Begin
               { SaveBillMaster(PatientId,UserId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat:Double;
                             BillNo,RateType,TodaysDate,TodaysTime,PayType,BillType:String);   }
               ps_MyBillNo:=GetNextBillNo('BillMaster','BillNo','RF',ps_TodaysDate);
               lf_Amount:=QueryOldPatientTest.FieldByName('TotalAmount').AsFloat;
               lf_DollarAmount:=QueryOldPatientTest.FieldByName('DollarAmt').AsFloat;
               lf_DollarExRate:=QueryOldPatientTest.FieldByName('DollarExRate').AsFloat;
               SaveBillMaster(
                     pi_PatientId,gi_UserId,0,0,0,lf_Amount,lf_Amount,0,ps_MyBillNo,
                     'GEN',ps_TodaysDate, ps_TodaysTime,'CASH','DEPOSIT'  );


               ps_BillType:='D';

               { SaveDeposit(IPDId,PatientID,InPatientId,UserId:Integer; DepAmount,RefAmount,DollarAmount,DollarExRate:Double; BillNo,
                    DepositDate,DepositTime,DepType,DepStatus,Remarks,RefBillNo:String);  }

               GTId:=GetNewLongIntKeyValue('IPDeposit','IPDId');
               SaveDeposit(
                     GTId,pi_PatientId,li_InpatientId,gi_UserId,0,0,lf_Amount,
                     lf_DollarAmount,lf_DollarExRate,ps_MyBillNo,ps_TodaysDate,
                     ps_TodaysTime,'INPATIENT TEST REFUND','REF','',QueryOldPatientTest.FieldByName('BillNo').AsString,'','');


               { Update Extra Charge(Adv. Amt.)  Of BillMaster }
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update BillMaster Set ExtraCharge='+FloatToStr(QueryOldPatientTest.FieldByName('ExtraCharge').AsFloat-lf_Amount));
                    sql.add(' where BillNo='+#39+QueryOldPatientTest.FieldByName('BillNo').AsString+#39);
                    ExecSQL;
               End;
         End;

         IF gs_IsDoctorFractionActive='Y' Then
         Begin
              With Query_Process do
              Begin
                   Close;
                   sql.Clear;
                   sql.add(' Update DrProcedures set IsCancel=''Y''');
                   sql.add(' where BillDetailId='+IntToStr(QueryOldPatientTest.FieldBYName('BillDetailId').AsInteger));
                   ExecSQL;
              End;
         End;
         DMhospital.Hospital.Commit;
         Frm_Message.ShowModal;
         Result:=True;
    except
         DMhospital.Hospital.Rollback;
         ShowMessage(' Test cancel failed.');
         Result:=False;
    End;
End;

function TFormInpMain.IsDiscountMoreThan100():Boolean;
Var  ls_Result:Boolean;
begin
     With TablePTTestTemp Do
     Begin
          First;
          While Not Eof Do
          Begin
               If FieldByName('Disper').AsFloat>100 Then
               Begin
                    ls_Result:=True;
                    Last;
               End
               Else
                    ls_Result:=False;
               Next;
          End;
     End;
     Result:=ls_Result;
end;

function TFormInpMain.IsDiscount():Boolean;
Var  ls_Result:Boolean;
begin
     With TablePTTestTemp Do
     Begin
          First;
          While Not Eof Do
          Begin
               If FieldByName('Disper').AsFloat>0 Then
               Begin
                    ls_Result:=True;
                    Last;
               End
               Else
                    ls_Result:=False;
               Next;
          End;
     End;
     Result:=ls_Result;
end;

Function TFormInpMain.VatDiscountReCalculate:Boolean;
var lf_VatAmt,lf_DisPer,lf_Total,lf_DisAmount:Double;
Begin
     If( pi_SchemeId=9) And (gi_HospitalID=14) Then //HAMS-For Share Holder No charge
     Begin
          With Query_SubProcess Do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               With Sql Do
               Begin
                    Clear;
                    Add('Update PatientTestTemp.db Set CostPrice=0,Disper=0,VatAmt=0,Discount=0');
               End;
               ExecSQL;
          End;
          Exit;
     End;


     Result:=True;
     gb_IsLabItem:=False;
     TablePTTestTemp.First;
     while not TablePTTestTemp.EOF Do
     Begin
          TablePTTestTemp.Edit;
          lf_Total:=(TablePTTestTemp.FieldByName('CostPrice').AsFloat*TablePTTestTemp.FieldByName('Qty').AsFloat);
          lf_DisPer:=TablePTTestTemp.FieldByName('DisPer').AsFloat;

          IF (TablePTTestTemp.FieldByName('CostPrice').AsFloat=0) and (Trim(TablePTTestTemp.FieldByName('TestName').AsString)<>'') Then
          Begin
               MessageDlg('Unit Cost Cannot be Zero. Plz Check Unit Cost of " '+TablePTTestTemp.FieldByName('TestName').AsString+' ".',mtWarning,[mbok],0);
               Result:=False;
               Break;
          End;

          IF (TablePTTestTemp.FieldByName('Qty').AsFloat=0) and (Trim(TablePTTestTemp.FieldByName('TestName').AsString)<>'') Then
          Begin
               MessageDlg('Quantity Cannot be Zero. Plz Check Quantity of " '+TablePTTestTemp.FieldByName('TestName').AsString+' ".',mtWarning,[mbok],0);
               Result:=False;
               Break;
          End;

          //IF (TablePTTestTemp.FieldByName('DisPer').AsFloat > 0) Then
          IF (TablePTTestTemp.FieldByName('DisPer').AsFloat > 0) Or (TablePTTestTemp.FieldByName('Qty').AsFloat > 0) Then  //By Amrit For Vat
          Begin
               IF gs_GovtTaxRule='TAD' Then
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         IF RadioButton_IPBilling.Checked=True Then
                         Begin
                              lf_DisAmount:=RoundingAfterSecondPlace(lf_Total*lf_DisPer/100);
                              //TablePTTestTemp.FieldByName('VatAmt').AsFloat:=RoundingAfterSecondPlace((lf_Total-lf_DisAmount)*gf_VatPer/100);
                              TablePTTestTemp.FieldByName('VatAmt').AsFloat:=GetNoOfDecimalPartOfFloatNum(((lf_Total-lf_DisAmount)*gf_VatPer/100),4);
                              TablePTTestTemp.FieldByName('Discount').AsFloat:=lf_DisAmount;
                              //TablePTTestTemp.FieldByName('CostPrice').AsFloat:=RoundingAfterSecondPlace(TablePTTestTemp.FieldByName('CostPrice').AsFloat);
                              TablePTTestTemp.FieldByName('CostPrice').AsFloat:=GetNoOfDecimalPartOfFloatNum((TablePTTestTemp.FieldByName('CostPrice').AsFloat),4);
                         End
                         Else
                         Begin
                              lf_DisAmount:=RoundingAfterSecondPlace(lf_Total*lf_DisPer/100);
                              //TablePTTestTemp.FieldByName('VatAmt').AsFloat:=RoundingAfterSecondPlace((lf_Total-lf_DisAmount)*gf_VatPer/100);
                              TablePTTestTemp.FieldByName('VatAmt').AsFloat:=GetNoOfDecimalPartOfFloatNum(((lf_Total-lf_DisAmount)*gf_VatPer/100),4);
                              TablePTTestTemp.FieldByName('Discount').AsFloat:=lf_DisAmount;
                              //TablePTTestTemp.FieldByName('CostPrice').AsFloat:=RoundingAfterSecondPlace(TablePTTestTemp.FieldByName('CostPrice').AsFloat);
                              TablePTTestTemp.FieldByName('CostPrice').AsFloat:=GetNoOfDecimalPartOfFloatNum((TablePTTestTemp.FieldByName('CostPrice').AsFloat),4);
                         End;
                    End Else IF TablePTTestTemp.FieldByName('IsVatable').AsString='N' Then
                    Begin
                         TablePTTestTemp.FieldByName('DisPer').AsFloat:=0;
                         TablePTTestTemp.FieldByName('Discount').AsFloat:=0;
                    End;
               End
               Else       //TBD
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         lf_DisAmount:=Round(lf_Total*lf_DisPer/100);
                         //IF lf_DisPer=100 then
                         //TablePTTestTemp.FieldByName('VatAmt').AsFloat:=0
                         //Else
                         //TablePTTestTemp.FieldByName('VatAmt').AsFloat:=RoundingAfterSecondPlace(lf_Total*gf_VatPer/100);
                         //TablePTTestTemp.FieldByName('VatAmt').AsFloat:=GetMeExactVatAmount(lf_Total,(lf_Total*gf_VatPer/100));
                         TablePTTestTemp.FieldByName('VatAmt').AsFloat:=GetNoOfDecimalPartOfFloatNum((lf_Total*gf_VatPer/100),4);
                         TablePTTestTemp.FieldByName('Discount').AsFloat:=lf_DisAmount;
                    End Else IF TablePTTestTemp.FieldByName('IsVatable').AsString='N' Then
                    Begin
                         TablePTTestTemp.FieldByName('DisPer').AsFloat:=0;
                         TablePTTestTemp.FieldByName('Discount').AsFloat:=0;
                    End;
               End;
               TablePTTestTemp.Post;
          End;

          { at the time of billing lab no generation (sp. Case for Medicare) }
          {IF (gb_IsLabItem=False) and (gi_HospitalId=19) Then
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select IsPathologicalDep From Department ');
                    sql.add(' where DepId='+IntToStr(TablePTTestTemp.FieldByName('DepId').AsInteger));
                    Open;
               End;

               IF Query_Process.FieldByName('IsPathologicalDep').AsString='Y' Then
               gb_IsLabItem:=True;
          End;}
          TablePTTestTemp.Next;
     End;
End;


procedure TFormInpMain.DataProcessing;
Var ls_WorkingStatus,ls_PayStatus,ls_Special,ls_TempBillNo,ls_DepType,ps_Remarks:String;
    lf_ExtraCharge,lf_Amount:Double;
    li_RefPatientTestId, i:integer;
    QryAniD:TQuery;
Begin
     If pi_SchemeId > 0 Then
     ps_Remarks:=StringReplace(EditRemarks.Text,'''','''''',[rfReplaceAll])
     Else
     ps_Remarks:='';
     ps_RefDocCode:=VarToStr(DBLC_Doctor.KeyValue);
     IF (RadioButton_IPBilling.Checked=True) Then //and (CMBPayType.Text='CASH') Then {*** if even patient give cash that test items is save as ..}
     Begin
          ps_PayType:='CREDIT';                                                                                     {....credit(TP) bill but that amount is saved as Cash Deposit.}
          ps_BillType:='IP';
          ls_DepType:='ADV';
          lf_ExtraCharge:=StrToFloat(EditPayment.Text);
     End
     Else {  for OP  }
     Begin
          lf_ExtraCharge:=0;
          IF RB_OPAdvanceBilling.Checked=False Then
          ps_PayType:=CMBPayType.Text
          Else
          Begin
               ps_PayType:='CREDIT';
               ls_DepType:='OPA';
               lf_ExtraCharge:=StrToFloat(EditPayment.Text);
          End;

          IF CB_AddedChrgForIP.Checked=False Then
          ps_BillType:='B'
          Else // From OP Billing sometimes we do Bill for inpatient (left Items or Extra 1 Day Stay) after Financial discharge done
          ps_BillType:='IP'; // so such type of bill income goes into IP Income
     End;

     IF ps_BillingStatus='OPB' Then {*** OPB- Out patient billing, IPB- In patient Billing..}
     ls_WorkingStatus:='REG'
     Else
     ls_WorkingStatus:='InPatient';

     IF ps_BillType='B' Then
     pi_InPatientId:=0;

     Try
          DMhospital.Hospital.StartTransaction;

           { SaveBillMaster(PatientId,UserId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat:Double;
                 BillNo,RateType,BillDate,BillTime,PayType,BillType:String);   }
          ps_MyBillNo:=MakeBillNo;
          Try
              SaveBillMaster(
                    pi_PatientId,gi_UserId,lf_ExtraCharge,StrToFloat(EditDisAmt.Text),
                    StrToFloat(EditDisPer.Text),StrToFloat(EditTotal.Text),StrToFloat(Edit_GrandTotal.Text),
                    StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,
                    ps_TodaysTime,ps_PayType,ps_BillType  );
          Except

              ps_MyBillNo:=MakeBillNo;
              SaveBillMaster(
                    pi_PatientId,gi_UserId,lf_ExtraCharge,StrToFloat(EditDisAmt.Text),
                    StrToFloat(EditDisPer.Text),StrToFloat(EditTotal.Text),StrToFloat(Edit_GrandTotal.Text),
                    StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,
                    ps_TodaysTime,ps_PayType,ps_BillType  );

          End;

          //ps_LabNo:=gs_LabNo;
          If (pi_SchemeId > 0) And (gi_HospitalID In [14,19]) Then  //14-HAMS,19 - Medicare
          Begin
               UpdateStringFieldInTable('BillMaster','Remarks','BillNo',ps_MyBillNo,ps_Remarks);
          End;


          { updating patient test }
          TablePTTestTemp.First;
          While Not TablePTTestTemp.Eof Do
          Begin
               IF (TablePTTestTemp.FieldByName('TestNameCode').asString='') Then
               TablePTTestTemp.Next
               Else
               Begin
                    IF TablePTTestTemp.FieldByName('PayStatus').asString='YES' Then
                    Begin
                         ls_PayStatus:='PAID';
                         ls_Special:='TRUE';
                    End Else IF TablePTTestTemp.FieldByName('PayStatus').asString='FREE' Then
                    Begin
                         ls_PayStatus:='FREE';
                         ls_Special:='TRUE';
                    End
                    Else
                    Begin
                         ls_PayStatus:='UNPAID';
                         ls_Special:=TablePTTestTemp.FieldByName('Special').asString;
                    End;
                    pi_PatientTestID:=TablePTTestTemp.FieldByName('PatientTestID').asInteger;

                    IF pi_PatientTestID <= 0 Then {*** if pi_PatientTestID=0 means new items adding.....}
                    Begin
                         {      SavePatientTest(PatientTestID,RefPatientTestId,PatientID,InPatientId,DepID,TestNameID:Integer; TestAmount:Double;
                                 BillNo,DepCode,TestNameCode,TestDate,PayStatus,Special,WorkingStatus:String)    }

                         IF (TablePTTestTemp.FieldByName('LineEdit').asString<>'N') Then // N- None Inve. Item , T - Patho. Line Report , F- Edit Report Hosto.
                         Begin
                              IF (TablePTTestTemp.FieldByName('LineEdit').asString='T') and (TablePTTestTemp.FieldByName('Qty').AsFloat > 1) Then
                              Begin
                                   For i:=1 To TablePTTestTemp.FieldByName('Qty').AsInteger Do
                                   Begin
                                        Try
                                           //pi_PatientTestID:=ServerDate.GetNextVal('PatientTestID',False);
                                           pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                           SavePatientTest(
                                              pi_PatientTestID, 0, pi_PatientId, pi_InPatientId,
                                              TablePTTestTemp.FieldByName('DepID').asInteger,
                                              TablePTTestTemp.FieldByName('TestNameID').asInteger,
                                              TablePTTestTemp.FieldByName('TestPrice').asFloat,
                                              ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                              TablePTTestTemp.FieldByName('TestNameCode').asString,
                                              ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                        Except
                                           pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                           SavePatientTest(
                                              pi_PatientTestID,0, pi_PatientId, pi_InPatientId,
                                              TablePTTestTemp.FieldByName('DepID').asInteger,
                                              TablePTTestTemp.FieldByName('TestNameID').asInteger,
                                              TablePTTestTemp.FieldByName('TestPrice').asFloat,
                                              ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                              TablePTTestTemp.FieldByName('TestNameCode').asString,
                                              ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                        End;

                                        { Package Test Items Posting }
                                        IF TablePTTestTemp.FieldByName('IsPackageTest').asString='Y' Then
                                        Begin
                                             li_RefPatientTestId:=pi_PatientTestID;
                                             With Query_TempProcess do
                                             Begin
                                                  Close;
                                                  DatabaseName:=gs_TempPath;
                                                  sql.Clear;
                                                  sql.add(' Select * From PackageTest.db where MTestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').asString+#39);
                                                  Open;
                                                  First;
                                                  while Not Eof Do
                                                  Begin
                                                       Try
                                                          pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                                          SavePatientTest(
                                                                  pi_PatientTestID,li_RefPatientTestId, pi_PatientId, pi_InPatientId,
                                                                  Query_TempProcess.FieldByName('DepID').asInteger,
                                                                  Query_TempProcess.FieldByName('TestNameID').asInteger,
                                                                  Query_TempProcess.FieldByName('TestPrice').asFloat,
                                                                  ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                                                  Query_TempProcess.FieldByName('TestNameCode').asString,
                                                                  ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                                       Except
                                                          pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                                          SavePatientTest(
                                                                  pi_PatientTestID, li_RefPatientTestId, pi_PatientId, pi_InPatientId,
                                                                  Query_TempProcess.FieldByName('DepID').asInteger,
                                                                  Query_TempProcess.FieldByName('TestNameID').asInteger,
                                                                  Query_TempProcess.FieldByName('TestPrice').asFloat,
                                                                  ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                                                  Query_TempProcess.FieldByName('TestNameCode').asString,
                                                                  ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                                       End;
                                                       Query_TempProcess.Next;
                                                  End;
                                             End;
                                             pi_PatientTestID:=li_RefPatientTestId;
                                        End;
                                   End;
                              End
                              Else // Single Rows Save In Patient Test
                              Begin
                                   Try
                                      //pi_PatientTestID:=ServerDate.GetNextVal('PatientTestID',False);
                                      pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                      SavePatientTest(
                                         pi_PatientTestID, 0, pi_PatientId, pi_InPatientId,
                                         TablePTTestTemp.FieldByName('DepID').asInteger,
                                         TablePTTestTemp.FieldByName('TestNameID').asInteger,
                                         TablePTTestTemp.FieldByName('TestPrice').asFloat,
                                         ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                         TablePTTestTemp.FieldByName('TestNameCode').asString,
                                         ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                   Except
                                      pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                      SavePatientTest(
                                         pi_PatientTestID,0, pi_PatientId, pi_InPatientId,
                                         TablePTTestTemp.FieldByName('DepID').asInteger,
                                         TablePTTestTemp.FieldByName('TestNameID').asInteger,
                                         TablePTTestTemp.FieldByName('TestPrice').asFloat,
                                         ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                         TablePTTestTemp.FieldByName('TestNameCode').asString,
                                         ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                   End;

                                   { Package Test Items Posting }
                                   IF TablePTTestTemp.FieldByName('IsPackageTest').asString='Y' Then
                                   Begin
                                        li_RefPatientTestId:=pi_PatientTestID;
                                        With Query_TempProcess do
                                        Begin
                                             Close;
                                             DatabaseName:=gs_TempPath;
                                             sql.Clear;
                                             sql.add(' Select * From PackageTest.db where MTestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').asString+#39);
                                             Open;
                                             First;
                                             while Not Eof Do
                                             Begin
                                                  Try
                                                     pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                                     SavePatientTest(
                                                             pi_PatientTestID,li_RefPatientTestId, pi_PatientId, pi_InPatientId,
                                                             Query_TempProcess.FieldByName('DepID').asInteger,
                                                             Query_TempProcess.FieldByName('TestNameID').asInteger,
                                                             Query_TempProcess.FieldByName('TestPrice').asFloat,
                                                             ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                                             Query_TempProcess.FieldByName('TestNameCode').asString,
                                                             ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                                  Except
                                                     pi_PatientTestID:=GetNewLongIntKeyValue('PatientTest','PatientTestID');
                                                     SavePatientTest(
                                                             pi_PatientTestID, li_RefPatientTestId, pi_PatientId, pi_InPatientId,
                                                             Query_TempProcess.FieldByName('DepID').asInteger,
                                                             Query_TempProcess.FieldByName('TestNameID').asInteger,
                                                             Query_TempProcess.FieldByName('TestPrice').asFloat,
                                                             ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                                             Query_TempProcess.FieldByName('TestNameCode').asString,
                                                             ps_TodaysDate,ps_TodaysTime,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                                                  End;
                                                  Query_TempProcess.Next;
                                             End;
                                        End;
                                        pi_PatientTestID:=li_RefPatientTestId;
                                   End;
                              End;
                         End;
                    End
                    Else
                    Begin
                         {     SavePatientTest(PatientTestID,PatientID,InPatientId,DepID,TestNameID:Integer; TestAmount:Double;
                                   BillNo,DepCode,TestNameCode,TestDate,PayStatus,Special,WorkingStatus:String)    }

                         IF b_IsPathoDueClear=False Then // Due Clared entered from pathology (left item from billing)
                         Begin
                              UpdatePatientTest(
                                 pi_PatientTestID, pi_PatientId, pi_InPatientId,
                                 TablePTTestTemp.FieldByName('DepID').asInteger,
                                 TablePTTestTemp.FieldByName('TestNameID').asInteger,
                                 TablePTTestTemp.FieldByName('TestPrice').asFloat,
                                 ps_MyBillNo, TablePTTestTemp.FieldByName('DepCode').asString,
                                 TablePTTestTemp.FieldByName('TestNameCode').asString,
                                 ps_TodaysDate,ls_PayStatus, ls_Special, ls_WorkingStatus   );
                         End
                         Else // sp. Case for Medicare
                         Begin
                              With Query_Process do
                              Begin
                                   Close;
                                   sql.Clear;
                                   sql.add(' Update PatientTest set BillNo='+#39+ps_MyBillNo+#39);
                                   sql.add(' where PatientTestId='+IntToStr(pi_PatientTestID));
                                   ExecSQL;
                              End;

                              IF ps_PathoDueTestCode<>'' Then
                              ps_PathoDueTestCode:=ps_PathoDueTestCode+','''+TablePTTestTemp.FieldByName('TestNameCode').asString+''''
                              Else
                              ps_PathoDueTestCode:=''''+TablePTTestTemp.FieldByName('TestNameCode').asString+'''';
                         End;
                    End;


                    IF gs_IsDoctorCompForBilling='Y' Then
                    ps_DocCode:=TablePTTestTemp.FieldByName('DocCode').AsString;

                        {     Saving billdetail       }
                        {     SaveBillDetail(PatientId,InPatientId,SchemeId,CommunityId,PatientTestId,DepID,ClinicalDepId,UserId:Integer;
                                  BillNo,RateType,DepCode,TestNameCode,MemberNo,PayType,BillType,BillDate,BillTime:String;
                                  Quatity,CurQty,VatAmt,CurVatAmt,Amount,TotalAmount,Dis,DocCode,RefDocCode,LabNo,IsOT:Double);        }
                    IF ps_RateType<>'FRG' Then
                    Begin
                         Try
                              SaveBillDetail(
                                    pi_PatientId,pi_InPatientId,pi_SchemeId,pi_CommunityId,pi_PatientTestID,
                                    TablePTTestTemp.FieldByName('DepID').asInteger,pi_ClinicalDepId,gi_UserId,
                                    ps_MyBillNo,ps_RateType, TablePTTestTemp.FieldByName('TestNameCode').AsString{TablePTTestTemp.FieldByName('DepCode').AsString}
                                    ,TablePTTestTemp.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,
                                    ps_BillType,ps_TodaysDate,ps_TodaysTime,TablePTTestTemp.FieldByName('Qty').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('CostPrice').AsFloat,
                                    TablePTTestTemp.FieldByName('TestPrice').AsFloat,TablePTTestTemp.FieldByName('DisPer').AsFloat,
                                    ps_DocCode,ps_RefDocCode,ps_LabNo,TablePTTestTemp.FieldbyName('IsOperational') .AsString);
                              If TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                              UpdatePackageTestInBillDetail(ps_MyBillNo,TablePTTestTemp.FieldByName('TestNameCode').AsString);
                         Except
                              SaveBillDetail(
                                    pi_PatientId,pi_InPatientId,pi_SchemeId,pi_CommunityId,pi_PatientTestID,
                                    TablePTTestTemp.FieldByName('DepID').asInteger,pi_ClinicalDepId,gi_UserId,
                                    ps_MyBillNo,ps_RateType, TablePTTestTemp.FieldByName('TestNameCode').AsString{TablePTTestTemp.FieldByName('DepCode').AsString}
                                    ,TablePTTestTemp.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,
                                    ps_BillType,ps_TodaysDate,ps_TodaysTime,TablePTTestTemp.FieldByName('Qty').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('CostPrice').AsFloat,
                                    TablePTTestTemp.FieldByName('TestPrice').AsFloat,TablePTTestTemp.FieldByName('DisPer').AsFloat,
                                    ps_DocCode,ps_RefDocCode,ps_LabNo,TablePTTestTemp.FieldbyName('IsOperational') .AsString);
                              If TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                              UpdatePackageTestInBillDetail(ps_MyBillNo,TablePTTestTemp.FieldByName('TestNameCode').AsString);
                         End;
                    End
                    Else
                    Begin
                         Try
                              SaveBillDetailFRG(
                                    pi_PatientId,pi_InPatientId,pi_SchemeId,pi_CommunityId,pi_PatientTestID,
                                    TablePTTestTemp.FieldByName('DepID').asInteger,pi_ClinicalDepId,gi_UserId,
                                    ps_MyBillNo,ps_RateType, TablePTTestTemp.FieldByName('TestNameCode').AsString{TablePTTestTemp.FieldByName('DepCode').AsString}
                                    ,TablePTTestTemp.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,
                                    ps_BillType,ps_TodaysDate,ps_TodaysTime,TablePTTestTemp.FieldByName('Qty').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('CostPrice').AsFloat,
                                    TablePTTestTemp.FieldByName('TestPrice').AsFloat,TablePTTestTemp.FieldByName('DisPer').AsFloat,
                                    TablePTTestTemp.FieldByName('CostPrice').AsFloat, TablePTTestTemp.FieldByName('VatAmt').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('TestPrice').AsFloat,
                                    pf_DollarExRate,ps_DocCode,ps_RefDocCode,ps_LabNo,TablePTTestTemp.FieldbyName('IsOperational') .AsString);
                              If TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                              UpdatePackageTestInBillDetail(ps_MyBillNo,TablePTTestTemp.FieldByName('TestNameCode').AsString);
                         Except
                              SaveBillDetailFRG(
                                    pi_PatientId,pi_InPatientId,pi_SchemeId,pi_CommunityId,pi_PatientTestID,
                                    TablePTTestTemp.FieldByName('DepID').asInteger,pi_ClinicalDepId,gi_UserId,
                                    ps_MyBillNo,ps_RateType, TablePTTestTemp.FieldByName('TestNameCode').AsString{TablePTTestTemp.FieldByName('DepCode').AsString}
                                    ,TablePTTestTemp.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,
                                    ps_BillType,ps_TodaysDate,ps_TodaysTime,TablePTTestTemp.FieldByName('Qty').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('CostPrice').AsFloat,
                                    TablePTTestTemp.FieldByName('TestPrice').AsFloat,TablePTTestTemp.FieldByName('DisPer').AsFloat,
                                    TablePTTestTemp.FieldByName('CostPrice').AsFloat, TablePTTestTemp.FieldByName('VatAmt').AsFloat,
                                    TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('TestPrice').AsFloat,
                                    pf_DollarExRate,ps_DocCode,ps_RefDocCode,ps_LabNo,TablePTTestTemp.FieldbyName('IsOperational') .AsString);
                              If TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                              UpdatePackageTestInBillDetail(ps_MyBillNo,TablePTTestTemp.FieldByName('TestNameCode').AsString);
                         End;
                    End;

                    // For Doctor Fraction
                    IF TablePTTestTemp.FieldByName('IsFractionableItem').AsString='Y' Then//(gs_IsDoctorFractionActive='Y') Then
                    SaveDoctorFraction;
               End;
               TablePTTestTemp.Next;
          End;

          IF b_IsPathoDueClear=True Then // Due Clared entered from pathology (left item from billing)
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Update BillMissedPathoItem set BillClearedBy='+IntToStr(gi_UserId));
                    sql.add(' ,BillClearDate='+#39+ps_TodaysDate+#39+',BillClearTime='+#39+ps_TodaysTime+#39);
                    sql.add(' Where BillNo In ('+ps_PathoDueBill+') and Service In ('+ps_PathoDueTestCode+')');
                    sql.add(' and PatientId='+IntToStr(pi_PatientId));
                    sql.saveToFile('C:\DueClear.Txt');
                    ExecSQL;
               End;
          End;


          { Procedure Billing  }
          IF (ps_ProcedureBill='Y') and (gi_HospitalId In [14,19]) Then // Sp. For HAMS
          Begin
               IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
               Begin
                    lf_Amount:=QryProcedureDep.FieldByName('Total').AsFloat;

                    ls_TempBillNo:=GetNextBillNo('BillMaster','BillNo','RD',ps_TodaysDate);
                    SaveBillMaster(
                             pi_PatientId,gi_UserId,0,0,0,lf_Amount,lf_Amount,0,ls_TempBillNo,
                             'GEN',ps_TodaysDate, ps_TodaysTime,ps_PayType,ps_BillType  );


                    ps_BillType:='D';

                    {SaveDeposit(IPDId,PatientID,InPatientId,UserId:Integer; DepAmount,RefAmount,DollarAmount,DollarExRate:Double; BillNo,
                              DepositDate,DepositTime,DepType,DepStatus,Remarks,RefBillNo:String);  }


                    pi_IpDepositId:=GetNewLongIntKeyValue('IPDeposit','IPDId');
                    SaveProcedureDeposit(
                              pi_IpDepositId,pi_PatientId,pi_InPatientId,gi_UserId,pi_IVFNo,0,lf_Amount,
                              0,0,ls_TempBillNo,ps_TodaysDate,ps_TodaysTime,'PROCED. DEPOSIT REFUND','REF',
                              'PROCED. DEPOSIT REFUND',ps_MyBillNo,'Y');
                    //Making Remaining Deposit Dep Clear
                    With Query_SubProcess Do
                    Begin
                         Close;
                         DatabaseName:=gs_DatabaseName;
                         With Sql Do
                         Begin
                              Clear;
                              Add('Update IPDeposit Set');
                              Add(' IsProcedureDepClear=''Y''');
                              Add(' Where IsProcedureDepClear=''N'' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+ps_MyBillNo+Chr(39));
                              Add(' And ProcedureNo='+IntToStr(pi_IVFNO));
                              Add(' And PatientID='+IntToStr(pi_PatientId));
                              Add(' And InPatientID=0');
                         End;
                         ExecSQL;
                    End;
               End;
          End;

          { IP Deposit/Advance Section }
          LabelBillNo.Caption:=ps_MyBillNo;
          IF (StrToFloat(EditPayment.Text) > 0) and ((RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True))  Then
          Begin
               {   SaveBillMaster(PatientId,UserId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat:Double;
                       BillNo,RateType,TodaysDate,TodaysTime,PayType,BillType:String);   }
               ls_TempBillNo:=ps_MyBillNo;
               ps_BillType:='DEPOSIT';
               ps_PayType:='CASH';
               ps_MyBillNo:=MakeBillNo;

               Try
                    SaveBillMaster(
                         pi_PatientId,gi_UserId,0,StrToFloat(EditDisAmt.Text),StrToFloat(EditDisAmt.Text),
                         StrToFloat(EditPayment.Text),StrToFloat(EditPayment.Text)+StrToFloat(Edit_ExDuty.Text),
                         StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,
                         ps_TodaysTime,ps_PayType,ps_BillType  );



               Except
                    ps_MyBillNo:=MakeBillNo;
                    SaveBillMaster(
                         pi_PatientId,gi_UserId,0,StrToFloat(EditDisAmt.Text),StrToFloat(EditDisAmt.Text),
                         StrToFloat(EditPayment.Text),StrToFloat(EditPayment.Text)+StrToFloat(Edit_ExDuty.Text),
                         StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,
                         ps_TodaysTime,ps_PayType,ps_BillType  );

               End;

               ps_BillType:='D';
               {     saving deposit    }
               pi_IpDepositId:=GetNewLongIntKeyValue('IPDeposit','IPDId');
               {  SaveDeposit(IPDId,PatientID,InPatientId,UserId:Integer; DepAmount,RefAmount:Double;
                       BillNo,DepositDate,DepositTime,DepType,Remarks,RefBillNo:String);    }
               Try
                    SaveDeposit(
                       pi_IpDepositId,pi_PatientId,pi_InPatientId,gi_UserId,0,StrToFloat(EditPayment.Text),0,
                       pf_DollarAmount,pf_DollarExRate, ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,
                       'HOSPITAL SERVICE CHARGE',ls_DepType,'',LabelBillNo.Caption,'','');
               Except
                    pi_IpDepositId:=GetNewLongIntKeyValue('IPDeposit','IPDId');
                    SaveDeposit(
                       pi_IpDepositId,pi_PatientId,pi_InPatientId,gi_UserId,0,StrToFloat(EditPayment.Text),0,
                       pf_DollarAmount,pf_DollarExRate,ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,
                       'HOSPITAL SERVICE CHARGE',ls_DepType,'',LabelBillNo.Caption,'','');
               End;
          End;

          DMhospital.Hospital.Commit;
          b_SaveSuccess:=True;
          Frm_Message.Showmodal;
          BtnSave.Enabled:=False;
     Except
          DMhospital.Hospital.Rollback;
          b_SaveSuccess:=False;
          MessageDlg('Failure to save data , Please try again or contact with system administrator.',mtInformation,[mbok],0);
          Exit;
     End;

     IF b_SaveSuccess=True Then
     Begin
          TablePTTestTemp.DatabaseName:=gs_TempPath;
          TablePTTestTemp.Close;
          TablePTTestTemp.EmptyTable;
          TablePTTestTemp.Open;
          b_IsPathoDueClear:=False;
     End;

     IF (StrToFloat(EditPayment.Text) > 0) and ((RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)) Then //and (CMBPayType.Text='CASH') Then
     Begin
          LabelDepBillNo.Visible:=True;
          LabelDepBillNo.Caption:=ps_MyBillNo;
          LabelDepBillNoCap.Visible:=True;
          LabelDepBillNoCap.Caption:='Deposit Bill No :';
          ps_MyBillNo:=ls_TempBillNo;
     End;
End;



Procedure TFormInpMain.SaveDoctorFraction;
Var li_BAECId:Integer;
    ls_DocCode:String;
    lf_FrctRate,lf_FrctAmt,lf_DisPer,lf_CostPrice:Double;
Begin
     With Query_IsTestDeptInCommSetup Do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select DepId,TestNameId From DoctorCommession Where ');
          sql.add(' DepId='+IntToStr(TablePTTestTemp.FieldByName('DepID').AsInteger));
          Open;
          pi_DocFraDepId:=Query_IsTestDeptInCommSetup.FieldByName('DepId').AsInteger
     End;

     //IF (TablePTTestTemp.FieldbyName('IsOperational') .AsString='Y') Then
     IF (TablePTTestTemp.FieldbyName('IsFractionableItem') .AsString='Y') Then
     Begin
          With Query_TempProcess Do
          Begin
               Close;
               Sql.Clear;
               Sql.Add(' Select * From DrOperation.DB ');
               Sql.Add(' Where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
               First;
               while not Query_TempProcess.EOF Do
               Begin
                         {   DrProcedures(DocCode:String;DrComID,PositionWiseCommId,PatientId,InPatientID,BillDetailId:Integer;TestNameCode,
                                 BillNo,BillDate,BillType,IsFractionPropWithDisPer,IsHospitalPart,AddAmtType,IsOperation:String;
                                 DocRatePer,DocCommAmt,AddedPercent,AddedAmt,DisPer,Qty,UnitTestCost:Double); }

                         IF Trim(Query_TempProcess.FieldByName('DrCode').AsString)<>'' Then
                         ls_DocCode:=Query_TempProcess.FieldByName('DrCode').AsString
                         Else
                         ls_DocCode:='HOS01';

                         IF (ps_DocCode<>'HOS01') and (ls_DocCode='HOS01') Then //ps_DocCode -This DocCode Save in billdetail.
                         Begin
                              With Query_TempSubProcess do
                              Begin
                                   Close;
                                   DatabaseName:=gs_TempPath;
                                   Sql.Clear;
                                   Sql.Add(' Select * From DrOperation.DB ');
                                   Sql.Add(' Where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                                   sql.Add(' and IsFixedPersonForComm=''N''');
                                   Open;
                              End;

                              IF Query_TempSubProcess.RecordCount=1 Then
                              ls_DocCode:=ps_DocCode;
                         End;


                         IF (Trim(Query_TempProcess.FieldByName('Description').AsString)='REFERRAL DOCTOR') and (DBLC_Doctor.keyValue<>NULL) Then
                         ls_DocCode:=DBLC_Doctor.keyValue;

                         lf_FrctRate:=Query_TempProcess.FieldbyName('DocRatePer') .AsFloat;

                         //IF ps_RateType<>'FRG' Then
                         lf_FrctAmt:=Query_TempProcess.FieldbyName('DocAmount') .AsFloat;
                         //Else
                         //lf_FrctAmt:=Query_TempProcess.FieldbyName('DocAmount') .AsFloat*2;

                         IF (Trim(Query_TempProcess.FieldByName('Description').AsString)='ANESTHSIA')
                         and (gi_HospitalId=19) Then // 19 - Medicare
                         Begin
                              {    Info : Above 12000= 15% - 300
                                   8000 - 12000 = 15% - 200
                                   below  8000  = 15% - 100       }

                              IF Query_TempProcess.FieldbyName('DocRatePer') .AsFloat=15 Then
                              Begin
                                   lf_FrctRate:=Query_TempProcess.FieldbyName('DocRatePer') .AsFloat;
                                   lf_CostPrice:=TablePTTestTemp.FieldByName('CostPrice').AsFloat;
                                   IF ps_RateType<>'FRG' Then
                                   Begin
                                        IF lf_CostPrice > 12000 Then
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-300
                                        Else IF (lf_CostPrice >= 8000) and (lf_CostPrice <=1200) Then
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-200
                                        Else
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-100;
                                        lf_FrctRate:=GetNoOfDecimalPartOfFloatNum((lf_FrctAmt/lf_CostPrice)*100,4);
                                   End
                                   Else
                                   Begin
                                        IF lf_CostPrice > 24000 Then
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-300
                                        Else IF (lf_CostPrice >= 16000) and (lf_CostPrice <=2400) Then
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-200
                                        Else
                                        lf_FrctAmt:=(lf_CostPrice*0.15)-100;
                                        lf_FrctRate:=GetNoOfDecimalPartOfFloatNum((lf_FrctAmt/lf_CostPrice)*100,4);
                                   End;
                              End;
                         End;



                         IF TablePTTestTemp.FieldByName('IsDiscountable').AsString='Y' Then // IF item is discountable then only frct. should be discountable.
                         Begin
                              IF Query_TempProcess.FieldbyName('IsFractionPropWithDisPer') .AsString='Y' Then
                              lf_DisPer:=TablePTTestTemp.FieldByName('DisPer').AsFloat
                              Else
                              lf_DisPer:=0;
                         End
                         Else
                         lf_DisPer:=0;


                         DrProcedures(ls_DocCode,Query_TempProcess.FieldbyName('DocId') .AsInteger,
                              Query_TempProcess.FieldByName('PositionWiseCommId').AsInteger,
                              pi_PatientId,pi_InpatientId,gi_BillDetailId,
                              TablePTTestTemp.FieldByName('DepId').AsInteger,gi_UserId,
                              TablePTTestTemp.FieldByName('TestNameCode').AsString,
                              ps_MyBillNo,ps_TodaysDate,ps_BillType,ps_PayType,
                              Query_TempProcess.FieldbyName('IsFractionPropWithDisPer') .AsString,
                              Query_TempProcess.FieldbyName('IsHospitalPart') .AsString,
                              Query_TempProcess.FieldbyName('AddAmtType') .AsString,
                              Query_TempProcess.FieldbyName('IsOperation') .AsString,
                              '',ps_TodaysDate,ps_TodaysTime,
                              lf_FrctRate,lf_FrctAmt,
                              Query_TempProcess.FieldbyName('AddedPercent') .AsFloat,
                              RoundingAfterSecondPlace(Query_TempProcess.FieldbyName('AddedAmt') .AsFloat),
                              lf_DisPer,
                              TablePTTestTemp.FieldByName('Qty').AsFloat,
                              TablePTTestTemp.FieldByName('CostPrice').AsFloat);
                    Query_TempProcess.Next;
               End;
          End;

          With Query_TempProcess do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select Sum(AddedAmt) as AddedAmt From DrOperation.DB where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
          End;

          { Update BillDetail }
          IF Query_TempProcess.FieldByName('AddedAmt').AsFloat > 0 Then
          Begin
               li_BAECId:=GetNewLongIntKeyValue('BeforeAddExtraChargeLog','BAECId');
               With Query_SubProcess do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Insert Into BeforeAddExtraChargeLog(BAECId,BillDetailId,PatientId,InpatientId,');
                    sql.add(' BillNo,TestNameCode,Qty,Amount,VatAmt,Dis,PrevUserId,ModifyBy,ModifyDate) Values');
                    sql.add(' ('+IntToStr(li_BAECId)+','+IntToStr(gi_BillDetailId)+','+IntToStr(pi_PatientId));
                    sql.add(' ,'+IntToStr(pi_InPatientId)+','+#39+ps_MyBillNo+#39);
                    sql.add(' ,'+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    sql.add(' ,'+TablePTTestTemp.FieldByName('Qty').AsString);
                    sql.add(' ,'+TablePTTestTemp.FieldByName('BATDFCostPrice').AsString); //BATDF - Before Add To Doctor Fraction
                    sql.add(' ,'+TablePTTestTemp.FieldByName('BATDFVatAmt').AsString);
                    sql.add(' ,'+TablePTTestTemp.FieldByName('DisPer').AsString);
                    sql.add(' ,'+IntToStr(gi_UserId)+','+IntToStr(gi_UserId));
                    sql.add(' ,'+#39+ps_TodaysDate+#39);
                    sql.add(' )');
                    ExecSQL;
               End;
          End;
     End
     Else IF TablePTTestTemp.FieldbyName('DepId').AsInteger=pi_DocFraDepId Then //62- Histopathology, 17- Pathology
     Begin
          //Also save the Doctor Involved in the Test
          With Query_TempProcess Do
          Begin
               Close;
               Sql.Clear;
               Sql.Add(' Select * From DrOperation.db ');
               Sql.Add(' Where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
               //Query_TempProcess.RecordCount;
               First;
               While Not Eof Do
               Begin
                    { DrProcedures(DocCode:String;DrComID,PositionWiseCommId,PatientId,InPatientID,BillDetailId:Integer;TestNameCode,
                         BillNo,BillDate,BillType,IsFractionPropWithDisPer,IsHospitalPart,AddAmtType,IsOperation:String;
                         DocRatePer,DocCommAmt,AddedPercent,AddedAmt,DisPer,Qty,UnitTestCost:Double);  }
                    IF Trim(Query_TempProcess.FieldbyName('DrName') .asstring)<>'' Then
                    DrProcedures(FieldbyName('DrCode') .asstring,FieldByName('DocId').AsInteger,
                           FieldByName('PositionWiseCommId').AsInteger,pi_PatientId, //FieldbyName('DrComId') .AsInteger=1..Using default
                           pi_InPatientId,gi_BillDetailId,TablePTTestTemp.FieldbyName('DepId') .AsInteger,gi_UserId,
                           FieldbyName('TestNameCode') .asstring,ps_MyBillNo,ps_TodaysDate,
                           ps_BillType,ps_PayType,Query_TempProcess.FieldbyName('IsFractionPropWithDisPer') .asstring,'N','',
                           TablePTTestTemp.FieldbyName('IsOperational') .AsString,'',ps_TodaysDate,ps_TodaysTime,
                           FieldbyName('DocRatePer') .AsFloat,FieldbyName('DocAmount') .AsFloat,0,0,
                           TablePTTestTemp.FieldByName('DisPer').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                           FieldByName('UnitTestCost').AsFloat);
                    Next;
               End;
          End;               // 5- Om Hospital
     End Else IF (TablePTTestTemp.FieldbyName('DepId').AsInteger=63) and (gi_HospitalID=5) Then // X-Ray Plate Size Setting
     Begin
          {  SaveXRayPlateDetail(BillDetailId,PatientId,InpatientId:Integer; MasterTNCode,TestNameCode,BillNo,BillType,
                    PayType,DocCode,BillDate:String;Qty,UnitCost,DisPer,VatAmt,CommPer,UnitCommAmt,CommFromAmount:Double);  }

          With Query_TempProcess Do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               Sql.Clear;
               Sql.Add(' Select * From XRayPlateSize.db ');
               Sql.Add(' Where MasterTNCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
               First;
               While Not Eof Do
               Begin
                    SaveXRayPlateDetail(gi_BillDetailId,pi_PatientId,pi_InpatientId,
                                FieldByName('MasterTNCode').AsString,FieldByName('TestNameCode').AsString,ps_MyBillNo,
                                ps_BillType,ps_PayType,FieldByName('DocCode').AsString,ps_TodaysDate,FieldByName('Qty').AsFloat,
                                FieldByName('UnitCost').AsFloat,TablePTTestTemp.FieldByName('DisPer').AsFloat,
                                FieldByName('TaxAmt').AsFloat,FieldByName('CommPer').AsFloat,FieldByName('UnitCommAmt').AsFloat
                                ,FieldByName('CommFromAmount').AsFloat);
                    Next;
               End;
          End;
     End;
End;



Function TFormInpMain.MakeBillNo:String;
Begin
     If( pi_SchemeId=9) And (gi_HospitalID=14) Then //HAMS-For Share Holder No charge
     Begin
          Result:=GetNextBillNo('BillMaster','BillNo','TP',ps_TodaysDate);
     End
     Else IF ps_BillingStatus='OPB' Then { OPB- Outpatient Billing, IPB- Inpatient billing  }
     Begin
          IF RB_OPAdvanceBilling.Checked=True Then
          Begin
               IF ps_BillType<>'DEPOSIT' Then
               Begin
                    gb_OPAvdanceBillNo:=True;
                    Result:=GetNextBillNo('BillMaster','CRBillNo','AD',ps_TodaysDate);
                    gb_OPAvdanceBillNo:=False;
               End
               Else
               Result:=GetNextBillNo('BillMaster','BillNo','DP',ps_TodaysDate);
               //Result:=GetNextBillNoForIP('BillMaster','BillNo','OPA',ps_TodaysDate); { for 3 Char ADP It is(GetNextBillNoForIP) is used but For 2 Char(GetNextBillNo) }
          End
          Else IF ps_BillType<>'R' Then {  Not Refund  }
          Begin
               //IF ps_PatientCatg='ORD' Then {  for normal people  }
               //Begin
                    IF ps_PayType='CASH' Then
                       Result:=GetNextBillNo('BillMaster','BillNo','CS',ps_TodaysDate)
                    Else { for hospital staffs or member...}
                       Result:=GetNextBillNo('BillMaster','BillNo','CR',ps_TodaysDate);
               //End
               //Else
               //     Result:=GetNextBillNo('BillMaster','BillNo','ME',ps_TodaysDate);
          End
          Else
               Result:=GetNextBillNo('BillMaster','BillNo','RF',ps_TodaysDate);
               //showmessage(Result);
     End
     Else{ IPB }
     Begin
          IF ps_PayType='CASH' Then
          Begin
               IF ps_BillType<>'DEPOSIT' Then
               Begin
                    //IF ps_PatientCatg='ORD' Then
                       Result:=GetNextBillNo('BillMaster','BillNo','CS',ps_TodaysDate);
                    //Else
                    //   Result:=GetNextBillNo('BillMaster','BillNo','ME',ps_TodaysDate);
               End
               Else
                    Result:=GetNextBillNo('BillMaster','BillNo','DP',ps_TodaysDate)
          End
          Else
               Result:=GetNextBillNo('BillMaster','BillNo','TP',ps_TodaysDate);
     End;
End;


Procedure TFormInpMain.BillMasterUpDate(PatientId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat:Double;PayType,BillType:String);
Begin
   IF ps_BillingStatus='OPB' Then {*** OPB- Outpatient Billing, IPB- Inpatient billing..}
   Begin
      IF ps_PatientCatg='ORD' Then {**** for normal people...}
      Begin
         IF PayType='CASH' Then
         Begin
            NBillNo:=ServerDate.GetNextVal('DBillNo',ServerDate.CheckMonthD);
            ZeroPosition;
            ps_MyBillNo:={Month+Year+}'CS'+ZeroAmt+IntToStr(NBillNo);
         End
         Else {**** for hospital staffs or member...}
         Begin
            NBillNo:=ServerDate.GetNextVal('CBillNo',ServerDate.CheckMonthD);
            ZeroPosition;
            ps_MyBillNo:='CR'+ZeroAmt+IntToStr(NBillNo);
         End;
      End
      Else
      Begin
         NBillNo:=ServerDate.GetNextVal('MBillNo',ServerDate.CheckMonthC);
         ZeroPosition;
         ps_MyBillNo:='ME'+ZeroAmt+IntToStr(NBillNo);
      End;
   End
   Else{*** IPB...}
   Begin
      IF PayType='CASH' Then
      Begin
         IF BillType<>'DEPOSIT' Then
         Begin
            IF ps_PatientCatg='ORD' Then
            Begin
               NBillNo:=ServerDate.GetNextVal('DBillNo',ServerDate.CheckMonthC);
               ZeroPosition;
               ps_MyBillNo:='CS'+ZeroAmt+IntToStr(NBillNo);
            End
            Else
            Begin
               NBillNo:=ServerDate.GetNextVal('MBillNo',ServerDate.CheckMonthC);
               ZeroPosition;
               ps_MyBillNo:='ME'+ZeroAmt+IntToStr(NBillNo);
            End;
         End
         Else
         Begin
            NBillNo:=ServerDate.GetNextVal('IPDBillNo',ServerDate.CheckMonthC);
            ZeroPosition;
            ps_MyBillNo:='DP'+ZeroAmt+IntToStr(NBillNo);
         End;
      End
      Else
      Begin
         NBillNo:=ServerDate.GetNextVal('TBillNo',ServerDate.CheckMonthC);
         ZeroPosition;
         ps_MyBillNo:='TP'+ZeroAmt+IntToStr(NBillNo);
      End;
   End;

   SaveBillMaster(
         PatientId,gi_UserId,ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat,
         ps_MyBillNo,ps_RateType,ps_TodaysDate,ps_TodaysTime,PayType,BillType  );

End;

Procedure TFormInpMain.BillMasterCancelUpDate(PatientId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,Vat:Double;PayType,BillType:String);
Begin
   NBillNo:=ServerDate.GetNextVal('RBillNo',ServerDate.CheckMonthD);
   ZeroPosition;
   ps_MyBillNo:={Month+Year+}'RF'+ZeroAmt+IntToStr(NBillNo);
   with Query_BillMasterUpdate do
   Begin
      Close;
      Sql.Clear;
      Sql.Add(' Insert Into BillMaster(PatientId, BillNo, CRBillNo, CRMODIFYDATE, CRMODIFYTIME,');
      sql.Add(' CRMODIFYBY, BillType, SNO, DisType, BillDate, ModifyDate, ModifyTime, ModifyBy,');
      sql.Add(' PayType, ExtraCharge, Dis, DisCount, Total, Tax, GrandTotal, PCount) ');
      sql.Add(' Values ('+IntToStr(PatientId)+','+#39+ps_MyBillNo+#39+',');
      IF PayType='CASH' Then
      Begin
         sql.Add(#39+' '+#39+','+#39+' '+#39+','+#39+' '+#39+','+IntToStr(0)+',');
      End
      Else
      Begin
         sql.Add(#39+ps_MyBillNo+#39+','+#39+ps_TodaysDate+#39+',');
         sql.Add(#39+ps_TodaysTime+#39+','+IntToStr(gi_UserId)+',');
      End;
      sql.Add(#39+BillType+#39+','+IntToStr(0)+',');
      sql.Add(#39+'Dep'+#39+','+#39+ps_TodaysDate+#39+','+#39+ps_TodaysDate+#39+',');
      sql.Add(#39+ps_TodaysTime+#39+','+IntToStr(gi_UserId)+','+#39+PayType+#39+',');
      sql.Add(Format('%.2f',[ExtraCharge])+','+Format('%.2f',[Dis])+','+Format('%.2f',[DisCount])+',');
      sql.Add(Format('%.2f',[Total])+','+FloatToStr(Vat)+','+Format('%.2f',[GrandTotal])+','+IntToStr(1)+')');
      ExecSQL;
   End;
End;

procedure TFormInpMain.BillDetailCancelUpDate(PatientId,PatientTestId,DepID:Integer;DepCode,TestNameCode:String;Quatity,VatAmt,Amount,TotalAmount,Dis:Double);
var li_BillDetailId:LongInt;
Begin
  TestNameCode:=StringReplace(TestNameCode,'''','''''',[rfReplaceAll]);
  li_BillDetailId:=ServerDate.GetNextVal('BillDetailID',False);
  with Query_BillDetailUpdate do
  Begin
    Close;
    Sql.Clear;
    Sql.Add(' Insert Into BillDetail( BillDetailID, PatientId, MODIFYBY,');
    sql.Add(' PatientTestId, DepId, ClinicalDepId, BillNo, CRBillNo, CRMODIFYDATE, CRMODIFYTIME,');
    sql.Add(' CRMODIFYBY, BillTime, BillDate, Service, ServiceType, VatAmt, Qty, Amount, ');
    sql.Add(' Dis, OrgDis, TotalAmount, PayType, BILLTYPE, Month,InPatientId,SchemeId,');
    sql.Add(' CommunityID,MemberNo,CancelBy,CancelDate,CancelTime,CancelRemarks) ');
    sql.Add(' Values ('+IntToStr(li_BillDetailId)+',');
    sql.Add(IntToStr(PatientId)+','+IntToStr(gi_UserId)+','+IntToStr(PatientTestId)+',');
    sql.Add(IntToStr(DepID)+','+IntToStr(pi_ClinicalDepId)+','+#39+ps_MyBillNo+#39+',');
    IF ps_PayType='CASH' Then
    Begin
      sql.Add(#39+' '+#39+','+#39+' '+#39+','+#39+' '+#39+','+IntToStr(0)+',');
    End
    Else
    Begin
      sql.Add(#39+ps_MyBillNo+#39+','+#39+ps_TodaysDate+#39+',');
      sql.Add(#39+ps_TodaysTime+#39+','+IntToStr(gi_UserId)+',');
    End;
    sql.Add(#39+ps_TodaysTime+#39+','+#39+ps_TodaysDate+#39+','+#39+DepCode+#39+',');
    sql.Add(#39+TestNameCode+#39+','+Format('%.2f',[VatAmt])+',');
    sql.Add(FloatToStr(Quatity)+','+Format('%.2f',[Amount])+',');
    sql.Add(Format('%.2f',[Dis])+','+ Format('%.2f',[Dis])+','+Format('%.2f',[TotalAmount])+',');
    sql.Add(#39+ps_PayType+#39+','+#39+ps_BillType+#39+',');

    sql.Add(#39+Copy(ps_TodaysDate,6,2)+#39+',');
    sql.Add(IntToStr(pi_InPatientId)+',');
    sql.Add(IntToStr(pi_SchemeId)+',');
    sql.Add(IntToStr(pi_CommunityId)+',');
    sql.Add(#39+ps_MemberNo+#39+','+IntToStr(gi_UserId)+',');
    sql.Add(#39+ps_TodaysDate+#39+','+#39+ps_TodaysTime+#39+','+#39+EditRemarks.Text+#39+')');
    ExecSQL;
  End;
End;


procedure TFormInpMain.SaveRefundBilling;
Var i,j,li_UserId:Integer;
Begin
     {       SaveCancelBillMaster(PatientId,UserId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,
                    Vat:Double;BillNo,RateType,BillDate,BillTime,PayType,BillType:String);  }
     ps_RefDocCode:=Vartostr(DBLC_Doctor.KeyValue);

     Try
          DMhospital.Hospital.StartTransaction;

          ps_PayType:='REFUND';
          ps_BillType:='R';
          ps_MyBillNo:=MakeBillNo;

          IF CheckBoxIPRefund.Checked=True Then
          ps_BillType:='IP'
          Else
          Begin
               IF CB_AddedChrgForIP.Checked=False Then
               ps_BillType:='B'
               Else // From OP Billing sometimes we do Bill for inpatient (left Items or Extra 1 Day Stay) after Financial discharge done
               ps_BillType:='IP'; // so such type of bill income goes into IP Income
          End;

          Try
               SaveRefundBillMaster(
                    pi_PatientId,gi_UserId,StrToFloat(EditECharge.Text),StrToFloat(EditDisAmt.Text),
                    StrToFloat(EditDisPer.text),StrToFloat(EditTotal.text),StrToFloat(Edit_GrandTotal.Text),
                    StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,ps_TodaysTime,
                    ps_PayType,ps_BillType       );
          except
               SaveRefundBillMaster(
                    pi_PatientId,gi_UserId,StrToFloat(EditECharge.Text),StrToFloat(EditDisAmt.Text),
                    StrToFloat(EditDisPer.text),StrToFloat(EditTotal.text),StrToFloat(Edit_GrandTotal.Text),
                    StrToFloat(Edit_ExDuty.Text),ps_MyBillNo,ps_RateType,ps_TodaysDate,ps_TodaysTime,
                    ps_PayType,ps_BillType       );
          End;


          { Case 1. IF User Is Dept. Incharge and Not Counter User , while refunding bill by (Incharge) show refunded amount
                         On That User Who did the bill before.

          Case 2. IF user is Dept. Incharge + Counter User, While refunding bill by him show refunded amount on that user
                         i.e on that current user whosover that prevously bill done.    }

          //IF (gs_IsIncharge='Y') and (gs_CounterUser='N') Then // Case 1.
          //li_UserId:=QueryListOfBill.FieldByName('ModifyBy').AsInteger
          //Else
          li_UserId:=gi_UserId; // Case 2 and others


          {     updating patient test       }
          TablePTTestTemp.First;
          While Not TablePTTestTemp.Eof Do
          Begin
               IF (TablePTTestTemp.FieldByName('TestNameCode').asString='')Then
               TablePTTestTemp.Next
               Else
               Begin

                    ps_DocCode:=TablePTTestTemp.FieldByName('DocCode').AsString;
                    pi_PatientTestID:=TablePTTestTemp.FieldByName('PatientTestID').asInteger;
                 {     SaveRefundBillDetail(PatientId,InPatientId,SchemeId,CommunityId,PatientTestId,DepID,ClinicalDepId,UserId,CancelBy:Integer;
                               BillNo,RateType,DepCode,TestNameCode,MemberNo,PayType,BillType,BillDate,BillTime,CancelStatus,CancelDate,
                               CancelTime,CancelRemarks:String;Quatity,CurQty,VatAmt,CurVatAmt,Amount,TotalAmount,Dis:Double);  }

                     SaveRefundBillDetail(
                           pi_PatientId,0,pi_SchemeId,pi_CommunityId,pi_PatientTestID,TablePTTestTemp.FieldByName('DepID').asInteger,
                           pi_ClinicalDepId,li_UserId,gi_UserId,ps_MyBillNo,ps_RateType,TablePTTestTemp.FieldByName('TestNameCode').AsString,
                           TablePTTestTemp.FieldByName('TestName').AsString,ps_MemberNo,ps_PayType,ps_BillType,ps_TodaysDate,
                           ps_TodaysTime,'Y',ps_TodaysDate,ps_TodaysTime,EditRemarks.Text,Edit_PreviousBillNo.Text,
                           TablePTTestTemp.FieldByName('Qty').AsFloat,TablePTTestTemp.FieldByName('Qty').AsFloat,
                           TablePTTestTemp.FieldByName('VatAmt').AsFloat,TablePTTestTemp.FieldByName('VatAmt').AsFloat,
                           TablePTTestTemp.FieldByName('CostPrice').AsFloat,TablePTTestTemp.FieldByName('TestPrice').AsFloat,
                           TablePTTestTemp.FieldByName('DisPer').AsFloat,ps_DocCode,ps_RefDocCode,TablePTTestTemp.FieldbyName('IsOperational') .AsString);

                      //Just Update the Status
                      With Query_Process do
                      begin
                           Close;
                           Sql.Clear;
                           Sql.Add('Update BillDetail Set IsRefund=''Y'' ');
                           Sql.Add(' ,RFBillNo='+#39+ps_MyBillNo+#39);
                           sql.Add(' ,CurQty='+FloatToStr(TablePTTestTemp.FieldByName('CurQty').AsFloat));
                           sql.Add(' ,CurVatAmt='+FloatToStr(TablePTTestTemp.FieldByName('CurVatAmt').AsFloat));
                           Sql.Add(' Where BillDetailID='+TablePTTestTemp.FieldByName('PreBillDetailId').AsString);
                           ExecSQL;
                      end;

                      // For To Delete Or Disable Test Report From Pathology For That Particular Items
                      With Query_Process do
                      Begin
                           IF (TablePTTestTemp.FieldByName('LineEdit').AsString='T') and (TablePTTestTemp.FieldByName('OrgQty').AsInteger > 1)  Then
                           Begin
                                //For i:=1 To TablePTTestTemp.FieldByName('Qty').AsInteger Do
                                //Begin
                                     IF TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                                     Begin
                                          Close;
                                          sql.Clear;
                                          sql.add(' Delete From PatientTest where RefPatientTestId In (Select PatientTestId From PatientTest ');
                                          sql.add(' where BillNo='+#39+TablePTTestTemp.FieldByName('RefBillNo').AsString+#39);
                                          sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39+')');
                                          ExecSQL;
                                     End;


                                     { for to delete only the Qty as Specified else it delete all test which status=''REG'' }
                                     With Query_SubProcess Do
                                     Begin
                                          Close;
                                          sql.Clear;
                                          sql.add(' Select PatientTestId From PatientTest where BillNo='+#39+TablePTTestTemp.FieldByName('RefBillNo').AsString+#39);
                                          sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                                          sql.add(' and WorkingStatus=''REG''');
                                          Open;
                                     End;

                                     j:=1;
                                     While not Query_SubProcess.EOF Do
                                     Begin
                                          Close;
                                          sql.Clear;
                                          sql.add(' Delete From PatientTest where PatientTestId='+Query_SubProcess.FieldByName('PatientTestId').AsString);
                                          //sql.add(' Delete From PatientTest Where BillNo='+#39+TablePTTestTemp.FieldByName('RefBillNo').AsString+#39);
                                          //sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                                          //sql.add(' and WorkingStatus=''REG''');
                                          ExecSQL;

                                          IF j=TablePTTestTemp.FieldByName('Qty').AsInteger Then
                                          Break;

                                          j:=j+1;
                                     End;
                                //End;
                           End
                           Else
                           Begin
                                IF TablePTTestTemp.FieldByName('IsPackageTest').AsString='Y' Then
                                Begin
                                     Close;
                                     sql.Clear;
                                     sql.add(' Delete From PatientTest where RefPatientTestId='+IntToStr(TablePTTestTemp.FieldByName('PatientTestId').AsInteger));
                                     ExecSQL;
                                End;

                                Close;
                                sql.Clear;
                                sql.add(' Delete From PatientTest Where PatientTestId='+IntToStr(TablePTTestTemp.FieldByName('PatientTestId').AsInteger));
                                //sql.add(' and WorkingStatus=''REG''');
                                ExecSQL;
                           End;
                      End;

                      { Doctor Fraction }
                      IF (TablePTTestTemp.FieldByName('IsFractionableItem').AsString='Y') and (gs_IsDoctorFractionActive='Y') Then
                      CancelDoctorPortion(
                                   Trim(Edit_PreviousBillNo.Text),TablePTTestTemp.FieldByName('TestNameCode').asString,
                                   TablePTTestTemp.FieldByName('BillDetailId').AsInteger,li_UserId, TablePTTestTemp.FieldByName('Qty').AsFloat
                              );

                      TablePTTestTemp.Next;
               End;
          End;
          LabelBillNo.Caption:=ps_MyBillNo;
          DMhospital.Hospital.Commit;
          b_SaveSuccess:=True;
          Frm_Message.Showmodal;
     Except
          DMhospital.Hospital.Rollback;
          b_SaveSuccess:=False;
          MessageDlg('Failure to save data , Please try again or contact with system administrator.',mtInformation,[mbok],0);
          Exit;
     End;
End;

procedure TFormInpMain.CancelDoctorPortion(BillNo,TestNameCode:String; BillDetailId,RefundBy:Integer; RFQty:Double );
begin
     With Query_SubProcess Do
     Begin
          Close;
          sql.Clear;
          sql.add(' Update DrProcedures Set RefundDate='+#39+ps_TodaysDate+#39+',RefundTime='+#39+ps_TodaysTime+#39+','); //IsCancel=''Y''
          sql.add(' RFBillNo='+#39+ps_MyBillNo+#39+', RFQty='+FloatToStr(RFQty)+',');
          sql.add(' RefundBy = (Select UserName From UserMain where UserId='+IntToStr(RefundBy)+') ,');
          sql.add(' RefundById='+IntToStr(RefundBy)+' where BillDetailId='+IntToStr(BillDetailId));
          //sql.Add(' BillNo='+Chr(39)+BillNo+Chr(39)+' And TestNameCode='+Chr(39)+TestNameCode+Chr(39));
          ExecSQL;
          Close;
     End;
end;

procedure TFormInpMain.RetriveRequiredData;
Begin
  With QueryPatientTest Do
  Begin
    Close;
    With Sql Do
    Begin
      Clear;
      Add('Select * From PatientTest');
      Add('Where (PatientID in (SELECT PatientID');
      Add('FROM PatientMain )) AND');
      Add('(PatientID=:PatientID)AND');
      //Add('(TestDate=:TestDate)And');
      Add('(PayStatus='+Chr(39)+'UNPAID'+Chr(39)+')');
      {IF Not ChkBoxAllDis.Checked Then
      Begin
        Add('AND(WorkingStatus!='+Chr(39)+'RO'+Chr(39)+')And');
        Add('(PayStatus='+Chr(39)+'False'+Chr(39)+')');
      End;}
      //SaveToFile('C:\Windows\Desktop\TestHos.txt');
    End;
    ParamByName('PatientID').asinteger:=pi_PatientId;
    //ParamByName('TestDate').AsString:=NTestDate;
    Open;
  End;
End;

Procedure TFormInpMain.DiscountCalculationFromAmt;
Var lf_DiscountableAmt,lf_GivenDiscount, lf_DisPer, lf_Discount , lf_VatmAmt, lf_NetTotal:Double;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.Clear;
          sql.add(' Select Sum(TestPrice) as Total From PatientTestTemp.db ');
          IF (CB_DisForAllItems.Checked=False) and (IsDiscountGranted=False) Then
          sql.add(' where IsDiscountable=''Y''');
          Open;
     End;

     lf_DiscountableAmt:=Query_TempProcess.FieldByName('Total').AsFloat;
     { In TAD System If 100% Dis Then Tax Will also Zero But In TBD System }


     IF StrToFloat(EditDisAmt.Text) > lf_DiscountableAmt Then
     Begin
          MessageDlg('Discountable Amount Is Rs '+FloatToStr(lf_DiscountableAmt)+' But Discount Amount Exceeds This Amount.',mtWarning,[mbok],0);
          EditDisAmt.SetFocus;
          Exit;
     End;

     lf_GivenDiscount := StrToFloat(EditDisAmt.Text);

     lf_DisPer := ( lf_GivenDiscount / lf_DiscountableAmt ) * 100 ;

     TablePTTestTemp.First;
     while Not TablePTTestTemp.EOF Do
     Begin
          IF (TablePTTestTemp.FieldByName('IsDiscountable').AsString='Y') or (IsDiscountGranted=True) Then
          Begin
               IF gs_GovtTaxRule='TAD' Then
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         lf_Discount:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * lf_DisPer  / 100 );
                         lf_VatmAmt:=RoundingAfterSecondPlace( (TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount ) * gf_VatPer / 100);
                         lf_NetTotal:=TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount;
                    End
                    Else
                    lf_VatmAmt:=0;
               End
               Else // TBD
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         lf_Discount:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * lf_DisPer  / 100 );
                         //lf_VatmAmt:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * gf_VatPer / 100);
                         lf_VatmAmt:=GetMeExactVatAmount(TablePTTestTemp.FieldByName('TestPrice').AsFloat,(TablePTTestTemp.FieldByName('TestPrice').AsFloat*gf_VatPer/100));
                         lf_NetTotal:=TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount;
                    End
                    Else
                    lf_VatmAmt:=0;
               End;

               lf_DisPer:=GetNoOfDecimalPartOfFloatNum(lf_DisPer,4);
               With Query_TempProcess do
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Update PatientTestTemp.db Set VatAmt='+FloatToStr(lf_VatmAmt)+',Discount = '+FloatToStr(lf_Discount));
                    sql.add(' ,OldDiscount='+FloatToStr(lf_Discount)+', DisPer='+FloatToStr(lf_DisPer)+', OldDisPer='+FloatToStr(lf_DisPer));
                    sql.add(' ,Total='+FloatToStr(lf_NetTotal)+' where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    ExecSQL;
               End;
          End;
          TablePTTestTemp.Next;
     End;

     TablePTTestTemp.Close;
     TablePTTestTemp.Open;
End;


Procedure TFormInpMain.DiscountCalculationFromPercent;
Var lf_VatmAmt,lf_Discount, lf_NetTotal,lf_DisPer:Double;
Begin
     lf_DisPer:= StrToFloat(EditDisPer.Text);
     TablePTTestTemp.First;
     while Not TablePTTestTemp.EOF Do
     Begin
          IF (TablePTTestTemp.FieldByName('IsDiscountable').AsString='Y') or (IsDiscountGranted=True) Then
          Begin
               IF gs_GovtTaxRule='TAD' Then
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         lf_Discount:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * lf_DisPer  / 100 );
                         lf_VatmAmt:=RoundingAfterSecondPlace( (TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount ) * gf_VatPer / 100);
                         lf_NetTotal:=TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount;
                    End
                    Else
                    lf_VatmAmt:=0;
               End
               Else // TBD
               Begin
                    IF TablePTTestTemp.FieldByName('IsVatable').AsString='V' Then
                    Begin
                         lf_Discount:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * lf_DisPer  / 100 );
                         //lf_VatmAmt:=RoundingAfterSecondPlace( TablePTTestTemp.FieldByName('TestPrice').AsFloat * gf_VatPer / 100);
                         lf_VatmAmt:=GetMeExactVatAmount(TablePTTestTemp.FieldByName('TestPrice').AsFloat,(TablePTTestTemp.FieldByName('TestPrice').AsFloat * gf_VatPer / 100));
                         lf_NetTotal:=TablePTTestTemp.FieldByName('TestPrice').AsFloat - lf_Discount;
                    End
                    Else
                    lf_VatmAmt:=0;
               End;

               With Query_TempProcess do
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Update PatientTestTemp.db Set VatAmt='+FloatToStr(lf_VatmAmt)+',Discount = '+FloatToStr(lf_Discount));
                    sql.add(' ,OldDiscount='+FloatToStr(lf_Discount)+', DisPer='+FloatToStr(lf_DisPer)+', OldDisPer='+FloatToStr(lf_DisPer));
                    sql.add(' ,Total='+FloatToStr(lf_NetTotal)+' where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    ExecSQL;
               End;
          End;
          TablePTTestTemp.Next;
     End;

     TablePTTestTemp.Close;
     TablePTTestTemp.Open;
End;

Function TFormInpMain.IsDiscountGranted:Boolean;
Begin
     IF gi_HospitalId=5 Then // OM HOS
     Begin
          IF (CB_DisForAllItems.Checked=True) OR (DBLookupComboBox_Scheme.KeyValue=1) // 1- Director, 3 - ShareHolder, 4- Staff  Community
          OR (DBLookupComboBox_Scheme.KeyValue=3) OR (DBLookupComboBox_Scheme.KeyValue=4) Then
          result:=True
          Else
          result:=False;
     End
     Else
     result:=False;
End;



Function  TFormInpMain.FoodChargeAmount:Double;
Var NFoodChargeAmt:Double;
Begin
     With QueryFoodCharge do
     Begin
          Close;
          Open;
          NFoodChargeAmt:=FieldByName('TotCharge').asFloat;
          Result:=NFoodChargeAmt;
     End;
End;

Function  TFormInpMain.GetDiscountAmount:Double;
Var lf_DiscountAmt:Double;
Begin
     With Query_TempProcess do
     Begin
          DatabaseName:=gs_TempPath;
          Close;
          sql.Clear;
          sql.add(' Select     Sum(Discount) as Discount From PatientTestTemp');
          Open;
          lf_DiscountAmt:=FieldByName('Discount').asFloat;

          IF (lf_DiscountAmt > 0) and (CB_DirectDiscountSet.Checked=False) Then
          Begin
               EditDisAmt.Enabled:=False;
               EditDisPer.Enabled:=False;
               EditDisAmt.Text:=FloatToStr(lf_DiscountAmt);
          End
          Else
          Begin
               EditDisAmt.Enabled:=True;
               EditDisPer.Enabled:=True;
               EditDisAmt.Text:='0.00';
          End;
          Result:=lf_DiscountAmt;
     End;
End;


procedure TFormInpMain.GetMedicineCharge(FPatientId,FINPatientId:LongInt);
Var PMedAmt,RMedAmt,BillAmt,BedAmt:Double;
Begin
     with Query_GetMedicineCharge do
     Begin
          Close;
          sql.Clear;
          sql.add(' select Sum(TotalAmount-Discount) as Total');
          sql.add(' From salemaster where ');
          sql.add(' (salemaster.ST=''N'')'); {     N for credit bill }
          sql.add(' and (salemaster.STATUS=''O'') and (salemaster.customerid='+IntToStr(FPatientId)+')'); {     O status for Credit bill     }
          open;
     End;
     PMedAmt:=Query_GetMedicineCharge.FieldByName('Total').AsFloat;

     {     retrieving returning medicine      }
     with Query_GetReturnMedicine do
     Begin
          Close;
          sql.Clear;
          sql.add('select Sum(Amount) as Total');
          sql.add('From Returnmaster');
          sql.add('where(returnmaster.customerid='+ IntToStr(FPatientId)+ ')');
          sql.add('and(returndate >='+ #39+ServerDate.TodaysDate+#39+ ')');
          open;
     End;
     RMedAmt:=Query_GetReturnMedicine.FieldByName('Total').AsFloat;

     {     Serveice Charge     }
     with Query_GetServiceCharge do
     Begin
          Close;
          ParamByName('PID').AsInteger:=FINPatientId;
          open;
     End;
     BillAmt:=Query_GetServiceCharge.FieldByName('NetTotal').AsFloat;
     { Bed Charge }
     with Query_GetBedCharge do
     Begin
          Close;
          ParamByName('INPTID').AsInteger:=FINPatientId;
          open;
     End;
     BedAmt:=Query_GetBedCharge.FieldByName('Total').AsFloat;
     PBalanceAmt:=PMedAmt+RMedAmt+BillAmt+BedAmt;
End;

procedure TFormInpMain.OpenBedAssign;
Begin
  With QueryAllOverManage Do
  Begin
    Close;
    sql.Clear;
    sql.add(' Select W.WardName,RT.RoomType,IPD.RoomTypeCode From InpatientDetail IPD,Ward W,RoomType RT');
    sql.add(' where IPD.WardCode=W.WardCode and IPD.RoomTypeCode=RT.RoomTypeCode and ');
    sql.add(' IPD.InpatientDID IN (Select Max(InpatientDID) as InpatientDID From InpatientDetail');
    sql.add(' where InpatientId='+IntToStr(QueryInpatientSearch.FieldByName('InPatientId').AsInteger)+')');
    Open;
    //FormGroupTransact.GRoomType:=FieldByName('RoomTypeCode').AsString;
    //FormGroupTransact.GRoom:=FieldByName('Room').AsString;
    //FormGroupTransact.GBedNo:=FieldByName('BedCode').AsString;
    FormGroupTransact.GWard:=FieldByName('WardName').AsString;
    FormGroupTransact.GRoomType:=FieldByName('RoomType').AsString;
    FormGroupTransact.ps_RateType:=FieldByName('RoomTypeCode').AsString;
    FormGroupTransact.ps_InptDate:=QueryInpatientSearch.FieldByName('InptDate').AsString;
    Close;
    //FormGroupTransact.GBedNo:=FieldByName('BedCode').AsString;
  End;
End;

Procedure TFormInpMain.AccountSummaryDisplay;
Begin
      Query_DepositType.Open;
      DBLookupComboBox_DepositType.KeyValue:=Query_DepositType.FieldByName('DepositTypeId').AsInteger;

      Label_Remarks.Caption:='Advance Type :';
      Label_Remarks.Top:=121;
      Label_Remarks.Visible:=True;

      DBLookupComboBox_DepositType.Top:=117;
      DBLookupComboBox_DepositType.Visible:=True;

      Label_PayType.Top:=142;
      Label_PayType.Caption:='Dep. Pay Type :';

      CMBPayType.Visible:=True;
      CMBPayType.Top:=138;
      CMBPayType.ItemIndex:=0;

      EditCheckNo.Top:=139;
      EditCheckNo.Visible:=True;


      Label_Payment.Caption:='Advance Amt.:';
      Label_Payment.Font.Color:=clBlue;
      Label_Payment.Top:=163;

      EditPayment.Top:=160;
      EditPayment.Height:=21;
      EditPayment.Font.Size:=10;
      EditPayment.Font.Color:=clRed;
      EditPayment.ReadOnly:=True;

      IF ChkDischarge=10 Then
      Begin
           CMBPayType.Enabled:=False;
           EditPayment.ReadOnly:=True;
           EditPayment.Color:=clMenu;
           Label_BillingStatus.Caption:='Ward Billing';
           DBLookupComboBox_DepositType.KeyValue:=2;
      End;
      EditRemarks.Visible:=False;
End;

procedure TFormInpMain.RefreshBilling;
Begin
   EditPsearch.Text:='';
   CMBBillType.ItemIndex:=0;//GENERAL
   //CMBBillType.Text:='GENERAL';
   Edit_MemberNo.Text:='';
   DBLookupComboBox_Community.KeyValue:=NULL;
   LabelNo.Caption:='None';
   Labelname.Caption:='None';
   LabelIpNo.Caption:='None';
   pf_DiscountPer:=0;

   LabelDepBillNoCap.Visible:=False;
   LabelDepBillNo.Visible:=False;
   IF ps_BillingStatus='OPB' Then
   Begin
      CMBPayType.ItemIndex:=0;

   End
   Else
   Begin
      CMBPayType.ItemIndex:=1;
      ps_TodaysDate:=ServerDate.TodaysDate;
      DateEditXIPDate.text:=ps_TodaysDate;
      DateEditXDisDate.text:=ps_TodaysDate;
      LabelTotalDay.Caption:='1';
      LabelIPBalanace.Caption:='0';
   End;
   LabelBillNo.Caption:='0';
   ChkBoxAllDis.Checked:=False;
   ChkBoxOldbill.Checked:=False;
   TablePTTestTemp.Close;
   TablePTTestTemp.EmptyTable;
   TablePTTestTemp.Open;
   IF CheckButton < 2 Then {*** 2 means from normal billing....}
   Begin
      GroupBox_CashInfo.BringToFront;
      GroupBox_CashInfo.Visible:=True;
      GroupBoxOldTest.Visible:=False;
   End;

   EditTotal.Text:='0.00';
   Edit_ExDuty.Text:='0.00';
   EditDisAmt.Text:='0.00';
   EditDisPer.Text:='0.00';
   Edit_SubTotal.Text:='0.00';
   Edit_GrandTotal.Text:='0.00';
   EditPayment.Text:=Edit_GrandTotal.Text;
   EditECharge.Text:='0.00';
   EditPayment.Text:='0.00';
   EditCheckNo.Text:='';
   EditRemarks.Text:='';

   Label_ReceivedAmt.Caption:='0.00';
   Label_ReceivedAmt.Caption:='0.00';
   Label_ReAmt.Caption:='0.00';
   Label_TotBillAmt.Caption:='0.00';
   Label_ToalAmt.Caption:='0.00';
   LabelItem.Caption:='0';
   EditPsearch.SetFocus;
End;

Function TFormInpMain.AvoidDisPerErrorInGridSFSLWGTNL:Boolean;//SFSLWGTNL- save from same line without going to next line
Begin
     If TablePTTestTemp.Active=True Then
     Begin
          TablePTTestTemp.Last;
          TablePTTestTemp.Edit;
          IF (DBGridPatientTest.Fields[10].Value=0) Xor (DBGridPatientTest.Fields[11].Value=0) Then
          Begin
               IF DBGridPatientTest.Fields[10].Value=0 Then
               DBGridPatientTest.Fields[10].Value:=((DBGridPatientTest.Fields[11].Value*100)/DBGridPatientTest.Fields[7].Value)
               Else
               //DBGridPatientTest.Fields[11].Text:=FloatToStr(Round(((DBGridPatientTest.Fields[7].Value*DBGridPatientTest.Fields[10].Value)/100)));
               DBGridPatientTest.Fields[11].Text:=FloatToStr(RoundingAfterSecondPlace(((DBGridPatientTest.Fields[7].Value*DBGridPatientTest.Fields[10].Value)/100)));
          End;

          Result:=True;
          TablePTTestTemp.Post;
          TablePTTestTemp.First;
          while not TablePTTestTemp.EOF Do
          Begin
                IF (TablePTTestTemp.FieldByName('TestNameCode').AsString='') or (TablePTTestTemp.FieldByName('TestName').AsString='') Then
                TablePTTestTemp.Delete;

                { Warning Putting Qty More Than 9 }
                IF ChkDischarge=13 Then // Lab Entry
                Begin
                     IF ((TablePTTestTemp.FieldByName('Qty').AsInteger > 1)) and (BtnSave.Enabled=True) and (b_IsQtyCtrlMsgDisplay=True) Then // (gi_HospitalId=5)
                     Begin
                         IF MessageDlg('Do You Really Put Qty.   '+TablePTTestTemp.FieldByName('Qty').AsString+'   By Yourself of Item  "'+
                                   TablePTTestTemp.FieldByName('TestName').AsString+'"  ?',mtWarning,[mbYes,mbNo],0)=mrNo Then
                         Begin
                               ActiveControl:=DBGridPatientTest;
                               TablePTTestTemp.Locate('TestNameCode',TablePTTestTemp.FieldByName('TestNameCode').AsString,[]);
                               Result:=False;
                               Break;
                               Exit;
                         End;
                     End;
                End
                Else
                Begin
                     IF ((TablePTTestTemp.FieldByName('Qty').AsInteger > 9)) and (BtnSave.Enabled=True) and (b_IsQtyCtrlMsgDisplay=True) Then // (gi_HospitalId=5)
                     Begin
                         IF MessageDlg('Do You Really Put Qty.   '+TablePTTestTemp.FieldByName('Qty').AsString+'   By Yourself of Item  "'+
                                   TablePTTestTemp.FieldByName('TestName').AsString+'"  ?',mtWarning,[mbYes,mbNo],0)=mrNo Then
                         Begin
                               ActiveControl:=DBGridPatientTest;
                               TablePTTestTemp.Locate('TestNameCode',TablePTTestTemp.FieldByName('TestNameCode').AsString,[]);
                               Result:=False;
                               Break;
                               Exit;
                         End;
                     End;
                End;

                IF (TablePTTestTemp.FieldByName('Qty').AsString='0') or (TablePTTestTemp.FieldByName('TestPrice').AsString='0') Then
                Begin
                     ActiveControl:=DBGridPatientTest;
                     IF TablePTTestTemp.FieldByName('Qty').AsString='0' Then
                     Begin
                          MessageDlg(' Qty Of Item   "  '+TablePTTestTemp.FieldByName('TestName').AsString+'  "    Must Be Greater Than 0. Plz.    Check It.',mtWarning,[mbok],0);
                          DBGridPatientTest.SelectedIndex:=5;
                     End Else IF TablePTTestTemp.FieldByName('TestPrice').AsString='0' Then
                     Begin
                          MessageDlg(' Total Price Of Item   "  '+TablePTTestTemp.FieldByName('TestName').AsString+'  "   Must Be Greater Than 0.    Plz Check It.',mtWarning,[mbok],0);
                          DBGridPatientTest.SelectedIndex:=4;
                     End;

                     Result:=False;

                     Break;
                     Exit;
                End;
                TablePTTestTemp.Next;
          End;

          IF Result=False Then Exit;

          EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
          pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
          EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
          Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
          IF gs_GovtTaxRule='TAD' Then
          Begin
               Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text)]);
               //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
               Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text)));
          End
          Else
          Begin
               Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt + StrToFloat(Edit_ExDuty.Text) ]);
               //Edit_GrandTotal.Text:=IntToStr(Round(StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
               Edit_GrandTotal.Text:=FloatToStr((StrToFloat(Edit_SubTotal.Text) - StrToFloat(EditDisAmt.Text)));
          End;
          Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;

          IF RB_OPAdvanceBilling.Checked=False Then
          EditPayment.Text:=Edit_GrandTotal.Text;

          //IF (gi_HospitalId In[5,14,19]) and (RadioButton_IPBilling.Checked=True) and (CMBPayType.Text='CREDIT') Then
          //EditPayment.Text:='0.00';
          IF (gi_HospitalId In [5,14,19]) Then
          Begin
               IF RadioButton_IPBilling.Checked=True Then
               Begin
                    CMBPayType.ItemIndex:=1;
                    EditPayment.Text:='0.00';
               End;
          End;
          Result:=True;
     End;
End;

Function TFormInpMain.SetTextWidth(sName: String; iLength: Integer): String;
var
    whitespace  :String;
    iLoop       :Integer;
begin
    Whitespace:='';
    For iLoop:=1 To iLength do
        Whitespace:= Whitespace+' ';
    Result:= whitespace + sName ;
end;

procedure TFormInpMain.AlternateBillPrintNMC(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    yval,y,X,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight:Integer;
    tm: TTextMetric;
    Is_NewPage:Boolean;

    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,26);
                   Canvas.TextOut(X+84,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,26);
                   If ILen>26 then
                   Inc(yval,18);

                   ILen:=ILen-26;
               end
             Else
               Canvas.TextOut(X+84,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            Font.Size:=10;
            y:=y+25;
            TextOut(X+160,y,gs_HosName);   // pixel
{            Font.Size:=8;
            TextOut(X+370,y,'Email  : '+gs_HosEmail);   // pixel
            y:=y+25;
            TextOut(X+370,y,'Website: '+gs_HosWebSite);   // pixel
            Font.Size:=9;
            TextOut(X+100,y,gs_HosSloganTitle);
            Font.Size:=9;
}

            y:=y+15;
            TextOut(X+160,y,gs_HosAddress); //60
            y:=y+15;
            TextOut(X+176,y,gs_HosPhone);  //80
        //  TextOut(X+365,y,'TPIN : 300449161');


            y:=y+22;
            Font.Size:=9;
            IF RadioButton_OPBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+70,y,'INVOICE')           //y+110
               Else
               TextOut(X+70,y,'INVOICE COPY');
               Font.Size:=10;
               Font.Style:=[fsBold];
               TextOut(X+230,y,'OP BILL');
               Font.Style:=[];
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+70,y,'ADVANCE RECEIPT')
               Else
               TextOut(X+70,y,'ADVANCE RECEIPT COPY');

               Font.Size:=10;
               Font.Style:=[fsBold];
               TextOut(X+230,y,'IP BILL');
               Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+70,y,'REFUND RECEIPT')
               Else
               TextOut(X+70,y,'REFUND RECEIPT COPY');
            End;

            y:=y+20;
            Font.Size:=8;
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO  :'+QueryNameCP.FieldByName('PatientId').AsString); //y+195
               Font.Style:=[];
               Font.Size:=8;
               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+160,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME: '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               Font.Size:=8;
               TextOut(X+330,y,'AGE/SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);
               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);
               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=9;
               TextOut(X+70,y,'INVOICE NO : '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               Font.Size:=8;
               y:=y+23;
               TextOut(X+70,y,'INVOICE DATE: '+QueryBillMasterCP.FieldByName('BillDate').AsString);
               TextOut(X+250,y,'INVOICE TIME: '+QueryBillMasterCP.FieldByName('BillTime').AsString); //y+245

            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  //TextOut(X+250,y+40, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString); //y+165
               End;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO  :'+QueryNameCP.FieldByName('PatientId').AsString);  //y+195
               Font.Style:=[];
               TextOut(X+250,y, 'IP NO : '+QueryNameCP.FieldByName('InPatientId').AsString);

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME : '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               //Y:=Y+20;
               TextOut(X+300,y,'AGE/SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245
               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);
               Y:=Y+20;
               Font.Style:=[fsBold];
               Font.Size:=8;
               TextOut(X+70,y,'INVOICE NO : '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               Font.Size:=8;
               Y:=Y+23;
               TextOut(X+70,y,'INVOICE DATE: '+QueryBillMasterCP.FieldByName('BillDate').AsString);
               TextOut(X+250,y,'INVOICE TIME: '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;

            IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
            Begin
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y,'Scheme : '+QueryDetailCP.FieldByName('Scheme').AsString);
               Font.Style:=[];
            End;
        End;
    End;

    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=8;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            TextOut(X+282,y,format(' %-s',['RATE']));
            TextOut(X+315,y,format(' %-s',['QTY']));
            TextOut(X+340,y,format(' %-s',['DIS.']));
            IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
            TextOut(X+370,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+370,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+425,y+15);
        end;
    end;
begin
    y:=-10;
    X:=-60;
    i:=1;
    With QueryNameCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       Open;
    End;
    With QueryBillMasterCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       IF RadioButton_IPBilling.Checked=True Then
       sql[3]:=' CrBillNo='+#39+BillNo+#39
       Else
       sql[3]:=' BillNo='+#39+BillNo+#39;
       //ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;
    With QuerySumAmtCP do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       IF RadioButton_IPBilling.Checked=True Then
       sql[5]:=' CrBillNo='+#39+BillNo+#39
       Else
       sql[5]:=' BillNo='+#39+BillNo+#39;
       //ParamByName('BillNo').ASString:=BillNo;
       IF RadioButton_OPRefundBilling.Checked=False Then
       sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
       Else
       sql[4]:=' (CancelStatus=''Y'' )  and ';
       Open;
    End;

    With QueryDetailCP Do
    Begin
       Close;
       IF RadioButton_IPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPRefundBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';

       IF RadioButton_IPBilling.Checked=True Then
       sql[6]:=' and CrBillNo='+#39+BillNo+#39
       Else
       sql[6]:=' and BillNo='+#39+BillNo+#39;
       //ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;

    li_PaperHeight:=15*QueryDetailCP.RecordCount;

    {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
    Begin
        With
    End;}


    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
       {Printer.BeginDoc;
        Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
        GetTextMetrics(Printer.Canvas.Handle, tm);}

        TotalNo:=QueryDetailCP.RecordCount;
        IF CheckBox_Preview.Checked=False Then
        DirectPrint:=True
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //UsePrinterOptions:=True;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=430+li_PaperHeight;  // in pixel
        PaperWidth:=490;
        BeginDoc;
        yval:=164;
            //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
            With canvas do
            begin

                //GetTextMetrics(Canvas.Handle, tm);

                GetPrinterOptions;
                UpdateAnnotation;
                {***********************************************************}
                {                         Page header                       }
                {***********************************************************}
                PrintPageHeader;
                {***********************************************************}
                {                       column header                       }
                {***********************************************************}
                PrintColumnHeader;

                Font.Size:=8;
                NoOfItems:=0;

                IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
                y:=75
                Else
                y:=58;
                QueryDetailCP.First;//50,125

                While Not QueryDetailCP.Eof  do
                begin
                    Inc(il);
                    {If il in [1,12,23] Then
                        yval:=160; //325
                    If il in [12,23] Then
                    IF NoOfItems = 11  Then
                    Begin
                        yval:=2;
                        y:=0;
                    End;
                    }
                    If Is_NewPage=True then
                    begin
                     yval:=2;
                     y:=0;
                    end;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=36 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);


                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=6- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);


                    {sDisPer:=QueryDetailCP.FieldByName('DIS').AsString;
                    iLength:= Canvas.TextWidth(sDisPer);
                    iLength:=36-iLength;
                    iLength:= Round(iLength / 4);
                    sDisPer:=SetTextWidth(sDisPer,iLength);
                    }


                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=20- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);


                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 42 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength>0 then sAmount:= SetTextWidth(sAmount,iLength);

                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));

                    // Rate
                    Canvas.TextOut(X+278,y+yval,format(' %-s',[sRate])); //273
                    // Qty
                    Canvas.TextOut(X+328,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    Canvas.TextOut(X+343,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    Canvas.TextOut(X+376,y+yval,format(' %-s',[sAmount])); //380

                    {IF QueryDetailCP.fieldbyname('CancelStatus').AsString='Y' Then
                    Canvas.TextOut(X+270,y+yval,'C');
                    }
                    Inc(yval,18);
                    QueryDetailCP.Next;
                end;

                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
                Pen.Style:=psDot;
                Canvas.MoveTo(X+70,y+yval);
                Canvas.LineTo(X+425,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;


                Font.Size:=9;
                IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                Begin
                   //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                   gs_PtType:='NORMAL';
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',QuerySumAmtCP.FieldByName('NetAmount').AsFloat))))
                End
                Else
                Begin
                   //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)+'.only'));
                   gs_PtType:='FRG';
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat))))+' - (IN USD)' ;
                End;

                Font.Size:=8;
                IF Length(ls_AmountInWords) >25 Then
                Begin
                     Canvas.TextOut(X+70,y+yval,'In Words :  ');
                     Inc(y,15);
                     iLen:=Length(ls_AmountInWords);
                     temVar:=0;
                     While Ilen>0 do
                     begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,30);
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,25);
                         Inc(yval,18);
                         ILen:=ILen-30;
                     end;
                End
                Else
                Begin
                   Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                   Inc(yval,40);
                End;



{                IF RadioButton_IPBilling.Checked=False Then
                Canvas.TextOut(X+340,y+yval,'CURRENT DEP.:  '+QueryNameCP.FieldByName('DepCode').AsString)
                Else
                Canvas.TextOut(X+340,y+yval,'CURRENT DEP.:  '+QueryCurrIPDep.FieldByName('DepCode').AsString);
}

                //Inc(yval,20);
                Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

                IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
                End
                Else
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
                End;


                yval:=YItemsEnd;
                iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=42-iLength;
                iLength:= Round(iLength / 4);

                //Inc(yval,20);

                Canvas.TextOut(X+285,y+yval,'AMOUNT                    :');
                Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
                IF gs_GovtTaxRule='TBD' Then
                Begin
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=30-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'SERVICE TAX              :');
                   Canvas.TextOut(X+383,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'DISCOUNT                 :');
                   Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Font.Size:=10;
                   Canvas.TextOut(X+285,y+yval,'TOTAL      :');
                   Font.Style:=[fsBold];
                   Canvas.TextOut(X+370,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Font.Style:=[];
                   Font.Size:=8;
                End
                Else
                Begin
                   Inc(yval,20);

                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'DISCOUNT                 :');
                   Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'SUB TOTAL                          :');
                   Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'SERVICE TAX                        :');
                   Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                   Canvas.Font.Style:=[fsBold];
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'TOTAL     :');
                   Font.Style:=[fsBold];
                   Font.Size:=10;
                   Canvas.TextOut(X+370,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Font.Style:=[];
                   Font.Size:=8;
                End;

                Canvas.Font.Style:=[];
                IF (RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP') Then
                Begin
                   //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                   lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                   //Else
                   //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                   iLength:=42-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+285,y+yval,'ADVANCE                    :');
                   Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_AdvanceAmt),iLength));

                   IF lf_NetAmount >  lf_AdvanceAmt Then
                   Begin
                      Inc(yval,20);

                      iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                      iLength:=42-iLength;
                      iLength:= Round(iLength / 4);

                      Canvas.TextOut(X+285,y+yval,'DUE AMOUNT            :');
                      Canvas.TextOut(X+376,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt),iLength));
                   End;
                End;
            End;
            PaperHeight:=y+yval+50;
        EndDoc;
    end;

    IF CheckBox_Preview.Checked=True Then
    FormRoboPreview.ShowModal;
end;

procedure TFormInpMain.AlternateBillPrintManamohan(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    yval,y,X,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight:Integer;
    tm: TTextMetric;
    Is_NewPage:Boolean;

    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);
                   If ILen>50 then
                   Inc(yval,18);

                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            Font.Size:=9;
            IF RadioButton_OPBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y,'INVOICE')           //y+110
               Else
               TextOut(X+350,y,'INVOICE COPY');
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+340,y,'ADVANCE RECEIPT')
               Else
               TextOut(X+340,y,'ADVANCE RECEIPT COPY');

               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y,'REFUND RECEIPT')
               Else
               TextOut(X+350,y,'REFUND RECEIPT COPY');
            End;

            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO  :'+QueryNameCP.FieldByName('PatientId').AsString); //y+195
               Font.Style:=[];
               Font.Size:=8;

               Font.Style:=[fsBold];
               Font.Size:=9;
               TextOut(X+460,y,'INVOICE NO : '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];

               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME: '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];

               Font.Size:=8;
               TextOut(X+340,y,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=8;
               TextOut(X+460,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);

               IF gi_DateSystem=0 Then
               TextOut(X+564,y-10,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564,y-10,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+20;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'Scheme : '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO  :'+QueryNameCP.FieldByName('PatientId').AsString);  //y+195

               Font.Style:=[];
               TextOut(X+230,y, 'IP NO : '+QueryNameCP.FieldByName('InPatientId').AsString);

               Font.Style:=[fsBold];
               Font.Size:=8;
               TextOut(X+460,y,'INVOICE NO : '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME : '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];


               //Y:=Y+20;
               TextOut(X+340,y,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245

               TextOut(X+460,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);

               IF gi_DateSystem=0 Then
               TextOut(X+564,y-13,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564,y-13,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    //Font.Style:=[fsBold];
                    y:=y+20;
                    TextOut(X+70,y,'Scheme : '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;


    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=8;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            TextOut(X+410,y,format(' %-s',['RATE']));
            TextOut(X+460,y,format(' %-s',['QTY']));
            TextOut(X+520,y,format(' %-s',['DIS.']));
            IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+670,y+15);
        end;

    end;
begin
    y:=130;
    X:=-30;
    i:=1;

    With QueryNameCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       Open;
    End;
    With QueryBillMasterCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;
    With QuerySumAmtCP do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       ParamByName('BillNo').ASString:=BillNo;
       IF RadioButton_OPRefundBilling.Checked=False Then
       sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
       Else
       sql[4]:=' (CancelStatus=''Y'' )  and ';
       Open;
    End;

    With QueryDetailCP Do
    Begin
       Close;
       IF RadioButton_IPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPRefundBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';
       ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;

    //li_PaperHeight:=15*QueryDetailCP.RecordCount;

    {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
    Begin
        With
    End;}


    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
       {Printer.BeginDoc;
        Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
        GetTextMetrics(Printer.Canvas.Handle, tm);}

        TotalNo:=QueryDetailCP.RecordCount;
        IF CheckBox_Preview.Checked=False Then
        DirectPrint:=True
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //UsePrinterOptions:=True;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=530;//690;//570;  // in pixel
        PaperWidth:=780;
        BeginDoc;

        IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
        yval:=180
        Else
        yval:=200;
            //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
            With canvas do
            begin

                //GetTextMetrics(Canvas.Handle, tm);

                GetPrinterOptions;
                UpdateAnnotation;
                {***********************************************************}
                {                         Page header                       }
                {***********************************************************}
                PrintPageHeader;
                {***********************************************************}
                {                       column header                       }
                {***********************************************************}
                PrintColumnHeader;

                Font.Size:=8;
                NoOfItems:=0;

                y:=40;
                QueryDetailCP.First;//50,125
                TotalNo:=0;
                While Not QueryDetailCP.Eof  do
                begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);


                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);


                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);


                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));

                    // Rate
                    Canvas.TextOut(X+385,y+yval,format(' %-s',[sRate])); //273
                    // Qty
                    Canvas.TextOut(X+450,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    Canvas.TextOut(X+485,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    Canvas.TextOut(X+565,y+yval,format(' %-s',[sAmount])); //380

                    IF TotalNo = 11 Then
                    Begin
                        Inc(yval,30);
                        Canvas.Font.Style:=[fsBold];
                        Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                        NewPage;

                        yval:=70;

                        Canvas.TextOut(X+70,y+yval,'Page No 2');
                        Inc(yval,25);
                        Canvas.TextOut(X+70,y+yval,'.......Continuee');
                        Canvas.Font.Style:=[];
                    End;

                    Inc(yval,18);
                    QueryDetailCP.Next;
                end;

                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
                Canvas.Pen.Style:=psDot;
                Canvas.MoveTo(X+70,y+yval);
                Canvas.LineTo(X+670,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;


                Canvas.Font.Size:=9;
                IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                Begin
                   //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                   gs_PtType:='NORMAL';
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',QuerySumAmtCP.FieldByName('NetAmount').AsFloat))));
                End
                Else
                Begin
                   gs_PtType:='FRG';
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat))))+' - (IN USD)' ;
                End;

                Canvas.Font.Size:=8;
                IF Length(ls_AmountInWords) > 55 Then
                Begin
                     Canvas.TextOut(X+70,y+yval,'In Words :  ');
                     iLen:=Length(ls_AmountInWords);
                     temVar:=0;
                     While Ilen > 0 do
                     begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,50);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+120,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,50);
                         Inc(yval,18);
                         ILen:=ILen-50;
                     end;
                End
                Else
                Begin
                   Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                   Inc(yval,40);
                End;

                Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

                IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
                End
                Else
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
                End;


                yval:=YItemsEnd;
                iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=64-iLength;
                iLength:= Round(iLength / 4);

                //Inc(yval,20);

                Canvas.TextOut(X+480,y+yval,'AMOUNT    :');
                Canvas.TextOut(X+565,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
                IF gs_GovtTaxRule='TBD' Then
                Begin
                   {Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'SERVICE TAX              :');
                   Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));}

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'DISCOUNT  :');
                   Canvas.TextOut(X+565,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+480,y+yval,'TOTAL    :');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+550,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;
                End
                Else
                Begin
                   Inc(yval,20);

                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'DISCOUNT                 :');
                   Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'SUB TOTAL                          :');
                   Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                   {Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'SERVICE TAX                        :');
                   Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));}

                   Canvas.Font.Style:=[fsBold];
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+480,y+yval,'TOTAL     :');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.Font.Size:=10;
                   //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount)),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;
                End;

                Canvas.Font.Style:=[];
                IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
                or (RB_OPAdvanceBilling.Checked=True) Then
                Begin
                   //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                   lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                   //Else
                   //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+480,y+yval,'ADVANCE  :');
                   Canvas.TextOut(X+560,y+yval,SetTextWidth(FormatFloat('0.00',lf_AdvanceAmt),iLength));

                   IF lf_NetAmount >  lf_AdvanceAmt Then
                   Begin
                      Inc(yval,20);

                      iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                      iLength:=64-iLength;
                      iLength:= Round(iLength / 4);
                      Canvas.Font.Style:=[fsBold];
                      Canvas.TextOut(X+480,y+yval,'DUE AMOUNT:');
                      Canvas.TextOut(X+560,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt),iLength));
                      //GetTextAlign(TA_RIGHT);
                   End;
                End;
            End;
            //PaperHeight:=y+yval+50;
        EndDoc;
    end;

    IF CheckBox_Preview.Checked=True Then
    FormRoboPreview.ShowModal;

end;

procedure TFormInpMain.AlternateBillPrintOM(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    yval,y,X,Z,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight:Integer;
    tm: TTextMetric;
    Is_NewPage,IsOPAdvanceBillCleared:Boolean;

    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);
                   If ILen>50 then
                   Inc(yval,18);

                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            IF gs_PrintInBlankPaper='Y' Then
            Begin
                 Font.Size:=14;
                 Font.Style:=[fsBold];
                 TextOut(220,Z+20,gs_HosNameBill);   // pixel
                 Font.Style:=[];

                 Font.Size:=8;

                 //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel
                 //TextOut(210,y+45,gs_HosSloganTitle);

                 Font.Size:=10;
                 TextOut(337,Z+40,gs_HosAddressBill);
                 TextOut(260,Z+60,gs_HosPhoneBill);
                 TextOut(245,Z+80,gs_HosPhoneExt);
                 TextOut(245,Z+100,gs_HosEmailBill);   // pixel

                 Font.Size:=12;
                 Font.Style:=[fsBold];
                 TextOut(60,Z+80,'PAN NO. : 500080485');
                 Font.Style:=[];
            End;



            y:=Y+20;
            Font.Size:=9;
            Font.Style:=[fsBold];
            IF RadioButton_OPBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y-10,'INVOICE')           //y+110
               Else
               TextOut(X+350,y-10,'INVOICE COPY');
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+340,y-10,'ADVANCE RECEIPT')
               Else
               TextOut(X+340,y-10,'ADVANCE RECEIPT COPY');

               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y-10,'REFUND RECEIPT')
               Else
               TextOut(X+350,y-10,'REFUND RECEIPT COPY');
            End;
            Font.Style:=[];
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'PATIENT NO  :');

               Font.Size:=9;
               Font.Style:=[fsBold];
               TextOut(X+460+70,y,'INVOICE NO    '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               TextOut(X+460+70,y,'INVOICE NO :');


               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME  '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME:');

               Font.Size:=8;
               TextOut(X+340,y,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=8;
               TextOut(X+460+70,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;


               IF gi_DateSystem=0 Then
               TextOut(X+564+70,y-10,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70,y-10,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+20;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'Scheme   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'Scheme : ');
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO   '+QueryNameCP.FieldByName('PatientId').AsString);  //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'PATIENT NO  :');

               Font.Style:=[fsBold];
               TextOut(X+230,y, 'IP NO   '+QueryNameCP.FieldByName('InPatientId').AsString);
               Font.Style:=[];
               TextOut(X+230,y, 'IP NO : ');
               Font.Style:=[fsBold];

               Font.Size:=8;
               TextOut(X+460+70,y,'INVOICE NO   '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               TextOut(X+460+70,y,'INVOICE NO  : ');
               Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME   '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME : ');


               //Y:=Y+20;
               TextOut(X+340,y,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245

               TextOut(X+460+70,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;


               IF gi_DateSystem=0 Then
               TextOut(X+564+70,y,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70,y,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    y:=y+20;
                    TextOut(X+70,y,'Scheme   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'Scheme : ');
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=8;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            //TextOut(X+500,y,format(' %-s',['DEPCODE']));
            TextOut(X+410+170,y,format(' %-s',['RATE']));
            TextOut(X+460+170,y,format(' %-s',['QTY']));
            //TextOut(X+520+100,y,format(' %-s',['DIS.']));
            IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580+100,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580+100,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+750,y+15);
        end;
    end;
begin
    Z:=30; // Only For Header for Bill
    y:=145;
    X:=10;

    i:=1;
    IsOPAdvanceBillCleared:=False;
    With Query_SubProcess Do
    Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct NVL(CrBillNo,''NO'') CrBillNo From BillDetail Where BillNo='+Chr(39)+BillNo+Chr(39));
          End;
          Open;
          If Copy(FieldByName('CrBillNo').AsString,0,2)='AD' Then
          IsOPAdvanceBillCleared:=True
          Else
          IsOPAdvanceBillCleared:=False;
    End;

    With QueryNameCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       Open;
    End;
    With QueryBillMasterCP Do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;
    With QuerySumAmtCP do
    Begin
       Close;
       ParamByName('PatientID').ASInteger:=PatientId;
       ParamByName('BillNo').ASString:=BillNo;
       IF RadioButton_OPRefundBilling.Checked=False Then
       sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
       Else
       sql[4]:=' (CancelStatus=''Y'' )  and ';
       Open;
    End;

    With QueryDetailCP Do
    Begin
       Close;
       IF RadioButton_IPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''N'''
       Else IF RadioButton_OPRefundBilling.Checked=True Then
       Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';
       ParamByName('BillNo').ASString:=BillNo;
       Open;
    End;

    IF RadioButton_OPRefundBilling.Checked=True Then
    Begin
         With Query_PrevBillNo do
         Begin
              Close;
              sql.Clear;
              sql.add(' Select Distinct PrevBillNo,CancelDate From BillDetail where BillNo='+#39+BillNo+#39);
              sql.add(' and Trim(PrevBillNo) is not null');
              Open;
         End;
    End;

    //li_PaperHeight:=15*QueryDetailCP.RecordCount;

    {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
    Begin
        With
    End;}


    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
       {Printer.BeginDoc;
        Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
        GetTextMetrics(Printer.Canvas.Handle, tm);}

        TotalNo:=QueryDetailCP.RecordCount;
        IF CheckBox_Preview.Checked=False Then
        DirectPrint:=True
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //UsePrinterOptions:=True;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=1156;
        PaperWidth:=850;
        BeginDoc;

        IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
        //yval:=195
        yval:=215
        Else
        yval:=235;
            //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
            With canvas do
            begin

                //GetTextMetrics(Canvas.Handle, tm);

                GetPrinterOptions;
                UpdateAnnotation;
                {***********************************************************}
                {                         Page header                       }
                {***********************************************************}
                PrintPageHeader;
                {***********************************************************}
                {                       column header                       }
                {***********************************************************}
                PrintColumnHeader;

                Font.Size:=8;
                NoOfItems:=0;

                y:=40;
                QueryDetailCP.First;//50,125
                TotalNo:=0;
                While Not QueryDetailCP.Eof  do
                begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    //sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);


                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);


                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);


                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                    //DepCode
                    //Canvas.TextOut(X+500,y+yval,format(' %-s',[sDepCode]));     //incr40
                    // Rate
                    Canvas.TextOut(X+385+170,y+yval,format(' %-s',[sRate])); //273
                    // Qty           //450
                    Canvas.TextOut(X+450+170,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    //Canvas.TextOut(X+485+100,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    Canvas.TextOut(X+565+100,y+yval,format(' %-s',[sAmount])); //380

                    IF TotalNo =14 Then
                    Begin
                        Inc(yval,30);
                        Canvas.Font.Style:=[fsBold];
                        Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                        NewPage;

                        yval:=70;

                        Canvas.TextOut(X+70,y+yval,'Page No 2');
                        Inc(yval,25);
                        Canvas.TextOut(X+70,y+yval,'.......Continuee');
                        Canvas.Font.Style:=[];
                    End;

                    Inc(yval,18);
                    QueryDetailCP.Next;
                end;

                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
                Canvas.Pen.Style:=psDot;
                Canvas.MoveTo(X+70,y+yval);
                Canvas.LineTo(X+750,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;


                Canvas.Font.Size:=9;
                IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                Begin
                   //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                   gs_PtType:='NORMAL';
                   //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
                End
                Else
                Begin
                   gs_PtType:='FRG';
                   //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
                   ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
                End;

                Canvas.Font.Size:=8;
                IF Length(ls_AmountInWords) > 70 Then
                Begin
                     Canvas.TextOut(X+70,y+yval,'In Words :  ');
                     iLen:=Length(ls_AmountInWords);
                     temVar:=0;
                     While Ilen > 0 do
                     begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,70);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+120,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,70);
                         Inc(yval,18);
                         ILen:=ILen-50;
                     end;
                End
                Else
                Begin
                   Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                   Inc(yval,40);
                End;

                Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);
                IF RadioButton_OPRefundBilling.Checked=True Then
                Begin
                     Font.Style:=[fsBold];
                     Canvas.TextOut(X+300,y+yval,'Prev BillNo   : '+Query_PrevBillNo.FieldByName('PrevBillNo').AsString);
                     Font.Style:=[];
                End;

                //Canvas.TextOut(X+70,y+yval,'PRINT DATE/TIME   : '+);

                IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
                End
                Else
                Begin
                   lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                   ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                   lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                   ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                   lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                   ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                   lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
                End;


                yval:=YItemsEnd;
                iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=64-iLength;
                iLength:= Round(iLength / 4);

                //Inc(yval,20);

                Canvas.TextOut(X+600,y+yval,'AMOUNT');
                Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
                IF gs_GovtTaxRule='TBD' Then
                Begin
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+570,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+600,y+yval,'          (-)');
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+600,y+yval,'TOTAL');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;
                End
                Else
                Begin
                   Inc(yval,20);

                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+600,y+yval,'          (-)');
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+600,y+yval,'NET TOTAL');
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                   iLength:=74-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+570,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                   Canvas.Font.Style:=[fsBold];
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.TextOut(X+600,y+yval,'TOTAL');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.Font.Size:=10;
                   //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount)),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;
                End;

                Canvas.Font.Style:=[];
                IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
                or (RB_OPAdvanceBilling.Checked=True) Then
                Begin

                   //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                   lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                   //Else
                   //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                   Inc(yval,20);
                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+600,y+yval,'ADVANCE');
                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                   If pb_OPDDuePaid<>True Then
                   Begin

                         IF lf_NetAmount >  lf_AdvanceAmt Then
                         Begin
                              Inc(yval,20);
                              Canvas.Font.Size:=8;
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              //GetTextAlign(TA_RIGHT);
                         End;
                         pb_OPDDuePaid:=False;
                   End;
                End;
            End;
            //PaperHeight:=y+yval+50;
        EndDoc;
    end;

    IF CheckBox_Preview.Checked=True Then
    FormRoboPreview.ShowModal;
end;



procedure TFormInpMain.AlternateBillPrintOM2ndType(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress,AdvanceBillNo:String;
    yval,y,X,Z,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight,li_AniD:Integer;
    tm: TTextMetric;
    Is_NewPage,IsOPAdvanceBillCleared:Boolean;

    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);
                   If ILen>50 then
                   Inc(yval,18);

                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            IF gs_PrintInBlankPaper='Y' Then
            Begin
                 Font.Size:=14;
                 Font.Style:=[fsBold];
                 TextOut(220,Z+20,gs_HosNameBill);   // pixel
                 Font.Style:=[];

                 Font.Size:=8;

                 //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel
                 //TextOut(210,y+45,gs_HosSloganTitle);

                 Font.Size:=10;
                 TextOut(337,Z+40,gs_HosAddressBill);
                 TextOut(260,Z+60,gs_HosPhoneBill);
                 TextOut(245,Z+80,gs_HosPhoneExt);
                 TextOut(245,Z+100,gs_HosEmailBill);   // pixel

                 Font.Size:=12;
                 Font.Style:=[fsBold];
                 TextOut(60,Z+80,'PAN NO. : 500080485');
                 Font.Style:=[];
            End;

            y:=Y+20;
            Font.Size:=9;
            Font.Style:=[fsBold];
            IF (RadioButton_OPBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+330,y-10,'TAX INVOICE')           //y+110
               Else
               TextOut(X+320,y-10,'TAX INVOICE COPY');
               //TextOut(X+350,y-10,'INVOICE');           //y+110
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='AD') Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+340,y-10,'RECEIPT')
               Else
               TextOut(X+340,y-10,'RECEIPT COPY');

               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y-10,'REFUND RECEIPT')
               Else
               TextOut(X+350,y-10,'REFUND RECEIPT COPY');
            End;
            Font.Style:=[];
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               IF (gi_HospitalId=5) and (Copy(QueryDetailCP.FieldByName('SERVICETYPE').AsString,0,10)='INTERNSHIP') Then
               Begin
                    TextOut(X+70,y, 'INT.FEE PAY NO  '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'INT.FEE PAY NO:');
               End
               Else
               Begin
                    TextOut(X+70,y, 'PATIENT NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'PATIENT NO  :');
               End;

               Font.Size:=10;
               Font.Style:=[fsBold];
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'INVOICE NO    '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString)
               Else
               TextOut(X+460+70-15,y,'R. NO        '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];

               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'INVOICE NO :')
               Else
               TextOut(X+460+70-15,y,'R. NO     :');


               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME  '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME:');

               TextOut(X+340,y,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=9;
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString)
               Else
               TextOut(X+460+70-15,y,'RECEIPT DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);
               Font.Size:=10;
               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70+20,y-10,'( '+VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD )')
               Else
               TextOut(X+564+70+20,y-10,'( '+ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS )');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+20;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO   '+QueryNameCP.FieldByName('PatientId').AsString);  //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'PATIENT NO  :');

               Font.Style:=[fsBold];
               TextOut(X+230,y, 'IP NO   '+QueryNameCP.FieldByName('InPatientId').AsString);
               Font.Style:=[];
               TextOut(X+230,y, 'IP NO : ');
               Font.Style:=[fsBold];

               Font.Size:=10;
               TextOut(X+460+70-15,y,'INVOICE NO   '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               TextOut(X+460+70-15,y,'INVOICE NO  : ');
               //Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME   '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME : ');


               //Y:=Y+20;
               TextOut(X+340,y,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245
               Font.Size:=9;
               TextOut(X+460+70-15,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);
               Font.Size:=10;
               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=10;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70+20,y+5,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70+20,y+5,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    y:=y+20;
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=9;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            //TextOut(X+500,y,format(' %-s',['DEPCODE']));
            TextOut(X+410+170,y,format(' %-s',['RATE']));
            TextOut(X+460+170+15,y,format(' %-s',['QTY']));
            //TextOut(X+520+100,y,format(' %-s',['DIS.']));
            IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+750,y+15);
        end;
    end;
begin
     Z:=30; // Only For Header for Bill
     y:=100;
     //y:=150;
     X:=-10;

     i:=1;
     IsOPAdvanceBillCleared:=False;
     With Query_SubProcess Do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct NVL(CrBillNo,''NO'') CrBillNo From BillDetail Where BillNo='+Chr(39)+BillNo+Chr(39));
          End;
          Open;
          AdvanceBillNo:=Query_SubProcess.FieldByName('CrBillNo').AsString;
          If (Copy(Query_SubProcess.FieldByName('CrBillNo').AsString,0,2)='AD') And (Copy(BillNo,0,2)='CS')Then
          IsOPAdvanceBillCleared:=True
          Else
          IsOPAdvanceBillCleared:=False;
     End;

     With QueryNameCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          Open;
     End;

     With QueryBillMasterCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     With QueryForDoctor do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Desig||'' ''||F_Name||'' ''||L_Name as DocName,IsDoctor From Doctor where DocCode In (Select Distinct DocCode From ');
          sql.add(' BillDetail where BillNo='+#39+BillNo+#39+' and DocCode<>''HOS01'')');
          Open;
     End;

     With QuerySumAmtCP do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          IF RadioButton_OPRefundBilling.Checked=False Then
          sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
          Else
          sql[4]:=' (CancelStatus=''Y'' )  and ';
          Open;
     End;

     With QueryDetailCP Do
     Begin
          Close;
          IF RadioButton_IPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPRefundBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     IF RadioButton_OPRefundBilling.Checked=True Then
     Begin
          With Query_PrevBillNo do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Distinct PrevBillNo,CancelDate From BillDetail where BillNo='+#39+BillNo+#39);
               sql.add(' and Trim(PrevBillNo) is not null');
               Open;
          End;
     End;

     //li_PaperHeight:=15*QueryDetailCP.RecordCount;

     {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
     Begin
          With
     End;}

     ls_PtAddress:=PatientAddress;
     ls_PrintDate:=ServerDate.TodaysDate;
     ls_PrintTime:=ServerDate.TodaysTime;
     With FormRoboPreview.PrintPreviewRoboPrint do
     Begin
          {Printer.BeginDoc;
          Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          GetTextMetrics(Printer.Canvas.Handle, tm);}

          TotalNo:=QueryDetailCP.RecordCount;
          IF CheckBox_Preview.Checked=False Then
          DirectPrint:=True
          Else
          DirectPrint:=False;
          PaperType:= pCustom;
          FastPrint:=True;
          Units:= mmPixel;
          Zoom:=100;
          //UsePrinterOptions:=True;
          //PaperHeight:=900+ ( TotRecs * 50);
          //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
          //PaperHeight:=1156;
          PaperHeight:=578;
          PaperWidth:=850;
          BeginDoc;

          IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
          yval:=220
          //yval:=215
          Else
          //yval:=235;
          yval:=240;
          //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          With canvas do
          Begin
               //GetTextMetrics(Canvas.Handle, tm);

               GetPrinterOptions;
               UpdateAnnotation;
               {***********************************************************}
               {                         Page header                       }
               {***********************************************************}
               PrintPageHeader;
               {***********************************************************}
               {                       column header                       }
               {***********************************************************}
               PrintColumnHeader;
               Font.Size:=10;
               NoOfItems:=0;

               y:=-10;
               QueryDetailCP.First;//50,125
               TotalNo:=0;
               While Not QueryDetailCP.Eof  do
               Begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    //sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);

                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);

                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);

                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= SetTextWidth(sAmount,iLength);

                    IF TotalNo = 15 Then
                    Begin
                         Inc(yval,30);
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                         NewPage;

                         yval:=120;
                         Canvas.Font.Size:=10;
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Page No 2');
                         Inc(yval,25);
                         Canvas.TextOut(X+70,y+yval,'.......Continuee (Bill No) :'+BillNo);
                         Canvas.Font.Style:=[];
                         Inc(yval,30);
                    End;

                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                    //DepCode
                    //Canvas.TextOut(X+500,y+yval,format(' %-s',[sDepCode]));     //incr40
                    // Rate
                    Canvas.TextOut(X+385+170,y+yval,format(' %-s',[sRate])); //273
                    // Qty           //450
                    Canvas.TextOut(X+450+170+5,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    //Canvas.TextOut(X+485+100,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    Canvas.TextOut(X+565+100,y+yval,format(' %-s',[sAmount])); //380
                    Inc(yval,18);
                    QueryDetailCP.Next;
               end;

               {***********************************************************}
               {                       print summary                       }
               {***********************************************************}
               Canvas.Pen.Style:=psDot;
               Canvas.MoveTo(X+70,y+yval);
               Canvas.LineTo(X+750,y+yval);

               yval:=yval+10;
               YItemsEnd:=yval;
               Canvas.Font.Size:=10;
               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                    gs_PtType:='NORMAL';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
               End
               Else
               Begin
                    gs_PtType:='FRG';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
               End;

               Canvas.Font.Size:=10;
               IF Length(ls_AmountInWords) > 55 Then
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  ');
                    iLen:=Length(ls_AmountInWords);
                    temVar:=0;
                    While Ilen > 0 do
                    begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,55);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+120,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,55);
                         Inc(yval,18);
                         ILen:=ILen-50;
                    end;
               End
               Else
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                    Inc(yval,40);
               End;

               Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

               if (ps_ProcedureBill='Y') And (pb_OPDDuePaid<>True) Then
               Canvas.TextOut(X+300,y+yval,'PROCEDURE NO   : '+IntToStr(pi_IVFNo));

               IF RadioButton_OPRefundBilling.Checked=True Then
               Begin
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+300,y+yval,'Prev BillNo   : '+Query_PrevBillNo.FieldByName('PrevBillNo').AsString);
                    Canvas.Font.Style:=[];
               End;

               If b_Reprint=True Then
               Begin
                    Inc(yval,20);
                    Canvas.TextOut(X+70,y+yval,'RE-PRINT BY : '+gs_UserName+'    DATE/TIME :'+ServerDate.TodaysDate+' / '+ServerDate.TodaysTime);
                    //Inc(yval,20);
                    //TextOut(X+60,y+yval,'PRINT NO. : '+gs_UserName);
               End;

               If Trim(QueryBillMasterCP.FieldByName('Remarks').AsString)<>'' Then
               Begin
                    Inc(yval,20);
                    Canvas.TextOut(X+70,y+yval,'Remarks : '+QueryBillMasterCP.FieldByName('Remarks').AsString);
               End;

               IF Trim(QueryForDoctor.FieldByName('DocName').AsString)<>'' Then
               Begin
                    Canvas.Font.Style:=[fsBold];
                    IF QueryForDoctor.FieldByName('IsDoctor').AsString='Y' Then
                    Canvas.TextOut(X+70,y+yval+20,'DOCTOR : '+QueryForDoctor.FieldByName('DocName').AsString)
                    Else
                    Canvas.TextOut(X+70,y+yval+20,'  : '+QueryForDoctor.FieldByName('DocName').AsString);
                    Canvas.Font.Style:=[];
               End;

               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
               End
               Else
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
               End;

               yval:=YItemsEnd;
               iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
               iLength:=64-iLength;
               iLength:= Round(iLength / 4);

               //Inc(yval,20);

               Canvas.TextOut(X+600,y+yval,'AMOUNT');
               Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
               IF gs_GovtTaxRule='TBD' Then
               Begin
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+555,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+660,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'ADVANCE');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+20,'DUES');
                         Canvas.TextOut(X+465,y+yval+20,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+40,'PAID');
                         Canvas.TextOut(X+465,y+yval+40,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    If lf_Discount > 0 Then
                    Begin
                         Canvas.TextOut(X+600,y+yval,'DISCOUNT');
                         Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));
                         Inc(yval,20);
                   End;

                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+600,y+yval,'TOTAL');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;


                    If ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where ProcedureNo='+IntToStr(pi_IVFNO));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              sql.add(' And PatientId='+IntToStr(pi_PatientId)+' and InPatientID=0');
                              sql.add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              //sql.SaveToFile('Sql.txt');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+550,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_AdvanceAmt)),iLength));
                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+550,y+yval,'PAID AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+550,y+yval,'NET AMOUNT')
                                   ELSE
                                   Canvas.TextOut(X+550,y+yval,'REFUND AMOUNT');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End;
                         End;

                         With Query_SubProcess Do
                         Begin
                              Close;
                              Sql.Clear;
                              Sql.Add('Select IPDID,Cr,Dr,BillNo,ModifyDate From IPDeposit Where PatientID='+IntToStr(pi_PatientId));
                              Sql.Add(' And InPatientID=0');
                              Sql.Add(' And ProcedureNo='+IntToStr(pi_IVFNO));
                              Sql.Add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              Sql.Add(' Order By IPDID Asc');
                              Open;
                              li_AniD:=yval;
                              Canvas.TextOut(X+70,y+yval-20,'Deposit Detail(s)');
                              While Not Eof Do
                              Begin
                                   Canvas.TextOut(X+70,y+li_AniD,FieldByName('ModifyDate').AsString);
                                   Canvas.TextOut(X+150,y+li_AniD,FieldByName('BillNo').AsString);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Cr').AsFloat))
                                   Else
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Dr').AsFloat));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Cr').AsFloat)),iLength))
                                   Else
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Dr').AsFloat)),iLength)+'-R');
                                   Inc(li_AniD,20);
                                   Next;
                              End;
                         End;
                    End;
               End
               Else
               Begin
                    Inc(yval,20);

                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+600-10,y+yval,'          (-)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'ADVANCE');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Canvas.TextOut(X+600-10,y+yval,'SUB TOTAL');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);
                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'DUES');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+570-10,y+yval,'SER. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    Canvas.Font.Style:=[fsBold];
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'PAID');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Canvas.TextOut(X+600-10,y+yval,'TOTAL');
                    Canvas.Font.Style:=[fsBold];
                    Canvas.Font.Size:=10;
                    //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount)),iLength));
                    Canvas.Font.Style:=[];
                    //Canvas.Font.Size:=8;
                    {IF ps_IVFBIll='Y' Then
                    Begin
                         with Query_CheckeIVFDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where IVFNo='+IntToStr(pi_IVFNO));
                              sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              Open;
                         End;

                         IF Query_CheckeIVFDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=Query_CheckeIVFDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+600,y+yval,'IVF DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+600,y+yval,'NET AMT.')
                                   ELSE
                                   Canvas.TextOut(X+585,y+yval,'REFUND AMT.');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Abs(Round(lf_NetAmount-lf_AdvanceAmt))),iLength));
                              End;
                         End;
                    End
                    Else If ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where ProcedureNo='+IntToStr(pi_IVFNO));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              sql.add(' And PatientId='+IntToStr(pi_PatientId)+' and InPatientID=0');
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              sql.SaveToFile('Sql.txt');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+550,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+600,y+yval,'NET AMT.')
                                   ELSE
                                   Canvas.TextOut(X+585,y+yval,'REFUND AMT.');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Abs(Round(lf_NetAmount-lf_AdvanceAmt))),iLength));
                              End;
                         End;
                    End;}
               End;

               Canvas.Font.Style:=[];
               IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
               or (RB_OPAdvanceBilling.Checked=True) or (Copy(QueryDetailCP.FieldByName('BillNo').AsString,0,2)='AD') Then // AD - Advance BillNo for Re-Print
               Begin
                    //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                    //Else
                    //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);
                    Canvas.Font.Size:=10;
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+600-10,y+yval,'ADVANCE');
                    Canvas.Font.Size:=10;
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                    If (pb_OPDDuePaid<>True) And (Copy(BillNo,0,2)='AD') Then
                    Begin
                         IF lf_NetAmount >  lf_AdvanceAmt Then
                         Begin
                              Inc(yval,20);
                              Canvas.Font.Size:=10;
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+585-10,y+yval,'DUE AMOUNT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              //GetTextAlign(TA_RIGHT);
                         End;
                         pb_OPDDuePaid:=False;
                    End;
               End;
          End;
          //PaperHeight:=y+yval+50;
          EndDoc;
          //FormRoboPreview.ShowModal;
     End;
     If CheckBox_Preview.Checked=True Then
     FormRoboPreview.ShowModal;
end;

procedure TFormInpMain.AlternateBillPrintHAMSFREE(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress,AdvanceBillNo:String;
    yval,y,X,Z,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight,li_AniD:Integer;
    tm: TTextMetric;
    Is_NewPage,IsOPAdvanceBillCleared:Boolean;
    Label LabelAmrit;
    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);
                   If ILen>50 then
                   Inc(yval,18);

                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            IF gs_PrintInBlankPaper='Y' Then
            Begin
                 Font.Size:=14;
                 Font.Style:=[fsBold];
                 TextOut(220,Z+20,gs_HosNameBill);   // pixel
                 Font.Style:=[];

                 Font.Size:=8;

                 //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel
                 //TextOut(210,y+45,gs_HosSloganTitle);

                 Font.Size:=10;
                 TextOut(337,Z+40,gs_HosAddressBill);
                 TextOut(260,Z+60,gs_HosPhoneBill);
                 TextOut(245,Z+80,gs_HosPhoneExt);
                 TextOut(245,Z+100,gs_HosEmailBill);   // pixel

                 Font.Size:=12;
                 Font.Style:=[fsBold];
                 TextOut(60,Z+80,'PAN NO. : 500080485');
                 Font.Style:=[];
            End;

            y:=Y+20;
            Font.Size:=9;
            Font.Style:=[fsBold];
            IF (RadioButton_OPBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
            Begin
               IF b_Reprint=False Then
               //TextOut(X+330,y-10,'TAX INVOICE')           //y+110
               TextOut(X+330,y-10,'')           //y+110
               Else
               //TextOut(X+320,y-10,'TAX INVOICE COPY');
               TextOut(X+330,y-10,'');           //y+110
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='AD') Then
            Begin
               IF b_Reprint=False Then
               //TextOut(X+340,y-10,'RECEIPT')
               TextOut(X+330,y-10,'')
               Else
               //TextOut(X+340,y-10,'RECEIPT COPY');
               TextOut(X+330,y-10,'');
               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               //TextOut(X+350,y-10,'REFUND RECEIPT')
               TextOut(X+330,y-10,'')
               Else
               //TextOut(X+350,y-10,'REFUND RECEIPT COPY');
               TextOut(X+330,y-10,'')
            End;
            Font.Style:=[];
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               IF (gi_HospitalId=5) and (Copy(QueryDetailCP.FieldByName('SERVICETYPE').AsString,0,10)='INTERNSHIP') Then
               Begin
                    TextOut(X+70,y, 'INT.FEE PAY NO  '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'INT.FEE PAY NO:');
               End
               Else
               Begin
                    TextOut(X+70,y, 'HOSPITAL NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'HOSPITAL NO  :');
               End;

               Font.Size:=10;
               Font.Style:=[fsBold];
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'SERVICE NO    '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '{+QueryBillMasterCP.FieldByName('PayType').AsString})
               Else
               TextOut(X+460+70-15,y,'R. NO        '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '{+QueryBillMasterCP.FieldByName('PayType').AsString});
               Font.Style:=[];

               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'SERVICE NO :')
               Else
               TextOut(X+460+70-15,y,'R. NO     :');


               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME  '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME:');

               TextOut(X+340,y,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=9;
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'SERVICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString)
               Else
               TextOut(X+460+70-15,y,'SERVICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);
               Font.Size:=10;
               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70+20,y-10,'( '+VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD )')
               Else
               TextOut(X+564+70+20,y-10,'( '+ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS )');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+20;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'HOSPITAL NO   '+QueryNameCP.FieldByName('PatientId').AsString);  //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'HOSPITAL NO  :');

               Font.Style:=[fsBold];
               TextOut(X+230,y, 'IP NO   '+QueryNameCP.FieldByName('InPatientId').AsString);
               Font.Style:=[];
               TextOut(X+230,y, 'IP NO : ');
               Font.Style:=[fsBold];

               Font.Size:=10;
               TextOut(X+460+70-15,y,'SERVICE NO   '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'{+QueryBillMasterCP.FieldByName('PayType').AsString});
               Font.Style:=[];
               TextOut(X+460+70-15,y,'SERVICE NO  : ');
               //Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME   '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME : ');


               //Y:=Y+20;
               TextOut(X+340,y,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245
               Font.Size:=9;
               TextOut(X+460+70-15,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);
               Font.Size:=10;
               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=10;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70+20,y+5,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70+20,y+5,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    y:=y+20;
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=9;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            //TextOut(X+500,y,format(' %-s',['DEPCODE']));
            //TextOut(X+410+170,y,format(' %-s',['RATE']));
            TextOut(X+460+170+15,y,format(' %-s',['QTY']));
            //TextOut(X+520+100,y,format(' %-s',['DIS.']));
            {IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT($)']));
            }
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+750,y+15);
        end;
    end;
begin
     Z:=30; // Only For Header for Bill
     y:=100;
     //y:=150;
     X:=-10;

     i:=1;
     IsOPAdvanceBillCleared:=False;
     With Query_SubProcess Do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct NVL(CrBillNo,''NO'') CrBillNo From BillDetail Where BillNo='+Chr(39)+BillNo+Chr(39));
          End;
          Open;
          AdvanceBillNo:=Query_SubProcess.FieldByName('CrBillNo').AsString;
          If (Copy(Query_SubProcess.FieldByName('CrBillNo').AsString,0,2)='AD') And (Copy(BillNo,0,2)='CS')Then
          IsOPAdvanceBillCleared:=True
          Else
          IsOPAdvanceBillCleared:=False;
     End;

     With QueryNameCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          Open;
     End;

     With QueryBillMasterCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     With QueryForDoctor do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Desig||'' ''||F_Name||'' ''||L_Name as DocName,IsDoctor From Doctor where DocCode In (Select Distinct DocCode From ');
          sql.add(' BillDetail where BillNo='+#39+BillNo+#39+' and DocCode<>''HOS01'')');
          Open;
     End;

     With QuerySumAmtCP do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          IF RadioButton_OPRefundBilling.Checked=False Then
          sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
          Else
          sql[4]:=' (CancelStatus=''Y'' )  and ';
          Open;
     End;

     With QueryDetailCP Do
     Begin
          Close;
          IF RadioButton_IPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPRefundBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     IF RadioButton_OPRefundBilling.Checked=True Then
     Begin
          With Query_PrevBillNo do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Distinct PrevBillNo,CancelDate From BillDetail where BillNo='+#39+BillNo+#39);
               sql.add(' and Trim(PrevBillNo) is not null');
               Open;
          End;
     End;

     //li_PaperHeight:=15*QueryDetailCP.RecordCount;

     {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
     Begin
          With
     End;}

     ls_PtAddress:=PatientAddress;
     ls_PrintDate:=ServerDate.TodaysDate;
     ls_PrintTime:=ServerDate.TodaysTime;
     With FormRoboPreview.PrintPreviewRoboPrint do
     Begin
          {Printer.BeginDoc;
          Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          GetTextMetrics(Printer.Canvas.Handle, tm);}

          TotalNo:=QueryDetailCP.RecordCount;
          IF CheckBox_Preview.Checked=False Then
          DirectPrint:=True
          Else
          DirectPrint:=False;
          PaperType:= pCustom;
          FastPrint:=True;
          Units:= mmPixel;
          Zoom:=100;
          //UsePrinterOptions:=True;
          //PaperHeight:=900+ ( TotRecs * 50);
          //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
          //PaperHeight:=1156;
          PaperHeight:=578;
          PaperWidth:=850;
          BeginDoc;

          IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
          yval:=220
          //yval:=215
          Else
          //yval:=235;
          yval:=240;
          //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          With canvas do
          Begin
               //GetTextMetrics(Canvas.Handle, tm);

               GetPrinterOptions;
               UpdateAnnotation;
               {***********************************************************}
               {                         Page header                       }
               {***********************************************************}
               PrintPageHeader;
               {***********************************************************}
               {                       column header                       }
               {***********************************************************}
               PrintColumnHeader;
               Font.Size:=10;
               NoOfItems:=0;

               y:=-10;
               QueryDetailCP.First;//50,125
               TotalNo:=0;
               While Not QueryDetailCP.Eof  do
               Begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    //sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);

                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);

                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);

                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= SetTextWidth(sAmount,iLength);

                    IF TotalNo = 16 Then
                    Begin
                         Inc(yval,30);
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                         NewPage;

                         yval:=120;
                         Canvas.Font.Size:=10;
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Page No 2');
                         Inc(yval,25);
                         Canvas.TextOut(X+70,y+yval,'.......Continuee (Bill No) :'+BillNo);
                         Canvas.Font.Style:=[];
                         Inc(yval,30);
                    End;

                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                    //DepCode
                    //Canvas.TextOut(X+500,y+yval,format(' %-s',[sDepCode]));     //incr40
                    // Rate
                    //Canvas.TextOut(X+385+170,y+yval,format(' %-s',[sRate])); //273
                    // Qty           //450
                    Canvas.TextOut(X+450+170+5,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    //Canvas.TextOut(X+485+100,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    //Canvas.TextOut(X+565+100,y+yval,format(' %-s',[sAmount])); //380
                    Inc(yval,18);
                    QueryDetailCP.Next;
               end;

               {***********************************************************}
               {                       print summary                       }
               {***********************************************************}
               Canvas.Pen.Style:=psDot;
               Canvas.MoveTo(X+70,y+yval);
               Canvas.LineTo(X+750,y+yval);

               yval:=yval+30;
               Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);
               Goto LabelAmrit;

               yval:=yval+10;
               YItemsEnd:=yval;
               Canvas.Font.Size:=10;
               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                    gs_PtType:='NORMAL';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
               End
               Else
               Begin
                    gs_PtType:='FRG';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
               End;

               Canvas.Font.Size:=10;
               IF Length(ls_AmountInWords) > 55 Then
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  ');
                    iLen:=Length(ls_AmountInWords);
                    temVar:=0;
                    While Ilen > 0 do
                    begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,55);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+120,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,55);
                         Inc(yval,18);
                         ILen:=ILen-50;
                    end;
               End
               Else
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                    Inc(yval,40);
               End;

               Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

               if (ps_ProcedureBill='Y') And (pb_OPDDuePaid<>True) Then
               Canvas.TextOut(X+300,y+yval,'PROCEDURE NO   : '+IntToStr(pi_IVFNo));

               IF RadioButton_OPRefundBilling.Checked=True Then
               Begin
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+300,y+yval,'Prev BillNo   : '+Query_PrevBillNo.FieldByName('PrevBillNo').AsString);
                    Canvas.Font.Style:=[];
               End;

               IF Trim(QueryForDoctor.FieldByName('DocName').AsString)<>'' Then
               Begin
                    Canvas.Font.Style:=[fsBold];
                    IF QueryForDoctor.FieldByName('IsDoctor').AsString='Y' Then
                    Canvas.TextOut(X+70,y+yval+20,'DOCTOR : '+QueryForDoctor.FieldByName('DocName').AsString)
                    Else
                    Canvas.TextOut(X+70,y+yval+20,'  : '+QueryForDoctor.FieldByName('DocName').AsString);
                    Canvas.Font.Style:=[];
               End;

               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
               End
               Else
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
               End;

               yval:=YItemsEnd;
               iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
               iLength:=64-iLength;
               iLength:= Round(iLength / 4);

               //Inc(yval,20);

               Canvas.TextOut(X+600,y+yval,'AMOUNT');
               Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
               IF gs_GovtTaxRule='TBD' Then
               Begin
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+555,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+660,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'ADVANCE');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+20,'DUES');
                         Canvas.TextOut(X+465,y+yval+20,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+40,'PAID');
                         Canvas.TextOut(X+465,y+yval+40,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    If lf_Discount > 0 Then
                    Begin
                         Canvas.TextOut(X+600,y+yval,'DISCOUNT');
                         Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));
                         Inc(yval,20);
                   End;

                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+600,y+yval,'TOTAL');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;

                    If ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where ProcedureNo='+IntToStr(pi_IVFNO));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              sql.add(' And PatientId='+IntToStr(pi_PatientId)+' and InPatientID=0');
                              sql.add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              //sql.SaveToFile('Sql.txt');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+550,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_AdvanceAmt)),iLength));
                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+550,y+yval,'PAID AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+550,y+yval,'NET AMOUNT')
                                   ELSE
                                   Canvas.TextOut(X+550,y+yval,'REFUND AMOUNT');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End;
                         End;

                         With Query_SubProcess Do
                         Begin
                              Close;
                              Sql.Clear;
                              Sql.Add('Select IPDID,Cr,Dr,BillNo,ModifyDate From IPDeposit Where PatientID='+IntToStr(pi_PatientId));
                              Sql.Add(' And InPatientID=0');
                              Sql.Add(' And ProcedureNo='+IntToStr(pi_IVFNO));
                              Sql.Add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              Sql.Add(' Order By IPDID Asc');
                              Open;
                              li_AniD:=yval;
                              Canvas.TextOut(X+70,y+yval-20,'Deposit Detail(s)');
                              While Not Eof Do
                              Begin
                                   Canvas.TextOut(X+70,y+li_AniD,FieldByName('ModifyDate').AsString);
                                   Canvas.TextOut(X+150,y+li_AniD,FieldByName('BillNo').AsString);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Cr').AsFloat))
                                   Else
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Dr').AsFloat));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Cr').AsFloat)),iLength))
                                   Else
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Dr').AsFloat)),iLength)+'-R');
                                   Inc(li_AniD,20);
                                   Next;
                              End;
                         End;
                    End;
               End
               Else
               Begin
                    Inc(yval,20);

                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+600-10,y+yval,'          (-)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'ADVANCE');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Canvas.TextOut(X+600-10,y+yval,'SUB TOTAL');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);
                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'DUES');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+570-10,y+yval,'SER. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    Canvas.Font.Style:=[fsBold];
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'PAID');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Canvas.TextOut(X+600-10,y+yval,'TOTAL');
                    Canvas.Font.Style:=[fsBold];
                    Canvas.Font.Size:=10;
                    //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount)),iLength));
                    Canvas.Font.Style:=[];
                    //Canvas.Font.Size:=8;
                    {IF ps_IVFBIll='Y' Then
                    Begin
                         with Query_CheckeIVFDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where IVFNo='+IntToStr(pi_IVFNO));
                              sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              Open;
                         End;

                         IF Query_CheckeIVFDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=Query_CheckeIVFDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+600,y+yval,'IVF DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+600,y+yval,'NET AMT.')
                                   ELSE
                                   Canvas.TextOut(X+585,y+yval,'REFUND AMT.');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Abs(Round(lf_NetAmount-lf_AdvanceAmt))),iLength));
                              End;
                         End;
                    End
                    Else If ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where ProcedureNo='+IntToStr(pi_IVFNO));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              sql.add(' And PatientId='+IntToStr(pi_PatientId)+' and InPatientID=0');
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              sql.SaveToFile('Sql.txt');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+550,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=10;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+600,y+yval,'NET AMT.')
                                   ELSE
                                   Canvas.TextOut(X+585,y+yval,'REFUND AMT.');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Abs(Round(lf_NetAmount-lf_AdvanceAmt))),iLength));
                              End;
                         End;
                    End;}
               End;

               Canvas.Font.Style:=[];
               IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
               or (RB_OPAdvanceBilling.Checked=True) or (Copy(QueryDetailCP.FieldByName('BillNo').AsString,0,2)='AD') Then // AD - Advance BillNo for Re-Print
               Begin
                    //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                    //Else
                    //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);
                    Canvas.Font.Size:=10;
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+600-10,y+yval,'ADVANCE');
                    Canvas.Font.Size:=10;
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                    If (pb_OPDDuePaid<>True) And (Copy(BillNo,0,2)='AD') Then
                    Begin
                         IF lf_NetAmount >  lf_AdvanceAmt Then
                         Begin
                              Inc(yval,20);
                              Canvas.Font.Size:=10;
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+585-10,y+yval,'DUE AMOUNT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              //GetTextAlign(TA_RIGHT);
                         End;
                         pb_OPDDuePaid:=False;
                    End;
               End;
          End;
          //PaperHeight:=y+yval+50;
          LabelAmrit:
          EndDoc;
          //FormRoboPreview.ShowModal;
     End;
     If CheckBox_Preview.Checked=True Then
     FormRoboPreview.ShowModal;
end;

Function TFormInpMain.GetMeAdvance(AdvanceBillNo:String):Double;
begin
     Result:=0.0;
     With Query_SubProcess Do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add('Select Sum(Cr) As Advance From IPDeposit Where RefBillNo='+Chr(39)+AdvanceBillNo+Chr(39));
          End;
          Open;
          Result:=Query_SubProcess.FieldByName('Advance').AsFloat;
     End;
end;


procedure TFormInpMain.AlternateBillPrint_BlueBird(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    yval,y,X,Z,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight:Integer;
    tm: TTextMetric;
    Is_NewPage:Boolean;

    Procedure AutoStratchItems(ItemName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;
         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);
                   If ILen>50 then
                   Inc(yval,18);

                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            IF gs_PrintInBlankPaper='Y' Then
            Begin
                 Font.Size:=14;
                 Font.Style:=[fsBold];
                 TextOut(220,Z+20,gs_HosNameBill);   // pixel
                 Font.Style:=[];

                 Font.Size:=8;

                 //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel
                 //TextOut(210,y+45,gs_HosSloganTitle);

                 Font.Size:=10;
                 {TextOut(337,Z+40,gs_HosAddressBill);
                 TextOut(260,Z+60,gs_HosPhoneBill);
                 TextOut(245,Z+80,gs_HosPhoneExt);
                 TextOut(245,Z+100,gs_HosEmailBill);   // pixel}

                 TextOut(275,Z+40,gs_HosAddressBill);
                 TextOut(285,Z+60,gs_HosPhoneBill);
                 TextOut(245,Z+80,gs_HosPhoneExt);
                 TextOut(245,Z+100,gs_HosEmailBill);   // pixel

                 Font.Size:=12;
                 Font.Style:=[fsBold];
                 TextOut(60,Z+80,'PAN NO. : 303402974');
                 Font.Style:=[];
            End;



            y:=Y+20;
            Font.Size:=9;
            Font.Style:=[fsBold];
            IF (RadioButton_OPBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y-10,'INVOICE')           //y+110
               Else
               //TextOut(X+350,y-10,'INVOICE COPY');
               TextOut(X+350,y-10,'INVOICE');           //y+110
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='AD') Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+340,y-10,'RECEIPT')
               Else
               TextOut(X+340,y-10,'RECEIPT COPY');

               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+350,y-10,'REFUND RECEIPT')
               Else
               TextOut(X+350,y-10,'REFUND RECEIPT COPY');
            End;
            Font.Style:=[];
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               IF (gi_HospitalId=5) and (Copy(QueryDetailCP.FieldByName('SERVICETYPE').AsString,0,10)='INTERNSHIP') Then
               Begin
                    TextOut(X+70,y, 'INT.FEE PAY NO  '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'INT.FEE PAY NO:');
               End
               Else
               Begin
                    TextOut(X+70,y, 'PATIENT NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
                    Font.Style:=[];
                    TextOut(X+70,y, 'PATIENT NO  :');
               End;

               Font.Size:=9;
               Font.Style:=[fsBold];
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70,y,'INVOICE NO    '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString)
               Else
               TextOut(X+460+70,y,'R. NO        '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];

               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70,y,'INVOICE NO :')
               Else
               TextOut(X+460+70,y,'R. NO     :');


               y:=y+20;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME  '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME:');

               Font.Size:=8;
               TextOut(X+340,y,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=8;
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString)
               Else
               TextOut(X+460+70,y,'RECEIPT DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+23;
               TextOut(X+70,y, 'ADDRESS :'+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70,y-10,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70,y-10,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+20;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'Scheme   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'Scheme : ');
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'PATIENT NO   '+QueryNameCP.FieldByName('PatientId').AsString);  //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'PATIENT NO  :');

               Font.Style:=[fsBold];
               TextOut(X+230,y, 'IP NO   '+QueryNameCP.FieldByName('InPatientId').AsString);
               Font.Style:=[];
               TextOut(X+230,y, 'IP NO : ');
               Font.Style:=[fsBold];

               Font.Size:=8;
               TextOut(X+460+70,y,'INVOICE NO   '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               TextOut(X+460+70,y,'INVOICE NO  : ');
               Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y, 'NAME   '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME : ');


               //Y:=Y+20;
               TextOut(X+340,y,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245

               TextOut(X+460+70,y,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               Y:=Y+20;
               TextOut(X+70,y, 'ADDRESS : '+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=8;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70,y,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70,y,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    y:=y+20;
                    TextOut(X+70,y,'Scheme   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'Scheme : ');
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        y:=y+25;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=8;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            //TextOut(X+500,y,format(' %-s',['DEPCODE']));
            TextOut(X+410+170,y,format(' %-s',['RATE']));
            TextOut(X+460+170,y,format(' %-s',['QTY']));
            //TextOut(X+520+100,y,format(' %-s',['DIS.']));
            IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580+100,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580+100,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+750,y+15);
        end;
    end;
begin
     Z:=30; // Only For Header for Bill
     //y:=145;
     y:=125;
     X:=10;
     i:=1;
     With QueryNameCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          Open;
     End;

     With QueryBillMasterCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     With QueryForDoctor do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select F_Name||'' ''||L_Name as DocName,IsDoctor From Doctor where DocCode In (Select Distinct DocCode From ');
          sql.add(' BillDetail where BillNo='+#39+BillNo+#39+' and DocCode<>''HOS01'')');
          Open;
     End;

     With QuerySumAmtCP do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          IF RadioButton_OPRefundBilling.Checked=False Then
          sql[4]:=' CancelStatus=''N'' And '//IsRefund IS NULL And '
          Else
          sql[4]:=' (CancelStatus=''Y'' )  and ';
          Open;
     End;

     With QueryDetailCP Do
     Begin
          Close;
          IF RadioButton_IPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''N'''
          Else IF RadioButton_OPRefundBilling.Checked=True Then
          Sql[5]:=' And CancelStatus=''Y'' And PayType=''REFUND'' ';
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     IF RadioButton_OPRefundBilling.Checked=True Then
     Begin
          With Query_PrevBillNo do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Distinct PrevBillNo,CancelDate From BillDetail where BillNo='+#39+BillNo+#39);
               sql.add(' and Trim(PrevBillNo) is not null');
               Open;
          End;
     End;

     //li_PaperHeight:=15*QueryDetailCP.RecordCount;

     {IF (RadioButton_IPBilling.Checked=True) Or (RadioButton_OPBilling.Checked=True) Then
     Begin
          With
     End;}


     ls_PtAddress:=PatientAddress;
     ls_PrintDate:=ServerDate.TodaysDate;
     ls_PrintTime:=ServerDate.TodaysTime;
     With FormRoboPreview.PrintPreviewRoboPrint do
     begin
          {Printer.BeginDoc;
          Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          GetTextMetrics(Printer.Canvas.Handle, tm);}

          TotalNo:=QueryDetailCP.RecordCount;
          IF CheckBox_Preview.Checked=False Then
          DirectPrint:=True
          Else
          DirectPrint:=False;
          PaperType:= pCustom;
          FastPrint:=True;
          Units:= mmPixel;
          Zoom:=100;
          //UsePrinterOptions:=True;
          //PaperHeight:=900+ ( TotRecs * 50);
          //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
          PaperHeight:=578;
          PaperWidth:=850;
          BeginDoc;

          IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
          yval:=195
          //yval:=215
          Else
          //yval:=235;
          yval:=215;
          //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          With canvas do
          begin
               //GetTextMetrics(Canvas.Handle, tm);

               GetPrinterOptions;
               UpdateAnnotation;
               {***********************************************************}
               {                         Page header                       }
               {***********************************************************}
               PrintPageHeader;
               {***********************************************************}
               {                       column header                       }
               {***********************************************************}
               PrintColumnHeader;

               Font.Size:=8;
               NoOfItems:=0;

               y:=40;
               QueryDetailCP.First;//50,125
               TotalNo:=0;
               While Not QueryDetailCP.Eof  do
               begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}
                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    //sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=SetTextWidth(sRate,iLength);


                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=SetTextWidth(sQty,iLength);


                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=SetTextWidth(sDisAmt,iLength);


                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    Canvas.TextOut(X+70,y+yval,format(' %-s',[sNo]));
                    // Particulars
                    AutoStratchItems(sParticulars);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                    //DepCode
                    //Canvas.TextOut(X+500,y+yval,format(' %-s',[sDepCode]));     //incr40
                    // Rate
                    Canvas.TextOut(X+385+170,y+yval,format(' %-s',[sRate])); //273
                    // Qty           //450
                    Canvas.TextOut(X+450+170,y+yval,format(' %-s',[sQty])); //323
                    // DisAmt
                    //Canvas.TextOut(X+485+100,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount
                    Canvas.TextOut(X+565+100,y+yval,format(' %-s',[sAmount])); //380

                    IF TotalNo =14 Then
                    Begin
                         Inc(yval,30);
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                         NewPage;

                         yval:=70;

                         Canvas.TextOut(X+70,y+yval,'Page No 2');
                         Inc(yval,25);
                         Canvas.TextOut(X+70,y+yval,'.......Continuee');
                         Canvas.Font.Style:=[];
                    End;

                    Inc(yval,18);
                    QueryDetailCP.Next;
               end;

               {***********************************************************}
               {                       print summary                       }
               {***********************************************************}
               Canvas.Pen.Style:=psDot;
               Canvas.MoveTo(X+70,y+yval);
               Canvas.LineTo(X+750,y+yval);

               yval:=yval+10;
               YItemsEnd:=yval;

               Canvas.Font.Size:=9;
               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                    gs_PtType:='NORMAL';
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
               End
               Else
               Begin
                    gs_PtType:='FRG';
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
               End;

               Canvas.Font.Size:=8;
               IF Length(ls_AmountInWords) > 70 Then
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  ');
                    iLen:=Length(ls_AmountInWords);
                    temVar:=0;
                    While Ilen > 0 do
                    begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,70);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+120,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+70,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,70);
                         Inc(yval,18);
                         ILen:=ILen-50;
                    end;
               End
               Else
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                    Inc(yval,40);
               End;

               Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

               If ps_ProcedureBill='Y' Then
               Canvas.TextOut(X+200,y+yval,'PROCEDURE NO   : '+IntToStr(pi_IVFNo));

               IF RadioButton_OPRefundBilling.Checked=True Then
               Begin
                    Font.Style:=[fsBold];
                    Canvas.TextOut(X+300,y+yval,'Prev BillNo   : '+Query_PrevBillNo.FieldByName('PrevBillNo').AsString);
                    Font.Style:=[];
               End;

               IF Trim(QueryForDoctor.FieldByName('DocName').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    IF QueryForDoctor.FieldByName('IsDoctor').AsString='Y' Then
                    Canvas.TextOut(X+70,y+yval+20,'DOCTOR : '+QueryForDoctor.FieldByName('DocName').AsString)
                    Else
                    Canvas.TextOut(X+70,y+yval+20,'TECH.  : '+QueryForDoctor.FieldByName('DocName').AsString);
                    Font.Style:=[];
               End;

               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
               End
               Else
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
               End;

               yval:=YItemsEnd;
               iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_TotalAmount));
               iLength:=64-iLength;
               iLength:= Round(iLength / 4);

               //Inc(yval,20);

               Canvas.TextOut(X+600,y+yval,'AMOUNT');
               Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
               IF gs_GovtTaxRule='TBD' Then
               Begin
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+570,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+600,y+yval,'          (-)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.Font.Size:=10;
                    Canvas.TextOut(X+600,y+yval,'TOTAL');
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                    Canvas.Font.Style:=[];
                    Canvas.Font.Size:=8;
               End
               Else
               Begin
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_Discount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);
                    Canvas.TextOut(X+600,y+yval,'          (-)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',(lf_TotalAmount-lf_Discount)));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+600,y+yval,'NET TOTAL');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount-lf_Discount),iLength));

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+570,y+yval,'SER. TAX @ ('+FloatToStr(gf_VatPer)+'%)');
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',lf_VatAmt),iLength));

                    Canvas.Font.Style:=[fsBold];
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+600,y+yval,'TOTAL');
                    Canvas.Font.Style:=[fsBold];
                    Canvas.Font.Size:=10;
                    //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount)),iLength));
                    Canvas.Font.Style:=[];
                    Canvas.Font.Size:=8;


                    { Procedure Billing  }
                    IF ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where IVFNo='+IntToStr(pi_IVFNO));
                              sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+600,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=8;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=8;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+600,y+yval,'NET AMT.')
                                   ELSE
                                   Canvas.TextOut(X+585,y+yval,'REFUND AMT.');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Abs(Round(lf_NetAmount-lf_AdvanceAmt))),iLength));
                              End;
                         End;
                    End;

                    Canvas.Font.Style:=[];
                    IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
                    or (RB_OPAdvanceBilling.Checked=True) or (Copy(QueryDetailCP.FieldByName('BillNo').AsString,0,2)='AD') Then // AD - Advance BillNo for Re-Print
                    Begin

                         //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                         lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                         //Else
                         //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                         Inc(yval,20);
                         iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                         iLength:=64-iLength;
                         iLength:= Round(iLength / 4);
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+600,y+yval,'ADVANCE');
                         Canvas.Font.Size:=10;
                         Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                         If pb_OPDDuePaid<>True Then
                         Begin
                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=8;
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+585,y+yval,'DUE AMOUNT');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                                   //GetTextAlign(TA_RIGHT);
                              End;
                              pb_OPDDuePaid:=False;
                         End;
                    End;
               End;
          End;
               //PaperHeight:=y+yval+50;
          EndDoc;
     End;

     IF CheckBox_Preview.Checked=True Then
     FormRoboPreview.ShowModal;
end;


procedure TFormInpMain.FindBalanceDeposit;
begin
    FormDischargeClearance:=TFormDischargeClearance.Create(Application);
    Try
        FormDischargeClearance.Edit_InPatientNo.Text:=EditPsearch.text;
        FormDischargeClearance.b_IsDischargePt:=False;
        FormDischargeClearance.b_Execute:=True;

        //****formshow events
        FormDischargeClearance.CreateTableServiceCharge;
        FormDischargeClearance.CreateTableBedCharge;
        FormDischargeClearance.CreateTableFinalDischargeBill;

        FormDischargeClearance.DateEditXIPDate.SystemOfDate:=gi_DateSystem;
        FormDischargeClearance.DateEditXIPDate.text:=DateEditXIPDate.text;
        FormDischargeClearance.DateEditXDisDate.SystemOfDate:=gi_DateSystem;
        FormDischargeClearance.DateEditXDisDate.text:=ServerDate.TodaysDate;
        //***************** Calc Amount
        FormDischargeClearance.PaymentInfo;

        LabelIPBalanace.caption:=formatFloat('0.00',
                strToFloat(FormDischargeClearance.LabelBalanceTotal.caption) - strToFloat(FormDischargeClearance.LabelNetTotal.caption));
    Finally
        FormDischargeClearance.Free;
    End;
end;

Procedure TFormInpMain.FillBillItems;
begin
     TablePTTestTemp.Close;
     TablePTTestTemp.Exclusive:=True;
     TablePTTestTemp.EmptyTable;
     TablePTTestTemp.Open;

     With Query_Process Do
     Begin
          Close;
          DataBaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add(' Select BillDetailID,DocCode,DepID,Service,ServiceType,TotalAmount,Qty,VatAmt,Amount,Dis,ISOT');
               Add(' ,(Select TestNameID From TestName Where TestNameCode=BillDetail.Service) TestNameID');
               Add(' ,(Select IsPackageTest From TestName Where TestNameCode=BillDetail.Service) IsPackageTest');
               Add(' ,(Select LineEdit From TestName where TestNameCode=BillDetail.Service) LineEdit ');
               Add(' ,(Select IsFractionableItem From TestName Where TestNameCode=BillDetail.Service) IsFractionableItem');
               Add('From Billdetail where ');

               IF CheckBoxOPRef.Checked=True Then
               Begin
                    sql.add(' BillNo='+Chr(39)+Trim(Edit_PreviousBillNo.Text)+Chr(39));
                    Add(' And RFBillNo Is Null');
                    Add(' And ServiceType Not In(''Re-Visit'',''REG'',''OPD CARD'')');
               End
               Else
               Begin
                    sql.add(' CrBillNo='+Chr(39)+Trim(Edit_PreviousBillNo.Text)+Chr(39));
                    sql.add(' and CancelStatus=''N'' and InPatientId='+EditPsearch.Text);
                    sql.add(' and PayType<>''REFUND''');
               End;
               //SaveToFile('C:\Refund.tXt');
          End;
          Open;
          First;
          While Not Eof Do
          Begin
               TablePTTestTemp.Append;
               TablePTTestTemp.FieldByName('DepID').AsInteger:=FieldByName('DepID').AsInteger;
               TablePTTestTemp.FieldByName('TestNameID').AsInteger:=FieldByName('TestNameID').AsInteger;

               TablePTTestTemp.FieldByName('BillDetailID').AsInteger:=FieldByName('BillDetailID').AsInteger;

               TablePTTestTemp.FieldByName('DocCode').AsString:=FieldByName('DocCode').AsString;
               TablePTTestTemp.FieldByName('TestNameCode').AsString:=FieldByName('Service').AsString;
               TablePTTestTemp.FieldByName('TestName').AsString:=FieldByName('ServiceType').AsString;
               TablePTTestTemp.FieldByName('Qty').AsInteger:=FieldByName('Qty').AsInteger;
               TablePTTestTemp.FieldByName('OrgQty').AsInteger:=FieldByName('Qty').AsInteger;
               TablePTTestTemp.FieldByName('TestPrice').AsFloat:=FieldByName('Amount').AsFloat;

               TablePTTestTemp.FieldByName('DisPer').AsFloat:=FieldByName('Dis').AsFloat;
               TablePTTestTemp.FieldByName('OldDisPer').AsFloat:=FieldByName('Dis').AsFloat;

               TablePTTestTemp.FieldByName('Discount').AsFloat:=(FieldByName('Qty').AsInteger*(FieldByName('Dis').AsFloat*(FieldByName('Amount').AsFloat/100)));
               TablePTTestTemp.FieldByName('OldDiscount').AsFloat:=TablePTTestTemp.FieldByName('Discount').AsFloat;

               TablePTTestTemp.FieldByName('Total').AsFloat:=FieldByName('Amount').AsFloat;

               TablePTTestTemp.FieldByName('VatAmt').AsFloat:=FieldByName('VatAmt').AsFloat;
               TablePTTestTemp.FieldByName('CurVatAmt').AsFloat:=0;
               TablePTTestTemp.FieldByName('CostPrice').AsFloat:=FieldByName('Amount').AsFloat;
               TablePTTestTemp.FieldByName('CostPrice').AsFloat:=FieldByName('Amount').AsFloat;
               TablePTTestTemp.FieldByName('IsPackageTest').AsString:=FieldByName('IsPackageTest').AsString;
               TablePTTestTemp.FieldByName('LineEdit').AsString:=FieldByName('LineEdit').AsString;
               TablePTTestTemp.FieldByName('IsFractionableItem').AsString:=FieldByName('IsFractionableItem').AsString;
               TablePTTestTemp.FieldByName('RefBillNo').AsString:=Edit_PreviousBillNo.Text;
               //TablePTTestTemp.FieldByName('PayStatus').AsString:='YES';
               //TablePTTestTemp.FieldByName('Special').AsString:='FALSE';
               //TablePTTestTemp.FieldByName('IsDiscountable').AsString:=FieldByName('IsDiscountable').AsString;
               //TablePTTestTemp.FieldByName('IsVatable').AsString:=FieldByName('IsVatable').AsString;
               TablePTTestTemp.FieldByName('IsOperational').AsString:=FieldByName('ISOT').AsString;
               TablePTTestTemp.Post;
               Next;
          End;
     End;

     With Query_Process do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Distinct CommunityId,SchemeId From BillDetail where BillNo='+#39+Edit_PreviousBillNo.Text+#39);
          sql.add(' and CommunityId > 0 ');
          Open;
     End;

     IF Query_Process.RecordCount > 0 Then
     Begin
          CheckBox_Schemes.Checked:=True;
          DBLookupComboBox_Community.KeyValue:=Query_Process.FieldByName('CommunityId').AsInteger;
          With Query_Scheme do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select * From Scheme where CommunityId='+IntToStr(Query_Process.FieldByName('CommunityId').AsInteger));
               Open;
          End;
          DBLookupComboBox_Scheme.KeyValue:=Query_Process.FieldByName('SchemeId').AsInteger;
     End;

     TablePTTestTemp.Close;
     TablePTTestTemp.Open;

     EditDisAmt.Text:=Format('%.2f',[GetDiscountAmount]);
     pf_TotalAmt:=StrToFloat(Format('%.2f',[GetTotalAmount]));
     EditTotal.Text:=Format('%.2f',[pf_TotalAmt]);
     Edit_ExDuty.Text:=Format('%.2f',[GetVatAmount]);
     Edit_SubTotal.Text:=Format('%.2f',[ pf_TotalAmt - StrToFloat(EditDisAmt.Text) ]);
     Edit_GrandTotal.Text:=Format('%.2f',[ StrToFloat(Edit_SubTotal.Text) + StrToFloat(Edit_ExDuty.Text) ]);
     EditPayment.Text:=Edit_GrandTotal.Text;
     Label_TotBillAmt.Caption:=Edit_GrandTotal.Text;
     ActiveControl:=DBGridPatientTest;
end;


Procedure TFormInpMain.CheckingItemsRelationWithPrevBill;
var ls_TestName,ls_PTTestCode:String;

     Procedure IdentifyLabTestDoneOrNot;
     Begin
          With QueryVoid Do
          Begin
               Close;
               sql.clear;
               sql.add(' Select PatientTestId,WorkingStatus,TestNameCode From PatientTest Where ');
               sql.add(' BillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39);
               sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
          End;

          IF QueryVoid.RecordCount > 1 Then
          Begin
               With QueryVoid Do
               Begin
                    Close;
                    sql.clear;
                    sql.add(' Select PatientTestId,WorkingStatus,TestNameCode From PatientTest Where ');
                    sql.add(' BillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39);
                    sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    sql.add(' and WorkingStatus=''REG''');
                    Open;
               End;

               IF QueryVoid.RecordCount < TablePTTestTemp.FieldByName('Qty').AsInteger Then
               Begin
                    IF Trim(ls_PTTestCode)<>'' Then
                    ls_PTTestCode:=ls_PTTestCode+','+QueryVoid.FieldByName('TestNameCode').AsString
                    Else
                    ls_PTTestCode:=QueryVoid.FieldByName('TestNameCode').AsString;
               End;
          End
          Else
          Begin
               IF QueryVoid.FieldByName('WorkingStatus').AsString='FE' Then // FE- Test Done
               Begin
                    IF Trim(ls_PTTestCode)<>'' Then
                    ls_PTTestCode:=ls_PTTestCode+','+QueryVoid.FieldByName('TestNameCode').AsString
                    Else
                    ls_PTTestCode:=QueryVoid.FieldByName('TestNameCode').AsString;
               End;
          End;
     End;
Begin
     { first checking whether the items are with this bill no or not }
     ls_TestName:='';
     ls_PTTestCode:='';
     b_IsRefundQtyDiff:=False;
     TablePTTestTemp.First;
     IF CheckBoxIPRefund.Checked=True Then
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Discharged From InpatientReg where InpatientId='+EditPsearch.Text);
               Open;
          End;
          ls_IsDischarged:=Trim(Query_Process.FieldByName('Discharged').AsString);
     End;

     while not TablePTTestTemp.EOF Do
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Service,Qty,VatAmt,CurQty,CurVatAmt,RateType,BillDetailId,PatientTestId From BillDetail where ');
               IF (CheckBoxIPRefund.Checked=True) and (ls_IsDischarged='YES') and (Copy(Edit_PreviousBillNo.Text,1,2)='TP') Then
               sql.add(' CRBillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39)
               Else
               sql.add(' BillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39);
               sql.add(' and Service='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               //sql.saveToFile('C:\Refund.Txt');
               Open;
          End;
          TablePTTestTemp.Edit;
          TablePTTestTemp.FieldbyName('CurQty') .AsFloat:=Query_Process.FieldbyName('CurQty') .AsFloat - TablePTTestTemp.FieldByName('Qty').AsFloat;
          TablePTTestTemp.FieldbyName('CurVatAmt') .AsFloat:=Query_Process.FieldbyName('CurVatAmt') .AsFloat - TablePTTestTemp.FieldByName('VatAmt').AsFloat;
          TablePTTestTemp.FieldbyName('PreBillDetailId') .AsFloat:=Query_Process.FieldbyName('BillDetailId') .AsFloat;
          TablePTTestTemp.FieldbyName('PatientTestId') .AsFloat:=Query_Process.FieldbyName('PatientTestId') .AsFloat;
          TablePTTestTemp.Post;

          IF (Query_Process.RecordCount <= 0)  then
          Begin
               IF ls_TestName='' Then
               ls_TestName:=TablePTTestTemp.FieldByName('TestNameCode').AsString+' - '+ TablePTTestTemp.FieldByName('TestName').AsString
               Else
               ls_TestName:=ls_TestName+Char(10)+TablePTTestTemp.FieldByName('TestNameCode').AsString+' - '+ TablePTTestTemp.FieldByName('TestName').AsString;
          End
          Else
          Begin
               IF Query_Process.FieldByName('Qty').AsInteger < TablePTTestTemp.FieldByName('Qty').AsInteger Then
               b_IsRefundQtyDiff:=True;
          End;

          { Before Cancel These Items, Lab Test has done or not ? , if done block to cancel these items. }
          IdentifyLabTestDoneOrNot;

          TablePTTestTemp.Next;
     End;


     IF Trim(ls_TestName)<>'' Then
     Begin
          TablePTTestTemp.First;
          MessageDlg('These below listed items are not related with the bill No " '+Edit_PreviousBillNo.Text+' " .'+Char(10)+Char(10)+ls_TestName,mtWarning,[mbok],0);
          DBGridPatientTest.SetFocus;
          DBGridPatientTest.SelectedIndex:=2;
          b_IsRefundQtyDiff:=True;
          Exit;
     End;

     IF b_IsRefundQtyDiff Then
     Begin
          TablePTTestTemp.First;
          MessageDlg('Plz. Check properly refund quantity and sold quantity.',mtWarning,[mbok],0);
          DBGridPatientTest.SetFocus;
          DBGridPatientTest.SelectedIndex:=2;
          Exit;
     End;


     { for Time being it is blocked Due to user Hassel by bidur 2067/04/25 }
     {IF Trim(ls_PTTestCode)<>'' Then
     Begin
          TablePTTestTemp.First;
          MessageDlg('Lab Test Has Already Done, Items Having TestNameCode -> " '+Char(10)+Char(10)+ls_PTTestCode,mtWarning,[mbok],0);
          DBGridPatientTest.SetFocus;
          DBGridPatientTest.SelectedIndex:=2;
          b_IsRefundQtyDiff:=True;
          Exit;
     End;}

     { again Checking these items are already refunded or not }
     ls_TestName:='';
     TablePTTestTemp.First;
     while not TablePTTestTemp.EOF Do
     Begin
          With Query_Process do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Service,Qty,CurQty,BillDate From BillDetail where ');
               sql.add(' PrevBillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39);
               sql.add(' and Service='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               Open;
          End;

          IF (Query_Process.RecordCount > 0) Then
          Begin
               With Query_Process do
               Begin
                    Close;
                    sql.clear;
                    sql.add(' Select Service,BillDate,Sum(Qty) as Qty,Sum(CurQty) as CurQty,(Select Qty From BillDetail where ');
                    sql.add(' BillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39+' and Service='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
                    sql.add(' ) as OrgQty From BillDetail where PrevBillNo='+#39+Trim(Edit_PreviousBillNo.Text)+#39);
                    sql.add(' and Service='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39+'  Group By Service,BillDate ');
                    Open;
               End;

               IF Query_Process.FieldByName('OrgQty').AsInteger <  (Query_Process.FieldByName('CurQty').AsInteger + TablePTTestTemp.FieldByName('Qty').AsInteger) Then
               Begin
                    IF ls_TestName='' Then
                    ls_TestName:=TablePTTestTemp.FieldByName('TestNameCode').AsString+' - '+
                                    TablePTTestTemp.FieldByName('TestName').AsString+'       Refund Date :'+Query_Process.FieldByName('BillDate').AsString
                    Else
                    ls_TestName:=ls_TestName+Char(10)+TablePTTestTemp.FieldByName('TestNameCode').AsString+' - '+
                                    TablePTTestTemp.FieldByName('TestName').AsString+'       Refund Date :'+Query_Process.FieldByName('BillDate').AsString;
               End;
          End;
          TablePTTestTemp.Next;
     End;

     IF Trim(ls_TestName)<>'' Then
     Begin
          TablePTTestTemp.First;
          MessageDlg('These below listed items are already refunded .'+Char(10)+Char(10)+ls_TestName,mtWarning,[mbok],0);
          DBGridPatientTest.SetFocus;
          DBGridPatientTest.SelectedIndex:=2;
          b_IsRefundQtyDiff:=True;
          Exit;
     End;
End;

procedure TFormInpMain.CheckDoc(DbGName:TdbGrid;AnyCode:String);
var DocCode:String;
Begin
     With QueryDoctor Do
     Begin
          IF Not Active Then Active:=True;
          IF Locate('DocCode',AnyCode,[])Then
          Begin
               IF Not TablePTTestTemp.Active Then TablePTTestTemp.Active:=True;
               TablePTTestTemp.Edit;
               DbGName.SelectedField.Text:=FieldByName('DocCode').asString;
               DocCode:=FieldByName('DocCode').asString;
               ps_DocName:=FieldByName('F_Name').asString+' '+FieldByName('L_Name').asString;
               DbGName.SelectedIndex:=DbGName.SelectedIndex+1;
          End
          Else
          Begin
               With FrmCode Do
               Begin
                    DepCode:=AnyCode;
                    CheckDep:=2;
                    ShowModal;
               End;
          End;
     End;
End;

procedure TFormInpMain.Sp_DocInvolveClick(Sender: TObject);
Var ls_TestNameCode:String;
begin
     If TablePTTestTemp.FieldbyName('TestNameCode') .asstring='' Then Sp_DocInvolve.enabled:=False;


     IF TablePTTestTemp.FieldbyName('CostPrice') .AsFloat <= 0 Then
     Begin
          MessageDlg('You Must Have To Set Test Price Before Defining Fraction.',mtWarning,[mbok],0);
          Exit;
     End;

     ls_TestNameCode:=TablePTTestTemp.FieldbyName('TestNameCode') .asstring;
     {IF (TablePTTestTemp.FieldbyName('IsOperational') .AsString='Y') Then
     Begin
          Try
               Application.CreateForm(TForm_DrInvolveInOperationTemp,Form_DrInvolveInOperationTemp);
               With Form_DrInvolveInOperationTemp Do
               Begin
                    Label_PtName.Caption:=FormInpMain.Labelname.Caption;
                    Label_PtHosNo.Caption:=FormInpMain.LabelNo.Caption;
                    Label_InpatientNo.Caption:=IntToStr(pi_InPatientId);
                    Label_TestName.Caption:=TablePTTestTemp.FieldbyName('TestName') .asstring;
                    pi_TestNameId:=TablePTTestTemp.FieldbyName('TestNameID') .AsInteger;
                    ps_TestNameCode:=TablePTTestTemp.FieldbyName('TestNameCode') .asstring;
                    pi_BillDetailId:=0;
                    pi_PatientId:=Self.pi_PatientId;
                    pi_InPatientId:=Self.pi_InPatientId;
                    Label_Amt.Caption:=TablePTTestTemp.FieldbyName('CostPrice') .AsString;
                    pf_Total:=TablePTTestTemp.FieldbyName('CostPrice') .AsFloat;
                    pf_DisPer:=TablePTTestTemp.FieldbyName('DisPer') .AsFloat;
                    ps_AccessFrom:='Billing';
                    Is_OT:=True;
                    ShowModal;
               End;

          Finally
               Form_DrInvolveInOperationTemp.Free;
          End;
     End
     Else}
     IF (TablePTTestTemp.FieldbyName('DepId').AsInteger=pi_DocFraDepId) Then // 63 - XRay Dept
     Begin
          Try
          Application.CreateForm(TForm_DrInvolveInOperation,Form_DrInvolveInOperation);
          With Form_DrInvolveInOperation Do
          Begin
               Label_PtName.Caption:=Labelname.Caption;
               Label_Pthosno.Caption:=LabelNo.Caption;
               Label_PtInpatientNo.Caption:=LabelIpNo.Caption;
               Label_TestName.Caption:=TablePTTestTemp.FieldbyName('TestName') .asstring;
               TestNameCode:=TablePTTestTemp.FieldbyName('TestNameCode') .asstring;
               pi_TestNameId:=TablePTTestTemp.FieldbyName('TestNameID') .AsInteger;
               //pf_TotNetAmt:=TablePTTestTemp.FieldbyName('Total') .AsFloat;
               pf_TotNetAmt:=TablePTTestTemp.FieldbyName('CostPrice') .AsFloat;


               Called_From:='OPBiling';
               IF TablePTTestTemp.FieldbyName('DepId').AsInteger IN [8] Then
               b_IsTestWise:=True
               Else
               Is_OT:=True;

               With Table_Operation Do
               Begin
                    DatabaseName:=gs_TempPath;
                    Close;
                    Open;
                    Filtered:=False;
                    Filter:='TestNameCode='+#39+TestNameCode+#39;
                    Filtered:=True;
                    If Recordcount > 0 Then
                    Is_New:=False
                    Else
                    Is_New:=True;
               End;

               Query_GetTempData.DatabaseName:=gs_TempPath;
               Query_GetTempData.Close;
               Query_GetTempData.ParamByName('TestNameCode').AsString:=TestNameCode;
               Query_GetTempData.Open;

               ShowModal;
          End;
          Finally
               Form_DrInvolveInOperation.Free;
          End;
     End
     Else // 63 - X-Ray Department
     Begin
          Try
               Application.CreateForm(TForm_XRayPlateSize,Form_XRayPlateSize);
               With Form_XRayPlateSize Do
               Begin
                    Label_PtName.Caption:=Labelname.Caption;
                    Label_Pthosno.Caption:=LabelNo.Caption;
                    Label_PtInpatientNo.Caption:=LabelIpNo.Caption;
                    Label_TestName.Caption:=TablePTTestTemp.FieldbyName('TestName') .asstring;
                    TestNameCode:=TablePTTestTemp.FieldbyName('TestNameCode') .asstring;
                    TestNameId:=TablePTTestTemp.FieldbyName('TestNameID') .AsInteger;
                    pf_TotNetAmt:=TablePTTestTemp.FieldbyName('Total') .AsFloat;
                    ls_BType:=CMBBillType.Text;
                    With Table_XRayPlateSize Do
                    Begin
                         DatabaseName:=gs_TempPath;
                         Close;
                         Open;
                         If Recordcount>0 Then
                         Is_New:=False
                         Else
                         Is_New:=True;
                    End;
                    ShowModal;
               End;
          Finally
               Form_XRayPlateSize.Free;
          End;
     End;
     Display_Frct_Involve_Person;
end;


Procedure TFormInpMain.TableCreateDrOperation;
Begin
     IF Table_Operation.Active Then Table_Operation.Active:=False;
     With Table_Operation do
     begin
          Close;
          databasename:=gs_TempPath;
          tablename:='DrOperation.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('Sno',ftInteger);
          Fielddefs.add('TestNameCode',ftstring,25);
          Fielddefs.add('TestName',ftstring,50);
          Fielddefs.add('TestNameId',ftInteger);
          Fielddefs.add('PatientId',ftInteger);
          Fielddefs.add('InpatientId',ftInteger);
          Fielddefs.add('DepId',ftInteger);
          Fielddefs.add('BillDetailId',ftInteger);
          Fielddefs.add('DrCode',ftstring,8);
          Fielddefs.add('DrName',ftstring,50);
          Fielddefs.add('Description',ftstring,50);
          Fielddefs.add('DocId',ftinteger);
          Fielddefs.add('PositionWiseCommId',ftinteger);
          Fielddefs.add('DocRatePer',ftFloat);
          Fielddefs.add('DocAmount',ftFloat);
          Fielddefs.add('DocAmountOrg',ftFloat);
          Fielddefs.add('UnitTestCost',ftFloat);
          Fielddefs.add('DisPer',ftFloat);
          Fielddefs.add('Qty',ftFloat);
          Fielddefs.add('IsFixedPersonForComm',ftString,1);
          Fielddefs.add('IsFractionPropWithDisPer',ftString,1);

          Fielddefs.add('AddedPercent',ftFloat);
          Fielddefs.add('AddedAmt',ftFloat);
          Fielddefs.add('AddAmtType',ftString,3);

          Fielddefs.add('ISCOMPFORFRACTION',ftString,1);
          Fielddefs.add('ISExtraCharge',ftString,3);
          Fielddefs.add('AddTo',ftString,1);

          Fielddefs.add('IsHospitalPart',ftString,1);
          Fielddefs.add('IsOperation',ftString,1);
          createtable;
     End;
End;

Procedure TFormInpMain.TableCreateOperationCase;
Begin
     IF Table_OperationCase.Active Then Table_OperationCase.Active:=False;
     With Table_OperationCase do
     begin
          Close;
          databasename:=gs_TempPath;
          tablename:='OperationCaseBilling.db';
          tableType:=ttDefault;
          FieldDefs.Clear;
          Fielddefs.add('TestNameCode',ftstring,25);
          Fielddefs.add('TestName',ftstring,100);
          Fielddefs.add('InpatientId',ftInteger);
          Fielddefs.add('OperationCode',ftstring,10);
          Fielddefs.add('OperationCase',ftstring,80);
          createtable;
          DatabaseName:=gs_TempPath;
          Close;
          EmptyTable;
          Open;
     End;
End;

Procedure TFormInpMain.TableCreateTestWiseCommession;
Begin
     //
End;

Procedure TFormInpMain.TableCreateXRayPlateSize;
Begin
     IF Table_XRayPlateSize.Active Then Table_XRayPlateSize.Active:=False;
     With Table_XRayPlateSize do
     begin
          Close;
          databasename:=gs_TempPath;
          Tablename:='XRayPlateSize.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('MasterTNCode',ftstring,15);
          Fielddefs.add('TestNameCode',ftstring,15);
          Fielddefs.add('MasterTestName',ftstring,50);
          Fielddefs.add('DocCode',ftstring,10);
          Fielddefs.add('CommPer',ftfloat);
          Fielddefs.add('UnitCommAmt',ftfloat);
          Fielddefs.add('CommFromAmount',ftfloat);
          Fielddefs.add('TestName',ftstring,50);
          Fielddefs.add('UnitCost',ftFloat);
          Fielddefs.add('UnitTaxAmt',ftFloat);
          Fielddefs.add('TaxAmt',ftFloat);
          Fielddefs.add('Qty',ftInteger);
          Fielddefs.add('Amount',ftFloat);
          Fielddefs.add('BillDetailId',ftInteger);
          Createtable;
     End;
End;

Procedure TFormInpMain.DeleteFractionCharge;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.Clear;
          IF TablePTTestTemp.FieldByName('DepId').AsInteger=63 Then // 63- X-Ray Dep.
          sql.add(' Delete From XRayPlateSize.DB where MasterTNCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39)
          //Else IF TablePTTestTemp.FieldbyName('IsOperational') .AsString='Y' Then
          //sql.add(' Delete From DrOperation.db where TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39)
          Else
          sql.add(' Delete From DrOperation.db where TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39);
          ExecSQL;
     End;

End;

Procedure TFormInpMain.AllocateTestWiseDoctorFraction(TestNameCode:String; NetAmount:Double; DepId:Integer);
Var li_DocId,li_Sno,li_TotNoForFract:Integer;
    b_IsSingleCondt:Boolean;
    lf_CommRate,lf_CommAmt : Double;
    ls_DocCode : String;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.Clear;
          sql.add(' Select * From  DrOperation.db where TestNameCode='+#39+TestNameCode+#39);
          Open;
     End;

     IF Query_TempProcess.RecordCount <=0 Then
     Begin
          //IF gs_IsDoctorCompForBilling='Y' Then
          //ps_DocCode:=TablePTTestTemp.FieldByName('DocCode').AsString;

          IF DBLC_Doctor.KeyValue<>NULL Then
          li_DocId:=Query_GetRefDoc.FieldByName('DocId').AsInteger
          Else
          li_DocId:=-1; // IF Doctor is not selected


          { Identify Either Test wise or Dept. Wise Commession Set Up }
          With Query_SubProcess do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.add(' Select DepId From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
               Open;
          End;

          b_IsSingleCondt:=False;
          IF Query_SubProcess.RecordCount > 1 Then
          Begin
               With QueryVoid do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    sql.add(' Select DepId,FractionFor From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
                    IF RadioButton_OPBilling.Checked=True Then
                    sql.add(' and Upper(FractionFor)=''OUTDOOR''')
                    Else
                    sql.add(' and Upper(FractionFor)=''INDOOR''');
                    Open;
               End;

               IF QueryVoid.RecordCount <=0 Then
               b_IsSingleCondt:=False
               Else
               b_IsSingleCondt:=True;
          End;

          With Query_Process do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.add(' Select (Select Count(DrCommId) From POSITIONWISECOMMESSION where IsFixedPersonForComm=''N'' and ');
               sql.add(' ISACTIVE=''T'' and DrCommId=PWC.DrCommId) as TobeFillUpDocCount,');
               sql.add(' PWC.PositionWiseCommId,PWC.IsFixedPersonForComm,PWC.IsFractionPropWithDisPer,PWC.DRCommId,PWC.Name,PWC.IsHospitalPart,');
               sql.add(' PWC.PositionName,PWC.IsDefaultDoc,PWC.DocCode,PWC.CommRateA,PWC.CommAmtA,DC.IsRateAmt,DC.CommAmt,PWC.ISCOMPFORFRACTION,');
               sql.add(' DC.DepId,PWC.IsDocWiseFrctSetup From DoctorCommession DC,POSITIONWISECOMMESSION PWC where DC.DRCOMMID=PWC.DRCOMMID and PWC.ISACTIVE=''T''');

               IF Query_SubProcess.RecordCount > 0 Then // Test wise Comm. Setup
               sql.add(' and DC.TESTNAMEID='+IntToStr(TablePTTestTemp.FieldByName('TESTNAMEID').AsInteger))
               Else
               sql.add(' and DC.TestNameId=0 and DC.DepId='+IntToStr(DepId));

               IF RadioButton_OPBilling.Checked=True Then
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''OUTDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''OUTDOOR'')');
               End
               Else
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''INDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''INDOOR'')');
               End;
               sql.add(' Order By IsFixedPersonForComm');
               //sql.saveToFile('C:\DocFractSetFromBilling.Txt');
               Open;
          End;

          With Query_TempProcess do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select Max(Sno) as Sno From  DrOperation.db');
               Open;
          End;

          li_Sno:=Query_TempProcess.FieldByName('Sno').AsInteger;


          //li_TotNoForFract:=Query_Process.RecordCount;
          li_TotNoForFract:=Query_Process.fieldbyname('TobeFillUpDocCount').AsInteger;

          Query_Process.First;
          While Not Query_Process.Eof do
          Begin
               With Table_Operation Do
               Begin
                    IF Not Active Then Active:=True;
                    Append;
                    li_Sno:=li_Sno+1;
                    FieldbyName('Sno') .AsInteger:=li_Sno;
                    FieldbyName('DocId') .AsInteger:=Query_Process.FieldByName('DRCommId').AsInteger;
                    FieldbyName('PositionWiseCommId') .AsInteger:=Query_Process.FieldByName('PositionWiseCommId').AsInteger;
                    FieldbyName('IsFixedPersonForComm') .AsString:=Query_Process.FieldbyName('IsFixedPersonForComm') .AsString;
                    FieldbyName('IsFractionPropWithDisPer') .AsString:=Query_Process.FieldbyName('IsFractionPropWithDisPer') .AsString;
                    FieldbyName('IsHospitalPart') .AsString:=Query_Process.FieldbyName('IsHospitalPart') .AsString;
                    FieldbyName('TestNameCode') .AsString:=TestNameCode;
                    FieldbyName('TestNameId') .AsInteger:=TablePTTestTemp.FieldByName('TestNameId').AsInteger;
                    FieldbyName('DepId') .AsInteger:=Query_Process.FieldByName('DepId').AsInteger;
                    FieldbyName('UnitTestCost') .AsFloat:=TablePTTestTemp.FieldByName('CostPrice').AsFloat;
                    FieldbyName('Description') .AsString:=Query_Process.FieldByName('PositionName').AsString;
                    FieldbyName('ISCOMPFORFRACTION') .AsString:=Query_Process.FieldByName('ISCOMPFORFRACTION').AsString;
                    FieldbyName('IsOperation') .AsString:=TablePTTestTemp.FieldbyName('IsOperational') .AsString;
                    FieldbyName('Qty') .Asfloat:=TablePTTestTemp.FieldbyName('Qty') .AsFloat;
                    FieldbyName('InpatientId') .AsInteger:=pi_InpatientId;//Query_Process.FieldByName('InpatientId').AsInteger;

                    IF Query_Process.FieldbyName('IsFixedPersonForComm') .AsString='Y' Then
                    Begin
                         FieldbyName('DrCode') .AsString:=Query_Process.FieldByName('DocCode').AsString;//'FC';// Fixed commession
                         FieldbyName('DrName') .AsString:=Query_Process.FieldByName('Name').AsString;
                         FieldbyName('Qty') .Asfloat:=1;
                    End
                    Else IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)<>'HOS01') and (li_TotNoForFract=1) Then
                    Begin
                         FieldbyName('DrCode') .AsString:=TablePTTestTemp.FieldByName('DocCode').AsString;
                         FieldbyName('DrName') .AsString:=ps_DocName;//Query_Process.FieldByName('Name').AsString;
                    End
                    Else IF (Query_Process.FieldbyName('IsDefaultDoc') .AsString='Y') Then
                    Begin
                         FieldbyName('DrCode') .AsString:=Query_Process.FieldByName('DocCode').AsString;
                         FieldbyName('DrName') .AsString:=Query_Process.FieldByName('Name').AsString;
                    End
                    Else IF (Query_Process.FieldbyName('PositionName') .AsString='REFERAL DOCTOR') and (DBLC_Doctor.KeyValue<>NULL) Then
                    Begin
                         FieldbyName('DrCode') .AsString:=DBLC_Doctor.KeyValue;
                         FieldbyName('DrName') .AsString:=DBLC_Doctor.Text;
                    End;

                    lf_CommRate:=Query_Process.FieldByName('CommRateA').AsFloat;
                    lf_CommAmt:=Query_Process.FieldByName('CommAmtA').AsFloat;

                    IF (Query_Process.FieldByName('IsDocWiseFrctSetup').AsString='Y') and (Table_Operation.FieldbyName('DrCode') .AsString<>'HOS01')
                    and (Trim(Table_Operation.FieldbyName('DrCode').AsString)<>'') Then // Individual Doctor wise setup
                    Begin
                    With Query_SubProcess do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select * From DoctorWISECOMMESSION Where DocCode='+#39+Table_Operation.FieldbyName('DrCode') .AsString+#39);
                         sql.add(' and PositionWiseCommId='+IntToStr(Query_Process.FieldByName('PositionWiseCommId').AsInteger));
                         Open;
                    End;

                    IF Query_SubProcess.FieldByName('DoctorWiseCommId').AsInteger > 0 Then
                    Begin
                         lf_CommRate:=Query_SubProcess.FieldByName('CommRate').AsFloat;
                         lf_CommAmt:=Query_SubProcess.FieldByName('CommAmt').AsFloat;
                    End;
                    End;

                    IF lf_CommAmt > 0 Then
                    Begin
                         FieldbyName('DocRatePer') .Asfloat:=lf_CommRate;
                         FieldbyName('DocAmount') .AsFloat:=lf_CommAmt;
                         FieldbyName('DocAmountOrg') .AsFloat:=lf_CommAmt;
                    End
                    Else
                    Begin
                         FieldbyName('DocRatePer') .Asfloat:=lf_CommRate;
                         FieldbyName('DocAmount') .AsFloat:=StrToFloat(FormatFloat('0.00',(TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate/100)));
                         FieldbyName('DocAmountOrg') .AsFloat:=StrToFloat(FormatFloat('0.00',(TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate/100)));
                    End;
                    Post;
               End;
               ps_DocName:='';
               Query_Process.Next;
          End;
     End
     Else
     Begin
          { Identify Either Test wise or Dept. Wise Commession Set Up }
          With Query_SubProcess do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.add(' Select DepId From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
               Open;
          End;

          b_IsSingleCondt:=False;
          IF Query_SubProcess.RecordCount > 1 Then
          Begin
               With QueryVoid do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    sql.add(' Select DepId,FractionFor From DoctorCommession where TestNameId='+TablePTTestTemp.FieldByName('TESTNAMEID').AsString);
                    IF RadioButton_OPBilling.Checked=True Then
                    sql.add(' and Upper(FractionFor)=''OUTDOOR''')
                    Else
                    sql.add(' and Upper(FractionFor)=''INDOOR''');
                    Open;
               End;

               IF QueryVoid.RecordCount <=0 Then
               b_IsSingleCondt:=False
               Else
               b_IsSingleCondt:=True;
          End;

          With Query_Process do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.add(' Select (Select Count(DrCommId) From POSITIONWISECOMMESSION where IsFixedPersonForComm=''N'' and ');
               sql.add(' ISACTIVE=''T'' and DrCommId=PWC.DrCommId) as TobeFillUpDocCount,');
               sql.add(' PWC.PositionWiseCommId,PWC.IsFixedPersonForComm,PWC.IsFractionPropWithDisPer,PWC.DRCommId,PWC.Name,PWC.IsHospitalPart,');
               sql.add(' PWC.PositionName,PWC.IsDefaultDoc,PWC.DocCode,PWC.CommRateA,PWC.CommAmtA,DC.IsRateAmt,DC.CommAmt,PWC.ISCOMPFORFRACTION,');
               sql.add(' DC.DepId,PWC.IsDocWiseFrctSetup From DoctorCommession DC,POSITIONWISECOMMESSION PWC where DC.DRCOMMID=PWC.DRCOMMID and PWC.ISACTIVE=''T''');
               IF Query_SubProcess.RecordCount > 0 Then // Test wise Comm. Setup
               sql.add(' and DC.TESTNAMEID='+IntToStr(TablePTTestTemp.FieldByName('TESTNAMEID').AsInteger))
               Else
               sql.add(' and DC.TestNameId=0 and DC.DepId='+IntToStr(DepId));

               IF RadioButton_OPBilling.Checked=True Then
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''OUTDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''OUTDOOR'')');
               End
               Else
               Begin
                    IF b_IsSingleCondt=False Then
                    sql.add(' and ((Upper(PWC.FractionFor)=''INDOOR'') OR (Upper(PWC.FractionFor)=''BOTH''))')
                    Else
                    sql.add(' and (Upper(PWC.FractionFor)=''INDOOR'')');
               End;
               sql.add(' Order By IsFixedPersonForComm');
               sql.saveToFile('C:\DocFractSetFromBilling.Txt');
               Open;
          End;
          //li_TotNoForFract:=Query_Process.RecordCount;
          li_TotNoForFract:=Query_Process.fieldbyname('TobeFillUpDocCount').AsInteger;


          with Query_TempSubProcess do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select * From DrOperation.db Where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39+' Order By Sno');
               Open;
          End;

          Query_Process.First;
          Query_TempSubProcess.First;
          While not Query_TempSubProcess.EOF Do
          Begin
               With Query_TempProcess Do
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Update DrOperation.db Set Qty='+TablePTTestTemp.FieldbyName('Qty').AsString);
                    sql.add(' ,UnitTestCost='+TablePTTestTemp.FieldbyName('CostPrice').AsString);

                    IF Query_Process.FieldbyName('IsFixedPersonForComm') .AsString='Y' Then
                    Begin
                         sql.add(',DrCode='+#39+Query_Process.FieldByName('DocCode').AsString+#39);
                         sql.add(',DrName='+#39+Query_Process.FieldByName('Name').AsString+#39);
                    End
                    Else IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)<>'HOS01') and (li_TotNoForFract=1) Then
                    Begin
                         sql.add(',DrCode='+#39+TablePTTestTemp.FieldByName('DocCode').AsString+#39);
                         sql.add(',DrName='+#39+Get_DocName(TablePTTestTemp.FieldByName('DocCode').AsString)+#39);
                    End
                    Else IF (Query_Process.FieldbyName('IsDefaultDoc') .AsString='Y') Then
                    Begin
                         sql.add(',DrCode='+#39+Query_Process.FieldByName('DocCode').AsString+#39);
                         sql.add(',DrName='+#39+Query_Process.FieldByName('Name').AsString+#39);
                    End
                    Else IF (Query_TempSubProcess.FieldbyName('Description') .AsString='REFERAL DOCTOR') and (DBLC_Doctor.KeyValue<>NULL) Then
                    Begin
                         sql.add(',DrCode='+#39+DBLC_Doctor.KeyValue+#39);
                         sql.add(',DrName='+#39+DBLC_Doctor.Text+#39);
                    End
                    Else IF (Trim(TablePTTestTemp.FieldByName('DocCode').AsString)='HOS01') and (li_TotNoForFract=1) Then
                    Begin
                         IF Query_Process.FieldbyName('IsFixedPersonForComm') .AsString<>'Y' Then
                         sql.add(',DrCode='''',DrName=''''');
                    End;


                    lf_CommRate:=Query_TempSubProcess.FieldbyName('DocRatePer').AsFloat;

                    IF (Query_Process.FieldByName('IsDocWiseFrctSetup').AsString='Y') and (((Query_TempSubProcess.FieldbyName('DrCode').AsString<>'HOS01')
                    and (Trim(Query_TempSubProcess.FieldbyName('DrCode').AsString)<>'')) or ((TablePTTestTemp.FieldbyName('DocCode').AsString<>'HOS01') and (li_TotNoForFract=1))) Then // Individual Doctor wise setup
                    Begin
                         IF (TablePTTestTemp.FieldbyName('DocCode').AsString<>'HOS01') and (li_TotNoForFract=1) Then
                         ls_DocCode:=TablePTTestTemp.FieldbyName('DocCode').AsString
                         Else
                         ls_DocCode:=Query_TempSubProcess.FieldbyName('DrCode').AsString;

                         With Query_SubProcess do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select * From DoctorWISECOMMESSION Where DocCode='+#39+ls_DocCode+#39);
                              sql.add(' and PositionWiseCommId='+IntToStr(Query_Process.FieldByName('PositionWiseCommId').AsInteger));
                              Open;
                         End;

                         IF Query_SubProcess.FieldByName('DoctorWiseCommId').AsInteger > 0 Then
                         Begin
                              lf_CommRate:=Query_SubProcess.FieldByName('CommRate').AsFloat;
                              lf_CommAmt:=Query_SubProcess.FieldByName('CommAmt').AsFloat;
                         End;
                    End;



                    IF (TablePTTestTemp.FieldbyName('IsZeroTestPrice').AsString='Y') or
                    (TablePTTestTemp.FieldbyName('IsTestPriceEditInBill').AsString='Y') Then
                    Begin
                         sql.add(' ,DocRatePer='+FloatToStr(lf_CommRate));
                         sql.add(' ,DocAmount='+FloatToStr(RoundingAfterSecondPlace((TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate)/100)));
                         sql.add(' ,DocAmountOrg='+FloatToStr(RoundingAfterSecondPlace((TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate)/100)));
                    End
                    Else IF (Query_TempSubProcess.FieldbyName('DocAmount').AsFloat=0) and (lf_CommRate > 0) Then
                    Begin
                         sql.add(' ,DocRatePer='+FloatToStr(lf_CommRate));
                         sql.add(' ,DocAmount='+FloatToStr(RoundingAfterSecondPlace((TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate)/100)));
                         sql.add(' ,DocAmountOrg='+FloatToStr(RoundingAfterSecondPlace((TablePTTestTemp.FieldbyName('CostPrice').AsFloat * lf_CommRate)/100)));
                    End;
                    sql.add(' Where Sno='+IntToStr(Query_TempSubProcess.FieldbyName('Sno').AsInteger));
                    ExecSQL;
               End;
               Query_Process.Next;
               Query_TempSubProcess.Next;
          End;
     End;
End;


Procedure TFormInpMain.SetDefaultXrayPlate;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.Clear;
          sql.add(' Select * From  XRayPlateSize.db where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
          sql.add(' and MasterTNCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
          Open;
     End;

     With Query_Process do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql.Clear;
          sql.add(' Select * From XRayCommession where TestNameCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
          Open;
     End;


     IF Query_TempProcess.RecordCount <=0 Then
     Begin
          IF Not Table_XRayPlateSize.Active Then Table_XRayPlateSize.Active:=True;
          With Table_XRayPlateSize Do
          Begin
               //IF Not TablePTTestTemp.Active Then TablePTTestTemp.Active:=True;
               TablePTTestTemp.Edit;
               Append;
               FieldbyName('MasterTNCode') .AsString:=TablePTTestTemp.FieldByName('TestNameCode').AsString;
               FieldbyName('TestNameCode') .AsString:=TablePTTestTemp.FieldByName('TestNameCode').AsString;
               FieldbyName('TestName') .AsString:=TablePTTestTemp.FieldbyName('TestName') .AsString;
               FieldbyName('MasterTestName') .AsString:=TablePTTestTemp.FieldbyName('TestName') .AsString;
               FieldbyName('Qty') .AsInteger:=1;
               FieldbyName('UnitCost') .AsFloat:=TablePTTestTemp.FieldbyName('CostPrice').AsFloat;
               FieldbyName('UnitTaxAmt') .Asfloat:=TablePTTestTemp.FieldbyName('VatAmt').AsFloat;
               FieldbyName('TaxAmt') .Asfloat:=TablePTTestTemp.FieldbyName('VatAmt').AsFloat;
               FieldbyName('Amount') .Asfloat:=TablePTTestTemp.FieldbyName('CostPrice').AsFloat+TablePTTestTemp.FieldbyName('VatAmt').AsFloat;
               FieldbyName('DocCode').AsString:=ps_XRayDocCode;
               FieldbyName('CommPer').AsFloat:=Query_Process.FieldByName('CommRate').AsFloat;
               FieldbyName('UnitCommAmt').AsFloat:=Query_Process.FieldByName('CommAmount').AsFloat;
               FieldbyName('CommFromAmount').AsFloat:=Query_Process.FieldByName('CommFromAmount').AsFloat;
               Post;
          End;
     End
     Else
     Begin
          With Query_TempProcess Do
          Begin
               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Update XRayPlateSize.db Set Qty='+TablePTTestTemp.FieldbyName('Qty').AsString);
               sql.add(' ,TaxAmt='+TablePTTestTemp.FieldbyName('VatAmt').AsString);
               sql.add(' ,Amount='+FloatToStr((TablePTTestTemp.FieldbyName('CostPrice').AsFloat * TablePTTestTemp.FieldbyName('Qty').AsFloat) +
                                                  TablePTTestTemp.FieldbyName('VatAmt').AsFloat));
               sql.add(' ,DocCode='+#39+ps_XRayDocCode+#39+',CommPer='+Query_Process.FieldByName('CommRate').AsString);
               sql.add(' ,UnitCommAmt='+Query_Process.FieldByName('CommAmount').AsString);
               sql.add(' ,CommFromAmount='+Query_Process.FieldByName('CommFromAmount').AsString);
               sql.add(' Where MasterTNCode='+#39+TablePTTestTemp.FieldByName('TestNameCode').AsString+#39);
               ExecSQL;
          End;
     End;
End;

Function TFormInpMain.GetTotIVFDeposit:Double;
begin
     with Query_CheckeIVFDep do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(CR-Dr) as Total From IPDeposit where ');
          sql.add(' PatientId='+IntToStr(pi_PatientId)+' and IVFNo='+IntToStr(pi_IVFNO));
          Open;
     End;
     Result:=Query_CheckeIVFDep.FieldByName('Total').AsFloat;
end;

Function TFormInpMain.GetTotProcedureDeposit:Double;
begin
     with QryProcedureDep do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(CR-Dr) as Total From IPDeposit where ');
          sql.add(' PatientId='+IntToStr(pi_PatientId)+' and ProcedureNo='+IntToStr(pi_IVFNO));
          Open;
     End;
     Result:=QryProcedureDep.FieldByName('Total').AsFloat;
end;

procedure TFormInpMain.AdvanceBillingProcessing;
var
     lf_ExtraCharge : Double;
     ls_DepType, ls_WorkingStatus, ls_PayStatus,ls_Special : String;
begin
     If (DBLookupComboBox_Community.KeyValue=Null) or (DBLookupComboBox_Community.KeyValue=0) then
     Begin
          pi_CommunityId:=0;
          pi_SchemeId:=0;
     End
     Else
     Begin
          pi_CommunityId:=DBLookupComboBox_Community.KeyValue;
          pi_SchemeId:=DBLookupComboBox_Scheme.KeyValue;
     End;

     IF (RadioButton_IPBilling.Checked=True) Then //and (CMBPayType.Text='CASH') Then {*** if even patient give cash that test items is save as ..}
     Begin
          ps_PayType:='CREDIT';                                                                                     {....credit(TP) bill but that amount is saved as Cash Deposit.}
          ps_BillType:='IP';
          ls_DepType:='ADV';
          lf_ExtraCharge:=StrToFloat(EditPayment.Text);
     End
     Else {  for OP  }
     Begin
          lf_ExtraCharge:=0;
          IF RB_OPAdvanceBilling.Checked=False Then
          ps_PayType:=CMBPayType.Text
          Else
          Begin
               ps_PayType:='CREDIT';
               ls_DepType:='OPA';
               lf_ExtraCharge:=StrToFloat(EditPayment.Text);
          End;

          IF CB_AddedChrgForIP.Checked=False Then
          ps_BillType:='B'
          Else // From OP Billing sometimes we do Bill for inpatient (left Items or Extra 1 Day Stay) after Financial discharge done
          ps_BillType:='IP'; // so such type of bill income goes into IP Income
     End;

     IF ps_BillingStatus='OPB' Then {*** OPB- Out patient billing, IPB- In patient Billing..}
     ls_WorkingStatus:='REG'
     Else
     ls_WorkingStatus:='InPatient';

     With QueryDetailCP Do
     Begin
          Close;
          Sql[5]:=' And CancelStatus=''N''';
          ParamByName('BillNo').ASString:=ps_AdvBillNo;
          //sql.savetofile('1.txt');
          Open;
     End;

     Try
          DMhospital.Hospital.StartTransaction;
          ps_MyBillNo:=MakeBillNo;
          TablePTTestTemp.First;
          While not TablePTTestTemp.eof do
          begin
               IF TablePTTestTemp.fieldbyname('ISAdvanceBill').asstring='Y' then
               begin
                    With Query_Process do
                    begin
                         close;
                         DatabaseName:=gs_DatabaseName;
                         sql.clear;
                         sql.add(' Update BillDetail set BillNo='+#39+ps_MyBillNo+#39);
                         sql.add(' ,Amount=' +TablePTTestTemp.fieldbyname('TestPrice').asstring);
                         sql.add(' ,QTY=' +TablePTTestTemp.fieldbyname('QTY').asstring);
                         sql.add(' ,VatAmt=' +FloatToStr(TablePTTestTemp.FieldByName('VatAmt').AsFloat));
                         sql.add(' ,CurVatAmt=' +FloatToStr(TablePTTestTemp.FieldByName('VatAmt').AsFloat));
                         sql.add(' ,Dis=' +TablePTTestTemp.fieldbyname('disper').asstring);
                         sql.add(' ,TotalAmount=' +TablePTTestTemp.fieldbyname('CostPrice').asstring);
                         sql.add(' ,CommunityId='+IntToStr(pi_CommunityId));
                         sql.add(' ,SchemeId='+IntToStr(pi_SchemeId));
                         sql.add(' where billdetailid='+TablePTTestTemp.fieldbyname('billdetailid').asstring);
                         execSQL;
                    end;

                    { Update Patient Test }
                    With Query_Process do
                    Begin
                        Close;
                        DatabaseName:=gs_DatabaseName;
                        sql.Clear;
                        sql.Add(' Update PatientTest Set PatientID='+IntToStr(pi_PatientID)+',');
                        sql.Add(' BillNo='+#39+ps_MyBillNo+#39+',PayStatus='+#39+'CASH'+#39);
                        sql.Add(' Where PatientTestId='+TablePTTestTemp.fieldbyname('PatientTestId').asstring);
                        ExecSQL;
                    End;
               end ;
               TablePTTestTemp.next;
          end;

          QueryDetailCP.First;
          while not QueryDetailCP.Eof do
          begin
               IF not TablePTTestTemp.Locate('billdetailid',QueryDetailCP.fieldbyname('billdetailid').asinteger,[]) then
               begin
                    with Query_Process do
                    begin
                         close;
                         DatabaseName:=gs_DatabaseName;
                         sql.clear;
                         sql.add(' update billdetail set CancelStatus=''Y''');
                         sql.add(' where billdetailid='+QueryDetailCP.fieldbyname('Billdetailid').asstring);
                         execSQL;
                    end;
               end;
               QueryDetailCP.next;
          end;

          lf_ExtraCharge:=StrToFloat(EditPayment.Text);

          With Query_PrevBillNo Do
          Begin
               close;
               sql.clear;
               sql.add(' Select CrBillNo From BillMaster Where PatientId='+IntToStr(pi_PatientId));
               sql.add(' And BillNo  Like ''AD%'' ');
               Open;
          End;

          With Query_Process do
          begin
               close;
               DatabaseName:=gs_DatabaseName;
               sql.clear;
               sql.add('  Update billmaster set discount ='+EditDisAmt.Text);
               sql.add('  , extracharge ='+FloatToStr(lf_ExtraCharge)+', modifyby = '+IntToStr(gi_UserId));
               sql.add('  , dis ='+EditDisPer.Text);
               sql.add('  , total =' + EditTotal.Text +', grandtotal='+Edit_GrandTotal.Text);
               sql.add('  , Tax ='+Edit_ExDuty.Text +', billno ='+#39+ps_MyBillNo+#39 );
               sql.add('  , ratetype ='+#39+ps_RateType+#39+', billdate ='+#39+ps_TodaysDate+#39+', modifydate ='+#39+ps_TodaysDate+#39 );
               sql.add('  , modifytime ='+#39+ps_TodaysTime+#39+', paytype ='+#39+ps_PayType+#39+', billtype ='+#39+ps_BillType+#39);
               sql.add('  where patientid ='+IntToStr(pi_PatientId));
               sql.add('  and CrBillNo='+#39+Query_PrevBillNo.FieldByName('CrBillNo').AsString+#39);
               ExecSQL;
          end;

          { Update Patient Test Billno (Advance Billno Into Cash }
          With Query_Process do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.Add(' Update PatientTest Set billno ='+#39+ps_MyBillNo+#39 );
               sql.Add(' where BillNo='+#39+Query_PrevBillNo.FieldByName('CrBillNo').AsString+#39);
               sql.Add(' and PatientId='+IntToStr(pi_PatientId));
               ExecSQL;
          End;

          pi_IpDepositId:=GetNewLongIntKeyValue('IPDeposit','IPDId');
          SaveDeposit(
                       pi_IpDepositId,pi_PatientId,pi_InPatientId,gi_UserId,0,0,StrToFloat(Label_ReceivedAmt.Caption),
                       pf_DollarAmount,pf_DollarExRate, ps_MyBillNo,ps_TodaysDate,ps_TodaysTime,
                       'REFUND',ls_DepType,'',Query_PrevBillNo.FieldByName('CrBillNo').AsString,'','');


          b_SaveSuccess:=True;
          BtnSave.Enabled:=False;
          Frm_Message.ShowModal;
          DMhospital.Hospital.Commit;
     except
          DMhospital.Hospital.RollBack;
     end;
end;

Function TFormInpMain.CheckIsNewItemAddInAdvDueClear : Boolean;
Begin
     With Query_TempProcess do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.Clear;
          sql.add(' Select TestNameCode From PatientTestTemp.db  where Trim(ISAdvanceBill) is null ');
          Open;
     End;

     IF Query_TempProcess.RecordCount > 0 Then
     Begin
          Result:=True;
          MessageDlg(' Sorry You Cannot Add New Item While Clearing Advance Due Bill.',mtWarning,[mbok],0);
          Exit;
     End
     Else
     Result:=False;
End;


Procedure TFormInpMain.Display_Frct_Involve_Person;
Begin
     IF (gs_IsDoctorFractionActive='Y') and (TablePTTestTemp.FieldbyName('IsFractionableItem').AsString='Y') and (ChkDischarge<>3) Then
     Begin
          With Query_GetFrctInvoPerson do
          Begin
               IF gi_HospitalId=19 Then // 19 - Medicare
               Begin
                    Close;
                    DatabaseName:=gs_TempPath;
                    sql.Clear;
                    sql.add(' Select * From DrOperation.DB Where IsFixedPersonForComm=''N''');
                    sql.add(' and Description=''REFERAL DOCTOR''');
                    Open;

                    IF Query_GetFrctInvoPerson.FieldByName('Description').AsString='REFERAL DOCTOR' Then
                    Begin
                         IF Query_GetFrctInvoPerson.FieldByName('DrCode').AsString<>DBLC_Doctor.KeyValue Then
                         DBLC_Doctor.KeyValue:=Query_GetFrctInvoPerson.FieldByName('DrCode').AsString;
                    End;
               End;

               Close;
               DatabaseName:=gs_TempPath;
               sql.Clear;
               sql.add(' Select * From DrOperation.DB Where IsFixedPersonForComm=''N''');
               sql.add(' and TestNameCode='+#39+TablePTTestTemp.FieldbyName('TestNameCode') .AsString+#39);
               sql.add(' Order By DrName ');
               Open;
          End;
          Label_Fraction.Visible:=True;
          DBGrid_DocInvolved.Visible:=True;
     End
     Else
     Begin
          Label_Fraction.Visible:=False;
          DBGrid_DocInvolved.Visible:=False;
     End;
End;

procedure TFormInpMain.AlternateBillPrint_Medicare(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount,lf_NetAmount,lf_AdvanceAmt:Double;
    lf_Qty,lf_Rate,lf_DisPer,lf_DisAmt:Double;
    sQty,sRate,sDisPer,sDisAmt,sAmount,sGTotal,ls_BillDate:String;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sName,sParticulars,sNo,sDepCode,ls_AmountInWords,li_IndivInvDoc:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress,AdvanceBillNo:String;
    yval,y,X,Z,il,iLength,YItemsEnd,TotalNo,i,NoOfItems,iLen,TemVar,li_PaperHeight,li_AniD,li_NoOfItems:Integer;
    tm: TTextMetric;
    Is_NewPage,IsOPAdvanceBillCleared, lb_FullRefundBill :Boolean;

    Procedure AutoStratchItems(ItemName,DocName:String);
    begin
         iLen:=Length(ItemName);
         temVar:=0;


         With FormRoboPreview.PrintPreviewRoboPrint  Do
         begin
             If iLen>=26 then
                While Ilen>0 do
                begin
                   sParticulars:=Copy(ItemName,temvar+1,50);
                   Canvas.TextOut(X+96,y+yval,format(' %-s',[sParticulars]));
                   Inc(TemVar,50);

                   {If ILen>50 then
                   Begin
                        Inc(yval,18);
                        sParticulars:=Copy(ItemName,51,120);
                        Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                   End;}
                   ILen:=ILen-50;
               end
             Else
               Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
         end;

         IF Trim(DocName)<>'' Then
         Begin
              Font.Style:=[fsBold];
              IF (Length(sParticulars) < 35) and (Length(DocName) < 24) Then
              FormRoboPreview.PrintPreviewRoboPrint.Canvas.TextOut(X+360,y+yval,format(' %-s',[DocName]))
              Else
              Begin
                   FormRoboPreview.PrintPreviewRoboPrint.Canvas.Font.Size:=9;
                   IF Length(DocName) < 24 Then
                   FormRoboPreview.PrintPreviewRoboPrint.Canvas.TextOut(X+420,y+yval,format(' %-s',[DocName]))
                   Else
                   FormRoboPreview.PrintPreviewRoboPrint.Canvas.TextOut(X+370,y+yval,format(' %-s',[DocName]));
                   FormRoboPreview.PrintPreviewRoboPrint.Canvas.Font.Size:=10;
              End;
         End;
    End;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas  Do
        begin
            IF gs_PrintInBlankPaper='Y' Then
            Begin
                 Font.Size:=14;
                 Font.Style:=[fsBold];
                 TextOut(130,Z,gs_HosNameBill);   // pixel
                 Font.Style:=[];

                 Font.Size:=8;

                 //TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel
                 //TextOut(210,y+45,gs_HosSloganTitle);

                 Font.Size:=10;
                 TextOut(330,Z+21,gs_HosAddressBill);
                 TextOut(350,Z+38,gs_HosPhoneBill);
                 //TextOut(245,Z+80,gs_HosPhoneExt);
                 //TextOut(245,Z+100,gs_HosEmailBill);   // pixel

                 Font.Size:=10;
                 Font.Style:=[fsBold];
                 TextOut(600,Z+65,'PAN NO. : '+gs_HosTPIN);//500080485');
                 Font.Style:=[];
            End;

            y:=Y+28;
            Font.Size:=10;
            Font.Style:=[fsBold];
            IF ((RadioButton_OPBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD'))
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='CS')
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='CR')  Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+400,y-32,'TAX INVOICE')           //y+110
               Else
               TextOut(X+395,y-32,'TAX INVOICE COPY');
               //TextOut(X+350,y-10,'INVOICE');           //y+110
               Font.Size:=10;
            End
            Else IF (RadioButton_IPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True)
            or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)='AD') Then
            Begin
               IF (RadioButton_OPRefundBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'RF') Then
               TextOut(X+400,y-32{10},'RECEIPT COPY')
               Else
               Begin
                    IF b_Reprint=False Then
                    TextOut(X+418,y-32{10},'RECEIPT')
                    Else
                    TextOut(X+400,y-32{10},'RECEIPT COPY');
               End;

               Font.Size:=10;
               //Font.Style:=[fsBold];
               //TextOut(X+400,y,'IP BILL');
               //Font.Style:=[];
            End
            Else IF RadioButton_OPRefundBilling.Checked=True Then
            Begin
               IF b_Reprint=False Then
               TextOut(X+400,y-32{10},'REFUND RECEIPT')
               Else
               TextOut(X+385,y-32{10},'REFUND RECEIPT COPY');
            End;
            Font.Style:=[];

            {IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
            Begin
                 Font.Style:=[fsBold];
                 Font.Size:=12;
                 TextOut(X+70,y-32,'Lab No     '+QueryDetailCP.FieldByName('LabNo').AsString);
                 Font.Style:=[];
                 TextOut(X+70,y-32,'Lab No   :');
                 Font.Style:=[];
                 Font.Size:=8;
            End;}
                Inc(y,5);
            IF (RadioButton_OPBilling.Checked=True) or (RadioButton_OPRefundBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) Then
            Begin
               Font.Style:=[fsBold];
               Font.Size:=12;

               TextOut(X+70,y, 'HOSPITAL NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
               Font.Style:=[];
               TextOut(X+70,y, 'HOSPITAL NO  :');

               Font.Size:=10;
               Font.Style:=[fsBold];
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'INVOICE NO    '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString)
               Else
               TextOut(X+460+70-15,y,'R. NO        '+QueryBillMasterCP.FieldByName('BillNo').AsString+' - '+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];

               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y,'INVOICE NO :')
               Else
               TextOut(X+460+70-15,y,'R. NO     :');


               y:=y+18;
               Font.Style:=[fsBold];
               Font.Size:=10;
               TextOut(X+70,y, 'NAME  '+QueryNameCP.FieldByName('Name').AsString); //y+220
               Font.Style:=[];
               TextOut(X+70,y, 'NAME:');

               TextOut(X+340,y-2,'AGE / SEX : '+QueryNameCP.FieldByName('AgeSex').AsString);

               Font.Size:=9;
               IF (RB_OPAdvanceBilling.Checked=False) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'AD') Then
               TextOut(X+460+70-15,y-2,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' BS / '+QueryBillMasterCP.FieldByName('BillTime').AsString)
               Else
               TextOut(X+460+70-15,y-2,'RECEIPT DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' BS/ '+QueryBillMasterCP.FieldByName('BillTime').AsString);

               ls_BillDate:=QueryBillMasterCP.FieldByName('BillDate').AsString;

               Font.Size:=10;
               Y:=Y+23;
               TextOut(X+70,y-7, 'ADDRESS :'+ls_PtAddress);

               IF gi_DateSystem=0 Then
               TextOut(X+564+70,y-10,'( '+VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD )')
               Else
               TextOut(X+564+70,y-10,'( '+ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS )');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    y:=y+10;
                    Font.Style:=[fsBold];
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
                    y:=y+10;
               End;
            End
            Else IF RadioButton_IPBilling.Checked=True Then
            Begin
               Font.Style:=[fsBold];
               TextOut(X+70,y+2, 'HOSPITAL NO    '+QueryNameCP.FieldByName('PatientId').AsString); //y+195
               Font.Style:=[];
               TextOut(X+70,y+2, 'HOSPITAL NO  :');

               Font.Style:=[fsBold];
               TextOut(X+370,y+2, 'IP NO   '+QueryNameCP.FieldByName('InPatientId').AsString);
               Font.Style:=[];
               TextOut(X+370,y+2, 'IP NO : ');
               Font.Style:=[fsBold];

               Font.Size:=10;
               TextOut(X+460+70-15,y+2,'INVOICE NO   '+QueryBillMasterCP.FieldByName('BillNo').AsString+'-'+QueryBillMasterCP.FieldByName('PayType').AsString);
               Font.Style:=[];
               TextOut(X+460+70-15,y+2,'INVOICE NO  : ');
               //Font.Size:=8;

               GetTextAlign(TA_LEFT);
               Y:=Y+20;
               Font.Style:=[fsBold];
               TextOut(X+70,y-2, 'NAME   '+QueryNameCP.FieldByName('Name').AsString); //Y+220
               Font.Style:=[];
               TextOut(X+70,y-2, 'NAME : ');


               //Y:=Y+20;
               TextOut(X+340,y-2,'AGE / SEX   : '+QueryNameCP.FieldByName('AgeSex').AsString); //y+245
               Font.Size:=9;
               TextOut(X+460+70-15,y-2,'INVOICE DATE/TIME : '+QueryBillMasterCP.FieldByName('BillDate').AsString+' / '+QueryBillMasterCP.FieldByName('BillTime').AsString);
               Font.Size:=10;
               Y:=Y+20;
               TextOut(X+70,y-7, 'ADDRESS : '+ls_PtAddress);

               IF Trim(QueryDetailCP.FieldByName('LabNo').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    Font.Size:=12;
                    TextOut(X+340,y+10,'Inv No:  '+QueryDetailCP.FieldByName('LabNo').AsString);
                    Font.Style:=[];
                    Font.Size:=10;
               End;

               IF gi_DateSystem=0 Then
               TextOut(X+564+70+20,y-7,VSTOADS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' AD ')
               Else
               TextOut(X+564+70+20,y-7,ADTOVSS(QueryBillMasterCP.FieldByName('BillDate').AsString)+' BS ');

               IF (QueryNameCP.FieldByName('MemberNo').AsString<>'') and (QueryNameCP.FieldByName('MemberNo').AsString<>'0') Then
               Begin
                  IF IsActiveMedicareNo(QueryNameCP.FieldByName('PatientId').AsInteger)='Y' Then
                  TextOut(X+350,y, 'MEDICARE NO : '+QueryNameCP.FieldByName('MemberNo').AsString);
               End;

               IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)<>'' Then
               Begin
                    Font.Style:=[fsBold];
                    y:=y+10;
                    TextOut(X+70,y,'SCHEME   '+QueryDetailCP.FieldByName('Scheme').AsString);
                    Font.Style:=[];
                    TextOut(X+70,y,'SCHEME : ');
                    y:=y+10;
               End;

               With QueryCurrIPDep do
               Begin
                  Close;
                  sql.Clear;
                  sql.add(' Select DepCode From InpatientDetail where InpatientDID In ');
                  sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                  sql.add(' where InpatientId='+QueryNameCP.FieldByName('InPatientId').AsString+')');
                  Open;
               End;
            End;
        End;
    End;

    Procedure PrintColumnHeader;
    begin
        y:=y+10;
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=9;
            Pen.Style:=psDot;
            TextOut(X+70,y,format(' %-s',['SN']));
            TextOut(X+95,y,format(' %-s',['PARTICULARS']));
            //TextOut(X+500,y,format(' %-s',['DEPCODE']));
            TextOut(X+410+170,y,format(' %-s',['RATE']));
            TextOut(X+460+170+15,y,format(' %-s',['QTY']));
            //TextOut(X+520+100,y,format(' %-s',['DIS.']));
            IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT']))
            Else
            TextOut(X+580+100+10,y,format(' %-s',['AMOUNT($)']));
            Pen.Style:=psDot;
            MoveTo(X+70,y+15);
            LineTo(X+750,y+15);
        end;
    end;
begin
     Z:=30; // Only For Header for Bill
     y:=105;//90;
     X:=-10;

     i:=1;
     IsOPAdvanceBillCleared:=False;
     With Query_SubProcess Do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          With Sql Do
          Begin
               Clear;
               Add('Select Distinct NVL(CrBillNo,''NO'') CrBillNo From BillDetail Where BillNo='+Chr(39)+BillNo+Chr(39));
          End;
          Open;
          AdvanceBillNo:=Query_SubProcess.FieldByName('CrBillNo').AsString;
          If (Copy(Query_SubProcess.FieldByName('CrBillNo').AsString,0,2)='AD') And (Copy(BillNo,0,2)='CS')Then
          IsOPAdvanceBillCleared:=True
          Else
          IsOPAdvanceBillCleared:=False;
     End;

     With QueryNameCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          Open;
     End;

     With QueryBillMasterCP Do
     Begin
          Close;
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     With QueryForDoctor do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Desig||'' ''||F_Name||'' ''||L_Name as DocName,IsDoctor From Doctor where DocCode In (Select Distinct DocCode From ');
          sql.add(' BillDetail where BillNo='+#39+BillNo+#39+' and DocCode<>''HOS01'')');
          Open;
     End;

     With QuerySumAmtCP do
     Begin
          Close;
          sql.Clear;
          sql.add(' Select Sum(Amount*CurQty) as TotalAmt, Round(Sum(Amount*CurQty*Dis/100),2) as DisTot,');
          sql.add(' Sum(CurVatAmt) as VatAmt,Sum((Amount*CurQty+CurVatAmt)-(Amount*CurQty*Dis/100)) as');
          sql.add(' NetAmount,Sum(DollarAmount*CurQty) as DollarTotalAmount, Sum(DCurVatAmt) as DollarVatAmt,Sum(DollarAmount*CurQty*Dis/100) as DollarDisTot,');
          sql.add(' Sum((DollarAmount*CurQty+DCurVatAmt)-(DollarAmount*CurQty*Dis/100)) as DollarNetAmount  from BillDetail Where  (PatientId=:PatientID) AND');
          IF (RadioButton_OPRefundBilling.Checked=False) or (Copy(BillNo,1,2)='CS') or (Copy(BillNo,1,2)='CR') Then
          sql.add(' CancelStatus=''N'' And ')
          Else
          sql.add(' CancelStatus=''Y'' and');
          sql.add(' (BillNo=:BillNo) ');
          ParamByName('PatientID').ASInteger:=PatientId;
          ParamByName('BillNo').ASString:=BillNo;
          Open;
     End;

     With QueryDetailCP Do
     Begin
          Close;
          sql.Clear;
          sql.add(' SELECT BillNo,Service,ServiceType, BillType,CurQty as Qty, Amount,CommunityID,MemberNo,SchemeId,RfBillNo,IsRefund,CancelStatus, ');
          sql.add(' DocCode,(Select Desig||'' ''||F_Name From Doctor where DocCode=BillDetail.DocCode and rownum=1) as Doctor,LabNo,CurQty*Amount As TotalAmount,');
          sql.add(' ((CurQty*Amount)-(CurQty*Amount*Dis/100)) as NetAmount,Dis, Round(CurQty*Amount*Dis/100) as Discount,CurVatAmt as VatAmt,DepId,RateType,IsPackageTest ');
          sql.add(' ,CurQty*DollarAmount as DollarAmount ,(CurQty*DollarAmount*Dis/100) as DollarDiscount,');
          sql.add(' DCurVatAmt as DollarVatAmt,DollarExRate From BillDetail  Where ');
          IF RadioButton_IPBilling.Checked=True Then
          sql.add(' CurQty > 0  And CancelStatus=''N''')
          Else IF (RadioButton_OPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (Copy(BillNo,1,2)='CS') or (Copy(BillNo,1,2)='CR') Then
          sql.add(' CurQty > 0  And CancelStatus=''N''')
          Else IF RadioButton_OPRefundBilling.Checked=True Then
          sql.add(' CurQty > 0  And CancelStatus=''Y'' And PayType=''REFUND''');
          sql.add(' and BillNo='+#39+BillNo+#39);
          sql.add(' Order By DepID ');
          Open;
     End;

     lb_FullRefundBill:=False;
     IF QueryDetailCP.RecordCount <=0 Then
     Begin
          lb_FullRefundBill:=True;
          With QuerySumAmtCP do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Sum(Amount*Qty) as TotalAmt, Round(Sum(Amount*Qty*Dis/100),2) as DisTot,');
               sql.add(' Sum(VatAmt) as VatAmt,Sum((Amount*Qty+VatAmt)-(Amount*Qty*Dis/100)) as');
               sql.add(' NetAmount,Sum(DollarAmount*Qty) as DollarTotalAmount, Sum(DollarVatAmt) as DollarVatAmt,Sum(DollarAmount*Qty*Dis/100) as DollarDisTot,');
               sql.add(' Sum((DollarAmount*Qty+DollarVatAmt)-(DollarAmount*Qty*Dis/100)) as DollarNetAmount From BillDetail Where  (PatientId=:PatientID) AND');
               IF (RadioButton_OPRefundBilling.Checked=False) or (Copy(BillNo,1,2)='CS') or (Copy(BillNo,1,2)='CR') Then
               sql.add(' CancelStatus=''N'' And ')
               Else
               sql.add(' CancelStatus=''Y'' and');
               sql.add(' (BillNo=:BillNo) ');
               ParamByName('PatientID').ASInteger:=PatientId;
               ParamByName('BillNo').ASString:=BillNo;
               Open;
          End;

          With QueryDetailCP Do
          Begin
               Close;
               sql.Clear;
               sql.add(' SELECT BillNo,Service,ServiceType, BillType,Qty, Amount,CommunityID,MemberNo,SchemeId,RfBillNo,IsRefund,CancelStatus, ');
               sql.add(' DocCode,(Select Desig||'' ''||F_Name From Doctor where DocCode=BillDetail.DocCode and rownum=1) as Doctor,LabNo,Qty*Amount As TotalAmount, ');
               sql.add(' ((Qty*Amount)-(Qty*Amount*Dis/100)) as NetAmount,Dis, Round(Qty*Amount*Dis/100) as Discount,VatAmt as VatAmt,DepId,RateType,IsPackageTest ');
               sql.add(' ,Qty*DollarAmount as DollarAmount ,(Qty*DollarAmount*Dis/100) as DollarDiscount,');
               sql.add(' DollarVatAmt as DollarVatAmt,DollarExRate From BillDetail  Where ');
               IF RadioButton_IPBilling.Checked=True Then
               sql.add(' CancelStatus=''N''')
               Else IF (RadioButton_OPBilling.Checked=True) or (RB_OPAdvanceBilling.Checked=True) or (Copy(BillNo,1,2)='CS') or (Copy(BillNo,1,2)='CR') Then
               sql.add(' CancelStatus=''N''')
               Else IF RadioButton_OPRefundBilling.Checked=True Then
               sql.add(' CancelStatus=''Y'' And PayType=''REFUND''');
               sql.add(' and BillNo='+#39+BillNo+#39);
               sql.add(' Order By DepID ');
               Open;
          End;
     End;

     IF (RadioButton_OPRefundBilling.Checked=True) and (Copy(BillNo,1,2)='RF') Then
     Begin
          With Query_PrevBillNo do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Distinct PrevBillNo,CancelDate From BillDetail where BillNo='+#39+BillNo+#39);
               sql.add(' and Trim(PrevBillNo) is not null');
               Open;
          End;
     End;

     IF (QuerySumAmtCP.FieldByName('DisTot').AsFloat > 0) or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,1,2)='AD')
     or (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,1,2)='CR') Then
     li_NoOfItems:=11
     Else
     li_NoOfItems:=12;

     ls_PtAddress:=PatientAddress;
     ls_PrintDate:=ServerDate.TodaysDate;
     ls_PrintTime:=ServerDate.TodaysTime;
     With FormRoboPreview.PrintPreviewRoboPrint do
     Begin
          {Printer.BeginDoc;
          Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          GetTextMetrics(Printer.Canvas.Handle, tm);}

          TotalNo:=QueryDetailCP.RecordCount;
          IF CheckBox_Preview.Checked=False Then
          DirectPrint:=True
          Else
          DirectPrint:=False;
          PaperType:= pCustom;
          FastPrint:=True;
          Units:= mmPixel;
          Zoom:=100;
          //UsePrinterOptions:=True;
          //PaperHeight:=900+ ( TotRecs * 50);
          //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
          //PaperHeight:=1156;
          //PaperHeight:=578; // 2068/02/16
          PaperHeight:=500;
          PaperWidth:=850;
          //Orientation:=poLandScape;
          BeginDoc;

          IF Trim(QueryDetailCP.FieldByName('Scheme').AsString)='' Then
          yval:=220
          //yval:=215
          Else
          //yval:=235;
          yval:=240;
          //Printer.Canvas.Font.Handle := GetStockObject(DEVICE_DEFAULT_FONT);
          With canvas do
          Begin
               //GetTextMetrics(Canvas.Handle, tm);

               GetPrinterOptions;
               UpdateAnnotation;
               {***********************************************************}
               {                         Page header                       }
               {***********************************************************}
               PrintPageHeader;
               {***********************************************************}
               {                       column header                       }
               {***********************************************************}
               PrintColumnHeader;
               Font.Size:=9;
               NoOfItems:=0;

               y:=-10;
               QueryDetailCP.First;//50,125
               TotalNo:=0;
               While Not QueryDetailCP.Eof  do
               Begin
                    Inc(il);
                    TotalNo:=TotalNo+1;

                    NoOfItems:=NoOfItems+1;
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    {If (QueryDetailCP.fieldbyname('IsRefund').AsString='Y') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+' (REFUND '+QueryDetailCP.fieldbyname('RFBILLNO').AsString+')'
                    Else IF (QueryDetailCP.fieldbyname('CancelStatus').AsString='Y') And
                            (Copy(QueryDetailCP.fieldbyname('BillNO').AsString,1,2)<>'RF') then
                     sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString+'( CANCEL )'
                    Else}

                    IF (QueryDetailCP.FieldByName('DocCode').AsString<>'HOS01') and
                    (QueryDetailCP.FieldByName('DocCode').AsString<>'DAS') and
                    (QueryDetailCP.FieldByName('DocCode').AsString<>'SLF') Then
                    li_IndivInvDoc:=QueryDetailCP.fieldbyname('Doctor').AsString
                    Else
                    li_IndivInvDoc:='';

                    sParticulars:=QueryDetailCP.fieldbyname('SERVICETYPE').AsString;

                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    //sDepCode:=QueryDetailCP.fieldbyname('DepCode').asString ;

                    IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('AMOUNT').asfloat)
                    Else
                    sRate:=FormatFloat('0.00',QueryDetailCP.FieldByName('DollarAMOUNT').asfloat);
                    //delete(sRate,30,iLength-30);

                    iLength:= Canvas.TextWidth(Trim(sRate));
                    iLength:= Canvas.TextWidth(sRate);
                    iLength:=64 - iLength;
                    iLength:= Round(iLength / 4);
                    sRate:=Trim(SetTextWidth(sRate,iLength));

                    sQty:=QueryDetailCP.FieldByName('Qty').AsString;
                    iLength:= Canvas.TextWidth(sQty);
                    iLength:=34- iLength;
                    iLength:= Round(iLength / 4);
                    sQty:=Trim(SetTextWidth(sQty,iLength));

                    sDisAmt:=FormatFloat('0.00',QueryDetailCP.FieldByName('DISCOUNT').Asfloat);
                    iLength:= Canvas.TextWidth(sDisAmt);
                    iLength:=64- iLength;
                    iLength:= Round(iLength / 4);
                    sDisAmt:=Trim(SetTextWidth(sDisAmt,iLength));

                    IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('TOTALAMOUNT').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetailCP.fieldbyname('DollarAMOUNT').asFloat);

                    iLength:= Canvas.TextWidth(sAmount);
                    iLength:= 64 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength > 0 then sAmount:= Trim(SetTextWidth(sAmount,iLength));

                    IF TotalNo = li_NoOfItems Then //16
                    Begin
                         Inc(yval,30);
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Bill Continuee To Next Page...');

                         NewPage;

                         //yval:=120;
                         yval:=153;
                         Canvas.Font.Size:=9;//10;
                         Canvas.Font.Style:=[fsBold];
                         Canvas.TextOut(X+70,y+yval,'Page No 2');
                         Inc(yval,25);
                         Canvas.TextOut(X+70,y+yval,'.......Continuee (Bill No) :'+BillNo);
                         Canvas.Font.Style:=[];
                         Inc(yval,30);
                    End;

                    // sno
                    If StrToInt(Trim(sNo))<10 Then //Condition for Alignment
                        Canvas.TextOut(X+78,y+yval,format(' %-s',[Trim(sNo)]))
                    Else
                        Canvas.TextOut(X+72,y+yval,format(' %-s',[Trim(sNo)]));
                    // Particulars
                    AutoStratchItems(sParticulars,li_IndivInvDoc);
                    //Canvas.TextOut(X+94,y+yval,format(' %-s',[sParticulars]));
                    //DepCode
                    //Canvas.TextOut(X+500,y+yval,format(' %-s',[sDepCode]));     //incr40
                    // Rate
                    If StrToFloat(Trim(sRate))>99999 Then //Condition for Alignment
                        Canvas.TextOut(X+385+163,y+yval,format(' %-s',[Trim(sRate)])) //273
                    Else If StrToFloat(Trim(sRate))>9999 Then
                        Canvas.TextOut(X+385+170,y+yval,format(' %-s',[Trim(sRate)])) //273
                    Else If StrToFloat(Trim(sRate))>999 Then
                        Canvas.TextOut(X+385+177,y+yval,format(' %-s',[Trim(sRate)])) //273
                    Else If StrToFloat(Trim(sRate))>99 Then
                        Canvas.TextOut(X+385+184,y+yval,format(' %-s',[Trim(sRate)])) //273
                    Else
                        Canvas.TextOut(X+385+191,y+yval,format(' %-s',[Trim(sRate)])); //273

                    // Qty           //450
                    If StrToInt(Trim(sQty))<10 Then //Condition for Alignment
                        Canvas.TextOut(X+450+170+35,y+yval,format(' %-s',[Trim(sQty)])) //323
                    Else
                        Canvas.TextOut(X+450+170+28,y+yval,format(' %-s',[Trim(sQty)])); //323
                    //Canvas.TextOut(X+450+170+13,y+yval,format(' %-s',[sQty])); //323

                    // DisAmt
                    //Canvas.TextOut(X+485+100,y+yval,format(' %-s',[sDisAmt])); //345
                    // Amount

                    If StrToFloat(Trim(sAmount))>99999 Then //Condition for Alignment
                        Canvas.TextOut(X+565+118,y+yval,format(' %-s',[Trim(sAmount)])) //380
                    Else If StrToFloat(Trim(sAmount))>9999 Then //Condition for Alignment
                        Canvas.TextOut(X+565+125,y+yval,format(' %-s',[Trim(sAmount)])) //380
                    Else If StrToFloat(Trim(sAmount))>999 Then //Condition for Alignment
                        Canvas.TextOut(X+565+132,y+yval,format(' %-s',[Trim(sAmount)])) //380
                    Else If StrToFloat(Trim(sAmount))>99 Then //Condition for Alignment
                        Canvas.TextOut(X+565+138,y+yval,format(' %-s',[Trim(sAmount)])) //380
                    Else
                        Canvas.TextOut(X+565+145,y+yval,format(' %-s',[Trim(sAmount)])); //380

                    IF lb_FullRefundBill=True Then
                    Canvas.TextOut(X+565+185,y+yval,'R'); //380

                    If QueryDetailCP.fieldbyname('IsPackageTest').AsString='Y' Then //If the Item Is Package
                    Begin
                         With Query_Process Do
                         Begin
                              Close;
                              DatabaseName:=gs_DatabaseName;
                              sql.Clear;
                              {sql.Add(' Select TestNameID,TestNameCode');
                              sql.Add(' ,(Select TestName From TestName Where TestNameID=PT.TestNameID) TestName');
                              sql.Add(' From PatientTest PT');
                              sql.Add(' Where RefPatientTestID=(Select PatientTestID From PatientTest');
                              sql.Add(' Where BillNo='+#39+QueryDetailCP.fieldbyname('BillNo').AsString+#39);
                              sql.Add(' And TestNameCode='+#39+QueryDetailCP.fieldbyname('Service').AsString+#39);
                              sql.Add(')');}
                              sql.add(' Select TN.TestName From PackageTest PT, TestName TN where PT.DTestNameCode=TN.TestNameCode');
                              sql.add(' and PT.MTestNameCode='+#39+QueryDetailCP.fieldbyname('Service').AsString+#39);
                              sql.add(' and TN.DEPID In (Select DepId From Department where IsPathologicalDep=''N'')');
                              sql.add(' and DTestNameCode<>''P72''');
                              Open;

                              Inc(TotalNo,1);
                              Inc(yval,18);
                              {IF (QueryDetailCP.fieldbyname('DocCode').AsString<>'HOS01')
                              and (QueryDetailCP.fieldbyname('DocCode').AsString<>'DAS')
                              and (QueryDetailCP.fieldbyname('DocCode').AsString<>'SLF') Then
                              Canvas.TextOut(X+120,y+yval,format(' %-s',['-> DOCTOR CONSULTATION( '+QueryDetailCP.fieldbyname('Doctor').AsString+' )']))
                              Else}
                              Canvas.TextOut(X+120,y+yval,format(' %-s',['-> DOCTOR CONSULTATION']));

                              First;
                              While Not Eof Do
                              Begin
                                   Inc(yval,18);
                                   Canvas.TextOut(X+120,y+yval,format(' %-s',['-> '+FieldByName('TestName').AsString]));
                                   Inc(TotalNo,1);
                                   IF TotalNo = 12 Then
                                   Begin

                                        Inc(yval,30);
                                        Canvas.Font.Style:=[fsBold];
                                        Canvas.TextOut(X+70,y+yval,'Bill Continue To Next Page...');
                                        TotalNo := 0;
                                        NewPage;
                                        yval:=0;
                                        y:=80;
                                        yval:=120;
                                        Canvas.Font.Size:=06;
                                        Canvas.TextOut(X+70,y+yval,'Page No 2');
                                        Inc(yval,30);
                                        Canvas.TextOut(X+70,y+yval,'.......Continue');
                                        Canvas.Font.Style:=[];
                                   End;
                                   Next;
                              End;
                              Inc(TotalNo,1);
                              Inc(yval,18);
                              Canvas.TextOut(X+120,y+yval,format(' %-s',['-> PATHOLOGY TEST']));
                         End;
                    End;

                        If QueryDetailCP.RecordCount < 9 Then
                            Inc(yval,20)//18);
                        Else
                            Inc(yval,15);//18);

                    QueryDetailCP.Next;
               end;

               {***********************************************************}
               {                       print summary                       }
               {***********************************************************}
               Canvas.Pen.Style:=psDot;
               Canvas.MoveTo(X+70,y+yval);
               Canvas.LineTo(X+750,y+yval);

               yval:=yval+10;
               YItemsEnd:=yval;
               Canvas.Font.Size:=10;
               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    //Canvas.TextOut(X+60,y+yval,'In Words   :'+UpperCase(InWords(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)+'.only'))
                    gs_PtType:='NORMAL';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('NetAmount').AsFloat)))));
               End
               Else
               Begin
                    gs_PtType:='FRG';
                    //ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',Round(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
                    ls_AmountInWords:=UpperCase(AmountInWords(StrToFloat(FormatFloat('0.00',(QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat)))))+' - (IN USD)' ;
               End;

               Canvas.Font.Size:=10;
               IF Length(ls_AmountInWords) > 55 Then
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  ');
                    iLen:=Length(ls_AmountInWords);

                    temVar:=0;
                    While Ilen > 0 do
                    begin
                         sParticulars:=Copy(ls_AmountInWords,temvar+1,55);
                         IF temvar= 0 Then
                         Canvas.TextOut(X+130,y+yval,format(' %-s',[sParticulars]))
                         Else
                         Canvas.TextOut(X+130,y+yval,format(' %-s',[sParticulars]));
                         Inc(TemVar,55);
                         Inc(yval,18);
                         ILen:=ILen-50;
                    end;
               End
               Else
               Begin
                    Canvas.TextOut(X+70,y+yval,'In Words :  '+ls_AmountInWords);
                    Inc(yval,20);
               End;

               Canvas.TextOut(X+70,y+yval,'USER   : '+QueryBillMasterCP.FieldByName('UserName').AsString);

               if (ps_ProcedureBill='Y') And (pb_OPDDuePaid<>True) Then
               Canvas.TextOut(X+300,y+yval,'PROCEDURE NO   : '+IntToStr(pi_IVFNo));

               IF (RadioButton_OPRefundBilling.Checked=True) and (Copy(BillNo,1,2)='RF') Then
               Begin
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+300,y+yval,'Prev BillNo   : '+Query_PrevBillNo.FieldByName('PrevBillNo').AsString);
                    Canvas.Font.Style:=[];
               End;

               If (b_Reprint=True) or ((RadioButton_OPRefundBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'RF')) Then
               Begin
                    Canvas.Font.Size:=8;
                    Inc(yval,20);
                    Canvas.TextOut(X+70,y+yval,'RE-PRINT BY : '+gs_UserName+'    DATE/TIME :'+ServerDate.TodaysDate+' / '+ServerDate.TodaysTime);
                    Canvas.Font.Size:=10;
                    //Inc(yval,20);
                    //TextOut(X+60,y+yval,'PRINT NO. : '+gs_UserName);
               End;

               If Trim(QueryBillMasterCP.FieldByName('Remarks').AsString)<>'' Then
               Begin
                    Inc(yval,20);
                    Canvas.TextOut(X+70,y+yval,'Remarks : '+QueryBillMasterCP.FieldByName('Remarks').AsString);
               End;

               IF (RadioButton_OPRefundBilling.Checked=True) and (Copy(QueryBillMasterCP.FieldByName('BillNo').AsString,0,2)<>'RF') Then
               Begin
                    With Query_Process Do
                    Begin
                         Close;
                         sql.Clear;
                         sql.add(' Select BD.BillNo,Count(BD.BillNo) as TotNoOfItemInFristBill,(Select Count(BillNo) From BillDetail ');
                         sql.add(' where PrevBillNo=BD.BillNo) as  TotNoOfItemRefund ');
                         sql.add(' From BillDetail BD where BillNo='+#39+BillNo+#39);
                         sql.add(' Group by BD.BillNo ');
                         Open;
                    End;

                    IF Query_Process.FieldByName('TotNoOfItemRefund').AsInteger > 0 Then
                    Begin
                         Inc(yval,20);
                         Canvas.Font.Style:=[fsItalic];
                         IF lb_FullRefundBill=False Then
                         Canvas.TextOut(X+70,y+yval,'* Remaining Item After Refund.')
                         Else
                         Canvas.TextOut(X+70,y+yval,'* All Item Refunded of This Bill.');
                         Canvas.Font.Style:=[fsBold];
                    End;
               End;


               IF (QueryDetailCP.FieldByName('RateType').AsString<>'FRG') Or (gs_IsBillInDollarForFrg='N') Then
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('TotalAmt').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('VatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('NetAmount').AsFloat;
               End
               Else
               Begin
                    lf_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsFloat;
                    ls_TotalAmount:=QuerySumAmtCP.FieldByName('DollarTotalAmount').AsString;

                    lf_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsFloat;
                    ls_VatAmt:=QuerySumAmtCP.FieldByName('DollarVatAmt').AsString;

                    lf_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsFloat;
                    ls_Discount:=QuerySumAmtCP.FieldByName('DollarDisTot').AsString;

                    lf_NetAmount:=QuerySumAmtCP.FieldByName('DollarNetAmount').AsFloat;
               End;

               yval:=YItemsEnd;
               iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_TotalAmount));
               iLength:=64-iLength;
               iLength:= Round(iLength / 4);

               //Inc(yval,20);
               iLength:=2;
               Canvas.TextOut(X+580,y+yval,'AMOUNT :');
               If lf_TotalAmount > 99999 Then
                    Canvas.TextOut(X+673,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
               Else If lf_TotalAmount > 9999 Then
                    Canvas.TextOut(X+680,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
               Else If lf_TotalAmount > 999 Then
                    Canvas.TextOut(X+687,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
               Else If lf_TotalAmount > 99 Then
                    Canvas.TextOut(X+698,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
               Else If lf_TotalAmount > 9 Then
                    Canvas.TextOut(X+705,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
               Else
                    Canvas.TextOut(X+712,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength));

               IF gs_GovtTaxRule='TBD' Then
               Begin
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    Canvas.TextOut(X+555,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPer)+'%) :');
                    Canvas.TextOut(X+660,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength));

                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         Canvas.TextOut(X+400-10,y+yval,'ADVANCE :');
                         Canvas.TextOut(X+465,y+yval,SetTextWidth(FormatFloat('#,##0.00',GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+20,'DUES :');
                         Canvas.TextOut(X+465,y+yval+20,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));

                         Canvas.TextOut(X+400-10,y+yval+40,'PAID :');
                         Canvas.TextOut(X+465,y+yval+40,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                    End;

                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_Discount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);

                    lf_Discount:=1;
                    If lf_Discount > 0 Then
                    Begin
                         Canvas.TextOut(X+600,y+yval,'DISCOUNT :');
                         Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_Discount),iLength));
                         Inc(yval,20);
                   End;

                   iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_NetAmount));
                   iLength:=64-iLength;
                   iLength:= Round(iLength / 4);

                   Canvas.Font.Size:=10;
                   Canvas.TextOut(X+600,y+yval,'TOTAL :');
                   Canvas.Font.Style:=[fsBold];
                   Canvas.TextOut(X+667,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount),iLength));
                   Canvas.Font.Style:=[];
                   Canvas.Font.Size:=8;

                    If ps_ProcedureBill='Y' Then
                    Begin
                         with QryProcedureDep do
                         Begin
                              Close;
                              sql.Clear;
                              sql.add(' Select Sum(CR-DR) as Total From IPDeposit where ProcedureNo='+IntToStr(pi_IVFNO));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and nvl(Remarks,'' '')<>''IVF DEPOSIT REFUND''');
                              sql.add(' And PatientId='+IntToStr(pi_PatientId)+' and InPatientID=0');
                              sql.add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              //sql.add(' and PatientId='+IntToStr(pi_PatientId)+' and (RefBillNo Not Like ''CS%'' or Trim(RefBillNo) is null ');
                              //sql.add(' or RefBillNo Not Like ''CR%'')');
                              //sql.SaveToFile('Sql.txt');
                              Open;
                         End;

                         IF QryProcedureDep.FieldByName('Total').AsFloat > 0 Then
                         Begin
                              lf_AdvanceAmt:=QryProcedureDep.FieldByName('Total').AsFloat;
                              Inc(yval,20);
                              iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+550,y+yval,'PROCEDURE DEPOSIT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('#,##0.00',(lf_AdvanceAmt)),iLength));
                              IF lf_NetAmount >  lf_AdvanceAmt Then
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   Canvas.TextOut(X+550,y+yval,'PAID AMOUNT');
                                   Canvas.Font.Size:=10;

                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('#,##0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End
                              Else
                              Begin
                                   Inc(yval,20);
                                   Canvas.Font.Size:=08;
                                   iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_NetAmount-lf_AdvanceAmt));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   Canvas.Font.Style:=[fsBold];
                                   IF lf_NetAmount-lf_AdvanceAmt=0 Then
                                   Canvas.TextOut(X+550,y+yval,'NET AMOUNT')
                                   ELSE
                                   Canvas.TextOut(X+550,y+yval,'REFUND AMOUNT');
                                   Canvas.Font.Size:=10;
                                   Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('#,##0.00',(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              End;
                         End;

                         With Query_SubProcess Do
                         Begin
                              Close;
                              Sql.Clear;
                              Sql.Add('Select IPDID,Cr,Dr,BillNo,ModifyDate From IPDeposit Where PatientID='+IntToStr(pi_PatientId));
                              Sql.Add(' And InPatientID=0');
                              Sql.Add(' And ProcedureNo='+IntToStr(pi_IVFNO));
                              Sql.Add(' And NVL(RefBillNo,''AniD'')<>'+Chr(39)+BillNo+Chr(39));
                              Sql.Add(' Order By IPDID Asc');
                              Open;
                              li_AniD:=yval;
                              Canvas.TextOut(X+70,y+yval-20,'Deposit Detail(s)');
                              While Not Eof Do
                              Begin
                                   Canvas.TextOut(X+70,y+li_AniD,FieldByName('ModifyDate').AsString);
                                   Canvas.TextOut(X+150,y+li_AniD,FieldByName('BillNo').AsString);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Cr').AsFloat))
                                   Else
                                   iLength:=Canvas.TextWidth(FormatFloat('0.00',FieldByName('Dr').AsFloat));
                                   iLength:=64-iLength;
                                   iLength:= Round(iLength / 4);
                                   If FieldByName('Cr').AsFloat>0 Then
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Cr').AsFloat)),iLength))
                                   Else
                                   Canvas.TextOut(X+300,y+li_AniD,SetTextWidth(FormatFloat('0.00',(FieldByName('Dr').AsFloat)),iLength)+'-R');
                                   Inc(li_AniD,20);
                                   Next;
                              End;
                         End;
                    End;
               End
               Else
               Begin
                    Inc(yval,20);

                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_Discount));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    If lf_Discount > 0 Then
                    Begin
                        Canvas.TextOut(X+600-9,y+yval,'        (-) :');
                        Canvas.TextOut(X+672,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_Discount),iLength));
                        Inc(yval,20);
                    End;


                    If IsOPAdvanceBillCleared=True Then
                    Begin
                         IF lf_Discount > 0 Then
                         Begin
                              Canvas.TextOut(X+370,y+yval-20,'ADVANCE:');
                              Canvas.TextOut(X+435,y+yval-20,SetTextWidth(FormatFloat('#,##0.00',GetMeAdvance(AdvanceBillNo)),iLength));

                              Canvas.TextOut(X+370,y+yval,'DUES :');
                              Canvas.TextOut(X+440,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));

                              Canvas.TextOut(X+370,y+yval+20,'PAID :');
                              Canvas.TextOut(X+440,y+yval+20,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                         End
                         Else
                         Begin
                              Canvas.TextOut(X+370,y+yval,'ADVANCE:');
                              Canvas.TextOut(X+435,y+yval,SetTextWidth(FormatFloat('#,##0.00',GetMeAdvance(AdvanceBillNo)),iLength));

                              Canvas.TextOut(X+370,y+yval+20,'DUES :');
                              Canvas.TextOut(X+440,y+yval+20,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));

                              Canvas.TextOut(X+370,y+yval+40,'PAID :');
                              Canvas.TextOut(X+440,y+yval+40,SetTextWidth(FormatFloat('#,##0.00',lf_NetAmount-GetMeAdvance(AdvanceBillNo)),iLength));
                         End;
                    End;

                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',(lf_TotalAmount-lf_Discount)));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    If lf_Discount > 0 Then
                    Begin
                         iLength:=4;
                         Canvas.TextOut(X+600-36,y+yval,'SUB TOTAL :');
                         lf_TotalAmount:=lf_TotalAmount-lf_Discount;
                         If lf_TotalAmount > 99999 Then
                             Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
                         Else If lf_TotalAmount > 9999 Then
                             Canvas.TextOut(X+672,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
                         Else If lf_TotalAmount > 999 Then
                             Canvas.TextOut(X+679,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
                         Else If lf_TotalAmount > 99 Then
                             Canvas.TextOut(X+690,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
                         Else If lf_TotalAmount > 9 Then
                             Canvas.TextOut(X+697,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength))
                         Else
                             Canvas.TextOut(X+704,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_TotalAmount),iLength));
                         Inc(yval,20);
                    End;


                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_VatAmt));
                    iLength:=74-iLength;
                    iLength:= Round(iLength / 4);

                    iLength:=6;

                    IF ls_BillDate >='2068/04/01' Then
                    Canvas.TextOut(X+570-22,y+yval,'  VAT @ ('+FloatToStr(gf_VatPer)+'%) :')
                    else
                    Canvas.TextOut(X+570-41,y+yval,'SVR. TAX @ ('+FloatToStr(gf_VatPerOld)+'%) :');

                    If lf_VatAmt > 99999 Then
                        Canvas.TextOut(X+657,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength))
                    Else If lf_VatAmt > 9999 Then
                        Canvas.TextOut(X+664,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength))
                    Else If lf_VatAmt > 999 Then
                        Canvas.TextOut(X+671,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength))
                    Else If lf_VatAmt > 99 Then
                        Canvas.TextOut(X+682,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength))
                    Else If lf_VatAmt > 9 Then
                        Canvas.TextOut(X+689,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength))
                    Else
                        Canvas.TextOut(X+696,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength));

                   // Canvas.TextOut(X+659,y+yval,SetTextWidth(FormatFloat('#,##0.00',lf_VatAmt),iLength));
                    Inc(y,20);

                    iLength:=2;
                    Canvas.TextOut(X+600-9,y+yval,'TOTAL :');
                    Canvas.Font.Style:=[fsBold];
                    Canvas.Font.Size:=10;
                    //Canvas.TextOut(X+580,y+yval,SetTextWidth(FormatFloat('0.00',lf_NetAmount),iLength));
                    If Round(lf_NetAmount) > 99999 Then
                        Canvas.TextOut(X+673,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength))
                    Else If Round(lf_NetAmount) > 9999 Then
                        Canvas.TextOut(X+680,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength))
                    Else If Round(lf_NetAmount) > 999 Then
                        Canvas.TextOut(X+687,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength))
                    Else If Round(lf_NetAmount) > 99 Then
                        Canvas.TextOut(X+697,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength))
                    Else If Round(lf_NetAmount) > 9 Then
                        Canvas.TextOut(X+704,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength))
                    Else
                        Canvas.TextOut(X+711,y+yval,SetTextWidth(FormatFloat('#,##0.00',Round(lf_NetAmount)),iLength));
                        Canvas.Font.Style:=[];

                    Canvas.Font.Style:=[];
                    iLength:=Canvas.TextWidth(FormatFloat('#,##0.00',lf_NetAmount));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);
               End;

               Canvas.Font.Style:=[];
               IF ((RadioButton_IPBilling.Checked=True) and (QueryDetailCP.FieldByName('BillType').AsString='IP'))
               or (RB_OPAdvanceBilling.Checked=True) or (Copy(QueryDetailCP.FieldByName('BillNo').AsString,0,2)='AD') Then // AD - Advance BillNo for Re-Print
               Begin
                    //IF QueryDetailCP.FieldByName('RateType').AsString<>'FRG' Then
                    lf_AdvanceAmt:=QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat;
                    //Else
                    //lf_AdvanceAmt:=(QueryBillMasterCP.FieldByName('ExtraCharge').AsFloat/QueryDetailCP.FieldByName('DollarExRate').AsFloat);
                    Inc(yval,20);
                    iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_AdvanceAmt));
                    iLength:=64-iLength;
                    iLength:= Round(iLength / 4);
                    Canvas.Font.Size:=10;
                    Canvas.Font.Style:=[fsBold];
                    Canvas.TextOut(X+600-10,y+yval,'ADVANCE');
                    Canvas.Font.Size:=10;
                    Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_AdvanceAmt)),iLength));

                    If (pb_OPDDuePaid<>True) And (Copy(BillNo,0,2)='AD') Then
                    Begin
                         IF lf_NetAmount >  lf_AdvanceAmt Then
                         Begin
                              Inc(yval,20);
                              Canvas.Font.Size:=10;
                              iLength:=Canvas.TextWidth(FormatFloat('0.00',lf_NetAmount-lf_AdvanceAmt));
                              iLength:=64-iLength;
                              iLength:= Round(iLength / 4);
                              Canvas.Font.Style:=[fsBold];
                              Canvas.TextOut(X+585-10,y+yval,'DUE AMOUNT');
                              Canvas.Font.Size:=10;
                              Canvas.TextOut(X+665,y+yval,SetTextWidth(FormatFloat('0.00',Round(lf_NetAmount-lf_AdvanceAmt)),iLength));
                              //GetTextAlign(TA_RIGHT);
                         End;
                         pb_OPDDuePaid:=False;
                    End;
               End;
          End;
          //PaperHeight:=y+yval+50;
          EndDoc;
          //FormRoboPreview.ShowModal;
     End;
     If CheckBox_Preview.Checked=True Then
     FormRoboPreview.ShowModal;
end;

Procedure TFormInpMain.OnRefresh;
Begin
     DateStr:=ADToVS(DateEditX_TodayIPView.ADDateAsDate-StrToInt(EditDay.text));
     LabelIncreasedDate1.Caption:=DateStr;
     With QueryInpatientSearch do
     begin
          close;
          ParamByName('RegDate').asstring:=DateEditX_TodayIPView.ADDateAsText;
          ParamByName('RegDate1').asstring:=DateStr;
          open;
     end;
End;

procedure TFormInpMain.Xsearch;
var ss:string;
    len,i:integer;
    IsNumeric:boolean;
Begin
   If editXSearch.text<>'' then
   begin
     ss:=editxsearch.text;
     len:=length(editxsearch.text);
     IsNumeric:=true;
     For i:=1 to len do
     begin
       copy(ss,i,1);
       if (ss>'9') or (ss<'0') then
       begin
         isnumeric:=false;
         break;
       End;
     End;
   End;
   if editXsearch.Text<>'' then
   begin
     With QueryInpatientSearch do
     begin
       close;
       sql[9]:='';
       sql[9]:='And((InptDate like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+'or(Fname like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+
               'or(Mname like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+'or(Lname like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+
               'or(F_name like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+'or(L_name like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+
               'or(Gender like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')'+'or(AgeType like'+chr(39)+'%'+EditXsearch.Text+'%'+chr(39)+')';
       if isNumeric=true then
       sql[9]:=sql[9]+'or (PatientID='+EditXsearch.Text+')'+'or (InPatientID='+EditXsearch.Text+')';
       sql[9]:=sql[9]+')';
       open;
    end;
   end
   else
    begin
      QueryInpatientSearch.close;
      QueryInpatientSearch.SQL[9]:='';
      QueryInpatientSearch.open;
    end;
End;

Procedure TFormInpMain.setquerytoselection(ISNumeric:Boolean);
var mainstr:string;
Begin
    //mainstr:='(';
   IF ISNumeric=True then
   Begin
     if EditFName.Text<>'' then mainstr:=mainstr+'(PM.PatientId='+EditPatientId.Text+') AND (IPR.PatientId='+EditInpatientId.Text+')';
     With QueryInpatientSearch do
     begin
       close;
       SQL[11]:='';
       SQL[9]:='';
       SQL[9]:=mainstr;
       //sql.savetofile('C:\setquerytoselection.txt');
       open;
     End;
     //if EditInpatient.Text<>'' then mainstr:=mainstr+'And (InPatientID='+EditInpatient.Text+')';
   End
   Else
   Begin
     if EditPatientId.text<>'' then
     Begin
      mainstr:=mainstr+'And(PM.PatientId ='+EditPatientId.Text+')';
     End
     Else
     Begin
      if EditIPDate.text<>'' then mainstr:=mainstr+'And(IPR.InptDate like'+chr(39)+EditIPDate.Text+'%'+chr(39)+')';
      if EditDisDate.text<>'' then mainstr:=mainstr+'And(IPR.DisDate like'+chr(39)+EditDisDate.Text+'%'+chr(39)+')';
      if EditWardRoom.Text<>'' then mainstr:=mainstr+'And (IPD.WardCode Like'+chr(39)+EditWardRoom.Text+'%'+chr(39)+')';
      if EditFName.Text<>'' then  mainstr:=mainstr+'And(PM.Fname like'+chr(39)+EditFName.Text+'%'+chr(39)+')';
      if EditLName.Text<>'' then  mainstr:=mainstr+'And(PM.Lname like'+chr(39)+EditLName.Text+'%'+chr(39)+')';
      if EditDoctor.Text<>'' then  mainstr:=mainstr+'And(DOC.F_name like'+chr(39)+EditDoctor.Text+'%'+chr(39)+')';
      //if EditGender.Text<>'' then  mainstr:=mainstr+'And(PM.Gender like'+chr(39)+EditGender.Text+'%'+chr(39)+')';
      if EditAgeSex.Text<>'' then  mainstr:=mainstr+'And(PM.AgeSex like'+chr(39)+EditAgeSex.Text+'%'+chr(39)+')';
     End;
     // if Editage.Text<>'' then mainstr:=mainstr+'And (age='+Editage.Text+')';
     //mainstr:=mainstr+')';
     With QueryInpatientSearch do
     begin
       close;
       SQL[11]:='';
       SQL[11]:=mainstr+ 'AND (IPR.doccode = Doc.DocCode)AND (IPR.depcode = Dep.DepCode)';
       if RadioButtonAdmit.Checked then
        SQL[12]:='AND(IPR.Discharged=''NO'')'
       Else if RadioButtonDischargedOnly.Checked then
        SQL[12]:='AND(IPR.Discharged=''YES'')'
       Else
        SQL[12]:='AND(39=39)';
       //sql.savetofile('C:\setquerytoselection.txt');
       open;
     End;
   End;
End;

Procedure TFormInpMain.ZeroPosition;
Begin
      Countno:=NBillNo;
      if Countno<10 then
        ZeroAmt:='000000'
      Else if Countno<100 then
        ZeroAmt:='00000'
      Else if Countno<1000 then
        ZeroAmt:='0000'
      Else if Countno<10000 then
        ZeroAmt:='000'
      Else if Countno<100000 then
        ZeroAmt:='00'
      Else if Countno<1000000 then
        ZeroAmt:='0'
      Else if Countno<10000000 then
        ZeroAmt:='';
End;

Procedure TFormInpMain.TableCreatePatientTest;
begin
     IF TablePTTestTemp.Active Then TablePTTestTemp.Active:=False;
     With TablePTTestTemp do
     begin
          databasename:=gs_TempPath;
          tablename:='PatientTestTemp.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          Fielddefs.add('BilldetailID',ftInteger);
          Fielddefs.add('PatientID',ftInteger);
          Fielddefs.add('DepID',ftInteger);
          Fielddefs.add('TestNameID',ftInteger);
          Fielddefs.add('Qty',ftFloat);
          Fielddefs.add('CurQty',ftFloat);
          Fielddefs.add('OrgQty',ftFloat); // For Refund Case It is used
          Fielddefs.add('PatientTestID',ftInteger);
          Fielddefs.add('DepCode',ftString,25);
          Fielddefs.add('DocCode',ftString,25);
          Fielddefs.add('TestNameCode',ftString,25);
          Fielddefs.add('TestDate',ftString,10);
          Fielddefs.add('TestName',ftString,50);
          Fielddefs.add('TestPrice',ftfloat);
          Fielddefs.add('DisPer',ftfloat);
          Fielddefs.add('OldDisPer',ftfloat);
          Fielddefs.add('Discount',ftfloat);
          Fielddefs.add('OldDiscount',ftfloat);
          Fielddefs.add('Total',ftfloat);
          Fielddefs.add('VatAmt',ftfloat);
          Fielddefs.add('CurVatAmt',ftfloat);
          Fielddefs.add('CostPrice',FtFloat);
          Fielddefs.add('PayStatus',ftstring,25);
          Fielddefs.add('Special',ftstring,25);
          Fielddefs.add('WorkingStatus',ftstring,25);
          Fielddefs.add('IsDiscountable',ftstring,1);
          Fielddefs.add('IsOperational',ftstring,1);
          Fielddefs.add('IsVatable',ftstring,1);
          Fielddefs.add('PreBillDetailId',ftFloat);
          Fielddefs.add('IsFractionableItem',ftstring,1);
          Fielddefs.add('LineEdit',ftstring,1);
          Fielddefs.add('RefBillNo',ftstring,16);
          Fielddefs.add('IsAdvanceBill',ftString,1);

          { Pre. Amount In Zero Price, Some Time if Mistake Entry and Correct The Field
          at this time this field value }
          Fielddefs.add('CostPriceForZero',FtFloat);
          Fielddefs.add('IsZeroTestPrice',ftstring,1); // It is used for fraction Posting
          Fielddefs.add('IsTestPriceEditInBill',ftstring,1);

          { For Doctor Fraction }
          Fielddefs.add('BATDFCostPrice',ftfloat); // Before Add Extra Charge Amount During Doctor Fraction
          Fielddefs.add('BATDFVatAmt',ftfloat);// BATDF-Before Add To Doctor Fraction

          Fielddefs.add('IsPackageTest',ftstring,1);

          createtable;
     End;
end;

Function TFormInpMain.PatientAddress:String;
Var ls_Address:String;
Begin
   IF QueryNameCP.FieldByName('DistrictName').AsString<>' ' Then
   ls_Address:=QueryNameCP.FieldByName('DistrictName').AsString;
   IF QueryNameCP.FieldByName('VdcName').AsString<>' ' Then
   Begin
      IF ls_Address<>'' Then
      ls_Address:=ls_Address+','+QueryNameCP.FieldByName('VdcName').AsString
      Else
      ls_Address:=QueryNameCP.FieldByName('VdcName').AsString;
   End;

   IF QueryNameCP.FieldByName('PAddress').AsString<>' ' Then
   Begin
        IF ls_Address<>'' Then
        Begin
           IF UpperCase(QueryNameCP.FieldByName('PAddress').AsString)=UpperCase(QueryNameCP.FieldByName('DistrictName').AsString) Then
           ls_Address:=QueryNameCP.FieldByName('PAddress').AsString
           Else
           ls_Address:=ls_Address+','+QueryNameCP.FieldByName('PAddress').AsString;
        End
        Else
        ls_Address:=ls_Address+','+QueryNameCP.FieldByName('PAddress').AsString;
   End;
   IF ls_Address<>'' Then
   Result:=ls_Address+'-'+IntToStr(QueryNameCP.FieldByName('WardNo').AsInteger)
   Else
   Result:=IntToStr(QueryNameCP.FieldByName('WardNo').AsInteger);
End;


Procedure TFormInpMain.TableCreatePackageTest;
begin
     IF Table_PackageTest.Active Then Table_PackageTest.Active:=False;
     With Table_PackageTest do
     begin
          databasename:=gs_TempPath;
          tablename:='PackageTest.db';
          tableType:=ttDefault;
          FieldDefs.Clear;
          Fielddefs.add('MTestNameCode',ftString,15);
          Fielddefs.add('TestNameCode',ftString,15);
          Fielddefs.add('TestNameID',ftInteger);
          Fielddefs.add('DepID',ftInteger);
          Fielddefs.add('TestPrice',ftfloat);
          Fielddefs.add('Qty',ftFloat);
          Fielddefs.add('DocCode',ftString,25);
          CreateTable;
          Close;
          EmptyTable;
          Open;
     End;
end;

procedure TFormInpMain.OpenBedAssign;
Begin
  With QueryAllOverManage Do
  Begin
    Close;
    sql.Clear;
    sql.add(' Select W.WardName,RT.RoomType,IPD.RoomTypeCode From InpatientDetail IPD,Ward W,RoomType RT');
    sql.add(' where IPD.WardCode=W.WardCode and IPD.RoomTypeCode=RT.RoomTypeCode and ');
    sql.add(' IPD.InpatientDID IN (Select Max(InpatientDID) as InpatientDID From InpatientDetail');
    sql.add(' where InpatientId='+IntToStr(QueryInpatientSearch.FieldByName('InPatientId').AsInteger)+')');
    Open;
    //FormGroupTransact.GRoomType:=FieldByName('RoomTypeCode').AsString;
    //FormGroupTransact.GRoom:=FieldByName('Room').AsString;
    //FormGroupTransact.GBedNo:=FieldByName('BedCode').AsString;
    FormGroupTransact.GWard:=FieldByName('WardName').AsString;
    FormGroupTransact.GRoomType:=FieldByName('RoomType').AsString;
    FormGroupTransact.ps_RateType:=FieldByName('RoomTypeCode').AsString;
    FormGroupTransact.ps_InptDate:=QueryInpatientSearch.FieldByName('InptDate').AsString;
    Close;
    //FormGroupTransact.GBedNo:=FieldByName('BedCode').AsString;
  End;
End;

procedure TFormInpMain.UserVerification;
Begin
//     b_InchVerified:=False;
//     Form_InchargeVerification:=TForm_InchargeVerification.Create(Self);
//     with Form_InchargeVerification do
//     Begin
//          Try
//             Showmodal;
//          Finally
//             Free;
//          End;
//     End;
End;

Procedure TFormInpMain.QueryInpatientSearchInitialization;
var li_NoofRecord:Integer;
    tem_Date:String;
begin
     GroupBoxDischargeStatus.Visible:=False;
     Timer2.Enabled:=False;
     IF EditDay.Text='' Then
     EditDay.Text:='0';
     DateEditX_TodayIPView.SystemOfDate:=gi_DateSystem;
     With QueryInpatientSearch do
     begin
          close;
          sql.clear;
          {sql.Add(' SELECT Distinct PM.FName,PM.LName,PM.Title,PM.MaritalStatus,IPR.MemberNo,PM.HealthCareNo,PM.HealthExamNo,PM.Age,PM.Gender,PM.IsInpatient,PM.AgeType,PM.DistrictId,');
          sql.Add(' (Select InTime From InpatientDetail where InpatientDID In (Select Min(InpatientDID) From InpatientDetail where InpatientId=IPR.INPATIENTID)) as InTime,PM.PAddress,'+Current_AgeSex+',');
          sql.Add(' PM.ISEmergency,PM.CommunityId as PMCommunityId,IPR.DisInDeposit,IPR.DepCode as depdepcode,(Select DepName From');
          sql.Add(' Department where DepCode=IPR.DepCode) as DepName,IPR.InPatientId as InpatientID,IPR.PatientId,');
          sql.Add(' Cast(IPR.InPatientId as Varchar(8)) as InpatientIdStr,Cast(IPR.PatientId as Varchar(8)) ');
          sql.Add(' as PatientIdStr, (IPD.WardCode||''/ ''||IPD.RoomTypeCode||'' /  ''||IPD.BedCode) as DetWardCode,IPD.RoomNo,IPR.FileNo,');
          sql.Add(' IPD.RoomTypeCode,IPR.InPTDate, IPR.DepCode as RegDepCode,IPR.ReferBy,IPR.doccode as regdoccode,IPR.TelNo||''/''||IPR.GuardianPhone As Phone,IPR.Guardian,');
          sql.Add(' IPD.BillNo,IPR.Remarks, IPR.Discharged, IPR.DisDate,(Select Desig||'' ''||F_Name||L_Name From Doctor where ');
          sql.Add(' DocCode=IPR.DocCode and rownum=1) as DoctorFullName,IPR.CommunityId,IPR.SchemeId,IPR.PatientType ');}
          sql.Add(' SELECT Distinct PM.FName,PM.LName,PM.Title,PM.MaritalStatus,IPR.MemberNo,PM.HealthCareNo,PM.IsInpatient,PM.AgeType,PM.DistrictId,InitCap(PM.PAddress) PAddress,PM.HealthExamNo,');
          IF RadioButtonDischargedOnly.Checked=True Then
          sql.Add(' (Select InTime From InpatientDetail where InpatientDID In (Select Min(InpatientDID) From InpatientDetail where InpatientId=IPR.INPATIENTID)) as InTime,(PM.CurrentAge||'' ''||SubStr(PM.AgeType,1,1)||'' / ''||SubStr(PM.Gender,1,1)) as AgeSex,')//+Current_AgeSex('DISONLY')+',')
          Else
          sql.Add(' (Select InTime From InpatientDetail where InpatientDID In (Select Min(InpatientDID) From InpatientDetail where InpatientId=IPR.INPATIENTID)) as InTime,(PM.CurrentAge||'' ''||SubStr(PM.AgeType,1,1)||'' / ''||SubStr(PM.Gender,1,1)) as AgeSex,');//+Current_AgeSex('DISONLY')+',')
          sql.Add(' PM.ISEmergency,PM.CommunityId as PMCommunityId,IPR.DisInDeposit,IPR.DepCode as depdepcode,(Select DepName From Department where DepCode=IPR.DepCode) as DepName,IPR.InPatientId as InpatientID,');
          sql.Add(' IPR.PatientId,InitCap(IPR.Guardian) Guardian,InitCap(IPR.Relation) Relation,Telno||Case when Trim(guardianphone) is not null and Trim(guardianphone)<>''-'' Then ''/''||guardianphone ');
          sql.Add(' Else '' '' End as Phone,Cast(IPR.InPatientId as Varchar(8)) as InpatientIdStr,Cast(IPR.PatientId as Varchar(8)) ');
          sql.Add(' as PatientIdStr, (IPD.WardCode||''/ ''||IPD.RoomTypeCode||'' /  ''||IPD.BedCode) as DetWardCode,IPD.RoomNo,IPR.FileNo,');
          sql.Add(' IPD.RoomTypeCode,IPR.InPTDate, IPR.DepCode as RegDepCode,IPR.ReferBy,IPR.doccode as regdoccode,');
          sql.Add(' IPD.BillNo,IPR.Remarks, IPR.Discharged, IPR.DisDate,(Select InitCap(F_Name)||L_Name From Doctor where ');
          sql.Add(' DocCode=IPR.DocCode) as DoctorFullName,IPR.CommunityId,IPR.SchemeId,IPR.PatientType ');
          sql.Add(' FROM PatientMain PM,InpatientReg IPR,Inpatientdetail IPD Where (IPR.PatientId=PM.PatientID) AND ');
          sql.Add(' (IPR.InPatientId=IPD.InPatientId(+)) and IPD.InpatientDID In (Select Max(InpatientDID)');
          sql.Add(' as InpatientDID From InpatientDetail where InpatientId=IPR.InpatientId)');
          sql.Add(' ');
          IF CheckBoxToday.Checked then
          Begin
               IF gi_HospitalId=19 Then
               sql.add(' And IPR.Discharged=''NO''')
               Else
               sql.Add(' AND IPR.InPTDate='+#39+DateEditX_TodayIPView.Text+#39);
          End
          Else
          Begin
               IF CheckBox_Search.Checked=True Then
               Begin
                    IF RadioButtonAdmit.Checked=True Then
                    Begin
                         sql.Add(' AND IPR.InPTDate>='+#39+DateEditX_From.Text+#39);
                         sql.Add(' AND IPR.InPTDate<='+#39+DateEditX_To.Text+#39);
                         //sql.Add(' AND IPR.DisCharged=''NO''');
                    End Else IF RadioButtonDischargedOnly.Checked=True Then
                    Begin
                         //sql.Add(' AND IPR.DisDate>='+#39+GetFromDateBySubNoOfDays(DateEditX_TodayIPView,StrToInt(EditDay1.Text))+#39);
                         sql.Add(' AND IPR.DisDate>='+#39+DateEditX_From.Text+#39);
                         sql.Add(' AND IPR.DisDate<='+#39+DateEditX_To.Text+#39);
                    End Else
                    Begin
                         sql.Add(' AND ((IPR.InPTDate>='+#39+DateEditX_From.Text+#39);
                         sql.Add(' AND IPR.InPTDate<='+#39+DateEditX_To.Text+#39+')');

                         sql.Add(' Or (IPR.DisDate>='+#39+DateEditX_From.Text+#39);
                         sql.Add(' AND IPR.DisDate<='+#39+DateEditX_To.Text+#39+'))');
                    End;
               End
               Else
               Begin
                    IF (Trim(EditXsearch.Text)='') and (Trim(EditHospitalNo.Text)='') Then
                    Begin
                         IF (RadioButtonDischargedOnly.Checked=True) Then
                         Begin
                              sql.Add(' AND IPR.DisDate>='+#39+GetFromDateBySubNoOfDays(DateEditX_TodayIPView,StrToInt(EditDay.Text))+#39);
                              sql.Add(' AND IPR.DisDate<='+#39+DateEditX_TodayIPView.Text+#39);
                         End Else IF RadioButtonDischarge.Checked=True Then
                         Begin
                              sql.Add(' AND ((IPR.InPTDate>='+#39+GetFromDateBySubNoOfDays(DateEditX_TodayIPView,StrToInt(EditDay.Text))+#39);
                              sql.Add(' AND IPR.InPTDate<='+#39+DateEditX_TodayIPView.Text+#39+')');

                              sql.Add(' Or (IPR.DisDate>='+#39+GetFromDateBySubNoOfDays(DateEditX_TodayIPView,StrToInt(EditDay.Text))+#39);
                              sql.Add(' AND IPR.DisDate<='+#39+DateEditX_TodayIPView.Text+#39+'))');
                         End
                         Else
                         begin
                               tem_Date:=DateEditX_TodayIPView.Text;//VSDateAsText;
                               DateEditX_TodayIPView.ADDateAsDate:=DateEditX_TodayIPView.ADDateAsDate-StrToFloat(EditDay.Text);

                               Sql.Add(' And (IPR.InPTDate Between '+#39+DateEditX_TodayIPView.Text+#39);
                               Sql.Add('                                     And '+#39+tem_Date+#39+') ');
                               DateEditX_TodayIPView.Text:=tem_Date;
                         end;
                    End;
               End;
          End;

          IF CmbDSearch.KeyValue<>Null Then
          sql.ADD('AND PM.DistrictId='+IntToStr(CmbDSearch.KeyValue));
          if DBLookupComboBox_Department.KeyValue<> NULL then
          sql.Add(' AND IPR.depcode='+#39+DBLookupComboBox_Department.KeyValue+#39);
          if DBLookupComboBox_Ward.KeyValue<>NULL then
          sql.Add(' AND IPD.WardCode='+#39+DBLookupComboBox_Ward.KeyValue+#39);
          if DBLookupComboBox_Bed.KeyValue<>NULL then
          sql.Add(' AND IPD.RoomNo='+#39+IntToStr(DBLookupComboBox_Bed.KeyValue)+#39);
          mainstr:='';

          IF RadioButtonAdmit.Checked Then
          Begin
               sql.add('AND IPR.Discharged=''NO''');
               IF Trim(EditXsearch.Text)<>'' Then
               sql[12]:=' And IPR.InpatientId='+EditXsearch.Text
               Else IF Trim(EditHospitalNo.Text)<>'' Then
               Begin
                    sql.ADD(' And IPR.PatientId=:PatientId');
                    ParamByName('PatientId').AsString:=EditHospitalNo.Text;
               End
               Else
               Begin
                    If (EditFName.Text)='' then
                    Begin
                         if EditIPDate.text<>'' then mainstr:=mainstr+'And(IPR.InPTDate like'+chr(39)+EditIPDate.Text+'%'+chr(39)+')';
                         if EditDisDate.text<>'' then mainstr:=mainstr+'And(IPR.InPTDate like'+chr(39)+EditDisDate.Text+'%'+chr(39)+')';
                         if EditFName.Text<>'' then  mainstr:=mainstr+'And(PM.Fname like'+chr(39)+EditFName.Text+'%'+chr(39)+')';
                         if EditLName.Text<>'' then  mainstr:=mainstr+'And(PM.Lname like'+chr(39)+EditLName.Text+'%'+chr(39)+')';
                         //if EditGender.Text<>'' then  mainstr:=mainstr+'And(PM.Gender like'+chr(39)+EditGender.Text+'%'+chr(39)+')';
                         if EditAgeSex.Text<>'' then  mainstr:=mainstr+'And(PM.AgeSex like'+chr(39)+EditAgeSex.Text+'%'+chr(39)+')';
                         if EditDoctor.Text<>'' then  mainstr:=mainstr+'And(PM.Paddress like'+chr(39)+EditDoctor.Text+'%'+chr(39)+')';
                         sql.ADD(mainstr);
                    End
                    Else
                    sql.ADD(' And PM.PatientID='+EditFName.Text);
               End;
          End
          Else IF RadioButtonDischargedOnly.Checked then
          Begin
               sql.add(' AND(IPR.Discharged=''YES'')');
               IF Trim(EditXsearch.Text)<>'' Then
               sql[12]:=' And IPR.InpatientId='+EditXsearch.Text
               Else IF Trim(EditHospitalNo.Text)<>'' Then
               Begin
                    sql.ADD(' And IPR.PatientId=:PatientId');
                    ParamByName('PatientId').AsInteger:=StrToInt(EditHospitalNo.Text);
               End
               Else
               Begin
                    If (EditFName.Text)='' then
                    Begin
                         if EditIPDate.text<>'' then mainstr:=mainstr+'And(IPR.InPTDate like'+chr(39)+EditIPDate.Text+'%'+chr(39)+')';
                         if EditDisDate.text<>'' then mainstr:=mainstr+'And(IPR.DisDate like'+chr(39)+EditDisDate.Text+'%'+chr(39)+')';
                         if EditFName.Text<>'' then  mainstr:=mainstr+'And(PM.Fname like'+chr(39)+EditFName.Text+'%'+chr(39)+')';
                         if EditLName.Text<>'' then  mainstr:=mainstr+'And(PM.Lname like'+chr(39)+EditLName.Text+'%'+chr(39)+')';
                         //if EditGender.Text<>'' then  mainstr:=mainstr+'And(PM.Gender like'+chr(39)+EditGender.Text+'%'+chr(39)+')';
                         if EditAgeSex.Text<>'' then  mainstr:=mainstr+'And(PM.AgeSex like'+chr(39)+EditAgeSex.Text+'%'+chr(39)+')';
                         if EditDoctor.Text<>'' then  mainstr:=mainstr+'And(PM.Paddress like'+chr(39)+EditDoctor.Text+'%'+chr(39)+')';
                         sql.ADD(mainstr);
                    End
                    Else
                    sql.ADD('And PM.PatientID='+EditFName.Text);
               End;
          End
          Else
          Begin
               IF Trim(EditXsearch.Text)<>'' Then
               sql[12]:=' And IPR.InpatientId='+EditXsearch.Text
               Else IF Trim(EditHospitalNo.Text)<>'' Then
               Begin
                    sql.ADD(' And IPR.PatientId=:PatientId');
                    ParamByName('PatientId').AsInteger:=StrToInt(EditHospitalNo.Text);
               End
               Else
               Begin
                    IF (EditFName.Text)='' then
                    Begin
                         IF EditIPDate.text<>'' then mainstr:=mainstr+'And(IPR.InPTDate like'+chr(39)+EditIPDate.Text+'%'+chr(39)+')';
                         if EditDisDate.text<>'' then mainstr:=mainstr+'And(IPR.DisDate like'+chr(39)+EditDisDate.Text+'%'+chr(39)+')';
                         if EditFName.Text<>'' then  mainstr:=mainstr+'And(PM.Fname like'+chr(39)+EditFName.Text+'%'+chr(39)+')';
                         if EditLName.Text<>'' then  mainstr:=mainstr+'And(PM.Lname like'+chr(39)+EditLName.Text+'%'+chr(39)+')';
                         //if EditGender.Text<>'' then  mainstr:=mainstr+'And(PM.Gender like'+chr(39)+EditGender.Text+'%'+chr(39)+')';
                         if EditAgeSex.Text<>'' then  mainstr:=mainstr+'And(PM.AgeSex like'+chr(39)+EditAgeSex.Text+'%'+chr(39)+')';
                         if EditDoctor.Text<>'' then  mainstr:=mainstr+'And(PM.Paddress like'+chr(39)+EditDoctor.Text+'%'+chr(39)+')';
                         sql.ADD(mainstr);
                    End
                    Else
                    sql.ADD('And PM.PatientID='+EditFName.Text);
               End;
          End;
          sql.ADD(' Order By IPR.InpatientId Desc');

          {IF RadioButtonDischargedOnly.Checked=False Then
          Begin
               IF (CheckBoxToday.Checked) or (RadioButtonAdmit.Checked=True) then
               ParamByName('DateStr').AsString:=DateEditX_TodayIPView.Text
               Else
               Begin
                    IF CheckBox_Search.Checked=False Then
                    ParamByName('DateStr').AsString:=GetFromDateBySubNoOfDays(DateEditX_TodayIPView,StrToInt(EditDay.Text))
                    Else
                    ParamByName('DateStr').AsString:=DateEditX_From.Text;
               End;
          End;}
          SQL.savetofile('C:\setquerytoselection.txt');
          Open;
     End;
     li_NoofRecord:=QueryInpatientSearch.RecordCount;
     Timer2.Enabled:=False;

     IF li_NoofRecord <=0  Then
     Begin
          Label_DischargeStatus.Caption:='Patient is not admitted with this no.';
          Label_DischargeStatus.Visible:=True;
          GroupBoxDischargeStatus.Visible:=True;
          Timer2.Enabled:=True;
          Exit;
     End;

     IF QueryInpatientSearch.FieldByName('Discharged').AsString<>'NO'  Then
     Begin
          IF (Trim(EditXsearch.Text)<>'') or (Trim(EditHospitalNo.Text)<>'') Then
          Begin
               With Query_Process Do
               Begin
                    Close;
                    sql.Clear;
                    sql.add(' Select Discharged,DisDate,DisInDeposit,DisInDepositDate,Remarks From InpatientReg Where ');
                    IF Trim(EditXsearch.Text)<>'' Then
                    sql.add(' InpatientId='+EditXsearch.Text)
                    Else IF Trim(EditHospitalNo.Text)<>'' Then
                    sql.add(' PatientId='+EditHospitalNo.Text);
                    sql.add(' Order By InpatientId Desc ');
                    Open;
                    First;
               End;

               IF Query_Process.FieldByName('Discharged').AsString='YES' Then
               Begin
                    Label_DischargeStatus.Caption:='Patient Already Discharged In Date      '+Query_Process.FieldByName('DisDate').AsString;
                    Label_DischargeStatus.Visible:=True;
                    GroupBoxDischargeStatus.Visible:=True;
                    Timer2.Enabled:=True;
               End  { These below case are sp. for OM Hos}
               Else IF (Query_Process.FieldByName('Discharged').AsString<>'NO') and (Query_Process.FieldByName('DisInDeposit').AsString='Y') Then
               Begin
                    Label_DischargeStatus.Caption:='Patient Leaves In Deposit On Date '+Query_Process.FieldByName('DisDate').AsString+'. No Final Bill Has Done.';
                    Label_DischargeStatus.Visible:=True;
                    GroupBoxDischargeStatus.Visible:=True;
                    Timer2.Enabled:=True;
               End { Some Bill Had Made Manually at the time of system start despite of admission in system .}
               Else IF (Query_Process.FieldByName('Discharged').AsString='MAN') Then
               Begin
                    Label_DischargeStatus.Caption:='Manually Discharged With '+Query_Process.FieldByName('Remarks').AsString;
                    Label_DischargeStatus.Visible:=True;
                    GroupBoxDischargeStatus.Visible:=True;
                    Timer2.Enabled:=True;
               End;
          End;
     End;
     StatusBar1.Panels[0].Width:=100;
     StatusBar1.Panels[0].Text:='     Record No :- '+IntToStr(li_NoofRecord);
end;


end.
