unit UnitUserAccessDep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, CheckLst, ExtCtrls, Buttons, Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TFormUserAccessDep = class(TForm)
    Shape2: TShape;
    CheckListBoxMain: TCheckListBox;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    UserName: TLabel;
    BitBtn1: TBitBtn;
    QryDep: TOraQuery;
    QryAccessibleDep: TOraQuery;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;

    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    ArrayDepID,ArrayIndex:Array of Integer;
    Function GetAccessDep(DepID:Integer):Integer;
  public
    { Public declarations }
    UserID:Integer;
  end;

var
  FormUserAccessDep: TFormUserAccessDep;

implementation

uses  fxn, dm,
  Unit_Message;

{$R *.DFM}



procedure TFormUserAccessDep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_ESCAPE then
Close;
end;

procedure TFormUserAccessDep.FormShow(Sender: TObject);
    Var
     I:Integer;
begin
     //UserID:=
     With QryDep Do
     Begin
          Close;
          //SQL[1]:=gs_Hos_DB_UserName+'.Department';
          FetchAll:=True;
          Open;
          SetLength(ArrayDepID,RecordCount);
          SetLength(ArrayIndex,RecordCount);
          CheckListBoxMain.Clear;
          I:=0;
          While Not Eof Do
          Begin
               CheckListBoxMain.Items.Add(FieldByName('Dept_DepName').AsString);
               //CheckListBoxMain.Items.IndexOfName(IntToStr(FieldByName('DepID').AsInteger));
               ArrayIndex[I]:=I;
               ArrayDepID[I]:=FieldByName('Dept_DepID').AsInteger;
               //Showmessage(CheckListBoxMain.Items.IndexOfName);
               //CheckListBoxMain.Items.Names[i]:=FieldByName('MenuID').AsInteger;
               I:=I+1;
               Next;
          End;
     End;
     With QryAccessibleDep Do
     Begin
          Close;
          With Sql Do
          Begin
               Clear;
               Add('Select * From lab_UserAccessibleDepartment Where UserID='+IntToStr(UserID));
          End;
          //Showmessage(IntToStr(UserID));
          //Exit;
          Open;
          First;
          While Not Eof Do
          Begin
               CheckListBoxMain.Checked[GetAccessDep(FieldByName('DepID').AsInteger)]:=True;
               Next;
          End;
     End;
end;

Function TFormUserAccessDep.GetAccessDep(DepID:Integer):Integer;
Var
      I:Integer;
begin
     For I:=0 To Length(ArrayDepID)-1 Do
     Begin
          If ArrayDepID[I]=DepID Then
          Begin
               Result:=I;
               Exit;
          End;
     End;
     Result:=-1;
end;

procedure TFormUserAccessDep.BitBtn1Click(Sender: TObject);
Var
     I,DepID:integer;
     Qry:TOraQuery;
begin
     Qry:=TOraQuery.Create(nil);


          DM_Hospital.DB.StartTransaction;
          try
          With Qry Do
          Begin

               Close;
               Session:=Dm_Hospital.Db;
               With Sql Do
               Begin
                    Clear;
                    Add('Delete From lab_UserAccessibleDepartment Where UserID='+IntToStr(UserID));
               End;
               ExecSQL;

               For I:=0 To CheckListBoxMain.Items.Count-1  Do
               Begin
                    If CheckListBoxMain.Checked[I]=True Then
                    Begin
                         DepID:=ArrayDepID[I];
                         If Not DepID < 0 Then
                         Begin
                              With Qry Do
                              Begin
                                   Close;
                                   Session:=Dm_Hospital.Db;
                                   //showmessage(inttostr(UserID));
                                   With Sql Do
                                   Begin
                                        Clear;
                                        Add('Insert Into lab_UserAccessibleDepartment(UserID,DepID) Values (');
                                        Add(IntToStr(UserID));
                                        Add(','+IntToStr(DepID));
                                        Add(')');
                                   End;
                                   ExecSQL;
                              End;
                         End;
                    End;
               End;
          End;
          Dm_Hospital.DB.Commit;
          ShowDoneMessage;
     Except
          Messagedlg('Sorry error in your system.',mtInformation,[mbOK],0);
          Dm_Hospital.DB.Rollback;
     End;
     Qry.Close;
     Qry.Free;
end;

procedure TFormUserAccessDep.SpeedButton1Click(Sender: TObject);
Var
     I:Integer;
begin
     For I:=0 To CheckListBoxMain.Items.Count-1  Do
     Begin
          CheckListBoxMain.Checked[I]:=True;
     End;
end;

procedure TFormUserAccessDep.SpeedButton2Click(Sender: TObject);
Var
     I:Integer;
begin
     For I:=0 To CheckListBoxMain.Items.Count-1  Do
     Begin
          CheckListBoxMain.Checked[I]:=False;
     End;
end;

end.
