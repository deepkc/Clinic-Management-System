unit UnitPathologyFooterSetup;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, ComCtrls, Grids, DBGrids,
  DBCtrls;

type
  TFormpathologyfootersetup = class(TForm)
    Panel1: TPanel;
    BitBtnSave: TBitBtn;
    BitBtnCancel: TBitBtn;
    List: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DS_LabFooter: TDataSource;
    Query_LabFooter: TOraQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    BDPathDep: TDBLookupComboBox;
    DataSource2: TDataSource;
    Query2: TOraQuery;
    CBOnlyone: TCheckBox;
    Query_LabFooterDEPID: TFloatField;
    Query_LabFooterFOOTER1: TStringField;
    Query_LabFooterFOOTER2: TStringField;
    Query_LabFooterFOOTER3: TStringField;
    Query_LabFooterISONLYONE: TStringField;
    Query_LabFooterDEPNAME: TStringField;
    StatusBar1: TStatusBar;
    DBFooterName1: TDBLookupComboBox;
    DBFooterName2: TDBLookupComboBox;
    DBFooterName3: TDBLookupComboBox;
    DSLabFooter: TDataSource;
    QryLabFooter: TOraQuery;
    SpeedButton1: TSpeedButton;
    Query_LabFooterLABFOOTERNAMEID1: TFloatField;
    Query_LabFooterLABFOOTERNAMEID2: TFloatField;
    Query_LabFooterLABFOOTERNAMEID3: TFloatField;
    Query_LabFooterNAME1: TStringField;
    Query_LabFooterNAME2: TStringField;
    Query_LabFooterNAME3: TStringField;
    Edit4: TEdit;
    DBFooterName4: TDBLookupComboBox;
    Label5: TLabel;
    Query_LabFooterFOOTER4: TStringField;
    Query_LabFooterLABFOOTERNAMEID4: TFloatField;
    Query_LabFooterNAME4: TStringField;
    Label6: TLabel;
    DBConsultant: TDBLookupComboBox;
    Edit_Consultant: TEdit;
    Query_LabFooterCONSULTANT: TStringField;
    Query_LabFooterConsultantid: TFloatField;
    Query_LabFooterNAME5: TStringField;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CBOnlyoneClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BDPathDepClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBFooterName1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFooterName2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFooterName3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBFooterName4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBConsultantKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    IsNew:Boolean;
    DepID:Integer;
  end;

var
  Formpathologyfootersetup: TFormpathologyfootersetup;

implementation

uses Unit_Message, UnitInvestigationMembers, Unit_GlobalFxnVar,
  UnitPathologyMain;

{$R *.DFM}

