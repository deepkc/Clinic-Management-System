unit Unit_TempBillingFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn,dm,ServerDate,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TFrame_TempBilling = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label27: TLabel;
    lbl_Total: TLabel;
    Label13: TLabel;
    Lbl_Dis: TLabel;
    Label15: TLabel;
    Lbl_SubTotal: TLabel;
    Label17: TLabel;
    Lbl_SvrTax: TLabel;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    Edit_TestName: TEdit;
    Edit_Qty: TEdit;
    DBGrid1: TDBGrid;
    Edit_Doccode: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DBGrid_Search: TDBGrid;
    Query_TestName: TOraQuery;
    DS_Testname: TDataSource;
    Table_TempBilling: TOraTable;
    DS_Tempbilling: TDataSource;
    Label1: TLabel;
    Lbl_GrandTotal: TLabel;
    Label8: TLabel;
    Lbl_Disper: TLabel;
    Le_Remarks: TLabeledEdit;
    GroupBox4: TGroupBox;
    SP_PatientSearch: TSpeedButton;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditPsearch: TLabeledEdit;
    CB_Scheme: TCheckBox;
    CB_BillType: TComboBox;
    DBLCB_Community: TDBLookupComboBox;
    DBLCB_Scheme: TDBLookupComboBox;
    LabeledEdit9: TLabeledEdit;
    Label4: TLabel;
    DBLCB_RefDocCode: TDBLookupComboBox;
    Label12: TLabel;
    LabelCB: TLabel;
    Label11: TLabel;
    LabelDepTotal: TLabel;
    Label19: TLabel;
    lbl_TotalItems: TLabel;
    Label21: TLabel;
    Lbl_BillNo: TLabel;
    SpeedButton2: TSpeedButton;
    BitBtn_BringPending: TSpeedButton;
    BitBtnPending: TSpeedButton;
    CB_DirectDiscountSet: TCheckBox;
    LabeledEdit2: TLabeledEdit;
    Edit3: TEdit;
    Label7: TLabel;
    Label3: TLabel;
    CB_Paytype: TComboBox;
    Edit4: TEdit;
    DS_Community: TDataSource;
    QueryCommunity: TOraQuery;
    DS_Scheme: TDataSource;
    QueryScheme: TOraQuery;
    DS_RefDoc: TDataSource;
    QueryRefDoc: TOraQuery;
    procedure Edit_TestNameChange(Sender: TObject);
    procedure Edit_TestNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid_SearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_TestNameExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit_QtyKeyPress(Sender: TObject; var Key: Char);
    procedure BB_SaveClick(Sender: TObject);
    procedure DBLCB_CommunityClick(Sender: TObject);
    procedure CB_SchemeClick(Sender: TObject);
  private
     pf_total,pf_Dis,pf_disper,pf_subtotal,pf_svrtax,pf_grandtotal:Double;
     pi_TotalItems:integer;
    { Private declarations }
    procedure SaveServiceBill;
    procedure SaveServiceBill_Detail;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent) ; override;
    procedure CreateTableTempBilling;
  end;

implementation

//Function MsgBox(MsgCode,BoxType:integer;param1,param2,param3:string):Boolean;stdcall; external 'Global.bpl';
//Function TodaysDate:String;Stdcall;external 'Global.bpl';
//Function TodaysDateVS:String;Stdcall;external 'Global.bpl';
//Function TodaysTime:String;Stdcall;external 'Global.bpl';
//Procedure ShowDoneMessage;stdcall; external 'Global.bpl';

Procedure SaveServiceBillMaster(PATIENTID,INPATIENTID,BILLBY : Integer;
                              GROSSTOTAL,TAXAMT,DISCOUNTTOTAL : Double;
                              INITIAL,BILLDATE,BILLTIME,REFDOCCODE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE
                              ,REMARKS,MACID:String);stdcall;external'MidasFunction.bpl';
