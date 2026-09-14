unit Unit_QrInvestigationPreview;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Unit_QrInvestigativeResult,Fxn,DBGrids,
     Dialogs, StdCtrls, QRPrntr, Buttons, ExtCtrls;

type
     TForm_QrInvestigationPreview = class(TForm)
          QRPreview1: TQRPreview;
          Panel2: TPanel;
          BB_Close: TBitBtn;
          Panel1: TPanel;
          BitBtn1: TBitBtn;
          BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_QrInvestigationPreview: TForm_QrInvestigationPreview;

implementation

uses Unit_Verification;
{$R *.dfm}

procedure TForm_QrInvestigationPreview.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_QrInvestigationPreview.BitBtn1Click(Sender: TObject);
Var
     Column:TColumn;
begin
     Form_Verification.Query_samplecollectedright.Next;
     Form_Verification.DBGrid1CellClick(Column);
     gi_PatientID := Form_Verification.Query_SampleCollected.FieldByName('PatientID').AsInteger;
     gi_PatientTestID := Form_Verification.Query_SampleCollected.FieldByName('PatientTestId').AsInteger;
     Gs_BillNo := Form_Verification.Query_SampleCollected.FieldByName('BillNo').AsString;
     gs_SampleNo := Form_Verification.Query_SampleCollected.FieldByName('SampleNo').AsString;
     gs_TestDate :=Form_Verification.Query_SampleCollected.FieldByName('TestDate').AsString;

     Form_QrFinding.QrFinding.Prepare;
     Form_QrFinding.QrFinding.Preview;
     Form_QrInvestigationPreview.QRPreview1.QRPrinter:=Form_QrFinding.QrFinding.QRPrinter;
//     Form_QrInvestigationPreview.QRPreview1.
end;

procedure TForm_QrInvestigationPreview.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

end.
