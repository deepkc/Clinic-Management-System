unit Unit_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Buttons,
  Dialogs, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBAccess, Ora, OraSmart, MemDS, OraError,DateEditXControl_TLB,Unit_CreditReceiptBook,Unit_CreditReceipt;

type
  TForm_Main = class(TForm)
    Panel_Main: TPanel;
    DB_Main: TOraSession;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    FUNCTION  FYFinder(var StrDate:String):String;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Function MaxIdFinder(TblName,FldName,dbname:String):Double;
  private
    { Private declarations }
  public
    { Public declarations }
    gs_tempdata,SvrDate,SvrDateVS,gs_FiscalYearType,gs_FiscalYear:String;
    gi_DateSystem:integer;
    Form_CreditReceipt:Unit_CreditReceipt.TFrame_CreditReceipt;
    procedure createrecipt;
    procedure createbook;
    procedure loaddata(Rid:integer);
    Procedure ChangeCaption(btn:TSpeedbutton; DateSysetm:integer);
    Procedure ChangeDateSystem(DateControl:TDateEditX; SpeedBtn:TSpeedButton);
  end;

var
  Form_Main: TForm_Main;
  //Form_medsetup:Unit_Medicinesetup.TFrame_medicinesetup;
  Form_creditbook:Unit_CreditReceiptBook.TFrame_CreditReceiptBook;

implementation

{$R *.dfm}

procedure TForm_Main.ChangeCaption(btn: TSpeedbutton; DateSysetm: integer);
begin
    if DateSysetm=1 Then
        btn.Caption:='AD'
    Else if DateSysetm=0 Then
        btn.Caption:='VS'
end;

procedure TForm_Main.ChangeDateSystem(DateControl: TDateEditX;
  SpeedBtn: TSpeedButton);
begin
     if DateControl.SystemOfDate=0 Then
     begin
          DateControl.SystemOfDate:=1;
          SpeedBtn.Caption:='AD';
     end else if DateControl.SystemOfDate=1 Then
     begin
          DateControl.SystemOfDate:=0;
          SpeedBtn.Caption:='VS';
     end;
end;

procedure TForm_Main.createbook;
begin
    Form_CreditReceipt.Parent:=nil;
    Form_creditbook.parent:=Panel_Main;
    Form_creditbook.Initialize;
    Form_creditbook.Align:=alClient;
end;

procedure TForm_Main.createrecipt;
begin
     Form_creditbook.parent:=nil;
     Form_creditReceipt.parent:=Panel_Main;
     Form_creditReceipt.Initialize;
     Form_creditReceipt.Align:=alClient;
end;


procedure TForm_Main.FormCreate(Sender: TObject);
begin
    gs_tempdata:= ExtractFilePath( Application.ExeName);
    if Not DirectoryExists(gs_tempdata+'temp') Then
     MkDir(gs_tempdata+'temp');
    gs_tempdata:=gs_tempdata+'temp';
    gi_DateSystem:=1;
    gs_FiscalYearType:='VS';
    Form_creditbook:=TFrame_CreditReceiptbook.create(self);
    Form_CreditReceipt:=TFrame_CreditReceipt.Create(self);
end;

procedure TForm_Main.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=13 then
    begin
         //if ActiveControl=Form_medsetup.DateEditX_date then Form_medsetup.Edit_Mname.SetFocus;
    end;
end;

procedure TForm_Main.FormShow(Sender: TObject);
var Qrydate:TOraQuery;
    DateEditX1:TDateEditX;
    STemp:String;
