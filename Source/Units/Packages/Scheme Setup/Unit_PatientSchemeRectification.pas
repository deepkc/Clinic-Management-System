unit Unit_PatientSchemeRectification;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, StdCtrls, DBCtrls, OleCtrls, Fxn, DM,
  DateEditXControl_TLB, ExtCtrls, Buttons, Grids, DBGrids,ServerDate;

type
  TForm_PatientSchemeRectification = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    BitBtnCancel: TBitBtn;
    PageControlBillReprint: TPageControl;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    EditHosNo: TEdit;
    DBGridBillList: TDBGrid;
    Query_PatientInfo: TOraQuery;
    Label7: TLabel;
    Lbl_Name: TLabel;
    Query_Process: TOraQuery;
    Label1: TLabel;
    Lbl_AgeSex: TLabel;
    Label3: TLabel;
    Lbl_ContactNo: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Lbl_Address: TLabel;
    Label13: TLabel;
    Query_BillDetail: TOraQuery;
    DS_BillDetail: TDataSource;
    SBSearch: TSpeedButton;
    Query_Scheme: TOraQuery;
    DS_Scheme: TDataSource;
    Label100: TLabel;
    DBLCB_Scheme: TDBLookupComboBox;
    CB_RemoveScheme: TCheckBox;
    BtnSave: TBitBtn;
    GroupBox1: TGroupBox;
    RB_DirectBilling: TRadioButton;
    RB_ServiceBilling: TRadioButton;
    OraQueryProcess2: TOraQuery;
    OraQueryProcess3: TOraQuery;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditHospitalNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSaveClick(Sender: TObject);
    procedure CB_RemoveSchemeClick(Sender: TObject);
    procedure RB_DirectBillingClick(Sender: TObject);
    procedure RB_ServiceBillingClick(Sender: TObject);
    procedure DBGridBillListCellClick(Column: TColumn);
  private
      { Private declarations }
  public
      { Public declarations }
      pi_PatientId,pi_CommunityId,pi_SchemeId,pi_DepId:Integer;
      ps_BillType,ps_MyBillNo,ps_PayType,ps_MemberNo:String;
      ps_RateType,ps_TodaysDate,ps_TodaysTime,ps_PatientType:String;
      pf_VatAmt,pf_RegCharge,pf_DisAmt,pf_TotalAmt:Double;
      b_Reprint:Boolean;


      Procedure GetPatientInfo;

  end;

var
  Form_PatientSchemeRectification: TForm_PatientSchemeRectification;

implementation

{$R *.DFM}

procedure TForm_PatientSchemeRectification.BitBtnCancelClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_PatientSchemeRectification.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF Key=27 Then Close;

     if Key=VK_F1 then CB_RemoveScheme.Checked:=not(CB_RemoveScheme.Checked);

     if Key=VK_F12 then BtnSaveClick(Sender);


end;

procedure TForm_PatientSchemeRectification.EditHospitalNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF key=#8 Then Exit;
   IF Not (key IN['0'..'9']) Then Key:=#0;
end;

procedure TForm_PatientSchemeRectification.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
     IF key=#8 Then Exit;

     IF Key=#13 Then
     SBSearchClick(Sender);

     IF Not (key In['0'..'9']) Then Key:=#0;

end;

procedure TForm_PatientSchemeRectification.DBGridBillListCellClick(
  Column: TColumn);
begin
     if RB_DirectBilling.Checked=True then
     DBLCB_Scheme.KeyValue:=Query_BillDetail.FieldByName('BIDE_DISSCHEMEID').AsInteger
     else if RB_ServiceBilling.Checked=true then
     DBLCB_Scheme.KeyValue:=Query_BillDetail.FieldByName('SEBD_DISSCHEMEID').AsInteger;
end;

procedure TForm_PatientSchemeRectification.DBLCB_SchemeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=8 then
     DBLCB_Scheme.KeyValue:=-1;

end;

