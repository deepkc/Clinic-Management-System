unit Unit_QrCollectionCenterDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_QRCollectionCenterDetail = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    lbl_hosname: TQRLabel;
    lbl_hosaddress: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    lbl_date: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRShape16: TQRShape;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    Query_Data: TOraQuery;
    PageFooterBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape7: TQRShape;
    QRLabel3: TQRLabel;
    QRShape11: TQRShape;
    QRDBText6: TQRDBText;
    QRShape12: TQRShape;
    QRShape6: TQRShape;
    QRShape13: TQRShape;
    QRLabel4: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    QRShape19: TQRShape;
    QRDBText9: TQRDBText;
    QRShape20: TQRShape;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    QRShape9: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRCollectionCenterDetail: TForm_QRCollectionCenterDetail;

implementation

{$R *.dfm}

end.
