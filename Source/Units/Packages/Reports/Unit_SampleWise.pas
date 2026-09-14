unit Unit_SampleWise;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, OleCtrls, DateEditXControl_TLB,Fxn,
  Unit_QrSampleWiseRep,dm,serverdate, DB, MemDS,DBGrids, DBAccess, Ora, DBCtrls,UnitSendToExcel;

type
  TForm_SampleWiseReport = class(TForm)
    pnl_top: TPanel;
    pnl_body: TPanel;
    bb_preview: TBitBtn;
    bb_sendtoXL: TBitBtn;
    bb_close: TBitBtn;
    gbx_Sample: TGroupBox;
    rb_NotReceived: TRadioButton;
    rb_Received: TRadioButton;
    gbx_sampleRec: TGroupBox;
    rb_NoFinding: TRadioButton;
    rb_YesFiniding: TRadioButton;
    rb_Verified: TRadioButton;
    rb_All: TRadioButton;
    chk_datewise: TCheckBox;
    dex_from: TDateEditX;
    dex_To: TDateEditX;
    btn_date: TSpeedButton;
    btn_date1: TSpeedButton;
    lbl_from: TLabel;
    lbl_To: TLabel;
    chk_Time: TCheckBox;
    medt_from: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    medt_To: TMaskEdit;
    dblcb_department: TDBLookupComboBox;
    lbl1: TLabel;
    orqry_dep: TOraQuery;
    ds_dep: TDataSource;
    procedure rb_ReceivedClick(Sender: TObject);
    procedure bb_closeClick(Sender: TObject);
    procedure rb_NotReceivedClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SampleNotReceived;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_datewiseClick(Sender: TObject);
    procedure chk_TimeClick(Sender: TObject);
    procedure btn_dateClick(Sender: TObject);
    procedure btn_date1Click(Sender: TObject);
    procedure bb_previewClick(Sender: TObject);
    procedure dblcb_departmentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bb_sendtoXLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   dbGRid:TDBGrid;
  pb_ToXl:Boolean;
    { Public declarations }
  end;

var
  Form_SampleWiseReport: TForm_SampleWiseReport;

implementation

{$R *.dfm}

procedure TForm_SampleWiseReport.bb_closeClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_SampleWiseReport.bb_previewClick(Sender: TObject);
var
    datasource1:TDataSource;
begin
    try
       with Form_SampleWise do
       begin
           qrlbl_from.Caption:=dex_from.ADDateAsText;
           qrlbl_To1.Caption:=dex_To.ADDateAsText;

           if (dblcb_department.KeyValue)<>null then
           begin
              qrlbl_depname.Caption:=dblcb_department.Text;
           end
           else
              qrlbl_depname.Caption:= 'All';

           with orqry_main do
           begin
             close;
             Session:=DM_Hospital.DB;

             if rb_Received.Checked then
             begin
                 if chk_datewise.Checked then
                 begin
                     sql[6]:='and SAMPLEtakenDATE between '+quotedstr(dex_from.Text)+' and '+quotedstr(dex_to.Text)+'';
                 end;

                 if rb_All.Checked then
                   sql[7]:='and 1=1'
                 else if rb_YesFiniding.Checked then
                   sql[7]:='and testprogressstatus=4'
                 else if rb_NoFinding.Checked then
                   sql[7]:='and testprogressstatus=3'
                 else if rb_Verified.Checked then
                   sql[7]:='and testprogressstatus>=5'  ;


                 if (dblcb_department.KeyValue)<>null then
                 begin
                   SQL[8]:=' and pt.depid='+#39+inttostr(dblcb_department.KeyValue)+#39;
                 end
                 else
                   SQL[8]:=' and 1=1';

                 if chk_Time.Checked then
                 begin
                   SQL[9]:='and (Case when SAMPLEtakenDATE ='+quotedstr(dex_from.Text)+' Then SAMPLEtakentime else '+quotedstr(medt_from.EditText)+' End >='+quotedstr(medt_from.EditText)+')';
                   sql[10]:='and (Case when SAMPLEtakenDATE ='+quotedstr(dex_to.Text)+' Then SAMPLEtakentime else '+QuotedStr(medt_To.EditText)+' End <='+QuotedStr(medt_To.EditText)+')';
                 end
                 else
                 begin
                   SQL[9]:=' and 1=1';
                   sql[10]:=' and 1=1';
                 end;
             end;
             Open;
           end;
           datasource1:=TDataSource.Create(Self);
           datasource1.DataSet:=orqry_main;
           dbGRid.DataSource:=datasource1;

           if pb_ToXl then
           begin
             SendToExcels( nil,dbGRid,'Sample Wise Report',(dex_from.Text+'-'+dex_from.Text),'',
             gs_HospitalName,gs_HospitalAddress,0);
           Exit;
           end;
           QuickRep.Preview;
       end;

    finally
        //Form_SampleWise.free;
    end;
