unit Unit_BloodBagRefund;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids,
  DBCtrls, ServerDate, OleCtrls, DateEditXControl_TLB, Fxn, Dm, Unit_QrCommrefSlip_Manipal;

type
  TForm_BloodBagRefund = class(TForm)
    PC_CommunityRefundEntry: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Comunity: TLabel;
    Label6: TLabel;
    LabelName: TLabel;
    Edit_InpatientNo: TEdit;
    EditRemarks: TEdit;
    CmbCommunity: TDBLookupComboBox;
    StatusBar1: TStatusBar;
    QueryIPInfo: TOraQuery;
    QueryProcess: TOraQuery;
    Query_Community: TOraQuery;
    DataSource_Community: TDataSource;
    QueryOPInfo: TOraQuery;
    RadioButton_OPBilling: TRadioButton;
    RadioButton_IPBilling: TRadioButton;
    Label4: TLabel;
    EditRefAmount: TEdit;
    Label5: TLabel;
    DateEditXRefundDate: TDateEditX;
    BitBtnDate: TBitBtn;
    Label_BillingStatus: TLabel;
    CheckBox_Preview: TCheckBox;
    QueryName: TOraQuery;
    QueryNameNAME: TStringField;
    QueryNamePATIENTID: TFloatField;
    QueryNamePADDRESS: TStringField;
    QueryNameDISTRICTNAME: TStringField;
    QueryNameDEPCODE: TStringField;
    QueryNameVDCNAME: TStringField;
    QueryNameREMARKS: TStringField;
    QueryNameMEMBERNO: TStringField;
    QueryNameWARDNO: TFloatField;
    QueryNameINPATIENTID: TFloatField;
    QueryNameAGESEX: TStringField;
    QueryDetail: TOraQuery;
    QueryCurrIPDep: TOraQuery;
    Timer1: TTimer;
    LabelDisStatus: TLabel;
    Table_BedCharge: TOraTable;
    Query_GetBedCharge: TOraQuery;
    Query_TempProcess: TOraQuery;
    PC_CommunityRefundList: TPageControl;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape1: TShape;
    Shape5: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Label29: TLabel;
    EditPatientID: TEdit;
    EditDay: TEdit;
    UpDown2: TUpDown;
    DEX_Today: TDateEditX;
    Btn_Today: TButton;
    DateEditX_To: TDateEditX;
    DateEditX_From: TDateEditX;
    Btn_From: TButton;
    Btn_To: TButton;
    CheckBox_Search: TCheckBox;
    BB_Refresh: TBitBtn;
    Panel3: TPanel;
    Label_DisplayInfo: TLabel;
    BB_Close: TBitBtn;
    BB_Save: TBitBtn;
    BB_New: TBitBtn;
    Label14: TLabel;
    Edit_HospitalNo: TEdit;
    DBGrid1: TDBGrid;
    Query_RefundList: TOraQuery;
    DS_List: TDataSource;
    BB_RePrintBill: TBitBtn;
    procedure RadioButton_OPBillingClick(Sender: TObject);
    procedure RadioButton_IPBillingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure FormRefresh;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_InpatientNoExit(Sender: TObject);
    procedure Edit_InpatientNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_InpatientNoKeyPress(Sender: TObject; var Key: Char);
    procedure CmbCommunityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPreBillNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditRemarksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRefAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnDateClick(Sender: TObject);
    Function PatientAddress:String;
    procedure FormCreate(Sender: TObject);
    //procedure AlternateBillPrint(PatientId:Integer; BillNo :String);
    procedure EditRefAmountKeyPress(Sender: TObject; var Key: Char);
    procedure DisplayRefundBillingReport(BPatient:Integer;YourBillNo:String);
    procedure Timer1Timer(Sender: TObject);
    procedure CmbCommunityKeyPress(Sender: TObject; var Key: Char);
    procedure CalculationOfTobeRefundAmount;
    procedure EditRefAmountExit(Sender: TObject);
    Function GetBedCharge(InPatientId:LongInt):Double;
    procedure CreateTableBedCharge;
    Function GetTotalDays(InptDate,OutDate:String):Integer;
    procedure FormDestroy(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    Function GetNextBillNo1(BILLTYPE, TableName, FieldName: String): String;
    procedure Edit_HospitalNoExit(Sender: TObject);
    procedure Edit_HospitalNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure BB_RefreshClick(Sender: TObject);
    procedure BB_RePrintBillClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);

  private
    { Private declarations }
  public
      pi_PatientId,pi_InPatientId,pi_ClinicalDepId:Integer;
      pi_CommunityId,pi_SchemeId,pi_DepId:Integer;
      ps_TodaysDate,ps_TodaysTime,ps_MyBillNo,ps_RateType:String;
      ps_PayType, ps_BillType,ps_MemberNo:String;
      b_Reprint, pb_IsReprint :Boolean;
      pf_MaxAmountRefund:Double;
      DateEditX_In,DateEditX_Out:TDateEditX;

      procedure PrintBill;
    { Public declarations }
  end;

var
  Form_BloodBagRefund: TForm_BloodBagRefund;

implementation


{$R *.DFM}

procedure TForm_BloodBagRefund.RadioButton_OPBillingClick(Sender: TObject);
begin
(*   IF RadioButton_OPBilling.Checked=True Then
   Begin
      RadioButton_IPBilling.Font.Color:=clBlack;
      RadioButton_OPBilling.Font.Color:=clRed;
      Label1.Caption:='Hospital No.';
      //Label7.Visible:=False;
      //Label8.Visible:=False;
      Label_BillingStatus.Caption:='OP';
      Edit_HospitalNo.SetFocus;
   End;*)
end;

procedure TForm_BloodBagRefund.RadioButton_IPBillingClick(Sender: TObject);
begin
(*   IF RadioButton_IPBilling.Checked=True Then
   Begin
      RadioButton_OPBilling.Font.Color:=clBlack;
      RadioButton_IPBilling.Font.Color:=clRed;
      Label1.Caption:='Inpatient No.';
      //Label7.Visible:=True;
      //Label8.Visible:=True;
      Label_BillingStatus.Caption:='IP';
      //Label8.Caption:='?????';
      Edit_InpatientNo.SetFocus;
   End;*)
end;

procedure TForm_BloodBagRefund.FormShow(Sender: TObject);
begin
     DateEditXRefundDate.SystemOfDate:=gi_DateSystem;
     ChangeCaption(BitBtnDate);
     DateEditXRefundDate.Text:=ServerDate.TodaysDate;


     DateEditX_From.SystemofDate:=gi_datesystem;
     DateEditX_From.Text:=TodaysDate;

     DateEditX_To.SystemofDate:=gi_datesystem;
     DateEditX_To.Text:=TodaysDate;

     BB_Save.Enabled:=False;


     Query_Community.Open;
        FormRefresh;
end;

Procedure TForm_BloodBagRefund.FormRefresh;
Begin
   Edit_HospitalNo.SetFocus;
   Edit_HospitalNo.Text:='';

   Edit_InpatientNo.Text:='';

   RadioButton_IPBilling.Checked:=True;
   RadioButton_IPBilling.Font.Color:=clRed;
   LabelName.Caption:='??????';
   //Label8.Caption:='??????';
   CmbCommunity.KeyValue:=-1;
   EditRemarks.Text:='';
   EditRefAmount.Text:='';
   Label_BillingStatus.Caption:='IP';