procedure TFormpathologyfootersetup.BitBtnSaveClick(Sender: TObject);
Var  Qry:TOraQuery;
begin
     IF (Query_LabFooter.RecordCount >= 1) and (IsNew=True) Then
     Begin
          MessageDlg('Sorry You Cannot Setup Multiple Footer By Yourself.',mtInformation,[mbOk],0);
          BDPathDep.SetFocus;
          Exit;
     End;

     If BDPathDep.Text='' Then
     Begin
          MessageDlg('Please, choose the Department first.',mtInformation,[mbOk],0);
          BDPathDep.SetFocus;
          Exit;
     End;

     Qry:=TOraQuery.Create(Self);
     With Qry Do
     Begin
          Close;
          DataBaseName:='Hospital';
          Sql.Clear;
          //Sql.Add('Select * From PathologyFooterSetUp Where UserId='+IntToStr(gi_UserId)); //DepID='+IntToStr(BDPathDep.KeyValue));
          Sql.Add('Select * From PathologyFooterSetUp Where DepID='+IntToStr(BDPathDep.KeyValue)+'And UserID='+IntToStr(gi_UserId));
          Open;
          //If Trim(FieldByName('DepID').AsString)<>'' And Trim(FieldByName('UserID').AsString)<>'' Then
          If Trim(FieldByName('UserID').AsString)<>'' Then
          IsNew:=False
          Else
          IsNew:=True;

          IF IsNew=False Then
          Begin
               With Sql Do
               Begin
                    Clear;
                    Add('Update PathologyFooterSetUp Set');
                    Add(' Footer1='+Chr(39)+Edit1.Text+Chr(39));
                    Add(',Footer2='+Chr(39)+Edit2.Text+Chr(39));
                    Add(',Footer3='+Chr(39)+Edit3.Text+Chr(39));
                    Add(',Footer4='+Chr(39)+Edit4.Text+Chr(39));
                    Add(',CONSULTANT='+Chr(39)+Edit_Consultant.Text+Chr(39));
                    If DBFooterName1.KeyValue<>Null Then
                    Add(',LabFooterNameID1='+IntToStr(DBFooterName1.KeyValue))
                    Else
                    Add(',LabFooterNameID1=0');

                    If DBFooterName2.KeyValue<>Null Then
                    Add(',LabFooterNameID2='+IntToStr(DBFooterName2.KeyValue))
                    Else
                    Add(',LabFooterNameID2=0');

                    If DBFooterName3.KeyValue<>Null Then
                    Add(',LabFooterNameID3='+IntToStr(DBFooterName3.KeyValue))
                    Else
                    Add(',LabFooterNameID3=0');

                    If DBFooterName4.KeyValue<>Null Then
                    Add(',LabFooterNameID4='+IntToStr(DBFooterName4.KeyValue))
                    Else
                    Add(',LabFooterNameID4=0');

                    if DBConsultant.KeyValue<> Null then
                    add(',consultantid='+IntToStr(DBConsultant.KeyValue))
                    else
                    add(',consultantid=0');

                    If CBOnlyone.Checked=True Then
                    Add(',IsOnlyOne='+Chr(39)+StringReplace(Edit1.Text,'''','''''',[rfReplaceAll])+Chr(39))
                    Else
                    Add(',IsOnlyOne=''N''');
                    Add(' Where DepID='+IntToStr(BDPathDep.KeyValue));
                    Add(' And UserID='+IntToStr(gi_UserId));
               End;
               ExecSQL;
          End
          Else
          Begin
               With Sql Do
               Begin
                    Clear;
                    Add('Insert Into PathologyFooterSetUp(FooterId,DepID,Footer1,Footer2,Footer3,Footer4,consultant,IsOnlyOne,LabFooterNameID1,');
                    Add('LabFooterNameID2,LabFooterNameID3,LabFooterNameID4,consultantid,UserId) Values ('+IntToStr(GetNewLongIntKeyValue('PathologyFooterSetUp','FooterId')));
                    Add(','+IntToStr(BDPathDep.KeyValue));
                    Add(','+Chr(39)+Edit1.Text+Chr(39));
                    Add(','+Chr(39)+Edit2.Text+Chr(39));
                    Add(','+Chr(39)+Edit3.Text+Chr(39));
                    Add(','+Chr(39)+Edit4.Text+Chr(39));
                    Add(','+Chr(39)+Edit_Consultant.Text+Chr(39));
                    If CBOnlyone.Checked=True Then
                    Add(','+Chr(39)+StringReplace(Edit1.Text,'''','''''',[rfReplaceAll])+Chr(39))
                    Else
                    Add(',''N''');

                    If DBFooterName1.KeyValue<>Null Then
                    Add(','+IntToStr(DBFooterName1.KeyValue))
                    Else
                    Add(',0');

                    If DBFooterName2.KeyValue<>Null Then
                    Add(','+IntToStr(DBFooterName2.KeyValue))
                    Else
                    Add(',0');

                    If DBFooterName3.KeyValue<>Null Then
                    Add(','+IntToStr(DBFooterName3.KeyValue))
                    Else
                    Add(',0');

                    If DBFooterName4.KeyValue<>Null Then
                    Add(','+IntToStr(DBFooterName4.KeyValue))
                    Else
                    Add(',0');

                    if DBConsultant.KeyValue<> Null then
                    Add(','+IntToStr(DBConsultant.KeyValue))
                    else
                    Add(',0');
                    
                    Add(','+IntToStr(gi_UserId)+')');
               End;
          End;
          ExecSQL;
          Close;
          Free;
          Frm_message.show;
          Query_LabFooter.Close;
          Query_LabFooter.Open;
          List.ActivePageIndex:=0;
     End;
     Query_LabFooter.Close;
     Query_LabFooter.Open;
     FormPathologyMain.ps_Update := 'T';
     FormPathologyMain.BitBtnFindingsClick(Self);
     FormPathologyMain.BtnSaveClick(Self);

end;

procedure TFormpathologyfootersetup.DBGrid1DblClick(Sender: TObject);
begin
     IsNew:=False;
     List.ActivePageIndex:=1;
     Edit1.Text:=Query_LabFooter.FieldByName('Footer1').AsString;
     Edit2.Text:=Query_LabFooter.FieldByName('Footer2').AsString;
     Edit3.Text:=Query_LabFooter.FieldByName('Footer3').AsString;
     Edit4.Text:=Query_LabFooter.FieldByName('Footer4').AsString;
     Edit_Consultant.Text:=Query_LabFooter.fieldbyname('consultant').AsString;
     BDPathDep.KeyValue:=Query_LabFooter.FieldByName('DepID').AsInteger;

     DBFooterName1.KeyValue:=Query_LabFooter.FieldByName('LabFooterNameID1').AsInteger;
     DBFooterName2.KeyValue:=Query_LabFooter.FieldByName('LabFooterNameID2').AsInteger;
     DBFooterName3.KeyValue:=Query_LabFooter.FieldByName('LabFooterNameID3').AsInteger;
     DBFooterName4.KeyValue:=Query_LabFooter.FieldByName('LabFooterNameID4').AsInteger;
     DBConsultant.KeyValue:= Query_LabFooter.fieldbyname('consultantid').AsInteger;
     If Trim(Query_LabFooter.FieldByName('IsOnlyOne').AsString)<>'N' Then
     Begin
          CBOnlyone.Checked:=True;
          Edit1.Text:=Query_LabFooter.FieldByName('IsOnlyOne').AsString;
          Edit2.Enabled:=False;
          Edit3.Enabled:=False;
          DBFooterName2.Enabled:=False;
          DBFooterName3.Enabled:=False;
     End
     Else
     Begin
          Edit2.Enabled:=True;
          Edit3.Enabled:=True;
          DBFooterName2.Enabled:=True;
          DBFooterName3.Enabled:=True;
     End;
end;

procedure TFormpathologyfootersetup.BitBtnCancelClick(Sender: TObject);
begin
     IF List.ActivePageIndex=1 Then
     List.ActivePageIndex:=0
     Else
     Close;
end;

procedure TFormpathologyfootersetup.BitBtn1Click(Sender: TObject);
begin
     IsNew:=True;
     Edit1.Text:='';
     Edit2.Text:='';
     Edit3.Text:='';
     Edit_Consultant.Text:='';
     DBFooterName1.keyValue:=NULL;
     DBFooterName2.keyValue:=NULL;
     DBFooterName3.keyValue:=NULL;
     DBConsultant.KeyValue:= NULL;

     Query2.Close;
     Query2.Open;
     List.ActivePageIndex:=1;
end;

procedure TFormpathologyfootersetup.CBOnlyoneClick(Sender: TObject);
begin
     If CBOnlyone.Checked=True Then
     Begin
          Edit2.Enabled:=False;
          Edit3.Enabled:=False;
          DBFooterName2.Enabled:=false;
          DBFooterName3.Enabled:=false;
     End
     Else
     Begin
          Edit2.Enabled:=True;
          Edit3.Enabled:=True;
          DBFooterName2.Enabled:=true;
          DBFooterName3.Enabled:=true;
     End;
end;

procedure TFormpathologyfootersetup.FormShow(Sender: TObject);
begin
     With Query2 Do
     Begin
          Close;
          Open;
     End;
     With QryLabFooter Do
     Begin
          Close;
          Open;
     End;
     List.ActivePageIndex:=0;
end;

procedure TFormpathologyfootersetup.BDPathDepClick(Sender: TObject);
Var  Qry:TOraQuery;
begin
     If BDPathDep.KeyValue=Null Then
     Exit;
     Qry:=TOraQuery.Create(Nil);
     With Qry Do
     Begin
          Close;
          DataBaseName:='Hospital';
          With Sql Do
          Begin
               Clear;
               Add('Select * From PathologyFooterSetup Where DepID='+IntToStr(BDPathDep.KeyValue));
          End;
          Open;
          Edit1.Text:=FieldByName('Footer1').AsString;
          Edit2.Text:=FieldByName('Footer2').AsString;
          Edit3.Text:=FieldByName('Footer3').AsString;
          If  Trim(FieldByName('IsOnlyOne').AsString)<>'N' Then
          Begin
               CBOnlyone.Checked:=True;
               Edit1.Text:=FieldByName('IsOnlyOne').AsString;
               Edit2.Enabled:=False;
               Edit3.Enabled:=False;
          End;
          Close;
          Free;
     End;
end;

procedure TFormpathologyfootersetup.SpeedButton1Click(Sender: TObject);
begin
     FormInvestigationMember:=TFormInvestigationMember.Create(self);
     with FormInvestigationMember do
     Begin
          Try
               ps_Status:='R';
               ShowModal;
          Finally
               Free;
          End;
     End;
     QryLabFooter.Close;
     QryLabFooter.Open;
end;

procedure TFormpathologyfootersetup.DBFooterName1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key=VK_DELETE Then
     DBFooterName1.KeyValue:=Null;
end;

procedure TFormpathologyfootersetup.DBFooterName2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key=VK_DELETE Then
     DBFooterName2.KeyValue:=Null;
end;

procedure TFormpathologyfootersetup.DBFooterName3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key=VK_DELETE Then
     DBFooterName3.KeyValue:=Null;
end;

procedure TFormpathologyfootersetup.DBFooterName4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If Key=VK_DELETE Then
     DBFooterName4.KeyValue:=Null;
end;

procedure TFormpathologyfootersetup.DBConsultantKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
If Key=VK_DELETE Then
     DBConsultant.KeyValue:=Null;
end;

end.
