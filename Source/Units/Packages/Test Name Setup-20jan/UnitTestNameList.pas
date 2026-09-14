unit UnitTestNameList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, OleCtrls, DateEditXControl_TLB, StdCtrls,serverdate, Buttons, ExtCtrls,
  Db, DBTables,Excel97, ComCtrls;

type
  TForm_TestNameList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    BitBtnPreview: TBitBtn;
    BitBtnExcel: TBitBtn;
    BitBtnCancel: TBitBtn;
    StatusBar1: TStatusBar;
    DBLookupComboBox_DepTestName: TDBLookupComboBox;
    Label1: TLabel;
    RadioButton_Department: TRadioButton;
    RadioButton_TestCategory: TRadioButton;
    Query_GetData: TQuery;
    DataSource_GetData: TDataSource;
    CheckBox1: TCheckBox;
    CB_Tax: TCheckBox;
    CB_UndefineRateList: TCheckBox;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure BitBtn_FromDateClick(Sender: TObject);
    Procedure SendToExcel(DataSet:TDataSet;ReportTitle:String; ReportDate:String;
    Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer );
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure BitBtnExcelClick(Sender: TObject);
    procedure RadioButton_DepartmentClick(Sender: TObject);
    procedure RadioButton_TestCategoryClick(Sender: TObject);
    procedure DBLookupComboBox_DepTestNameKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
      b_SendToExcel:Boolean;
    { Public declarations }
  end;

var
  Form_TestNameList: TForm_TestNameList;

implementation

uses UnitReportTestName, UnitReportTestNameTNCW, Unit_GlobalFxnVar,
  UnitSendToExcel;


{$R *.DFM}


procedure TForm_TestNameList.BitBtnCancelClick(Sender: TObject);
begin
  close;
end;

procedure TForm_TestNameList.BitBtn_FromDateClick(Sender: TObject);
begin
//   ChangeDateSystem(DateEditX_FromDate,BitBtn_FromDate);
end;

procedure TForm_TestNameList.FormShow(Sender: TObject);
begin
   with Query_GetData do
   Begin
      Close;
      sql.Clear;
      sql.add(' SELECT DepId,DepCode,DepName From Department');
      sql.add(' Order By DepName ');
      Open;
   End;
   DBLookupComboBox_DepTestName.KeyField:='DepId';
   DBLookupComboBox_DepTestName.ListField:='DepName';
   b_SendToExcel:=False;
end;

procedure TForm_TestNameList.FormCreate(Sender: TObject);
begin
   Application.CreateForm(TFrmReportTestName,FrmReportTestName);
   Application.CreateForm(TFrmReportTestNameTNCW,FrmReportTestNameTNCW);
end;

procedure TForm_TestNameList.FormDestroy(Sender: TObject);
begin
   FrmReportTestName.Free;
   FrmReportTestNameTNCW.Free;
end;

procedure TForm_TestNameList.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF key=27 Then Close;
   IF key=VK_F1 Then BitBtnPreviewClick(Sender);
   IF key=VK_F2 Then BitBtnExcelClick(Sender);
end;

