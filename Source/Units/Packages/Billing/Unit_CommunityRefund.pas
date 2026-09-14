unit Unit_CommunityRefund;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids,
  DBCtrls, ServerDate, OleCtrls, DateEditXControl_TLB, Fxn, Dm, Unit_QrCommrefSlip_Manipal;

type
  TForm_CommunityRefund = class(TForm)
    StatusBar1: TStatusBar;
    Query_PatientInfo: TOraQuery;
    QueryProcess: TOraQuery;
    Query_Scheme: TOraQuery;
    DS_Scheme: TDataSource;
    QueryDetail: TOraQuery;
    QueryCurrIPDep: TOraQuery;
    Timer1: TTimer;
    Table_BedCharge: TOraTable;
    Query_GetBedCharge: TOraQuery;
    Query_TempProcess: TOraQuery;
    Panel3: TPanel;
    Label_DisplayInfo: TLabel;
    BB_Close: TBitBtn;
    BB_Save: TBitBtn;
    BB_New: TBitBtn;
    Query_RefundList: TOraQuery;
    DS_List: TDataSource;
    BB_RePrintBill: TBitBtn;
    CheckBox_Preview: TCheckBox;
    Query_ReferenceBillNo: TOraQuery;
    DS_ReferenceBillNo: TDataSource;
    Query_CommRefundBillList: TOraQuery;
    DS_CommRefundBillList: TDataSource;
    PC_CommunityRefundList: TPageControl;
    TS_CommunityRefundDisplay: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Shape1: TShape;
    LabelScheme1: TLabel;
    Shape5: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Label29: TLabel;
    EditPatientID: TEdit;
    Btn_Today: TButton;
    CmbScheme: TDBLookupComboBox;
    DateEditX_To: TDateEditX;
    DateEditX_From: TDateEditX;
    Btn_From: TButton;
    Btn_To: TButton;
    CheckBox_Search: TCheckBox;
    BB_Refresh: TBitBtn;
    DBGrid1: TDBGrid;
    DEX_Today: TDateEditX;
    TS_CommunityRefundEntry: TTabSheet;
    Label_HosNoCap: TLabel;
    Label6: TLabel;
    LabelName: TLabel;
    Label5: TLabel;
    LabelDisStatus: TLabel;
    Label14: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label_AgeSex: TLabel;
    Label15: TLabel;
    Label_Address: TLabel;
    Label11: TLabel;
    Label_AdmnDate: TLabel;
    Label17: TLabel;
    Label_DisDate: TLabel;
    Edit_InpatientNo: TEdit;
    RadioButton_OPBilling: TRadioButton;
    RadioButton_IPBilling: TRadioButton;
    DateEditXRefundDate: TDateEditX;
    BitBtnDate: TBitBtn;
    Edit_HospitalNo: TEdit;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Comunity: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label_BillAmount: TLabel;
    EditRemarks: TEdit;
    Cmb_Scheme: TDBLookupComboBox;
    EditRefAmount: TEdit;
    Edit_ReferenceNo: TEdit;
    DBGrid3: TDBGrid;
    Label_BillingStatus: TLabel;
    procedure RadioButton_OPBillingClick(Sender: TObject);
    procedure RadioButton_IPBillingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_InpatientNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cmb_SchemeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditPreBillNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditRemarksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditRefAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnDateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //procedure AlternateBillPrint(PatientId:Integer; BillNo :String);
    procedure EditRefAmountKeyPress(Sender: TObject; var Key: Char);
    procedure DisplayRefundBillingReport(BPatient:Integer;YourBillNo:String);
    procedure Timer1Timer(Sender: TObject);
    procedure Cmb_SchemeKeyPress(Sender: TObject; var Key: Char);
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
    procedure Edit_ReferenceNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit_ReferenceNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Btn_FromClick(Sender: TObject);
    procedure Btn_ToClick(Sender: TObject);
    procedure Btn_TodayClick(Sender: TObject);
    procedure CmbSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditPatientIDKeyPress(Sender: TObject; var Key: Char);

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

      pb_IsNumericValue : Boolean;

      procedure PrintBill(CB_Preview : TCheckBox);
      procedure RefreshFrom;
    { Public declarations }
  end;

