unit UnitReportTestName;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, Db, DBTables, Qrctrls, StdCtrls, Grids, DBGrids;

type
  TFrmReportTestName = class(TForm)
    QueryTestName: TQuery;
    QueryDepartment: TQuery;
    QueryDepartmentDEPID: TFloatField;
    QueryDepartmentDEPCODE: TStringField;
    QueryDepartmentDEPNAME: TStringField;
    DataSourceQueryDepartment: TDataSource;
    QuickRep1: TQuickRep;
    QRGroup1: TQRGroup;
    QRDBText5: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel_HosName: TQRLabel;
    QRLabel_HosAddress: TQRLabel;
    QRLabel_HosPhone: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel40: TQRLabel;
    PageFooterBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: String);
    procedure QRLabel_HosAddressPrint(sender: TObject; var Value: String);
    procedure QRLabel_HosPhonePrint(sender: TObject; var Value: String);
    procedure QRLabel40Print(sender: TObject; var Value: String);
    procedure QRLabel12Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReportTestName: TFrmReportTestName;

implementation

{$R *.DFM}

procedure TFrmReportTestName.QRLabel_HosNamePrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosName;
end;

procedure TFrmReportTestName.QRLabel_HosAddressPrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosAddress;
end;

procedure TFrmReportTestName.QRLabel_HosPhonePrint(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosPhone;
end;

procedure TFrmReportTestName.QRLabel40Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosRegistered;
end;

procedure TFrmReportTestName.QRLabel12Print(sender: TObject;
  var Value: String);
begin
     IF gi_HospitalId=5 Then
     Value:='   Foreigner';
end;

end.