End;

procedure TForm_BloodBagRefund.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF key=27 Then Close;
   IF key=VK_F12 Then BB_SaveClick(Sender);

   IF (key=13) and (ActiveControl=DateEditXRefundDate) Then
   Edit_HospitalNo.SetFocus;

   IF key=VK_F1 Then
   RadioButton_IPBilling.Checked:=True;
   IF key=VK_F2 Then
   RadioButton_OPBilling.Checked:=True;
   IF key=VK_F3 Then
   CheckBox_Preview.Checked:=Not (CheckBox_Preview.Checked);
end;

procedure TForm_BloodBagRefund.Edit_HospitalNoExit(Sender: TObject);
begin
      (*IF (RadioButton_OPBilling.Checked) and (Edit_HospitalNo.Text='') Then
      Begin
          MessageDlg('Please put hospital no for OP Community Refund.',mtwarning,[mbok],0);
          Edit_HospitalNo.SetFocus;
          Exit;
      End;


      IF (RadioButton_IPBilling.Checked) and (Edit_InpatientNo.Text='') Then
      Begin
          MessageDlg('Please put hospital no for OP Community Refund.',mtwarning,[mbok],0);
          Edit_InpatientNo.SetFocus;
          Exit;
      End;*)



end;

procedure TForm_BloodBagRefund.Edit_HospitalNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   Begin
            IF RadioButton_OPBilling.Checked Then
      Begin
         if Edit_HospitalNo.Text='' then
         Begin
            MessageDlg('Please put hospital no for OP Community Refund',mtWarning,[mbok],0);
            Edit_HospitalNo.SetFocus;
            Exit;
         End;


         With QueryOPInfo do
         Begin
            Close;
            sql.clear;
            sql.add(' Select PAMA_PatientId PatientId,PAMA_Title||'' ''||PAMA_FName||'' ''||PAMA_LName as Name,');
            sql.add(' PAMA_MemberNo MemberNo From HS_PAMA_PatientMain where PAMA_PatientId='+Edit_HospitalNo.Text);
            Open;
         End;

         if QueryOPInfo.FieldByname('Patientid').AsInteger <=0 then
         Begin
              MessageDlg('No patient exist with this hospital no.',mtwarning,[mbok],0);
              Exit;
         End;


         LabelName.Update;
         LabelName.Caption:=QueryOPInfo.FieldByName('Name').AsString;
         //Label8.Caption:=QueryOPInfo.FieldByName('PatientId').AsString;
         pi_PatientId:=QueryOPInfo.FieldByName('PatientId').AsInteger;
         ps_MemberNo:=QueryOPInfo.FieldByName('MemberNo').AsString;
         pi_InPatientId:=0;
         gi_PatientID:=QueryOPInfo.FieldByName('PatientId').AsInteger;
         with QueryProcess do
         Begin
            Close;
            sql.Clear;
            sql.add(' Select PAVI_DEPCODE From HS_PAVI_PatientVisit where PAVI_PATIENTVISITID In( Select Max(PAVI_PATIENTVISITID) as VisitId');
            sql.add(' From HS_PAVI_PATIENTVISIT where PAVI_PatientId='+Edit_HospitalNo.Text+')');
            Open;
         End;
         //pi_DepId:=QueryProcess.FieldByName('DepId').AsInteger;
      End
      Else
      Begin
         if Edit_InpatientNo.Text='' then
         Begin
            MessageDlg('Please put IP No for IP Community Refund',mtWarning,[mbok],0);
            Edit_InpatientNo.SetFocus;
            Exit;
         End;

         with QueryCurrIPDep do
         Begin
            Close;
            sql.clear;
            sql.add(' Select DepCode,RoomTypeCode From InpatientDetail where InpatientDID In');
            sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail');
            sql.add(' where InpatientId='+Edit_InpatientNo.Text+')');
            Open;
         End;
         IF QueryCurrIPDep.RecordCount <=0 Then
         Begin
            MessageDlg('Sorry ! Patient is not admitted currently with this hospital no.',mtWarning,[mbok],0);
            Edit_InpatientNo.SetFocus;
            Exit;
         End;
         ps_RateType:=QueryCurrIPDep.FieldBYName('RoomTypeCode').AsString; //GEN,PVT,SPL,FRG
         with QueryIPInfo do
         Begin
            Close;
            ParamByName('InpatientId').AsInteger:=StrToInt(Edit_InpatientNo.Text);
            Open;
         End;
         IF QueryIPInfo.FieldByName('Discharged').AsString='YES' Then
         Begin
            LabelDisStatus.Caption:='Patient is already discharge on Date " '+QueryIPInfo.FieldByName('DisDate').AsString+' "';
            LabelDisStatus.Visible:=True;
            Timer1.Enabled:=True;
            //Exit;
         End
         Else
         Begin
            LabelDisStatus.Visible:=False;
            Timer1.Enabled:=False;
         End;

         Edit_InpatientNo.Text:=IntToStr(QueryIPInfo.FieldByName('InPatientId').AsInteger);

         pi_InPatientId:=QueryIPInfo.FieldByName('InPatientId').AsInteger;
         gi_PatientID:=QueryIPInfo.FieldByName('PatientId').AsInteger;

         LabelName.Caption:=QueryIPInfo.FieldByName('Name').AsString;
         pi_PatientId:=QueryIPInfo.FieldByName('PatientId').AsInteger;
         CmbCommunity.KeyValue:=QueryIPInfo.FieldByName('CommunityId').AsInteger;
         ps_MemberNo:=QueryIPInfo.FieldByName('MemberNo').AsString;
         //pi_DepId:=QueryIPInfo.FieldByName('DepId').AsInteger;
         //Label8.Caption:=IntToStr(QueryIPInfo.FieldByName('PatientId').AsInteger);
         pi_InPatientId:=QueryIPInfo.FieldByName('InPatientId').AsInteger;
         //IF QueryIPInfo.FieldByName('Discharged').AsString<>'YES' Then
         //CalculationOfTobeRefundAmount;
      End;
   //End
   //Else
   //LabelName.Caption:='?????';
      CmbCommunity.SetFocus;
   End;
   IF key=VK_Prior Then DateEditXRefundDate.SetFocus;
end;

procedure TForm_BloodBagRefund.Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key In['0'..'9']) Then Key:=#0;
end;

procedure TForm_BloodBagRefund.Edit_InpatientNoExit(Sender: TObject);
begin
   //IF Trim(Edit_HospitalNo.Text)<>'' Then
   //Begin

end;

procedure TForm_BloodBagRefund.CalculationOfTobeRefundAmount;
Var lf_DepositTotal,lf_TotMedCharge,lf_HospitalCharge:Double;
    lf_BedCharge,lf_CommunityRef:Double;
