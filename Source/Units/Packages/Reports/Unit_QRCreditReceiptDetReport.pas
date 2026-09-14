unit Unit_QRCreditReceiptDetReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, MemDS, DBAccess, Ora;

type
  TForm_QRCreditReceiptDetailReport = class(TForm)
    qr_creditCollection: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel_Add: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape15: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape45: TQRShape;
    QRShape48: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape49: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel18: TQRLabel;
    QRExpr10: TQRExpr;
    QRShape3: TQRShape;
    QRShape38: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape27: TQRShape;
    QRShape31: TQRShape;
    QRShape17: TQRShape;
    Query_Receipt: TOraQuery;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel_AddPrint(sender: TObject; var Value: string);
    procedure QRLabel40Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRCreditReceiptDetailReport: TForm_QRCreditReceiptDetailReport;

implementation

uses Fxn,ServerDate;

{$R *.dfm}

procedure TForm_QRCreditReceiptDetailReport.QRLabel1Print(sender: TObject;
  var Value: string);
begin
     value := gs_HospitalName;
end;

procedure TForm_QRCreditReceiptDetailReport.QRLabel40Print(sender: TObject;
  var Value: string);
begin
     Value := '';
end;

procedure TForm_QRCreditReceiptDetailReport.QRLabel_AddPrint(sender: TObject;
  var Value: string);
begin
     Value := gs_HospitalAddress;
end;

end.
