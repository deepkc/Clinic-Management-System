unit Unit_PendingForAuthentication;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Fxn, PatientClass, ServerDate, DM,
  DB, DBAccess, Ora, MemDS, StdCtrls, DBCtrls, OleCtrls, DateEditXControl_TLB,
  Buttons, ExtCtrls,Dialogs;

type
  TForm_PendingForAuthentication = class(TForm)
    Panel_Main: TPanel;
    BitBtn_Preview: TBitBtn;
    BitBtn_Close: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DateEditX1: TDateEditX;
    Label2: TLabel;
    DateEditX2: TDateEditX;
    Label3: TLabel;
    DBLCB_Department: TDBLookupComboBox;
    CheckBox_Department: TCheckBox;
    Label4: TLabel;
    DBLCB_Test: TDBLookupComboBox;
    CheckBox_Test: TCheckBox;
    OraQuery_Department: TOraQuery;
    OraDataSource_Department: TOraDataSource;
    OraQuery_Test: TOraQuery;
    OraDataSource_Test: TOraDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn_SendToExcel: TBitBtn;
    procedure BitBtn_CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox_DepartmentClick(Sender: TObject);
    procedure CheckBox_TestClick(Sender: TObject);
    procedure BitBtn_PreviewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBLCB_DepartmentClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn_SendToExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
  var ps_DepType :String;
     pb_SendToExcel :Boolean;
    { Public declarations }
  end;

var
  Form_PendingForAuthentication: TForm_PendingForAuthentication;

implementation
       uses Unit_qrPendingForAuthentication,UnitSendToExcel;
{$R *.dfm}

procedure TForm_PendingForAuthentication.BitBtn_CloseClick(
  Sender: TObject);
begin
     Close;
end;

procedure TForm_PendingForAuthentication.BitBtn_PreviewClick(
  Sender: TObject);
begin
     with Form_qrPendingForAuthentication do
     begin
          qrlabel_from.Caption:=dateeditx1.Text;
          qrlabel_To.Caption:=dateeditx2.text;
          QRLabel_Print.Caption:=ServerDate.TodaysDate;
          if (dblcb_department.KeyValue)<>null then
          begin
               QRLabel_dept.Caption:=dblcb_department.Text;
          end
          else
          begin
               QRLabel_dept.Caption:= 'All';
          end;
          with OraQuery_Main do
          begin
               Close;
               Session:=DM_Hospital.DB;
               SQL[1]:='Where ae.deptype='+#39+(ps_DepType)+#39;
               sql[2]:='AND ae.TESTDATE between '+quotedstr(dateeditx1.Text)+' and '+quotedstr(dateeditx2.Text)+'';
               if (dblcb_department.KeyValue)<>null then
               begin
                    SQL[4]:=' and ae.depid='+#39+inttostr(dblcb_department.KeyValue)+#39;
               end
               else
                    SQL[4]:=' and 1=1';
               if (DBLCB_Test.KeyValue)<>null then
               begin
                    SQL[5]:=' and ae.TESTNAMEID='+#39+inttostr(DBLCB_Test.KeyValue)+#39;
               end
               else
                    SQL[5]:=' and 1=1';
               SQL[7]:='Where d.deptype='+#39+(ps_DepType)+#39;
               //sql.SaveToFile('D:\save.txt');
               Open;
          end;
          if pb_SendToExcel=False then
               Begin
                    QuickRep_pendingSampleCollection.Preview;
               End
               Else
               Begin
                    SendToExcels(OraQuery_Main,nil,'Pending Sample Collection Report',DateEditX1.text+'-'+DateEditX2.text,''
                    ,gs_HospitalName,gs_HospitalAddress,0);

                  {  SendToExcelsMultiQuery(OraQuery_Main,nil,nil,nil,nil,nil,'Pending Sample Collection Report','','','','','',DateEditX1.text+'-'+DateEditX2.text,''
                    ,gs_HospitalName,gs_HospitalAddress,1,0);


SendToExcelsMultiQuery(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5: TDataSet;
ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5: String; ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);
                                                                 }
                    pb_SendToExcel:=False;
               End;
     end;
end;

procedure TForm_PendingForAuthentication.BitBtn_SendToExcelClick(
  Sender: TObject);
begin
     IF MessageDlg('Are you sure to send in Excel ?',mtconfirmation,[mbyes,mbno],0)=mryes then
     Begin
          Try
               pb_SendToExcel:=True;
               BitBtn_PreviewClick(Sender);
          Except
               pb_SendToExcel:=False;
          End;
     End;
end;

procedure TForm_PendingForAuthentication.CheckBox_DepartmentClick(
  Sender: TObject);
begin
     if CheckBox_Department.Checked=true then
     begin
          DBLCB_Department.Enabled:=false;
          DBLCB_Department.KeyValue:=null;
     end
     else
          DBLCB_Department.Enabled:=true;
end;

procedure TForm_PendingForAuthentication.CheckBox_TestClick(
  Sender: TObject);
begin
     if CheckBox_Test.Checked=true then
     begin
          DBLCB_Test.Enabled:=false;
          DBLCB_Test.KeyValue:=null;
     end
     else
          DBLCB_Test.Enabled:=true;
end;

procedure TForm_PendingForAuthentication.DBLCB_DepartmentClick(
  Sender: TObject);
begin
     with OraQuery_Test do
     begin
          Close;
          Session:=DM_Hospital.DB;
          sql.Clear;
          SQL.Add('Select * From hs_tena_TestName Where tena_DepId ='+IntToStr(dblcb_department.KeyValue));
          SQL.Add( 'ORDER by tena_TestName');
          //paramByName('depid').AsString:=dblcb_department.KeyValue;
          //sql.SaveToFile('D:\qwer.txt');
          Open;
     end;
end;

procedure TForm_PendingForAuthentication.FormCreate(Sender: TObject);
begin
     Application.CreateForm(TForm_qrPendingForAuthentication,Form_qrPendingForAuthentication);
end;

procedure TForm_PendingForAuthentication.FormDestroy(Sender: TObject);
begin
     Form_qrPendingForAuthentication.Free;
end;

procedure TForm_PendingForAuthentication.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key=VK_ESCAPE then
          Close;
end;

procedure TForm_PendingForAuthentication.FormShow(Sender: TObject);
begin
     CheckBox_Department.Checked:=true;
     CheckBox_Test.Checked:=true;
     DateEditX1.SystemOfDate:=gi_DateSystem;
     DateEditX2.SystemOfDate:=gi_DateSystem;
     DateEditX1.text := gs_From;
     DateEditX2.text := gs_to;
     ps_DepType:=GetUserDepType(gi_UserID);
     with OraQuery_Department do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('Select * from hs_dept_department');
          sql.Add('Where dept_deptype='+QuotedStr(ps_DepType));
          Open;
     end;
end;

procedure TForm_PendingForAuthentication.SpeedButton1Click(
  Sender: TObject);
begin
     ChangeDateSystem(DateEditX1,SpeedButton1);
end;

procedure TForm_PendingForAuthentication.SpeedButton2Click(
  Sender: TObject);
begin
     ChangeDateSystem(DateEditX2,SpeedButton2);
end;

end.
