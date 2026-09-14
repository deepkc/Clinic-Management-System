unit UnitSendToExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Grids, DBGrids,fxn,Variants,
  DBCtrls, Db, Excelxp,Ora, OleServer, OleCtrls, Dialogs, DBTables,ComObj,DM;

type
    TScrollEvents = class
    BeforeScroll_Event: TDataSetNotifyEvent;
    AfterScroll_Event: TDataSetNotifyEvent;
    AutoCalcFields_Property: Boolean;
end;

procedure DisableDependencies(DataSet: TDataSet; var ScrollEvents: TScrollEvents);
procedure EnableDependencies(DataSet: TDataSet; ScrollEvents: TScrollEvents);
Procedure SendToExcelsNew(DataSet:Array of TDataset; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);

Procedure SendToExcels(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress: String; SumStartFromCols: Integer);

Procedure SendToExcelsMultiQueryKPL(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5: TDataSet;
          ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5: String; ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);

Procedure SendToExcels_query(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
Procedure SendToExcelsMultiQuery(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5: TDataSet;
          ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5: String; ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);

Procedure SendToExcelMasterMultiDetail(MasterDataSet:TDataSet; DetailDataSet:TOraQuery;DetailDataSet1:TOraQuery; ReportTitle:String; ReportDate:String;
        Summary:String; Company:String; CompanyAddress:String; ReportType:String; SumStartFromCols:Integer);

Procedure SendToExcelsMultiQuery_UserColnDetail(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5,
               DataSet6, DataSet7, DataSet8, DataSet9, DataSet10: TDataSet;
               ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5,ReportTitle6,ReportTitle7,ReportTitle8,ReportTitle9,ReportTitle10:String;
               ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);


Procedure SendToExcelMultiQuerys2nd(DataSet:TDataSet; DataSet1:TDataSet;DataSet2:TDataSet;DataSet3:TDataSet;DataSet4:TDataSet;
                                ReportTitle1:String; ReportTitle2:String; ReportTitle3:String; ReportTitle4:String; ReportTitle5:String;
                                ReportDate:String; Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer);

Procedure SendToExcels_ColsHeaderModify(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress,ReportType: String; SumStartFromCols: Integer);

Procedure SendToExcel(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress: String; SumStartFromCols: Integer);

Function GetDepName(DepCode : String):String;
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

Procedure SendToExcelsMultiQuerykpl(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5: TDataSet;
          ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5: String; ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l, x,NoofRows, SumStartPoint, SumEndPoint: Integer;
     ScrollEvents: TScrollEvents;
const
     ColsArr: Array [0 .. 64] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     NoofRows:=6;
     SumStartPoint:=6;
     SumEndPoint:=0;
     For x:=0 to NoOfQuery-1 do
     Begin
         IF x=1 Then
         Begin
              Dataset:=DataSet1;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle1;
         End
         Else IF x=2 Then
         Begin
              Dataset:=DataSet2;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle2;
         End
         Else IF x=3 Then
         Begin
              Dataset:=DataSet3;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle3;
         End
         Else IF x=4 Then
         Begin
              Dataset:=DataSet4;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle4;
         End
         Else IF x=5 Then
         Begin
              Dataset:=DataSet5;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle5;
         End;

          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    if x=0 then
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName
                    Else
                    Begin
                         objRange := objExcel.Range[ColsArr[GridCols-1] + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
                         objRange.Select;
                         objRange.Value:=DataSet.Fields[k].DisplayName;
                    End;
                    //objRange.cells(i, GridCols) := DataSet.Fields[k].DisplayName;
                    //objRange.cells(SumEndPoint+3, GridCols) := DataSet.Fields[k].DisplayName;

               end;
          end;

          if x=0 then
          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)]
          Else
          objRange := objExcel.Range['A' + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
          objRange.Select;
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsString) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsString + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                              l := l + 1;
                         end;
                    end;

                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;

          if x=0 then
          Begin
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+5;
               SumStartPoint:=NoofRows;
               NoofRows:=DataSet.RecordCount;
          End
          Else
          Begin
               SumStartPoint:=SumEndPoint+4;
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+3;
               NoofRows:=DataSet.RecordCount;
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(SumStartPoint, 1), RefToCell(SumEndPoint, GridCols)].Value := Data;


          IF SumStartFromCols > 0 Then
          Begin
               //if x=0 then
               objRange.cells(i + 2, 1) := 'TOTAL: ';
               //Else
               //objRange.cells(i+4, GridCols) :='Refund tolal';
               For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i +2, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               //objRange.cells(SumStartPoint, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               objRange := Sheet.Rows[SumEndPoint + 6];
               objRange.Font.Bold := True;
          End;


          for I := SumStartPoint  to SumEndPoint do
          Begin
               objRange := objExcel.Range[ColsArr[GridCols - 1] + IntToStr(I), ColsArr[GridCols - 1] + IntToStr(I)];
               objRange.Select;
               IF objRange.Value='N' Then
               Begin
                    objRange := objExcel.Range['A' + IntToStr(I), ColsArr[GridCols - 1] + IntToStr(I)];
                    objRange.Select;
                    objRange.Font.color := clRed;
                    objRange.Font.Size := 12;
               End;
          End;
          for I := SumStartPoint-1  to SumEndPoint do
          Begin
               objRange := objExcel.Range[ColsArr[GridCols-1] + IntToStr(I), ColsArr[GridCols-1] + IntToStr(I)];
               objRange.Select;
               IF (objRange.Value='N') or (objRange.Value='IsCreditPaid') or (objRange.Value='Y') Then
               Begin
                    objRange.Font.color := clWhite;
                    objRange.Interior.ColorIndex := 0;
               End;
          End;
     End;

     //objRange := objExcel.Range[ColsArr[GridCols] + IntToStr(), ColsArr[GridCols] + IntToStr(I)];
     //objRange.Range[ColsArr[GridCols]].EntireColumn.Delete;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;


     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := CLRED;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;

end;


