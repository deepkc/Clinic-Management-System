unit Unit_DepositDayClose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Fxn,ServerDate,Unit_Master,Dm,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, SMDBGrid, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, OleCtrls, DateEditXControl_TLB, Gauges;

type
  TForm_DepositDayClose = class(TForm)
    Panel2: TPanel;
    BB_Close: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Query_List: TOraQuery;
    Ds_List: TDataSource;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Dex_From: TDateEditX;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Cb_All: TCheckBox;
    Gauge1: TGauge;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_CloseClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure DayClose;
    Function GetDepositFromFinman(PatientID:Integer):Double;
    procedure ConnectFinManDB;
  end;

var
  Form_DepositDayClose: TForm_DepositDayClose;

implementation

{$R *.dfm}

procedure TForm_DepositDayClose.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_DepositDayClose.DayClose;
Var
     PatientId:Integer;
     lf_Deposit:Double;
     ls_TodaysDate,ls_TodaysTime:String;
begin
     ls_TodaysDate:=TodaysDate;
     ls_TodaysTime:=TodaysTime;
     Try
     DM_Hospital.DB.StartTransaction;
     with Query_List do
     begin
          Close;
          Open;
          while not Eof do
          begin
               PatientId:=Query_List.FieldByName('PatientId').AsInteger;
               lf_Deposit:=Query_List.FieldByName('PatientId').AsFloat;

               (*if UpdateDepositInFinman(PatientId,lf_Deposit,0) then
               SaveDeposit(0, 0, PatientId, gi_UserID, 0, lf_Deposit, 'DEPOSIT ADJUSTED', 'FINMAN', ''
                         ,ls_TodaysDate, ls_TodaysTime, 'DEPOSITED TO FINMAN');*)

               Next;
          end;
     end;

     DM_Hospital.DB.Commit;
     ShowDoneMessage;
     Except
     DM_Hospital.DB.Rollback;
     End;

     RefreshQuery(Query_List,gs_DatabaseName);
end;

procedure TForm_DepositDayClose.FormCreate(Sender: TObject);
begin
     Dex_From.ADDateAsText:=TodaysDate;
     Dex_From.SystemOfDate:=gi_datesystem;
end;

procedure TForm_DepositDayClose.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;


Function TForm_DepositDayClose.GetDepositFromFinman(PatientID:Integer):Double;
Var
     Qry:TOraQuery;
     GrpNum,AccountNo:Integer;