procedure TForm_TestNameList.BitBtnPreviewClick(Sender: TObject);
begin
   IF RadioButton_Department.Checked=True Then
   Begin
      With FrmReportTestName Do
      Begin
         Try
            With QueryDepartment Do
            Begin
               Close;
               IF DBLookupComboBox_DepTestName.KeyValue=Null Then
               SQl[1]:='Where (39=39) '
               Else
               SQl[1]:='Where (DepID='+IntToStr(DBLookupComboBox_DepTestName.KeyValue)+')';

               IF CB_UndefineRateList.Checked=True Then
               SQl[2]:=' and Depid In (Select Distinct DepId From TestName where TestPrice=0)'
               Else
               SQl[2]:=' ';

               Open;
            End;

            IF gi_HospitalId In [5,14] Then // 5-Om Hos,14-HAMS
            Begin
                 With QueryTestName Do
                 Begin
                      Close;
                      sql.Clear;
                      IF b_SendToExcel=True Then
                      Begin
                           sql.add(' SELECT TestNameCode as TestCode,TestName,TestPrice as General,Vat as SvrTax,TestPrice+Vat as Total,');
                           sql.add(' TestPriceForeigner as Foreigner,VatTPFrg as SvrTaxFrg,TestPriceForeigner+VatTPFrg as FrgTotal, ');
                           sql.add(' (Select TestNameCategory From TestNameCategory where TNCategoryCode=TestName.TNCategoryCode) as ');
                           sql.add(' TestNameCategory from TestName Where (DepID=:DepID) AND (ISActive=''T'')');

                           IF CB_UndefineRateList.Checked=True Then
                           sql.add(' and TestPrice=0 ');

                           sql.add(' Order By TestName,TESTNAMECODE');
                      End
                      Else
                      Begin
                           sql.add(' SELECT TestNameCode as TestCode,TestName,TestPrice+Vat as General,TestPriceSBed as Private,');
                           sql.add(' TestPriceDBed as Special,TestPriceForeigner+VatTPFrg as Foreigner$,TestPriceHBF as Express,');
                           sql.add(' TNCategoryCode as CategoryCode from TestName Where (DepID=:DepID) AND (ISActive=''T'')');

                           IF CB_UndefineRateList.Checked=True Then
                           sql.add(' and TestPrice=0 ');

                           sql.add(' Order By TestName,TESTNAMECODE');
                      End;
                      Open;
                 End;
            End
            Else
            Begin
                 With QueryTestName Do
                 Begin
                      Close;
                      Open;
                 End;
            End;
            //Showmessage(IntToStr(QueryTestName.RecordCount));
            IF CheckBox1.Checked=True Then
            Begin
               QRLabel14.Font.Color:=clWhite;
               QRLabel10.Font.Color:=clWhite;
               QRLabel13.Font.Color:=clWhite;
               QRDBText9.Font.Color:=clWhite;
               QRDBText3.Font.Color:=clWhite;
               QRDBText4.Font.Color:=clWhite;
            End
            Else
            Begin
               QRLabel14.Font.Color:=clBlack;
               QRLabel10.Font.Color:=clBlack;
               QRLabel13.Font.Color:=clBlack;
               QRDBText9.Font.Color:=clBlack;
               QRDBText3.Font.Color:=clBlack;
               QRDBText4.Font.Color:=clBlack;
            End;

            IF b_SendToExcel=True Then
            Begin
                SendToExcelMasterDetail(QueryDepartment,QueryTestName,'Test Price List (Department Wise)','',
                '',gs_HosName,gs_HosAddress,'DEPARTMENT');
                b_SendToExcel:=False;
            End
            Else
            Begin
               QuickRep1.Preview;
            End;
            QueryTestName.Close;
            QueryDepartment.Close;
         Finally
         End;
      End;
   End
   Else
   Begin
      With FrmReportTestNameTNCW Do
      Begin
         Try
            With QueryTestNameCategory Do
            Begin
               Close;
               IF DBLookupComboBox_DepTestName.KeyValue=Null Then
               SQl[1]:='Where (39=39) '
               Else
               SQl[1]:='Where (TNCategoryCode='+#39+DBLookupComboBox_DepTestName.KeyValue+#39+')';

               {IF CB_UndefineRateList.Checked=True Then
               SQl[2]:=' and Depid In (Select Distinct DepId From TestName where TestPrice=0)'
               Else
               SQl[2]:=' ';}

               Open;
            End;

            IF gi_HospitalId In [5,14] Then // 5-Om Hos,14-HAMS
            Begin
                 With QueryTestName Do
                 Begin
                      Close;
                      sql.Clear;
                      IF b_SendToExcel=True Then
                      begin
                           sql.add(' SELECT TestNameCode,TestName,TestPrice as General,Vat as SvrTax, TestPrice+Vat as GenTotal,');
                           sql.add(' TestPriceForeigner as Foreigner,VatTPFrg as SvrTaxFrg,TestPriceForeigner+VatTPFrg as FrgTotal,');
                           sql.add(' (Select DepName From Department where DepId=TestName.DepId) as DepName From TestName Where ');
                           sql.add(' (TNCategoryCode=:TNCategoryCode) AND (ISActive=''T'') ');

                           IF CB_UndefineRateList.Checked=True Then
                           sql.add(' and TestPrice=0 ');

                           sql.add(' Order By TESTNAMECODE ');
                      End
                      Else
                      Begin
                           sql.add(' SELECT TestNameCode,TestName,TestPrice+Vat as General,TestPriceSBed as Private,TestPriceDBed as Special,');
                           sql.add(' TestPriceForeigner+VatTPFrg as Foreigner$,TestPriceHBF as Express From TestName Where (TNCategoryCode=:TNCategoryCode)');
                           sql.add(' AND (ISActive=''T'') ');

                           IF CB_UndefineRateList.Checked=True Then
                           sql.add(' and TestPrice=0 ');

                           sql.add(' Order By TESTNAMECODE ');
                      End;
                      Open;
                 End;
            End
            Else
            Begin
                 With QueryTestName Do
                 Begin
                    Close;
                    Open;
                 End;
            End;

            IF b_SendToExcel=True Then
            Begin
                SendToExcelMasterDetail(QueryTestNameCategory,QueryTestName,'Test Price List (Category Wise)','',
                '',gs_HosName,gs_HosAddress,'CATEGORY');
                b_SendToExcel:=False;
            End
            Else
            QuickRep1.Preview;
            QueryTestName.Close;
            QueryTestNameCategory.Close;
         Finally
         End;
      End;
   End;
End;