Procedure SendToExcelsMultiQuery(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5: TDataSet;
          ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5: String; ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l, x,NoofRows, SumStartPoint, SumEndPoint: Integer;
     ScrollEvents: TScrollEvents;
const
     ColsArr: Array [0 .. 64] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     NoofRows:=6;
     SumStartPoint:=6;
     SumEndPoint:=0;
     For x:=0 to NoOfQuery-1 do
     Begin
         IF x=1 Then
         Begin
              Dataset:=DataSet1;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle1;
         End
         Else IF x=2 Then
         Begin
              Dataset:=DataSet2;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle2;
         End
         Else IF x=3 Then
         Begin
              Dataset:=DataSet3;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle3;
         End
         Else IF x=4 Then
         Begin
              Dataset:=DataSet4;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle4;
         End
         Else IF x=5 Then
         Begin
              Dataset:=DataSet5;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle5;
         End;

          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    if x=0 then
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName
                    Else
                    Begin
                         objRange := objExcel.Range[ColsArr[GridCols-1] + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
                         objRange.Select;
                         objRange.Value:=DataSet.Fields[k].DisplayName;
                    End;
                    //objRange.cells(i, GridCols) := DataSet.Fields[k].DisplayName;
                    //objRange.cells(SumEndPoint+3, GridCols) := DataSet.Fields[k].DisplayName;

               end;
          end;

          if x=0 then
          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)]
          Else
          objRange := objExcel.Range['A' + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
          objRange.Select;
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsString) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsString + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                              l := l + 1;
                         end;
                    end;
                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;

          if x=0 then
          Begin
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+5;
               SumStartPoint:=NoofRows;
               NoofRows:=DataSet.RecordCount;
          End
          Else
          Begin
               SumStartPoint:=SumEndPoint+4;
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+3;
               NoofRows:=DataSet.RecordCount;
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(SumStartPoint, 1), RefToCell(SumEndPoint, GridCols)].Value := Data;


          IF SumStartFromCols > 0 Then
          Begin
               //if x=0 then
               objRange.cells(i + 2, 1) := 'TOTAL: ';
               //Else
               //objRange.cells(i+4, GridCols) :='Refund tolal';
               For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i +2, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               //objRange.cells(SumStartPoint, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               objRange := Sheet.Rows[SumEndPoint + 6];
               objRange.Font.Bold := True;
          End;
     End;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
end;


Procedure SendToExcels_query(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
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

//     IF SumStartFromCols > 0 Then
//     Begin
//         For k:=SumStartFromCols to GridCols-1 do
//         objRange.cells(i+2,k+1):='=SUM('+ColsArr[k]+'6:'+ColsArr[k]+IntToStr(i+5)+'';
//         objRange := Sheet.Rows[i+6];
//         objRange.Font.Bold:=True;
//     End;

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
end;

Procedure SendToExcel(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress: String; SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l: Integer;
     ScrollEvents: TScrollEvents;
const
     ColsArr: Array [0 .. 64] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     If (DataSet <> nil) AND (DBGRD = Nil) Then
     Begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName;
               end;
          end;

          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          {Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsVariant) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsVariant + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsVariant;
                              l := l + 1;
                         end;
                    end;
                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;  }
          //Modify by TheGcool
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
          Sheet.Range[RefToCell(6, 1), RefToCell(DataSet.RecordCount + 5, GridCols)].Value := Data;

     End
     Else If (DataSet = nil) AND (DBGRD <> Nil) Then
     begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DBGRD.Columns.Count - 1 do
          begin
               If DBGRD.Columns[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    objRange.cells(5, GridCols) := DBGRD.Columns[k].Title.Caption;
               end;
          end;

          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DBGRD.DataSource.DataSet.RecordCount, 1, DBGRD.Columns.Count], varVariant);
               // GridCols:=DBGRD.DataSource.DataSet.fields.Count;

               DBGRD.DataSource.DataSet.First;
               for i := 0 to DBGRD.DataSource.DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DBGRD.Columns.Count - 1 do
                    begin
                         If DBGRD.Columns[j].Visible then
                         begin

                              // Data[i + 1, l + 1] :=DBGRD.DataSource.DataSet.FieldByName(DBGRD.Columns[J].FieldName) .AsString;
                              Data[i + 1, l + 1] := DBGRD.Fields[j].Text;
                              l := l + 1;
                         end;
                    end;
                    DBGRD.DataSource.DataSet.Next;
               end;
          Finally
               EnableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DBGRD.DataSource.DataSet.RecordCount + 5, DBGRD.Columns.Count)].Value := Data;
     End;

     IF SumStartFromCols > 0 Then
     Begin
          objRange.cells(i + 2, 1) := 'TOTAL : ';
          For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i + 2, k + 1) := '=SUM(' + ColsArr[k] + '6:' + ColsArr[k] + IntToStr(i + 5) + '';
          objRange := Sheet.Rows[i + 6];
          objRange.Font.Bold := True;
     End;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
end;



