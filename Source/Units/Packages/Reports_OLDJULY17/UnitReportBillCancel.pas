unit UnitReportBillCancel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TFormReportBillCancel = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QRLabelTo: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelFrom: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QueryMaster: TOraQuery;
    QRLabel1: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    QRSysData2: TQRSysData;
    SummaryBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReportBillCancel: TFormReportBillCancel;

implementation

uses Fxn;

{$R *.DFM}

procedure TFormReportBillCancel.QRLabel1Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TFormReportBillCancel.QRLabel14Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HosSloganTitle;
end;

procedure TFormReportBillCancel.QRLabel15Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_Hospitaladdress;
end;

end.
