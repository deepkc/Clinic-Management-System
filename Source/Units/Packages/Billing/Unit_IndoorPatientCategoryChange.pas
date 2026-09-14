unit Unit_IndoorPatientCategoryChange;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, ExtCtrls,ServerDate, DM, Fxn_Hos, DBCtrls;

type
  TForm_IndoorPatientCategoryChange = class(TForm)
    QueryGetData: TOraQuery;
    QueryGetTestPrice: TOraQuery;
    QueryProcess: TOraQuery;
    Query_BedCharge: TOraQuery;
    Panel1: TPanel;
    BtnSave: TBitBtn;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label_Patientname: TLabel;
    LabelIPNo: TLabel;
    LabelExRate: TLabel;
    Label4: TLabel;
    RB_FRGGEN: TRadioButton;
    RB_FRGPVT: TRadioButton;
    RB_General: TRadioButton;
    RB_Private: TRadioButton;
    EditExRate: TEdit;
    Edit_IPNo: TEdit;
    Edit_Remarks: TEdit;
    Label5: TLabel;
    Label_Charge: TLabel;
    Label_DischargeStatus: TLabel;
    Timer1: TTimer;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Edit_HospitalNo: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    LabelInpatientDate: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Lbl_Ward: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Lbl_RoomType: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Lbl_BedNo: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label_Consultant: TLabel;
    Label_PatientType: TLabel;
    procedure BtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditExRateKeyPress(Sender: TObject; var Key: Char);
    Procedure DollarExRate;
    procedure RB_FRGGENClick(Sender: TObject);
    procedure RB_FRGPVTClick(Sender: TObject);
    procedure RB_GeneralClick(Sender: TObject);
    procedure Edit_IPNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit_RemarksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_IPNoExit(Sender: TObject);
    procedure Edit_HospitalNoExit(Sender: TObject);
    procedure Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
      pi_PatientId,pi_InpatientId:Integer;
      ps_PatientType:String;
      ps_IsDischarged,ps_IsDischargeInDeposit : String;

      Procedure IndoorPatientCategoryChange;
      procedure GetInpatientInfo(PatientId,InpatientId : Integer);
    { Public declarations }
  end;

var
  Form_IndoorPatientCategoryChange: TForm_IndoorPatientCategoryChange;

implementation

{$R *.DFM}

procedure TForm_IndoorPatientCategoryChange.BtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_IndoorPatientCategoryChange.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF (key=VK_F12) and (BtnSave.Enabled=True) Then BtnSaveClick(Sender);
     IF (Key=VK_F1) and (RB_General.Enabled=True) Then RB_General.Checked:=True;
     IF (key=VK_F2) and (RB_Private.Enabled=True) Then RB_Private.Checked:=True;
     IF (key=VK_F3) and (RB_FRGGEN.Enabled=True) Then RB_FRGGEN.Checked:=True;
     IF (key=VK_F4) and (RB_FRGPVT.Enabled=True) Then RB_FRGPVT.Checked:=True;
     IF Key=27 Then Close;
end;


procedure TForm_IndoorPatientCategoryChange.BtnSaveClick(Sender: TObject);
begin
     (*IF gb_IsDollarBilling=True Then
     Begin
          IF (RBForeigner.Checked=False) and (Trim(EditExRate.Text)='') Then
          Begin
               MessageDlg('Plz. Put Dollar Exchange Rate.',mtInformation,[mbok],0);
               EditExRate.SetFocus;
               Exit;
          End;
     End;*)

     if ((RB_General.Checked=True) and (ps_PatientType='GEN'))
     or ((RB_Private.Checked=True) and (ps_PatientType='PVT'))
     or ((RB_FRGGEN.Checked=True) and (ps_PatientType='FRG'))
     or ((RB_FRGPVT.Checked=True) and (ps_PatientType='FRP')) then
     Begin
          MessageDlg('Please Change The Patient Category From Current Category.',mtWarning,[mbok],0);
          Exit;
     End;

     IF Trim(Edit_Remarks.Text)='' Then
     Begin
          MessageDlg('You Must Have To Put Remarks For To Convert Patient Type Conversion.',mtWarning,[mbok],0);
          Edit_Remarks.SetFocus;
          Exit;
     End;

     IF (MessageDlg('Are you sure to convert ?',mtConfirmation,[mbYes,mbNo],0)=mrNo) Then Exit;
     IndoorPatientCategoryChange;

End;