procedure TForm_PatientSchemeRectification.BtnSaveClick(Sender: TObject);
Var ls_LogRemarks : string;
var li_schemeid,li_communityid,maxidGlobalLog:integer;
var OraqueryProcessLog,OraquerySaveLog:TOraQuery;

var lf_discount,lf_disper,lf_totalamount,lf_totalamountfornoscheme,lf_totalamountForBillmaster,lf_totaldiscountforBillmaster,lf_vatAmt:Double;
begin
     if Trim(EditHosNo.Text)='' then
     begin
          ShowMessage('Please Input Patient Id !!!');
          Exit;
     end;

     if Query_BillDetail.RecordCount<=0 then
     begin
          ShowMessage('There is No Data To Modify !!!');
          exit;
     end;


     with Query_Process do
     begin
          close;
          session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('select SCHE_SCHEMEID,SCHE_COMMUNITYID from HS_SCHE_SCHEME where SCHE_SCHEMEID='+intToStr(DBLCB_Scheme.KeyValue));
          open;
          li_schemeid:=FieldByName('SCHE_SCHEMEID').AsInteger;
          li_communityid:=FieldByName('SCHE_COMMUNITYID').AsInteger;
     end;

      OraquerySaveLog:=TOraQuery.Create(nil);
      OraqueryProcessLog:=TOraQuery.Create(nil);

     if RB_DirectBilling.Checked=True then
     begin

          Try
               DM_Hospital.DB.StartTransaction;


                with OraqueryProcessLog do
                begin
                     close;
                     Session:=DM_Hospital.DB;
                     sql.Clear;
                     sql.Add('select * from hs_bide_billdetail where bide_patientid='+Trim(EditHosNo.Text));
                     sql.Add(' and bide_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString));
                     //sql.savetofile('C:\abc00.txt');
                     open;
                end;

                maxidGlobalLog:=GetMaxId('HS_LOG_GLOBAL','LOG_LOGID');

                if CB_RemoveScheme.Checked=False then
                    ls_LogRemarks:='Set Scheme-> SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' For Patient No :'+EditHosNo.Text+
                                        ' BillNo='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString)
                else
                ls_LogRemarks:='Remove Scheme-> Old SchemeId='+IntToStr(OraqueryProcessLog.FieldByName('bide_DisSchemeId').AsInteger)+' For Patient No :'+EditHosNo.Text+
                                        ' BillNo='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString);


                with OraquerySaveLog do
                begin
                     close;
                     Session:=DM_Hospital.DB;
                     sql.Clear;
                     sql.Add('insert into HS_LOG_GLOBAL values(');
                     sql.Add(IntToStr(maxidGlobalLog)+','+QuotedStr('Direct Billing')+','+intToStr(gi_userid));
                     sql.Add(','+QuotedStr(ServerDate.TodaysDate)+','+QuotedStr(ServerDate.TodaysTime)+','+QuotedStr(ls_LogRemarks)+','+QuotedStr(gs_MacID));
                     sql.Add(' )');
                     ExecSQL;
                end;


                while not OraqueryProcessLog.Eof do
                begin

                    with OraQueryProcess2 do
                    begin
                         close;
                         Session:=DM_Hospital.DB;
                         sql.Clear;
                         sql.Add('select nvl(tena_testnameid,0)testnameid from hs_tena_testname where tena_testnamecode='+QuotedStr(OraqueryProcessLog.FieldByName('bide_Service').AsString));
                         Open;
                    end;

                     with OraQueryProcess3 do
                     begin
                          close;
                          Session:=DM_Hospital.DB;
                          sql.Clear;
                          sql.Add('select * from HS_SCDE_SCHEMEDETAIL where scde_schemeid='+intToStr(li_schemeid));
                          if OraQueryProcess2.FieldByName('testnameid').AsInteger>0 then
                          begin
                          sql.Add(' and SCDE_REFNO='+intToStr(OraQueryProcess2.FieldByName('testnameid').AsInteger));
                          end;
                          Open;
                     end;

                     lf_disper:=OraQueryProcess3.FieldByName('SCDE_OPDISCOUNT').AsFloat;
                     lf_discount:=(OraqueryProcessLog.FieldByName('bide_AMOUNT').AsFloat*lf_disper/100);
                     lf_totalamount:=OraqueryProcessLog.FieldByName('bide_AMOUNT').AsFloat-lf_discount+OraqueryProcessLog.FieldByName('bide_VATAMT').AsFloat;
                     lf_totalamountfornoscheme:= OraqueryProcessLog.FieldByName('bide_AMOUNT').AsFloat+OraqueryProcessLog.FieldByName('bide_VATAMT').AsFloat;
                     lf_totalamountForBillmaster:=lf_totalamount+lf_totalamountForBillmaster;
                     lf_totaldiscountforBillmaster:= lf_discount+ lf_totaldiscountforBillmaster;


                    with OraQueryProcess3 do
                    begin

                         Close;
                         Session:=DM_Hospital.DB;
                         SQL.Clear;
                         if CB_RemoveScheme.Checked=False then
                         Begin
                              SQL.Add(' Update hs_bide_billdetail Set bide_DISSCHEMEID='+IntToStr(li_schemeid));
                              SQL.Add(' ,bide_DISCOMMUNITYID='+IntToStr(li_communityid)+',bide_CRSCHEMEID='+IntToStr(li_schemeid)+',bide_CRCOMMUNITYID='+intToStr(li_communityid));
                              sql.Add(' ,bide_TOTALAMOUNT='+FloatToStr(lf_totalamount)+',bide_DISPER='+floatToStr(lf_disper));
                              sql.Add(' ,bide_DISCOUNT='+floatToStr(lf_discount));
                         End
                         else
                         begin
                              SQL.Add(' Update hs_bide_billdetail Set bide_DISSCHEMEID=0,bide_DISCOMMUNITYID=0,bide_CRSCHEMEID=0,bide_CRCOMMUNITYID=0,bide_DISPER=0,bide_DISCOUNT=0');
                              sql.Add(' ,bide_TOTALAMOUNT='+floatTostr(lf_totalamountfornoscheme));
                         end;
                         sql.Add(' where bide_patientid='+Trim(EditHosNo.Text)+' and bide_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString)+' and bide_service='+QuotedStr(OraqueryProcessLog.FieldByName('bide_service').AsString));
                       //  sql.SaveToFile('C:\bb66.txt');
                         ExecSQL;
                    end;

                    OraqueryProcessLog.Next;
                end;

                with OraQueryProcess3 do
                begin
                    close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.add('update hs_bima_billmaster set bima_DISCOUNTTOTAL='+floatToStr(lf_totaldiscountforBillmaster)+' ,bima_GROSSTOTAL='+floatToStr(lf_totalamountForBillmaster));
                    sql.Add(' where bima_patientid='+Trim(EditHosNo.Text)+' and bima_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString));
                    ExecSQL;
                end;


               DM_Hospital.DB.Commit;
          Except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to Set or Remove Scheme !',mtWarning,[mbOK],0);
               Exit;
          End;
     end
     else if RB_ServiceBilling.Checked=True then
     begin
          Try
               DM_Hospital.DB.StartTransaction;

                with OraqueryProcessLog do
                begin
                     close;
                     Session:=DM_Hospital.DB;
                     sql.Clear;
                     sql.Add('select * from hs_sebd_servicebilldetail where sebd_patientid='+Trim(EditHosNo.Text));
                     sql.Add(' and sebd_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString));
                     open;
                end;

                maxidGlobalLog:=GetMaxId('HS_LOG_GLOBAL','LOG_LOGID');

                if CB_RemoveScheme.Checked=False then
                    ls_LogRemarks:='Set Scheme-> SchemeId='+IntToStr(DBLCB_Scheme.KeyValue)+' For Patient No :'+EditHosNo.Text+
                                        ' BillNo='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString)
                else
                ls_LogRemarks:='Remove Scheme-> Old SchemeId='+IntToStr(OraqueryProcessLog.FieldByName('sebd_DisSchemeId').AsInteger)+' For Patient No :'+EditHosNo.Text+
                                        ' BillNo='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString);


                with OraquerySaveLog do
                begin
                     close;
                     Session:=DM_Hospital.DB;
                     sql.Clear;
                     sql.Add('insert into HS_LOG_GLOBAL values(');
                     sql.Add(IntToStr(maxidGlobalLog)+','+QuotedStr('Service Billing')+','+intToStr(gi_userid));
                     sql.Add(','+QuotedStr(ServerDate.TodaysDate)+','+QuotedStr(ServerDate.TodaysTime)+','+QuotedStr(ls_LogRemarks)+','+QuotedStr(gs_MacID));
                     sql.Add(' )');
                     ExecSQL;
                end;


                while not OraqueryProcessLog.Eof do
                begin

                    with OraQueryProcess2 do
                    begin
                         close;
                         Session:=DM_Hospital.DB;
                         sql.Clear;
                         sql.Add('select nvl(tena_testnameid,0)testnameid from hs_tena_testname where tena_testnamecode='+QuotedStr(OraqueryProcessLog.FieldByName('sebd_Service').AsString));
                         Open;
                    end;

                     with OraQueryProcess3 do
                     begin
                          close;
                          Session:=DM_Hospital.DB;
                          sql.Clear;
                          sql.Add('select * from HS_SCDE_SCHEMEDETAIL where scde_schemeid='+intToStr(li_schemeid));
                          if OraQueryProcess2.FieldByName('testnameid').AsInteger>0 then
                          begin
                          sql.Add(' and SCDE_REFNO='+intToStr(OraQueryProcess2.FieldByName('testnameid').AsInteger));
                          end;
                         // sql.SaveToFile('C:\abc22.txt');
                          Open;
                     end;

                     lf_disper:=OraQueryProcess3.FieldByName('SCDE_OPDISCOUNT').AsFloat;
                     lf_discount:=(OraqueryProcessLog.FieldByName('SEBD_AMOUNT').AsFloat*lf_disper/100);
                     lf_vatAmt:=(OraqueryProcessLog.FieldByName('SEBD_AMOUNT').AsFloat-lf_discount)*13/100;
                     lf_totalamount:=OraqueryProcessLog.FieldByName('SEBD_AMOUNT').AsFloat-lf_discount+lf_vatAmt;
                     lf_totalamountfornoscheme:= OraqueryProcessLog.FieldByName('SEBD_AMOUNT').AsFloat+lf_vatAmt;
                     lf_totalamountForBillmaster:=lf_totalamount+lf_totalamountForBillmaster;
                     lf_totaldiscountforBillmaster:= lf_discount+ lf_totaldiscountforBillmaster;


                     With Query_Process do
                    begin
                         Close;
                         Session:=DM_Hospital.DB;
                         SQL.Clear;
                         if CB_RemoveScheme.Checked=False then
                         Begin
                              SQL.Add(' Update hs_sebd_servicebilldetail Set SEBD_DISSCHEMEID='+IntToStr(li_schemeid));
                              SQL.Add(' ,SEBD_DISCOMMUNITYID='+IntToStr(li_communityid)+',SEBD_CRSCHEMEID='+IntToStr(li_schemeid)+',SEBD_CRCOMMUNITYID='+intToStr(li_communityid));
                              sql.Add(' ,SEBD_TOTALAMOUNT='+FloatToStr(lf_totalamount)+',SEBD_DISPER='+floatToStr(lf_disper));
                              sql.Add(' ,SEBD_DISCOUNT='+floatToStr(lf_discount)+', SEBD_VATAMT='+FloatToStr(lf_vatAmt));
                         End
                         else
                         begin
                              SQL.Add(' Update hs_sebd_servicebilldetail Set SEBD_DISSCHEMEID=0,SEBD_DISCOMMUNITYID=0,SEBD_CRSCHEMEID=0,SEBD_CRCOMMUNITYID=0,SEBD_DISPER=0,SEBD_DISCOUNT=0');
                              sql.Add(' ,SEBD_TOTALAMOUNT='+floatTostr(lf_totalamountfornoscheme)+', SEBD_VATAMT='+FloatToStr(lf_vatAmt));
                         end;
                         sql.Add(' where sebd_patientid='+Trim(EditHosNo.Text)+' and sebd_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString)+' and sebd_service='+QuotedStr(OraqueryProcessLog.FieldByName('sebd_service').AsString));
                       //  sql.SaveToFile('C:\abc66.txt');
                         ExecSQL;

                    end;

                    OraqueryProcessLog.Next;
                end;


                with OraQueryProcess3 do
                begin
                    close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    sql.add('update hs_sebm_servicebillmaster set SEBM_DISCOUNTTOTAL='+floatToStr(lf_totaldiscountforBillmaster)+' ,SEBM_GROSSTOTAL='+floatToStr(lf_totalamountForBillmaster));
                    sql.Add(' where sebm_patientid='+Trim(EditHosNo.Text)+' and sebm_billno='+QuotedStr(Query_BillDetail.FieldByName('billno').AsString));
                    ExecSQL;
                end;

               DM_Hospital.DB.Commit;
          Except
               DM_Hospital.DB.Rollback;
               MessageDlg('Failure to Set or Remove Scheme !',mtWarning,[mbOK],0);
               Exit;
          End;

     end;

     ShowDoneMessage;
     GetPatientInfo;
     lf_discount:=0.0;
     lf_disper:=0.0;
     lf_totalamount:=0.0;
     lf_totalamountfornoscheme:=0.0;
     lf_totalamountForBillmaster:=0.0;
     lf_totaldiscountforBillmaster:=0.0;


     OraqueryProcessLog.free;
     OraquerySaveLog.free;
     Query_BillDetail.Locate('Billno','billno',[]);
end;

procedure TForm_PatientSchemeRectification.CB_RemoveSchemeClick(Sender: TObject);
begin
     if CB_RemoveScheme.Checked=False then
     Begin
          DBLCB_Scheme.Enabled:=True;
          DBLCB_Scheme.Color:=clWhite;

          Label100.Enabled:=True;
     End
     Else
     Begin
          DBLCB_Scheme.Enabled:=False;
          DBLCB_Scheme.Color:=clMenu;
          DBLCB_Scheme.KeyValue:=-1;
          Label100.Enabled:=False;
     End;
end;

procedure TForm_PatientSchemeRectification.EditHosNoExit(Sender: TObject);
begin
     IF (Trim(EditHosNo.Text)<>'') and (EditHosNo.Text<>'0') Then
     //SBSearchClick(Sender);
end;

Procedure TForm_PatientSchemeRectification.GetPatientInfo;
Begin
     IF (Trim(EditHosNo.Text)='') or (EditHosNo.Text='0') Then
     Begin
          MessageDlg('Please enter the Patient no.',mtInformation,[mbok],0);
          Exit;
     End;


     IF IsRegisteredHospitalNo(StrToInt(EditHosNo.Text))=False Then
     Begin
          MessageDlg('Sorry ! Please Check Hospital No Properly. Anybody is Not Registered With This Number( '+EditHosNo.Text+').',
          mtWarning,[mbok],0);
          Exit;
     End;

     CB_RemoveScheme.Checked:=False;
     DBLCB_Scheme.KeyValue:=-1;

     LoadPatientData(StrToInt(EditHosNo.Text));
     pi_PatientId:=StrToInt(EditHosNo.Text);

     Lbl_Name.Caption:=Gs_PatientName;
     Lbl_AgeSex.Caption:=Gs_CurrentAgeGender;               //Gs_CurrentAge+'/'+Copy(Gs_Gender,1,1);
     Lbl_Address.Caption:=Gs_FullAddress;
     if (Trim(Gs_PhoneNo)<>'') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_PhoneNo
     else if (Trim(Gs_PhoneNo)='') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_MobileNo
     else if (Trim(Gs_PhoneNo)<>'') and (Trim(Gs_MobileNo)='') then
     Lbl_ContactNo.Caption:=Gs_MobileNo+' / '+Gs_PhoneNo
     else
     Lbl_ContactNo.Caption:=Gs_MobileNo;


     With Query_BillDetail do
     Begin
          Close;
          Session:=DM_Hospital.DB;
          sql.clear;
          if RB_DirectBilling.Checked=True then
          begin
               sql.Add('select distinct bide_billdate billdate,bide_billno billno,bide_billtime billtime,(select username from lab_usermain where userid=BIDE_BILLBY and rownum=1)BILLBY,');
               sql.Add('(select SCHE_SCHEME from HS_SCHE_SCHEME where SCHE_SCHEMEID=BIDE_DISSCHEMEID)schemename,BIDE_DISSCHEMEID,BIDE_DISCOMMUNITYID,(select COMM_COMMUNITY from HS_COMM_COMMUNITY where COMM_COMMUNITYID=BIDE_DISCOMMUNITYID)Communityname');
               sql.Add(' from hs_bide_billdetail where bide_patientid='+Trim(EditHosNo.Text)+' Order by billdate,billtime desc');

          end
          else if RB_ServiceBilling.Checked=True then
          begin
               sql.Add('select distinct sebd_billdate billdate,sebd_billno billno,sebd_billtime billtime,(select username from lab_usermain where userid=sebd_BILLBY and rownum=1)BILLBY,');
               sql.Add('(select SCHE_SCHEME from HS_SCHE_SCHEME where SCHE_SCHEMEID=SEBD_DISSCHEMEID)schemename,SEBD_DISSCHEMEID,SEBD_DISCOMMUNITYID,(select COMM_COMMUNITY from HS_COMM_COMMUNITY where COMM_COMMUNITYID=SEBD_DISCOMMUNITYID)Communityname');
               sql.Add(' from hs_SEBD_Servicebilldetail where sebd_patientid='+Trim(EditHosNo.Text)+' and SEBD_BILLDETAILID<=0  Order by billdate,billtime desc');

          end;
         // sql.SaveToFile('C:\abc5555.txt');
          Open;
     End;





  //   StatusBar1.Panels[1].Text:='Total No Of Visit : '+IntToStr(Query_PatientVisit.RecordCount);

     Label100.Enabled:=True;
     DBLCB_Scheme.Enabled:=True;
     CB_RemoveScheme.Enabled:=True;
     BtnSave.Enabled:=True;
End;

procedure TForm_PatientSchemeRectification.RB_DirectBillingClick(
  Sender: TObject);
begin
     if RB_DirectBilling.Checked=True then
     RB_ServiceBilling.Checked:=False
     else
     RB_ServiceBilling.Checked:=True;
end;

procedure TForm_PatientSchemeRectification.RB_ServiceBillingClick(
  Sender: TObject);
begin
     if RB_ServiceBilling.Checked=True then
     RB_DirectBilling.Checked:=False
     else
     RB_DirectBilling.Checked:=True;
end;

procedure TForm_PatientSchemeRectification.SBSearchClick(Sender: TObject);
begin
     GetPatientInfo;
end;

procedure TForm_PatientSchemeRectification.FormShow(Sender: TObject);
begin
     Query_Scheme.Close;
     Query_Scheme.Open;
     DBLCB_Scheme.KeyValue:=-1;
     Label4.Caption:=Gs_HosNoCaptionName;
     EditHosNo.SetFocus;
end;

END.
