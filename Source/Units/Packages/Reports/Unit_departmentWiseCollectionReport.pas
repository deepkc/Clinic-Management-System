unit Unit_departmentWiseCollectionReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, MemDS, DBAccess, Ora;

type
  TForm_DepartmentWiseCollectionReport = class(TForm)
    qr_department: TQuickRep;
    QRBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QueryMain: TOraQuery;
    QRSubDetail1: TQRSubDetail;
    qrdb_mDepartment: TQRDBText;
    qrdb_dept: TQRDBText;
    qrdb_subDpt: TQRDBText;
    qrdb_count: TQRDBText;
    qrdb_amt: TQRDBText;
    qrdb_hst: TQRDBText;
    qrdb_totl: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    qrdb_disc: TQRDBText;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRShape9: TQRShape;
    QRLabel1: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr1: TQRExpr;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    procedure QRLabel11Print(sender: TObject; var Value: string);
    procedure QRLabel12Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_DepartmentWiseCollectionReport: TForm_DepartmentWiseCollectionReport;

implementation

uses Fxn;

{$R *.dfm}

procedure TForm_DepartmentWiseCollectionReport.QRLabel11Print(sender: TObject;
  var Value: string);
begin
     value:= gs_HospitalName;
end;

procedure TForm_DepartmentWiseCollectionReport.QRLabel12Print(sender: TObject;
  var Value: string);
begin
     Value := gs_HospitalAddress;
end;

end.
