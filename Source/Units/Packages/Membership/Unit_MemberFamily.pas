unit Unit_MemberFamily;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, Unit_Master, Unit_MemberShip_Parent,Dm,
     Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, DBCtrls, StdCtrls, Grids, DBGrids, Buttons, ComCtrls, ExtCtrls;

type
     TForm_MemberFamily = class(TForm)
          Panel2: TPanel;
          BB_Close: TBitBtn;
          BB_Save: TBitBtn;
          BB_New: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          SpeedButton1: TSpeedButton;
          SpeedButton2: TSpeedButton;
          DBGrid1: TDBGrid;
          TabSheet2: TTabSheet;
          Label1: TLabel;
          Label2: TLabel;
          Label5: TLabel;
          Label6: TLabel;
          Edit_Name: TEdit;
          Dblcb_Relation: TDBLookupComboBox;
          Query_Relation: TOraQuery;
          DS_Relation: TDataSource;
          Query_List: TOraQuery;
          Ds_List: TDataSource;
          Sb_Add: TSpeedButton;
    BB_MemberAccount: TBitBtn;
          procedure Sb_AddClick(Sender: TObject);
          procedure FormCreate(Sender: TObject);
          procedure PageControl1Change(Sender: TObject);
          procedure BB_NewClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure BB_SaveClick(Sender: TObject);
          procedure SpeedButton1Click(Sender: TObject);
          procedure BB_MemberAccountClick(Sender: TObject);
    procedure Edit_NameDblClick(Sender: TObject);
     private
          Pb_IsNew: Boolean;
          { Private declarations }
     public
          Pi_TempMemberID: integer;
          { Public declarations }
     end;

var
     Form_MemberFamily: TForm_MemberFamily;
     Form_Parent: Unit_MemberShip_Parent.TForm_MembershipParent;

implementation

uses Unit_MemberPackage;
{$R *.dfm}

procedure TForm_MemberFamily.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     begin
          PageControl1.ActivePageIndex := 0;
          with Query_List do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               SQL[1] := 'Where Dependentof=' + IntToStr(Gi_MemberID);
               Open;
          end;
     end
     else
          Close;
end;

procedure TForm_MemberFamily.BB_MemberAccountClick(Sender: TObject);
begin
     Try
          Gi_MemberID := Query_List.FieldByName('MemberID').AsInteger;
          gi_PatientID := Query_List.FieldByName('PatientId').AsInteger;
          Form_MemberPackage := TForm_MemberPackage.Create(Nil);
          Form_MemberPackage.ShowModal;
     Finally
          Form_MemberPackage.Free;
     End;
end;

procedure TForm_MemberFamily.BB_NewClick(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 1;
     Pb_IsNew := True;
end;

procedure TForm_MemberFamily.BB_SaveClick(Sender: TObject);
begin
     if Dblcb_Relation.Text = '' then
     begin
          ShowMessage('Please select Relation');
          Exit;
     end;
     if Edit_Name.Text = '' then
     begin
          ShowMessage('Please select Family Member');
          Exit;
     end;
     UpdateDependentofAndRelation(Pi_TempMemberID, Gi_MemberID, Dblcb_Relation.Text);
     ShowDoneMessage;
     Dblcb_Relation.KeyValue := '';
     Edit_Name.Clear;
     Pi_TempMemberID := 0;
end;

procedure TForm_MemberFamily.Edit_NameDblClick(Sender: TObject);
begin
     Sb_AddClick(Sender);
end;

procedure TForm_MemberFamily.FormCreate(Sender: TObject);
begin
     PageControl1.ActivePageIndex := 0;
     RefreshQuery(Query_Relation, gs_DatabaseName);
     with Query_List do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL[1] := 'Where Dependentof=' + IntToStr(Gi_MemberID);
          Open;
     end;
end;

procedure TForm_MemberFamily.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_MemberFamily.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 0 then
          PageControl1.ActivePageIndex := 1
     else
          PageControl1.ActivePageIndex := 0;
end;

procedure TForm_MemberFamily.Sb_AddClick(Sender: TObject);
begin
     Try
          gs_CalledFrom := 'MemberFamily';
          Form_Parent := TForm_MembershipParent.Create(Nil);
          Form_Parent.ShowModal;
     Finally
          gs_CalledFrom := '';
          Form_Parent.Free;
     End;
end;

procedure TForm_MemberFamily.SpeedButton1Click(Sender: TObject);
begin
     if MsgBox(1002, 1, '', '', '') then
     begin
          DeleteMemberFamily(Query_List.FieldByName('MemberId').AsInteger);
          ShowDoneMessage;
          RefreshQuery(Query_List, gs_DatabaseName);
     end;

end;

end.
