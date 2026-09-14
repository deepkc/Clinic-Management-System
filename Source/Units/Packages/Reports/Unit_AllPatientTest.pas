unit Unit_AllPatientTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dm,Fxn,ServerDate,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, OleCtrls, DateEditXControl_TLB,
  DB, DBTables, MemDS, DBAccess, Ora;

type
  TForm_AllPatientTest = class(TForm)
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
    DS_Testname: TDataSource;
    DBLCB_Testname: TDBLookupComboBox;
    Label3: TLabel;
    cb_all: TCheckBox;
    QueryTestName: TOraQuery;
    procedure Bb_previewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnfromClick(Sender: TObject);
    procedure btntoClick(Sender: TObject);
    procedure Bb_cancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_allClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_AllPatientTest: TForm_AllPatientTest;

implementation

uses   Unit_QrPatientFindingDetail;

{$R *.dfm}

procedure TForm_AllPatientTest.Bb_previewClick(Sender: TObject);
begin
    try
    Form_PatientFindingDetail := TForm_PatientFindingDetail.Create(Nil);
    With Form_PatientFindingDetail Do
    begin
         with QueryData do
         begin
              Close;
              Session:=DM_Hospital.DB;
              SQL[8]:='and testdate>='+#39+DateEditxFrom.text+#39+'and testdate<='+#39+DateEditxTo.text+#39;
              if DBLCB_Testname.KeyValue<>Null then
              SQL[9]:='and PT.testnameid='+inttostr(DBLCB_Testname.KeyValue)
              else
              SQL[9]:='and 1=1';
              //sql.savetofile('c:\tt.txt');
              Open;
         end;
         QRLabelDate.Caption := serverdate.TodaysDatevs;
         QRLabelTime.Caption := serverdate.TodaysTime;
         Date1.Caption := DateEditxFrom.text;
         Date2.Caption := DateEditXTo.text;
         QuickRep_PaymentDues.Preview;
    end;
    finally
    Form_PatientFindingDetail.Free;
    end;
end;

procedure TForm_AllPatientTest.Bb_cancelClick(Sender: TObject);
begin
    Close;
end;

procedure TForm_AllPatientTest.btnfromClick(Sender: TObject);
begin
    ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TForm_AllPatientTest.btntoClick(Sender: TObject);
begin
    ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TForm_AllPatientTest.cb_allClick(Sender: TObject);
begin
     if cb_all.Checked=True then
     DBLCB_Testname.KeyValue:=Null;
end;

procedure TForm_AllPatientTest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if KEY=27 then
     Close;
end;

procedure TForm_AllPatientTest.FormShow(Sender: TObject);
begin
    DateEditxFrom.SystemOfDate := gi_datesystem;
    DateEditxFrom.text:= TodaysDate;
    DateEditXTo.SystemOfDate := gi_datesystem;
    DateEditXTo.text:= TodaysDate;
    //RB_DepositCollection.Checked:= True;
    WITH QueryTestName do
    begin
         Close;
         Session:=DM_Hospital.DB;
         Open;
    end;
end;

end.