Begin
   { Net Hospital Charge }
   with QueryProcess do
   Begin
      Close;
      sql.Clear;
      sql.Add(' Select Sum(((Qty*Amount)+VatAmt)-(Qty*Amount*Dis/100)) as NetAmt ');
      sql.add(' From BillDetail where InpatientId='+Edit_HospitalNo.Text);
      sql.Add(' and (BillType=''IP'' or BillType=''A'') and CancelStatus=''N''');
      Open;
   End;
   lf_HospitalCharge:=QueryProcess.FieldByName('NetAmt').AsFloat;

   { Net Medicine Amount }
   //lf_TotMedCharge:=GetNetMedicineCharge(StrToInt(Edit_HospitalNo.Text));

   { Bed Charge }
   lf_BedCharge:=GetBedCharge(StrToInt(Edit_HospitalNo.Text));

   { Deposit }
   With QueryProcess do
   Begin
      Close;
      sql.Clear;
      sql.add(' Select Sum(CR) as DepositAmt From IPDeposit where ');
      sql.add(' InpatientId='+Edit_HospitalNo.Text);
      Open;
   End;
   lf_DepositTotal:=QueryProcess.FieldByName('DepositAmt').AsFloat;

   { community refund }
   With QueryProcess do
   Begin
      Close;                                  
      sql.Clear;
      sql.add(' Select Sum(Amount) as RefundAmt From CommunityRefund where ');
      sql.add(' InpatientId='+Edit_HospitalNo.Text);
      Open;
   End;
   lf_CommunityRef:=QueryProcess.FieldByName('RefundAmt').AsFloat;

   IF lf_DepositTotal >= (lf_HospitalCharge+lf_TotMedCharge+lf_BedCharge) Then
   Begin
      pf_MaxAmountRefund:=(lf_HospitalCharge+lf_TotMedCharge+lf_BedCharge)-lf_CommunityRef;
      EditRefAmount.Text:=FloatToStr(pf_MaxAmountRefund);
   End
   Else
   Begin
      pf_MaxAmountRefund:=(lf_HospitalCharge+lf_TotMedCharge+lf_BedCharge)-(lf_DepositTotal+lf_CommunityRef);
      EditRefAmount.Text:=FloatToStr(pf_MaxAmountRefund);
   End;
End;

Function TForm_BloodBagRefund.GetBedCharge(InPatientId:LongInt):Double;
var lf_DisAmt,lf_TotAmt,lf_BedCharge,lf_DisPer:Double;
    ls_CurrentDate:String;
    i,li_NoOfDays:Integer;
Begin
   with Query_GetBedCharge do
   Begin
      Close;
      ParamByName('InptId').AsInteger:=InPatientId;
      open;
   End;

   CreateTableBedCharge;
   Table_BedCharge.DatabaseName:=gs_TempPath;
   Table_BedCharge.Close;
   Table_BedCharge.Exclusive:=True;
   Table_BedCharge.EmptyTable;
   Table_BedCharge.Open;
   Query_GetBedCharge.First;
   i:=0;
   while not Query_GetBedCharge.EOF do
   Begin
      i:=i+1;
      ls_CurrentDate:=Query_GetBedCharge.FieldByName('OutDate').AsString;
      IF ls_CurrentDate='C' Then {*** C- means at Current....}
      ls_CurrentDate:=ServerDate.TodaysDate;
      li_NoOfDays:=GetTotalDays(Query_GetBedCharge.FieldByName('InptDate').AsString,ls_CurrentDate);

      Table_BedCharge.Append;
      Table_BedCharge.FieldByName('RoomType').AsString:=Query_GetBedCharge.FieldByName('RoomType').AsString;

      Table_BedCharge.FieldByName('Rate').AsFloat:=Query_GetBedCharge.FieldByName('BedCharge').AsFloat;
      lf_DisPer:=Query_GetBedCharge.FieldByName('DisPer').AsFloat;
      IF (li_NoOfDays=0) and (i=1) Then {*** except GENERAL patient that bed charge will be charged from inpatient date but in case of general it is charged after complete 1 days}
      Begin
         lf_TotAmt:=Query_GetBedCharge.FieldByName('BedCharge').AsFloat * 1;
         Table_BedCharge.FieldByName('TotalDays').AsInteger:=1;
      End
      Else
      Begin
         lf_TotAmt:=Query_GetBedCharge.FieldByName('BedCharge').AsFloat * li_NoOfDays;
         Table_BedCharge.FieldByName('TotalDays').AsInteger:=li_NoOfDays;
      End;
      Table_BedCharge.FieldByName('Total').AsFloat:=StrToFloat(Format('%.2f',[lf_TotAmt]));
      lf_DisAmt:=lf_TotAmt * (lf_DisPer/100);
      IF Gs_TaxRule='TAD' Then
      Table_BedCharge.FieldByName('TaxAmt').AsFloat:=((lf_TotAmt-lf_DisAmt)*gf_TaxPercent/100)
      Else
      Table_BedCharge.FieldByName('TaxAmt').AsFloat:=(lf_TotAmt*gf_TaxPercent/100);

      Table_BedCharge.FieldByName('Discount').AsFloat:=StrToFloat(Format('%.2f',[lf_DisAmt]));
      Table_BedCharge.FieldByName('DisPer').AsFloat:=Query_GetBedCharge.FieldByName('DisPer').AsFloat;
      Table_BedCharge.FieldByName('NetTotal').AsFloat:=StrToFloat(Format('%.2f',[lf_TotAmt - lf_DisAmt]));
      Table_BedCharge.Post;
      Query_GetBedCharge.Next;
   End;

   With Query_TempProcess do
   Begin
      DatabaseName:=gs_TempPath;
      Close;
      sql.Clear;
      sql.add(' Select Sum(Total+TaxAmt-Discount) as Total From BedChargeFrmRP.db');
      Open;
   End;
   Result:=Query_TempProcess.FieldByName('Total').AsFloat;
End;

Function TForm_BloodBagRefund.GetTotalDays(InptDate,OutDate:String):Integer;
Begin
  DateEditX_In.SystemOfDate:=gi_DateSystem;
  DateEditX_In.text:=InptDate;
  DateEditX_Out.SystemOfDate:=gi_DateSystem;
  DateEditX_Out.text:=OutDate;
  Result:=DateEditX_Out.VSDateAsDays-DateEditX_In.VSDateAsDays;
End;


procedure TForm_BloodBagRefund.CreateTableBedCharge;
begin
  IF FileExists(gs_TempPath+'\BedChargeFrmRP.db') Then DeleteFile(gs_TempPath+'\BedChargeFrmRP.db');
  with Table_BedCharge do
  Begin
    Close;
    Databasename:=gs_TempPath;
    Exclusive:=False;
    Tablename:='BedChargeFrmRP.db';
    tableType:=ttDefault;
    FieldDefs.Clear;
    Fielddefs.add('RoomType',FtString,30);
    Fielddefs.add('TotalDays',ftInteger);
    Fielddefs.add('TaxAmt',ftFloat);
    Fielddefs.add('Rate',ftFloat);
    Fielddefs.add('Total',ftFloat);
    Fielddefs.add('Discount',ftFloat);
    Fielddefs.add('DisPer',ftFloat);
    Fielddefs.add('NetTotal',ftFloat);
    createtable;
  End;
end;

