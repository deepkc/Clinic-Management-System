unit UnitUserWiseCollection;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate,
     Dialogs, StdCtrls, ExtCtrls, OleCtrls, DateEditXControl_TLB, ComCtrls,
     DBCtrls,
     DB, DBTables, Buttons;

type
     TFormUserWiseCollection = class(TForm)
          StatusBar1: TStatusBar;
          Panel1: TPanel;
          Btn_Preview: TButton;
          Panel2: TPanel;
          Label3: TLabel;
          DBLCB_UserName: TDBLookupComboBox;
          GroupBox1: TGroupBox;
          label2: TLabel;
          DateEditXTo: TDateEditX;
          Chk_Detail: TCheckBox;
          QueryUserName: TQuery;
          Ds_Username: TDataSource;
          Label1: TLabel;
          BtnTo: TSpeedButton;
          BtnFrom: TSpeedButton;
          DateEditxFrom: TDateEditX;
          procedure Btn_PreviewClick(Sender: TObject);
          procedure FormDestroy(Sender: TObject);
          procedure BtnfromClick(Sender: TObject);
          procedure BtnToClick(Sender: TObject);
          procedure Btn_DepWiseClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormUserWiseCollection: TFormUserWiseCollection;

implementation

uses UnitRepUserWiseCollection, UnitRepUserWiseDetail, UnitDeptWiseReport,
     UnitRepDetailUserWise, UnitNoofTestDone;
{$R *.dfm}

procedure TFormUserWiseCollection.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TFormUserWiseCollection.Btn_DepWiseClick(Sender: TObject);
begin
     try
          FormDeptwiseCollection := TFormDeptwiseCollection.Create(nil);
          FormDeptwiseCollection.ShowModal;
     finally
          FormDeptwiseCollection.Free;
     end;
end;

