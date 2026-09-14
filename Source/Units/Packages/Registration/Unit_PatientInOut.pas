unit Unit_PatientInOut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ServerDate,db,dbtables, DBAccess, Ora, OraSmart, MemDS, OraError,
  fxn,Unit_Master,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm_PatientInOut = class(TForm)
    Panel2: TPanel;
    BB_Close: TBitBtn;
    Panel1: TPanel;
    Edit_HospitalNo: TEdit;
    Label2: TLabel;
    Sb_Queuelist: TSpeedButton;
    lbl_Display: TLabel;
    procedure BB_CloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sb_QueuelistClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
  private
     pi_patientID:Integer;
    { Private declarations }
    Procedure UpdateTime;
  public
    { Public declarations }
  end;

var
  Form_PatientInOut: TForm_PatientInOut;

implementation

{$R *.dfm}

procedure TForm_PatientInOut.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_PatientInOut.Edit_HospitalNoKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#13 then
     Sb_QueuelistClick(Sender);
end;

procedure TForm_PatientInOut.FormCreate(Sender: TObject);
begin
     lbl_Display.Caption:='';
end;

procedure TForm_PatientInOut.FormShow(Sender: TObject);
begin
     Edit_HospitalNo.SetFocus;
end;

procedure TForm_PatientInOut.Sb_QueuelistClick(Sender: TObject);
begin
     UpdateTime;
     Edit_HospitalNo.Clear;
     Edit_HospitalNo.SetFocus;
end;

procedure TForm_PatientInOut.UpdateTime;
Var
     Qry:TOraQuery;
     ls_TodaysDate,ls_TodaysTime:String;
     MyDateTime:TDateTime;
begin
     ls_TodaysDate:= TodaysDate;
     ls_TodaysTime:=TodaysTime;
     MyDateTime:=StrToTime(ls_TodaysTime);

     if Edit_HospitalNo.Text='' then
          pi_patientID:=0
     else
          pi_patientID:=StrToInt(Edit_HospitalNo.Text);

     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          SQL.Clear;
          DatabaseName:=gs_DatabaseName;
          SQL.Add('Select * from Queuelist Where RegDate='+#39+ls_TodaysDate+#39);
          SQL.Add('And PatientID='+IntToStr(pi_patientID));
          SQL.Add('And DocCode in (Select Doccode From PatientVisit Where VisitID='+IntToStr(gi_VisitId)+')');
          //SQL.Add('And Status=''0'' ');
          Open;
          if FieldByName('PatientID').AsString='' then
          begin
               lbl_Display.Caption:='NO PATIENT FOUND !!';
               exit;
          end;

          if FieldByName('InTime').AsString='' then
          begin
               SQL.Clear;
               SQL.Add('Update QueueList Set InTime='+#39+ls_TodaysTime+#39);
               SQL.Add(',Status=''1''');
               SQL.Add('Where PatientID='+IntToStr(pi_patientID));
               SQL.Add('And DocCode in (Select Doccode From PatientVisit Where VisitID='+IntToStr(gi_VisitId)+')');
               ExecSQL;
               lbl_Display.Caption:=IntToStr(pi_patientID)+' - Intime : '+TimeToStr(MyDateTime);
          end
          else if FieldByName('OutTime').AsString='' then
          begin
               SQL.Clear;
               SQL.Add('Update QueueList Set OutTime='+#39+ls_TodaysTime+#39);
               SQL.Add(',Status=''2''');
               SQL.Add('Where PatientID='+IntToStr(pi_patientID));
               SQL.Add('And DocCode in (Select Doccode From PatientVisit Where VisitID='+IntToStr(gi_VisitId)+')');
               ExecSQL;
               lbl_Display.Caption:=IntToStr(pi_patientID)+' - OutTime : '+TimeToStr(MyDateTime);
          end;
     end;
     Qry.Free;
end;

end.
