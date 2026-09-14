unit UnitSendToExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Grids, DBGrids,fxn,Variants,
  DBCtrls, Db, Excelxp, OleServer, OleCtrls, Dialogs, DBTables,ComObj;

type
    TScrollEvents = class
    BeforeScroll_Event: TDataSetNotifyEvent;
    AfterScroll_Event: TDataSetNotifyEvent;
    AutoCalcFields_Property: Boolean;
end;


Function GetDocName(DocCode:String):String;

Function GetDisplayLabel(RommTypeCode:String):String;
Function GetDisplayLabelTemp(ServiceName:String):String;
Function GetDisplayLabelService(ServiceName:String):String;

Function Get_XRayPlateName(TestNameCode:String):String;
Function Get_XRayFractionOnRate(TestNameCode:String):String;

procedure DisableDependencies(DataSet: TDataSet; var ScrollEvents: TScrollEvents);

procedure EnableDependencies(DataSet: TDataSet; ScrollEvents: TScrollEvents);

Procedure SendToExcels(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);

Procedure SendToExcels1(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer; ReportName:String);

Procedure SendToExcels_OMMonthOper(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);

Procedure SendToExcel(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String);

Procedure Send_To_Excel(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; AutoSum: Boolean);

Procedure SendToExcelMultiQuery(DataSet:TDataSet; DataSet1:TDataSet;DataSet2:TDataSet;DataSet3:TDataSet;DataSet4:TDataSet;
                                ReportTitle1:String; ReportTitle2:String; ReportTitle3:String; ReportTitle4:String; ReportTitle5:String;
                                ReportDate:String; Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer);

function RefToCell(ARow, ACol: Integer): string;

Procedure SendToExcelMasterDetail(MasterDataSet:TDataSet; DetailDataSet:TQuery; ReportTitle:String; ReportDate:String;
        Summary:String; Company:String; CompanyAddress:String; ReportType:String);

Procedure SendToMultiExcel(DataSet1, DataSet2, DataSet3, DataSet4:TDataSet;ReportTitle1, ReportTitle2, ReportTitle3, ReportTitle4 :String;
     ReportDate:String; Company:String; CompanyAddress:String);

Procedure SendToExcelsSpecial(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String;
Company:String; CompanyAddress,ReportFormat:String; SumStartFromCols:Integer);



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
end;



Procedure SendToExcels1(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer; ReportName:String);
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
                   IF ReportName='DocWise1' Then
                   objRange.cells(5,GridCols):=GetDisplayLabel(DataSet.Fields[K].DisplayName)
                   Else IF ReportName='DocWise2' Then
                   objRange.cells(5,GridCols):=GetDisplayLabelTemp(DataSet.Fields[K].DisplayName)
                   Else IF ReportName='DocWise3' Then
                   objRange.cells(5,GridCols):=GetDisplayLabelService(DataSet.Fields[K].DisplayName)
                   Else
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

     IF ReportName='DocWise3' Then
     objRange.cells(i+2,k):='Total :';

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

Procedure Send_To_Excel(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; AutoSum: Boolean);
var
    GridCols: Integer;
    objExcel, Sheet,objRange, Data: OLEVariant;
    i, j,k,l: Integer;
    Row, li_dataStartRow, li_dataEndRow: Integer;
    ScrollEvents: TScrollEvents;
    ls_StartCell, ls_EndCell: String;
    const ColsArr:Array[0..39] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
                                      'V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN');
begin
    try
        // Create Excel-OLE Object
        objExcel := CreateOleObject('Excel.Application');
        objExcel.Interactive := False;  //Do Not allow the User to Interact with the Excel Application
        If objExcel.Visible = False Then
            objExcel.Visible := True;
        objExcel.WindowState := xlMaximized;

        // Add new Workbook
        objExcel.Workbooks.Add(xlWBatWorkSheet);
        Sheet := objExcel.Workbooks[1].WorkSheets[1];

        Row:=1;
        {*** Report Company ***}
        objRange:=objExcel.Range['A' + inttostr(Row),  'D'+ Inttostr(Row)];
        objRange.Select;
        objRange.HorizontalAlignment := xlCenter;
        objRange.VerticalAlignment := xlBottom;
        objRange.MergeCells := True;
        objRange.Font.color:=ClBlack;
        objRange.Font.Size:=12;
        objRange.Font.Bold:=True;
        ObjRange.value:=Company;

        INC(Row);
        {*** Report Company Address ***}
        objRange:=objExcel.Range['A' + inttostr(Row),  'D'+ Inttostr(Row)];
        objRange.Select;
        objRange.HorizontalAlignment := xlCenter;
        objRange.VerticalAlignment := xlBottom;
        objRange.MergeCells := True;
        objRange.Font.color:=ClBlack;
        objRange.Font.Size:=8;
        objRange.Font.Bold:=True;
        ObjRange.value:=CompanyAddress;

        INC(Row);
        {*** Report Title ***}
        objRange:=objExcel.Range['A' + inttostr(Row),  'D'+ Inttostr(Row)];
        objRange.Select;
        objRange.HorizontalAlignment := xlCenter;
        objRange.VerticalAlignment := xlBottom;
        objRange.MergeCells := True;
        objRange.Font.color:=ClBlack;
        objRange.Font.Size:=10;
        objRange.Font.Bold:=True;
        ObjRange.value:=ReportTitle;

        INC(Row);
        {*** Report Date ***}
        objRange:=objExcel.Range['A' + inttostr(Row),  'D'+ Inttostr(Row)];
        objRange.Select;
        objRange.HorizontalAlignment := xlLeft;
        objRange.VerticalAlignment := xlBottom;
        objRange.MergeCells := True;
        objRange.Font.color:=ClBlack;
        objRange.Font.Size:=8;
        objRange.Font.Bold:=True;
        ObjRange.value:='Date : '+ ReportDate;

        If (DataSet <> nil) AND (DBGRD = Nil) Then
        Begin
            GridCols:=0;
            //Add the Column Headers
            INC(Row);
            objRange:=objExcel.Range['A' + inttostr(Row),  'A'+ Inttostr(Row)];
            For k := 0 to DataSet.Fields.Count - 1 do
            begin
                objRange.HorizontalAlignment := xlCenter;
                objRange.VerticalAlignment := xlBottom;
                objRange.Font.color:=ClBlack;
                objRange.Borders.color:=ClBlack;
                objRange.Interior.colorIndex:=15;
                objRange.Font.Size:=8;
                objRange.Font.Bold:=True;
                objRange.Value:=DataSet.Fields[K].DisplayName;

                ObjRange:=ObjRange.next;
            end;
            GridCols:=DataSet.Fields.count;

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
                        Data[i + 1, j + 1] := DataSet.Fields[j].AsString;
                        l:=l+1;
                    end;
                    DataSet.Next;
                end;
            Finally
                EnableDependencies(DataSet, ScrollEvents);
            End;
            //********** Fill Up the Sheet
            INC(Row);
            li_dataStartRow:=Row;
            li_dataEndRow:=DataSet.RecordCount + li_dataStartRow - 1;

            ls_StartCell:=RefToCell(Row, 1);
            ls_EndCell:=RefToCell(li_dataEndRow, GridCols);

            Sheet.Range[ls_StartCell, ls_EndCell].Value := Data;

            ObjRange:=Sheet.Range[RefToCell(Row, 1), RefToCell(li_dataEndRow, GridCols)];
            ObjRange.font.size:=8;
            ObjRange.Borders.Color:=clBlack;

            //************** Summation
            if AutoSum then
            begin
                Row:=li_dataEndRow + 1;
                ObjRange:=ObjExcel.Range['B'+ IntToStr(Row), 'B'+ IntToStr(Row)];
                For k:=1 to GridCols - 1 do
                begin
                    if Dataset.fields[K].Alignment = taRightJustify then
                    begin
                        ObjRange.Font.Size:=8;
                        ObjRange.Font.Bold:=True;

                        objRange.value:='=SUM('+RefToCell(li_dataStartRow, k+1)+':'+RefToCell(li_dataEndRow, k+1)+')';
                    end;

                    ObjRange:=ObjRange.Next;
                end;

                {*** Report Summary String ***}
                objRange:=objExcel.Range['A' + inttostr(Row),  'A'+ Inttostr(Row)];
                objRange.HorizontalAlignment := xlRight;
                objRange.VerticalAlignment := xlBottom;
                objRange.Font.Size:=8;
                objRange.Font.Bold:=True;
                ObjRange.value:=Summary;
            end;

            For k:=1 to GridCols - 1 do
            begin
                if Dataset.Fields[k].Alignment = taRightJustify then
                begin
                    //************** Format the value
                    ObjRange:=Sheet.Columns[k+1];
                    ObjRange.NumberFormat:='#,##0.00';
                end;
            end;
        End
        Else If (DataSet =nil) AND (DBGRD <> Nil) Then
        begin
            //Add the Column Headers
            INC(Row);
            objRange:=objExcel.Range['A' + inttostr(Row),  'A'+ Inttostr(Row)];
            For k := 0 to DBGRD.Columns.Count - 1 do
            begin
                objRange.HorizontalAlignment := xlCenter;
                objRange.VerticalAlignment := xlBottom;
                objRange.Font.color:=ClBlack;
                objRange.Borders.color:=ClBlack;
                objRange.Interior.colorIndex:=15;
                objRange.Font.Size:=8;
                objRange.Font.Bold:=True;
                objRange.Value:=DBGRD.Columns[k].Title.Caption;

                ObjRange:=ObjRange.next;
            end;
            GridCols:=DBGRD.Columns.Count;

            DisableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
            Try
                // Prepare Data
                Data := VarArrayCreate([1, DBGRD.DataSource.DataSet.RecordCount, 1, GridCols], varVariant);

                DBGRD.DataSource.DataSet.First;
                for i := 0 to DBGRD.DataSource.DataSet.RecordCount - 1 do
                begin
                    For j := 0 to  DBGRD.Columns.Count- 1 do
                    Begin
                        Try
                            Data[i + 1, j + 1] := DBGRD.Fields[j].text;
                        Except

                        End;
                    End;
                    DBGRD.DataSource.DataSet.Next;
                end;
            Finally
                EnableDependencies(DBGRD.DataSource.DataSet, ScrollEvents);
            End;
            // Fill up the sheet
            INC(Row);
            li_dataStartRow:=Row;
            li_dataEndRow:=DBGRD.DataSource.DataSet.RecordCount + li_dataStartRow - 1;

            ls_StartCell:=RefToCell(Row, 1);
            ls_EndCell:=RefToCell(li_dataEndRow, GridCols);

            Sheet.Range[ls_StartCell, ls_EndCell].Value := Data;

            ObjRange:=Sheet.Range[RefToCell(Row, 1), RefToCell(li_dataEndRow, GridCols)];
            ObjRange.font.size:=8;
            ObjRange.Borders.Color:=clBlack;


            if AutoSum then
            begin
                Row:=li_dataEndRow + 1;
                ObjRange:=ObjExcel.Range['B'+ IntToStr(Row), 'B'+ IntToStr(Row)];
                For k:=1 to GridCols - 1 do
                begin
                    if DBGRD.Columns[k].Alignment = taRightJustify then
                    begin
                        ObjRange.Font.Size:=8;
                        ObjRange.Font.Bold:=True;

                        objRange.value:='=SUM('+RefToCell(li_dataStartRow, k+1)+':'+RefToCell(li_dataEndRow, k+1)+')';
                    end;

                    ObjRange:=ObjRange.Next;
                end;

                {*** Report Summary String ***}
                objRange:=objExcel.Range['A' + inttostr(Row),  'A'+ Inttostr(Row)];
                objRange.HorizontalAlignment := xlRight;
                objRange.VerticalAlignment := xlBottom;
                objRange.Font.Size:=8;
                objRange.Font.Bold:=True;
                ObjRange.value:=Summary;
            end;

            For k:=1 to GridCols - 1 do
            begin
                if DBGRD.Columns[k].Alignment = taRightJustify then
                begin
                    //************** Format the value
                    ObjRange:=Sheet.Columns[k+1];
                    ObjRange.NumberFormat:='#,##0.00';
                end;
            end;
        end;//DBGrid
    finally
        //***************** Enable the sheet
        Sheet.Columns.AutoFit;
        Sheet.Rows.AutoFit;
        objExcel.Interactive := true;
    end;
