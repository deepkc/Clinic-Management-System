unit Unit_QrPatientFindingDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn, dm, serverdate,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, MemDS, DBAccess, Ora;

type
  TForm_PatientFindingDetail = class(TForm)
    QuickRep_PaymentDues: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel6: TQRLabel;
    QRLabelDate: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel24: TQRLabel;
    Date1: TQRLabel;
    Date2: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel32: TQRLabel;
    QRLabelTimeRange: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel_HosName: TQRLabel;
    lbl_address: TQRLabel;
    QRShape4: TQRShape;
    QRLabel41: TQRLabel;
    QRLabelTime: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText69: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel61: TQRLabel;
    QRBand3: TQRBand;
    QRLabel26: TQRLabel;
    QRShape6: TQRShape;
    QRExpr32: TQRExpr;
    QRLabel62: TQRLabel;
    QRExpr28: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QueryData: TOraQuery;
    QRDBText1: TQRDBText;
    procedure QRLabel_HosNamePrint(sender: TObject; var Value: string);
    procedure FormCreate(Sender: TObject);
    procedure QRDBText9Print(sender: TObject; var Value: string);
    procedure QRDBText7Print(sender: TObject; var Value: string);
    procedure QRDBText8Print(sender: TObject; var Value: string);
  private
    { Private declarations }
  public
    Pf_Finding:Double;
    Ps_RefRange:string;

    { Public declarations }
    function GetFlag(Finding:Double;Range:string):string;

  end;

var
  Form_PatientFindingDetail: TForm_PatientFindingDetail;

implementation

{$R *.dfm}

procedure TForm_PatientFindingDetail.FormCreate(Sender: TObject);
begin
//          lbl_hosname.Caption:=gs_HospitalName;
     lbl_Address.Caption:=gs_HospitalAddress;
end;

function TForm_PatientFindingDetail.GetFlag(Finding:Double;Range:string): string;
var
estHead, ls_date, HSign, LSign, LRangeS, HRangeS, Suffix: String;
     LRange, HRange: Double;

begin
     if IsStrANumberExtended(StringReplace(Trim(Range), '-', '', [rfReplaceAll])) and (Trim(Range) <> '') then
     begin
          HRangeS := StringReplace(StrPos(PChar(Range), '-'), '-', '', [rfReplaceAll]);
          LRangeS := StringReplace(StringReplace(Range, (StringReplace(StrPos(PChar(Range), '-'), '-', '', [rfReplaceAll])), '',
                    [rfReplaceAll]), '-', '', [rfReplaceAll]);
          if LRangeS = '' then
               Range := HRangeS + Suffix
          else if HRangeS = '' then
               Range:= LRangeS + Suffix
          else
               Range := StringReplace(Range, '@', '', [rfReplaceAll]);
          if LRangeS <> '' then
          begin
               if copy(LRangeS, 1, 1) = '>' then
               begin
                    LSign := '>';
                    LRange := StrToFloat(copy(LRangeS, 2, 999));
               end
               else if copy(LRangeS, 1, 1) = '<' then
               begin
                    LSign := '<';
                    LRange := StrToFloat(copy(LRangeS, 2, 999));
               end
               else
               begin
                    LSign := '';
                    LRange := StrToFloat(StringReplace(LRangeS, ',', '', [rfReplaceAll]));
               end;
          end;
          if HRangeS <> '' then
          begin
               if copy(HRangeS, 1, 1) = '>' then
               begin
                    HSign := '>';
                    HRange := StrToFloat(copy(HRangeS, 2, 999));
               end
               else if copy(HRangeS, 1, 1) = '<' then
               begin
                    HSign := '<';
                    HRange := StrToFloat(copy(HRangeS, 2, 999));
               end
               else
               begin
                    HSign := '';
                    HRange := StrToFloat(StringReplace(HRangeS, ',', '', [rfReplaceAll]));
               end;
          end;
          if (Finding <>Null) and (Copy(FloatToStr(Finding),1,1)<> '<')
          and (Trim(Copy(FloatToStr(Finding),1,1))<> '>')
          then
          Begin
               if LSign = '>' then
               begin
                    if Finding < LRange then
                    begin
                         Result := 'L'
                    end
                    else
                         Result := 'N';
               end
               else if LSign = '<' then
               begin
                    if Finding > LRange then
                    begin
                    Result := 'H'
                    end
                    else
                    Result := 'N';
               end
               else if HSign = '>' then
               begin
                    if Finding < HRange then
                    begin
                    Result := 'L'
                    end
                    else
                    Result := 'N';
               end
               else if HSign = '<' then
               begin
                    if Finding > HRange then
                    begin
                    Result:= 'H'
                    end
                    else
                    Result := 'N';
               end
               else
               begin
                    if Finding < LRange then
                    Result:= 'L'
                    else if Finding > HRange then
                    Result:= 'H'
                    else if (Finding >= LRange) and (Finding <= HRange) then
                    Result := 'N'
                    else
                    Result:= '';
               end;
          End;
     end
end;

procedure TForm_PatientFindingDetail.QRDBText7Print(sender: TObject;
  var Value: string);
begin
    if value<>'' then
    if IsStrANumber(StringReplace(Value,',','',[rfReplaceAll])) then
    Pf_Finding:=StrToFloat(StringReplace(Value,',','',[rfReplaceAll]));
end;

procedure TForm_PatientFindingDetail.QRDBText8Print(sender: TObject;
  var Value: string);
begin
     Ps_RefRange:=Value;
end;

procedure TForm_PatientFindingDetail.QRDBText9Print(sender: TObject;
  var Value: string);
begin
     if (Pf_Finding>0) and (StringReplace(Ps_RefRange,'@','',[rfReplaceAll])<>'') then
     VALUE:=GetFlag(Pf_Finding,StringReplace(Ps_RefRange,'@','',[rfReplaceAll]));
end;

procedure TForm_PatientFindingDetail.QRLabel_HosNamePrint(sender: TObject;
  var Value: string);
begin
     Value:=gs_HospitalName;
end;

end.