procedure TForm_BloodBagRefund.Edit_InpatientNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then
   Begin
      IF (RadioButton_OPBilling.Checked) and (Edit_HospitalNo.Text='') Then
      Begin
          MessageDlg('Please put hospital no for OP Community Refund.',mtwarning,[mbok],0);
          Edit_HospitalNo.SetFocus;
          Exit;
      End;


      IF (RadioButton_IPBilling.Checked) and (Edit_InpatientNo.Text='') Then
      Begin
          MessageDlg('Please put hospital no for OP Community Refund.',mtwarning,[mbok],0);
          Edit_InpatientNo.SetFocus;
          Exit;
      End;


      IF RadioButton_OPBilling.Checked Then
      Begin
         if Edit_HospitalNo.Text='' then
         Begin
            MessageDlg('Please put hospital no for OP Community Refund',mtWarning,[mbok],0);
            Edit_HospitalNo.SetFocus;
            Exit;
         End;

         With QueryOPInfo do
         Begin
            Close;
            sql.clear;
            sql.add(' Select PAMA_PatientId PatientId,PAMA_Title||'' ''||PAMA_FName||'' ''||PAMA_LName as Name,');
            sql.add(' PAMA_MemberNo MemberNo From HS_PAMA_PatientMain where PAMA_PatientId='+Edit_HospitalNo.Text);
            Open;
         End;

         if QueryOPInfo.FieldByname('Patientid').AsInteger <=0 then
         Begin
              MessageDlg('No patient exist with this hospital no.',mtwarning,[mbok],0);
              Exit;
         End;


         LabelName.Update;
         LabelName.Caption:=QueryOPInfo.FieldByName('Name').AsString;
         //Label8.Caption:=QueryOPInfo.FieldByName('PatientId').AsString;
         pi_PatientId:=QueryOPInfo.FieldByName('PatientId').AsInteger;
         ps_MemberNo:=QueryOPInfo.FieldByName('MemberNo').AsString;



         pi_InPatientId:=0;
         gi_PatientID:=QueryOPInfo.FieldByName('PatientId').AsInteger;

         with QueryProcess do
         Begin
            Close;
            sql.Clear;
            sql.add(' Select PAVI_DEPCODE From HS_PAVI_PatientVisit where PAVI_PATIENTVISITID In( Select Max(PAVI_PATIENTVISITID) as VisitId');
            sql.add(' From HS_PAVI_PATIENTVISIT where PAVI_PatientId='+Edit_HospitalNo.Text+')');
            Open;
         End;
         //pi_DepId:=QueryProcess.FieldByName('DepId').AsInteger;
      End
      Else
      Begin
         if Edit_InpatientNo.Text='' then
         Begin
            MessageDlg('Please put IP No for IP Community Refund',mtWarning,[mbok],0);
            Edit_InpatientNo.SetFocus;
            Exit;
         End;

         with QueryCurrIPDep do
         Begin
            Close;
            sql.clear;
            sql.add(' Select DepCode,RoomTypeCode From InpatientDetail where InpatientDID In');
            sql.add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail');
            sql.add(' where InpatientId='+Edit_InpatientNo.Text+')');
            Open;
         End;
         IF QueryCurrIPDep.RecordCount <=0 Then
         Begin
            MessageDlg('Sorry ! Patient is not admitted currently with this hospital no.',mtWarning,[mbok],0);
            Edit_InpatientNo.SetFocus;
            Exit;
         End;
         ps_RateType:=QueryCurrIPDep.FieldBYName('RoomTypeCode').AsString; //GEN,PVT,SPL,FRG
         with QueryIPInfo do
         Begin
            Close;
            ParamByName('InpatientId').AsInteger:=StrToInt(Edit_InpatientNo.Text);
            Open;
         End;
         IF QueryIPInfo.FieldByName('Discharged').AsString='YES' Then
         Begin
            LabelDisStatus.Caption:='Patient is already discharge on Date " '+QueryIPInfo.FieldByName('DisDate').AsString+' "';
            LabelDisStatus.Visible:=True;
            Timer1.Enabled:=True;
            //Exit;
         End
         Else
         Begin
            LabelDisStatus.Visible:=False;
            Timer1.Enabled:=False;
         End;

         Edit_InpatientNo.Text:=IntToStr(QueryIPInfo.FieldByName('InPatientId').AsInteger);

         pi_InPatientId:=QueryIPInfo.FieldByName('InPatientId').AsInteger;
         gi_PatientID:=QueryIPInfo.FieldByName('PatientId').AsInteger;

         LabelName.Caption:=QueryIPInfo.FieldByName('Name').AsString;
         pi_PatientId:=QueryIPInfo.FieldByName('PatientId').AsInteger;
         CmbCommunity.KeyValue:=QueryIPInfo.FieldByName('CommunityId').AsInteger;
         ps_MemberNo:=QueryIPInfo.FieldByName('MemberNo').AsString;
         //pi_DepId:=QueryIPInfo.FieldByName('DepId').AsInteger;
         //Label8.Caption:=IntToStr(QueryIPInfo.FieldByName('PatientId').AsInteger);
         pi_InPatientId:=QueryIPInfo.FieldByName('InPatientId').AsInteger;
         //IF QueryIPInfo.FieldByName('Discharged').AsString<>'YES' Then
         //CalculationOfTobeRefundAmount;
      End;
   //End
   //Else
   //LabelName.Caption:='?????';
      CmbCommunity.SetFocus;
   End;
   IF key=VK_Prior Then Edit_HospitalNo.SetFocus;
end;

procedure TForm_BloodBagRefund.Edit_InpatientNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key In['0'..'9']) Then Key:=#0;
end;

procedure TForm_BloodBagRefund.CmbCommunityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Prior Then Edit_HospitalNo.SetFocus;
   IF key=VK_Delete Then CmbCommunity.KeyValue:=-1;
end;

procedure TForm_BloodBagRefund.EditPreBillNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then EditRefAmount.SetFocus;
   IF key=VK_Prior Then CmbCommunity.SetFocus;
end;

procedure TForm_BloodBagRefund.EditRemarksKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then BB_Save.SetFocus;
   IF key=VK_Prior Then EditRefAmount.SetFocus;
end;

procedure TForm_BloodBagRefund.BB_CloseClick(Sender: TObject);
begin
     if PC_CommunityRefundList.Visible then
     Close;
     PC_CommunityRefundList.Visible:=True;
     PC_CommunityRefundEntry.Visible:=False;
     BB_Save.Enabled:=False;
     BB_New.Enabled:=True;
     BB_RePrintBill.Enabled:=True;
end;

procedure TForm_BloodBagRefund.BB_NewClick(Sender: TObject);
begin
     PC_CommunityRefundList.Visible:=False;
     PC_CommunityRefundEntry.Visible:=True;
     BB_Save.Enabled:=True;
     BB_New.Enabled:=False;
     BB_RePrintBill.Enabled:=False;
end;

