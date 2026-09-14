unit UnitRepUserWiseCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,dm,serverdate,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, qrpctrls;

type
  TFormRepUserWiseCollection = class(TForm)
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
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QueryMain: TOraQuery;
    QRExpr6: TQRExpr;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRDBText5: TQRDBText;
    QRShape12: TQRShape;
    QRExpr4: TQRExpr;
    QRShape14: TQRShape;
    QRDBText6: TQRDBText;
    QRShape22: TQRShape;
    QRDBText7: TQRDBText;
    QRShape23: TQRShape;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRLabel18: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
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
    QRDBText9: TQRDBText;
    QRShape32: TQRShape;
    QRExpr10: TQRExpr;
    QRLabel3: TQRLabel;
    QRShape33: TQRShape;
    QRDBText10: TQRDBText;
    QRShape34: TQRShape;
    QRLabel4: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape39: TQRShape;
    QRExpr11: TQRExpr;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRLabel25: TQRLabel;
    QRShape42: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape43: TQRShape;
    QRExpr12: TQRExpr;
    QRShape44: TQRShape;
    QRExpr13: TQRExpr;
    QRShape45: TQRShape;
    QRExpr14: TQRExpr;
    QRShape38: TQRShape;
    QRDBText13: TQRDBText;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel26: TQRLabel;
    Lbl_HospitalName: TQRLabel;
    Lbl_HospitalAddress: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    lbl_to: TQRLabel;
    lbl_From: TQRLabel;
    QRBand2: TQRBand;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape51: TQRShape;
    QRExpr15: TQRExpr;
    QRShape52: TQRShape;
    QRDBText19: TQRDBText;
    QRShape53: TQRShape;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRShape55: TQRShape;
    QRShape58: TQRShape;
    QRShape60: TQRShape;
    QRBand3: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRLabel41: TQRLabel;
    QRShape66: TQRShape;
    QRLabel42: TQRLabel;
    QRShape68: TQRShape;
    QRLabel43: TQRLabel;
    QRShape71: TQRShape;
    QRBand4: TQRBand;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRShape74: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape83: TQRShape;
    QRExpr21: TQRExpr;
    QRShape84: TQRShape;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRShape85: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRLabel27: TQRLabel;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRExpr20: TQRExpr;
    QRShape54: TQRShape;
    QRExpr24: TQRExpr;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel10Print(sender: TObject; var Value: string);
    procedure QRLabel21Print(sender: TObject; var Value: string);
    procedure lbl_AddressPrint(sender: TObject; var Value: string);
    procedure QRLabel7Print(sender: TObject; var Value: string);
    procedure QRLabel6Print(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepUserWiseCollection: TFormRepUserWiseCollection;

implementation

{$R *.dfm}

procedure TFormRepUserWiseCollection.QRLabel10Print(sender: TObject;
  var Value: string);
begin
     Value:=ServerDate.TodaysTime;
end;

procedure TFormRepUserWiseCollection.QRLabel1Print(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TFormRepUserWiseCollection.QRLabel21Print(sender: TObject;
  var Value: string);
begin
     Value:=gs_UserName;
end;

procedure TFormRepUserWiseCollection.FormCreate(Sender: TObject);
begin
     lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
     Lbl_HospitalName.Caption:=gs_HospitalName;
     Lbl_HospitalAddress.Caption:=gs_HospitalAddress;
end;

procedure TFormRepUserWiseCollection.lbl_AddressPrint(sender: TObject;
  var Value: string);
begin
     //
end;

procedure TFormRepUserWiseCollection.QRLabel6Print(sender: TObject;
  var Value: string);
begin
     Value:=gs_to;
end;

procedure TFormRepUserWiseCollection.QRLabel7Print(sender: TObject;
  var Value: string);
begin
          Value:=gs_From;
end;

procedure TFormRepUserWiseCollection.QRLabel9Print(sender: TObject;
  var Value: string);
begin
     {Value:=serverdate.TodaysDate;
     if i=0 then
     QRPCheckBox1.Checked:=True
     Else
     QRPCheckBox1.Checked:=False;}
end;
//
//initialization
//     RegisterClass(TFormRepUserWiseCollection);
//finalization
//     UnRegisterClass(TFormRepUserWiseCollection);
end.