end;



Procedure SendToExcel(DataSet:TDataSet;DBGRD:TDBGrid;ReportTitle:String; ReportDate:String;
Summary:String; Company:String; CompanyAddress:String);
var
RangeE          : Excelxp.range;
I,Row,k         : Integer;
Bookmark        : TBookmarkStr;
a1b             : TOleControl;
abcd            : TExcelApplication;
FixedRow        : Integer;
GridCols        : Integer;
TotCols         : Integer;
const ColsArr:Array[0..39] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U',
                                      'V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN');
Begin
   FixedRow:=6;  //First row of Report;
   abcd := TExcelApplication.Create(abcd);

   If (DataSet <> nil) AND (DBGRD = Nil) Then
   Begin
      abcd.visible[0]:=True;
      abcd.Workbooks.add(Null,0);
      RangeE:=abcd.ActiveCell;
      DataSet.Open;
      GridCols:=DataSet.Fields.Count-1;

      Row:=1;
      {*** Report Company ***}
      RangeE.Value:=Company;
      RangeE.Font.color:=ClBlack;
      RangeE.Font.Size:=12;
      RangeE.Font.Bold:=True;

      Row:=Row+1;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      {*** Report Company Address ***}
      RangeE.Value:=CompanyAddress;
      RangeE.Font.color:=ClBlack;
      RangeE.Font.Size:=12;//8;
      RangeE.Font.Bold:=False;

      Row:=Row+2;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      {*** Report Title ***}
      RangeE.Value:=ReportTitle;
      RangeE.Font.color:=ClRed;
      RangeE.Font.Size:=12;//10;
      RangeE.Font.Bold:=True;


      {*** Report Date ***}
      Row:=FixedRow-1;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      RangeE.Value:='Date: '+ ReportDate;
      RangeE.Font.Size:=12;//8;

      Row:=FixedRow;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      For I := 0 to Dataset.Fields.count - 1 do
      Begin
          RangeE.Borders.Color:=clBlack;
          RangeE.Font.Size:=8;//8;
          RangeE.Font.Bold:=True;
          RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
          RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
          RangeE.Value := DataSet.Fields[I].DisplayName;
          RangeE:=RangeE.Next;
      End;
      DataSet.DisableControls;
      Try
          Bookmark:=DataSet.Bookmark;
          Try
              DataSet.First;
              Row := FixedRow+1;
              While not DataSet.Eof do
              begin
                  RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                  for I := 0 to DataSet.Fields.count - 1 do
                  Begin
                      RangeE.Borders.Color:=clBlack;
                      RangeE.Font.Size:=9;//8;
                      IF Pos('.',DataSet.Fields[I].AsString) > 0 Then
                      RangeE.Cells.NumberFormat:='0.00';
                      RangeE.Value :=DataSet.Fields[I].AsString;
                      RangeE:=RangeE.Next;
                  End;
                  DataSet.Next;
                  Inc(Row);
              End;
              {*** Summary Detail *****}
              Row:=Row+1;
              RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
              RangeE.Value:='Summary: '+ Summary;
              RangeE.Font.Size:=8;//7;
              RangeE.ColumnWidth:=3;

              RangeE:=abcd.Range['A1','D1'];
              RangeE.Columns.AutoFit;
              {*** Summary Detail *****}

              //*** Auto Fit for evey column
              RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
              For I := 1 to DataSet.Fields.count - 1 do
              Begin
                  RangeE.EntireColumn.AutoFit;
                  RangeE:=RangeE.Next;
              End;

          Finally
              DataSet.Bookmark := Bookmark;
          End;
      Finally
          DataSet.enablecontrols;
      End;

      RangeE:=abcd.Range['A' + inttostr(Row-1),  'A' + Inttostr(Row-1)];
      RangeE.Value:='Total : ';
      RangeE.Font.Bold:=True;

      For k:=4 to GridCols do
      Begin
         RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row-1),  ColsArr[k]+ Inttostr(Row-1)];
         RangeE.Cells.NumberFormat:='#,#00.00';
         RangeE.Value:='=SUM('+ColsArr[k]+'7:'+ColsArr[k]+IntToStr(Row-2)+'';
         RangeE.Font.Bold:=True;
         RangeE.Font.Size:=8;
      End;

      {Row:=Row+2;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      RangeE.Value:=ReportTitle2; //'Credit Bill:';
      RangeE.Font.Bold:=True;
      RangeE.Font.Size:=12;//7;
      RangeE.ColumnWidth:=3;
      Row:=Row+1;
      PosSecondRow:=Row;}

      RangeE:=abcd.Range['A' + inttostr(1),  ColsArr[GridCols]+ Inttostr(1)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(2),  ColsArr[GridCols]+ Inttostr(2)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(3),  ColsArr[GridCols]+ Inttostr(3)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(4),  ColsArr[GridCols]+ Inttostr(4)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(5),  ColsArr[GridCols]+ Inttostr(5)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;
   End Else If (DataSet = Nil) AND (DBGRD <> Nil) Then
   Begin
       abcd.visible[0]:=True;
       abcd.Workbooks.add(Null,0);
       RangeE:=abcd.ActiveCell;
       GridCols:=DBGRD.Columns.Count-1;
       Row:=1;

       {*** Report Company ***}
       RangeE.Value:=Company;
       RangeE.Font.color:=ClBlack;
       RangeE.Font.Size:=12;
       RangeE.Font.Bold:=True;

       // **** tO merge columns
       RangeE:=abcd.Range['A' + inttostr(Row),  'E' + Inttostr(Row)];
       RangeE.Select;
       With abcd.ActiveCell do
       begin
           HorizontalAlignment := xlCenter;
           VerticalAlignment := xlBottom;
           WrapText := False;
           Orientation := 0;
           AddIndent := False;
           ShrinkToFit := False;
           MergeCells := True;
       End;
       //***** Marge Columns *******

       Row:=Row+1;
       RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
       {*** Report Company Address ***}
       RangeE.Value:=CompanyAddress;
       RangeE.Font.color:=ClBlack;
       RangeE.Font.Size:=12;//8;
       RangeE.Font.Bold:=False;

       Row:=Row+2;
       RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
       {*** Report Title ***}
       RangeE.Value:=ReportTitle;
       RangeE.Font.color:=ClRed;
       RangeE.Font.Size:=12;//10;
       RangeE.Font.Bold:=True;

       Row:=FixedRow-1;
       RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
       RangeE.Value:='Date:'+ReportDate;
       RangeE.Font.Size:=8;

       RangeE:=abcd.Range['A1','D1'];
       RangeE.Select;

       Row:=FixedRow;
       RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
       For I := 0 to DBGRD.Columns.count - 1 do
       Begin
           RangeE.Value := DBGRD.Columns[I].Title.Caption;
                        RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Bold:=True;
                        RangeE.Font.Size:=8;
                        RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
                        RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
           RangeE:=RangeE.Next;
       End;
       Try
           Bookmark:=DBGRD.Datasource.DataSet.Bookmark;
           Try
               DBGRD.Datasource.DataSet.First;
               Row := FixedRow+1;
               While not  DBGRD.Datasource.DataSet.Eof do
               begin
                   RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                   for I := 0 to DBGRD.Columns.count - 1 do
                   Begin
                       RangeE.Borders.Color:=clBlack;
                       RangeE.Font.Size:=9;//8;
                       RangeE.Value :=DBGRD.Fields[i].Text;
                       RangeE:=RangeE.Next;
                   End;
                   DBGRD.Datasource.dataset.Next;  //actually .Next
                   Inc(Row);
               End;
               {*** Summary Detail *****}
               Row:=Row+1;
               RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
               RangeE.Value:='Summary: '+ Summary;
               RangeE.Font.Size:=8;//7;
               RangeE.ColumnWidth:=3;
               {*** Summary Detail *****}

               //*** Auto Fit for evey column
               RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
               For I := 1 to DBGRD.Columns.count - 1 do
               Begin
                   RangeE.EntireColumn.AutoFit;
                   RangeE:=RangeE.Next;
               End;
           Finally
               DBGRD.Datasource.DataSet.bookmark:= Bookmark; //comment
           End;
       Finally
           //  DataSet.enablecontrols;
       End;
       RangeE:=abcd.Range['A' + inttostr(1),  ColsArr[GridCols]+ Inttostr(1)];
       RangeE.Select;
       RangeE.HorizontalAlignment := xlCenter;
       RangeE.VerticalAlignment := xlBottom;
       RangeE.MergeCells := True;

       RangeE:=abcd.Range['A' + inttostr(2),  ColsArr[GridCols]+ Inttostr(2)];
       RangeE.Select;
       RangeE.HorizontalAlignment := xlCenter;
       RangeE.VerticalAlignment := xlBottom;
       RangeE.MergeCells := True;

       RangeE:=abcd.Range['A' + inttostr(3),  ColsArr[GridCols]+ Inttostr(3)];
       RangeE.Select;
       RangeE.HorizontalAlignment := xlCenter;
       RangeE.VerticalAlignment := xlBottom;
       RangeE.MergeCells := True;

       RangeE:=abcd.Range['A' + inttostr(4),  ColsArr[GridCols]+ Inttostr(4)];
       RangeE.Select;
       RangeE.HorizontalAlignment := xlCenter;
       RangeE.VerticalAlignment := xlBottom;
       RangeE.MergeCells := True;

       RangeE:=abcd.Range['A' + inttostr(5),  ColsArr[GridCols]+ Inttostr(5)];
       RangeE.Select;
       RangeE.HorizontalAlignment := xlCenter;
       RangeE.VerticalAlignment := xlBottom;
       RangeE.MergeCells := True;

   End Else ShowMessage('Dataset not found.');
   abcd.Free;
End;


Procedure SendToExcelMultiQuery(DataSet:TDataSet; DataSet1:TDataSet;DataSet2:TDataSet;DataSet3:TDataSet;DataSet4:TDataSet;
                                ReportTitle1:String; ReportTitle2:String; ReportTitle3:String; ReportTitle4:String; ReportTitle5:String;
                                ReportDate:String; Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer);
var
RangeE          : Excel97.range;
I,Row,J,k       : Integer;
Bookmark        : TBookmarkStr;
a1b             : TOleControl;
abcd            : TExcelApplication;
FixedRow        : Integer;
GridCols        : Integer;
TotCols         : Integer;
NumQuery        : Integer;
PosSecondRow    : Integer;



const ColsArr:Array[0..29] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T',
                                       'U','V','W','X','Y','Z','AA','AB','AC','AD');
