unit Unit_Doctorwisepatientcase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, OleCtrls, DateEditXControl_TLB,
  DB, MemDS, DBAccess, Ora;

type
  TForm_DoctorwisePatientcase = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    DBLCB_Testname: TDBLookupComboBox;
    DBLCB_Doctor: TDBLookupComboBox;
    RadioGroup_Reporttype: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    DateEditX_from: TDateEditX;
    DateEditX_To: TDateEditX;
    OraQuery_Doctor: TOraQuery;
    DataSource_Doctor: TDataSource;
    DataSource_testname: TDataSource;
    OraQuery_testname: TOraQuery;
    SpeedButton_to: TSpeedButton;
    SpeedButton_from: TSpeedButton;
    CheckBox_All: TCheckBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton_fromClick(Sender: TObject);
    procedure SpeedButton_toClick(Sender: TObject);
    procedure CheckBox_AllClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DoctorwisePatientcase: TForm_DoctorwisePatientcase;

implementation
      uses DM,Fxn,ServerDate,Unit_QrDoctorWisePatientSummary,Unit_QrDoctorwiseCaseDetail;
{$R *.dfm}

procedure TForm_DoctorwisePatientcase.BitBtn1Click(Sender: TObject);
begin
     if DBLCB_Doctor.KeyValue=null then
     begin
          ShowMessage('Please Enter Doctor');
          DBLCB_Doctor.SetFocus;
          Exit;
     end;

     if RadioGroup_Reporttype.ItemIndex=0 then
     begin
          try
          Form_QrDoctorWisePatientSummary:=TForm_QrDoctorWisePatientSummary.Create(Nil);
          with Form_QrDoctorWisePatientSummary do
          begin
               with QueryMain do
               begin
                    close;
                    Session:=Dm_Hospital.Db;
                    sql[2]:='and verifiedbyid='+IntToStr(DBLCB_Doctor.KeyValue);
                    if DBLCB_Testname.KeyValue<>null then
                         SQL[3]:='and testnameid='+IntToStr(DBLCB_Testname.KeyValue)
                    else
                         SQL[3]:='and 1=1' ;
                    SQL[4]:=('and substr(verifieddatetime,1,10) Between '+#39+DateEditx_From.text+#39+' and '+#39+DateEditx_To.Text+#39);
                    //sql.SaveToFile('D:\CheckMode.txt');
                    Open;
               end;
               QRLabel_From.Caption:=DateEditX_from.text;
               QRLabel_To.Caption:=DateEditX_To.text;
               QRLabel_Print.Caption:=ServerDate.TodaysDateVS;
               QRLabel13.Caption:=DBLCB_Doctor.Text;
               QuickRep1.Preview;
          end;
          finally
          Form_QrDoctorWisePatientSummary.Free;
          end;
     end
     else if RadioGroup_Reporttype.ItemIndex=1 then
     begin
          try
          Form_QrDoctorwisePatientDetail:=TForm_QrDoctorwisePatientDetail.Create(Nil);
          with Form_QrDoctorwisePatientDetail do
          begin
               with Querymaster do
               begin
                    close;
                    Session:=Dm_Hospital.Db;
                    sql[2]:='and verifiedbyid='+IntToStr(DBLCB_Doctor.KeyValue);
                    if DBLCB_Testname.KeyValue<>null then
                         SQL[3]:='and testnameid='+IntToStr(DBLCB_Testname.KeyValue)
                    else
                         SQL[3]:='and 1=1' ;
                    SQL[4]:=('and substr(verifieddatetime,1,10) Between '+#39+DateEditx_From.text+#39+' and '+#39+DateEditx_To.Text+#39);
                    //sql.SaveToFile('D:\CheckMode.txt');
                    Open;
                    while not  Querymaster.Eof do
                    begin
                         with oraquerydetail do
                         begin
                              Close;
                              Session:=DM_Hospital.DB;
                              SQL.Clear;
                              SQL.Add('select * from vw_sample_Collected');
                              SQL.Add('where testnameid=:testnameid');
                              sql.Add('and verifiedbyid='+IntToStr(DBLCB_Doctor.KeyValue));
                              if DBLCB_Testname.KeyValue<>null then
                                   SQL.Add('and testnameid='+IntToStr(DBLCB_Testname.KeyValue))
                              else
                                   SQL.Add('and 1=1') ;
                              SQL.Add('and substr(verifieddatetime,1,10) between '+#39+DateEditx_From.text+#39+' and '+#39+DateEditx_To.Text+#39);
                              //sql.SaveToFile('D:\CheckMode.txt');
                              Open;
                         end;
                         Querymaster.Next;
                    end;
               end;
               QRLabel_From.Caption:=DateEditX_from.text;
               QRLabel_To.Caption:=DateEditX_To.text;
               QRLabel_Print.Caption:=ServerDate.TodaysDateVS;
               QRLabel13.Caption:=DBLCB_Doctor.Text;
               QuickRep1.Preview;
          end;
          finally
          Form_QrDoctorwisePatientDetail.Free;
          end;
     end;

end;

procedure TForm_DoctorwisePatientcase.BitBtn2Click(Sender: TObject);
begin
     Close;
end;

procedure TForm_DoctorwisePatientcase.CheckBox_AllClick(Sender: TObject);
begin
     if CheckBox_All.Checked=True then
     begin
          DBLCB_Testname.KeyValue:=null;
          DBLCB_Testname.Enabled:=False;
     end
     else if CheckBox_All.Checked=False then
     begin
          DBLCB_Testname.Enabled:=True;
     end;
end;

procedure TForm_DoctorwisePatientcase.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key=VK_ESCAPE then
          Close;
end;

procedure TForm_DoctorwisePatientcase.FormShow(Sender: TObject);
begin
     OraQuery_Doctor.Close;
     OraQuery_Doctor.Open;
     OraQuery_testname.Close;
     OraQuery_testname.Open;
     RadioGroup_Reporttype.ItemIndex:=0;
     DateEditX_from.text:=ServerDate.TodaysDate;
     DateEditX_To.text:=ServerDate.TodaysDate;
     CheckBox_All.Checked:=True;
end;

procedure TForm_DoctorwisePatientcase.SpeedButton_fromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_from,SpeedButton_from);
end;

procedure TForm_DoctorwisePatientcase.SpeedButton_toClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_To,SpeedButton_to);
end;

end.
