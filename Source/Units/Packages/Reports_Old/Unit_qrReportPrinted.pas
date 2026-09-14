unit Unit_qrReportPrinted;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, qrpBaseCtrls,Fxn,ServerDate,DM, DB,
  MemDS, DBAccess, Ora;

type
  TForm_qrReportPrinted = class(TForm)
    QuickRep_pendingSampleCollection: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    OraQuery_Main: TOraQuery;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel_From: TQRLabel;
    QRLabel_To: TQRLabel;
    QRLabel_Print: TQRLabel;
    QRLabel_dept: TQRLabel;
    lbl_hosname: TQRLabel;
    lbl_hosaddress: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText6: TQRDBText;
    procedure lbl_hosnamePrint(sender: TObject; var Value: string);
    procedure lbl_hosaddressPrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_qrReportPrinted: TForm_qrReportPrinted;

implementation

{$R *.dfm}

procedure TForm_qrReportPrinted.lbl_hosaddressPrint(
  sender: TObject; var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

procedure TForm_qrReportPrinted.lbl_hosnamePrint(
  sender: TObject; var Value: string);
begin
     Value:=gs_HospitalName;
end;

end.
