unit Unit_CreditPaymentDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, DateEditXControl_TLB, StdCtrls, Buttons, ExtCtrls,Serverdate,Fxn,
  DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_CreditPaymentDetail = class(TForm)
    Panel1: TPanel;
    lbl_FromDate: TLabel;
    lbl_ToDate: TLabel;
    btnfrom: TSpeedButton;
    btnto: TSpeedButton;
    Panel2: TPanel;
    Bb_preview: TBitBtn;
    Bb_cancel: TBitBtn;
    BitBtn1: TBitBtn;
    DateEditxFrom: TDateEditX;
    DateEditXTo: TDateEditX;
    Query_creditPayment: TOraQuery;
    Query_ReceiptRefund: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure Bb_cancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Bb_previewClick(Sender: TObject);
    procedure btnfromClick(Sender: TObject);
    procedure btntoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Pb_Sendtoexcel:Boolean;
  end;

var
  Form_CreditPaymentDetail: TForm_CreditPaymentDetail;

implementation

uses unitsendtoexcel,DM;

{$R *.dfm}

procedure TForm_CreditPaymentDetail.Bb_cancelClick(Sender: TObject);
begin
     close;
end;

procedure TForm_CreditPaymentDetail.Bb_previewClick(Sender: TObject);
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
     with Query_creditPayment Do
     Begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Select CRPM_CRBILLNODETAIL,(Select username from lab_usermain where userid=CM.CRPM_RECEIPTBY)receiptby,');
          sql.Add('(Select SCHE_scheme from HS_SCHE_scheme where SCHE_schemeid=CM.CRPM_schemeid)scheme,');
          sql.Add('sum(CRPM_receiptamount)receiptamount,sum(CRPM_RECEIPTDISCOUNT)RECEIPTDISCOUNT ');
          sql.Add('from HS_CRPM_CREDITPAYMENTMASTER CM');
          sql.Add('where CRPM_receiptdate>='+quotedstr(gs_From)+' and CRPM_receiptdate<='+quotedstr(gs_to));
          //sql.Add('and paytype<>''REFUND'' ');
          sql.Add('Group by CRPM_CRBILLNODETAIL,CRPM_RECEIPTBY,CRPM_schemeid');
          //sql.SaveToFile('c:\1.txt');
          Open;
     End;
     with Query_ReceiptRefund Do
     Begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Select CRPM_CRBILLNODETAIL,(Select username from lab_usermain where userid=CM.CRPM_RECEIPTBY)receiptby,');
          sql.Add('(Select SCHE_scheme from HS_SCHE_scheme where SCHE_schemeid=CM.CRPM_schemeid)scheme,');
          sql.Add('sum(CRPM_receiptamount)receiptamount,sum(CRPM_RECEIPTDISCOUNT)RECEIPTDISCOUNT ');
          sql.Add('from HS_CRPM_CREDITPAYMENTMASTER CM');
          sql.Add('where CRPM_receiptdate>='+quotedstr(gs_From)+' and CRPM_receiptdate<='+quotedstr(gs_to));
          sql.Add('and CRPM_paytype=''REFUND'' ');
          sql.Add('Group by CRPM_CRBILLNODETAIL,CRPM_RECEIPTBY,CRPM_schemeid');
          //sql.SaveToFile('c:\2.txt');
          Open;
     End;

     if Pb_Sendtoexcel then
     Begin
          Pb_Sendtoexcel:=False;
          SendToExcelsMultiQueryKPL(Query_creditPayment,Query_ReceiptRefund,NIL,NIL,NIL,NIL,'Credit Payment Detail','Receipt Refund','','','','',
               TodaysDate, '', gs_HospitalName, gs_HospitalAddress,2,2);
     End;
end;

procedure TForm_CreditPaymentDetail.BitBtn1Click(Sender: TObject);
begin
     Pb_Sendtoexcel:=true;
     Bb_previewClick(Sender);
end;

procedure TForm_CreditPaymentDetail.btnfromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TForm_CreditPaymentDetail.btntoClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TForm_CreditPaymentDetail.FormShow(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditxFrom.text:= ServerDate.TodaysDate;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditXTo.text:= ServerDate.TodaysDate;
     //DateEditxFrom.SystemOfDate := 0;
     //DateEditXTo.SystemOfDate := 0;
     BtnFrom.Caption :=gs_DateCaption;// 'BS';
     BtnTo.Caption :=gs_DateCaption;// 'BS';
end;

end.
