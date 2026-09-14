unit Unit_BroadcastStatus;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Fxn, ServerDate,dm,
     Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Spin, OleCtrls, DateEditXControl_TLB;

type
     TForm_BroadcastStatus = class(TForm)
          Panel2: TPanel;
          BB_Close: TBitBtn;
          Panel1: TPanel;
          Panel3: TPanel;
          DBGrid1: TDBGrid;
          Label26: TLabel;
          Edit_SearchCollectedList: TEdit;
          DS_List: TDataSource;
          GB_Searchbydate: TGroupBox;
          Label11: TLabel;
          SPB_From: TSpeedButton;
          Label13: TLabel;
          SPB_To: TSpeedButton;
          CB_Date: TCheckBox;
          Dex_CLFrom: TDateEditX;
          Dex_CLTo: TDateEditX;
          GroupBox6: TGroupBox;
          Label31: TLabel;
          Label32: TLabel;
          Se_CLDays: TSpinEdit;
          BB_Refresh: TSpeedButton;
    Table_List: TTable;
          procedure FormCreate(Sender: TObject);
          procedure BB_RefreshClick(Sender: TObject);
          procedure BB_CloseClick(Sender: TObject);
          procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
          procedure Edit_SearchCollectedListChange(Sender: TObject);
          procedure Dex_CLFromEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
     private
          { Private declarations }
          Procedure CreateTable;
          Procedure LoadData;
     public
          { Public declarations }
     end;

var
     Form_BroadcastStatus: TForm_BroadcastStatus;

implementation

uses Unit_Verification;
{$R *.dfm}
{ TForm_BroadcastStatus }

procedure TForm_BroadcastStatus.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_BroadcastStatus.BB_RefreshClick(Sender: TObject);
begin
     LoadData;
     RefreshTable(Table_List, gs_temppath);
end;

procedure TForm_BroadcastStatus.CreateTable;
begin
     if FileExists(gs_temppath + '\BroadcastStatus.db') then
     begin
          with Table_List do
          begin
               Close;
               DatabaseName := gs_temppath;
               TableName := 'BroadcastStatus.db';
               DeleteTable;
          end;
     end;
     with Table_List Do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'BroadcastStatus.db';
          TableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('PatientID', ftInteger);
          FieldDefs.Add('PatientName', ftString, 32);
          FieldDefs.Add('SampleNo', ftString, 32);
          FieldDefs.Add('TestDateTime', ftString, 22);
          FieldDefs.Add('FindingPostDateTime', ftString, 22);
          FieldDefs.Add('Data', ftString, 10);
          FieldDefs.Add('Report', ftString, 10);
          FieldDefs.Add('SMS', ftString, 10);
          FieldDefs.Add('Email', ftString, 10);
          CreateTable;
     end;
end;

