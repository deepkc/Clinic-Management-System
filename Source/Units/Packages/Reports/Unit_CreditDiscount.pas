unit Unit_CreditDiscount;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     dm, Fxn, ServerDate,
     Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, OleCtrls,
     DateEditXControl_TLB, Unit_QrCreditDiscountReport,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, UnitSendToExcel;

type
     TForm_CreditDiscount = class(TForm)
          Panel1: TPanel;
          Panel2: TPanel;
          Bb_preview: TBitBtn;
          Bb_cancel: TBitBtn;
          lbl_FromDate: TLabel;
          lbl_ToDate: TLabel;
          DateEditxFrom: TDateEditX;
          DateEditXTo: TDateEditX;
          btnfrom: TSpeedButton;
          btnto: TSpeedButton;
          BitBtn1: TBitBtn;
          procedure FormShow(Sender: TObject);
          procedure btnfromClick(Sender: TObject);
          procedure btntoClick(Sender: TObject);
          procedure Bb_cancelClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word;
               Shift: TShiftState);
          procedure BitBtn1Click(Sender: TObject);
          procedure Bb_previewClick(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
          pb_ToXl: Boolean;
     end;

var
     Form_CreditDiscount: TForm_CreditDiscount;

implementation

uses Unit_RepDepositCollection, Unit_RepDepositTotalCollection,
     Unit_RepAdjustedDeposit, Unit_QrPaymentDues;
{$R *.dfm}

procedure TForm_CreditDiscount.Bb_previewClick(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     btnfrom.Caption := gs_DateCaption;
     btnto.Caption := gs_DateCaption;
     gs_From := DateEditxFrom.text;
     gs_to := DateEditXTo.text;
     // DateEditxFrom.SystemOfDate := 0;
     // DateEditXTo.SystemOfDate := 0;
     // BtnFrom.Caption := 'BS';
     // BtnTo.Caption := 'BS';
     Form_QrCreditDiscount := TForm_QrCreditDiscount.Create(Nil);
     With Form_QrCreditDiscount Do
     begin
          with QueryDue do
          begin
               Close;
               Session := DM_Hospital.DB;
               SQL[10] := 'and BIDE_BillDate>=' + #39 + gs_From + #39 +
                 ' And BIDE_BillDate<=' + #39 + gs_to + #39;
               // sql.SaveToFile('QueryDue.txt');
               Open;
               FetchAll;
          end;
          if pb_ToXl then
          begin
               SendToExcelsMultiQuery(QueryDue, NIL, Nil, Nil, Nil, nil,
                    'Credit Discount Report', '', '', '', '', '', TodaysDate,
                    '', gs_HospitalName, gs_HospitalAddress, 1, 6);
               pb_ToXl := False;
               exit;
          end;
          QRLabelDate.Caption := ServerDate.TodaysDate;
          QRLabelTime.Caption := ServerDate.TodaysTime;
          Date1.Caption := DateEditxFrom.text;
          Date2.Caption := DateEditXTo.text;
          QuickRep_PaymentDues.Preview;
          QueryDue.Close;
     end;
end;

procedure TForm_CreditDiscount.BitBtn1Click(Sender: TObject);
begin
     pb_ToXl := True;
     Bb_previewClick(Sender);
     pb_ToXl := False;
end;

procedure TForm_CreditDiscount.Bb_cancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_CreditDiscount.btnfromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, btnfrom);
end;

procedure TForm_CreditDiscount.btntoClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, btnto);
end;

procedure TForm_CreditDiscount.FormKeyDown(Sender: TObject; var Key: Word;
     Shift: TShiftState);
begin
     if Key = 27 then
          Close;
end;

procedure TForm_CreditDiscount.FormShow(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := ServerDate.TodaysDate;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditXTo.text := ServerDate.TodaysDate;
     // DateEditxFrom.SystemOfDate := 0;
     // DateEditXTo.SystemOfDate := 0;
     btnfrom.Caption := gs_DateCaption; // 'BS';
     btnto.Caption := gs_DateCaption; // 'BS';
     // RB_DepositCollection.Checked:= True;
end;

end.
