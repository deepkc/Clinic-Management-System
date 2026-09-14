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
     DateEditxFrom.SystemOfDate := 0;
     DateEditXTo.SystemOfDate := 0;
     BtnFrom.Caption := 'BS';
     BtnTo.Caption := 'BS';
     with Query_creditPayment Do
     Begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Select billno,CRBILLNODETAIL,(Select username from lab_usermain where userid=CM.receiptby)receiptby,');
          sql.Add('(Select schemename from scheme where schemeid=CM.schemeid)scheme,');
          sql.Add('sum(receiptamount)receiptamount,sum(RECEIPTDISCOUNT)RECEIPTDISCOUNT ');
          sql.Add('from creditpaymentmaster CM');
          sql.Add('where receiptdate>='+quotedstr(gs_From)+' and receiptdate<='+quotedstr(gs_to));
          //sql.Add('and paytype<>''REFUND'' ');
          sql.Add('Group by billno,CRBILLNODETAIL,receiptby,schemeid');
          sql.Add('order by billno');
          Open;
     End;
     with Query_ReceiptRefund Do
     Begin
          close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          sql.Add('Select billno,CRBILLNODETAIL,(Select username from lab_usermain where userid=CM.receiptby)receiptby,');
          sql.Add('(Select schemename from scheme where schemeid=CM.schemeid)scheme,');
          sql.Add('sum(receiptamount)receiptamount,sum(RECEIPTDISCOUNT)RECEIPTDISCOUNT ');
          sql.Add('from creditpaymentmaster CM');
          sql.Add('where receiptdate>='+quotedstr(gs_From)+' and receiptdate<='+quotedstr(gs_to));
          sql.Add('and paytype=''REFUND'' ');
          sql.Add('Group by billno,CRBILLNODETAIL,receiptby,schemeid');
          sql.Add('order by billno');
          Open;
     End;

     if Pb_Sendtoexcel then
     Begin
          Pb_Sendtoexcel:=False;
          SendToExcelsMultiQuery(Query_creditPayment,Query_ReceiptRefund,NIL,NIL,NIL,NIL,'Credit Payment Detail','Receipt Refund','','','','',
               TodaysDate, '', gs_HospitalName, gs_HospitalAddress,2,4);
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
     DateEditxFrom.SystemOfDate := 0;
     DateEditXTo.SystemOfDate := 0;
     BtnFrom.Caption := 'BS';
     BtnTo.Caption := 'BS';
end;

end.
