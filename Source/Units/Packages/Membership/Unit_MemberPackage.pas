unit Unit_MemberPackage;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, ServerDate, Unit_Master,DbGridExportToExcel,Dm,
     Dialogs, StdCtrls, Buttons, ExtCtrls, OleCtrls, DateEditXControl_TLB, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls, ComCtrls, Grids,
     DBGrids;

type
     TForm_MemberPackage = class(TForm)
          Panel2: TPanel;
          BB_Close: TBitBtn;
          Query_Package: TOraQuery;
          DS_Package: TDataSource;
          BB_Save: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          TabSheet2: TTabSheet;
          Label1: TLabel;
          Label4: TLabel;
          SPB_From: TSpeedButton;
          Label2: TLabel;
          Dex_Validity: TDateEditX;
          Edit_Amount: TEdit;
          Dblcb_BenefitPackage: TDBLookupComboBox;
          Label5: TLabel;
          Label6: TLabel;
          Label7: TLabel;
          DBGrid1: TDBGrid;
          Query_List: TOraQuery;
          Ds_List: TDataSource;
          BB_New: TBitBtn;
          Rb_Individual: TRadioButton;
          Rb_All: TRadioButton;
          BB_Refresh: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BB_Print: TSpeedButton;
    SpeedButton3: TSpeedButton;
          procedure FormCreate(Sender: TObject);
          procedure BB_PrintClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_CloseClick(Sender: TObject);
          procedure Edit_AmountKeyPress(Sender: TObject; var Key: Char);
          procedure FormDestroy(Sender: TObject);
          procedure Dblcb_BenefitPackageClick(Sender: TObject);
          procedure BB_SaveClick(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure DBGrid1DblClick(Sender: TObject);
          procedure BB_RefreshClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
     private
          Pb_IsNew: Boolean;
          { Private declarations }
          Procedure PrintCard;
          Procedure Save;
     public
          { Public declarations }
     end;

var
     Form_MemberPackage: TForm_MemberPackage;

implementation

uses Unit_MembershipCard, Unit_QrMemberCard;
{$R *.dfm}
{ TForm_MemberPackage }

procedure TForm_MemberPackage.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     begin
          PageControl1.ActivePageIndex := 0;
          RefreshQuery(Query_List, gs_DatabaseName);
     end
     else
          Close;
end;

procedure TForm_MemberPackage.BB_NewClick(Sender: TObject);
begin
     Pb_IsNew := True;
     PageControl1.ActivePageIndex := 1;
     Dblcb_BenefitPackage.KeyValue := -1;
     Edit_Amount.Clear;
end;

procedure TForm_MemberPackage.BB_PrintClick(Sender: TObject);
begin
     PrintCard;
end;

procedure TForm_MemberPackage.BB_RefreshClick(Sender: TObject);
begin
     with Query_List do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          if Rb_Individual.Checked then
               SQL[1] := 'Where MemberId=' + IntToStr(Gi_MemberID)
          else
               SQL[1] := 'Where 99=99';
          Open;
     end;
end;

procedure TForm_MemberPackage.BB_SaveClick(Sender: TObject);
begin
     Save;
     BB_CloseClick(Sender);
     Query_List.Locate('MemberPackageID',Gi_MemberPackageId,[]);
     PrintCard;
end;

procedure TForm_MemberPackage.DBGrid1DblClick(Sender: TObject);
begin
     Gi_MemberPackageId := Query_List.FieldByName('MemberPackageId').AsInteger;
     PageControl1.ActivePageIndex := 1;
     Pb_IsNew := false;
     Dblcb_BenefitPackage.KeyValue := Query_List.FieldByName('BenefitPackageId').AsInteger;
     Dblcb_BenefitPackageClick(Sender);
     Dex_Validity.ADDateAsText := Query_List.FieldByName('ValidUntil').AsString;
end;

procedure TForm_MemberPackage.Dblcb_BenefitPackageClick(Sender: TObject);
begin
     Edit_Amount.Text := FormatFloat('#0,0', GetBenefitPackageAmout(Dblcb_BenefitPackage.KeyValue));
end;

procedure TForm_MemberPackage.Edit_AmountKeyPress(Sender: TObject; var Key: Char);
begin
     OnlyNumeric(Sender, Key);
end;

procedure TForm_MemberPackage.FormCreate(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     Pb_IsNew := True;
     Dex_Validity.ADDateAsText := TodaysDate;
     Dex_Validity.SystemOfDate := gi_datesystem;
     RefreshQuery(Query_Package, gs_DatabaseName);
     with Query_List do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL[1] := 'Where MemberId=' + IntToStr(Gi_MemberID);
          Open;
     end;
end;

procedure TForm_MemberPackage.FormDestroy(Sender: TObject);
begin
     ClearMemberVariable;
end;

procedure TForm_MemberPackage.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_MemberPackage.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
          PageControl1.ActivePageIndex := 0;
end;

procedure TForm_MemberPackage.PrintCard;
Var
     Ls_PatientID: Double;
     Li_CardType:Integer;
begin
     gb_isDotMatrix := false;
     Gi_MemberID:=Query_List.FieldByName('MemberId').AsInteger;
     gi_PatientID:=Query_List.FieldByName('PatientID').AsInteger;
     LoadMemberData(Gi_MemberID);
     Try
          Form_MemberCard := TForm_MemberCard.Create(Nil);
          with Form_MemberCard do
          begin
               lbl_Name.Caption := Gs_PatientName;
               Lbl_HosNo.Caption := IntToStr(gi_PatientID);
               Lbl_Validity.Caption := Query_List.FieldByName('ValidUntil').AsString;
               Lbl_Address.Caption := Gs_Address;
               Li_CardType:=Query_List.FieldByName('BenefitPackageID').AsInteger;

               if Li_CardType = 1 then
                    Image_Back.Picture.Graphic := Image_Platinum.Picture.Graphic
               else if Li_CardType = 2 then
                    Image_Back.Picture.Graphic := Image_Gold.Picture.Graphic
               else if Li_CardType = 3 then
                    Image_Back.Picture.Graphic := Image_Silver.Picture.Graphic;

               lbl_agegender.Caption := Gs_Age + '/' + Copy(Gs_agetype, 1, 1) + '-' + Copy(Gs_Gender, 1, 1);
               // lbl_RegisteredDate.Caption := Gs_Regdate;
               QRLabel12.Caption := 'Lab No.';
               Ls_PatientID := gi_PatientID;
               QrBarcode.Text := FormatFloat('0000000', Ls_PatientID);

               lbl_MedicalCondition.Caption := '';
               Lbl_BloodGroup.Caption := Gs_BloodGroup;
               lbl_FamilyDoctor.Caption := Gs_FamilyDoc;
               lbl_Name1.Caption := Gs_EmerContactPerson1;
               lbl_Name2.Caption := Gs_EmerContactPerson2;
               lbl_Tel1.Caption := Gs_EmerContactNo1;
               lbl_Tel2.Caption := Gs_EmerContactNo2;
               lbl_MedicalCondition.Caption := Gs_MedicalCondition;
               QrCard.PreviewModal;
          end;
     Finally
          Form_MemberCard.Free;
     End;
end;

procedure TForm_MemberPackage.Save;
Var
     MemberId, BenefitPackageId, PatientId, MemberPackageId: Integer;
     DataPostDate, DataPostTime, DataPostBy, MacId, ValidUntil: String;
     CrAmount:Double;
begin
     if Dblcb_BenefitPackage.KeyValue = Null then
     begin
          ShowMessage('Please select Package');
          Exit;
     end;
     MemberId := Gi_MemberID;
     BenefitPackageId := Dblcb_BenefitPackage.KeyValue;
     PatientId := gi_PatientID;
     DataPostDate := TodaysDate;
     DataPostTime := TodaysTime;
     DataPostBy:=IntToStr(gi_UserID);
     MacId := gs_MacID;
     ValidUntil := Dex_Validity.ADDateAsText;
     CrAmount:=GetBenefitPackageAmout(Dblcb_BenefitPackage.KeyValue);
     MemberPackageId := Gi_MemberPackageId;
     if Pb_IsNew then
     begin
          SaveMemberPackage(MemberId, BenefitPackageId, PatientId, DataPostDate, DataPostTime, DataPostBy, MacId,
               ValidUntil);
     end
     else
          UpdateMemberPackage(MemberPackageId, BenefitPackageId, DataPostDate, DataPostTime, DataPostBy, MacId,
               ValidUntil);
     ShowDoneMessage;
     Pb_IsNew := True;
end;

procedure TForm_MemberPackage.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          DeleteMemberPackage(Query_list.FieldByName('MemberPackageId').AsInteger);
          ShowDoneMessage;
     end;
     RefreshQuery(Query_List,gs_DatabaseName);
end;

procedure TForm_MemberPackage.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_MemberPackage, DBGrid1, true, 'Member Package List', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

procedure TForm_MemberPackage.SpeedButton3Click(Sender: TObject);
begin
     UpdateMemberPackageInFamily(Gi_MemberID);
     ShowDoneMessage;
end;

end.
