unit Unit_TestList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  fxn,dm,
  Dialogs, Buttons, StdCtrls, CheckLst, DBCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_Departmentlist = class(TForm)
    dblcb_department: TDBLookupComboBox;
    Label4: TLabel;
    Clb_testlist: TCheckListBox;
    BB_Load: TSpeedButton;
    Query_Dep: TOraQuery;
    DS_Dep: TDataSource;
    BB_Close: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure dblcb_departmentClick(Sender: TObject);
    procedure BB_LoadClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
     Arr_Test:Array of Array of String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Departmentlist: TForm_Departmentlist;

implementation


{$R *.dfm}

procedure TForm_Departmentlist.dblcb_departmentClick(Sender: TObject);
Var
     QryTemp:TQuery;
     Qry:TOraQuery;
     Table:TTable;
     I,J:integer;
begin
     Table:=TTable.Create(nil);
     QryTemp:=TQuery.Create(nil);
     Qry:=TOraQuery.Create(nil);
     with table Do
     begin
          Close;
          DatabaseName:=gs_temppath;
          TableName:='TempTest.db';
          TableType:=ttDefault;
          Open;
     end;
     for i := 0 to Clb_testlist.Items.Count - 1 do
     begin
          if Clb_testlist.State[i]=cbChecked then
          begin
               with QryTemp do
               begin
                    Close;
                    DatabaseName:=gs_temppath;
                    SQL.Clear;
                    SQL.Add('Select Count(*)C from TempTest');
                    SQL.Add('Where DepId='+(Arr_Test[i,0]));
                    SQL.Add('And TestNameId='+(Arr_Test[i,1]));
                    Open;
                    if FieldByName('c').AsInteger=0 then
                    begin
                         Close;
                         SQL.Clear;
                         SQL.Add('Insert into TempTest (KeyValue,DepId,TestNameId,TestNameCode,TestName,TestPrice,TotalPrice,SvrTax)');
                         SQL.Add('Values(');
                         SQL.Add(IntToStr(i)+','+(Arr_Test[i,0])+','+(Arr_Test[i,1])+','+#39+(Arr_Test[i,2])+#39+','+#39+(Arr_Test[i,3])+#39);
                         SQL.Add(','+(Arr_Test[i,4])+','+(Arr_Test[i,5])+','+(Arr_Test[i,6])+')');
                         //sql.savetofile('C:\tt.txt');
                         ExecSQL
                    end;
               end;
          end
          else
          begin
               with QryTemp do
               begin
                    Close;
                    DatabaseName:=gs_temppath;
                    SQL.Clear;
                    SQL.Add('Delete From TempTest');
                    SQL.Add('Where DepId='+(Arr_Test[i,0]));
                    SQL.Add('And TestNameId='+(Arr_Test[i,1]));
                    ExecSQL;
               end;
          end;
     end;
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select * from Vw_TestName Where DepId='+IntToStr(dblcb_department.KeyValue));
          Open;
          Clb_testlist.Items.Clear;
          SetLength(Arr_Test,RecordCount);
          j:=0;
          while not Eof do
          begin
               SetLength(Arr_Test[j],7);
               Arr_Test[j,0]:=dblcb_department.KeyValue;
               Arr_Test[j,1]:=FieldByName('TestNameid').AsString;
               Arr_Test[j,2]:=FieldByName('TestNameCode').AsString;
               Arr_Test[j,3]:=FieldByName('TestName').AsString;
               Arr_Test[j,4]:=FieldByName('TestPrice').AsString;
               Arr_Test[j,5]:=FieldByName('TotalPrice').AsString;
               Arr_Test[j,6]:=FieldByName('Tax').AsString;
               inc(j);
               Clb_testlist.Items.Add(FieldByName('TestName').AsString);
               next;
          end;
     end;
     with table do
     begin
          Close;
          Open;
          while not eof do
          begin
               if FieldByName('DepId').AsInteger=dblcb_department.KeyValue then
               Clb_testlist.State[FieldByName('KeyValue').AsInteger]:=cbChecked;
               Next;
          end;
     end;
     Table.Free;
     QryTemp.Free;
     Qry.Free;
end;

procedure TForm_Departmentlist.FormCreate(Sender: TObject);
Var
     Qry:TOraQuery;
     Table,Table2:TOraTable;
     Qty,TestPrice,TestPriceWithTax,SvrTax:Double;
begin
     Query_Dep.Close;
     Query_Dep.Session:=Dm_Hospital.Db;
     Query_Dep.Open;
//     Table:=TOraTable.Create(nil);
//     Table2:=TOraTable.Create(nil);
//     with table2 Do
//     begin
//          Close;
//          //DatabaseName:=gs_temppath;
//          TableName:='TempTest.db';
//          Open;
//     end;
//     with table Do
//     begin
//          Close;
//          //DatabaseName:=gs_temppath;
//          TableName:='TempBilling.db';
//          Open;
//          while not Eof do
//          begin
//               Qty:=1;
//               TestPrice:=table.FieldByName('TestPrice').AsFloat;
//               TestPriceWithTax:=table.FieldByName('TotalPrice').AsFloat;
//               SvrTax:=table.FieldByName('SvrTax').AsFloat;
//               with Table2 do
//               begin
//                    Append;
//                    FieldByName('DepID').AsInteger:=table.FieldByName('DepID').AsInteger;
//                    FieldByName('TestNameID').AsInteger:=table.FieldByName('TestNameID').AsInteger;
//                    FieldByName('TestNameCode').AsString:=StringReplace(table.FieldByName('TestNameCode').AsString,'''','''''',[rfReplaceAll]);
//                    FieldByName('TestName').AsString:=StringReplace(table.FieldByName('TestName').AsString,'''','''''',[rfReplaceAll]);
//                    FieldByName('TestPrice').AsFloat:=TestPrice;
//                    FieldByName('TotalPrice').AsFloat:=StrToFloat(FormatFloat('#0.00',(TestPriceWithTax*Qty)));;
//                    FieldByName('SvrTax').AsFloat:=SvrTax;
//                    Post;
//               end;
//               Next;
//          end;
//     end;
end;

procedure TForm_Departmentlist.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CloseClick(Sender);
end;

procedure TForm_Departmentlist.BB_CloseClick(Sender: TObject);
begin
     Close;
     Gb_TestListClosed:=true;
end;

procedure TForm_Departmentlist.BB_LoadClick(Sender: TObject);
Var
     Table:TTable;
     Table2:TTable;
     Qty,TestPrice,TestPriceWithTax,SvrTax:Double;
begin
     dblcb_departmentClick(Sender);
     Table:=TTable.Create(nil);
     Table2:=TTable.Create(nil);
     with Table2 do
     begin
          Close;
          DatabaseName:=gs_temppath;
          TableName:='TempBilling.db';
          EmptyTable;
          Open;
     end;
     with table Do
     begin
          Close;
          DatabaseName:=gs_temppath;
          TableName:='TempTest.db';
          Open;
          while not Eof do
          begin
               Qty:=1;
               TestPrice:=table.FieldByName('TestPrice').AsFloat;
               TestPriceWithTax:=table.FieldByName('TotalPrice').AsFloat;
               SvrTax:=table.FieldByName('SvrTax').AsFloat;
               with Table2 do
               begin
                    Append;
                    FieldByName('DepID').AsInteger:=table.FieldByName('DepID').AsInteger;
                    FieldByName('TestNameID').AsInteger:=table.FieldByName('TestNameID').AsInteger;
                    FieldByName('Doccode').AsString:='HOS';
                    FieldByName('TestNameCode').AsString:=StringReplace(table.FieldByName('TestNameCode').AsString,'''','''''',[rfReplaceAll]);
                    FieldByName('TestName').AsString:=StringReplace(table.FieldByName('TestName').AsString,'''','''''',[rfReplaceAll]);
                    FieldByName('TestPrice').AsFloat:=TestPrice;
                    FieldByName('TestPriceWithTax').AsFloat:=TestPriceWithTax;
                    FieldByName('TotalPrice').AsFloat:=StrToFloat(FormatFloat('#0.00',(TestPriceWithTax*Qty)));;
                    FieldByName('SvrTax').AsFloat:=SvrTax;
                    FieldByName('Qty').AsFloat:=Qty;
                    FieldByName('NetTotal').AsFloat:=StrToFloat(FormatFloat('#0.00',(TestPriceWithTax*Qty)));
                    Post;
               end;
               Next;
          end;
     end;
     BB_CloseClick(Sender);
end;

end.