Procedure SendToExcels_ColsHeaderModify(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress,ReportType: String; SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l: Integer;
     ScrollEvents: TScrollEvents;
     ls_DepName : String;
     lf_Total :Double;

const
     ColsArr: Array [0 .. 103] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM','BN',
          'BO','BP','BQ','BR','BS','BT','BU','BV','BW','BX','BY','BZ','CA','CB','CC','CD','CE','CF','CG','CH','CI','CJ','CK','CL','CM','CN',
          'CO','CP','CQ','CR','CS','CT','CU','CV','CW','CX','CY','CZ');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     If (DataSet <> nil) AND (DBGRD = Nil) Then
     Begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    if (ReportType='OCCUPIEDDAYS') and (k>=0) then
                    Begin
                         ls_DepName:=GetDepName(DataSet.Fields[k].DisplayName);
                         if Trim(ls_DepName)<>'' then
                         objRange.cells(5, GridCols) := ls_DepName
                         Else
                         objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName;
                    End
                    else if (ReportType='OCCUPIEDDAY') and (k>0) then
                    Begin
                         ls_DepName:=GetDepName(DataSet.Fields[k].DisplayName);
                         if Trim(ls_DepName)<>'' then
                         objRange.cells(5, GridCols) := ls_DepName
                         Else
                         objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName;
                    End
                    Else
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName;
               end;
          end;
          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.HorizontalAlignment := xlRight;
          objRange.VerticalAlignment := xlBottom;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsString) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsString + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                              l := l + 1;
                         end;
                    end;
                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;

          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DataSet.RecordCount + 5, GridCols)].Value := Data;

     End
     Else If (DataSet = nil) AND (DBGRD <> Nil) Then
     begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DBGRD.Columns.Count - 1 do
          begin
               If DBGRD.Columns[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    objRange.cells(5, GridCols) := DBGRD.Columns[k].Title.Caption;
               end;
          end;

          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DBGRD.DataSource.DataSet.RecordCount, 1, DBGRD.Columns.Count+1], varVariant);
               // GridCols:=DBGRD.DataSource.DataSet.fields.Count;

               DBGRD.DataSource.DataSet.First;
               for i := 0 to DBGRD.DataSource.DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    lf_Total:=0;
                    For j := 0 to DBGRD.Columns.Count - 1 do
                    begin
                         If DBGRD.Columns[j].Visible then
                         begin

                              // Data[i + 1, l + 1] :=DBGRD.DataSource.DataSet.FieldByName(DBGRD.Columns[J].FieldName) .AsString;
                              Data[i + 1, l + 1] := DBGRD.Fields[j].Text;
                              if J >=2 then
                              lf_Total:=lf_Total+DBGRD.Fields[j].Value;
                              l := l + 1;
                         end;
                    end;
                    Data[i + 1, l + 2]:=lf_Total;
                    DBGRD.DataSource.DataSet.Next;
               end;
          Finally
               EnableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DBGRD.DataSource.DataSet.RecordCount + 5, DBGRD.Columns.Count+1)].Value := Data;
     End;

     IF SumStartFromCols > 0 Then
     Begin
          objRange.cells(i + 2, 1) := 'TOTAL : ';
          For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i + 2, k + 1) := '=SUM(' + ColsArr[k] + '6:' + ColsArr[k] + IntToStr(i + 5) + '';
          objRange := Sheet.Rows[i + 6];
          objRange.Font.Bold := True;
     End;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
end;




Procedure SendToExcelMultiQuerys2nd(DataSet:TDataSet; DataSet1:TDataSet;DataSet2:TDataSet;DataSet3:TDataSet;DataSet4:TDataSet;
                                ReportTitle1:String; ReportTitle2:String; ReportTitle3:String; ReportTitle4:String; ReportTitle5:String;
                                ReportDate:String; Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer);