procedure TForm_BroadcastStatus.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
     if (Table_List.FieldByName('Data').AsString = 'Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebBlue;
               Font.Color := clWhite;
          end;
          if DataCol in [5] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('Data').AsString = 'Not Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebRed;
               Font.Color := clWhite;
          end;
          if DataCol in [5] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('Report').AsString = 'Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebBlue;
               Font.Color := clWhite;
          end;
          if DataCol in [6] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('Report').AsString = 'Not Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebRed;
               Font.Color := clWhite;
          end;
          if DataCol in [6] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('SMS').AsString = 'Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebBlue;
               Font.Color := clWhite;
          end;
          if DataCol in [7] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('SMS').AsString = 'Not Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebRed;
               Font.Color := clWhite;
          end;
          if DataCol in [7] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('Email').AsString = 'Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebBlue;
               Font.Color := clWhite;
          end;
          if DataCol in [8] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;

     if (Table_List.FieldByName('Email').AsString = 'Not Sent') then
     begin
          with DBGrid1.Canvas do
          begin
               Brush.Color := clWebRed;
               Font.Color := clWhite;
          end;
          if DataCol in [8] then
          DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     end;
end;

procedure TForm_BroadcastStatus.Dex_CLFromEnter(Sender: TObject);
begin
     CB_Date.Checked := true;
end;

procedure TForm_BroadcastStatus.Edit_SearchCollectedListChange(Sender: TObject);
Var
     li_PatientID: String;
begin
     li_PatientID := Edit_SearchCollectedList.Text;
     with Table_List do
     Begin
          IF trim(Edit_SearchCollectedList.Text) <> '' Then
          Begin
               // if IsStrANumber(Edit_SearchCollectedList.Text) then
               // Filter := 'PatientID =' + #39 + Edit_SearchCollectedList.Text + #39
               // else
               Filter := 'PatientID =' + #39 + li_PatientID + #39;
               Filtered := true;
          End
          Else
               Filtered := false;
     End;
     // BB_RefreshClick(Sender);
end;

procedure TForm_BroadcastStatus.FormCreate(Sender: TObject);
begin
     CreateTable;
     Dex_CLFrom.ADDateAsText := TodaysDate;
     Dex_CLFrom.SystemOfDate := gi_datesystem;
     Dex_CLTo.ADDateAsText := TodaysDate;
     Dex_CLTo.SystemOfDate := gi_datesystem;
     BB_RefreshClick(Sender);
end;

procedure TForm_BroadcastStatus.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = 27 then
          BB_CloseClick(Sender);
end;

procedure TForm_BroadcastStatus.LoadData;
Var
     Qry, Qry1, Qry2: TOraQuery;
     Ls_SampleNo: String;
begin
     Qry := TOraQuery.Create(Nil);
     Qry1 := TOraQuery.Create(Nil);
     Qry2 := TOraQuery.Create(Nil);

     with Table_List do
     begin
          Close;
          DatabaseName := gs_temppath;
          TableName := 'BroadcastStatus.db';
          EmptyTable;
          Open;
     end;

     With Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('SELECT * FROM VW_SAMPLE_COLLECTED');
          if StrToInt(Se_CLDays.Text) > 0 then
               SQL.Add('Where Testdate> TO_CHAR(SYSDATE-' + Se_CLDays.Text + ',''YYYY/MM/DD'')')
          else if CB_Date.Checked = true then
               SQL.Add('Where Testdate Between ' + #39 + Dex_CLFrom.ADDateAsText + #39 + ' And ' + #39 +
                      Dex_CLTo.ADDateAsText + #39)
          else
               SQL.Add('Where Testdate =' + #39 + TodaysDate + #39);
          SQL.Add('Order by TestDate Desc');
          Open;
          while Not eof do
          begin
               if Ls_SampleNo <> Qry.FieldByName('SampleNo').AsString then
               begin
                    Ls_SampleNo := Qry.FieldByName('SampleNo').AsString;
                    With Table_List do
                    begin
                         Append;
                         FieldByName('PatientId').AsInteger := Qry.FieldByName('PatientId').AsInteger;
                         FieldByName('PatientName').AsString := Qry.FieldByName('PatientName').AsString;
                         FieldByName('SampleNo').AsString := Qry.FieldByName('SampleNo').AsString;
                         FieldByName('TestDateTime').AsString := Qry.FieldByName('TestDate').AsString+' '+Qry.FieldByName('TestTime').AsString;
                         FieldByName('FindingPostDateTime').AsString := Qry.FieldByName('FindingPostDateTime').AsString;
                    end;
                    with Qry1 do
                    begin
                         // Checking Data Status
                         Close;
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         SQL.Add('SELECT ID,DATETIME,STATUS FROM QUERYCOLLECTION');
                         SQL.Add('WHERE SAMPLENO=' + #39 + Qry.FieldByName('SampleNo').AsString + #39);
                         SQL.Add('AND DATATYPE=''PATH''');
                         Open;
                         if FieldByName('Id').AsString <> '' then
                         begin
                              with Table_List do
                              begin
                                   if Qry1.FieldByName('Status').AsInteger = 0 then
                                        FieldByName('Data').AsString := 'Not Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 1 then
                                        FieldByName('Data').AsString := 'Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 2 then
                                        FieldByName('Data').AsString := 'Confirmed';
                              end;
                         end
                         else
                              Table_List.FieldByName('Data').AsString := 'Not Sent';
                         // Checking SMS Status
                         Close;
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         SQL.Add('SELECT ID,DATETIME,STATUS FROM QUERYCOLLECTION');
                         SQL.Add('WHERE SAMPLENO=' + #39 + Qry.FieldByName('SampleNo').AsString + #39);
                         SQL.Add('AND DATATYPE=''SMSNOTIF''');
                         Open;
                         if FieldByName('Id').AsString <> '' then
                         begin
                              with Table_List do
                              begin
                                   if Qry1.FieldByName('Status').AsInteger = 0 then
                                        FieldByName('SMS').AsString := 'Not Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 1 then
                                        FieldByName('SMS').AsString := 'Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 2 then
                                        FieldByName('SMS').AsString := 'Confirmed';
                              end;
                         end
                         else
                              Table_List.FieldByName('Sms').AsString := 'Not Sent';
                         // Checking Image Status
                         Close;
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         SQL.Add('SELECT ID,DATETIME,STATUS FROM IMAGE_STATUS');
                         SQL.Add('WHERE SAMPLENO=' + #39 + Qry.FieldByName('SampleNo').AsString + #39);
                         Open;
                         if FieldByName('Id').AsString <> '' then
                         begin
                              with Table_List do
                              begin
                                   if Qry1.FieldByName('Status').AsInteger = 0 then
                                        FieldByName('Report').AsString := 'Not Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 1 then
                                        FieldByName('Report').AsString := 'Sent'
                                   else if Qry1.FieldByName('Status').AsInteger = 2 then
                                        FieldByName('Report').AsString := 'Confirmed';
                              end;
                         end
                         else
                              Table_List.FieldByName('Report').AsString := 'Not Sent';
                         // Checking EMAIL Status
                         Close;
                         Session:=Dm_Hospital.Db;
                         SQL.Clear;
                         SQL.Add('SELECT BILLDATE,BILLTIME,SENTTOEMAIL FROM BILLMASTER');
                         SQL.Add('WHERE BILLNO=' + #39 + Qry.FieldByName('BILLNO').AsString + #39);
                         Open;
                         if FieldByName('BILLDATE').AsString <> '' then
                         begin
                              with Table_List do
                              begin
                                   if Qry1.FieldByName('SentToEmail').AsString = '' then
                                        FieldByName('Email').AsString := 'Not Sent'
                                   else if Qry1.FieldByName('SentToEmail').AsString = 'Y' then
                                        FieldByName('Email').AsString := 'Sent';
                              end;
                         end;
                         Table_List.Post;
                    end;
               end;
               Qry.Next;
          end;
     end;
     Qry.Free;
     Qry1.Free;
     Qry2.Free;
end;

end.
