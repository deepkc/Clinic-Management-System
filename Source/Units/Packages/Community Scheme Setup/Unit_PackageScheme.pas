unit Unit_PackageScheme;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dm,
     Dialogs, Grids, DBGrids, StdCtrls, dblookup, Buttons, ExtCtrls, DBCtrls, DB, fxn, Unit_Master, serverdate,
     DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls;

type
     TForm_PackageScheme = class(TForm)
          Panel1: TPanel;
          Btn_close: TBitBtn;
          BB_New: TBitBtn;
          btn_save: TBitBtn;
          Panel2: TPanel;
          DS_Scheme: TDataSource;
          DS_Package: TDataSource;
          DS_Listing: TDataSource;
          Query_Scheme: TOraQuery;
          Query_Package: TOraQuery;
          Query_Listing: TOraQuery;
          SpeedButton1: TSpeedButton;
          Query_Blank: TOraQuery;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          DBGrid1: TDBGrid;
          DBLC_BenefitPackage: TDBLookupComboBox;
          Label1: TLabel;
          SpeedButton3: TSpeedButton;
          Label2: TLabel;
          DBLC_Scheme: TDBLookupComboBox;
          SpeedButton2: TSpeedButton;
          CheckBox_Active: TCheckBox;
          procedure FormShow(Sender: TObject);
          procedure Btn_closeClick(Sender: TObject);
          procedure btn_saveClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure SpeedButton2Click(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure SpeedButton3Click(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
     private
          Pb_IsNew:Boolean;
          Pi_PackageSchemeId:Integer;
          { Private declarations }
     public
          { Public declarations }
          isactive: string;
     end;

var
     Form_PackageScheme: TForm_PackageScheme;

implementation

uses Unit_Schemes, Unit_BenefitPackageSetup;
{$R *.dfm}

procedure TForm_PackageScheme.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=1;
     Pb_IsNew:=True;
end;

procedure TForm_PackageScheme.Btn_closeClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=1 then
     begin
          PageControl1.ActivePageIndex:=0;
          RefreshQuery(Query_Listing,gs_DatabaseName);
     end
     else
     close;
end;

procedure TForm_PackageScheme.btn_saveClick(Sender: TObject);
begin
     if DBLC_BenefitPackage.KeyValue = null then
          DBLC_BenefitPackage.KeyValue := -1;
     if DBLC_Scheme.KeyValue = null then
          DBLC_Scheme.KeyValue := -1;
     if CheckBox_Active.Checked = true then
          isactive := 'Y'
     else
          isactive := 'N';

     // SavePackageScheme(BenefitPackageId,SchemeId,DataPostBy:integer;DataPostDate,DataPostTime,MacId,IsActive:string);
     if (DBLC_BenefitPackage.KeyValue <> null) and (DBLC_Scheme.KeyValue <> null) then
     begin
          if Pb_IsNew then
          SavePackageScheme(DBLC_BenefitPackage.KeyValue, DBLC_Scheme.KeyValue, gi_UserID, TodaysDate, TodaysTime, gs_MacID, isactive)
          else
          UpdatePackageScheme(Pi_PackageSchemeId,DBLC_BenefitPackage.KeyValue, DBLC_Scheme.KeyValue, gi_UserID, TodaysDate, TodaysTime, gs_MacID, isactive);
          ShowDoneMessage;
          Pb_IsNew:=True;
          DBLC_BenefitPackage.KeyValue:=-1;
          DBLC_Scheme.KeyValue:=-1;
     end;
     Query_Listing.close;
     Query_Listing.Open;
end;

procedure TForm_PackageScheme.DBGrid1DblClick(Sender: TObject);
begin
     Pi_PackageSchemeId:=Query_Listing.FieldByName('PackageSchemeId').AsInteger;
     PageControl1.ActivePageIndex:=1;
     DBLC_BenefitPackage.KeyValue:=Query_Listing.FieldByName('BenefitPackageId').AsInteger;
     DBLC_Scheme.KeyValue:=Query_Listing.FieldByName('SchemeId').AsInteger;
     if Query_Listing.FieldByName('IsActive').AsString='Y' then
     CheckBox_Active.Checked:=true
     else
     CheckBox_Active.Checked:=false;
end;

procedure TForm_PackageScheme.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Btn_closeClick(Sender);
end;

procedure TForm_PackageScheme.FormShow(Sender: TObject);
begin
     Query_Scheme.close;
     Query_Scheme.Open;
     Query_Package.close;
     Query_Package.Open;
     Query_Listing.close;
     Query_Listing.Open;
     PageControl1.ActivePageIndex:=0;
end;

procedure TForm_PackageScheme.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
          PageControl1.ActivePageIndex := 0;
end;

procedure TForm_PackageScheme.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002,1,'','','') then
     begin
     with Query_Blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('Delete from BenefitPackageScheme where PackageSchemeId=' + inttostr(Query_Listing.FieldByName('PackageSchemeId').AsInteger));
          execsql;
     end;
     Query_Listing.close;
     Query_Listing.Open;
     end;
end;

procedure TForm_PackageScheme.SpeedButton2Click(Sender: TObject);
begin
     Try
          Form_Schemes := TForm_Schemes.Create(Nil);
          Form_Schemes.ShowModal;
     Finally
          Form_Schemes.Free;
     End;

end;

procedure TForm_PackageScheme.SpeedButton3Click(Sender: TObject);
begin
     Try
          Form_BenefitPackageSetup := TForm_BenefitPackageSetup.Create(Nil);
          Form_BenefitPackageSetup.ShowModal;
     Finally
          Form_BenefitPackageSetup.Free;
     End;
end;

end.