var
  Form_CommunityRefund: TForm_CommunityRefund;

implementation


{$R *.DFM}

procedure TForm_CommunityRefund.RadioButton_OPBillingClick(Sender: TObject);
begin
     IF RadioButton_OPBilling.Checked=True Then
     Begin
          Label_HosNoCap.Visible:=False;
          Edit_InpatientNo.Visible:=False;

          Label14.Caption:='Hospital No. :';

          Label11.Visible:=False;
          Label_AdmnDate.Visible:=False;
          Label17.Visible:=False;
          Label_DisDate.Visible:=False;

          Edit_HospitalNo.SetFocus;

     End;
end;

procedure TForm_CommunityRefund.RadioButton_IPBillingClick(Sender: TObject);
begin
     IF RadioButton_IPBilling.Checked=True Then
     Begin
          Label_HosNoCap.Visible:=True;
          Edit_InpatientNo.Visible:=True;
          Label14.Caption:='Inpatient No :';

          Label11.Visible:=True;
          Label_AdmnDate.Visible:=True;
          Label17.Visible:=True;
          Label_DisDate.Visible:=True;

          Edit_HospitalNo.SetFocus;

     End;
end;

procedure TForm_CommunityRefund.FormShow(Sender: TObject);
begin
     PC_CommunityRefundList.ActivePageIndex:=0;
     TS_CommunityRefundDisplay.TabVisible:=True;
     TS_CommunityRefundEntry.TabVisible:=False;

     DateEditXRefundDate.SystemOfDate:=gi_DateSystem;
     ChangeCaption(BitBtnDate);
     DateEditXRefundDate.Text:=ServerDate.TodaysDate;

     DateEditX_From.SystemofDate:=gi_datesystem;
     DateEditX_From.Text:=TodaysDate;

     DateEditX_To.SystemofDate:=gi_datesystem;
     DateEditX_To.Text:=TodaysDate;

     BB_Save.Enabled:=False;

     Query_Scheme.Open;
     EditPatientID.SetFocus;
end;

procedure TForm_CommunityRefund.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF key=27 Then BB_CloseClick(Sender);

     if PC_CommunityRefundList.ActivePageIndex=1 then
     begin
          IF (key=13) and (ActiveControl=DateEditXRefundDate) Then
          Edit_HospitalNo.SetFocus;

          IF key=VK_F1 Then
          RadioButton_IPBilling.Checked:=True;

          IF key=VK_F2 Then
          RadioButton_OPBilling.Checked:=True;

          IF (key=VK_F12) and (BB_Save.Enabled=True) Then BB_SaveClick(Sender);
     end
     else
     begin
          IF key=VK_F1 Then BB_NewClick(Sender);
          if Key=VK_F5 then BB_RefreshClick(Sender);
     end;

     IF key=VK_F3 Then
     CheckBox_Preview.Checked:=Not (CheckBox_Preview.Checked);
end;

procedure TForm_CommunityRefund.Edit_HospitalNoExit(Sender: TObject);
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

