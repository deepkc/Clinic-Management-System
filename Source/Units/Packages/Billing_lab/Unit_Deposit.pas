unit Unit_Deposit;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, ServerDate, Unit_Master, PatientClass, Dm,
     Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls;

type
     TForm_Deposit = class(TForm)
          Panel2: TPanel;
          BB_Close: TBitBtn;
          BB_Save: TBitBtn;
          Panel1: TPanel;
          Le_HosNo: TLabeledEdit;
          Le_MemberNo: TLabeledEdit;
          SP_PatientSearch: TSpeedButton;
          Label1: TLabel;
          Panel3: TPanel;
          Le_Payment: TLabeledEdit;
          lbl_Name: TLabel;
          Label5: TLabel;
          Memo_Remarks: TMemo;
          Dblcb_DepositType: TDBLookupComboBox;
          Query_DepositType: TOraQuery;
          DS_DepositType: TDataSource;
    Label2: TLabel;
    lbl_DepositBalance: TLabel;
    Label3: TLabel;
    Cb_Mode: TComboBox;
          procedure SP_PatientSearchClick(Sender: TObject);
          procedure Le_PaymentKeyPress(Sender: TObject; var Key: Char);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_CloseClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure Le_HosNoKeyPress(Sender: TObject; var Key: Char);
          procedure FormCreate(Sender: TObject);
    procedure Dblcb_DepositTypeClick(Sender: TObject);
     private
          { Private declarations }
          Procedure PrintBill;
     public
          pb_isreprint: Boolean;
          { Public declarations }
     end;

var
     Form_Deposit: TForm_Deposit;

implementation

uses Unit_QrDepositSlip;
{$R *.dfm}

procedure TForm_Deposit.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_Deposit.BB_SaveClick(Sender: TObject);
Var
     DrAmount,CrAmount: Double;
     DepositType,Remarks:String;
begin
     if Le_Payment.Text = '' then
     begin
          ShowMessage('Amount is blank, Please fill the Amount');
          Exit;
     end;
     if StrToFloat(Le_Payment.Text) = 0 then
     begin
          ShowMessage('Amount is zero, Please fill the Amount');
          Exit;
     end;
     if Dblcb_DepositType.KeyValue = '' then
     begin
          ShowMessage('Please select deposit type');
          Exit;
     end;
     if Cb_Mode.ItemIndex=0 then
     begin
          DrAmount:=StrToFloat(Le_Payment.Text);
          CrAmount:=0;
          DepositType:='DEPOSIT';
          Remarks:='DEPOSIT FOR '+Dblcb_DepositType.KeyValue;
     end
     else if Cb_Mode.ItemIndex=1 then
     begin
          DrAmount:=0;
          CrAmount:=StrToFloat(Le_Payment.Text);
          DepositType:='DEPOSIT REFUND';
          Remarks:='DEPOSIT REFUND FOR '+Dblcb_DepositType.KeyValue;
     end;
     Try
          DM_Hospital.DB.StartTransaction;
          Try
               SaveDeposit(0, 0, MyPatient.PatientId, gi_UserID, DrAmount, CrAmount,DepositType ,Dblcb_DepositType.KeyValue,'', TodaysDate, TodaysTime,
                    Remarks);
          Except
              SaveDeposit(0, 0, MyPatient.PatientId, gi_UserID, DrAmount, CrAmount,DepositType ,Dblcb_DepositType.KeyValue,'', TodaysDate, TodaysTime,
                    Remarks);
          End;
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          PrintBill;
     Except
          DM_Hospital.DB.Rollback;
          MsgBox(1005, 0, '', '', '');
     End;
     Self.Close;
end;

procedure TForm_Deposit.Dblcb_DepositTypeClick(Sender: TObject);
begin
     lbl_DepositBalance.Visible:=True;
     lbl_DepositBalance.Caption:=FormatFloat('#0,0.00',(GetTotalMemberDeposit(gi_PatientID,Dblcb_DepositType.KeyValue)));
end;

procedure TForm_Deposit.FormCreate(Sender: TObject);
begin
     RefreshQuery(Query_DepositType, gs_DatabaseName);
end;

procedure TForm_Deposit.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_Deposit.Le_HosNoKeyPress(Sender: TObject; var Key: Char);
begin
     if Key = #13 then
          SP_PatientSearchClick(Sender);
end;

procedure TForm_Deposit.Le_PaymentKeyPress(Sender: TObject; var Key: Char);
begin
     OnlyNumeric(Sender, Key);
end;

procedure TForm_Deposit.PrintBill;
Var
     i: Integer;
begin
     try
          Form_QrDepositSlip := TForm_QrDepositSlip.Create(nil);
          if pb_isreprint then
               Form_QrDepositSlip.lbl_reprint.Enabled := true;
          with Form_QrDepositSlip do
          begin
               QrDepositSlip.Prepare;
               lbl_totpage.Caption := IntToStr(QrDepositSlip.QRPrinter.PageCount);
               QrDepositSlip.PreviewModal;
          end;
     finally
          pb_isreprint := false;
          Form_QrDepositSlip.Free;
     end;
end;

procedure TForm_Deposit.SP_PatientSearchClick(Sender: TObject);
begin
     if Le_HosNo.Text <> '' then
          gi_PatientID := StrToInt(Le_HosNo.Text);
     MyPatient := TPatient.Create;
     MyPatient.LoadData(gi_PatientID);
     lbl_Name.Caption := MyPatient.PatientName;
     Le_MemberNo.Text := MyPatient.MemberNo;
     lbl_Name.Visible := true;
end;

end.
