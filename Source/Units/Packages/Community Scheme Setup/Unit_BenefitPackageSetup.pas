unit Unit_BenefitPackageSetup;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Dm,
     Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, fxn, Unit_Master,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_BenefitPackageSetup = class(TForm)
          Panel1: TPanel;
          Btn_close: TBitBtn;
          BB_New: TBitBtn;
          BitBtn1: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          Edit_Package: TEdit;
          Label1: TLabel;
          DBGrid_package: TDBGrid;
          Query_package: TOraQuery;
          DS_package: TDataSource;
          Panel2: TPanel;
          SpeedButton3: TSpeedButton;
          Query_Blank: TOraQuery;
          Label2: TLabel;
          Label3: TLabel;
          Edit_Amount: TEdit;
          Label4: TLabel;
          CheckBox_Active: TCheckBox;
          procedure BB_NewClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure Btn_closeClick(Sender: TObject);
          procedure BitBtn1Click(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure DBGrid_packageDblClick(Sender: TObject);
          procedure SpeedButton3Click(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          { Public declarations }
          packageid, PbIsNew: integer;
          isactive: string;
     end;

var
     Form_BenefitPackageSetup: TForm_BenefitPackageSetup;

implementation

uses Unit_PackageScheme;
{$R *.dfm}

procedure TForm_BenefitPackageSetup.BB_NewClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
          PageControl1.ActivePageIndex := 0;
     PbIsNew := 0;
     Edit_Package.Clear;
     Edit_Amount.Clear;
end;

procedure TForm_BenefitPackageSetup.BitBtn1Click(Sender: TObject);
Var
     Amount: Double;
begin
     if Edit_Package.Text = '' then
     begin
          MessageDlg('Package name can not be blank', mtInformation, [mbOK], 0);
     end;
     if Edit_Amount.Text <> '' then
          Amount := StrToFloat(Edit_Amount.Text)
     else
          Amount := 0;
     if PbIsNew = 0 then
     begin
          if Edit_Package.Text <> '' then
          begin
               if CheckDuplicateDataFrmTmp('BenefitPackage', 'BenefitPackage', gs_DatabaseName, Edit_Package.Text) = false then
               begin
                    if CheckBox_Active.Checked = true then
                         isactive := 'Y'
                    else
                         isactive := 'N';

                    SavePackage(Edit_Package.Text, isactive, Amount);
                    ShowDoneMessage;
                    PageControl1.ActivePageIndex := 1;
               end;
          end;
     end
     else
     begin
          if CheckBox_Active.Checked = true then
               isactive := 'Y'
          else
               isactive := 'N';
          UpdatePackage(packageid, Edit_Package.Text, isactive, Amount);
          ShowDoneMessage;
          PageControl1.ActivePageIndex := 1;
          // PbIsNew:=0;
     end;
     RefreshQuery(Query_package, gs_DatabaseName);
end;

procedure TForm_BenefitPackageSetup.Btn_closeClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
     begin
          close;
          RefreshQuery(Form_PackageScheme.Query_package, gs_DatabaseName);
     end;
end;

procedure TForm_BenefitPackageSetup.DBGrid_packageDblClick(Sender: TObject);
begin
     PbIsNew := 1;
     PageControl1.ActivePageIndex := 0;
     Edit_Package.Text := Query_package.FieldByName('BenefitPackage').AsString;
     packageid := Query_package.FieldByName('BenefitPackageId').AsInteger;
     Edit_Amount.Text := Query_package.FieldByName('PackageAmount').AsString;
     if Query_package.FieldByName('isactive').AsString = 'Y' then
          CheckBox_Active.Checked := true
     else
          CheckBox_Active.Checked := false;
end;

procedure TForm_BenefitPackageSetup.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          Btn_closeClick(Sender);
end;

procedure TForm_BenefitPackageSetup.FormShow(Sender: TObject);
begin
     Query_package.close;
     Query_package.Open;
     PbIsNew := 0;
     PageControl1.ActivePageIndex := 1;
end;

procedure TForm_BenefitPackageSetup.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
          PageControl1.ActivePageIndex := 0;
end;

procedure TForm_BenefitPackageSetup.SpeedButton3Click(Sender: TObject);
begin
     with Query_Blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('delete from member_package where member_packageid=' + inttostr(Query_package.FieldByName('member_packageid').AsInteger));
          execsql;
     end;
     Query_package.close;
     Query_package.Open;
end;

end.