procedure TForm_BloodBagRefund.BB_RefreshClick(Sender: TObject);
begin
     DateEditX_From.SystemofDate:=gi_datesystem;
     DateEditX_To.SystemofDate:=gi_datesystem;

     gs_From := DateEditX_From.Text;
     gs_to := DateEditX_To.Text;

     With Query_RefundList do
     begin
          Close;
          sql.Clear;
          sql.add(' Select PatientId,InpatientId,BillNo as RefundReceiptNo,BillDate RefundDate,BillTime RefundTime,');
          sql.add(' Case when BillType=''B'' Then ''OP Refund'' Else ''IP Refund'' End RefundType,Amount,');
          sql.add(' SchemeId,(Select SCHE_Scheme From HS_Sche_Scheme where SCHE_SchemeId=CR.SchemeId) as Scheme,');
          sql.add(' (Select USMA_UserName from HS_USMA_UserMain where USMA_UserId=CR.RefundBy) UserName');
          sql.add(' From CommunityRefund CR');
          sql.add(' where BIllDate>='+#39+gs_From+#39+' and BIllDate <='+#39+gs_to+#39);
          sql.add(' Order by BillNo');
          Open;
     end;
end;

procedure TForm_BloodBagRefund.BB_RePrintBillClick(Sender: TObject);
begin
     pb_IsReprint:=True;
     IF messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then
     Gs_BillNo:=Query_RefundList.FieldByName('RefundReceiptNo').AsString;
     gi_PatientId:=Query_RefundList.FieldByName('PatientId').AsInteger;

     PrintBill;
end;

procedure TForm_BloodBagRefund.BB_SaveClick(Sender: TObject);
var ls_Remarks,ls_Service,ls_BillNo:String;
    li_CMRefundId:Integer;
begin
   IF Trim(Edit_HospitalNo.Text)='' Then
   Begin
      IF RadioButton_OPBilling.Checked Then
      MessageDlg('Plz. put the Hospital No.',mtInformation,[mbok],0)
      Else
      MessageDlg('Plz. put the Inpatient No.',mtInformation,[mbok],0);
      Edit_HospitalNo.SetFocus;
      Exit;
   End;
   IF EditRefAmount.Text='0' Then
   Begin
      MessageDlg('You cannot refund 0 amount.',mtInformation,[mbok],0);
      EditRefAmount.SetFocus;
      Exit;
   End;
   IF Trim(CmbCommunity.Text)='' Then
   Begin
      MessageDlg('Plz. choose community to be refund.',mtInformation,[mbok],0);
      CmbCommunity.SetFocus;
      Exit;
   End;

   IF Trim(EditRemarks.Text)='' Then
   Begin
      MessageDlg('Sorry ! You Must Have To Put Refund Reason.',mtWarning,[mbok],0);
      EditRemarks.SetFocus;
      Exit;   
   End;
   If MessageDlg(' Are you sure to Refund ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes Then
     exit;

   {IF (RadioButton_IPBilling.Checked=True) and (Query_Community.FieldByName('IPTCreditFacility').AsString='N') Then
   Begin
      MessageDlg('For IP Community refund, Community should have credit facility.',mtInformation,[mbok],0);
      CmbCommunity.SetFocus;
      Exit;
   End;

   IF (RadioButton_IPBilling.Checked=True) and (QueryIPInfo.FieldBYName('Discharged').AsString='YES') Then
   Begin
      MessageDlg(' Sorry ! This patient has been already discharged .',mtInformation,[mbok],0);
      Edit_HospitalNo.SetFocus;
      Exit;
   End;}

   DateEditXRefundDate.SystemOfDate:=gi_DateSystem;
   ps_TodaysDate:=DateEditXRefundDate.Text;//ServerDate.TodaysDate;
   ps_TodaysTime:=ServerDate.TodaysTime;
   ls_Remarks:=StringReplace(EditRemarks.Text,'''','''''',[rfReplaceAll]);

   pi_CommunityId:=CmbCommunity.KeyValue;
   pi_SchemeId:=Query_Community.FieldByName('SchemeId').AsInteger;

   IF RadioButton_OPBilling.Checked=True Then
   Begin
      ps_BillType:='B';
      ls_Service:='OPREF';
   End
   Else
   Begin
      ps_BillType:='IP';
      ls_Service:='IPREF';
   End;
   ps_RateType:='GEN';
   ps_PayType:='REFUND';

   Try
   {     SaveCancelBillMaster(PatientId,UserId:Integer;ExtraCharge,DisCount,Dis,Total,GrandTotal,
            Vat:Double;BillNo,RateType,BillDate,BillTime,PayType,BillType:String);  }
      DM_Hospital.DB.StartTransaction;

      (*Try
         SaveRefundBillMaster(
            pi_PatientId,gi_UserId,0,0,0,StrToFloat(EditRefAmount.Text),
            StrToFloat(EditRefAmount.Text),0,ps_MyBillNo,ps_RateType,
            ps_TodaysDate,ps_TodaysTime,ps_PayType,ps_BillType     );
      except

         ps_MyBillNo:=MakeBillNo;
         SaveRefundBillMaster(
            pi_PatientId,gi_UserId,0,0,0,StrToFloat(EditRefAmount.Text),
            StrToFloat(EditRefAmount.Text),0,ps_MyBillNo,ps_RateType,
            ps_TodaysDate,ps_TodaysTime,ps_PayType,ps_BillType     );
      End;

      {   SaveRefundBillDetail(PatientId,InPatientId,SchemeId,CommunityId,PatientTestId,DepID,ClinicalDepId,UserId,CancelBy:Integer;
               BillNo,RateType,Service,ServiceType,MemberNo,PayType,BillType,BillDate,BillTime,CancelStatus,CancelDate,
               CancelTime,CancelRemarks,PrevBillNo:String;Quatity,VatAmt,Amount,TotalAmount,Dis:Double); }

      Try
         SaveRefundBillDetail(
            pi_PatientId,pi_InpatientId,pi_SchemeId, pi_CommunityId,0,
            pi_DepId, pi_DepId,gi_UserId,gi_UserId,ps_MyBillNo,
            ps_RateType,ls_Service,CmbCommunity.Text,ps_MemberNo,
            ps_PayType,ps_BillType,ps_TodaysDate,ps_TodaysTime,'Y',
            ps_TodaysDate,ps_TodaysTime,ls_Remarks,'',1,0,
            StrToFloat(EditRefAmount.Text),StrToFloat(EditRefAmount.Text),0,0,'N','N');
      Except
         SaveRefundBillDetail(
            pi_PatientId,pi_InpatientId,pi_SchemeId, pi_CommunityId,0,
            pi_DepId, pi_DepId,gi_UserId,gi_UserId,ps_MyBillNo,
            ps_RateType,ls_Service,CmbCommunity.Text,ps_MemberNo,
            ps_PayType,ps_BillType,ps_TodaysDate,ps_TodaysTime,'Y',
            ps_TodaysDate,ps_TodaysTime,ls_Remarks,'',1,0,
            StrToFloat(EditRefAmount.Text),StrToFloat(EditRefAmount.Text),0,0,'N','N');
      End; *)

      pi_SchemeId:=CmbCommunity.KeyValue;
      pi_CommunityId:=Query_Community.FieldByName('CommunityID').AsInteger;


      li_CMRefundId:=GetMaxId('CommunityRefund','CMRefundId');
      gs_BillNo:=GetNextBillNo1('BillMaster','BillNo','CRF');
      with QueryProcess do
      Begin
         Close;
         sql.Clear;
         sql.add(' Insert Into CommunityRefund(CMRefundId,PatientId,InpatientId,');
         sql.add(' BillNo,BillDate,BillTime,Amount,BillType,RefundBy,RefBillNo,');
         sql.add(' SchemeId,CommunityId,Remarks) Values ('+IntToStr(li_CMRefundId)+','+IntToStr(pi_PatientId));
         sql.add(' ,'+IntToStr(pi_InPatientId)+','+#39+gs_BillNo+#39);
         sql.add(' ,'+#39+ps_TodaysDate+#39+' ,'+#39+ps_TodaysTime+#39);
         sql.add(' ,'+EditRefAmount.Text+','+#39+ps_BillType+#39+','+IntToStr(gi_UserId));
         sql.add(' ,'+#39+''+#39+','+IntToStr(pi_SchemeId));
         sql.add(' ,'+IntToStr(pi_CommunityId)+','+#39+ls_Remarks+#39+')');
         ExecSQL;
      End;
      DM_Hospital.DB.Commit;
      ShowDoneMessage;
      ps_PayType:='';
      ps_BillType:='';
   Except
      DM_Hospital.DB.Rollback;
      MessageDlg('Failure to save data , Please try again or contact with system administrator.',mtInformation,[mbok],0);
      Exit;
   End;

   pb_IsReprint:=True;
   IF messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then

   PrintBill;

   FormRefresh;
End;


procedure TForm_BloodBagRefund.PrintBill;
Var
     i: Integer;
begin
     try
          Form_QrCommRefSlip_Manipal := TForm_QrCommRefSlip_Manipal.Create(nil);
          if pb_IsReprint then
               Form_QrCommRefSlip_Manipal.lbl_reprint.Enabled := true;
          with Form_QrCommRefSlip_Manipal do
          begin
               QrDepositSlip.Prepare;
               lbl_totpage.Caption := IntToStr(QrDepositSlip.QRPrinter.PageCount);
               QrDepositSlip.PreviewModal;
          end;
     finally
          pb_IsReprint := false;
          Form_QrCommRefSlip_Manipal.Free;
     end;
end;


(*procedure TForm_CommunityRefund.AlternateBillPrint(PatientId:Integer; BillNo :String);
var
    lf_TotalAmount,lf_VatAmt,lf_Discount:Double;
    ls_TotalAmount,ls_VatAmt,ls_Discount:String;
    sGTotal, sName,sParticulars:String;
    ls_PrintDate,ls_PrintTime,ls_PtAddress:String;
    sNo,sAmount,ls_RateType,ls_AmountInWords:String;
    yval,y,il,iLength,YItemsEnd:Integer;

    Procedure PrintPageHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            Font.Size:=12;
            TextOut(275,y+20,gs_HosName);   // pixel

            Font.Size:=8;
            TextOut(620,y+20,'Email  : '+gs_HosEmail);   // pixel
            TextOut(620,y+45,'Website: '+gs_HosWebSite);   // pixel

            Font.Size:=9;
            TextOut(210,y+45,gs_HosSloganTitle);
            Font.Size:=10;
            TextOut(337,y+60,gs_HosAddress);
            TextOut(245,y+80,gs_HosPhone);
            TextOut(620,y+80,'TPIN : 300449161');

            Font.Size:=12;
            IF b_Reprint=False Then
            TextOut(75,y+120,'REFUND RECEIPT')
            Else
            TextOut(75,y+120,'REFUND RECEIPT COPY');

            Font.Size:=10;
            GetTextAlign(TA_LEFT);
            IF RadioButton_IPBilling.Checked=True Then
            Begin
               IF (QueryIPInfo.FieldByName('MemberNo').AsString<>'') and (QueryIPInfo.FieldByName('MemberNo').AsString<>'0') Then
               TextOut(60,y+170, 'MEDICARE NO : '+QueryIPInfo.FieldByName('MemberNo').AsString);
               Font.Size:=11;
               TextOut(60,y+195, 'HOSP.NO    : '+QueryIPInfo.FieldByName('PatientId').AsString);
               TextOut(350,y+195, 'IP NO : '+QueryIPInfo.FieldByName('InPatientId').AsString);
               Font.Size:=10;

               GetTextAlign(TA_LEFT);
               TextOut(60,y+220, 'NAME          : '+QueryIPInfo.FieldByName('Name').AsString);
               TextOut(60,y+245,'AGE/SEX     : '+QueryIPInfo.FieldByName('AgeSex').AsString);
               IF Length(ls_PtAddress) > 30 Then
               Begin
                  TextOut(60,y+265, 'ADDRESS   : '+Copy(ls_PtAddress,1,30));
                  TextOut(155,y+280,Copy(ls_PtAddress,31,Length(ls_PtAddress)));
               End
               Else
               TextOut(60,y+270, 'ADDRESS   : '+ls_PtAddress);
            End
            Else
            Begin
               IF (QueryName.FieldByName('MemberNo').AsString<>'') and (QueryName.FieldByName('MemberNo').AsString<>'0') Then
               TextOut(60,y+170, 'MEDICARE NO : '+QueryName.FieldByName('MemberNo').AsString);
               Font.Size:=11;
               TextOut(60,y+195, 'HOSP.NO    : '+QueryName.FieldByName('PatientId').AsString);
               Font.Size:=10;

               GetTextAlign(TA_LEFT);
               TextOut(60,y+220, 'NAME          : '+QueryName.FieldByName('Name').AsString);
               TextOut(60,y+245,'AGE/SEX     : '+QueryName.FieldByName('AgeSex').AsString);
               IF Length(ls_PtAddress) > 30 Then
               Begin
                  TextOut(60,y+265, 'ADDRESS   : '+Copy(ls_PtAddress,1,30));
                  TextOut(155,y+280,Copy(ls_PtAddress,31,Length(ls_PtAddress)));
               End
               Else
               TextOut(60,y+270, 'ADDRESS   : '+ls_PtAddress);
            End;
            Font.Size:=11;
            TextOut(470,y+195,'INVOICE NO     : '+QueryDetail.FieldByName('BillNo').AsString+'  '+'CASH');
            Font.Size:=10;
            TextOut(470,y+220,'INVOICE DATE  : '+QueryDetail.FieldByName('BillDate').AsString);
            TextOut(470,y+245,'INVOICE TIME   : '+QueryDetail.FieldByName('BillTime').AsString);
        End;
    End;
    Procedure PrintColumnHeader;
    begin
        With FormRoboPreview.PrintPreviewRoboPrint.Canvas Do
        begin
            TextOut(60,y+310,format('%-s',['SNO']));
            MoveTo(60, y+325);
            LineTo(90, y+325);

            TextOut(100,y+310,format('%-s',['PARTICULARS']));
            MoveTo(100, y+325);
            LineTo(210, y+325);

            IF ls_RateType<>'FRG' Then
            TextOut(610,y+310,format('%-s',['AMOUNT']))
            Else
            TextOut(610,y+310,format('%-s',['AMOUNT($)']));
            MoveTo(600, y+325);
            LineTo(680, y+325);
        end;
    end;
begin
    y:=-10;
    With QueryName do
    Begin
        Close;
        ParamByName('PatientId').ASInteger:=PatientId;
        Open;
    End;
    With QueryDetail Do
    Begin
        Close;
        ParamByName('BillNo').ASString:=BillNo;
        Open;
    End;
    ls_PtAddress:=PatientAddress;
    ls_PrintDate:=ServerDate.TodaysDate;
    ls_PrintTime:=ServerDate.TodaysTime;
    With FormRoboPreview.PrintPreviewRoboPrint do
    begin
        FormRoboPreview.WindowState:=wsMaximized;
        QueryDetail.First;

        IF CheckBox_Preview.Checked=False Then
        DirectPrint:=True
        Else
        DirectPrint:=False;
        PaperType:= pCustom;
        FastPrint:=True;
        Units:= mmPixel;
        Zoom:=100;
        //PaperHeight:=900+ ( TotRecs * 50);
        //PaperHeight:=500+ ( TotRecs * 17);  // in pixel
        PaperHeight:=780;  // in pixel
        PaperWidth:=800;//2500;
        BeginDoc;
        yval:=328;
            With canvas do
            begin
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

                QueryDetail.First;//50,125
                While Not QueryDetail.Eof  do
                begin
                    Inc(il);
                    {If il in [1,16,31] Then
                        yval:=142;
                    If il in [16,31] Then
                    Begin
                        NewPage;
                        PrintPageHeader;
                        PrintColumnHeader;
                    End;}
                    sNo:= Inttostr(Il);
                    If Length(sNo)=1 Then sNo:= sNo+'   '
                    Else if Length(sNo)=2 Then sNo:= sNo+' ';

                    sParticulars:=QueryDetail.fieldbyname('ServiceType').AsString;
                    //delete(sParticulars,8,3);
                    If sParticulars='' Then sParticulars:='             '
                    Else sParticulars:=sParticulars+' ';

                    IF ls_RateType<>'FRG' Then
                    sAmount:= FormatFloat('0.00',QueryDetail.fieldbyname('TotalAmount').asFloat)
                    Else
                    sAmount:= FormatFloat('0.00',QueryDetail.fieldbyname('DollarAmount').asFloat);
                    iLength:= TextWidth(sAmount);
                    iLength:= 74 - iLength;
                    iLength:= Round(iLength / 4);
                    If  iLength>0 then sAmount:= SetTextWidth(sAmount,iLength);
                    // sno
                    TextOut(58,y+yval+10,format(' %-s',[sNo]));
                    // Particulars
                    TextOut(100,y+yval+10,format(' %-s',[sParticulars]));
                    // amount
                    TextOut(590,y+yval+10,format(' %-s',[sAmount]));
                    //Font.Size:=13;
                    //if il=1 Then LineTo(50,yval); //50------------4d,10,10                                 //'+IntToStr(round(nLength))+'
                    //Total:= Total + (qty*rate);
                    Inc(yval,22);
                    QueryDetail.Next;

                end;


                {***********************************************************}
                {                       print summary                       }
                {***********************************************************}
                yval:=y+yval+150;
                MoveTo(450,y+yval);
                LineTo(700,y+yval);

                yval:=yval+10;
                YItemsEnd:=yval;
                Font.Size:=10;



                IF ps_RateType<>'FRG' Then
                ls_AmountInWords:=UpperCase(InWords(QueryDetail.FieldByName('TotalAmount').AsFloat)+'.only')
                Else
                ls_AmountInWords:=UpperCase(InWords(QueryDetail.FieldByName('DollarAmount').AsFloat)+' IN USD');
                IF Length(ls_AmountInWords) > 40 Then
                Begin
                   TextOut(60,y+yval,'In Words   :  '+Copy(ls_AmountInWords,1,40));
                   Inc(yval,20);
                   TextOut(60,y+yval,Copy(ls_AmountInWords,41,Length(ls_AmountInWords)));
                   Inc(yval,20);
                End
                Else
                Begin
                   TextOut(60,y+yval,'In Words   :  '+ls_AmountInWords);
                   Inc(yval,40);
                End;

                Inc(yval,20);

                With QueryProcess Do
                Begin
                     Close;
                     Sql.Clear;
                     IF RadioButton_OPBilling.Checked Then //OP Refund
                     Begin
                          Sql.Add(' Select DepCode From PatientMain Where ');
                          Sql.Add(' PatientId='+IntToStr(StrToInt(Edit_HospitalNo.Text)));
                     End
                     Else  //IP Refund
                     Begin
                          Sql.Add(' Select DepCode From InpatientDetail where InpatientDID In ');
                          Sql.Add(' (Select Max(InpatientDID) as InpatientDID From InpatientDetail ');
                          Sql.Add(' where InpatientId='+IntToStr(StrToInt(Edit_HospitalNo.Text))+')');
                     End;
                     Open;
                     TextOut(60,y+yval,'CURRENT DEP. : '+FieldByName('DepCode').AsString);
                     Inc(yval,20);
                End;

                TextOut(60,y+yval,'USER                : '+QueryDetail.FieldByName('UserName').AsString);
                Inc(yval,20);

                IF ps_RateType<>'FRG' Then
                lf_TotalAmount:=QueryDetail.FieldByName('TotalAmount').AsFloat
                Else
                lf_TotalAmount:=QueryDetail.FieldByName('DollarAmount').AsFloat;
                yval:=YItemsEnd;
                iLength:=TextWidth(FormatFloat('0.00',lf_TotalAmount));
                iLength:=74-iLength;
                iLength:= Round(iLength / 4);
                //Inc(yval,20);
                IF ls_RateType<>'FRG' Then
                TextOut(500,y+yval,'AMOUNT   :')
                Else
                TextOut(500,y+yval,'AMOUNT(USD):');
                TextOut(590,y+yval,SetTextWidth(FormatFloat('0.00',lf_TotalAmount),iLength));
            End;
        EndDoc;
    end;
    IF CheckBox_Preview.Checked=True Then
    FormRoboPreview.ShowModal;
end;    *)



procedure TForm_BloodBagRefund.DisplayRefundBillingReport(BPatient:Integer;YourBillNo:String);
Var IpDepAmt:String;
Begin
(*   Try
      With FrmRefundBillingReport Do
      Begin
         QRLabel28.Caption:=ps_TodaysDate;
         Query_TNCategory.Close;
         Query_TNCategory.Open;
         With QueryCommunity Do
         Begin
            Close;
            Open;
         End;
         With QueryScheme Do
         Begin
            Close;
            Open;
         End;

         With QueryBillMaster Do
         Begin
            Close;
            ParamByName('PatientID').ASInteger:=BPatient;
            ParamByName('BillNo').ASString:=YourBillNo;
            Open;
         End;
         With QueryDetail Do
         Begin
            Close;
            ParamByName('BillNo').ASString:=YourBillNo;
            Open;
         End;
         With QueryDiscount Do
         Begin
            Close;
            ParamByName('PatientID').ASInteger:=BPatient;
            ParamByName('BillNo').ASString:=YourBillNo;
            Open;
         End;
         With QuerySumDep Do
         Begin
            Close;
            ParamByName('BillNo').ASString:=YourBillNo;
            Open;
         End;
         With QueryName Do
         Begin
            Close;
            ParamByName('PatientID').ASInteger:=pi_PatientId;
            Open;
         End;
         IF QueryDetail.FieldByName('Community').AsString<>'' Then
         Begin
            QRLabel_Community.Font.Color:=clBlack;
            QRLabel_Community.Caption:=QueryDetail.FieldByName('Community').AsString;
            QRLabel_Community1.Font.Color:=clBlack;
         End
         Else
         Begin
            QRLabel_Community.Font.Color:=clWhite;
            QRLabel_Community1.Font.Color:=clWhite;
         End;

         IF QueryDetail.FieldByName('Scheme').AsString<>'' Then
         Begin
            QRLabel_Scheme.Font.Color:=clBlack;
            QRLabel_Scheme.Caption:=QueryDetail.FieldByName('Scheme').AsString;
            QRLabel_Scheme1.Font.Color:=clBlack;
         End
         Else
         Begin
            QRLabel_Scheme.Font.Color:=clWhite;
            QRLabel_Scheme1.Font.Color:=clWhite;
         End;
         QRLabelTaxpercent.Caption:='@ '+FloatToStr(gf_VatPer)+' %:';
         pi_Sno:=0;
         IF CheckBox_Preview.Checked=False Then
         QuickRep1.Print
         Else
         QuickRep1.Preview;
         QueryDetail.Close;
         QueryBillMaster.Close;
         QueryName.Close;
         Query_TNCategory.Close;
         FrmBillingPaymentReport.Close;
      End;
   Except
   End;  *)
End;


Function TForm_BloodBagRefund.GetNextBillNo1(BILLTYPE, TableName, FieldName: String): String;
Var
     Cur_F_Year, Tem_Str: String;
     S_FDate, E_FDate: Integer;
     DateEditx_Hidden: TDateEditX;
     Query_GetNextNo: TOraQuery;
begin
     DateEditx_Hidden := TDateEditX.Create(Nil);
     Query_GetNextNo := TOraQuery.Create(nil);
     DateEditx_Hidden.ADDateAsText := TodaysDate;
     DateEditx_Hidden.SystemOfDate := gi_DateSystem;
     Tem_Str := DateEditx_Hidden.VSDateAsText;
     IF StrToInt(Copy(Tem_Str, 6, 2)) >= 4 Then
     Begin
          S_FDate := StrToInt(Copy(Tem_Str, 3, 2));
          E_FDate := S_FDate + 1;
     End
     Else
     Begin
          E_FDate := StrToInt(Copy(Tem_Str, 3, 2));
          S_FDate := E_FDate - 1;
     End;

     // Try
     With Query_GetNextNo do
     Begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add(' Select nvl(SubStr(Max(BillNo),10,15),0) as nMax From CommunityRefund');
          SQL.Add(' where  BillNo Like ''CRF'+FormatFloat('00', S_FDate) + '%' + #39);
          SQL.Add(' and BillDate >=''2014/07/17''');
          Open;
          Try
               RESULT := 'CRF' + FormatFloat('00', S_FDate) + '/' + FormatFloat('00', E_FDate) + '-' + FormatFloat('000000', FieldByName('nMax').AsInteger + 1) ;
          Except
               RESULT := 'CRF' + FormatFloat('00', S_FDate) + '/' + FormatFloat('00', E_FDate) + '-' + FormatFloat('000000',1) ;
          End;
     End;
     DateEditx_Hidden.Free;
     Query_GetNextNo.Free;
end;



procedure TForm_BloodBagRefund.EditRefAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then EditRemarks.SetFocus;
   IF key=VK_Prior Then CmbCommunity.SetFocus;
end;

procedure TForm_BloodBagRefund.BitBtnDateClick(Sender: TObject);
begin
   ChangeDateSystem(DateEditXRefundDate,BitBtnDate);
end;

procedure TForm_BloodBagRefund.FormCreate(Sender: TObject);
begin
   //Application.CreateForm(TFrmRefundBillingReport,FrmRefundBillingReport);
   DateEditX_In:=TDateEditX.Create(nil);
   DateEditX_Out:=TDateEditX.Create(nil);   
end;

procedure TForm_BloodBagRefund.EditRefAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in [#8] then Exit;
   AvoidMultipleDecimal(EditRefAmount,key);
   key:=Key;
end;


Function TForm_BloodBagRefund.PatientAddress:String;
Var ls_Address:String;
Begin
   IF RadioButton_IPBilling.Checked=True Then
   Begin
      IF QueryIPInfo.FieldByName('DistrictName').AsString<>' ' Then
      ls_Address:=QueryIPInfo.FieldByName('DistrictName').AsString;
      IF QueryIPInfo.FieldByName('VdcName').AsString<>' ' Then
      Begin
         IF ls_Address<>'' Then
         ls_Address:=ls_Address+','+QueryIPInfo.FieldByName('VdcName').AsString
         Else
         ls_Address:=QueryIPInfo.FieldByName('VdcName').AsString;
      End;
      IF QueryIPInfo.FieldByName('PAddress').AsString<>' ' Then
      Begin
         IF ls_Address<>'' Then
         ls_Address:=ls_Address+','+QueryIPInfo.FieldByName('PAddress').AsString
         Else
         ls_Address:=QueryIPInfo.FieldByName('PAddress').AsString;
      End;
      IF ls_Address<>'' Then
      Result:=ls_Address+'-'+IntToStr(QueryIPInfo.FieldByName('WardNo').AsInteger)
      Else
      Result:=IntToStr(QueryIPInfo.FieldByName('WardNo').AsInteger);
   End
   Else
   Begin
      IF QueryName.FieldByName('DistrictName').AsString<>' ' Then
      ls_Address:=QueryName.FieldByName('DistrictName').AsString;
      IF QueryName.FieldByName('VdcName').AsString<>' ' Then
      Begin
         IF ls_Address<>'' Then
         ls_Address:=ls_Address+','+QueryName.FieldByName('VdcName').AsString
         Else
         ls_Address:=QueryName.FieldByName('VdcName').AsString;
      End;
      IF QueryName.FieldByName('PAddress').AsString<>' ' Then
      Begin
         IF ls_Address<>'' Then
         ls_Address:=ls_Address+','+QueryName.FieldByName('PAddress').AsString
         Else
         ls_Address:=QueryName.FieldByName('PAddress').AsString;
      End;
      IF ls_Address<>'' Then
      Result:=ls_Address+'-'+IntToStr(QueryName.FieldByName('WardNo').AsInteger)
      Else
      Result:=IntToStr(QueryName.FieldByName('WardNo').AsInteger);
   End;
End;


procedure TForm_BloodBagRefund.Timer1Timer(Sender: TObject);
begin
   IF LabelDisStatus.Visible=True Then
   LabelDisStatus.Visible:=False
   Else
   LabelDisStatus.Visible:=True;
end;

procedure TForm_BloodBagRefund.CmbCommunityKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#13 Then EditRefAmount.SetFocus;
end;

procedure TForm_BloodBagRefund.EditRefAmountExit(Sender: TObject);
begin
   IF EditRefAmount.Text='' Then
   EditRefAmount.Text:='0';
{   IF (RadioButton_IPBilling.Checked=True) And (QueryIPInfo.FieldByName('Discharged').AsString<>'YES') Then
   Begin
      IF (StrToFloat(EditRefAmount.Text) > pf_MaxAmountRefund) and (pf_MaxAmountRefund > 0) Then
      Begin
         MessageDlg(' Sorry you are crossing the refund limit amount '+FloatToStr(pf_MaxAmountRefund),mtWarning,[mbok],0);
         EditRefAmount.SetFocus;
         Exit;
      End
      Else IF (StrToFloat(EditRefAmount.Text) > pf_MaxAmountRefund) and (pf_MaxAmountRefund = 0) Then
      Begin
         MessageDlg('Sorry you have already refunded up to refund limit.',mtWarning,[mbok],0);
         EditRefAmount.SetFocus;
         Exit;
      End;
   End;
   }
end;

procedure TForm_BloodBagRefund.FormDestroy(Sender: TObject);
begin
   DateEditX_In.Free;
   DateEditX_Out.Free;
end;

END.
