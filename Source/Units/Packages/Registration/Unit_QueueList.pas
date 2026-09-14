unit Unit_QueueList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn,ServerDate,
  Dialogs, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, DBCtrls;

type
  TForm_QueueList = class(TForm)
    Panel2: TPanel;
    BB_Close: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Table_List: TOraTable;
    DS_List: TDataSource;
    Timer1: TTimer;
    LabelDep: TLabel;
    DBLCB_Department: TDBLookupComboBox;
    Query_Department: TOraQuery;
    DS_Department: TDataSource;
    SpeedButton1: TSpeedButton;
    RB_ReadyToIn: TRadioButton;
    RB_InsideOPD: TRadioButton;
    RB_CheckupComplete: TRadioButton;
    CB_ShowInOutTime: TCheckBox;
    lbl_Head: TLabel;
    procedure BB_CloseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RB_ReadyToInClick(Sender: TObject);
    procedure RB_InsideOPDClick(Sender: TObject);
    procedure RB_CheckupCompleteClick(Sender: TObject);
    procedure CB_ShowInOutTimeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLCB_DepartmentClick(Sender: TObject);
    procedure SMDBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure lbl_HeadMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  private
     i:Integer;
     Old_Record,New_Record:Integer;
     Old_Out,New_Out:Integer;
     Ps_TodaysDate:String;
     M: TWMNCHitTest;
    { Private declarations }
    Procedure CreateTable;
    Function LoadData:Boolean;
    Function GetQueueTime(DocCode:String; QueueListID:integer):String;
    Procedure UpdateQueueTime;
    procedure WMNCHitTest(var M: TWMNCHitTest);
    message WM_NCHITTEST;
  public
    { Public declarations }
    Function New_RecordData:Integer;
    Function New_OutData:Integer;
  end;

var
  Form_QueueList: TForm_QueueList;

implementation

{$R *.dfm}

{ TForm_QueueList }

procedure TForm_QueueList.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_QueueList.CB_ShowInOutTimeClick(Sender: TObject);
begin
     if CB_ShowInOutTime.Checked=True then
     Begin
          SMDBGrid1.Columns[2].Visible:=True;
          SMDBGrid1.Columns[3].Visible:=True;

          SMDBGrid1.Columns[2].Width:=91;
          SMDBGrid1.Columns[3].Width:=91;
     End
     Else
     Begin
          SMDBGrid1.Columns[2].Visible:=False;
          SMDBGrid1.Columns[3].Visible:=False;
     End;
end;

procedure TForm_QueueList.CreateTable;
begin
     if FileExists(gs_temppath + '\QueueList.db') then
     begin
          with Table_List do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'QueueList.db';
               DeleteTable;
          end;
     end;
     with Table_List do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'QueueList.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('QueueListID', ftInteger);
          FieldDefs.Add('PatientID', ftInteger);
          //FieldDefs.Add('PatientName', ftString, 64);
          FieldDefs.Add('DocCode', ftString, 10);
          FieldDefs.Add('DocName', ftString, 32);
          FieldDefs.Add('DepName', ftString, 32);
          FieldDefs.Add('RegTime', ftString, 12);
          FieldDefs.Add('QueueTime', ftString, 12);
          FieldDefs.Add('InTime', ftString, 12);
          FieldDefs.Add('OutTime', ftString, 12);
          FieldDefs.Add('Status', ftString, 1);
          FieldDefs.Add('RegDate', ftString, 10);
          FieldDefs.Add('RoomNo', ftString, 10);
          FieldDefs.Add('Updated', ftString, 1);
          CreateTable;
     end;
end;

procedure TForm_QueueList.DBLCB_DepartmentClick(Sender: TObject);
begin
     if Trim(DBLCB_Department.Text)<>'' then
          lbl_Head.Caption:='Department of '+DBLCB_Department.Text;
end;

procedure TForm_QueueList.FormCreate(Sender: TObject);
Var
     i:Integer;
