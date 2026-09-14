unit Unit_QRFraction;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_QRFraction = class(TForm)
    QR_Fraction: TQuickRep;
    TitleBand1: TQRBand;
    QRLabelToday: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QueryDetail: TOraQuery;
    QRGroup1: TQRGroup;
    QRLabel5: TQRLabel;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    DataSourceMaster: TDataSource;
    QueryMaster: TOraQuery;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRExpr18: TQRExpr;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRBandGroupFooter: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    QueryMasterFRACTIONID: TFloatField;
    QueryMasterDESCRIPTION: TStringField;
    QueryMasterTESTPRICE: TFloatField;
    QueryMasterFRACTIONRATE: TFloatField;
    QueryMasterFRACTIONAMT: TFloatField;
    QueryMasterBASIS: TStringField;
    QueryDetailPOSITIONNAME: TStringField;
    QueryDetailNAME: TStringField;
    QueryDetailTESTPRICE: TFloatField;
    QueryDetailFRACTIONRATE: TFloatField;
    QueryDetailFRACTIONAMT: TFloatField;
    procedure QRLabel1Print(sender: TObject; var Value: String);
    procedure QRLabel14Print(sender: TObject; var Value: String);
    procedure QRLabel15Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRFraction: TForm_QRFraction;

implementation

uses Fxn;

{$R *.DFM}

procedure TForm_QRFraction.QRLabel1Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalName;
end;

procedure TForm_QRFraction.QRLabel14Print(sender: TObject;
  var Value: String);
begin
   Value:='';
end;

procedure TForm_QRFraction.QRLabel15Print(sender: TObject;
  var Value: String);
begin
   Value:=gs_HospitalAddress;
end;

end.
