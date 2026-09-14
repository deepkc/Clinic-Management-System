unit Unit_QrReffWiseRevenueSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Fxn,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm_QrReffWiseRevenueSummary = class(TForm)
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
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    Query_Data: TOraQuery;
    PageFooterBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape7: TQRShape;
    procedure QRDBText3Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrReffWiseRevenueSummary: TForm_QrReffWiseRevenueSummary;

implementation

{$R *.dfm}

procedure TForm_QrReffWiseRevenueSummary.QRDBText3Print(sender: TObject; var Value: string);
begin
     if Copy(Value,1,1)='-' then
     Value:='( '+Copy(Value,2,length(Value))+' )';
end;

end.
