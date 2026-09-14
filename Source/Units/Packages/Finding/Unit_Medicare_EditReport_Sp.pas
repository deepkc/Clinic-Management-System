unit Unit_Medicare_EditReport_Sp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables;

type
  TForm_MEDICARE_EditReport_Sp = class(TForm)
    QR_MedicareSp: TQuickRep;
    QryPatientInfo: TQuery;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabelDate: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelWard: TQRLabel;
    QRLabelWard1: TQRLabel;
    QRLabel_RunningNo: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabelDocCap: TQRLabel;
    QRLabelDoctor: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabelReportDate: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel_ReportTile: TQRLabel;
    QryDetail: TQuery;
    SummaryBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel_DocQualification: TQRLabel;
    QRLabel_TestTime: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRRichText1: TQRRichText;
    QRLabel31: TQRLabel;
    Query_PtSplRemarks: TQuery;
    QRLabel_IPNoCap: TQRLabel;
    QRLabel_IPNo: TQRLabel;
    QRShape10: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape11: TQRShape;
    QryWardBed: TQuery;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    Query1: TQuery;
    QRShape1: TQRShape;
    QRShape2nd: TQRShape;
    QryMaster: TQuery;
    QryMasterDepID: TIntegerField;
    QryMasterDepTestName: TStringField;
    QryMasterDepOrder: TIntegerField;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    procedure QRLabelDatePrint(sender: TObject; var Value: String);
    procedure QRLabelReportDatePrint(sender: TObject; var Value: String);
    procedure QRLabel24Print(sender: TObject; var Value: String);
    procedure QRLabel27Print(sender: TObject; var Value: String);
    procedure QRLabel28Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText4Print(sender: TObject; var Value: String);
    procedure QRDBText1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
          b_IsShowRemarks:Boolean;
          ps_TestName:String;
    { Public declarations }
  end;

var
  Form_MEDICARE_EditReport_Sp: TForm_MEDICARE_EditReport_Sp;

implementation

uses Unit_GlobalFxnVar;

{$R *.DFM}

procedure TForm_MEDICARE_EditReport_Sp.QRLabelDatePrint(sender: TObject;
  var Value: String);
Var  ls_Date:String;
begin
     DEX_ControlTem.SystemOfDate:=gi_DateSystem;
     ls_Date:=Value;
     DEX_ControlTem.Text:=Value;
     IF gi_DateSystem=1 Then
     Begin
          DEX_ControlTem.SystemOfDate:=0;
          Value:=ls_Date+' ('+DEX_ControlTem.Text+' BS)';
     End
     Else
     Begin
          DEX_ControlTem.SystemOfDate:=1;
          Value:=ls_Date+' ('+DEX_ControlTem.Text+' AD)';
     End;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRLabelReportDatePrint(sender: TObject;
  var Value: String);
Var ls_Date:String;
begin
     DEX_ControlTem.SystemOfDate:=gi_DateSystem;
     ls_Date:=Value;
     DEX_ControlTem.Text:=Value;
     IF gi_DateSystem=1 Then
     Begin
          DEX_ControlTem.SystemOfDate:=0;
          Value:=ls_Date+' ('+DEX_ControlTem.Text+' BS)';
     End
     Else
     Begin
          DEX_ControlTem.SystemOfDate:=1;
          Value:=ls_Date+' ('+DEX_ControlTem.Text+' AD)';
     End;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRLabel24Print(sender: TObject;
  var Value: String);
begin
     IF gs_IsPrint_Patho_Rep_InLetterHead='Y' Then
     Value:=''
     Else
     Value:=gs_HosName;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRLabel27Print(sender: TObject;
  var Value: String);
begin
     IF gs_IsPrint_Patho_Rep_InLetterHead='Y' Then
     Value:=''
     Else
     Value:=gs_HosAddress;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRLabel28Print(sender: TObject;
  var Value: String);
begin
     IF gs_IsPrint_Patho_Rep_InLetterHead='Y' Then
     Value:=''
     Else
     Value:=gs_HosPhoneBill;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRDBText9Print(sender: TObject;
  var Value: String);
begin
     IF ps_TestName='STOOL' Then
     Begin
          QryDetail.FieldByName('Finding2nd').AsString;
          IF Trim(QryDetail.FieldByName('Unit').AsString)<>'' Then
          QRDBText1.Width:=135
          Else
          QRDBText1.Width:=171;
          QRShape2.Height:=0;
          //QRDBText6.Font.Color:=clWhite;
          QRDBText6.Font.Color:=clBlack;

          QRShape1.Height:=1;
          IF QryDetail.FieldByName('TestId1st').AsInteger=462 Then
          Begin
               QRDBText9.Left:=86;
               QRShape6.Width:=0;
          End
          Else IF QryDetail.FieldByName('TestId1st').AsInteger=463 Then
          Begin
               QRDBText9.Font.Size:=11;
               QRDBText9.Left:=3;
               QRShape6.Width:=1;
          End
          Else IF QryDetail.FieldByName('TestId1st').AsInteger=465 Then
          Begin
               QRShape1.Height:=0;
          End
          Else
          Begin
               QRDBText9.Left:=3;
               QRDBText9.Font.Size:=10;
               QRShape6.Width:=1;
          End;
     End
     Else
     Begin
          QRShape1.Height:=1;
          QRDBText1.Width:=134;
          QRShape2.Height:=40;
          QRDBText6.Font.Color:=clBlack;
          
          IF QryDetail.FieldByName('IsHeading').AsString='C' Then
          Begin
               QRDBText9.Left:=86;
               QRShape6.Width:=0;
          End
          Else IF QryDetail.FieldByName('IsHeading').AsString='L' Then
          Begin
               //QRShape1.Height:=0;
               QRShape2nd.Height:=0;
          End
          Else IF QryDetail.FieldByName('IsHeading').AsString='Y' Then
          Begin
               QRDBText9.Font.Size:=11;
               QRDBText9.Left:=3;
               QRShape6.Width:=1;
          End
          Else
          Begin
               QRDBText9.Left:=3;
               QRDBText9.Font.Size:=10;
               QRShape6.Width:=1;
               QRShape2nd.Height:=1;
          End;
     End;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRDBText4Print(sender: TObject;
  var Value: String);
begin
     IF ps_TestName='STOOL' Then
     Begin
          IF QryDetail.FieldByName('TestId2nd').AsInteger=471 Then
          Begin
               QRShape2nd.Height:=0;
               QRDBText9.Top:=1;
          End
          Else IF (Value='.') or (QryDetail.FieldByName('TestId2nd').AsInteger=462) Then
          Begin
               QRShape2nd.Height:=0;
               IF QryDetail.FieldByName('TestId2nd').AsInteger<>462 Then
               Value:='';
          End
          Else
          Begin
               QRShape2nd.Height:=1;
          End;
     End;
end;

procedure TForm_MEDICARE_EditReport_Sp.QRDBText1Print(sender: TObject;
  var Value: String);
begin
     IF Length(Value) > 20 Then
     DetailBand1.Height:=19;      
end;

end.
