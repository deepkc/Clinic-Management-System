unit Unit_SampleReceive;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, MemDS, DBAccess, Ora,ServerDate,Fxn,Dm;

type
  TForm_SampleReceive = class(TForm)
    GroupBox5: TGroupBox;
    BB_Receive: TButton;
    Le_SampleNo: TLabeledEdit;
    lbl_msg: TLabel;
    Rb_Receive: TRadioButton;
    Rb_UndoReceive: TRadioButton;
    Panel2: TPanel;
    BB_Close: TBitBtn;
    OraQuery1: TOraQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_CloseClick(Sender: TObject);
    procedure BB_ReceiveClick(Sender: TObject);
    procedure Le_SampleNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReceiveSample;
  end;

var
  Form_SampleReceive: TForm_SampleReceive;

implementation

{$R *.dfm}

procedure TForm_SampleReceive.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_SampleReceive.BB_ReceiveClick(Sender: TObject);
begin
     ReceiveSample;
end;

procedure TForm_SampleReceive.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_SampleReceive.FormShow(Sender: TObject);
begin
     Le_SampleNo.SetFocus;
end;

procedure TForm_SampleReceive.Le_SampleNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     BB_ReceiveClick(Sender);
end;

procedure TForm_SampleReceive.ReceiveSample;
Var
     Qry:TOraQuery;
begin
     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select count(*)C from SampleCollection Where SampleNo='+#39+Le_SampleNo.Text+#39);
          Open;
          if FieldByName('C').AsInteger=0 then
          begin
               ShowMessage('Service Not Found');
               Le_SampleNo.Clear;
               Le_SampleNo.SetFocus;
               Exit;
          end;
          SQL.Clear;
          SQL.Add('Select count(*)C from SampleCollection Where SampleNo='+#39+Le_SampleNo.Text+#39);
          SQL.Add('And SampleReceivedBy is Not Null');
          Open;
          if FieldByName('C').AsInteger>0 then
          begin
               ShowMessage('Sample has already been received');
               Le_SampleNo.Clear;
               Le_SampleNo.SetFocus;
               Exit;
          end;
          Try
          DM_Hospital.DB.StartTransaction;
          SQL.Clear;
          SQL.Add('Update SampleCollection Set');
          SQL.Add('SampleReceivedDate='+#39+TodaysDate+#39);
          SQL.Add(',SampleReceivedTime='+#39+TodaysTime+#39);
          SQL.Add(',SampleReceivedBy='+IntToStr(gi_UserID));
          SQL.Add('Where SampleNo='+#39+Le_SampleNo.Text+#39);
          ExecSQL;
          SQL.Clear;
          SQL.Add('Update '+gs_Hos_DB_UserName+'.PatientTest Set');
          SQL.Add('TestProgressStatus=3');
          SQL.Add('Where PatientTestId in (Select PatientTestID from SampleCollection ');
          SQL.Add('Where SampleNo='+#39+Le_SampleNo.Text+#39+')');
          ExecSQL;
          lbl_msg.Caption:=Le_SampleNo.Text+' Received';
          DM_Hospital.DB.Commit;
          ShowDoneMessage;
          Except
          DM_Hospital.DB.Rollback;
          End;
     end;
     Le_SampleNo.Clear;
     //lbl_msg.Caption:='';
     Le_SampleNo.SetFocus;
end;

end.