Procedure TForm_TestNameList.SendToExcel(DataSet:TDataSet;ReportTitle:String; ReportDate:String;
Summary:String; Company:String; CompanyAddress:String; NoOfQuery:Integer );
var
RangeE          : Excel97.range;
I,Row,J         : Integer;
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
      RangeE.Value:=ReportTitle;
      RangeE.Font.color:=ClRed;
      RangeE.Font.Size:=12;//10;
      RangeE.Font.Bold:=True;


      {*** Report Date ***}
      {Row:=FixedRow-1;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
      RangeE.Value:='Date: '+ ReportDate;
      RangeE.Font.Size:=12;//8;}
      //RangeE.NumberFormat:=

      Row:=FixedRow;
      RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];

      For I := 0 to Dataset.Fields.count - 1 do
      Begin
         RangeE.Borders.Color:=clBlack;
         RangeE.Font.Size:=12;//8;
         RangeE.Font.Bold:=True;
         RangeE.Interior.ColorIndex:=15; //RangeE.Interior.Color:=clGray;
         RangeE.Font.Color:=clBlack; //RangeE.Font.Color:=clwhite;
         RangeE.Value := DataSet.Fields[I].DisplayName;
         RangeE:=RangeE.Next;
      End;

      NumQuery:=0;
      For J:=0 to NumQuery do
      Begin
         IF J=1 Then
         //Dataset:=FormReportSalesBook.QueryCreditBill
         Else IF J=2 Then
         //Dataset:=FormReportSalesBook.QueryRefundBill;
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
                       RangeE.Font.Size:=12;//8;
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
                 {RangeE:=abcd.Range['B' + inttostr(Row),  'B' + Inttostr(Row)];
                 For I := 1 to DataSet.Fields.count - 1 do
                 Begin
                    RangeE.EntireColumn.AutoFit;
                    RangeE:=RangeE.Next;
                 End;}
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
            RangeE.Value:='Total Cash Collection : ';
            {RangeE:=abcd.Range['F7',  'F' + Inttostr(Row)];
            RangeE.Value:='=SUM(F7,F'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['G8',  'G' + Inttostr(Row)];
            RangeE.Value:='=SUM(G8,G'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['H9',  'H' + Inttostr(Row)];
            RangeE.Value:='=SUM(H9,'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['I9','I' + Inttostr(Row)];
            RangeE.Value:='=SUM(I9,I'+IntToStr(Row-1)+')';  }

            Row:=Row+2;
            RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
            RangeE.Value:='Credit Bill:';
            RangeE.Font.Bold:=True;
            RangeE.Font.Size:=12;//7;
            RangeE.ColumnWidth:=3;
            Row:=Row+1;
            PosSecondRow:=Row;
         End;

         IF J=1 Then
         Begin
            RangeE.Value:='Total Credit Collection : ';
            {RangeE:=abcd.Range['F'+IntToStr(PosSecondRow),  'F' + Inttostr(Row)];
            RangeE.Value:='=SUM(F7'+IntToStr(PosSecondRow)+', F'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['G'+IntToStr(PosSecondRow),  'G' + Inttostr(Row)];
            RangeE.Value:='=SUM(G'+IntToStr(PosSecondRow)+',  G'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['H'+IntToStr(PosSecondRow),  'H' + Inttostr(Row)];
            RangeE.Value:='=SUM(H'+IntToStr(PosSecondRow)+',  H'+IntToStr(Row-1)+')';

            RangeE:=abcd.Range['I'+IntToStr(PosSecondRow),  'I' + Inttostr(Row)];
            RangeE.Value:='=SUM(I'+IntToStr(PosSecondRow)+',  I'+IntToStr(Row-1)+')';   }

            Row:=Row+2;
            RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
            RangeE.Value:='Refund Bill';
            RangeE.Font.Bold:=True;
            RangeE.Font.Size:=12;//7;

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

procedure TForm_TestNameList.BitBtnExcelClick(Sender: TObject);
begin
   IF MessageDlg('Are you sure to send in Excel ?',mtconfirmation,[mbyes,mbno],0)=mryes then
   Begin
      b_SendToExcel:=True;
      BitBtnPreviewClick(Sender);
   End;
end;

procedure TForm_TestNameList.RadioButton_DepartmentClick(Sender: TObject);
begin
   IF RadioButton_Department.Checked=True Then
   Begin
      DBLookupComboBox_DepTestName.KeyField:='';
      DBLookupComboBox_DepTestName.ListField:='';
      with Query_GetData do
      Begin
         Close;
         sql.Clear;
         sql.add(' SELECT DepId,DepCode,DepName From Department ');
         sql.add(' Order By DepName ');
         Open;
      End;
      DBLookupComboBox_DepTestName.KeyField:='DepId';
      DBLookupComboBox_DepTestName.ListField:='DepName';
      CheckBox1.Visible:=True;      
   End;
end;

procedure TForm_TestNameList.RadioButton_TestCategoryClick(
  Sender: TObject);
begin
   IF RadioButton_TestCategory.Checked=True Then
   Begin
      DBLookupComboBox_DepTestName.KeyField:='';
      DBLookupComboBox_DepTestName.ListField:='';
      with Query_GetData do
      Begin
         Close;
         sql.Clear;
         sql.add(' SELECT * From TestNameCategory ');
         Open;
      End;
      DBLookupComboBox_DepTestName.KeyField:='TNCategoryCode';
      DBLookupComboBox_DepTestName.ListField:='TestNameCategory';
      CheckBox1.Visible:=False;
   End;
end;

procedure TForm_TestNameList.DBLookupComboBox_DepTestNameKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
   IF key=VK_Delete Then
   DBLookupComboBox_DepTestName.KeyValue:=NULL;
end;

end.
