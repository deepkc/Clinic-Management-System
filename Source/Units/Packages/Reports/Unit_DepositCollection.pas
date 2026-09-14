unit Unit_DepositCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dm,Fxn,ServerDate,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, OleCtrls, DateEditXControl_TLB,Unit_QrPaymentDues,
  DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_DepositCollection = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox_DepositCollection: TGroupBox;
    RB_DepositCollection: TRadioButton;
    RB_AdjustedDeposit: TRadioButton;
    RB_OutstandingDeposit: TRadioButton;
    Label_User: TLabel;
    DBLookupComboBox_User: TDBLookupComboBox;
    lbl_FromDate: TLabel;
    lbl_ToDate: TLabel;
    DateEditxFrom: TDateEditX;
    DateEditXTo: TDateEditX;
    btnfrom: TSpeedButton;
    btnto: TSpeedButton;
    DS_User: TDataSource;
    Query_User: TOraQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnfromClick(Sender: TObject);
    procedure btntoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure RB_OutstandingDepositClick(Sender: TObject);
    procedure RB_AdjustedDepositClick(Sender: TObject);
    procedure RB_DepositCollectionClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DepositCollection: TForm_DepositCollection;

implementation

uses Unit_RepDepositCollection, Unit_RepDepositTotalCollection,
  Unit_RepAdjustedDeposit;

{$R *.dfm}

