unit Qr_WorkList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, MemDS, DBAccess, Ora, OraSmart;

type
  TForm_QrreportWorkList = class(TForm)
    QuickReport1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel17: TQRLabel;
    Label_FDate: TQRLabel;
    QRLabel24: TQRLabel;
    label_TDate: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel_PrintDate: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText6: TQRDBText;
    label_timefrom: TQRLabel;
    label_timeto: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel_labNo: TQRLabel;
    QRDBText_labno: TQRDBText;
    Query_master: TOraQuery;
    Tableworklist: TTable;
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure QRLabel21Print(sender: TObject; var Value: String);
    procedure Tableworklistcreate;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_QrreportWorkList: TForm_QrreportWorkList;

implementation

uses Fxn;

{$R *.DFM}

{ TForm_QrreportWorkList }

procedure TForm_QrreportWorkList.QRLabel10Print(sender: TObject;
  var Value: String);
begin
    value:=gs_HospitalName;
end;

procedure TForm_QrreportWorkList.QRLabel21Print(sender: TObject;
  var Value: String);
begin
      value:=gs_HospitalAddress;
end;

procedure TForm_QrreportWorkList.Tableworklistcreate;
begin
     with Tableworklist do
     begin
          with Tableworklist do
     begin
          close;
          databasename:=gs_TempPath;
          tablename:='worklist.db';
          tableType:=TTParadox;
          FieldDefs.Clear;
          fielddefs.add('S.No',ftinteger);
          fielddefs.add('patientid', ftInteger);
          fielddefs.add('patientname', ftString, 50);
          fielddefs.add('SN', ftString,6);
          fielddefs.add('Testname', ftstring, 50);
          fielddefs.add('Runno', ftstring, 50);
         // fielddefs.add('Testname',ftstring, 50);
          fielddefs.add('modifytime',ftstring,50);
          createtable;
     end;
     end;
end;

end.
