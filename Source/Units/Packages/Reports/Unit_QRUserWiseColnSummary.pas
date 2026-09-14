unit Unit_QRUserWiseColnSummary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,dm,serverdate,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables;

type
  TForm_QRUserWiseColnSummary = class(TForm)
    QuickRepUsercollection: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    lbl_hosname: TQRLabel;
    lbl_Address: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel_To: TQRLabel;
    QRLabel_FromDate: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QueryMain: TQuery;
    QRShape14: TQRShape;
    QRDBText6: TQRDBText;
    QRShape22: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRLabel18: TQRLabel;
    QRShape25: TQRShape;
    QRExpr7: TQRExpr;
    QRShape27: TQRShape;
    QRExpr8: TQRExpr;
    QRShape28: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape29: TQRShape;
    QRExpr9: TQRExpr;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRDBText5: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabelDate: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape13: TQRShape;
    QRDBText9: TQRDBText;
    QRShape17: TQRShape;
    qrdbtxtReceiptRefund: TQRDBText;
    QRShape23: TQRShape;
    QRExpr6: TQRExpr;
    QRShape11: TQRShape;
    QRShape26: TQRShape;
    QRShape16: TQRShape;
    QRLabelTime: TQRLabel;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel10Print(sender: TObject; var Value: string);
    procedure QRLabel21Print(sender: TObject; var Value: string);
    procedure lbl_AddressPrint(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure QRLabel12Print(sender: TObject; var Value: string);
    procedure QRLabel7Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QRUserWiseColnSummary: TForm_QRUserWiseColnSummary;

implementation

{$R *.dfm}

procedure TForm_QRUserWiseColnSummary.QRLabel10Print(sender: TObject;
  var Value: string);
begin
     Value:=ServerDate.TodaysTime;
end;

procedure TForm_QRUserWiseColnSummary.QRLabel12Print(sender: TObject; var Value: string);
begin
     Value:=gs_HosSloganTitle;
end;

procedure TForm_QRUserWiseColnSummary.QRLabel1Print(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TForm_QRUserWiseColnSummary.QRLabel21Print(sender: TObject;
  var Value: string);
begin
     Value:=gs_UserName;
end;

procedure TForm_QRUserWiseColnSummary.QRLabel7Print(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalPhoneNumber;
end;

procedure TForm_QRUserWiseColnSummary.FormCreate(Sender: TObject);
begin
     lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
end;

procedure TForm_QRUserWiseColnSummary.lbl_AddressPrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

procedure TForm_QRUserWiseColnSummary.QRLabel9Print(sender: TObject;
  var Value: string);
begin
     Value:=serverdate.TodaysDate;
end;
//
//initialization
//     RegisterClass(TFormRepUserWiseCollection);
//finalization
//     UnRegisterClass(TFormRepUserWiseCollection);
end.