procedure TForm_CommunityRefund.Edit_HospitalNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

               With Query_PatientInfo do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.clear;
                    sql.add(' Select PatientId,Title||'' ''||PatientName as PatientName,CurrentAgeGender,DistrictName,VdcName,Address,MemberNo');
                    sql.add(' From VW_HS_PATIENTMAIN where PatientId='+Edit_HospitalNo.Text);
                    Open;
               End;

               if Query_PatientInfo.FieldByname('Patientid').AsInteger <=0 then
               Begin
                    MessageDlg('No patient exist with this hospital no.',mtwarning,[mbok],0);
                    RefreshFrom;
                    Exit;
               End;

               With Query_ReferenceBillNo do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select R.*,S.Sche_Scheme as Scheme From (');
                    SQL.Add(' Select BIDE_PatientId as PatientID,BIDE_BillDate BillDate,BIDE_BillTime BillTime,BIDE_BIllNo BillNo,Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100)) as NetTotal,');
                    SQL.Add(' BIDE_BIllBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=BIDE_BillBy) as UserName,');
                    SQL.Add(' (Select Case when Max(BIDE_CrSchemeId) > 0 Then Max(BIDE_CrSchemeId) Else Max(BIDE_DisSchemeId) End SchemeId From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo) as SchemeID');
                    SQL.Add(' From HS_BIDE_BillDetail BD');
                    SQL.Add(' Where BIDE_PatientId='+Edit_HospitalNo.Text);
                    SQL.Add(' and BIDE_BIllType=''B''');
                    SQL.Add(' Group By BIDE_PatientId,BIDE_BillDate,BIDE_BillTime,BIDE_BIllBy,BIDE_BIllNo) R,HS_SCHE_Scheme S');
                    SQL.Add(' Where R.SchemeId=S.SCHE_SchemeID(+)');
                    SQL.Add(' Order by BillDate Desc,BillNo Desc');
                    Open;
               end;

               With Query_CommRefundBillList do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    sql.Add(' Select BillNo,BillDate,BillTime,Amount,RefundBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=CR.RefundBy) as UserName');
                    sql.Add(' ,(Select SCHE_Scheme From HS_SCHE_Scheme Where SCHE_SchemeId=CR.SchemeID) as SchemeName');
                    sql.Add(' ,Remarks,RefBillNo,BillType From CommunityRefund CR');
                    sql.Add(' Where PatientID='+IntToStr(Query_PatientInfo.FieldByName('PatientId').AsInteger));
                    Open;
               end;


               LabelName.Caption:=Query_PatientInfo.FieldByName('PatientName').AsString;
               Label_AgeSex.Caption:=Query_PatientInfo.FieldByName('CurrentAgeGender').AsString;
               Label_Address.Caption:=Trim(Query_PatientInfo.FieldByName('DistrictName').AsString+' '+Query_PatientInfo.FieldByName('VdcName').AsString
                                   +' '+Query_PatientInfo.FieldByName('Address').AsString);

               ps_MemberNo:=Query_PatientInfo.FieldByName('MemberNo').AsString;
               pi_InPatientId:=0;
               gi_PatientID:=Query_PatientInfo.FieldByName('PatientId').AsInteger;
               pi_PatientId:=Query_PatientInfo.FieldByName('PatientId').AsInteger;


          End
          Else
          Begin
               with Query_PatientInfo do
               Begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    sql.Clear;
                    sql.add(' Select PatientId,Title||'' ''||PatientName as PatientName,AgeGender,FullAddress,MemberNo,DepId,InpatientId,');
                    sql.add(' AdmnDate,DisDate,IsDischarged,RoomType,IsDisInDeposit,SchemeId,SchemeName');
                    sql.add(' From VW_HS_ADMNPATIENTCURRENTINFO');
                    sql.add(' where InpatientId='+Edit_HospitalNo.Text);
                    Open;
               End;

               IF Query_PatientInfo.FieldByName('InpatientId').AsInteger=0 Then
               Begin
                    MessageDlg('Sorry ! Patient is Not Admitted Till Now With This Inpatient No.',mtWarning,[mbok],0);
                    RefreshFrom;
                    Edit_HospitalNo.SetFocus;
                    Exit;
               End;

               With Query_ReferenceBillNo do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    SQL.Add(' Select R.*,S.Sche_Scheme as Scheme From (');
                    SQL.Add(' Select BIDE_PatientId as PatientID,BIDE_BillDate BillDate,BIDE_BillTime BillTime,BIDE_BIllNo BillNo,Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100)) as NetTotal,');
                    SQL.Add(' BIDE_BIllBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=BIDE_BillBy) as UserName,');
                    SQL.Add(' (Select Case when Max(BIDE_CrSchemeId) > 0 Then Max(BIDE_CrSchemeId) Else Max(BIDE_DisSchemeId) End SchemeId From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo) as SchemeID');
                    SQL.Add(' From HS_BIDE_BillDetail BD');
                    SQL.Add(' Where BIDE_InPatientId='+Edit_HospitalNo.Text);
                    SQL.Add(' and BIDE_BIllType In (''A'',''IP'')');
                    SQL.Add(' Group By BIDE_PatientId,BIDE_BillDate,BIDE_BillTime,BIDE_BIllBy,BIDE_BIllNo) R,HS_SCHE_Scheme S');
                    SQL.Add(' Where R.SchemeId=S.SCHE_SchemeID(+)');
                    SQL.Add(' Order by BillDate Desc,BillNo Desc');
                    Open;
               end;

               With Query_CommRefundBillList do
               begin
                    Close;
                    DatabaseName:=gs_DatabaseName;
                    SQL.Clear;
                    sql.Add(' Select BillNo,BillDate,BillTime,Amount,RefundBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=CR.RefundBy) as UserName');
                    sql.Add(' ,(Select SCHE_Scheme From HS_SCHE_Scheme Where SCHE_SchemeId=CR.SchemeID) as SchemeName');
                    sql.Add(' ,Remarks,RefBillNo,BillType From CommunityRefund CR');
                    sql.Add(' Where PatientID='+IntToStr(Query_PatientInfo.FieldByName('PatientId').AsInteger));
                    Open;
               end;

               Edit_InpatientNo.Text:=IntToStr(Query_PatientInfo.FieldByName('PatientId').AsInteger);
               ///ps_RateType:=QueryCurrIPDep.FieldBYName('RoomTypeCode').AsString; //GEN,PVT,SPL,FRG
               pi_InPatientId:=Query_PatientInfo.FieldByName('InPatientId').AsInteger;
               pi_InPatientId:=Query_PatientInfo.FieldByName('InPatientId').AsInteger;

               pi_PatientId:=Query_PatientInfo.FieldByName('PatientId').AsInteger;
               gi_PatientID:=Query_PatientInfo.FieldByName('PatientId').AsInteger;

               LabelName.Caption:=Query_PatientInfo.FieldByName('PatientName').AsString;
               Label_AgeSex.Caption:=Query_PatientInfo.FieldByName('AgeGender').AsString;
               Label_Address.Caption:=Query_PatientInfo.FieldByName('FullAddress').AsString;
               Label_AdmnDate.Caption:=Query_PatientInfo.FieldByName('AdmnDate').AsString;
               Label_DisDate.Caption:=Query_PatientInfo.FieldByName('DisDate').AsString;

               Cmb_Scheme.KeyValue:=Query_PatientInfo.FieldByName('SchemeId').AsInteger;
               ps_MemberNo:=Query_PatientInfo.FieldByName('MemberNo').AsString;
          End;
          Edit_ReferenceNo.Text:='';
          Edit_ReferenceNo.SetFocus;
     End;

     IF key=VK_Prior Then DateEditXRefundDate.SetFocus;
end;

procedure TForm_CommunityRefund.Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
begin
     IF key=#8 Then Exit;
     IF Not (key In['0'..'9']) Then Key:=#0;
end;

procedure TForm_CommunityRefund.CalculationOfTobeRefundAmount;
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

Function TForm_CommunityRefund.GetBedCharge(InPatientId:LongInt):Double;
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

Function TForm_CommunityRefund.GetTotalDays(InptDate,OutDate:String):Integer;
Begin
  DateEditX_In.SystemOfDate:=gi_DateSystem;
  DateEditX_In.text:=InptDate;
  DateEditX_Out.SystemOfDate:=gi_DateSystem;
  DateEditX_Out.text:=OutDate;
  Result:=DateEditX_Out.VSDateAsDays-DateEditX_In.VSDateAsDays;
End;


procedure TForm_CommunityRefund.CreateTableBedCharge;
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

procedure TForm_CommunityRefund.Edit_InpatientNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key=13 Then
     Begin
          with Query_PatientInfo do
          Begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               sql.add(' Select PatientId,Title||'' ''||PatientName as PatientName,AgeGender,FullAddress,MemberNo,DepId,InpatientId,');
               sql.add(' AdmnDate,DisDate,IsDischarged,RoomType,IsDisInDeposit,SchemeId,SchemeName');
               sql.add(' From VW_HS_ADMNPATIENTCURRENTINFO');
               sql.add(' where PatientId='+Edit_InpatientNo.Text);
               sql.add(' Order by InpatientId Desc');
               Open;
          End;

          IF Query_PatientInfo.FieldByName('InpatientId').AsInteger=0 Then
          Begin
               MessageDlg('Sorry ! Patient is Not Admitted Till Now With This Hospital No.',mtWarning,[mbok],0);
               Edit_InpatientNo.SetFocus;
               Exit;
          End;

          With Query_ReferenceBillNo do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               SQL.Add(' Select R.*,S.Sche_Scheme as Scheme From (');
               SQL.Add(' Select BIDE_PatientId as PatientID,BIDE_BillDate BillDate,BIDE_BillTime BillTime,BIDE_BIllNo BillNo,Sum((BIDE_Amount*BIDE_Qty)+BIDE_VatAmt-(BIDE_Amount*BIDE_Qty*BIDE_DisPer/100)) as NetTotal,');
               SQL.Add(' BIDE_BIllBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=BIDE_BillBy) as UserName,');
               SQL.Add(' (Select Case when Max(BIDE_CrSchemeId) > 0 Then Max(BIDE_CrSchemeId) Else Max(BIDE_DisSchemeId) End SchemeId From HS_BIDE_BillDetail where BIDE_BillNo=BD.BIDE_BillNo) as SchemeID');
               SQL.Add(' From HS_BIDE_BillDetail BD');
               SQL.Add(' Where BIDE_PatientId='+Edit_InpatientNo.Text);
               SQL.Add(' and BIDE_BIllType In (''A'',''IP'')');
               SQL.Add(' Group By BIDE_PatientId,BIDE_BillDate,BIDE_BillTime,BIDE_BIllBy,BIDE_BIllNo) R,HS_SCHE_Scheme S');
               SQL.Add(' Where R.SchemeId=S.SCHE_SchemeID(+)');
               SQL.Add(' Order by BillDate Desc,BillNo Desc');
               Open;
          end;

          With Query_CommRefundBillList do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               SQL.Clear;
               sql.Add(' Select BillNo,BillDate,BillTime,Amount,RefundBy,(Select USMA_UserName From HS_USMA_UserMain where USMA_UserId=CR.RefundBy) as UserName');
               sql.Add(' ,(Select SCHE_Scheme From HS_SCHE_Scheme Where SCHE_SchemeId=CR.SchemeID) as SchemeName');
               sql.Add(' ,Remarks,RefBillNo,BillType From CommunityRefund CR');
               sql.Add(' Where PatientID='+IntToStr(Query_PatientInfo.FieldByName('PatientId').AsInteger));
               Open;
          end;

          Edit_InpatientNo.Text:=IntToStr(Query_PatientInfo.FieldByName('PatientId').AsInteger);
          ps_RateType:=QueryCurrIPDep.FieldBYName('RoomTypeCode').AsString; //GEN,PVT,SPL,FRG
          Edit_HospitalNo.Text:=IntToStr(Query_PatientInfo.FieldByName('InPatientId').AsInteger);

          pi_InPatientId:=Query_PatientInfo.FieldByName('InPatientId').AsInteger;
          pi_InPatientId:=Query_PatientInfo.FieldByName('InPatientId').AsInteger;

          pi_PatientId:=Query_PatientInfo.FieldByName('PatientId').AsInteger;
          gi_PatientID:=Query_PatientInfo.FieldByName('PatientId').AsInteger;

          LabelName.Caption:=Query_PatientInfo.FieldByName('PatientName').AsString;
          Label_AgeSex.Caption:=Query_PatientInfo.FieldByName('AgeGender').AsString;
          Label_Address.Caption:=Query_PatientInfo.FieldByName('FullAddress').AsString;
          Label_AdmnDate.Caption:=Query_PatientInfo.FieldByName('AdmnDate').AsString;
          Label_DisDate.Caption:=Query_PatientInfo.FieldByName('DisDate').AsString;

          Cmb_Scheme.KeyValue:=Query_PatientInfo.FieldByName('SchemeId').AsInteger;
          ps_MemberNo:=Query_PatientInfo.FieldByName('MemberNo').AsString;
          Cmb_Scheme.SetFocus;
     End;

     IF key=VK_Prior Then Edit_HospitalNo.SetFocus;
end;

procedure TForm_CommunityRefund.Edit_ReferenceNoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Query_ReferenceBillNo.FieldByName('PatientID').AsInteger > 0 then
     Begin
          if Key = vk_up then
          Begin
               Query_ReferenceBillNo.Prior;
               Edit_ReferenceNo.Text:=Query_ReferenceBillNo.FieldByName('BillNo').AsString;
               Label_BillAmount.Caption:=FloatToStr(Query_ReferenceBillNo.FieldByName('NetTotal').AsFloat);
          End
          else if Key = vk_down then
          Begin
               Query_ReferenceBillNo.Next;
               Edit_ReferenceNo.Text:=Query_ReferenceBillNo.FieldByName('BillNo').AsString;
               Label_BillAmount.Caption:=FloatToStr(Query_ReferenceBillNo.FieldByName('NetTotal').AsFloat);
          End;
     End;
end;

procedure TForm_CommunityRefund.Edit_ReferenceNoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key=#13 then Cmb_Scheme.SetFocus;

end;

procedure TForm_CommunityRefund.CmbSchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then CmbScheme.KeyValue:=-1;

end;

procedure TForm_CommunityRefund.Cmb_SchemeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Prior Then Edit_HospitalNo.SetFocus;
   IF key=VK_Delete Then Cmb_Scheme.KeyValue:=-1;
end;

procedure TForm_CommunityRefund.EditPatientIDKeyPress(Sender: TObject; var Key: Char);
begin
     if (key=#13) and (Trim(EditPatientID.Text)<>'') then
     Begin
          IF IsStrANumber(EditPatientID.Text) Then
          pb_IsNumericValue:=True
          Else
          pb_IsNumericValue:=False;
          BB_RefreshClick(Sender);
     End;
end;

procedure TForm_CommunityRefund.EditPreBillNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then EditRefAmount.SetFocus;
   IF key=VK_Prior Then Cmb_Scheme.SetFocus;
end;

procedure TForm_CommunityRefund.EditRemarksKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then BB_Save.SetFocus;
   IF key=VK_Prior Then EditRefAmount.SetFocus;
end;

procedure TForm_CommunityRefund.BB_CloseClick(Sender: TObject);
begin
     if PC_CommunityRefundList.ActivePageIndex=0 then
     Close;

     TS_CommunityRefundEntry.TabVisible:=False;
     TS_CommunityRefundDisplay.TabVisible:=True;

     BB_Save.Enabled:=False;
     BB_New.Enabled:=True;
     BB_RePrintBill.Enabled:=True;
end;

procedure TForm_CommunityRefund.BB_NewClick(Sender: TObject);
begin
     TS_CommunityRefundDisplay.TabVisible:=False;
     TS_CommunityRefundEntry.TabVisible:=True;
     BB_Save.Enabled:=True;
     BB_New.Enabled:=False;
     BB_RePrintBill.Enabled:=False;

     RadioButton_IPBillingClick(Sender);
     RefreshFrom;
End;

procedure TForm_CommunityRefund.RefreshFrom;
Begin
     Edit_HospitalNo.Text:='';
     Edit_InpatientNo.Text:='';
     LabelName.Caption:='None';
     Label_Address.Caption:='None';
     Label_AgeSex.Caption:='None';
     Label_AdmnDate.Caption:='None';
     Label_DisDate.Caption:='None';

     Query_ReferenceBillNo.Close;
     Edit_ReferenceNo.Text:='';

     Label_BillAmount.Caption:='0.00';
     Cmb_Scheme.KeyValue:=-1;
     EditRefAmount.Text:='';
     EditRemarks.Text:='';

     Query_CommRefundBillList.Close;
     Edit_HospitalNo.SetFocus;
end;

procedure TForm_CommunityRefund.BB_RefreshClick(Sender: TObject);
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
          if Trim(CmbScheme.Text)<>'' then
          sql.add(' and SchemeId='+IntToStr(CmbScheme.KeyValue));

          if Trim(EditPatientID.Text)<>'' then
          Begin
               if pb_IsNumericValue then
               sql.add(' and PatientId='+EditPatientID.Text)
               Else
               sql.add(' and BillNo='+#39+EditPatientID.Text+#39);
          End;


          sql.add(' Order by BillNo');
          Open;
     end;
end;

procedure TForm_CommunityRefund.BB_RePrintBillClick(Sender: TObject);
begin
     pb_IsReprint:=True;
     IF messageDlg('Do you want to print ?', mtconfirmation, [mbyes,mbno], 0)=mryes then
     Gs_BillNo:=Query_RefundList.FieldByName('RefundReceiptNo').AsString;
     gi_PatientId:=Query_RefundList.FieldByName('PatientId').AsInteger;

     PrintBill(CheckBox_Preview);
end;

procedure TForm_CommunityRefund.BB_SaveClick(Sender: TObject);
var ls_Remarks,ls_Service,ls_BillNo:String;
    li_CMRefundId:Integer;
    lf_PrevRefundAmount : Double;
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

     IF Trim(Cmb_Scheme.Text)='' Then
     Begin
          MessageDlg('Plz. choose community to be refund.',mtInformation,[mbok],0);
          Cmb_Scheme.SetFocus;
          Exit;
     End;

     

     IF Trim(EditRemarks.Text)='' Then
     Begin
          MessageDlg('Sorry ! You Must Have To Put Refund Reason.',mtWarning,[mbok],0);
          EditRemarks.SetFocus;
          Exit;
     End;


     if (Cmb_Scheme.KeyValue<>3) and (Cmb_Scheme.KeyValue<>71) and (Cmb_Scheme.KeyValue<>40)
     and (Cmb_Scheme.KeyValue<>35) then
     Begin // 3 - GOOD NEIGHBOUR SERVICE ASSOCIATION,71- GONESA MATERNITY (No Control In This Scheme), 40 - MS CONCESSION, 35 -Poor Patient Fund
          IF Trim(Edit_ReferenceNo.Text)='' Then
          Begin
               MessageDlg('For Community Refund You Must Have to Mention BillNo, In Respone of That BillNo You Are Doing Community Refund.',mtWarning,[mbOK],0);
               Edit_ReferenceNo.SetFocus;
               Exit;
          End;

          With QueryProcess do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               SQL.Add(' Select * From HS_BIDE_BillDetail where BIDE_BillNo='+#39+Edit_ReferenceNo.Text+#39);
               SQL.Add(' and BIDE_PatientId='+IntToStr(pi_PatientId));
               Open;
          end;

          if QueryProcess.FieldByName('BIDE_BillDetailId').AsInteger=0 then
          begin
               MessageDlg('Please Put Proper Bill No Which Is Related To Community Refund. Or Please Choose From The Bill List.',mtWarning,[mbok],0);
               Edit_ReferenceNo.SetFocus;
               Exit;
          end;


          With QueryProcess do
          begin
               Close;
               DatabaseName:=gs_DatabaseName;
               sql.Clear;
               SQL.Add(' Select NVL(Sum(Amount),0) as Total From CommunityRefund where RefBillNo='+#39+Edit_ReferenceNo.Text+#39);
               SQL.Add(' and PatientId='+IntToStr(pi_PatientId));
               Open;
          end;

          lf_PrevRefundAmount := QueryProcess.FieldByName('Total').AsFloat;


          if StrToFloat(EditRefAmount.Text) >  (StrToFloat(Label_BillAmount.Caption) - lf_PrevRefundAmount) then
          begin
               MessageDlg('Community Refund Amount " '+EditRefAmount.Text+' " Is Greater Than The Net Bill Amount " '+FloatToStr((StrToFloat(Label_BillAmount.Caption) - lf_PrevRefundAmount))+' "'+
               ' After Deduction Prev. Community Refund IF Any).',mtWarning,[mbOk],0);
               EditRefAmount.SetFocus;
               Exit;
          end;
     End;


     If MessageDlg(' Are you sure to Refund ?',mtConfirmation,[mbYes,mbNo],0)<>mrYes Then
     exit;

     DateEditXRefundDate.SystemOfDate:=gi_DateSystem;
     ps_TodaysDate:=DateEditXRefundDate.Text;//ServerDate.TodaysDate;
     ps_TodaysTime:=ServerDate.TodaysTime;
     ls_Remarks:=StringReplace(EditRemarks.Text,'''','''''',[rfReplaceAll]);

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


     pi_SchemeId:=Cmb_Scheme.KeyValue;
     pi_CommunityId:=Query_Scheme.FieldByName('CommunityID').AsInteger;

     Try
          DM_Hospital.DB.StartTransaction;

          li_CMRefundId:=GetMaxId('CommunityRefund','CMRefundId');
          gs_BillNo:=GetNextBillNo1('CommunityRefund','BillNo','CRF');
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
               sql.add(' ,'+#39+Edit_ReferenceNo.Text+#39+','+IntToStr(pi_SchemeId));
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
     PrintBill(CheckBox_Preview);

     BB_Save.Enabled:=False;
End;



procedure TForm_CommunityRefund.PrintBill(CB_Preview : TCheckBox);
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
               if CB_Preview.Checked=False then
               QrDepositSlip.Print
               Else
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



procedure TForm_CommunityRefund.DBGrid2DblClick(Sender: TObject);
begin
     Edit_ReferenceNo.Text:=Query_ReferenceBillNo.FieldByName('BillNo').AsString;
     Label_BillAmount.Caption:=FloatToStr(Query_ReferenceBillNo.FieldByName('NETTOTAL').AsFloat);
end;

procedure TForm_CommunityRefund.DisplayRefundBillingReport(BPatient:Integer;YourBillNo:String);
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


Function TForm_CommunityRefund.GetNextBillNo1(BILLTYPE, TableName, FieldName: String): String;
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



procedure TForm_CommunityRefund.EditRefAmountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key=13 Then EditRemarks.SetFocus;
   IF key=VK_Prior Then Cmb_Scheme.SetFocus;
end;

procedure TForm_CommunityRefund.BitBtnDateClick(Sender: TObject);
begin
   ChangeDateSystem(DateEditXRefundDate,BitBtnDate);
end;

procedure TForm_CommunityRefund.Btn_FromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_To, Btn_To);
     ChangeDateSystem(DateEditX_From, Btn_From);
end;

procedure TForm_CommunityRefund.Btn_ToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From, Btn_From);
     ChangeDateSystem(DateEditX_To, Btn_To);
end;

procedure TForm_CommunityRefund.Btn_TodayClick(Sender: TObject);
begin
     ChangeDateSystem(DEX_Today, Btn_Today);
end;

procedure TForm_CommunityRefund.FormCreate(Sender: TObject);
begin
   //Application.CreateForm(TFrmRefundBillingReport,FrmRefundBillingReport);
   DateEditX_In:=TDateEditX.Create(nil);
   DateEditX_Out:=TDateEditX.Create(nil);   
end;

procedure TForm_CommunityRefund.EditRefAmountKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in [#8] then Exit;
   AvoidMultipleDecimal(EditRefAmount,key);
   key:=Key;
end;


procedure TForm_CommunityRefund.Timer1Timer(Sender: TObject);
begin
   IF LabelDisStatus.Visible=True Then
   LabelDisStatus.Visible:=False
   Else
   LabelDisStatus.Visible:=True;
end;

procedure TForm_CommunityRefund.Cmb_SchemeKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#13 Then EditRefAmount.SetFocus;
end;

procedure TForm_CommunityRefund.EditRefAmountExit(Sender: TObject);
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

procedure TForm_CommunityRefund.FormDestroy(Sender: TObject);
begin
   DateEditX_In.Free;
   DateEditX_Out.Free;
end;

END.
