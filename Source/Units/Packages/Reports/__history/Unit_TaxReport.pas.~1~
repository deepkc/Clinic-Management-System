unit Unit_TaxReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ServerDate,Fxn,UnitSendToExcel,
  Dialogs, Buttons, OleCtrls, DateEditXControl_TLB, StdCtrls, ExtCtrls;

type
  TForm_TaxReport = class(TForm)
    Panel1: TPanel;
    BitBtnPreview: TBitBtn;
    BitBtnCancel: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Dex_From: TDateEditX;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Dex_To: TDateEditX;
    SpeedButton2: TSpeedButton;
    Rb_Detail: TRadioButton;
    Rb_Summary: TRadioButton;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     pb_ToXl:Boolean;
  end;

var
  Form_TaxReport: TForm_TaxReport;

implementation

uses Unit_QrTaxReport;

{$R *.dfm}

procedure TForm_TaxReport.BitBtn1Click(Sender: TObject);
begin
     pb_ToXl:=True;
     BitBtnPreviewClick(Sender);
end;

procedure TForm_TaxReport.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_TaxReport.BitBtnPreviewClick(Sender: TObject);
begin
     Dex_From.SystemOfDate := gi_datesystem;
     Dex_To.SystemOfDate := gi_datesystem;
     SpeedButton1.Caption := gs_DateCaption;
     SpeedButton2.Caption := gs_DateCaption;
     gs_From := Dex_From.text;
     gs_to := Dex_To.text;
     Dex_From.SystemOfDate := 0;
     Dex_To.SystemOfDate := 0;
     SpeedButton1.Caption := 'BS';
     SpeedButton2.Caption := 'BS';
     Try
          Form_QrTaxReport:=TForm_QrTaxReport.Create(nil);
          if pb_ToXl then
          Begin
            pb_ToXl:=False;
            SendToExcels_query(Form_QrTaxReport.Query_Data,Nil,'TAX SUMMARY REPORT',ServerDate.TodaysDate,'',gs_hospitalname,gs_hospitaladdress,10);
          End
          Else
            Form_QrTaxReport.QuickRep1.Preview;
     Finally
          Form_QrTaxReport.Free;
     End;
end;

procedure TForm_TaxReport.FormCreate(Sender: TObject);
begin
     Dex_From.ADDateAsText:=TodaysDate;
     Dex_From.SystemOfDate:=gi_datesystem;
     Dex_To.ADDateAsText:=TodaysDate;
     Dex_To.SystemOfDate:=gi_datesystem;
end;

procedure TForm_TaxReport.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=27 then
     Close;
end;

procedure TForm_TaxReport.FormShow(Sender: TObject);
begin
     Dex_From.SystemOfDate := gi_datesystem;
     Dex_To.SystemOfDate := gi_datesystem;
     Dex_From.text := serverdate.TodaysDate;
     Dex_To.text := serverdate.TodaysDate;
     SpeedButton1.Caption := gs_DateCaption;
     SpeedButton2.Caption := gs_DateCaption;
     Dex_From.SystemOfDate := 0;
     Dex_To.SystemOfDate := 0;
     SpeedButton1.Caption := 'BS';
     SpeedButton2.Caption := 'BS';
end;

end.