begin
     RefreshQuery(Query_Department,gs_DatabaseName);
     for i := 0 to SMDBGrid1.RowCount - 1 do
     begin
          TStringGrid(SMDBGrid1).RowHeights[i]:=70;
     end;
end;

procedure TForm_QueueList.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (CB_ShowInOutTime.Enabled=True) and (Key=VK_F1) then
     CB_ShowInOutTime.Checked:=Not(CB_ShowInOutTime.Checked);
end;

function TForm_QueueList.GetQueueTime(DocCode:String; QueueListID:integer): String;
Var
     QryTime:TOraQuery;
     NoofO:Integer;
     PaidDuration:Integer;
     CurrentTime,ls_TodaysDate:String;
     QueueTime:String;
     TotalMinutes:Integer;
     MyDateTime:TDateTime;
     MyTime:TTime;
begin
     QryTime:=TOraQuery.Create(Nil);
     ls_TodaysDate:=TodaysDate;
     With QryTime do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select Count(QueueListID)C from Queuelist Where RegDate='+#39+ls_TodaysDate+#39);
          SQL.Add('And Status=''0'' ');
          //SQL.Add('And Updated=''N''');
          SQL.Add('And QueueListID<'+IntToStr(QueueListID));
          SQL.Add('And Doccode='+#39+DocCode+#39);
          Open;
          NoofO:=FieldByName('C').AsInteger;
          SQL.Clear;
          DatabaseName:=gs_DatabaseName;
          SQL.Add('Select PaidDuration from Department Where DepID in (Select DepID from Doctor Where Doccode='+#39+DocCode+#39+')');
          Open;
          PaidDuration:=FieldByName('PaidDuration').AsInteger;
          CurrentTime:=TodaysTime;

          TotalMinutes:=NoofO*PaidDuration;

          MyDateTime:=StrToTime(CurrentTime);

          if (Old_Out<>New_Out) then
               TotalMinutes:=TotalMinutes+1
          else
               TotalMinutes:=TotalMinutes+PaidDuration;

          MyDateTime:=StrToTime(CurrentTime)+((1/24/60)*TotalMinutes);

          QueueTime:=TimeToStr(MyDateTime);
          Result:=Copy(QueueTime,1,4)+' '+Copy(QueueTime,9,2);
     end;
     QryTime.Free;
end;

procedure TForm_QueueList.lbl_HeadMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
     Panel2.Visible:=True;
end;

Function TForm_QueueList.LoadData:Boolean;
Var
     QryLoad:TOraQuery;
     FDateTime:TDatetime;
begin
     if DBLCB_Department.KeyValue=NULL then
     Begin
          MessageDlg('Please Choose Department First.',mtWarning,[mbok],0);
          DBLCB_Department.SetFocus;
          Result:=False;
          Exit;
     End;

     CreateTable;
     Ps_TodaysDate:=TodaysDate;
     QryLoad:=TOraQuery.Create(Nil);
     With QryLoad do
     begin
          Close;
          DatabaseName:=gs_DatabaseName;
          SQL.Clear;
          SQL.Add('Select * from Queuelist Where RegDate='+#39+Ps_TodaysDate+#39);
          SQL.Add('And Status=''2''');
          SQL.Add('And DocCode in (Select DocCode From Doctor Where DepID='+IntToStr(DBLCB_Department.KeyValue)+')');
          SQL.Add('Order by regtime');
          Open;
          Old_Out:=RecordCount;
          SQL.Clear;
          SQL.Add('Select * from Queuelist Where RegDate='+#39+Ps_TodaysDate+#39);
          if RB_ReadyToIn.Checked=True then
          SQL.Add('And Status=''0''')
          Else if RB_InsideOPD.Checked=True then
          SQL.Add('And Status=''1''')
          Else if RB_CheckupComplete.Checked=True then
          SQL.Add('And Status=''2''');
          SQL.Add('And Trim(QueueTime)<>'' '' ');
          SQL.Add('And DocCode in (Select DocCode From Doctor Where DepID='+IntToStr(DBLCB_Department.KeyValue)+')');
          SQL.Add('Order by regtime');
          //sql.saveToFile('C:\QueuList.Txt');
          Open;
          Old_Record:=RecordCount;
          Table_List.Close;
          Table_List.EmptyTable;
          Table_List.Open;
          QryLoad.First;
          while not QryLoad.eof do
          begin
               with Table_List do
               begin
                    Append;
                    FieldByName('QueueListID').AsInteger:=QryLoad.FieldByName('QueueListID').AsInteger;
                    FieldByName('PatientID').AsInteger:=QryLoad.FieldByName('PatientID').AsInteger;
                    //FieldByName('PatientName').AsString:=QryLoad.FieldByName('PatientName').AsString;
                    FieldByName('DocCode').AsString:=QryLoad.FieldByName('DocCode').AsString;
                    FieldByName('DocName').AsString:=GetDocName(QryLoad.FieldByName('DocCode').AsString);
                    FieldByName('DepName').AsString:=GetDocDep(QryLoad.FieldByName('DocCode').AsString);
                    FDateTime:=StrToTime(QryLoad.FieldByName('RegTime').AsString);
                    Table_List.FieldByName('RegTime').AsString:=TimeToStr(FDateTime);
                    if Length(Trim(QryLoad.FieldByName('QueueTime').AsString))=10 then
                    Table_List.FieldByName('QueueTime').AsString:=Copy(QryLoad.FieldByName('QueueTime').AsString,1,4)
                                                       +' '+Copy(QryLoad.FieldByName('QueueTime').AsString,9,2)
                    Else
                    Table_List.FieldByName('QueueTime').AsString:=Copy(QryLoad.FieldByName('QueueTime').AsString,1,5)
                                                       +' '+Copy(QryLoad.FieldByName('QueueTime').AsString,10,2);
                    FieldByName('InTime').AsString:=QryLoad.FieldByName('InTime').AsString;
                    FieldByName('OutTime').AsString:=QryLoad.FieldByName('OutTime').AsString;
                    FieldByName('Status').AsString:=QryLoad.FieldByName('Status').AsString;
                    FieldByName('RegDate').AsString:=QryLoad.FieldByName('RegDate').AsString;
                    FieldByName('RoomNo').AsString:=GetDocRoomNo(QryLoad.FieldByName('DocCode').AsString);
                    FieldByName('Updated').AsString:='N';
                    Post;
               end;
               QryLoad.Next;
          end;
     end;
     //UpdateQueueTime;
     RefreshTable(Table_List,gs_temppath);
     SMDBGrid1.DataSource:=DS_List;
     Result:=True;
end;

function TForm_QueueList.New_OutData: Integer;
Var
     QryLoad2:TOraQuery;
begin
     QryLoad2:=TOraQuery.Create(Nil);
     With QryLoad2 do
     begin
          Close;
          SQL.Clear;
          DatabaseName:=gs_DatabaseName;
          SQL.Add('Select * from Queuelist Where RegDate='+#39+Ps_TodaysDate+#39);
          SQL.Add('And Status=''2''');
          SQL.Add('And DocCode in (Select DocCode From Doctor Where DepID='+IntToStr(DBLCB_Department.KeyValue)+')');
          SQL.Add('Order by regtime');
          Open;
          Result:=RecordCount;
     end;
     QryLoad2.Free;
end;

function TForm_QueueList.New_RecordData: Integer;
Var
     QryLoad2:TOraQuery;
begin
     QryLoad2:=TOraQuery.Create(Nil);
     With QryLoad2 do
     begin
          Close;
          SQL.Clear;
          DatabaseName:=gs_DatabaseName;
          SQL.Add('Select * from Queuelist Where RegDate='+#39+Ps_TodaysDate+#39);
          SQL.Add('And Status=''0''');
          SQL.Add('And Trim(QueueTime)<>'' '' ');
          SQL.Add('And DocCode in (Select DocCode From Doctor Where DepID='+IntToStr(DBLCB_Department.KeyValue)+')');
          SQL.Add('Order by regtime');
          Open;
          Result:=RecordCount;
     end;
     QryLoad2.Free;
end;

procedure TForm_QueueList.RB_CheckupCompleteClick(Sender: TObject);
begin
     if RB_CheckupComplete.Checked=True Then
     Begin
          CB_ShowInOutTime.Enabled:=True;
          Timer1.Enabled:=False;
          LoadData;
     End;
end;

procedure TForm_QueueList.RB_InsideOPDClick(Sender: TObject);
begin
     if RB_InsideOPD.Checked=True Then
     Begin
          CB_ShowInOutTime.Enabled:=True;
          Timer1.Enabled:=False;
          LoadData;
     End;
end;

procedure TForm_QueueList.RB_ReadyToInClick(Sender: TObject);
begin
     if RB_ReadyToIn.Checked=True Then
     Begin
          CB_ShowInOutTime.Enabled:=False;
          CB_ShowInOutTime.Checked:=False;
          SMDBGrid1.Columns[2].Visible:=False;
          SMDBGrid1.Columns[3].Visible:=False;
          Timer1.Enabled:=True;
          LoadData;
     End;
end;

procedure TForm_QueueList.SMDBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
     Panel2.Visible:=False;
end;

procedure TForm_QueueList.SpeedButton1Click(Sender: TObject);
begin
     IF LoadData=False Then Exit;
     Timer1.Enabled:=True;
end;

procedure TForm_QueueList.Timer1Timer(Sender: TObject);
begin
     New_Record:=New_RecordData;
     New_Out:=New_OutData;
     if (i=60) or (New_Record<>Old_Record) or (Old_Out<>New_Out) then
     begin
          LoadData;
          i:=0;
     end;
     Inc(i);
     UpdateQueueTime;
end;

procedure TForm_QueueList.UpdateQueueTime;
Var
     QryLoad:TOraQuery;
     FDateTime1,FDateTime2:TDatetime;
     b_First:Boolean;
begin
     QryLoad:=TOraQuery.Create(Nil);
     With QryLoad do
     begin
          Close;
          SQL.Clear;
          DatabaseName:=gs_temppath;
          SQL.Add('Select * from Queuelist');
          SQL.Add('Where Updated=''N''');
          SQL.Add('Order by QueueListID');
          Open;

          if FieldByName('QueueListId').AsInteger>0 then
          begin
               FDateTime1:=StrToTime(Copy(FieldByName('QueueTime').AsString,1,4)+':00 '+Copy(FieldByName('QueueTime').AsString,9,2));
               FDateTime2:=StrToTime(TodaysTime);
               if FDateTime2>FDateTime1 then
               begin
                    Table_List.Close;
                    Table_List.Open;
                    b_First:=True;
                    while not eof do
                    begin
                         with Table_List do
                         begin
                              if Locate('QueueListID',QryLoad.FieldByName('QueueListID').AsInteger,[]) then
                              begin
                                   Edit;
                                   FieldByName('QueueTime').AsString:=
                                             GetQueueTime(QryLoad.FieldByName('DocCode').AsString,QryLoad.FieldByName('QueueListID').AsInteger);
                                   FieldByName('Updated').AsString:='Y';
                                   Post;
                              end;
                         end;
                         Next;
                    end;
               end;
          end;
     end;
     With QryLoad do
     begin
          Close;
          SQL.Clear;
          DatabaseName:=gs_temppath;
          SQL.Add('Update QueueList Set Updated=''N''');
          ExecSQL;
     end;
end;

procedure TForm_QueueList.WMNCHitTest(var M: TWMNCHitTest);
Var
     X, Y: Smallint;
begin
     inherited;
     { If the client has been clicked, make Windows believe }
     { it was the caption bar that was clicked on }
     // if M.Result = htClose then M.Result := htNowhere;
//     if M.Result = HTCLIENT then
//          M.Result := htCaption;
end;

end.
