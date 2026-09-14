unit Unit_StaffMemberSearch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls;

type
  TForm_StaffMemberSearch = class(TForm)
    GroupBox1: TGroupBox;
    EditHospNo: TEdit;
    EditName: TEdit;
    DBGrid1: TDBGrid;
    QueryDisplay: TOraQuery;
    DataSourceDisplay: TDataSource;
    StatusBar1: TStatusBar;
    Edit_MemberNo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure EditHospNoChange(Sender: TObject);
    procedure EditNameChange(Sender: TObject);
    procedure EditHospNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNameKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure EditNameKeyPress(Sender: TObject; var Key: Char);
    procedure EditHospNoKeyPress(Sender: TObject; var Key: Char);
    Procedure PutValue;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit_MemberNoChange(Sender: TObject);
    procedure Edit_MemberNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public

          ps_IsDependent,ps_MemberNo:String;
          pi_PatientId,pi_communityid,pi_schemeid:Integer;
    { Public declarations }
  end;

var
  Form_StaffMemberSearch: TForm_StaffMemberSearch;

implementation

{$R *.DFM}

procedure TForm_StaffMemberSearch.FormShow(Sender: TObject);
begin
   QueryDisplay.sql.savetofile('Member.txt');
   QueryDisplay.Open;
   EditHospNo.SetFocus;
   EditHospNo.Text:='';
   EditName.Text:='';
   Edit_MemberNo.Text:='';
   ps_MemberNo:='';
   ps_IsDependent:='';
   pi_PatientId:=0;
end;

procedure TForm_StaffMemberSearch.EditHospNoChange(Sender: TObject);
begin
   with QueryDisplay do
   Begin
      IF Trim(EditHospNo.text)<>'' Then
      Begin
         Filter:='PatientIdS ='+#39+EditHospNo.text+'*'+#39;
         Filtered:=True;
      End
      Else
      Filtered:=False;
   End;
end;

procedure TForm_StaffMemberSearch.EditNameChange(Sender: TObject);
begin
     with QueryDisplay do
     Begin
          IF Trim(EditName.text)<>'' Then
          Begin
              Filter:='Name ='+#39+EditName.text+'*'+#39;
              Filtered:=True;
          End
          Else
               Filtered:=False;
     End;
end;

procedure TForm_StaffMemberSearch.EditHospNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF key= vk_up Then QueryDisplay.Prior;
     IF key=vk_down Then QueryDisplay.Next;

     IF key<>27 Then
     EditHospNo.SetFocus;

     IF key=VK_Right Then EditName.SetFocus;
end;

procedure TForm_StaffMemberSearch.EditNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF key= vk_up Then QueryDisplay.Prior;
   IF key=vk_down Then QueryDisplay.Next;

   EditName.SetFocus;

   IF key=VK_Right Then Edit_MemberNo.SetFocus;
   IF key=VK_Left Then EditHospNo.SetFocus;

end;

procedure TForm_StaffMemberSearch.EditNameKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF Key=#13 then
   Begin
      PutValue;
      Close;
  End;
end;

procedure TForm_StaffMemberSearch.EditHospNoKeyPress(Sender: TObject;
  var Key: Char);
begin
   IF Key=#13 then
   Begin
      PutValue;
      Close;
   End;
end;

Procedure TForm_StaffMemberSearch.PutValue;
Begin
     {With FormMember do
     Begin
          Edit_HospitalNo.Text:=IntToStr(QueryDisplay.FieldByName('PatientId').AsInteger);
     End;}
     ps_MemberNo:=QueryDisplay.FieldByName('memb_employeeno').AsString;
     pi_patientId:=QueryDisplay.FieldByName('MEMB_PATIENTID').ASInteger;
     ps_IsDependent:=QueryDisplay.FieldByName('MEMB_ISDEPENDENT').AsString;
     pi_schemeid:=QueryDisplay.FieldByName('MEMB_SCHEMEID').AsInteger;
     pi_communityid:=QueryDisplay.FieldByName('MEMB_COMMUNITYID').AsInteger;
End;

procedure TForm_StaffMemberSearch.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
   IF Key=#13 then
   Begin
      PutValue;
      Close;
   End;
end;

procedure TForm_StaffMemberSearch.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF key=27 Then Close;
end;

procedure TForm_StaffMemberSearch.Edit_MemberNoChange(Sender: TObject);
begin
     with QueryDisplay do
     Begin
          IF Trim(Edit_MemberNo.text)<>'' Then
          Begin
               Filter:='memb_employeeno ='+#39+Edit_MemberNo.text+'*'+#39;
               Filtered:=True;
          End
          Else
          Filtered:=False;
     End;
end;

procedure TForm_StaffMemberSearch.Edit_MemberNoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   IF key= vk_up Then QueryDisplay.Prior;
   IF key=vk_down Then QueryDisplay.Next;
   Edit_MemberNo.SetFocus;

   IF key=VK_Left Then
   Begin
        EditName.SetFocus;
   End;

end;

end.