Procedure TForm_IndoorPatientCategoryChange.IndoorPatientCategoryChange;
var lf_Price,lf_Qty,lf_DisPer,lf_VatAmt,lf_HosPart,lf_DocPart:Double;
    lf_TotalAmt,lf_PriceBillTime,lf_BedCharge,lf_UnitTestCost:Double;
    ls_RateType,ls_Price,ls_Vat,ls_PriceRoundVisit,ls_VatRoundVisit : String;
    ls_PriceNursing,ls_VatNursing,ls_PriceBed,ls_VatBed, ls_PatientType:String;
Begin
     IF RB_General.Checked=True Then
     Begin
          ls_Price:='TN.TESTPRICE';
          ls_Vat:='TN.VAT';

          ls_PriceRoundVisit:='RT.ROUNDVISITCHARGE';
          ls_VatRoundVisit:='RT.ROUNDVISITSVRTAX';

          ls_PriceNursing:='RT.NURSINGCARECHARGE';
          ls_VatNursing:='RT.NURSINGCARESVRTAX';

          ls_PriceBed:='RT.BEDCHARGE';
          ls_VatBed:='RT.BEDCHARGESVRTAX';

          ls_PatientType:='GEN';
     End
     Else IF RB_Private.Checked=True then
     Begin
          ls_Price:='TN.TESTPRICEPVT';
          ls_Vat:='TN.VATPVT';


          ls_PriceRoundVisit:='RT.ROUNDVISITCHARGEPVT';
          ls_VatRoundVisit:='RT.ROUNDVISITSVRTAXPVT';

          ls_PriceNursing:='RT.NURSINGCARECHARGEPVT';
          ls_VatNursing:='RT.NURSINGCARESVRTAXPVT';

          ls_PriceBed:='RT.BEDCHARGEPVT';
          ls_VatBed:='RT.BEDCHARGESVRTAXPVT';

          ls_PatientType:='PVT';
     End
     Else IF RB_FRGGEN.Checked=True then
     Begin
          ls_Price:='TN.TESTPRICEFRGGEN';
          ls_Vat:='TN.VATFRGGEN';

          ls_PriceRoundVisit:='RT.ROUNDVISITCHARGEFRG';
          ls_VatRoundVisit:='RT.ROUNDVISITSVRTAXFRG';

          ls_PriceNursing:='RT.NURSINGCARECHARGEFRG';
          ls_VatNursing:='RT.NURSINGCARESVRTAXFRG';

          ls_PriceBed:='RT.BEDCHARGEFRG';
          ls_VatBed:='RT.BEDCHARGESVRTAXFRG';

          ls_PatientType:='FRG';
     End
     Else IF RB_FRGPVT.Checked=True then
     Begin
          ls_Price:='TN.TESTPRICEFRGPVT';
          ls_Vat:='TN.VATFRGPVT';


          ls_PriceRoundVisit:='RT.ROUNDVISITCHARGEFRP';
          ls_VatRoundVisit:='RT.ROUNDVISITSVRTAXFRP';

          ls_PriceNursing:='RT.NURSINGCARECHARGEFRP';
          ls_VatNursing:='RT.NURSINGCARESVRTAXFRP';

          ls_PriceBed:='RT.BEDCHARGEFRP';
          ls_VatBed:='RT.BEDCHARGESVRTAXFRP';

          ls_PatientType:='FRP';
     End
     Else
     Begin
          ls_Price:='TN.TESTPRICE';
          ls_Vat:='TN.VAT';

          ls_PriceRoundVisit:='RT.ROUNDVISITCHARGE';
          ls_VatRoundVisit:='RT.ROUNDVISITSVRTAX';

          ls_PriceNursing:='RT.NURSINGCARECHARGE';
          ls_VatNursing:='RT.NURSINGCARESVRTAX';

          ls_PriceBed:='RT.BEDCHARGE';
          ls_VatBed:='RT.BEDCHARGESVRTAX';

          ls_PatientType:='GEN';
     End;


     Edit_Remarks.Text:=StringReplace(Edit_Remarks.Text,'''','''''',[rfReplaceAll]);

     Try
          DM_Hospital.DB.StartTransaction;
          { Investigtion Charge Update }
          with QueryGetData do
          Begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.add(' Select  * From (Select SBD.ServiceBillDetailId,SBD.Service,'+ls_Price+' as TestPrice,'+ls_Vat+',');
               sql.add(' ('+ls_Vat+'-'+ls_Vat+'*SBD.DisPer/100)*SBD.Qty as VatAmt,');
               sql.add(' ('+ls_Price+'*SBD.DisPer/100)*SBD.Qty as DisPerAdd');
               sql.add(' From ServiceBillDetail SBD,TestName TN');
               sql.add(' where PatientId='+IntToStr(pi_PatientId)+' and BillDetailId=0');
               sql.add(' and SBD.Service=TN.TestNameCode and SBD.Service<>''NUR01'') where TestPrice > 0');
               Open;
               First;
               while Not EOF do
               Begin
                    With QueryProcess do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.add(' Update ServiceBillDetail set Amount='+FloatToStr(QueryGetData.FieldByName('TestPrice').AsFloat));
                         sql.add(' ,VatAmt='+FloatToStr(QueryGetData.FieldByName('VatAmt').AsFloat));
                         sql.add(' ,DisPerAdd='+FloatToStr(QueryGetData.FieldByName('DisPerAdd').AsFloat));
                         sql.add(' ,RateType='+#39+ls_PatientType+#39);
                         sql.add(' where ServiceBillDetailId='+IntToStr(QueryGetData.FieldByName('ServiceBillDetailId').AsInteger));
                         ExecSQL;
                    End;
                    QueryGetData.Next;
               End;
          End;


          { Investigtion Charge Update(Nursing Charge)}
          with QueryGetData do
          Begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.add(' Select SBD.ServiceBillDetailId,SBD.Service,'+ls_PriceNursing+' as TestPrice,'+ls_VatNursing+',');
               sql.add(' ('+ls_VatNursing+'-'+ls_VatNursing+'*SBD.DisPer/100)*SBD.Qty as VatAmt,RT.ROOMTYPECODE,');
               sql.add(' ('+ls_PriceNursing+'*SBD.DisPer/100)*SBD.Qty as DisPerAdd');
               sql.add(' From ServiceBillDetail SBD,RoomType RT');
               sql.add(' where PatientId='+IntToStr(pi_PatientId)+' and BillDetailId=0');
               sql.add(' and SBD.EMRDUTYDOC=RT.ROOMTYPECODE and SBD.Service=''NUR01''');
               Open;
               First;
               while Not EOF do
               Begin
                    With QueryProcess do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.add(' Update ServiceBillDetail set Amount='+FloatToStr(QueryGetData.FieldByName('TestPrice').AsFloat));
                         sql.add(' ,VatAmt='+FloatToStr(QueryGetData.FieldByName('VatAmt').AsFloat));
                         sql.add(' ,DisPerAdd='+FloatToStr(QueryGetData.FieldByName('DisPerAdd').AsFloat));
                         sql.add(' ,RateType='+#39+ls_PatientType+#39);
                         sql.add(' where ServiceBillDetailId='+IntToStr(QueryGetData.FieldByName('ServiceBillDetailId').AsInteger));
                         ExecSQL;
                    End;
                    QueryGetData.Next;
               End;
          End;


          { bed charge }
          with QueryGetData do
          Begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.add(' Select IPD.INPATIENTDID,'+ls_PriceBed+' as BedCharge,'+ls_VatBed+',IPD.DISPER,');
               sql.add(' ('+ls_VatBed+'-'+ls_VatBed+'*IPD.DisPer/100) as VatAmt');
               sql.add(' From InpatientDetail IPD,RoomType RT');
               sql.add(' Where InPatientId='+IntToStr(pi_InpatientId)+' and IPD.ROOMTYPECODE=RT.ROOMTYPECODE');
               Open;
               First;
               while Not EOF do
               Begin
                    With QueryProcess do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.add(' Update InpatientDetail set BedCharge='+FloatToStr(QueryGetData.FieldByName('BedCharge').AsFloat));
                         sql.add(' ,VatAmt='+FloatToStr(QueryGetData.FieldByName('VatAmt').AsFloat));
                         sql.add(' where InpatientDID='+IntToStr(QueryGetData.FieldByName('InpatientDID').AsInteger));
                         ExecSQL;
                    End;
                    QueryGetData.Next;
               End;
          End;

          { Doctor Round Visit  }
          with QueryGetData do
          Begin
               Close;
               Session := DM_Hospital.DB;
               sql.Clear;
               sql.add(' Select DRV.DOCTORROUNDVISITID,DRV.ISDAILYCHARGE,'+ls_PriceRoundVisit+' as VisitCharge,'+ls_VatRoundVisit+',');
               sql.add(' ('+ls_VatRoundVisit +' - '+ls_VatRoundVisit+' * DRV.DisPer/100) as VatAmt');
               sql.add(' From DoctorRoundVisit DRV,RoomType RT');
               sql.add(' Where InPatientId='+IntToStr(pi_InpatientId));
               sql.add(' and DRV.ROOMTYPECODE=RT.ROOMTYPECODE and DRV.ISDAILYCHARGE=''Y''');
               Open;
               First;
               while Not EOF do
               Begin
                    With QueryProcess do
                    Begin
                         Close;
                         Session := DM_Hospital.DB;
                         sql.Clear;
                         sql.add(' Update DoctorRoundVisit set VisitCharge='+FloatToStr(QueryGetData.FieldByName('VisitCharge').AsFloat));
                         sql.add(' ,VatAmt='+FloatToStr(QueryGetData.FieldByName('VatAmt').AsFloat));
                         sql.add(' ,RateType='+#39+ls_PatientType+#39);
                         sql.add(' where DOCTORROUNDVISITID='+IntToStr(QueryGetData.FieldByName('DOCTORROUNDVISITID').AsInteger));
                         ExecSQL;
                    End;
                    QueryGetData.Next;
               End;
          End;


          { Update InpatientReg PatientType}

          With QueryProcess Do
          Begin
               Close;
               sql.Clear;
               sql.Add(' Update InpatientReg set PatientType='+#39+ls_PatientType+#39+' where InpatientId='+IntToStr(pi_InpatientId));
               ExecSQL;
          End;


          { Fraction Detail Update  }


          { Keep Log }
          With QueryProcess do
          Begin
               Close;
               sql.Clear;
               sql.add(' Insert Into Log_IPPatientCategoryChange(LIPCCID,PATIENTID,INPATIENTID,DataPostBy,DataPostDATE,');
               sql.add(' DataPostTIME,PrevPatientType,Remarks) Values ('+IntToStr(GetMaxId('Log_IPPatientCategoryChange','LIPCCID')));
               sql.add(' ,'+IntToStr(pi_PatientId)+','+IntToStr(pi_InpatientId)+','+IntToStr(gi_UserId));
               sql.add(' ,'+#39+TodaysDate+#39+','+#39+TodaysTime+#39+','+#39+ps_PatientType+#39);
               sql.add(' ,'+#39+Edit_Remarks.Text+#39);
               sql.add(' )');
               ExecSQL;
          End;

          DM_Hospital.DB.Commit;
          ShowDoneMessage;
     Except
          DM_Hospital.DB.Rollback;
          MessageDlg('Failure To Perform Task !',mtWarning,[mbok],0);
          Exit;
     End;
End;



procedure TForm_IndoorPatientCategoryChange.EditExRateKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in [#8] then Exit;
   AvoidMultipleDecimal(EditExRate,key);
   key:=Key;
end;

Procedure TForm_IndoorPatientCategoryChange.DollarExRate;
Begin
   LabelExRate.Enabled:=True;
   EditExRate.ReadOnly:=False;
   EditExRate.Color:=ClWhite;
   Label4.Enabled:=True;
End;

procedure TForm_IndoorPatientCategoryChange.RB_FRGGENClick(Sender: TObject);
begin
     DollarExRate;
end;

procedure TForm_IndoorPatientCategoryChange.RB_FRGPVTClick(Sender: TObject);
begin
     DollarExRate;
end;

procedure TForm_IndoorPatientCategoryChange.RB_GeneralClick(Sender: TObject);
begin
     DollarExRate;
end;

procedure TForm_IndoorPatientCategoryChange.Edit_HospitalNoExit(Sender: TObject);
begin
     if Trim(Edit_HospitalNo.Text)<>'' then
     GetInpatientInfo(StrToInt(Edit_HospitalNo.Text),0);
end;

procedure TForm_IndoorPatientCategoryChange.Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
begin
     {if Key=#13 then
     ActiveControl:=RB_General;}
end;

procedure TForm_IndoorPatientCategoryChange.Edit_IPNoExit(Sender: TObject);
begin
     if Trim(Edit_IPNo.Text)<>'' then
     GetInpatientInfo(0,StrToInt(Edit_IPNo.Text));
end;

procedure TForm_IndoorPatientCategoryChange.Edit_IPNoKeyPress(
  Sender: TObject; var Key: Char);
begin
     IF key=#13 Then
     Edit_HospitalNo.SetFocus;
end;

procedure TForm_IndoorPatientCategoryChange.FormShow(Sender: TObject);
begin
     Timer1.Enabled:=False;
     IF gb_IsDollarBilling=True Then
     Begin
          LabelExRate.Visible:=True;
          EditExRate.Visible:=True;
          Label4.Visible:=True;
     End;

     IF pi_InpatientId > 0 Then
     Edit_IPNo.Text:=IntToStr(pi_InpatientId);


     Edit_IPNoExit(Sender);
     Edit_IPNo.SetFocus;
end;

procedure TForm_IndoorPatientCategoryChange.Timer1Timer(Sender: TObject);
begin
     IF Label_DischargeStatus.Visible=True Then
     Label_DischargeStatus.Visible:=False
     Else
     Label_DischargeStatus.Visible:=True;
end;

procedure TForm_IndoorPatientCategoryChange.Edit_RemarksKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF (key=13) and (BtnSave.Enabled=True) Then
     BtnSave.SetFocus;
end;


procedure TForm_IndoorPatientCategoryChange.GetInpatientInfo(PatientId,InpatientId : Integer);
Var Qry : TOraQuery;
    Sender :TObject;
begin
     Qry:=TOraQuery.Create(nil);
     With Qry Do
     Begin
          Close;
          Session := DM_Hospital.DB;
          sql.Clear;
          sql.add(' Select * From VW_ADMITTEDPATIENTCURRENTINFO');
          if PatientId > 0 then
          sql.add(' Where PatientId='+IntToStr(PatientId))
          Else
          sql.add(' Where InPatientId='+IntToStr(InPatientId));
          sql.add(' Order by InpatientId Desc');
          Open;
     End;

     if Qry.FieldByName('InpatientId').AsInteger=0 then
     Begin
          if PatientId > 0 then
          MessageDlg(' No Patient Admitted With this Hospital No.',mtWarning,[mbok],0)
          Else
          MessageDlg(' No Patient Admitted With this Inpatient No.',mtWarning,[mbok],0);
          Exit;
     End;

     if PatientId > 0 then
     Edit_IPNo.Text:=IntToStr(Qry.FieldByName('InpatientId').AsInteger)
     Else
     Edit_HospitalNo.Text:=IntToStr(Qry.FieldByName('Patientid').AsInteger);

     pi_Patientid:=Qry.FieldByName('PatientId').AsInteger;
     pi_InpatientId:=Qry.FieldByName('InpatientId').AsInteger;

     Label_Patientname.Caption:=Qry.FieldByName('PatientName').AsString;
     LabelInpatientDate.Caption:=Qry.FieldByName('AdmnDate').AsString;
     Lbl_Ward.Caption:=Qry.FieldByName('Ward').AsString;
     Lbl_RoomType.Caption:=Qry.FieldByName('RoomType').AsString;
     Lbl_BedNo.Caption:=Qry.FieldByName('BedNo').AsString;

     Label_Consultant.Caption:=Qry.FieldByName('Consultant').AsString;

     ps_IsDischarged:=Qry.FieldByName('Discharged').AsString;
     ps_IsDischargeInDeposit:=Qry.FieldByName('DisInDeposit').AsString;
     ps_PatientType:=Qry.FieldByName('PatientType').AsString;

     Label_PatientType.Visible:=True;
     if ps_PatientType='GEN' then
     Begin
          Label_PatientType.Caption:='General Category';
          RB_General.Enabled:=False;
          RB_General.Checked:=True;
     End
     Else IF ps_PatientType='PVT' then
     Begin
          Label_PatientType.Caption:='Private Category';
          RB_Private.Enabled:=False;
          RB_Private.Checked:=True;
     End
     Else IF ps_PatientType='FRG' then
     Begin
          Label_PatientType.Caption:='Foreigner General Category';
          RB_FRGGEN.Enabled:=False;
          RB_FRGGEN.Checked:=True;
     End
     Else IF ps_PatientType='FRP' then
     Begin
          Label_PatientType.Caption:='Foreigner Private Category';
          RB_FRGPVT.Enabled:=False;
          RB_FRGPVT.Checked:=True;
     End;


     IF ps_IsDischarged='Y' Then
     Begin
          Label_DischargeStatus.Caption:='Already Discharged Patient';
          Label_DischargeStatus.Visible:=True;
          Timer1.Enabled:=True;
          BtnSave.Enabled:=False;
     End
     Else IF ps_IsDischarged='C' Then
     Begin
          Label_DischargeStatus.Caption:='Admission Cancel';
          Label_DischargeStatus.Visible:=True;
          Timer1.Enabled:=True;
          BtnSave.Enabled:=False;
     End
     Else IF ps_IsDischarged='M' Then
     Begin
          Label_DischargeStatus.Caption:='Discharged Manually';
          Label_DischargeStatus.Visible:=True;
          Timer1.Enabled:=True;
          BtnSave.Enabled:=False;
     End
     Else
     Begin
          Label_DischargeStatus.Visible:=False;
          Timer1.Enabled:=False;
          BtnSave.Enabled:=True;
     End;
     Qry.Free;
end;

end.
