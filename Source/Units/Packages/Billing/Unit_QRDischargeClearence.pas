unit Unit_QRDischargeClearence;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls,ServerDate, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Fxn_hos;

type
  TForm_QrDischargeClearence = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    lbl_InvoiceDate: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel54: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Qry: TOraQuery;
    QRLblTot: TQRLabel;
    QRDBText7: TQRDBText;
    procedure lbl_InvoiceDatePrint(sender: TObject; var Value: string);
    procedure QRLabel35Print(sender: TObject; var Value: string);
    procedure QRLabel64Print(sender: TObject; var Value: string);
    procedure QRLabel63Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrDischargeClearence: TForm_QrDischargeClearence;

implementation

{$R *.dfm}

procedure TForm_QrDischargeClearence.lbl_InvoiceDatePrint(sender: TObject;
  var Value: string);
begin
     Value:=Todaysdate;
end;

procedure TForm_QrDischargeClearence.QRLabel35Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_QrDischargeClearence.QRLabel63Print(sender: TObject; var Value: string);
begin
     Value:=gs_HosPhoneBill;
end;

procedure TForm_QrDischargeClearence.QRLabel64Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

end.