begin
    if not DB_Main.Connected then
            DB_Main.Connected:=True;

    Qrydate:=TOraQuery.Create(nil);
    DateEditX1:=TDateEditX.Create(nil);
    with Qrydate do
    begin
         close;
         DatabaseName:='MidasPack_Main';
         sql.Clear;
         Sql.Add('Select  to_Char(sysdate,'+#39+'yyyy/mm/dd'#39+')'+'as date1 from Dual');
         Open;
         DateEditX1.ADDateAsText:= Qrydate.fieldbyname('date1').asString;
    end;
    if gi_DateSystem=1 Then
    SvrDate:= DateEditX1.ADDateAsText
    Else SvrDate:= DateEditX1.VSDateAsText;
    SvrDateVS:= DateEditX1.VSDateAsText;
    if gs_FiscalYearType='VS' then
    sTemp:=DateEditX1.VSDateAsText
    Else sTemp:=DateEditX1.ADDateAsText;
    gs_FiscalYear:=FYFinder(STemp);

    {Form_medsetup:=TFrame_medicinesetup.Create(self);
    Form_medsetup.Parent:=Panel_Main;
    Form_medsetup.Align:=alClient;}
    //Form_creditbook:=TFrame_CreditReceiptbook.create(self);
    Form_creditbook.Initialize;
    Form_creditbook.parent:=Panel_Main;
    Form_creditbook.Align:=alClient;
    Qrydate.Close;Qrydate.free;
    DateEditX1.free;
end;


FUNCTION TForm_Main.FYFinder(var StrDate:String):String;
VAR
   FirstYear,MonthID,NewFy: Integer;
   FYYear: String;
begin
    IF length(Trim(StrDate)) < 10 then
    begin
        ShowMessage('Wrong date entered.');
        FYYear:='';
        exit;
    end;
    FirstYear:=StrToInt(Copy(StrDate,3,2));
    MonthID:=StrToInt(Copy(StrDate,6,2));
    CASE MonthID OF
        1..3:
        begin
            NewFy:=FirstYear - 1;
            if LENGTH(TRIM(IntTOStr(NewFy)))=1 then
                FYYear:='00'+IntToStr(NewFy)+'/'+Copy(StrDate,3,2)
            Else if LENGTH(TRIM(IntTOStr(NewFy)))=2 then
                FYYear:='0'+IntToStr(NewFy)+'/'+Copy(StrDate,3,2);
        end;
        4,5,6,7,8,9,10,11,12:
        Begin
            NewFy:=FirstYear + 1;
            if LENGTH(TRIM(IntTOStr(NewFy)))=1 then
                FYYear:='00'+Copy(StrDate,3,2)+'/'+IntToStr(NewFy)
            Else if LENGTH(TRIM(IntTOStr(NewFy)))=2 then
                FYYear:='0'+Copy(StrDate,3,2)+'/'+IntToStr(NewFy);
        End;
    END;
    Result:=FYYear;
end;

procedure TForm_Main.loaddata(Rid: integer);
begin
        Form_CreditReceipt.ReceiptID:=Rid;
        Form_CreditReceipt.MODE:=MODIFY;
        Form_CreditReceipt.CheckBox_AllBills.Visible:=false;
        Form_creditbook.Parent:=nil;
        Form_CreditReceipt.parent:=Panel_Main;
        //Form_CreditReceipt.Initialize;
        Form_CreditReceipt.load;
        Form_CreditReceipt.Align:=alClient;
end;

Function TForm_Main.MaxIdFinder(TblName,FldName,dbname:String):Double;
Var
    lf_IdMax:Double;
    ls_sql:String;
    QueryMaxIdFind:TOraQuery;
Begin
    QueryMaxIdFind:=TOraQuery.Create(Nil);
    ls_sql:='SELECT Max('+FldName+') As MaxID FROM '+TblName;
    With QueryMaxIdFind do
    Begin
        Close;
        DatabaseName:=dbname;
        Sql.Clear;
        Sql.Add(ls_sql);
        Open;
        lf_IdMax:=FieldByName('MaxID').AsFloat;
        Close;
        Sql.Clear;
    End;
    Result:=lf_IdMax;
    QueryMaxIdFind.Close;QueryMaxIdFind.Free;
End;



end.