begin
     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          DatabaseName := 'Finman';
          sql.Clear;
          SQL.Add('Select GrpNum  From GrpList Where CompNum='+#39+IntToStr(PatientID)+#39);
          Open;
          GrpNum:=FieldByName('GrpNum').AsInteger;

          SQL.Clear;
          SQL.Add('Select AccountNo from SavingData Where GrpNum='+IntToStr(GrpNum));
          Open;
          AccountNo:=FieldByName('AccountNo').AsInteger;

          SQL.Clear;
          SQL.Add('Select Sum(CreditAmount-DebitAmount)as Deposit');
          SQL.Add('from SavingDetail where accountno='+IntToStr(AccountNo));
          Open;
          Result:=FieldByName('Deposit').AsFloat;
     end;
     Qry.Free;
end;

procedure TForm_DepositDayClose.SpeedButton1Click(Sender: TObject);
Var
     PatientId:Integer;
     lf_Deposit,lf_DepositInFinman,lf_Difference,lf_Cr,Lf_Dr:Double;
     ls_TodaysDate,ls_TodaysTime:String;
     Qry : TOraQuery;
begin
     ConnectFinManDB;
     ls_TodaysDate:=TodaysDate;
     ls_TodaysTime:=TodaysTime;
     Gauge1.MinValue:=0;
     Try
          with Query_List do
          begin
               Close;
               Open;
               FetchAll;
               Gauge1.MaxValue:=RecordCount;
               while not eof do
               begin
                    PatientId:=Query_List.FieldByName('PatientId').AsInteger;
                    lf_Deposit:=Query_List.FieldByName('DepositBalance').AsFloat;
                    lf_DepositInFinman:=GetDepositFromFinman(PatientId);
                    lf_Difference:=lf_Deposit-lf_DepositInFinman;

                    if lf_Difference<>0 then
                    SaveFinmanDeposit(PatientID,gi_UserId,lf_Deposit,lf_DepositInFinman,lf_Difference,ls_TodaysDate,ls_TodaysTime);

                    if lf_Difference > 0 then
                    begin
                         lf_Cr:=Abs(lf_Difference);
                         lf_Dr:=0;
                         (*UpdateDepositInFinman(PatientID:Integer; CrAmount,DrAmount:Double):Boolean;*)
                         Try
                              UpdateDepositInFinman(FieldByName('PatientID').AsInteger,lf_Cr,Lf_Dr);
                              //SaveDeposit(0, 0, PatientId, gi_UserID, 0, lf_Deposit, 'DEPOSIT ADJUSTED', 'FINMAN', ''
                              //               ,ls_TodaysDate, ls_TodaysTime, 'DEPOSITED TO FINMAN');
                         Except
                              UpdateDepositInFinman(FieldByName('PatientID').AsInteger,lf_Cr,Lf_Dr);
                              //SaveDeposit(0, 0, PatientId, gi_UserID, 0, lf_Deposit, 'DEPOSIT ADJUSTED', 'FINMAN', ''
                              //               ,ls_TodaysDate, ls_TodaysTime, 'DEPOSITED TO FINMAN');
                         End;
                    end
                    else if lf_Difference<0 then
                    begin
                         lf_Dr:=Abs(lf_Difference);
                         lf_Cr:=0;
                         (*UpdateDepositInFinman(PatientID:Integer; CrAmount,DrAmount:Double):Boolean;*)
                         Try
                              UpdateDepositInFinman(FieldByName('PatientID').AsInteger,lf_Cr,Lf_Dr);
                              //SaveDeposit(0, 0, PatientId, gi_UserID, 0, lf_Deposit, 'DEPOSIT ADJUSTED', 'FINMAN', ''
                              //               ,ls_TodaysDate, ls_TodaysTime, 'DEPOSITED TO FINMAN');
                         Except
                              UpdateDepositInFinman(FieldByName('PatientID').AsInteger,lf_Cr,Lf_Dr);
                              //SaveDeposit(0, 0, PatientId, gi_UserID, 0, lf_Deposit, 'DEPOSIT ADJUSTED', 'FINMAN', ''
                              //               ,ls_TodaysDate, ls_TodaysTime, 'DEPOSITED TO FINMAN');
                         End;
                    end;
                    Gauge1.Progress:=Gauge1.Progress+1;
                    Next;
               end;
          end;
          ShowDoneMessage;

     Except
         ShowMessage('Day Close Failed');
     End;
     RefreshQuery(Query_List,gs_DatabaseName);
     Gauge1.Progress:=0;
end;

procedure TForm_DepositDayClose.SpeedButton2Click(Sender: TObject);
begin
     ChangeDateSystem(Dex_From,SpeedButton2);
end;

procedure TForm_DepositDayClose.SpeedButton3Click(Sender: TObject);
begin
     With Query_List do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          if Cb_All.Checked then
               SQL[2]:=' Where DepositDate<='+#39+Dex_From.ADDateAsText+#39
          else
               SQL[2]:=' Where DepositDate='+#39+Dex_From.ADDateAsText+#39;
          Open;
     end;
end;


procedure TForm_DepositDayClose.ConnectFinManDB;
Begin
     //if UpperCase(GetFinmanConnectStatus)='TRUE' then
     begin
          with DM_Hospital.Finman do
          begin
               Connected := False;
               DatabaseName := 'Finman';
               AliasName := 'Finman';
               Params.Clear;
               Params.Add('DATABASE NAME=');
               Params.Add('USER NAME=midas');
               Params.Add('ODBC DSN=Finman');
               Params.Add('OPEN MODE=READ/WRITE');
               Params.Add('SCHEMA CACHE SIZE=8');
               Params.Add('SQLQRYMODE=');
               Params.Add('LANGDRIVER=');
               Params.Add('SQLPASSTHRU MODE=SHARED AUTOCOMMIT');
               Params.Add('SCHEMA CACHE TIME=-1');
               Params.Add('MAX ROWS=-1');
               Params.Add('BATCH COUNT=200');
               Params.Add('ENABLE SCHEMA CACHE=FALSE');
               Params.Add('SCHEMA CACHE DIR=');
               Params.Add('ENABLE BCD=FALSE');
               Params.Add('ROWSET SIZE=20');
               Params.Add('BLOBS TO CACHE=64');
               Params.Add('PASSWORD=midas1234');
               if not Connected then
                    Connected := true;
          end;
     end;
End;

end.
