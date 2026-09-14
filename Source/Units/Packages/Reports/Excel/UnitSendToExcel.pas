unit UnitSendToExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Grids, DBGrids,
  DBCtrls, Db, Excel97, OleServer, OleCtrls, Dialogs;

Procedure SendToExcel(DataSet:TDataSet;DBGRD:TDBGrid;ReportTitle:String;ReportDate:String;Summary:String;Company:String; CompanyAddress:String);
Procedure Msgbox(msg:Variant);

implementation

Procedure Msgbox(msg:Variant);
begin
    {}
    ShowMessage(VarToStr(msg));
end;

Procedure SendToExcel(DataSet:TDataSet;DBGRD:TDBGrid;ReportTitle:String; ReportDate:String;
Summary:String;Company:String; CompanyAddress:String);
var
RangeE          : Excel97.range;
I,Row           : Integer;
Bookmark        : TBookmarkStr;
a1b             : TOleControl;
abcd            : TExcelApplication;
FixedRow        : Integer;
Begin
   FixedRow:=6;  //First row of Report;
   abcd := TExcelApplication.Create(abcd);

If (DataSet <> nil) AND (DBGRD = Nil) Then
   Begin
      abcd.visible[0]:=True;
    //ExcelApplication1.Workbooks.add(Null,0);
    abcd.Workbooks.add(Null,0);
    RangeE:=abcd.ActiveCell;
    
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
RangeE.Font.Size:=8;
RangeE.Font.Bold:=False;

Row:=Row+2;
RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
{*** Report Title ***}
RangeE.Value:=ReportTitle;
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
      For I := 0 to Dataset.Fields.count - 1 do
        Begin
                   RangeE.Borders.Color:=clBlack;
                   RangeE.Font.Size:=8;
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
                           RangeE.Font.Size:=8;
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
                        RangeE.Font.Size:=7;
                        RangeE.ColumnWidth:=3;

                        RangeE:=abcd.Range['A1','D1'];
                        RangeE.Columns.AutoFit;
                        {*** Summary Detail *****}

                        //*** Auto Fit for evey column
                        RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                        For I := 1 to DBGRD.Columns.count - 1 do
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
   //               RangeE:=ExcelApplication1.Range['A1','E' + Inttostr(Row - 1)];
   //               RangeE.AutoFormat(3,Null,Null,Null,Null,Null,Null);
End Else If (DataSet = Nil) AND (DBGRD <> Nil) Then
   Begin
      abcd.visible[0]:=True;
      abcd.Workbooks.add(Null,0);
      RangeE:=abcd.ActiveCell;

Row:=1;
{*** Report Company ***}
RangeE.Value:=Company;
RangeE.Font.color:=ClBlack;
RangeE.Font.Size:=12;
RangeE.Font.Bold:=True;

// **** tO merge columns
RangeE:=abcd.Range['A' + inttostr(Row),  'E' + Inttostr(Row)];
RangeE.Select;
   With abcd.ActiveCell do begin
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
RangeE.Font.Size:=8;
RangeE.Font.Bold:=False;

Row:=Row+2;
RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
{*** Report Title ***}
RangeE.Value:=ReportTitle;
RangeE.Font.color:=ClRed;
RangeE.Font.Size:=10;
RangeE.Font.Bold:=True;

Row:=FixedRow-1;
RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
RangeE.Value:='Date:'+ReportDate;
RangeE.Font.Size:=8;

        RangeE:=abcd.Range['A1','D1'];
        RangeE.Select;
        //abcd.Range['A1','D1'].Merge('');


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
//      DataSet.DisableControls;
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
                           RangeE.Font.Size:=8;
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
                        RangeE.Font.Size:=7;
                        RangeE.ColumnWidth:=3;
                        {*** Summary Detail *****}

                        //*** Auto Fit for evey column
                        RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
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
   //               RangeE:=ExcelApplication1.Range['A1','E' + Inttostr(Row - 1)];
   //               RangeE.AutoFormat(3,Null,Null,Null,Null,Null,Null);
   End Else ShowMessage('Dataset not found.');
   abcd.Free;
End;


end.