procedure TForm_DepositCollection.BitBtn1Click(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     gs_From := DateEditxFrom.text;
     gs_to := DateEditXTo.text;
     //DateEditxFrom.SystemOfDate := 0;
     //DateEditXTo.SystemOfDate := 0;
     //BtnFrom.Caption := 'BS';
     //BtnTo.Caption := 'BS';

    {if (RB_DepositCollection.Checked = True) and (DBLookupComboBox_User.KeyValue = Null) then
     begin
          ShowMessage('Please Select the User');
          DBLookupComboBox_User.SetFocus;
          exit;
     end
     else if (RB_AdjustedDeposit.Checked = True) and (DBLookupComboBox_User.KeyValue = Null) then
     begin
          ShowMessage('Please Select the User');
          DBLookupComboBox_User.SetFocus;
          exit;
     end
     else if (RB_OutstandingDeposit.Checked = True) and (DBLookupComboBox_User.KeyValue = Null) then
     begin
          ShowMessage('Please Select the User');
          DBLookupComboBox_User.SetFocus;
          exit;
     end;}

    if RB_OutstandingDeposit.Checked= true then
    begin
          Form_RepPAymentDues := TForm_RepPAymentDues.Create(Nil);
          With Form_RepPAymentDues Do
          begin

               with QueryDue do
               begin
                    Close;
                    Session:=DM_Hospital.DB;
                    //SQL.Clear;
                    SQL[8]:='And BIDE_BillDate<=' + #39 + gs_to + #39;
                    Open;
               end;

               QRLabelDate.Caption := serverdate.TodaysDate;
               QRLabelTime.Caption := serverdate.TodaysTime;
               Date1.Caption := DateEditxFrom.text;
               Date2.Caption := DateEditXTo.text;
               QuickRep_PaymentDues.Preview;
               QueryDue.close;
          end;
    end
    else if RB_DepositCollection.Checked= True then
         begin
             Form_RepDepositTotalCollection:= TForm_RepDepositTotalCollection.create(Nil);
             with Form_RepDepositTotalCollection do
             begin
                 With QueryDeposit Do
                    Begin
                         close;
                         Session:=DM_Hospital.DB;
                         Sql.Clear;
                         Sql.Add('select CRPM_CRBILLNODETAIL BILLNO,Sum(CRPM_ReceiptAmount)as Dr,CRPM_ReceiptDate BillDAte,CRPM_RECEIPTTIME BillTime,(Select UserName From LAB_UserMain where userId=cp.CRPM_RECEIPTBY)BillByUser');
                         Sql.Add('From HS_CRPM_creditpaymentmaster Cp ');
                         Sql.Add('where CRPM_RECEIPTDATE>=' + #39 + gs_From + #39 + ' And CRPM_RECEIPTDATE<=' + #39 + gs_to + #39);
                         Sql.Add('group by CRPM_ReceiptDate,CRPM_CRBILLNODETAIL,CRPM_RECEIPTTIME,CRPM_RECEIPTBY');
                         //SQL.SaveToFile('c:\collectionreport.txt');
                         Open;
                    End;

                    QRLabelUser.Caption := DBLookupComboBox_User.text;
                    QRLabelDate.Caption := serverdate.TodaysDate;
                    QRLabelTime.Caption := serverdate.TodaysTime;
                    Date1.Caption := DateEditxFrom.text;
                    Date2.Caption := DateEditXTo.text;
                    QuickRep_DepositTotalcollection.Preview;
                    QueryCollection.close;
                    QueryCredit.close;
                    QueryDeposit.close;
                    QueryName.close;
                    QueryTimeRange.close;
                    QueryRefund.close;
             end;
         end
         else if RB_AdjustedDeposit.Checked= True then
         begin
             Form_RepAdjustedDeposit:= TForm_RepAdjustedDeposit.create(Nil);
             with Form_RepAdjustedDeposit do
             begin
                 With QueryAdvanceRefund Do
                    Begin
                         close;
                         Session:=DM_Hospital.DB;
                         Sql.Clear;
                         Sql.Add('Select PatientId,PatientName,Sum(CRAmount) as CR,BillDate as ModifyDate,BillTime as ModifyTime,BillNo,billbyuser,referenceno,billdate');
                         Sql.Add('From VW_User_Wise_Coll_Detail Where((BillDAte>=' + #39 + gs_From + #39 + ') AND(BillDate<=' + #39 +
                                gs_to + #39 + ')) and CRAmount > 0');
                         {if DBLookupComboBox_User.Text<>'' then
                         begin
                            Sql.Add('And(BillBy=' + IntToStr(DBLookupComboBox_User.KeyValue) + ')');
                         end;}
                         Sql.Add('group by patientid,PatientName, billdate, billtime,billno,billbyuser,referenceno,billdate');
                         SQL.SaveToFile('c:\asdf.txt');
                         Open;
                    end;

                    QRLabelUser.Caption := DBLookupComboBox_User.text;
                    QRLabelDate.Caption := serverdate.TodaysDate;
                    QRLabelTime.Caption := serverdate.TodaysTime;
                    Date1.Caption := DateEditxFrom.text;
                    Date2.Caption := DateEditXTo.text;
                    QuickRep_AdjustedDeposit.Preview;
                    QueryCollection.close;
                    QueryCredit.close;
                    QueryDeposit.close;
                    QueryName.close;
                    QueryTimeRange.close;
                    QueryRefund.close;
             end;
         end;

end;

procedure TForm_DepositCollection.BitBtn3Click(Sender: TObject);
begin
    Close;
end;

procedure TForm_DepositCollection.btnfromClick(Sender: TObject);
begin
    ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TForm_DepositCollection.btntoClick(Sender: TObject);
begin
    ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TForm_DepositCollection.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if KEY=27 then
     Close;
end;

procedure TForm_DepositCollection.FormShow(Sender: TObject);
begin
    DateEditxFrom.SystemOfDate := gi_datesystem;
    DateEditxFrom.text:= ServerDate.TodaysDate;
    DateEditXTo.SystemOfDate := gi_datesystem;
    DateEditXTo.text:= ServerDate.TodaysDate;
    //DateEditxFrom.SystemOfDate := 0;
    //DateEditXTo.SystemOfDate := 0;
    BtnFrom.Caption :=gs_DateCaption;// 'BS';
    BtnTo.Caption :=gs_DateCaption;// 'BS';
    //RB_DepositCollection.Checked:= True;
    with Query_User do
    begin
          close;
          Session:=DM_Hospital.DB;
          Open;
    end;
end;

procedure TForm_DepositCollection.RB_AdjustedDepositClick(Sender: TObject);
begin
    if RB_AdjustedDeposit.Checked then
    Begin
          //DBLookupComboBox_User.Color:=clWhite;
          //DBLookupComboBox_User.Enabled:=True;
          //DBLookupComboBox_User.KeyValue:=NULL;
          //Label_User.Enabled:=False;
          lbl_FromDate.Caption:='From Date :';
     End;
     lbl_ToDate.Visible:=True;
     DateEditXTo.Visible:=True;
     btnto.Visible:=True;
end;

procedure TForm_DepositCollection.RB_DepositCollectionClick(Sender: TObject);
begin


    if RB_DepositCollection.Checked then
    begin
          //DBLookupComboBox_User.Color:=clWhite;
          //DBLookupComboBox_User.Enabled:=True;
          //DBLookupComboBox_User.KeyValue:=NULL;
          //Label_User.Enabled:=True;
          lbl_FromDate.Caption:='From Date :';
    end;
end;

procedure TForm_DepositCollection.RB_OutstandingDepositClick(Sender: TObject);
begin
    if RB_OutstandingDeposit.Checked then
    Begin
          //DBLookupComboBox_User.Color:=clMenu;
          //DBLookupComboBox_User.Enabled:=False;
          //DBLookupComboBox_User.KeyValue:=NULL;
          //Label_User.Enabled:=False;
          lbl_ToDate.Visible:=False;
          DateEditXTo.Visible:=False;
          btnto.Visible:=False;
          lbl_FromDate.Caption:='Till Date :';
     End;
end;

end.