end;

procedure TForm_SampleWiseReport.bb_sendtoXLClick(Sender: TObject);
begin
     pb_ToXl:=True;
     Bb_PreviewClick(Sender);
     pb_ToXl:=False;
end;

procedure TForm_SampleWiseReport.btn_date1Click(Sender: TObject);
begin
ChangeDateSystem(dex_from,btn_date1);
ChangeDateSystem(dex_To,btn_date);
end;

procedure TForm_SampleWiseReport.btn_dateClick(Sender: TObject);
begin
ChangeDateSystem(dex_To,btn_date);
ChangeDateSystem(dex_from,btn_date1);
end;

procedure TForm_SampleWiseReport.chk_datewiseClick(Sender: TObject);
begin
    if chk_datewise.Checked then
        chk_Time.Checked:=False
    else
    chk_Time.Checked:=True;

    if chk_Time.Checked then
    chk_datewise.Checked:=True;

end;
procedure TForm_SampleWiseReport.chk_TimeClick(Sender: TObject);
begin
    if chk_Time.Checked then
    begin
       chk_datewise.Checked:=True;
    end
    else
       chk_datewise.Checked:=True;
end;

procedure TForm_SampleWiseReport.dblcb_departmentKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
       dblcb_department.KeyValue:=null;
     end;
end;

procedure TForm_SampleWiseReport.FormCreate(Sender: TObject);
begin
 Form_SampleWise:=TForm_SampleWise.Create(Self);
 dbGRid:=TDBGrid.Create(Self);
end;

procedure TForm_SampleWiseReport.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then
      Close;
end;

procedure TForm_SampleWiseReport.FormShow(Sender: TObject);
begin
   // SampleNotReceived;


    medt_from.EditText:=Copy(todaystime,0,5);
    medt_To.editText:=Copy(TodaysTime,0,5);


    chk_datewise.Checked:=True;


     btn_date.Caption:=gs_DateCaption;
     btn_date1.Caption:=gs_DateCaption;


     dex_from.SystemOfDate := gi_datesystem;
     dex_from.text := gs_From;

     dex_to.SystemOfDate := gi_datesystem;
     dex_To.text := gs_to;

     RefreshQuery(orqry_dep,'');

     dblcb_department.KeyValue:=null;

end;

procedure TForm_SampleWiseReport.rb_NotReceivedClick(Sender: TObject);
begin
      SampleNotReceived;
end;

procedure TForm_SampleWiseReport.rb_ReceivedClick(Sender: TObject);
begin
   if rb_Received.Checked then
   begin
      gbx_sampleRec.Enabled:=True;
      rb_NoFinding.Enabled:=True;
      rb_YesFiniding.Enabled:=True;
      rb_Verified.Enabled:=True;
      rb_All.Enabled:=True;
   end
   else
   begin
      SampleNotReceived;
   end;
end;

procedure TForm_SampleWiseReport.SampleNotReceived;
begin
      gbx_sampleRec.Enabled:=False;
      rb_NoFinding.Enabled:=False;
      rb_YesFiniding.Enabled:=False;
      rb_Verified.Enabled:=False;
      rb_All.Enabled:=False;
end;

end.
