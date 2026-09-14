unit UnitSendToExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Grids, DBGrids,fxn,Variants,
  DBCtrls, Db, Excelxp,Ora, OleServer, OleCtrls, Dialogs, DBTables,ComObj;

type
    TScrollEvents = class
    BeforeScroll_Event: TDataSetNotifyEvent;
    AfterScroll_Event: TDataSetNotifyEvent;
    AutoCalcFields_Property: Boolean;
end;

procedure DisableDependencies(DataSet: TDataSet; var ScrollEvents: TScrollEvents);
procedure EnableDependencies(DataSet: TDataSet; ScrollEvents: TScrollEvents);
Procedure SendToExcels(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
function RefToCell(ARow, ACol: Integer): string;

implementation

//*******************BY NIRDESH********************//
//In order to increase speed in
//the process of scanning large amounts
//of records in a dataset
//we make a call to the "DisableControls" procedure and then disable the "BeforeScroll" and
//"AfterScroll" events and the "AutoCalcFields" property.
procedure DisableDependencies(DataSet: TDataSet; var ScrollEvents: TScrollEvents);
begin
    with DataSet do
    begin
        DisableControls;
        ScrollEvents := TScrollEvents.Create();
        with ScrollEvents do
        begin
                BeforeScroll_Event := BeforeScroll;
                AfterScroll_Event := AfterScroll;
                AutoCalcFields_Property := AutoCalcFields;
                BeforeScroll := nil;
                AfterScroll := nil;
                AutoCalcFields := False;
        end;
    end;
end;

//we make a call to the "EnableControls" procedure and then restore
// the "BeforeScroll" and "AfterScroll" events and the "AutoCalcFields" property.
procedure EnableDependencies(DataSet: TDataSet; ScrollEvents: TScrollEvents);
begin
     with DataSet do
     begin
        EnableControls;
        with ScrollEvents do
        begin
                BeforeScroll := BeforeScroll_Event;
                AfterScroll := AfterScroll_Event;
                AutoCalcFields := AutoCalcFields_Property;
        end;
     end;
end;


{function RefToCell(ARow, ACol: Integer): string;
Var
 Pre_Str:String;

 Fst_Part,Sec_Part:Integer;
begin
     Fst_part:=ACol+64; //'A'
     sec_part:=0;
     If ACol > 26 then
     begin
          Fst_part:=(Acol div 26)+64; //= StrToInt(FloatToStr(Acol/26))+64;//Bec 64+1=65=A
          sec_part:=(Acol mod 26)+64;
     end;

     Result:=Chr(fst_Part);
     If Sec_Part>0 then
         Result:=Result+Chr(sec_part);
     Result:=Result+IntToStr(ARow);

     //Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;}


function RefToCell(ARow, ACol: Integer): string;
begin
     if ACol <= 26 then//till Column Z
          Result := Chr(65 + (ACol - 1)) + IntToStr(ARow)
     else IF Acol <=52 Then
     begin
          ACol:=ACol - 26;
          Result:= 'A'+Chr(65 + ACol - 1) + IntToStr(ARow);
     end Else IF Acol <=78 Then
     Begin
          ACol:=ACol - 52;
          Result:= 'B'+Chr(65 + ACol - 1) + IntToStr(ARow);
     end Else IF Acol <=104 Then
     Begin
          ACol:=ACol - 78;
          Result:= 'C'+Chr(65 + ACol - 1) + IntToStr(ARow);
     end Else IF Acol <=130 Then
     Begin
          ACol:=ACol - 104;
          Result:= 'D'+Chr(65 + ACol - 1) + IntToStr(ARow);
     end Else IF Acol <=156 Then
     Begin
          ACol:=ACol - 130;
          Result:= 'E'+Chr(65 + ACol - 1) + IntToStr(ARow);
     End;
end;

Procedure SendToExcels(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
var
  GridCols: Integer;
  objExcel, Sheet,objRange, Data: OLEVariant;
  i, j,k,l: Integer;
  ScrollEvents: TScrollEvents;
  const ColsArr:Array[0..98] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
                                      'V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP',
                                      'AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ',
                                      'BK','BL','BM','BN','BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ','CA','CB','CC','CD',
                                      'CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN','CO','CP','CQ','CR','CS','CT','CU');
begin
     Try
        // Create Excel-OLE Object
        objExcel := CreateOleObject('Excel.Application');
        objExcel.Interactive := False;  //Do Not allow the User to Interact with the Excel Application
        If objExcel.Visible = False Then
          objExcel.Visible := True;
        objExcel.WindowState := xlMaximized;

        // Add new Workbook
        objExcel.Workbooks.Add(xlWBatWorkSheet);
        Sheet := objExcel.Workbooks[1].WorkSheets[1];

        objRange := Sheet.Rows[1];

        {*** Report Company ***}
        objRange.cells(1,1):=Company;
        objRange.Font.color:=ClBlack;
        objRange.Font.Size:=12;
        objRange.Font.Bold:=True;

        {*** Report Company Address ***}
        objRange.cells(2,1):=CompanyAddress;

        {*** Report Title ***}
        objRange.cells(3,1):=ReportTitle;

        {*** Report Date ***}
        objRange.cells(4,1):='Date: '+ ReportDate;
     Except

     End;

     If (DataSet <> nil) AND (DBGRD = Nil) Then
     Begin
          GridCols:=0;
          //Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
              If DataSet.Fields[k].Visible=True then
              begin
                   GridCols:=GridCols+1;
                   objRange.cells(5,GridCols):=DataSet.Fields[K].DisplayName;
              end;
          end;

          objRange:=objExcel.Range['A' + inttostr(5),  ColsArr[GridCols-1]+ Inttostr(5)];
          objRange.Select;
          objRange.Borders.Color:=clBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.Color := clblack;
          objRange.Interior.ColorIndex:=15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
             // Prepare Data
             Data := VarArrayCreate([1, DataSet.RecordCount, 1,GridCols ], varVariant);
             DataSet.First;
             for i := 0 to DataSet.RecordCount - 1 do
             begin
                 l:=0;
                 For j := 0 to DataSet.Fields.Count- 1 do
                 begin
                     If DataSet.Fields[j].Visible=True then
                     begin
                          Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                          l:=l+1;
                     end;
                 end;
                 DataSet.Next;
             end;
          Finally
           EnableDependencies(DataSet, ScrollEvents);
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DataSet.RecordCount+5,
                     GridCols)].Value := Data;

     End
     Else If (DataSet =nil) AND (DBGRD <> Nil) Then
     begin
          GridCols:=0;
          //Add the Column Headers
          For k := 0 to DBGRD.Columns.Count - 1 do
          begin
              If DBGRD.Columns[k].Visible=True then
              begin
                   GridCols:=GridCols+1;
                   objRange.cells(5,GridCols):=DBGRD.Columns[K].Title.Caption;
              end;
          end;
          objRange:=objExcel.Range['A' + inttostr(5),  ColsArr[GridCols-1]+ Inttostr(5)];
          objRange.Select;
          //objRange := Sheet.Rows[5];
          objRange.Borders.Color:=clBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.Color := clblack;
          objRange.Interior.ColorIndex:=15;

          DisableDependencies(DBGRD.DataSource.DataSet,ScrollEvents);
          Try
             // Prepare Data
             TOraQuery(DBGRD.DataSource.DataSet).FetchAll:=True;
             Data := VarArrayCreate([1, DBGRD.DataSource.DataSet.RecordCount, 1, DBGRD.Columns.Count], varVariant);
             DBGRD.DataSource.DataSet.First;

             for i := 0 to DBGRD.DataSource.DataSet.RecordCount - 1 do
             begin
                 l:=0;
                 For j := 0 to  DBGRD.Columns.Count- 1 do
                 begin
                      If DBGRD.Columns[j].Visible then
                      begin
                          Data[i + 1, l + 1] :=DBGRD.DataSource.DataSet.FieldByName(DBGRD.Columns[J].FieldName) .AsString;
                          l:=l+1;
                      end;
                 end;
                 DBGRD.DataSource.DataSet.Next;
             end;
          Finally
          EnableDependencies(DBGRD.DataSource.DataSet,ScrollEvents);
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DBGRD.DataSource.DataSet.RecordCount+5,
                     GridCols)].Value := Data;
     End;

     IF SumStartFromCols > 0 Then
     Begin
         For k:=SumStartFromCols to GridCols-1 do
         objRange.cells(i+2,k+1):='=SUM('+ColsArr[k]+'6:'+ColsArr[k]+IntToStr(i+5)+'';
         objRange := Sheet.Rows[i+6];
         objRange.Font.Bold:=True;
     End;

     objRange:=objExcel.Range['A' + inttostr(1),  ColsArr[GridCols-1]+ Inttostr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=ClBlack;
     objRange.Font.Size:=12;
     objRange.Font.Bold:=True;


     objRange:=objExcel.Range['A' + inttostr(2),  ColsArr[GridCols-1]+ Inttostr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=ClBlack;
     objRange.Font.Size:=8;
     objRange.Font.Bold:=True;


     objRange:=objExcel.Range['A' + inttostr(3),  ColsArr[GridCols-1]+ Inttostr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=Clred;
     objRange.Font.Size:=10;
     objRange.Font.Bold:=True;


     objRange:=objExcel.Range['A' + inttostr(4),  ColsArr[GridCols-1]+ Inttostr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=ClBlack;
     objRange.Font.Size:=8;
     objRange.Font.Bold:=True;

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
     DBGRD.DataSource.DataSet.First;
end;

end.
