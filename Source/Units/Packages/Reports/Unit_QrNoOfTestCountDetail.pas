unit Unit_QrNoOfTestCountDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, qrpBaseCtrls,Fxn,ServerDate,DM, DB,
  MemDS, DBAccess, Ora;

type
  TForm_QrTestWiseDetail = class(TForm)
    QuickRep: TQRPQuickrep;
    PageHeaderBand1: TQRBand;
    lbl_hosname: TQRLabel;
    lbl_hosaddress: TQRLabel;
    QRLabelReportTitle: TQRLabel;
    qrlbl_Fro: TQRLabel;
    qrlbl_To: TQRLabel;
    qrshp1: TQRShape;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl6: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    Sno: TQRDBText;
    Billdatetime: TQRDBText;
    SampleRecdatetime: TQRDBText;
    orqry_main: TOraQuery;
    qrlbl_from: TQRLabel;
    qrlbl_To1: TQRLabel;
    QRLabel1: TQRLabel;
    qrlbl_depname: TQRLabel;
    qrlbl5: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    qrdbtxtsamplerecdatetime: TQRDBText;
    QRLabel3: TQRLabel;
    qrdbtxtTestName: TQRDBText;
    qrbndGroupFooterBand1: TQRBand;
    qrlbl4: TQRLabel;
    qrlbl7: TQRLabel;
    qrdbtxtTestName1: TQRDBText;
    QRLabel: TQRLabel;
    qrdbtxtTestName2: TQRDBText;
    qrdbtxtTestName3: TQRDBText;
    Qry: TOraQuery;
    procedure lbl_hosnamePrint(sender: TObject; var Value: string);
    procedure lbl_hosaddressPrint(sender: TObject; var Value: string);
    procedure SnoPrint(sender: TObject; var Value: string);
    procedure QuickRepAfterPrint(Sender: TObject);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrdbtxtTestName1Print(sender: TObject; var Value: string);
    procedure qrdbtxtTestName2Print(sender: TObject; var Value: string);
    procedure qrdbtxtTestName3Print(sender: TObject; var Value: string);
  private
    { Private declarations }
    I,TotalTest:INTEGER;
  public
    { Public declarations }
  end;

var
  Form_QrTestWiseDetail: TForm_QrTestWiseDetail;

implementation

{$R *.dfm}

procedure TForm_QrTestWiseDetail.lbl_hosaddressPrint(sender: TObject;
  var Value: string);
begin
    Value:=gs_HospitalAddress;
end;

procedure TForm_QrTestWiseDetail.lbl_hosnamePrint(sender: TObject; var Value: string);
begin
    Value:=gs_HospitalName;
end;

procedure TForm_QrTestWiseDetail.qrdbtxtTestName1Print(sender: TObject;
  var Value: string);
begin
     if Value<>'' then
     TotalTest:=StrToInt(Value)
end;

procedure TForm_QrTestWiseDetail.qrdbtxtTestName2Print(sender: TObject;
  var Value: string);
begin
     Value:=inttostr(TotalTest-i)
end;

procedure TForm_QrTestWiseDetail.qrdbtxtTestName3Print(sender: TObject;
  var Value: string);
begin
     Value:=IntToStr(i);
end;

procedure TForm_QrTestWiseDetail.QuickRepAfterPrint(Sender: TObject);
begin
     i:=1;
end;

procedure TForm_QrTestWiseDetail.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     i:=0;
end;

procedure TForm_QrTestWiseDetail.SnoPrint(sender: TObject; var Value: string);
begin
     i:=i+1;
     Value:=IntTostr(i);
end;

end.