Begin
   FixedRow:=6;  //First row of Report;
   abcd := TExcelApplication.Create(abcd);

   If (DataSet <> nil)  Then
   Begin
      abcd.visible[0]:=True;
      //ExcelApplication1.Workbooks.add(Null,0);
      abcd.Workbooks.add(Null,0);
      RangeE:=abcd.ActiveCell;
      GridCols:=DataSet.Fields.Count-1;

      Row:=1;
      {*** Report Company ***}
      RangeE.Value:=Company;
      RangeE.Font.color:=ClBlack;
      RangeE.Font.Size:=12;
      RangeE.Font.Bold:=True;

      Row:=Row+1;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      {*** Report Company Address ***}
      RangeE.Value:=CompanyAddress;
      RangeE.Font.color:=ClBlack;
      RangeE.Font.Size:=12;//8;
      RangeE.Font.Bold:=False;

      Row:=Row+2;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      {*** Report Title ***}
      RangeE.Value:=ReportTitle1;
      RangeE.Font.color:=ClRed;
      RangeE.Font.Size:=12;//10;
      RangeE.Font.Bold:=True;


      {*** Report Date ***}
      Row:=FixedRow-1;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      RangeE.Value:='Date: '+ ReportDate;
      RangeE.Font.Size:=12;//8;
      //RangeE.NumberFormat:=

      Row:=FixedRow;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];

      For I := 0 to Dataset.Fields.count - 1 do
      Begin
         RangeE.Borders.Color:=clBlack;
         RangeE.Font.Size:=10;//8;
         RangeE.Font.Bold:=True;
         RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
         RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
         RangeE.Value := DataSet.Fields[I].DisplayName;
         RangeE:=RangeE.Next;
      End;

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

         DataSet.DisableControls;
         Try
             Bookmark:=DataSet.Bookmark;
             Try
                 DataSet.First;
                 IF J=0 Then
                 Row := FixedRow+1;
                 While not DataSet.Eof do
                 begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to DataSet.Fields.count - 1 do
                    Begin
                       RangeE.Borders.Color:=clBlack;
                       RangeE.Font.Size:=10;//12;//8;
                       IF Pos('.',DataSet.Fields[I].AsString) > 0 Then
                       RangeE.Cells.NumberFormat:='0.00';
                       RangeE.Value :=DataSet.Fields[I].AsString;
                       RangeE:=RangeE.Next;
                    End;
                    DataSet.Next;
                    Inc(Row);
                 End;
                 RangeE:=abcd.Range['A1','D1'];
                 RangeE.Columns.AutoFit;
                 {*** Summary Detail *****}

                 //*** Auto Fit for evey column
                 RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                 For I := 1 to DataSet.Fields.count  do
                 Begin
                    RangeE.EntireColumn.AutoFit;
                    RangeE:=RangeE.Next;
                 End;
             Finally
                 DataSet.Bookmark := Bookmark;
             End;
         Finally
             DataSet.enablecontrols;
         End;

         //Inc(Row);
         RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
         IF (J=0) Then
         Begin
            RangeE.Value:='Total Collection : ';

            For k:=4 to GridCols do
            Begin
               RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
               RangeE.Value:='=SUM('+ColsArr[k]+'7:'+ColsArr[k]+IntToStr(Row-1)+'';
            End;

            Row:=Row+2;
            RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
            RangeE.Value:=ReportTitle2; //'Credit Bill:';
            RangeE.Font.Bold:=True;
            RangeE.Font.Size:=12;//7;
            RangeE.ColumnWidth:=3;
            Row:=Row+1;
            PosSecondRow:=Row;
         End;

         IF J=1 Then
         Begin
            RangeE.Value:='Total Collection : ';
            For k:=4 To GridCols do
            Begin
               IF Dataset.RecordCount > 0 Then
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='=SUM('+ColsArr[k]+IntToStr(PosSecondRow)+':'+ColsArr[k]+IntToStr(Row-1)+'';
               End
               Else
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='0';
               End;
            End;

            IF NoOfQuery > 2 Then
            Begin
               Row:=Row+2;
               RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
               RangeE.Value:=ReportTitle3;//'Refund Bill';
               RangeE.Font.Bold:=True;
               RangeE.Font.Size:=12;//7;
               Row:=Row+1;
               PosSecondRow:=Row;
            End;
         End;

         IF J=2 Then
         Begin
            RangeE.Value:='Total Collection : ';
            For k:=4 To GridCols do
            Begin
               IF Dataset.RecordCount > 0 Then
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='=SUM('+ColsArr[k]+IntToStr(PosSecondRow)+':'+ColsArr[k]+IntToStr(Row-1)+'';
               End
               Else
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='0';
               End;
            End;

            IF NoOfQuery > 2 Then
            Begin
               Row:=Row+2;
               RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
               RangeE.Value:=ReportTitle4;//'Refund Bill';
               RangeE.Font.Bold:=True;
               RangeE.Font.Size:=12;//7;
               Row:=Row+1;
               PosSecondRow:=Row;
            End;
         End;

         IF J=3 Then
         Begin
            RangeE.Value:='Total Collection : ';
            For k:=4 To GridCols do
            Begin
               IF Dataset.RecordCount > 0 Then
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='=SUM('+ColsArr[k]+IntToStr(PosSecondRow)+':'+ColsArr[k]+IntToStr(Row-1)+'';
               End
               Else
               Begin
                  RangeE:=abcd.Range[ColsArr[k]+ inttostr(Row),  ColsArr[k]+ Inttostr(Row)];
                  RangeE.Value:='0';
               End;
            End;
         End;
      End;
      RangeE:=abcd.Range['A' + inttostr(1),  ColsArr[GridCols]+ Inttostr(1)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(2),  ColsArr[GridCols]+ Inttostr(2)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(3),  ColsArr[GridCols]+ Inttostr(3)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(4),  ColsArr[GridCols]+ Inttostr(4)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

      RangeE:=abcd.Range['A' + inttostr(5),  ColsArr[GridCols]+ Inttostr(5)];
      RangeE.Select;
      RangeE.HorizontalAlignment := xlCenter;
      RangeE.VerticalAlignment := xlBottom;
      RangeE.MergeCells := True;

   End Else ShowMessage('Dataset not found.');
   abcd.Free;
End;


Procedure SendToExcelMasterDetail(MasterDataSet:TDataSet; DetailDataSet:TQuery; ReportTitle:String; ReportDate:String;
        Summary:String; Company:String; CompanyAddress:String; ReportType:String);
var
    RangeE          : Excel97.range;
    I,Row           : Integer;
    Bookmark        : TBookmarkStr;
    DetBookmark        : TBookmarkStr;
    a1b             : TOleControl;
    abcd            : TExcelApplication;
    Apos,FixedRow   : Integer;
    sData           : String;
    NoOfCols        : integer;
    const ColsArr:Array[0..29] of String=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','AA','AB','AC','AD');

    Procedure SetColumnHead(Row:Integer; DSet:TDataSet);
    var
        iLocal:Integer;
    Begin
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        For iLocal := 0 to DSet.Fields.count - 1 do
        Begin
            RangeE.Borders.Color:=clBlack;
            RangeE.Font.Size:=8;
            RangeE.Font.Bold:=True;
            RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
            RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
            RangeE.Value := DSet.Fields[iLocal].DisplayName;
            RangeE:=RangeE.Next;
        End;
    End;
Begin
    FixedRow:=5;  //First row of Report;
    abcd := TExcelApplication.Create(abcd);

        abcd.visible[0]:=True;  // for query as dataset
        //ExcelApplication1.Workbooks.add(Null,0);
        abcd.Workbooks.add(Null,0);
        RangeE:=abcd.ActiveCell;

        NoOfCols:=DetailDataSet.Fields.Count;

        Row:= 1;
        {*** Report Company ***}
        RangeE.Value:=Company;
        RangeE.Font.color:=ClBlack;

        RangeE:=abcd.Range['A' + inttostr(Row),  ColsArr[NoOfCols]+ Inttostr(Row)];
        RangeE.Select;
        RangeE.Font.Size:=12;
        RangeE.Font.Bold:=True;
        RangeE.HorizontalAlignment := xlCenter;
        RangeE.VerticalAlignment := xlBottom;
        RangeE.MergeCells := True;

        Row:=Row+1;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Company Address ***}
        RangeE.Value:=CompanyAddress;

        RangeE:=abcd.Range['A' + inttostr(Row),  ColsArr[NoOfCols]+ Inttostr(Row)];
        RangeE.Select;
        RangeE.Font.color:=ClBlack;
        RangeE.Font.Size:=9;
        RangeE.Font.Bold:=False;
        RangeE.HorizontalAlignment := xlCenter;
        RangeE.VerticalAlignment := xlBottom;
        RangeE.MergeCells := True;


        Row:=Row+1;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Title ***}
        RangeE.Value:=ReportTitle;

        RangeE:=abcd.Range['A' + inttostr(Row),  ColsArr[NoOfCols]+ Inttostr(Row)];
        RangeE.Select;
        RangeE.Font.color:=ClRed;
        RangeE.Font.Size:=10;
        RangeE.Font.Bold:=True;
        RangeE.HorizontalAlignment := xlCenter;
        RangeE.VerticalAlignment := xlBottom;
        RangeE.MergeCells := True;




        {*** Report Date ***}
        Row:=Row+1;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        RangeE.Value:='Date: '+ ReportDate;

        RangeE:=abcd.Range['A' + inttostr(Row),  ColsArr[NoOfCols]+ Inttostr(Row)];
        RangeE.Select;
        RangeE.Font.Size:=9;
        RangeE.Font.Bold:=True;
        RangeE.HorizontalAlignment := xlCenter;
        RangeE.VerticalAlignment := xlBottom;
        RangeE.MergeCells := True;


        Row:=FixedRow;
        SetColumnHead(Row, MasterDataSet);

        MasterDataSet.DisableControls;
        Try
            Bookmark:=MasterDataSet.Bookmark;
            Try
                MasterDataSet.First;
                Row := FixedRow+1;
                While not MasterDataSet.Eof do
                begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to MasterDataSet.Fields.count - 1 do
                    Begin
                        //RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Size:=8;
                        If MasterDataSet.Fields[I].Value=Null Then sData:=' '
                        Else sData:=MasterDataSet.Fields[I].Value;
                        //If Pos('.',sData)>0 Then
                            //if  MasterDataSet.Fields[I].DataType = ftFloat Then
                            //    RangeE.Cells.NumberFormat:='#,#00.00';
                        RangeE.Value :=MasterDataSet.Fields[I].AsString;
                        RangeE.Font.Bold:=True;
                        RangeE:=RangeE.Next;
                    End;
                    {   show the detail query's     }
                    Inc(Row);
                    DetailDataSet.Close;
                    IF ReportType='DEPARTMENT' Then
                    DetailDataSet.parambyname('DepId').asString:=MasterDataSet.Fields[0].AsString
                    Else IF ReportType='DOCWISEOPDREV' Then
                    DetailDataSet.parambyname('DocName').asString:=MasterDataSet.Fields[0].AsString
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
                    DetailDataSet.parambyname('SERVICE').asString:=MasterDataSet.Fields[0].AsString;
                    DetailDataSet.Open;
                    SetColumnHead(Row, DetailDataSet);
                    DetBookmark:=DetailDataSet.Bookmark;
                    Try
                        //DetailDataSet.First;
                        Inc(Row);
                        While not DetailDataSet.Eof do
                        begin
                            RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                            for I := 0 to DetailDataSet.Fields.count - 1 do
                            Begin
                                //RangeE.Borders.Color:=clBlack;
                                RangeE.Font.Size:=9;
                                If DetailDataSet.Fields[I].Value=Null Then sData:=' '
                                Else sData:=DetailDataSet.Fields[I].Value;
                                //If Pos('.',sData)>0 Then
                                //    if  DetailDataSet.Fields[I].DataType = ftFloat Then
                                //        RangeE.Cells.NumberFormat:='#,#00.00';
                                RangeE.Value :=DetailDataSet.Fields[I].AsString;
                                RangeE:=RangeE.Next;
                            End;
                            DetailDataSet.Next;
                            Inc(Row);
                        End;
                        RangeE:=abcd.Range['A1','D1'];
                        RangeE.Columns.AutoFit;
                    Finally
                        DetailDataSet.Bookmark := DetBookmark;
                    End;
                    MasterDataSet.Next;
                    Inc(Row);
                End;

                RangeE:=abcd.Range['A1','D1'];
                RangeE.Columns.AutoFit;
            Finally
                MasterDataSet.Bookmark := Bookmark;
            End;
        Finally
            MasterDataSet.enablecontrols;
        End;
    abcd.Free;
End;


Procedure SendToMultiExcel(DataSet1, DataSet2, DataSet3, DataSet4:TDataSet;ReportTitle1, ReportTitle2, ReportTitle3, ReportTitle4 :String;
     ReportDate:String; Company:String; CompanyAddress:String);
var
    RangeE          : Excel97.range;
    I,Row           : Integer;
    Bookmark        : TBookmarkStr;
    a1b             : TOleControl;
    abcd            : TExcelApplication;
    FixedRow        : Integer;
    sData           : String;
Begin       // send multi query to excel
    FixedRow:=7;
    abcd := TExcelApplication.Create(abcd);

    If (DataSet1 <> nil) Then
    Begin
        abcd.visible[0]:=True;  // for query as dataset
        //ExcelApplication1.Workbooks.add(Null,0);
        abcd.Workbooks.add(Null,0);
        RangeE:=abcd.ActiveCell;

        Row:= 1;
        {*** Report Company ***}
        RangeE.Value:=Company;
        RangeE.Font.color:=ClBlack;
        RangeE.Font.Size:=12;
        RangeE.Font.Bold:=True;

        Row:=Row+1;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Company Address ***}
        RangeE.Value:=CompanyAddress;
        RangeE.Font.color:=ClBlack;
        RangeE.Font.Size:=8;
        RangeE.Font.Bold:=False;

        Row:=Row+2;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Title ***}
        RangeE.Value:=ReportTitle1;
        RangeE.Font.color:=ClRed;
        RangeE.Font.Size:=10;
        RangeE.Font.Bold:=True;


        {*** Report Date ***}
        Row:=FixedRow-1;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        RangeE.Value:='Date: '+ ReportDate;
        RangeE.Font.Size:=8;

        Row:=FixedRow;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        For I := 0 to Dataset1.Fields.count - 1 do
        Begin
            RangeE.Borders.Color:=clBlack;
            RangeE.Font.Size:=8;
            RangeE.Font.Bold:=True;
            RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
            RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
            RangeE.Value := DataSet1.Fields[I].DisplayName;
            RangeE:=RangeE.Next;
        End;
        DataSet1.DisableControls;
        Try
            Bookmark:=DataSet1.Bookmark;
            Try
                DataSet1.First;
                Row := FixedRow+1;
                While not DataSet1.Eof do
                begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to DataSet1.Fields.count - 1 do
                    Begin
                        RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Size:=8;
                        If Dataset1.Fields[I].Value=Null Then sData:=' '
                        Else sData:=Dataset1.Fields[I].Value;
                        If Pos('.',sData)>0 Then
                              RangeE.Cells.NumberFormat:='#,#00.00'
                        Else;
                        RangeE.Value :=DataSet1.Fields[I].AsString;
                        RangeE:=RangeE.Next;
                    End;
                    DataSet1.Next;
                    Inc(Row);
                End;
                {   SUMMATION      }
                RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                for I := 0 to DataSet1.Fields.count - 1 do
                Begin
                    RangeE.Borders.Color:=clBlack;
                    RangeE.Font.Size:=8;
                    RangeE.Font.Bold:=True;
                    If Dataset1.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset1.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                    begin
                         RangeE.Cells.NumberFormat:='#,#00.00';
                         RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    end Else if  Dataset1.Fields[I].Alignment= taRightJustify Then
                    begin
                         RangeE.Cells.NumberFormat:='#,#00.';
                         RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    end;
                    RangeE:=RangeE.Next;
                    RangeE.Cells
                End;
                Inc(Row);

                RangeE:=abcd.Range['A1','D1'];
                RangeE.Columns.AutoFit;
                {*** Summary Detail *****}

                //*** Auto Fit for evey column
                RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                For I := 1 to Dataset1.Fields.count - 1 do
                Begin
                    RangeE.EntireColumn.AutoFit;
                    If Dataset1.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset1.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                        if  Dataset1.Fields[I].DataType= ftfloat Then
                            RangeE.Cells.NumberFormat:='#,#00.00';
                    RangeE:=RangeE.Next;
                End;
            Finally
                DataSet1.Bookmark := Bookmark;
            End;
        Finally
            DataSet1.enablecontrols;
        End;

        FixedRow:= Row+2;
        Row:= FixedRow;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Title ***}
        RangeE.Value:=ReportTitle2;
        RangeE.Font.color:=ClRed;
        RangeE.Font.Size:=10;
        RangeE.Font.Bold:=True;

        FixedRow:=FixedRow+2;
        Row:= FixedRow;         // second query;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        For I := 0 to Dataset2.Fields.count - 1 do
        Begin
            RangeE.Borders.Color:=clBlack;
            RangeE.Font.Size:=8;
            RangeE.Font.Bold:=True;
            RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
            RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
            RangeE.Value := DataSet2.Fields[I].DisplayName;
            RangeE:=RangeE.Next;
        End;
        DataSet2.DisableControls;
        Try
            Bookmark:=DataSet2.Bookmark;
            Try
                DataSet2.First;
                Row := FixedRow+1;
                While not DataSet2.Eof do
                begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to DataSet2.Fields.count - 1 do
                    Begin
                        RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Size:=8;
                        If Dataset2.Fields[I].Value=Null Then sData:=' '
                        Else sData:=Dataset2.Fields[I].Value;
                        If Pos('.',sData)>0 Then
                              RangeE.Cells.NumberFormat:='#,#00.00';
                        RangeE.Value :=DataSet2.Fields[I].AsString;
                        RangeE:=RangeE.Next;
                    End;
                    DataSet2.Next;
                    Inc(Row);
                End;

                {   SUMMATION      }
                RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                for I := 0 to DataSet2.Fields.count - 1 do
                Begin
                    RangeE.Borders.Color:=clBlack;
                    RangeE.Font.Size:=8;
                    RangeE.Font.Bold:=True;
                    If Dataset2.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset2.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                    begin
                         RangeE.Cells.NumberFormat:='#,#00.00';
                         RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    end Else if  Dataset2.Fields[I].Alignment= taRightJustify Then
                        RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    RangeE:=RangeE.Next;
                    RangeE.Cells
                End;
                Inc(Row);

                RangeE:=abcd.Range['A1','D1'];
                RangeE.Columns.AutoFit;
                {*** Summary Detail *****}

                //*** Auto Fit for evey column
                RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                For I := 1 to Dataset2.Fields.count - 1 do
                Begin
                    RangeE.EntireColumn.AutoFit;
                    If Dataset2.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset2.Fields[I].Value;
                        If Pos('.',sData)>0 Then
                            If Dataset2.Fields[I].DataType= ftFloat Then
                                RangeE.Cells.NumberFormat:='#,#00.00';
                    RangeE:=RangeE.Next;
                End;
            Finally
                DataSet2.Bookmark := Bookmark;
            End;
        Finally
            DataSet2.enablecontrols;
        End;

        If Dataset3=nil then
        begin
            abcd.Free;
            Exit;
        End;

        FixedRow:= Row+2;
        Row:= FixedRow;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Title ***}
        RangeE.Value:=ReportTitle3;
        RangeE.Font.color:=ClRed;
        RangeE.Font.Size:=10;
        RangeE.Font.Bold:=True;

        FixedRow:=FixedRow+2;
        Row:= FixedRow;         // third query;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        For I := 0 to Dataset3.Fields.count - 1 do
        Begin
            RangeE.Borders.Color:=clBlack;
            RangeE.Font.Size:=8;
            RangeE.Font.Bold:=True;
            RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
            RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
            RangeE.Value := DataSet3.Fields[I].DisplayName;
            RangeE:=RangeE.Next;
        End;
        DataSet3.DisableControls;
        Try
            Bookmark:=DataSet3.Bookmark;
            Try
                DataSet3.First;
                Row := FixedRow+1;
                While not DataSet3.Eof do
                begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to DataSet3.Fields.count - 1 do
                    Begin
                        RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Size:=8;
                        If Dataset3.Fields[I].Value=Null Then sData:=' '
                        Else sData:=Dataset3.Fields[I].Value;
                        If Pos('.',sData)>0 Then
                            If Dataset3.Fields[I].DataType= ftFloat Then
                                RangeE.Cells.NumberFormat:='#,#00.00';
                        RangeE.Value :=DataSet3.Fields[I].AsString;
                        RangeE:=RangeE.Next;
                    End;
                    DataSet3.Next;
                    Inc(Row);
                End;
                {   SUMMATION      }
                RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                for I := 0 to DataSet3.Fields.count - 1 do
                Begin
                    RangeE.Borders.Color:=clBlack;
                    RangeE.Font.Size:=8;
                    RangeE.Font.Bold:=True;
                    If Dataset3.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset3.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                        If Dataset3.Fields[I].DataType= ftFloat Then
                        begin
                                RangeE.Cells.NumberFormat:='#,#00.00';
                                RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                        End Else If Dataset3.Fields[I].Alignment= taRightJustify Then
                            RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    RangeE:=RangeE.Next;
                    RangeE.Cells
                End;
                Inc(Row);

                RangeE:=abcd.Range['A1','D1'];
                RangeE.Columns.AutoFit;
                {*** Summary Detail *****}

                //*** Auto Fit for evey column
                RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                For I := 1 to Dataset3.Fields.count - 1 do
                Begin
                    RangeE.EntireColumn.AutoFit;
                    If Dataset3.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset3.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                         RangeE.Cells.NumberFormat:='#,#00.00';
                    RangeE:=RangeE.Next;
                End;
            Finally
                DataSet3.Bookmark := Bookmark;
            End;
        Finally
            DataSet3.enablecontrols;
        End;

        If Dataset4=nil then
        begin
            abcd.Free;
            Exit;
        End;

        FixedRow:= Row+2;
        Row:= FixedRow;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        {*** Report Title ***}
        RangeE.Value:=ReportTitle4;
        RangeE.Font.color:=ClRed;
        RangeE.Font.Size:=10;
        RangeE.Font.Bold:=True;

        FixedRow:=FixedRow+2;
        Row:= FixedRow;         // fourth query;
        RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
        For I := 0 to Dataset4.Fields.count - 1 do
        Begin
            RangeE.Borders.Color:=clBlack;
            RangeE.Font.Size:=8;
            RangeE.Font.Bold:=True;
            RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
            RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
            RangeE.Value := DataSet4.Fields[I].DisplayName;
            RangeE:=RangeE.Next;
        End;
        DataSet4.DisableControls;
        Try
            Bookmark:=DataSet4.Bookmark;
            Try
                DataSet4.First;
                Row := FixedRow+1;
                While not DataSet4.Eof do
                begin
                    RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                    for I := 0 to DataSet4.Fields.count - 1 do
                    Begin
                        RangeE.Borders.Color:=clBlack;
                        RangeE.Font.Size:=8;
                        If Dataset4.Fields[I].Value=Null Then sData:=' '
                        Else sData:=Dataset4.Fields[I].Value;
                        If Pos('.',sData)>0 Then
                            If Dataset4.Fields[I].DataType= ftFloat Then
                              RangeE.Cells.NumberFormat:='#,#00.00';
                        RangeE.Value :=DataSet4.Fields[I].AsString;
                        RangeE:=RangeE.Next;
                    End;
                    DataSet4.Next;
                    Inc(Row);
                End;

                {   SUMMATION      }
                RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
                for I := 0 to DataSet4.Fields.count - 1 do
                Begin
                    RangeE.Borders.Color:=clBlack;
                    RangeE.Font.Size:=8;
                    RangeE.Font.Bold:=True;
                    If Dataset4.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset4.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                        If Dataset4.Fields[I].DataType= ftFloat Then
                        begin
                            RangeE.Cells.NumberFormat:='#,#00.00';
                            RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                        end Else if  Dataset4.Fields[I].Alignment= taRightJustify Then
                            RangeE.Value := '=SUM('+ CHR(65+I)+IntToStr(FixedRow)+':'+ CHR(65+I)+IntToStr(Row-1)+')';
                    RangeE:=RangeE.Next;
                    RangeE.Cells
                End;
                Inc(Row);

                RangeE:=abcd.Range['A1','D1'];
                RangeE.Columns.AutoFit;
                {*** Summary Detail *****}

                //*** Auto Fit for evey column
                RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                For I := 1 to Dataset4.Fields.count - 1 do
                Begin
                    RangeE.EntireColumn.AutoFit;
                    If Dataset4.Fields[I].Value=Null Then sData:=' '
                    Else sData:=Dataset4.Fields[I].Value;
                    If Pos('.',sData)>0 Then
                        If Dataset4.Fields[I].DataType= ftFloat Then
                            RangeE.Cells.NumberFormat:='#,#00.00';
                    RangeE:=RangeE.Next;
                End;
            Finally
                DataSet4.Bookmark := Bookmark;
            End;
        Finally
            DataSet4.enablecontrols;
        End;
    End;
    abcd.Free;
