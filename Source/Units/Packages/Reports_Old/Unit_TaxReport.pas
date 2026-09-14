unit Unit_TaxReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ServerDate,Fxn,
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
    procedure FormCreate(Sender: TObject);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_TaxReport: TForm_TaxReport;

implementation

uses Unit_QrTaxReport;

{$R *.dfm}

procedure TForm_TaxReport.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_TaxReport.BitBtnPreviewClick(Sender: TObject);
begin
     gs_From:=Dex_From.text;
     gs_to:=Dex_To.text;
     Try
          Form_QrTaxReport:=TForm_QrTaxReport.Create(nil);
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

end.
