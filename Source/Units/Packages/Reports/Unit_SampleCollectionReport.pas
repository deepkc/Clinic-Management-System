unit Unit_SampleCollectionReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls, ExtCtrls,
  Mask,Fxn,DM,ServerDate,Ora, DB;

type
  TForm_samplecollection = class(TForm)
    pnl_top: TPanel;
    pnl_body: TPanel;
    Label4: TLabel;
    Dblcb_Dep: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    label2: TLabel;
    Label1: TLabel;
    BtnTo: TSpeedButton;
    BtnFrom: TSpeedButton;
    DateEditXTo: TDateEditX;
    DateEditxFrom: TDateEditX;
    Cb_All: TCheckBox;
    Label3: TLabel;
    Label5: TLabel;
    medt_from: TMaskEdit;
    medt_To: TMaskEdit;
    chk_datewise: TCheckBox;
    chk_timewise: TCheckBox;
    BB_Close: TBitBtn;
    btn_preview: TBitBtn;
    btn_Excel: TBitBtn;
    ds_Dep: TDataSource;
    procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_datewiseClick(Sender: TObject);
    procedure chk_timewiseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     Oraqry_Dep:TOraquery;

    { Public declarations }
  end;

var
  Form_samplecollection: TForm_samplecollection;

implementation

{$R *.dfm}

procedure TForm_samplecollection.BB_CloseClick(Sender: TObject);
begin
Close;
end;

procedure TForm_samplecollection.chk_datewiseClick(Sender: TObject);
begin
    if chk_datewise.Checked then
       chk_timewise.Checked:=false
    else
       chk_timewise.Checked:=True;

end;

procedure TForm_samplecollection.chk_timewiseClick(Sender: TObject);
begin
    if chk_timewise.Checked then
    begin
       chk_datewise.Checked:=false;
       medt_from.Enabled:=True;
       medt_To.Enabled:=True;
    end
    else
    begin
      chk_datewise.Checked:=True;
      medt_from.Enabled:=False;
      medt_To.Enabled:=False;
    end;

end;

procedure TForm_samplecollection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Oraqry_Dep.Free;
end;

procedure TForm_samplecollection.FormCreate(Sender: TObject);
begin
    chk_datewise.Checked:=True;
    DateEditxFrom.SystemOfDate:=gi_datesystem;
    DateEditXTo.SystemOfDate:=gi_datesystem;
    DateEditxFrom.ADDateAsText := gs_From;
    DateEditXTo.ADDateAsText:=gs_to;

    medt_from.EditText:=todaystime;
    medt_To.EditText:=TodaysTime;

    BtnFrom.caption := gs_DateCaption;
    BtnTo.caption := gs_DateCaption;

    try
    Oraqry_Dep:=TOraQuery.Create(nil);
    with Oraqry_Dep do
    begin
      Close;
      Session:=DM_Hospital.DB;
      sql.Clear;
      SQL.Add('select * from department') ;
      Open;
      ds_Dep.DataSet:=Oraqry_Dep;
    end;
    finally

    end;

end;

procedure TForm_samplecollection.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then
        close;
end;

end.