end;


Procedure SendToExcelsSpecial(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress,ReportFormat:String; SumStartFromCols:Integer);
var
  GridCols,Row,li_EndPoint,li_TotCols: Integer;
  objExcel, Sheet,objRange, Data: OLEVariant;
  i, j,k,l: Integer;
  xlCell:Variant;
  ScrollEvents: TScrollEvents;
  ls_StartCell, ls_EndCell,ls_Str: String;
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

     DataSet.RecordCount;

     If (DataSet <> nil) AND (DBGRD = Nil) Then
     Begin
          GridCols:=0;
          i:=0;
          //Add the Column Headers


          For k := 0 to DataSet.Fields.Count - 1 do
          begin
               IF ReportFormat='OPDFract' Then
               Begin
                    GridCols:=GridCols+1;
                    IF (DataSet.Fields[K].DisplayName<>'Bill No') and (DataSet.Fields[K].DisplayName<>'Amount')
                    and (DataSet.Fields[K].DisplayName<>'Patient Name') and (DataSet.Fields[K].DisplayName<>'S.N.') and (DataSet.Fields[K].DisplayName<>'PrevBillNo') Then
                    Begin
                         objRange.cells(5,GridCols):=GetDocName(DataSet.Fields[K].DisplayName);
                         xlCell:=objRange.Range[objRange.Cells[5,GridCols],objRange.Cells[5,GridCols+2]];
                         xlCell.HorizontalAlignment:=xlCenter;
                         xlCell.VerticalAlignment:=xlCenter;
                         objRange.Interior.ColorIndex:=15;
                         xlCell.Merge;
                         GridCols:=GridCols-1;
                    End
                    Else
                    objRange.cells(6,GridCols):=DataSet.Fields[K].DisplayName;
               End
               Else IF ReportFormat='TestWiseDocFract' Then
               Begin
                    GridCols:=GridCols+1;
                    IF (Copy(DataSet.Fields[K].DisplayName,1,6)='Person') Then
                    Begin
                         i:=i+1;
                         //objRange.cells(5,GridCols):=DataSet.Fields[K].Value;
                         //IF Copy(DataSet.FieldByName(DataSet.Fields[K].FieldName).AsString,1,6)='Person
                         //objRange.cells(5,GridCols):=DataSet.FieldByName('Person'+IntToStr(i)).AsString;
                         IF (Copy(DataSet.Fields[K].FieldName,1,6)='Person') Then
                         objRange.cells(5,GridCols):=DataSet.FieldByName(DataSet.Fields[K].FieldName).AsString
                         Else
                         objRange.cells(5,GridCols):=GetDocName(DataSet.Fields[K].FieldName);
                         xlCell:=objRange.Range[objRange.Cells[5,GridCols],objRange.Cells[5,GridCols+2]];
                         xlCell.HorizontalAlignment:=xlCenter;
                         xlCell.VerticalAlignment:=xlCenter;
                         objRange.Interior.ColorIndex:=15;
                         xlCell.Merge;
                         GridCols:=GridCols-1;
                    End
                    Else
                    objRange.cells(6,GridCols):=DataSet.Fields[K].DisplayName;
               End
               Else IF ReportFormat='IPDocFractPart' Then
               Begin
                    IF ((K <=3) or (K >=11)) and (K < DataSet.Fields.Count - 1)  Then
                    Begin
                         GridCols:=GridCols+1;
                         IF (Copy(DataSet.Fields[K].DisplayName,1,2)='DR') Then
                         Begin
                              IF gb_ShowDocName=False Then
                              objRange.cells(5,GridCols):=DataSet.Fields[K].DisplayName//GetDocName(Copy(DataSet.Fields[K].DisplayName,3,Length(DataSet.Fields[K].DisplayName)-1))
                              Else
                              objRange.cells(5,GridCols):=GetDocName(Copy(DataSet.Fields[K].DisplayName,3,Length(DataSet.Fields[K].DisplayName)-1));
                         End
                         Else
                         objRange.cells(5,GridCols):=DataSet.Fields[K].DisplayName;
                         xlCell:=objRange.Range[objRange.Cells[5,GridCols],objRange.Cells[5,GridCols]];
                         xlCell.HorizontalAlignment:=xlCenter;
                         xlCell.VerticalAlignment:=xlCenter;
                         //objRange.Interior.ColorIndex:=15;
                    End;
               End
               Else IF ReportFormat='XRay' Then
               Begin
                    GridCols:=GridCols+1;
                    i:=i+1;

                    IF (i > 1) and (i <= 7) Then
                    Begin
                         objRange.cells(5,GridCols):=Get_XRayFractionOnRate(DataSet.Fields[K].FieldName);
                         objRange.cells(6,GridCols):=Get_XRayPlateName(DataSet.Fields[K].FieldName);
                    End Else IF i > 8 Then
                    Begin
                         ls_Str:=Copy(DataSet.Fields[K].FieldName,Length(DataSet.Fields[K].FieldName)-2,Length(DataSet.Fields[K].FieldName));
                         IF (ls_Str<>'TDS') and (ls_Str<>'Amt') Then
                         Begin
                              ls_Str:=Copy(DataSet.Fields[K].FieldName,0,Length(DataSet.Fields[K].FieldName)-2);
                              objRange.cells(5,GridCols):=GetDocName(ls_Str);
                              xlCell:=objRange.Range[objRange.Cells[5,GridCols],objRange.Cells[5,GridCols+2]];
                              xlCell.HorizontalAlignment:=xlCenter;
                              xlCell.VerticalAlignment:=xlCenter;
                              //objRange.Interior.ColorIndex:=15;
                              xlCell.Merge;
                              objRange.cells(6,GridCols):='Fraction Amt.';
                         End
                         Else IF ls_Str='TDS' Then
                         objRange.cells(6,GridCols):='TDS'
                         Else
                         objRange.cells(6,GridCols):='Net Amt.';
                    End
                    Else
                    objRange.cells(6,GridCols):=DataSet.Fields[K].DisplayName;
               End;
          End;


          objRange:=objExcel.Range[RefToCell(5,1) , RefToCell(5,GridCols)];
          objRange.Select;
          objRange.Borders.Color:=clBlack;
          objRange.Font.Size := 8;
          objRange.Font.Bold := True;
          objRange.Font.Color := clblack;
          objRange.Interior.ColorIndex:=15;

          IF ReportFormat<>'IPDocFractPart' Then
          Begin
               objRange:=objExcel.Range[RefToCell(6,1) , RefToCell(6,GridCols)];
               objRange.Select;
               objRange.Borders.Color:=clBlack;
               objRange.Font.Size := 8;
               objRange.Font.Bold := True;
               objRange.Font.Color := clblack;
               objRange.Interior.ColorIndex:=15;
          End;


          DisableDependencies(DataSet, ScrollEvents);
          Try
             // Prepare Data
             Data := VarArrayCreate([1, DataSet.RecordCount, 1,GridCols ], varVariant);
             DataSet.First;
             for i := 0 to DataSet.RecordCount - 1 do
             begin
                 l:=0;
                 IF ReportFormat='OPDFract' Then
                 Begin
                      For j := 0 to DataSet.Fields.Count- 1 do
                      begin
                          If (DataSet.Fields[j].Visible=True) and ((DataSet.Fields[j].DisplayName='Bill No')
                          or (DataSet.Fields[j].DisplayName='Amount') or (DataSet.Fields[j].DisplayName='Patient Name')
                          or (DataSet.Fields[j].DisplayName='S.N.') or (DataSet.Fields[j].DisplayName='PrevBillNo') ) Then
                          begin
                               Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                               l:=l+1;
                          end;
                      End;
                 end
                 Else IF ReportFormat='TestWiseDocFract' Then
                 Begin
                      For j := 0 to DataSet.Fields.Count- 1 do
                      begin
                          If Copy(DataSet.Fields[j].DisplayName,1,6)<>'Person' Then
                          begin
                               Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                               l:=l+1;
                          end;
                      End;
                 End
                 Else IF ReportFormat='IPDocFractPart' Then
                 Begin
                      DataSet.RecordCount;
                      For j := 0 to DataSet.Fields.Count- 1 do
                      begin
                          IF ((j <=3) or (j >=11)) and (j < DataSet.Fields.Count - 1)  Then
                          begin
                               IF j>=11 Then
                               Begin
                                    Try
                                         Data[i + 1, l + 1] := FormatFloat('0.00',DataSet.Fields[j].AsFloat);
                                    Except
                                         Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                                    End
                               End
                               Else
                               Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                               l:=l+1;
                          end;
                      End;
                 End
                 Else IF ReportFormat='XRay' Then
                 Begin
                      For j := 0 to DataSet.Fields.Count- 1 do
                      begin
                           Data[i + 1, l + 1] := DataSet.Fields[j].AsString;
                           l:=l+1;
                      End;
                 End;
                 DataSet.Next;
             end;
          Finally
             EnableDependencies(DataSet, ScrollEvents);
          End;
          // Fill up the sheet
          IF ReportFormat<>'IPDocFractPart' Then
          Sheet.Range[RefToCell(7, 1), RefToCell(DataSet.RecordCount+7,
                     GridCols)].Value := Data
          Else
          Sheet.Range[RefToCell(6, 1), RefToCell(DataSet.RecordCount+6,
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
          objRange:=objExcel.Range['A' + inttostr(5),  RefToCell(GridCols,5)];
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

     li_EndPoint:=DataSet.RecordCount+7;
     For K:=1 To GridCols Do
     Begin
          IF (ReportFormat<>'XRay') and (ReportFormat<>'IPDocFractPart') Then
          Begin
               objRange:=objExcel.Range[RefToCell(6,k),  RefToCell(6,k)];
               IF (objRange.Value='Amount') or (objRange.Value='NetAmount') or (objRange.Value='TDS') or (objRange.Value='NetAmt') Then
               Begin
                    objRange:=objExcel.Range[RefToCell(li_EndPoint,k),  RefToCell(li_EndPoint,k)];
                    objRange.Cells.NumberFormat:='#,#00.00';
                    objRange.Value := '=SUM('+RefToCell(7,K)+':'+ RefToCell(li_EndPoint-1,K)+')';
                    objRange.Font.Bold:=True;
               End
               Else
               Begin
                    objRange:=objExcel.Range[RefToCell(li_EndPoint,k),  RefToCell(li_EndPoint,k)];
                    IF ((K<>2)  and (ReportFormat='OPDFract')) or ((K<>3) and (ReportFormat='TestWiseDocFract')) Then
                    objRange.Value := ''
                    Else
                    Begin
                         objRange.Value := 'Total Amount (Rs.)';
                         objRange.Font.Bold:=True;
                    End;
               End;
          End
          Else IF ReportFormat='IPDocFractPart' Then
          Begin
               objRange:=objExcel.Range[RefToCell(li_EndPoint-1,k),  RefToCell(li_EndPoint-1,k)];
               objRange.Value := '';
               IF k=1 Then
               Begin
                    objRange.Value := 'Total Amount (Rs.)';
                    objRange.Font.Bold:=True;
               End
               Else
               Begin
                    IF K > 4 Then
                    Begin
                         objRange.Cells.NumberFormat:='#,#00.00';
                         objRange.Value := '=SUM('+RefToCell(6,K)+':'+ RefToCell(li_EndPoint-2,K)+')';
                         objRange.Font.Bold:=True;
                    End;
               End;
          End
          Else IF ReportFormat='XRay' Then// XRay
          Begin
               objRange:=objExcel.Range[RefToCell(li_EndPoint,k),  RefToCell(li_EndPoint,k)];
               IF k=1 Then
               Begin
                    objRange.Value := 'Total Amount (Rs.)';
                    objRange.Font.Bold:=True;
               End
               Else IF (k>=2) or (K<=6) Then
               Begin
                    objRange.Value := '=SUM('+RefToCell(7,K)+':'+ RefToCell(li_EndPoint-1,K)+')';
                    objRange.Font.Bold:=True;
               End
               Else
               Begin
                    objRange.Cells.NumberFormat:='#,#00.00';
                    objRange.Value := '=SUM('+RefToCell(7,K)+':'+ RefToCell(li_EndPoint-1,K)+')';
                    objRange.Font.Bold:=True;
               End;
          End
          Else
          Begin
               objRange:=objExcel.Range[RefToCell(li_EndPoint,k),  RefToCell(li_EndPoint,k)];
               IF k=1 Then
               Begin
                    objRange.Value := 'Total Amount (Rs.)';
                    objRange.Font.Bold:=True;
               End
               Else
               Begin
                    objRange.Cells.NumberFormat:='#,#00.00';
                    objRange.Value := '=SUM('+RefToCell(7,K)+':'+ RefToCell(li_EndPoint-1,K)+')';
                    objRange.Font.Bold:=True;
               End;
          End;
     End;


     objRange:=objExcel.Range[RefToCell(1,1),  RefToCell(1,GridCols)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     //objRange.Font.color:=ClBlack;
     objRange.Font.Size:=12;
     objRange.Font.Bold:=True;


     //objRange:=objExcel.Range['A' + inttostr(2),  ColsArr[GridCols-1]+ Inttostr(2)];
     objRange:=objExcel.Range[RefToCell(2,1),  RefToCell(2,GridCols)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     //objRange.Font.color:=ClBlack;
     objRange.Font.Size:=8;
     objRange.Font.Bold:=True;


     //objRange:=objExcel.Range['A' + inttostr(3),  ColsArr[GridCols-1]+ Inttostr(3)];
     objRange:=objExcel.Range[RefToCell(3,1),  RefToCell(3,GridCols)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     objRange.Font.color:=Clred;
     objRange.Font.Size:=10;
     objRange.Font.Bold:=True;


     //objRange:=objExcel.Range['A' + inttostr(4),  ColsArr[GridCols-1]+ Inttostr(4)];
     objRange:=objExcel.Range[RefToCell(4,1),  RefToCell(4,GridCols)];
     objRange.Select;
     objRange.HorizontalAlignment := xlCenter;
     objRange.VerticalAlignment := xlBottom;
     objRange.MergeCells := True;
     //objRange.Font.color:=ClBlack;
     objRange.Font.Size:=8;
     objRange.Font.Bold:=True;

     Sheet.Columns.AutoFit;
     objExcel.Interactive := True;
end;


Function GetDocName(DocCode:String):String;
Begin
     With Query_GetNextNo do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql.clear;
          sql.add(' Select F_Name||'' ''||L_Name as PtName From Doctor where DocCode='+#39+DocCode+#39);
          Open;
          IF Trim(FieldByName('PtName').AsString)<>'' Then
          Result:=FieldByName('PtName').AsString
          Else
          Result:=DocCode;
     End;
End;


Function Get_XRayPlateName(TestNameCode:String):String;
Begin
     With Query_GetNextNo do
     Begin
          DatabaseName:=gs_DatabaseName;
          Close;
          sql.clear;
          sql.add(' Select TestName From TestName where TestNameCode='+#39+TestNameCode+#39);
          Open;
          Result:=FieldByName('TestName').AsString;
     End;
End;


Function Get_XRayFractionOnRate(TestNameCode:String):String;
Begin
     With Query_GetNextNo do
     Begin
          DatabaseName:=gs_DatabaseName;
          Close;
          sql.clear;
          sql.add(' Select CommFromAmount From XRayCommession where TestNameCode='+#39+TestNameCode+#39);
          Open;
          Result:=FieldByName('CommFromAmount').AsString;
     End;
End;


Procedure SendToExcels_OMMonthOper(DataSet:TDataSet; DBGRD:TDBGrid; ReportTitle:String; ReportDate:String; Summary:String; Company:String; CompanyAddress:String; SumStartFromCols:Integer);
var
  GridCols: Integer;
  objExcel, Sheet,objRange, Data: OLEVariant;
  i, j,k,l,li_Date,li_Sno: Integer;
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
          li_Date:=1;
          //Add the Column Headers
          For k := 0 to DataSet.Fields.Count - 1 do
          begin
              If DataSet.Fields[k].Visible=True then
              begin
                   GridCols:=GridCols+1;
                   objRange.cells(6,GridCols):=DataSet.Fields[K].DisplayName;
              end;

              IF ((k+1) mod 3 = 1) and (k > 1) Then
              Begin
                   objRange.cells(5,K):=li_Date;
                   li_Date:=li_Date+1;
              End;
          end;


          For k := 1 to DataSet.Fields.Count  do
          begin
              IF (k mod 3 = 1) and (k > 2) Then
              Begin
                    objRange:=objExcel.Range[ColsArr[k-3] + inttostr(5),  ColsArr[k-1]+ Inttostr(5)];
                    objRange.Select;
                    objRange.MergeCells := True;
                    objRange.Borders.Color:=clBlack;
                    objRange.HorizontalAlignment := xlCenter;
                    objRange.VerticalAlignment := xlBottom;
                    objRange.Font.Size := 8;
                    objRange.Font.Bold := True;
                    objRange.Font.Color := clblack;
                    //objRange.Interior.ColorIndex:=15;
                    li_Date:=li_Date+1;
              End;
          end;


          objRange:=objExcel.Range['A' + inttostr(6),  ColsArr[GridCols-1]+ Inttostr(6)];
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
          Sheet.Range[RefToCell(7, 1), RefToCell(DataSet.RecordCount+5,
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

     IF SumStartFromCols > 0 Then
     Begin
         objRange.cells(i+2,1):='Total :';
         For k:=SumStartFromCols to GridCols-1 do
         objRange.cells(i+2,k+1):='=SUM('+ColsArr[k]+'7:'+ColsArr[k]+IntToStr(i+5)+'';
         objRange := Sheet.Rows[i+7];
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


Function GetDisplayLabel(RommTypeCode:String):String;
Begin
     With Query_GetNextNo do
     Begin
          Close;
          DatabaseName:=gs_DatabaseName;
          sql.clear;
          sql.add(' Select RoomType From RoomType where RoomTypeCode='+#39+RommTypeCode+#39);
          Open;
     End;
     Result:=Query_GetNextNo.FieldByName('RoomType').AsString;
End;


Function GetDisplayLabelTemp(ServiceName:String):String;
Begin
     With Query_GetNextNo do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.clear;
          sql.add(' Select Distinct ServiceName From SvrOpdIncome.db where ServiceCode='+#39+ServiceName+#39);
          Open;
     End;
     IF Trim(Query_GetNextNo.FieldByName('ServiceName').AsString)<>'' Then
     Result:=Query_GetNextNo.FieldByName('ServiceName').AsString
     Else
     Result:= ServiceName;
End;


Function GetDisplayLabelService(ServiceName:String):String;
Begin
     With Query_GetNextNo do
     Begin
          Close;
          DatabaseName:=gs_TempPath;
          sql.clear;
          sql.add(' Select Distinct Department From DocWiseSvrReferal.db where DepCode='+#39+ServiceName+#39);
          Open;
     End;
     IF Trim(Query_GetNextNo.FieldByName('Department').AsString)<>'' Then
     Result:=Query_GetNextNo.FieldByName('Department').AsString
     Else
     Result:= ServiceName;
End;



end.
