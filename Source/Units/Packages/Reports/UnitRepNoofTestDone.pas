unit UnitRepNoofTestDone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn,dm,serverdate,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TFormRepNoofTestDone = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabelDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    Date1: TQRLabel;
    Date2: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel35: TQRLabel;
    QRLabel_HosName: TQRLabel;
    QRLabel_HosPhone: TQRLabel;
    QRShape4: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QueryMain: TOraQuery;
    QRExpr1: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabelUser: TQRLabel;
    GroupFooterBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    qrlbl_time: TQRLabel;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure QRLabelDatePrint(sender: TObject; var Value: string);
    procedure QRLabelTimePrint(sender: TObject; var Value: string);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QRLabel5Print(sender: TObject; var Value: string);
    procedure QRLabel_HosPhonePrint(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
    i:Integer;
  end;

var
  FormRepNoofTestDone: TFormRepNoofTestDone;

implementation

{$R *.dfm}

procedure TFormRepNoofTestDone.QRLabel5Print(sender: TObject; var Value: string);
begin
     i:=i+1;
     Value:=IntTostr(i);
end;

procedure TFormRepNoofTestDone.QRLabelDatePrint(sender: TObject;
  var Value: string);
begin
     Value:=serverdate.TodaysDate;
end;

procedure TFormRepNoofTestDone.QRLabelTimePrint(sender: TObject;
  var Value: string);
begin
     Value:=serverdate.TodaysTime;
end;

procedure TFormRepNoofTestDone.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

procedure TFormRepNoofTestDone.QRLabel_HosPhonePrint(sender: TObject; var Value: string);
begin
     Value:=gs_HospitalAddress;
end;

procedure TFormRepNoofTestDone.QuickRep1AfterPrint(Sender: TObject);
begin
     i:=1;
end;

procedure TFormRepNoofTestDone.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     i:=0;
end;

initialization
     RegisterClass(TFormRepNoofTestDone);
finalization
     UnRegisterClass(TFormRepNoofTestDone);
end.
