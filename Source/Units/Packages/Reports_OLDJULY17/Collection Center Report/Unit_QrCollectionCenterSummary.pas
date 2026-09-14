unit Unit_QrCollectionCenterSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Fxn,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_QrCollectionCenterSummary = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    lbl_hosname: TQRLabel;
    lbl_hosaddress: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    lbl_date: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    Query_Data: TOraQuery;
    PageFooterBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape7: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRShape8: TQRShape;
    QRDBText4: TQRDBText;
    QRShape11: TQRShape;
    QRExpr3: TQRExpr;
    QRShape12: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrCollectionCenterSummary: TForm_QrCollectionCenterSummary;

implementation

{$R *.dfm}

end.