procedure TFormUserWiseCollection.Btn_PreviewClick(Sender: TObject);
begin
     gs_From := DateEditxFrom.text;
     gs_to := DateEditXTo.text;
     if (Chk_Detail.Checked =True) and (DBLCB_UserName.KeyValue = Null) then
     begin
          ShowMessage('Please Select the User');
          DBLCB_UserName.SetFocus;
          exit;
     end;

     if Chk_Detail.Checked <> True then
     begin
          try
               FormRepUserWiseCollection := TFormRepUserWiseCollection.Create
                 (nil);
               with FormRepUserWiseCollection do
               begin
                    With QueryMain do
                    begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'select CashBillBy, Sum(CashBill) as CashBill, Sum(NetDeposit)as NetDeposit, Sum(CashRefund)as CashRefund');
                         Sql.Add(', sum(DepositRefund) as DepositRefund');
                         Sql.Add(' from VW_User_Wise_Coll_Sum');
                         Sql.Add(' Where BillDate>= ' + #39 + gs_From +
                                #39' and BillDate<=' + #39 + gs_to + #39);
                         if DBLCB_UserName.KeyValue <> Null then
                              Sql.Add
                                ('and CashBillBy = ' + #39 +
                                     DBLCB_UserName.text + #39);
                         Sql.Add(' Group by CashBillBy');
                         Sql.Add(' Order by CashBillBy');
                         // Sql.SaveToFile('D:\sql.txt');
                         Open;
                    end;
                    // QRLabel7.Caption:=
                    QuickRepUsercollection.DataSet := QueryMain;
                    QuickRepUsercollection.Preview;
               end;
          finally
               Free;
          end;
     end
     else
     begin
          try
               FormRepDetailUserWise := TFormRepDetailUserWise.Create(Nil);
               With FormRepDetailUserWise Do
               Begin
                    With QueryCollection Do
                    Begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'Select BillNo,PatientId,PatientName,RateType,BillDate,BillTime,Sum(Amount) as Amount');
                         Sql.Add(
                              ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,');
                         Sql.Add(
                              'Sum(NetAmount) as NetAmount,Qty,ServiceType as Service');
                         Sql.Add(
                              'from VW_User_Wise_Coll_Detail where PayType=''CASH''  And (BillNo Not Like ''RF%'')');
                         Sql.Add
                           ('And BillDate>=' + #39 + DateEditxFrom.text + #39 +
                                ' And BillDate<=' + #39 + DateEditXTo.text +
                                #39);
                         Sql.Add('AND(BillBy=' + IntToStr
                                (DBLCB_UserName.KeyValue) + ')');
                         Sql.Add('AND(39=39)');
                         Sql.Add(
                              'Group By BillNo,PatientId,PatientName,RateType,BillDate,BillTime,ServiceType,Qty Order By BillNo');

                         Open;
                         First;
                    End;

                    { with QueryTimeRange do // ***Start Time...
                      Begin
                      close;
                      Sql.Clear;
                      Sql.Add(
                      ' Select Min(BillTime) as StartTime From BillDetail where ');
                      Sql.Add
                      (' BillDate>=' + #39 + DateEditxFrom.text + #39 +
                      ' and ');
                      Sql.Add
                      (' BillDate<=' + #39 + DateEditXTo.text +
                      #39 + ' and ');
                      Sql.Add
                      (' BillBy=' + IntToStr(DBLCB_UserName.KeyValue));
                      Open;
                      End;

                      // ls_TimeRange:=QueryTimeRange.FieldByName('StartTime').AsString;
                      // *** End Time..
                      With QueryTimeRange Do
                      Begin
                      close;
                      Sql.Clear;
                      Sql.Add(
                      ' Select Max(BillTime) as EndTime From BillDetail where ');
                      Sql.Add
                      (' BillDate>=' + #39 + DateEditxFrom.text + #39 +
                      ' and ');
                      Sql.Add
                      (' BillDate<=' + #39 + DateEditXTo.text +
                      #39 + ' and ');
                      Sql.Add
                      (' billBy=' + IntToStr(DBLCB_UserName.KeyValue));
                      Open;
                      End;
                      // ls_TimeRange:=ls_TimeRange+' - '+QueryTimeRange.FieldByName('EndTime').AsString;
                      //  QRLabelTimeRange.Caption:=ls_TimeRange; }

                    With QueryRefund Do
                    Begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'Select BillNo,PatientId,RateType,ServiceType,BillDate,BillTime, Sum(Amount)as Amount');
                         Sql.Add(
                              ',Sum(Discount)as Discount, Sum(VatAmt)as VatAmt,Sum(NetAmount)as NetAmount');
                         Sql.Add(
                              'from VW_User_Wise_Coll_Detail where PayType=''REFUND'' and CancelStatus=''Y'' and ReferenceNo Not Like ''CR%''');
                         Sql.Add
                           ('And BillDate>=' + #39 + DateEditxFrom.text + #39 +
                                ' And BillDate<=' + #39 + DateEditXTo.text +
                                #39);
                         Sql.Add('AND(BillBy=' + IntToStr
                                (DBLCB_UserName.KeyValue) + ')');
                         Sql.Add('AND(39=39)');
                         Sql.Add(
                              'Group By BillNo,PatientId,RateType,BillDate,BillTime,SErviceType Order By BillNo');
                         { ParamByName('FromDate').AsString := DateEditxFrom.text;
                           ParamByName('ToDate').AsString := DateEditXTo.text;
                           ParamByName('UserID').AsInteger := DBLCB_UserName.KeyValue; }
                         //Sql.SaveToFile('D:\Refund.txt');
                         Open;
                    End;

                    With QueryCredit Do { OP }
                    Begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'SElect BillNo,PatientId,PatientName,RateType,BillDate,BillTime,ServiceType,Qty,Sum(Amount) as Amount');
                         Sql.Add(
                              ',Sum(Discount) As Discount, Sum(VatAmt) as VatAmt,');
                         Sql.Add('Sum(NetAmount) as NetAmount');
                         Sql.Add(
                              'from VW_User_Wise_Coll_Detail where PayType=''CREDIT''');
                         Sql.Add
                           ('And BillDate>=' + #39 + DateEditxFrom.text + #39 +
                                ' And BillDate<=' + #39 + DateEditXTo.text +
                                #39);
                         Sql.Add('AND Billby=' + IntToStr
                                (DBLCB_UserName.KeyValue));
                         Sql.Add(
                              'Group By BillNo,PatientId,RateType,BillDate,BillTime,PatientName,ServiceType,Qty');
                         Sql.Add('Order By BillNo');
                         //Sql.SaveToFile('D:\cr.txt');
                         Open;
                    End;

                    { With QueryCreditRefund Do
                      Begin
                      close;
                      if CheckBoxTime.Checked then
                      Begin
                      SQL[6]:='AND(BillTime>=:TIME1) AND (BillTime<=:TIME2)';
                      ParamByName('TIME1').AsString:=MaskEdit1.text;
                      ParamByName('TIME2').AsString:=MaskEdit2.text;
                      End
                      Else
                      Sql[6] := '';
                      ParamByName('FromDate').AsString := DateEditxFrom.text;
                      ParamByName('ToDate').AsString := DateEditXTo.text;
                      ParamByName('UserID').AsInteger :=
                      DBLCB_UserName.KeyValue;
                      Open;
                      End;

                      With QueryIPTPBill Do  //OP
                      Begin
                      close;
                      if CheckBoxTime.Checked then
                      Begin
                      SQL[6]:='AND(BILLTIME>=:TIME1) AND (BILLTIME<=:TIME2)';
                      ParamByName('TIME1').AsString:=MaskEdit1.text;
                      ParamByName('TIME2').AsString:=MaskEdit2.text;
                      End
                      Else
                      Sql[6] := '';
                      ParamByName('FromDate').AsString := DateEditxFrom.text;
                      ParamByName('ToDate').AsString := DateEditXTo.text;
                      ParamByName('UserID').AsInteger :=
                      DBLCB_UserName.KeyValue;
                      Open;
                      End;

                      // IP Cash And Credit Bill

                      // IPCashAndCreditBill;
                      with QueryIPCashCollection do
                      Begin
                      close;
                      DatabaseName := gs_TempPath;
                      Sql.Clear;
                      Sql.Add(
                      ' Select * From InpatientBill.db Order By PayType,BillDate,BillNo');
                      Open;
                      End; }

                    With QueryDeposit Do
                    Begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'Select PatientId,PatientName,Sum(CRAmount)as CR,BillDAte,BillTime,BillNo');
                         Sql.Add('From VW_User_Wise_Coll_Detail ');
                         Sql.Add
                           ('where BillDate>=' + #39 + DateEditxFrom.text +
                                #39 + ' And BillDate<=' + #39 +
                                DateEditXTo.text + #39);
                         Sql.Add(' and CRAmount >0 and BillNo like ''DP%''');
                         Sql.Add('AND(BillBy=' + IntToStr
                                (DBLCB_UserName.KeyValue) + ')');
                         Sql.Add(
                              'group by PatientId,BillDate,BillTime,BillNo,PatientName');
                         Open;
                    End;

                    With QueryAdvanceRefund Do
                    Begin
                         close;
                         DatabaseName := gs_DatabaseName;
                         Sql.Clear;
                         Sql.Add(
                              'Select PatientId,PatientName,Sum(DRAmount) as Dr,BillDate as ModifyDate,BillTime as ModifyTime,BillNo');
                         Sql.Add(
                              'From VW_User_Wise_Coll_Detail Where((BillDAte>='
                                + #39 + DateEditxFrom.text + #39 +
                                ') AND(BillDate<=' + #39 + DateEditXTo.text +
                                #39 + ')) and DrAmount > 0');
                         Sql.Add('And(BillBy=' + IntToStr
                                (DBLCB_UserName.KeyValue) + ')');
                         Sql.Add
                           ('group by patientid,PatientName, billdate, billtime,billno');
                         //Sql.SaveToFile('D:\Ref.txt');
                         Open;
                    end;

                    { pi_OPCS:=0;
                      pi_OPCR:=0;
                      pi_OPRF:=0;
                      pi_IPCS:=0;
                      pi_IPTP:=0;
                      pi_DP:=0;
                      }

                    QRExpr2.Mask := '#0.00';
                    QRExpr10.Mask := '#0.00';
                    QRExpr7.Mask := '#0.00';
                    QRExpr8.Mask := '#0.00';
                    QRLabelUser.Caption := DBLCB_UserName.text;
                    QRLabelDate.Caption := serverdate.TodaysDate;
                    QRLabelTime.Caption := serverdate.TodaysTime;
                    Date1.Caption := DateEditxFrom.text;
                    Date2.Caption := DateEditXTo.text;
                    QuickRep1.Preview;
                    QueryCollection.close;
                    QueryCredit.close;
                    QueryDeposit.close;
                    QueryName.close;
                    QueryTimeRange.close;
                    QueryRefund.close;
               End;

               { with FormRepUserWiseDetail do
                 begin
                 FormRepUserWiseDetail := TFormRepUserWiseDetail.Create(SElf);
                 try
                 ShowModal;
                 finally
                 Free;
                 end;
                 end; }
          finally

          end;
     end;
end;

procedure TFormUserWiseCollection.Button1Click(Sender: TObject);
begin
     try
          FormNoofTestDone:=TFormNoofTestDone.Create(nil);
          FormNoofTestDone.ShowModal;
     finally
          FormNoofTestDone.Free;
     end;
end;

procedure TFormUserWiseCollection.BtnfromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TFormUserWiseCollection.FormDestroy(Sender: TObject);
begin
     // FormRepUserWiseCollection.Free;
end;

procedure TFormUserWiseCollection.FormShow(Sender: TObject);
begin
     with QueryUserName do
     begin
          close;
          DatabaseName := gs_DatabaseName;
          Open;
     end;
     // DateEditxFrom.SystemOfDate:=gi_datesystem;
     // DateEditXTo.SystemOfDate:=gi_datesystem;
     //DateEditxFrom.text := serverdate.TodaysDate;
    // DateEditXTo.text := serverdate.TodaysDate;
    // DateEditXTo.SystemOfDate := 0;
    // DateEditxFrom.SystemOfDate := 0;

end;

Initialization

RegisterClass(TFormUserWiseCollection);

Finalization

UnRegisterClass(TFormUserWiseCollection);

end.
