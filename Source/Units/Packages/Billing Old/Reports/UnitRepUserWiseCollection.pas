unit UnitRepUserWiseCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,dm,serverdate,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables;

type
  TFormRepUserWiseCollection = class(TForm)
    QuickRepUsercollection: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel15: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QueryMain: TQuery;
    procedure QRLabel1Print(sender: TObject; var Value: string);
    procedure QRLabel9Print(sender: TObject; var Value: string);
    procedure QRLabel10Print(sender: TObject; var Value: string);
    procedure QRLabel21Print(sender: TObject; var Value: string);
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

procedure TFormRepUserWiseCollection.QRLabel9Print(sender: TObject;
  var Value: string);
begin
     Value:=serverdate.TodaysDate;
end;

end.