var
  GridCols,FromRow,ToRow: Integer;
  objExcel, Sheet,objRange, Data: OLEVariant;
  i, j,k,l: Integer;
  FirstSumRow:Integer;
  SecondSumRow    : Integer;
  ThirdSumRow:Integer;
  ScrollEvents: TScrollEvents;
  const ColsArr:Array[0..39] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
                                      'V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN');
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
        IF Copy(ReportTitle1,0,10)='SALES BOOK' Then
        Begin
            objRange.cells(2,1):='MANIPAL TEACHING HOSPITAL';
        End;
        {*** Report Company Address ***}
        objRange.cells(3,1):=CompanyAddress;
        {*** Report Title ***}
        objRange.cells(4,1):=ReportTitle1;
        {*** Report Date ***}
        objRange.cells(5,1):='Date: '+ ReportDate;

     Except

     End;
     GridCols:=0;
     //Add the Column Headers
     For k := 0 to DataSet.Fields.Count - 1 do
     begin
          //If DataSet.Fields[k].Visible=True then
          //begin
               GridCols:=GridCols+1;
               objRange.cells(6,GridCols):=DataSet.Fields[K].DisplayName;
          //end;
     end;

     objRange:=objExcel.Range['A' + inttostr(6),  ColsArr[DataSet.Fields.Count-1]+ Inttostr(6)];
     objRange.Select;
     //objRange := Sheet.Rows[6];
     objRange.Borders.Color:=clBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;
     objRange.Font.Color := clblack;
     objRange.Interior.ColorIndex:=15;

     FromRow:=0;
     ToRow:=0;

     For J:=0 to NoOfQuery-1 do
     Begin
         IF J=1 Then
         Dataset:=DataSet1
         Else IF J=2 Then
         Dataset:=DataSet2
         Else IF j=3 Then
         Dataset:=DataSet3
         Else IF j=4 Then
         Dataset:=DataSet4;

         DisableDependencies(DataSet, ScrollEvents);
         Try
             // Prepare Data
             Data := VarArrayCreate([1, DataSet.RecordCount, 1,GridCols ], varVariant);
             DataSet.First;
             for i := 0 to DataSet.RecordCount - 1 do
             begin
                 l:=0;
                 For k := 0 to DataSet.Fields.Count- 1 do
                 begin
                     //If DataSet.Fields[k].Visible=True then
                     //begin
                          Data[i + 1, l + 1] := DataSet.Fields[k].AsString;
                          l:=l+1;
                     //end;
                 end;
                 DataSet.Next;
             end;
          Finally
             EnableDependencies(DataSet, ScrollEvents);
          End;


          IF (J=0) Then
          Begin
               FromRow:=7;
               ToRow:=DataSet.RecordCount+6;
               // Fill up the sheet
               Sheet.Range[RefToCell(FromRow, 1), RefToCell(ToRow,
                           GridCols)].Value := Data;

               FirstSumRow:=ToRow-4;
               objRange.cells(FirstSumRow,1):='TOTAL CASH SALES : ';

               For k:=4 to GridCols-1 do
                   objRange.cells(FirstSumRow,k+1):='=SUM('+ColsArr[k]+'7:'+ColsArr[k]+IntToStr(FirstSumRow+4)+'';

               IF NoOfQuery > 1 Then
                  objRange.cells(FirstSumRow+2,1):=ReportTitle2;
          End;

          IF J=1 Then
          Begin
               FromRow:=ToRow+4;
               ToRow:=ToRow+4+DataSet.recordcount-1;

               // Fill up the sheet
               Sheet.Range[RefToCell(FromRow, 1), RefToCell(ToRow,
                           GridCols)].Value := Data;

               SecondSumRow:=ToRow-4;
               objRange.cells(SecondSumRow,1):='TOTAL CREDIT SALES : ';
               For k:=4 To GridCols-1 do
                 IF Dataset.RecordCount > 0 Then
                    objRange.cells(SecondSumRow,k+1):='=SUM('+ColsArr[k]+IntToStr(FromRow)+':' +ColsArr[k]+IntToStr(SecondSumRow+4)+'';

               IF NoOfQuery > 2 Then
                objRange.cells(SecondSumRow+2,1):=ReportTitle3;
           End;

           IF J=2 Then
           Begin
               FromRow:=ToRow+4;
               ToRow:=ToRow+4+DataSet.recordcount-1;

               // Fill up the sheet
               Sheet.Range[RefToCell(FromRow, 1), RefToCell(ToRow,
                           GridCols)].Value := Data;

               ThirdSumRow:=ToRow-4;
               objRange.cells(ThirdSumRow,1):='TOTAL REFUND : ';
               For k:=4 To GridCols-1 do
                  IF Dataset.RecordCount > 0 Then
                     objRange.cells(ThirdSumRow,k+1):='=SUM('+ColsArr[k]+IntToStr(FromRow)+':' +ColsArr[k]+IntToStr(ThirdSumRow+4)+'';
           End;
     End;

     If j=1 then
     objRange.cells(FirstSumrow+2,1):='NET SALES : '
     Else If j=2 then
     objRange.cells(SecondSumRow+2,1):='NET SALES : '
     Else If j=3 then
     objRange.cells(ThirdSumRow+2,1):='NET SALES : ';

     For k:=4 To GridCols-1 do
     Begin
         IF (FirstSumRow > 0) and (SecondSumRow > 0) and (ThirdSumRow > 0) Then
         objRange.cells(ThirdSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(FirstSumRow+5)+'+'+ColsArr[k]+IntToStr(SecondSumRow+5)+'-'+ColsArr[k]+IntToStr(ThirdSumRow+5)+')'
         Else IF (FirstSumRow > 0) and (SecondSumRow > 0) and (ThirdSumRow = 0) Then
         objRange.cells(SecondSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(FirstSumRow+5)+'+'+ColsArr[k]+IntToStr(SecondSumRow+5)+')'
         Else IF (FirstSumRow > 0) and (SecondSumRow = 0) and (ThirdSumRow > 0) Then
         objRange.cells(FirstSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(FirstSumRow+5)+'-'+ColsArr[k]+IntToStr(ThirdSumRow+5)+')'
         Else IF (FirstSumRow = 0) and (SecondSumRow > 0) and (ThirdSumRow > 0) Then
         objRange.cells(ThirdSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(SecondSumRow+5)+'-'+ColsArr[k]+IntToStr(ThirdSumRow+5)+')'
         Else IF (FirstSumRow > 0) and (SecondSumRow = 0) and (ThirdSumRow = 0) Then
         objRange.cells(FirstSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(FirstSumRow+5)+')'
         Else IF (FirstSumRow = 0) and (SecondSumRow > 0) and (ThirdSumRow = 0) Then
         objRange.cells(SecondSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(SecondSumRow+5)+')'
         Else IF (FirstSumRow = 0) and (SecondSumRow = 0) and (ThirdSumRow > 0) Then
         objRange.cells(ThirdSumRow+2,K+1):='=SUM('+ColsArr[k]+IntToStr(ThirdSumRow+5)+')';
     End;

     objRange:=objExcel.Range['A' + inttostr(1),  ColsArr[GridCols-1]+ Inttostr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCell;
end;



Procedure SendToExcelsMultiQuery_UserColnDetail(DataSet: TDataSet; DataSet1: TDataSet; DataSet2: TDataSet; DataSet3: TDataSet; DataSet4: TDataSet; DataSet5,
          DataSet6, DataSet7, DataSet8, DataSet9, DataSet10: TDataSet;
          ReportTitle,ReportTitle1,ReportTitle2,ReportTitle3,ReportTitle4,ReportTitle5,ReportTitle6,ReportTitle7,ReportTitle8,ReportTitle9,ReportTitle10:String;
          ReportDate: String; Summary: String; Company: String; CompanyAddress: String; NoofQuery, SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l, x,NoofRows, SumStartPoint, SumEndPoint,SumEnd1st,SumEnd2nd: Integer;
     ScrollEvents: TScrollEvents;
const
     ColsArr: Array [0 .. 64] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     NoofRows:=6;
     SumStartPoint:=6;
     SumEndPoint:=0;
     For x:=0 to NoOfQuery-1 do
     Begin
         IF x=1 Then
         Begin
              Dataset:=DataSet1;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle1;
         End
         Else IF x=2 Then
         Begin
              Dataset:=DataSet2;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle2;
         End
         Else IF x=3 Then
         Begin
              Dataset:=DataSet3;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle3;
         End
         Else IF x=4 Then
         Begin
              Dataset:=DataSet4;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle4;
         End
         Else IF x=5 Then
         Begin
              Dataset:=DataSet5;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle5;
         End
         Else IF x=6 Then
         Begin
              Dataset:=DataSet6;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle6;
         End
         Else IF x=7 Then
         Begin
              Dataset:=DataSet7;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle7;
         End
         Else IF x=8 Then
         Begin
              Dataset:=DataSet8;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle8;
         End
         Else IF x=9 Then
         Begin
              Dataset:=DataSet9;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle9;
         End
         Else IF x=10 Then
         Begin
              Dataset:=DataSet10;
              objRange := objExcel.Range[ColsArr[0] + IntToStr(SumEndPoint+2), ColsArr[0] + IntToStr(SumEndPoint+2)];
              objRange.Select;
              objRange.Value:=ReportTitle10;
         End;

          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    if x=0 then
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName
                    Else
                    Begin
                         objRange := objExcel.Range[ColsArr[GridCols-1] + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
                         objRange.Select;
                         objRange.Value:=DataSet.Fields[k].DisplayName;
                    End;
                    //objRange.cells(i, GridCols) := DataSet.Fields[k].DisplayName;
                    //objRange.cells(SumEndPoint+3, GridCols) := DataSet.Fields[k].DisplayName;

               end;
          end;

          if x=0 then
          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)]
          Else
          objRange := objExcel.Range['A' + IntToStr(SumEndPoint+3), ColsArr[GridCols - 1] + IntToStr(SumEndPoint+3)];
          objRange.Select;
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsString) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsString + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                              l := l + 1;
                         end;
                    end;
                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;

          if x=0 then
          Begin
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+5;
               SumEnd1st:=SumEndPoint+1;
               SumStartPoint:=NoofRows;
               NoofRows:=DataSet.RecordCount;
          End
          Else
          Begin
               SumStartPoint:=SumEndPoint+4;
               SumEndPoint:=SumEndPoint+DataSet.RecordCount+3;
               SumEnd2nd:=SumEndPoint+1;
               NoofRows:=DataSet.RecordCount;
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(SumStartPoint, 1), RefToCell(SumEndPoint, GridCols)].Value := Data;
          IF SumStartFromCols > 0 Then
          Begin
               //if x=0 then
               objRange.cells(i + 2, 1) := 'TOTAL: ';
               //Else
               //objRange.cells(i+4, GridCols) :='Refund tolal';
               For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i +2, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               //objRange.cells(SumStartPoint, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
               objRange := Sheet.Rows[SumEndPoint+1];
               objRange.Font.Bold := True;

               if (ReportTitle1='Refund/Adjustment') and (x=1) then
               begin
                    objRange := Sheet.Rows[SumEndPoint+2];
                    objRange.Font.Bold := True;
               end;
          End;
     End;

     if ReportTitle1='Refund/Adjustment' then
     Begin
          objRange.cells(1, 1) := 'NET TOTAL: ';
          For k := SumStartFromCols to GridCols - 1 do
          objRange.cells(1, k + 1) := '='+ColsArr[k]+IntToStr(SumEnd1st)+'-'+ColsArr[k]+IntToStr(SumEnd2nd)+'';
     End;


     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;


     (*Sheet.Range[RefToCell(SumStartPoint, 1), RefToCell(SumEndPoint, GridCols)].Value := Data;
     objRange.cells(i + 2, 1) := Summary;
     objRange.Font.Bold := True;*)

     objRange.cells(SumEnd2nd + 1, 1) := Summary;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
end;

Procedure SendToExcelMasterMultiDetail(MasterDataSet:TDataSet; DetailDataSet:TOraQuery;DetailDataSet1:TOraQuery; ReportTitle:String; ReportDate:String;
        Summary:String; Company:String; CompanyAddress:String; ReportType:String; SumStartFromCols:Integer);
var
  Master_GridCols,Detail_gridCols,Detail_gridCols1,Cur_Row,From_Row,To_Row: Integer;
  objExcel, Sheet,objRange,ObjCellFormat, Data: OLEVariant;
  i, j,k,l: Integer;
  ScrollEvents: TScrollEvents;
  const ColsArr:Array[0..39] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
                                      'V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN');
  Procedure SetColumnHead(Row:Integer; DSet:TDataSet);
  var
     iLocal:Integer;
  Begin
       For iLocal := 0 to DSet.Fields.count - 1 do
          objRange.cells(Row,ILocal+1):=DSet.Fields[iLocal].DisplayName;

       objExcel.range['A'+inttostr(Row),ColsArr[DSet.Fields.count-1]+ Inttostr(Row)].Font.Size := 8;
       objExcel.range['A'+inttostr(Row),ColsArr[DSet.Fields.count-1]+ Inttostr(Row)].Font.Bold:=True;
       objExcel.range['A'+inttostr(Row),ColsArr[DSet.Fields.count-1]+ Inttostr(Row)].Borders.Color:=clBlack;
       objExcel.range['A'+inttostr(Row),ColsArr[DSet.Fields.count-1]+ Inttostr(Row)].Font.Color := clblack;
       objExcel.range['A'+inttostr(Row),ColsArr[DSet.Fields.count-1]+ Inttostr(Row)].Interior.ColorIndex:=15;
  End;
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
        {*** Report Company Address ***}
        objRange.cells(2,1):=CompanyAddress;
        {*** Report Title ***}
        objRange.cells(3,1):=ReportTitle;
        {*** Report Date ***}
        objRange.cells(4,1):='Date: '+ ReportDate;
     Except

     End;

     Try
         Cur_Row:=5;
         SetColumnHead(Cur_Row, MasterDataSet);
         DisableDependencies(MasterDataSet, ScrollEvents);
         IF Not MasterDataSet.Active=True Then MasterDataSet.Active:=True;
         MasterDataSet.First;
         While not MasterDataSet.Eof do
         begin
              //Display the Master's data
              Cur_Row:=Cur_Row+2;
              For I := 0 to MasterDataSet.Fields.count - 1 do
                 objRange.cells(Cur_Row,I+1):=MasterDataSet.Fields[I].AsString;

              objExcel.range['A'+inttostr(Cur_Row),ColsArr[MasterDataSet.Fields.count-1]+ Inttostr(Cur_Row)].Font.Bold:=True;
              DetailDataSet.Close;
              IF ReportType='DEPARTMENT' Then
              Begin
                   IF UpperCase(MasterDataSet.Fields[0].FieldName)='DEPID' Then
                   DetailDataSet.parambyname('DepId').asString:=MasterDataSet.Fields[0].AsString
                   Else
                   DetailDataSet.parambyname('DepName').asString:=MasterDataSet.Fields[0].AsString;
              End
              Else IF ReportType='TESTNAME' Then
              DetailDataSet.parambyname('TESTNAME').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='CATEGORY' Then
              DetailDataSet.parambyname('TNCategoryCode').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='REFUND' Then
              DetailDataSet.parambyname('BillNo').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='CREDIT' Then
              DetailDataSet.parambyname('SCHEMEID').AsFloat:=MasterDataSet.Fields[0].AsFloat
              Else IF ReportType='MEDICARELIST' Then
              DetailDataSet.parambyname('MemberId').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='FNRL' Then //MRD- File Not Received List
              DetailDataSet.parambyname('DepCode').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='SERVICE' Then //Department/Test wise Report .
              DetailDataSet.parambyname('SERVICE').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='OUTSTDREV' Then // Out Std. Reve
              DetailDataSet.parambyname('PatientTypeCode').Value:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='SCHEME' Then //Department/Test wise Report .
              Begin
                   DetailDataSet.Params[0].DataType:=ftInteger;
                   DetailDataSet.parambyname('SCHEMEID').AsInteger:=MasterDataSet.Fields[0].AsInteger;
              end
              Else IF ReportType='PAYTYPE' Then //Department/Test wise Report .
              Begin
                   DetailDataSet.parambyname('PayType').Value:=MasterDataSet.Fields[0].AsString;
                   //DetailDataSet.parambyname('PayType').AsAnsiString:=MasterDataSet.Fields[0].AsString;
              end
              Else IF ReportType='REFREPORT1' Then //Refund Detail
              DetailDataSet.sql[12]:=' and REDE_PayType='#39+MasterDataSet.Fields[0].AsString+#39
              Else IF ReportType='REFREPORT2' Then //Refund Detail
              DetailDataSet.sql[23]:=' Where PayType='#39+MasterDataSet.Fields[0].AsString+#39;
              DetailDataSet.Open;
              Cur_Row:=Cur_Row+1;
              From_Row:=Cur_Row;
              SetColumnHead(Cur_Row, DetailDataSet);
              Try
                 DisableDependencies(DetailDataSet, ScrollEvents);
                 // Prepare Data
                 Detail_gridCols:=DetailDataSet.Fields.Count;
                 Data := VarArrayCreate([1, DetailDataSet.RecordCount, 1,Detail_gridCols ], varVariant);
                 DetailDataSet.first;
                 For i := 0 to DetailDataSet.RecordCount - 1 do
                 begin
                      l:=0;
                      For j := 0 to DetailDataSet.Fields.Count- 1 do
                      begin
                           //If DetailDataSet.Fields[j].Visible=True then
                           //begin
                                Data[i + 1, l + 1] := DetailDataSet.Fields[j].AsString;
                                l:=l+1;
                           //end;
                       end;
                       DetailDataSet.Next;
                 end;

                  (*IF SumStartFromCols > 0 Then
                  Begin
                       //if x=0 then
                       objRange.cells(Cur_Row + 2, 1) := 'TOTAL: ';
                       //Else
                       //objRange.cells(i+4, GridCols) :='Refund tolal';
                       For k := SumStartFromCols to DetailDataSet.Fields.Count - 1 do
                       objRange.cells(Cur_Row +2, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(From_Row)+':' + ColsArr[k] + IntToStr(From_Row+DetailDataSet.RecordCount-1) + '';
                       //objRange.cells(SumStartPoint, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
                       objRange := Sheet.Rows[DetailDataSet.Fields.Count + 6];
                       objRange.Font.Bold := True;
                  End; *)
                 To_Row:=Cur_Row+DetailDataSet.RecordCount;
                 Cur_Row:=Cur_Row+i;
                 // Fill up the sheet
                 Sheet.Range[RefToCell(From_Row+1, 1), RefToCell(To_Row,
                            Detail_gridCols)].Value := Data;

              Finally
                 EnableDependencies(DetailDataSet, ScrollEvents);
              End;

              ////
              DetailDataSet1.Close;
              IF ReportType='DEPARTMENT' Then
              Begin
                   IF UpperCase(MasterDataSet.Fields[0].FieldName)='DEPID' Then
                   DetailDataSet1.parambyname('DepId').asString:=MasterDataSet.Fields[0].AsString
                   Else
                   DetailDataSet1.parambyname('DepName').asString:=MasterDataSet.Fields[0].AsString;
              End
              Else IF ReportType='TESTNAME' Then
              DetailDataSet1.parambyname('TESTNAME').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='CATEGORY' Then
              DetailDataSet1.parambyname('TNCategoryCode').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='REFUND' Then
              DetailDataSet1.parambyname('BillNo').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='CREDIT' Then
              DetailDataSet1.parambyname('SCHEMEID').AsFloat:=MasterDataSet.Fields[0].AsFloat
              Else IF ReportType='MEDICARELIST' Then
              DetailDataSet1.parambyname('MemberId').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='FNRL' Then //MRD- File Not Received List
              DetailDataSet1.parambyname('DepCode').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='SERVICE' Then //Department/Test wise Report .
              DetailDataSet1.parambyname('SERVICE').asString:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='OUTSTDREV' Then // Out Std. Reve
              DetailDataSet1.parambyname('PatientTypeCode').Value:=MasterDataSet.Fields[0].AsString
              Else IF ReportType='SCHEME' Then //Department/Test wise Report .
              Begin
                   DetailDataSet1.Params[0].DataType:=ftInteger;
                   DetailDataSet1.parambyname('SCHEMEID').AsInteger:=MasterDataSet.Fields[0].AsInteger;
              end
              Else IF ReportType='PAYTYPE' Then //Department/Test wise Report .
              Begin
                   DetailDataSet1.parambyname('PayType').Value:=MasterDataSet.Fields[0].AsString;
                   //DetailDataSet.parambyname('PayType').AsAnsiString:=MasterDataSet.Fields[0].AsString;
              end
              Else IF ReportType='REFREPORT1' Then //Refund Detail
              DetailDataSet1.sql[12]:=' and REDE_PayType='#39+MasterDataSet.Fields[0].AsString+#39
              Else IF ReportType='REFREPORT2' Then //Refund Detail
              DetailDataSet1.sql[23]:=' Where PayType='#39+MasterDataSet.Fields[0].AsString+#39;
              DetailDataSet1.Open;
              Cur_Row:=Cur_Row+1;
              From_Row:=Cur_Row;
              SetColumnHead(Cur_Row, DetailDataSet1);
              Try
                 DisableDependencies(DetailDataSet1, ScrollEvents);
                 // Prepare Data
                 Detail_gridCols1:=DetailDataSet1.Fields.Count;
                 Data := VarArrayCreate([1, DetailDataSet1.RecordCount, 1,Detail_gridCols1 ], varVariant);
                 DetailDataSet1.first;
                 For i := 0 to DetailDataSet1.RecordCount - 1 do
                 begin
                      l:=0;
                      For j := 0 to DetailDataSet1.Fields.Count- 1 do
                      begin
                           //If DetailDataSet.Fields[j].Visible=True then
                           //begin
                                Data[i + 1, l + 1] := DetailDataSet1.Fields[j].AsString;
                                l:=l+1;
                           //end;
                       end;
                       DetailDataSet1.Next;
                 end;

                  (*IF SumStartFromCols > 0 Then
                  Begin
                       //if x=0 then
                       objRange.cells(Cur_Row + 2, 1) := 'TOTAL: ';
                       //Else
                       //objRange.cells(i+4, GridCols) :='Refund tolal';
                       For k := SumStartFromCols to DetailDataSet.Fields.Count - 1 do
                       objRange.cells(Cur_Row +2, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(From_Row)+':' + ColsArr[k] + IntToStr(From_Row+DetailDataSet.RecordCount-1) + '';
                       //objRange.cells(SumStartPoint, k + 1) := '=SUM(' + ColsArr[k] + IntToStr(SumStartPoint)+':' + ColsArr[k] + IntToStr(SumEndPoint) + '';
                       objRange := Sheet.Rows[DetailDataSet.Fields.Count + 6];
                       objRange.Font.Bold := True;
                  End; *)
                 To_Row:=Cur_Row+DetailDataSet1.RecordCount;
                 Cur_Row:=Cur_Row+i;
                 // Fill up the sheet
                 Sheet.Range[RefToCell(From_Row+1, 1), RefToCell(To_Row,
                            Detail_gridCols1)].Value := Data;

              Finally
                 EnableDependencies(DetailDataSet1, ScrollEvents);
              End;
              ///

              MasterDataSet.Next;
         end;
     Finally
        EnableDependencies(MasterDataSet, ScrollEvents);
     End;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[Detail_gridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[Detail_gridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[Detail_gridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[Detail_gridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;

     (*objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];

     objRange:=objExcel.Range['A' + inttostr(1),  ColsArr[Detail_gridCols-1]+ Inttostr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=ClBlack;
     objRange.Font.Size:=12;
     objRange.Font.Bold:=True;


     objRange:=objExcel.Range['A' + inttostr(2),  ColsArr[Detail_gridCols-1]+ Inttostr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.Font.Bold:=True;*)
End;

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

Function GetDepName(DepCode : String):String;
Var
     Qry: TOraQuery;
begin
     Qry := TOraQuery.Create(nil);
     begin
           with Qry do
           begin
                close;
                Session:=DM_Hospital.db;
                sql.Clear;
                SQL.Add('Select InitCap(tena_testname)TestName From Manipal.hs_tena_testname Where tena_testnameCode='+#39+DepCode+#39);
                Open;
                Result:=FieldByName('TestName').AsString;
           end;
     end;
     Qry.free;
end;


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

Procedure SendToExcels(DataSet: TDataSet; DBGRD: TDBGrid; ReportTitle: String; ReportDate: String; Summary: String; Company: String;
     CompanyAddress: String; SumStartFromCols: Integer);
var
     GridCols: Integer;
     objExcel, Sheet, objRange, Data: OLEVariant;
     i, j, k, l: Integer;
     ScrollEvents: TScrollEvents;
const
     ColsArr: Array [0 .. 64] of String = ('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
          'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN',
          'AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ','BA','BB','BC','BD','BE','BF','BG','BH','BI','BJ','BK','BL','BM');
begin
     Try
          // Create Excel-OLE Object
          objExcel := CreateOleObject('Excel.Application');
          objExcel.Interactive := False; // Do Not allow the User to Interact with the Excel Application
          If objExcel.Visible = False Then
               objExcel.Visible := True;
          objExcel.WindowState := xlMaximized;

          // Add new Workbook
          objExcel.Workbooks.Add(xlWBatWorkSheet);
          Sheet := objExcel.Workbooks[1].WorkSheets[1];

          objRange := Sheet.Rows[1];

          { *** Report Company *** }
          objRange.cells(1, 1) := Company;
          objRange.Font.color := ClBlack;
          objRange.Font.Size := 12;
          objRange.Font.Bold := True;

          { *** Report Company Address *** }
          objRange.cells(2, 1) := CompanyAddress;

          { *** Report Title *** }
          objRange.cells(3, 1) := ReportTitle;

          { *** Report Date *** }
          objRange.cells(4, 1) := 'Date: ' + ReportDate;
     Except

     End;

     If (DataSet <> nil) AND (DBGRD = Nil) Then
     Begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               If DataSet.Fields[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    objRange.cells(5, GridCols) := DataSet.Fields[k].DisplayName;
               end;
          end;

          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DataSet.RecordCount, 1, GridCols], varVariant);
               DataSet.First;
               for i := 0 to DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DataSet.Fields.Count - 1 do
                    begin
                         If DataSet.Fields[j].Visible = True then
                         begin
                              If LowerCase(DataSet.Fields[j].AsString) = 'itemscode' Then
                                   Data[i + 1, l + 1] := Char(39) + DataSet.Fields[j].AsString + Char(39)
                              Else
                                   Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                              l := l + 1;
                         end;
                    end;
                    DataSet.Next;
               end;
          Finally
               EnableDependencies(DataSet, ScrollEvents);
          End;

          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DataSet.RecordCount + 5, GridCols)].Value := Data;

     End
     Else If (DataSet = nil) AND (DBGRD <> Nil) Then
     begin
          GridCols := 0;
          // Add the Column Headers
          For k := 0 to DBGRD.Columns.Count - 1 do
          begin
               If DBGRD.Columns[k].Visible = True then
               begin
                    GridCols := GridCols + 1;
                    objRange.cells(5, GridCols) := DBGRD.Columns[k].Title.Caption;
               end;
          end;

          objRange := objExcel.Range['A' + IntToStr(5), ColsArr[GridCols - 1] + IntToStr(5)];
          objRange.Select;
          // objRange := Sheet.Rows[5];
          objRange.Borders.color := ClBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.color := ClBlack;
          objRange.Interior.ColorIndex := 15;

          DisableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          Try
               // Prepare Data
               Data := VarArrayCreate([1, DBGRD.DataSource.DataSet.RecordCount, 1, DBGRD.Columns.Count], varVariant);
               // GridCols:=DBGRD.DataSource.DataSet.fields.Count;

               DBGRD.DataSource.DataSet.First;
               for i := 0 to DBGRD.DataSource.DataSet.RecordCount - 1 do
               begin
                    l := 0;
                    For j := 0 to DBGRD.Columns.Count - 1 do
                    begin
                         If DBGRD.Columns[j].Visible then
                         begin

                              // Data[i + 1, l + 1] :=DBGRD.DataSource.DataSet.FieldByName(DBGRD.Columns[J].FieldName) .AsString;
                              Data[i + 1, l + 1] := DBGRD.Fields[j].Text;
                              l := l + 1;
                         end;
                    end;
                    DBGRD.DataSource.DataSet.Next;
               end;
          Finally
               EnableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
          End;
          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(DBGRD.DataSource.DataSet.RecordCount + 5, DBGRD.Columns.Count)].Value := Data;
     End;

     IF SumStartFromCols > 0 Then
     Begin
          objRange.cells(i + 2, 1) := 'TOTAL : ';
          For k := SumStartFromCols to GridCols - 1 do
               objRange.cells(i + 2, k + 1) := '=SUM(' + ColsArr[k] + '6:' + ColsArr[k] + IntToStr(i + 5) + '';
          objRange := Sheet.Rows[i + 6];
          objRange.Font.Bold := True;
     End;

     objRange := objExcel.Range['A' + IntToStr(1), ColsArr[GridCols - 1] + IntToStr(1)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 12;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(2), ColsArr[GridCols - 1] + IntToStr(2)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(3), ColsArr[GridCols - 1] + IntToStr(3)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := Clred;
     objRange.Font.Size := 10;
     objRange.Font.Bold := True;

     objRange := objExcel.Range['A' + IntToStr(4), ColsArr[GridCols - 1] + IntToStr(4)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color := ClBlack;
     objRange.Font.Size := 8;
     objRange.Font.Bold := True;

     { objRange:=objExcel.Range['A' + inttostr(i+4),  ColsArr[GridCols-1]+ Inttostr(i+4)];
       objRange.Select;
       objRange.MergeCells := True;
       objRange.Font.color:=ClBlack;
       objRange.Font.Size:=8;
       objRange.Font.Bold:=True; }
     (* IF We Need Row Height and Column Width Keep Fixec*)
    // Sheet.Columns.ColumnWidth:=10;
     Sheet.Rows.RowHeight :=18;
     Sheet.Columns.AutoFit;
     (*-----------------*)

     //Sheet.Columns.AutoFit;
     objExcel.Interactive := True;



end;

Procedure SendToExcelsNew(DataSet:Array of TDataset; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
var
  TotalRec,GridCols: Integer;
  objExcel, Sheet,objRange, Data: OLEVariant;
  i, j,k,l,M,N: Integer;
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


     If (High(DataSet) > 0) AND (DBGRD = Nil) Then
     Begin
          GridCols:=0;
          //Add the Column Headers
          For k := 0 to DataSet[0].Fields.Count - 1 do
          begin
              If DataSet[0].Fields[k].Visible=True then
              begin
                   GridCols:=GridCols+1;
                   objRange.cells(5,GridCols):=DataSet[0].Fields[K].DisplayName;
              end;
          end;

          objRange:=objExcel.Range['A' + inttostr(5),  ColsArr[GridCols-1]+ Inttostr(5)];
          objRange.Select;
          objRange.Borders.Color:=clBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.Color := clblack;
          objRange.Interior.ColorIndex:=15;

          Try
               for m := 0 to Length(DataSet)-1 do
               begin
                    DisableDependencies(DataSet[m], ScrollEvents);
                    DisableDependencies(DataSet[m], ScrollEvents);
               end;

               TotalRec:=0;
               for m := 0 to Length(DataSet)-1 do
               begin
                    TotalRec:=TotalRec+DataSet[m].RecordCount;
               end;

               Data := VarArrayCreate([1, TotalRec, 1,GridCols ], varVariant);
               //Prepare Data
               N:=0;
               for m := 0 to Length(DataSet)-1 do
               begin
                    DataSet[m].First;
                    for i := 0 to DataSet[m].RecordCount - 1 do
                    begin
                         l:=0;
                         For j := 0 to DataSet[m].Fields.Count- 1 do
                         begin
                              If DataSet[m].Fields[j].Visible=True then
                              begin
                                   Data[N+i+ 1, l + 1] := DataSet[m].Fields[j].AsString;
                                   l:=l+1;
                              end;
                         end;
                    DataSet[m].Next;
                    end;
                    N:=i;
               end;
          Finally
               for m := 0 to Length(DataSet)-1 do
               begin
                     EnableDependencies(DataSet[m], ScrollEvents);
                     EnableDependencies(DataSet[m], ScrollEvents);
               end;
          End;

          // Fill up the sheet
          Sheet.Range[RefToCell(6, 1), RefToCell(TotalRec+5,GridCols)].Value := Data;

     End
     Else If (High(DataSet) = 0) AND (DBGRD <> Nil) Then
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
          Sheet.Range[RefToCell(6, 1), RefToCell(DBGRD.DataSource.DataSet.RecordCount+5,GridCols)].Value := Data;
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
end;

end.
