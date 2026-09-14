unit unitMedExamEntryReport;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;
         
type
  TFormReportMedicalExamination = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape9: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape11: TQRShape;
    QRLabel31: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape18: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape5: TQRShape;
    QRShape32: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel73: TQRLabel;
    QRLabelPDate: TQRLabel;
    QueryMain: TOraQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel74: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QueryFooter: TOraQuery;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRImage1: TQRImage;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel96: TQRLabel;
    QRShape42: TQRShape;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel72: TQRLabel;
    QRShape30: TQRShape;
    QRDBText36: TQRDBText;
    QRLabel88: TQRLabel;
    QRLabelFooter1: TQRLabel;
    QRLabelFooter2: TQRLabel;
    QRShape43: TQRShape;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape45: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRShape46: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape31: TQRShape;
    QRShape10: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel47: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    procedure QRLabel96Print(sender: TObject; var Value: String);
    procedure QRLabel93Print(sender: TObject; var Value: String);
    procedure QRLabel95Print(sender: TObject; var Value: String);
    procedure QRDBText21Print(sender: TObject; var Value: String);
    procedure QRDBText22Print(sender: TObject; var Value: String);
    procedure QRDBText23Print(sender: TObject; var Value: String);
    procedure QRDBText24Print(sender: TObject; var Value: String);
    procedure QRDBText45Print(sender: TObject; var Value: String);
    procedure TitleBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    ls_Gender:String;
  end;

var
  FormReportMedicalExamination: TFormReportMedicalExamination;

implementation

uses Unit_GlobalFxnVar;

{$R *.DFM}

procedure TFormReportMedicalExamination.QRLabel96Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosPhEPS;
end;

procedure TFormReportMedicalExamination.QRLabel93Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosName;
end;

procedure TFormReportMedicalExamination.QRLabel95Print(sender: TObject;
  var Value: String);
begin
     Value:=gs_HosAddress;
end;

procedure TFormReportMedicalExamination.QRDBText21Print(sender: TObject;
  var Value: String);
var
     lf_Value,lf_LowR,lf_HighR:Double;
begin
     lf_Value:=StrToFloat(Value);
     If ls_Gender='MALE' Then
     Begin
          lf_LowR:=17;
          lf_HighR:=59;
     End
     Else
     Begin
          lf_LowR:=14;
          lf_HighR:=36;
     End;

     If (lf_Value<lf_LowR) or (lf_Value>lf_HighR) Then
     QRDBText21.Font.Style:=[fsBold]
     Else
     QRDBText21.Font.Style:=[];
end;

procedure TFormReportMedicalExamination.QRDBText22Print(sender: TObject;
  var Value: String);
var
     lf_Value,lf_LowR,lf_HighR:Double;
begin
     lf_Value:=StrToFloat(Value);
     If ls_Gender='MALE' Then
     Begin
          lf_LowR:=21;
          lf_HighR:=72;
     End
     Else
     Begin
          lf_LowR:=9;
          lf_HighR:=52;
     End;

     If (lf_Value<lf_LowR) or (lf_Value>lf_HighR) Then
     QRDBText22.Font.Style:=[fsBold]
     Else
     QRDBText22.Font.Style:=[];
end;

procedure TFormReportMedicalExamination.QRDBText23Print(sender: TObject;
  var Value: String);
var
     lf_Value,lf_LowR,lf_HighR:Double;
begin
     lf_Value:=StrToFloat(Value);
     lf_LowR:=200;

     If (lf_Value>=lf_LowR)  Then
     QRDBText23.Font.Style:=[fsBold]
     Else
     QRDBText23.Font.Style:=[];
end;

procedure TFormReportMedicalExamination.QRDBText24Print(sender: TObject;
  var Value: String);
var
     lf_Value,lf_LowR,lf_HighR:Double;
begin
     lf_Value:=StrToFloat(Value);
     If ls_Gender='MALE' Then
     Begin
          lf_LowR:=40;
          lf_HighR:=54;
     End
     Else
     Begin
          lf_LowR:=37;
          lf_HighR:=47;
     End;

     If (lf_Value<lf_LowR) or (lf_Value>lf_HighR) Then
     QRDBText24.Font.Style:=[fsBold]
     Else
     QRDBText24.Font.Style:=[];
end;

procedure TFormReportMedicalExamination.QRDBText45Print(sender: TObject;
  var Value: String);
begin
     QRLabel78.Enabled:=True;
     QRLabel77.Enabled:=True;
     if QueryMain.FieldByName('visualaid').AsString='Aided' then
          QRLabel78.Left:=522
     else
            QRLabel78.Left:=535;

end;

procedure TFormReportMedicalExamination.TitleBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     if QueryMain.FieldByName('visualaid').AsString='' then
     begin
          QRLabel78.Enabled:=False;
          QRLabel77.Enabled:=False;
     end;
end;

end.