Procedure SaveServiceBillDetail(PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID
                              ,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE
                              ,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;external'MidasFunction.bpl';
Procedure SavePatientTest(RefPatientTestId,BillDetailID,ServiceBillDetailid,PatientID,InPatientId,DepID,TestNameID
                         ,PRINTCOUNT,DataPostBy,TestProgressStatus,SyncStatus,ControlStatus:Integer;
                         TestAmount:Double;BillNo,DOCCODE,TestNameCode,TestDate,TestTime,PayStatus
                         ,REMARKS,WorkingStatus,DATAPOSTDate,DataPostTime:String);Stdcall;external'MidasFunction.bpl';

{$R *.dfm}

procedure TFrame_TempBilling.BB_SaveClick(Sender: TObject);
begin
     if Table_TempBilling.Recordcount=0 then
     begin
          MsgBox(1006,0,'','','');
          exit;
     end;
     SaveServiceBill;
end;

procedure TFrame_TempBilling.CB_SchemeClick(Sender: TObject);
begin
     if CB_Scheme.Checked=true then
     begin
          DBLCB_Community.Enabled:=true;
          DBLCB_Scheme.Enabled:=true;
          QueryCommunity.Close;
          QueryCommunity.Open;
     end
     else
     begin
          DBLCB_Community.Enabled:=false;
          DBLCB_Scheme.Enabled:=false;
     end;

end;

constructor TFrame_TempBilling.Create(AOwner: TComponent);
begin
  inherited;
     CreateTableTempBilling;
     CB_BillType.ItemIndex:=0;
     CB_Paytype.ItemIndex:=0;
     pi_TotalItems:=0;
     QueryRefDoc.Close;
     QueryRefDoc.Open;
     pf_total:=0;
     pf_Dis:=0;
     pf_disper:=0;
     pf_subtotal:=0;
     pf_svrtax:=0;
     pf_grandtotal:=0;
end;

procedure TFrame_TempBilling.CreateTableTempBilling;
begin
     if FileExists(gs_temppath+'\TempBilling.db')  then
     begin
          with Table_TempBilling do
          begin
               Close;
               DatabaseName:=gs_temppath;
               TableName:='TempBilling.db';
               DeleteTable;
          end;
     end;
     with Table_TempBilling do
     begin
          Close;
          DatabaseName:=gs_temppath;
          TableType:=ttDefault;
          TableName:='TempBilling.db';
          FieldDefs.Clear;
          FieldDefs.Add('DepID',ftInteger);
          FieldDefs.Add('TestNameID',ftInteger);
          FieldDefs.Add('Doccode',ftString,32);
          FieldDefs.Add('TestNameCode',ftString,32);
          FieldDefs.Add('TestName',ftString,32);
          FieldDefs.Add('TestPrice',ftFloat);
          FieldDefs.Add('TestPriceWithTax',ftFloat);
          FieldDefs.Add('TotalPrice',ftFloat);
          FieldDefs.Add('Qty',ftFloat);
          FieldDefs.Add('SvrTax',ftFloat);
          FieldDefs.Add('NetTotal',ftFloat);
          CreateTable;
          Open;
     end;

end;

procedure TFrame_TempBilling.DBGrid_SearchKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key=13 then
     begin
          Edit_TestName.Text:=Query_TestName.FieldByName('TestName').AsString;
          DBGrid_Search.Visible:=false;
     end;
end;

procedure TFrame_TempBilling.DBLCB_CommunityClick(Sender: TObject);
begin
     with QueryScheme do
     begin
          Close;
          sql[1]:='Where CommunityID='+IntToStr(DBLCB_Community.KeyValue);
          Open;
     end;
end;

procedure TFrame_TempBilling.Edit_QtyKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     SpeedButton1Click(Sender);
end;

procedure TFrame_TempBilling.Edit_TestNameChange(Sender: TObject);
begin
     with DBGrid_Search do
     begin
          left:=76;
          top:=109;
          Visible:=true;
     end;
     with Query_TestName do
     begin
          Close;
          SQL[1]:='Where TestName like'+#39+Trim(Edit_TestName.Text)+'%'+#39;
          Open;
     end;
end;

procedure TFrame_TempBilling.Edit_TestNameExit(Sender: TObject);
begin
     DBGrid_Search.Visible:=false;
end;

procedure TFrame_TempBilling.Edit_TestNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key=vk_up then
     Query_TestName.Prior;
     if key=vk_down then
     Query_TestName.Next;
     if key=13 then
     begin
          Edit_TestName.Text:=Query_TestName.FieldByName('TestName').AsString;
          DBGrid_Search.Visible:=false;
     end;
end;

procedure TFrame_TempBilling.SaveServiceBill;
begin
     {Save Bill Master}
     try
     DM_Hospital.DB.StartTransaction;
          try
               SaveServiceBill_Detail;
          except
               SaveServiceBill_Detail;
          end;
     DM_Hospital.DB.Commit;
     ShowDoneMessage;
     Lbl_BillNo.Caption:=Gs_BillNo;
     except
     DM_Hospital.DB.Rollback;
     end;
end;

procedure TFrame_TempBilling.SaveServiceBill_Detail;
Var
     ls_billdate:String;
     ls_RefDocCode:String;
     Qty,I,li_Community,li_Scheme:Integer;
begin
     if gi_datesystem=0 then
     ls_billdate:=TodaysDateVS
     else
     ls_billdate:=TodaysDate;
     if DBLCB_RefDocCode.KeyValue=null then
     ls_RefDocCode:=''
     else
     ls_RefDocCode:=DBLCB_RefDocCode.KeyValue;
     if DBLCB_Community.KeyValue=null then
     li_Community:=0
     else
     li_Community:=DBLCB_Community.KeyValue;
     if DBLCB_Scheme.KeyValue=null then
     li_Scheme:=0
     else
     li_Scheme:=DBLCB_Scheme.KeyValue;
     SaveServiceBillMaster(gi_PatientID,gi_InPatientID,gi_UserID
                                   ,pf_grandtotal,pf_svrtax,pf_Dis
                                   ,'TP',ls_billdate,TodaysTime,ls_RefDocCode,'B',CB_Paytype.Text
                                   ,CB_BillType.Text,'GENERAL'
                                   ,Le_Remarks.Text,gs_MacID);
     with Table_TempBilling do
     begin
          Close;
          Open;
          while not eof do
          begin
               Qty:=FieldByName('Qty').AsInteger;
               SaveServiceBillDetail(gi_PatientID,gi_InPatientID,Gi_PatientTestId,gi_UserID,li_Community
                         ,li_Scheme,FieldByName('DepID').AsInteger,0
                         ,0
                         ,FieldByName('TestPrice').AsFloat,Qty
                         ,FieldByName('SvrTax').AsFloat,FieldByName('NetTotal').AsFloat,0,0
                         ,gs_billno,ls_billdate,TodaysTime,FieldByName('TestNameCode').AsString
                         ,FieldByName('TestName').AsString,'GENERAL',CB_Paytype.Text,CB_BillType.Text,'B'
                         ,Gs_MemberNo,FieldByName('Doccode').AsString,ls_RefDocCode,''
                         ,'','','');
               if Qty>1 then
               begin
                    for i := 0 to qty - 1 do
                    begin
                         SavePatientTest(0,0,gi_ServiceBillDetailid,gi_PatientID,gi_InPatientID,FieldByName('DepID').AsInteger
                                        ,FieldByName('TestNameID').AsInteger,0,gi_UserID,gi_Recommendation
                                        ,gi_DoNotSync,gi_BillingInvCtrl
                                        ,FieldByName('TestPrice').AsFloat
                                        ,Gs_BillNo,FieldByName('Doccode').AsString,FieldByName('TestNameCode').AsString
                                        ,ls_billdate,TodaysTime,CB_Paytype.Text,Le_Remarks.Text,'RE',ls_billdate,TodaysTime);
                    end;
               end
               else
                    SavePatientTest(0,0,gi_ServiceBillDetailid,gi_PatientID,gi_InPatientID,FieldByName('DepID').AsInteger
                                        ,FieldByName('TestNameID').AsInteger,0,gi_UserID,gi_Recommendation
                                        ,gi_DoNotSync,gi_BillingInvCtrl
                                        ,FieldByName('TestPrice').AsFloat
                                        ,Gs_BillNo,FieldByName('Doccode').AsString,FieldByName('TestNameCode').AsString
                                        ,ls_billdate,TodaysTime,CB_Paytype.Text,Le_Remarks.Text,'RE',ls_billdate,TodaysTime);
               Next;
          end;
     end;
end;

procedure TFrame_TempBilling.SpeedButton1Click(Sender: TObject);
Var
     Qty,TestPrice,TestPriceWithTax,SvrTax:Double;
begin
     with Table_TempBilling do
     begin
          Close;
          TableName:='TempBilling.db';
          DatabaseName:=gs_temppath;
          Open;
     end;
     if (Edit_TestName.Text='') or (Edit_Qty.Text='') then
     begin
          MsgBox(1006,0,'','','');
          exit;
     end;

     Qty:=StrToFloat(Edit_Qty.Text);
     TestPrice:=Query_TestName.FieldByName('TestPrice').AsFloat;
     TestPriceWithTax:=Query_TestName.FieldByName('TotalPrice').AsFloat;
     SvrTax:=Query_TestName.FieldByName('Tax').AsFloat;
     with Table_TempBilling do
     begin
          Append;
          FieldByName('DepID').AsInteger:=Query_TestName.FieldByName('DepID').AsInteger;
          FieldByName('TestNameID').AsInteger:=Query_TestName.FieldByName('TestNameID').AsInteger;
          FieldByName('Doccode').AsString:='HOS';
          FieldByName('TestNameCode').AsString:=Query_TestName.FieldByName('TestNameCode').AsString;
          FieldByName('TestName').AsString:=Query_TestName.FieldByName('TestName').AsString;
          FieldByName('TestPrice').AsFloat:=TestPrice;
          FieldByName('TestPriceWithTax').AsFloat:=TestPriceWithTax;
          FieldByName('TotalPrice').AsFloat:=StrToFloat(FormatFloat('#0.00',(TestPriceWithTax*Qty)));;
          FieldByName('SvrTax').AsFloat:=SvrTax;
          FieldByName('Qty').AsFloat:=Qty;
          FieldByName('NetTotal').AsFloat:=StrToFloat(FormatFloat('#0.00',(TestPriceWithTax*Qty)));
          Post;
          pi_TotalItems:=pi_TotalItems+1;
          lbl_TotalItems.Caption:=IntToStr(pi_TotalItems);
     end;
     {-------------------------------------------}
     pf_total:=pf_total+(TestPrice*qty);
     pf_subtotal:=pf_total;
     pf_svrtax:=pf_svrtax+(SvrTax*Qty);
     pf_grandtotal:=pf_subtotal+pf_svrtax;

     lbl_Total.Caption:=FormatFloat('#0,0.00',pf_total);
     Lbl_Dis.Caption:='0.00';
     Lbl_Disper.Caption:='0.00';
     Lbl_SubTotal.Caption:=FormatFloat('#0,0.00',pf_subtotal);
     Lbl_SvrTax.Caption:=FormatFloat('#0,0.00',pf_svrtax);
     Lbl_GrandTotal.Caption:=FormatFloat('#0,0.00',pf_grandtotal);
     {-------------------------------------------}
     Edit_TestName.Clear;
     Edit_Qty.Clear;
     Table_TempBilling.Close;
     Table_TempBilling.Open;
     Edit_Doccode.SetFocus;
end;

end.
