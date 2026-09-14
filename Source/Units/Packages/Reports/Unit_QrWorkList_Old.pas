unit Unit_QrWorkList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, serverdate, dm, DateRange,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TForm_QrWorkList = class(TForm)
          QuickRep1: TQuickRep;
          TitleBand1: TQRBand;
          QRSubDetail1: TQRSubDetail;
          QRLabel1: TQRLabel;
          QRLabel2: TQRLabel;
          lbl_Date: TQRLabel;
          QRLabel4: TQRLabel;
          lbl_page: TQRLabel;
          QRDBText1: TQRDBText;
          QRDBText2: TQRDBText;
          QRDBText3: TQRDBText;
          QRDBText4: TQRDBText;
          GroupFooterBand1: TQRBand;
          QRShape3: TQRShape;
          QRShape1: TQRShape;
          QRShape2: TQRShape;
          QRShape4: TQRShape;
          QRShape5: TQRShape;
          QRShape6: TQRShape;
          QRShape7: TQRShape;
    Table_WorkList: TTable;
          procedure FormCreate(Sender: TObject);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure QRDBText2Print(Sender: TObject; var Value: string);
          procedure QRDBText3Print(Sender: TObject; var Value: string);
          procedure QRDBText4Print(Sender: TObject; var Value: string);
          procedure lbl_pagePrint(Sender: TObject; var Value: string);
    procedure QRLabel1Print(sender: TObject; var Value: string);
     private
          { Private declarations }
          procedure Loaddata;
     public
          totpage: integer;
          { Public declarations }
     end;

var
     Form_QrWorkList: TForm_QrWorkList;

implementation

{$R *.dfm}

procedure TForm_QrWorkList.FormCreate(Sender: TObject);
begin
     if FileExists(gs_temppath + '\WorkList.db') then
     begin
          with Table_WorkList do
          begin
               Close;
               TableName := 'WorkList.db';
               TableType := ttDefault;
               DatabaseName := gs_temppath;
               DeleteTable;
          end;
     end;
     with Table_WorkList do
     begin
          Close;
          TableName := 'WorkList.db';
          TableType := ttDefault;
          DatabaseName := gs_temppath;
          FieldDefs.Clear;
          FieldDefs.Add('SN', ftInteger);
          FieldDefs.Add('col1', ftString, 100);
          FieldDefs.Add('col2', ftString, 100);
          FieldDefs.Add('col3', ftString, 100);
          FieldDefs.Add('col4', ftString, 100);
          CreateTable;
     end;
     Loaddata;
end;

procedure TForm_QrWorkList.lbl_pagePrint(Sender: TObject; var Value: string);
begin
     Value := IntToStr(QuickRep1.PageNumber) + ' of ' + IntToStr(totpage);
end;

procedure TForm_QrWorkList.Loaddata;
Var
     Qry, Qrysub: TOraQuery;
     ls_col: string;
     i, j, li_1stTop, li_2ndTop, li_3rdTop, li_4thTop, li_MaxTop: integer;
begin
     with Table_WorkList do
     begin
          Close;
          EmptyTable;
          Open;
     end;
     Qry := TOraQuery.Create(nil);
     Qrysub := TOraQuery.Create(nil);
     with Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('SELECT * FROM (');
          SQL.Add(' SELECT DISTINCT');
          SQL.Add('   case');
          SQL.Add('        when T.abbreviation is null then Trim(T.test)');
          SQL.Add('        else');
          SQL.Add('        T.abbreviation');
          SQL.Add('   end as TEST,Trim(T.TEST) TESTMAIN, (SELECT DEPID FROM TESTNAME WHERE TESTNAMEID=T.TESTNAMEID)DEPID');
          SQL.Add('FROM SAMPLECOLLECTION SC,TEST T');
          SQL.Add('WHERE T.TESTNAMEID  IN (SELECT TESTNAMEID FROM PATIENTTEST WHERE PATIENTTESTID=SC.PATIENTTESTID)');
          SQL.Add('AND T.WORKLIST=''Y'' ');
          SQL.Add('And SAMPLETAKENDATE = ' + #39 + gs_From + #39);

          if gi_compileValue=3 then
              SQL.Add('AND SUBSTR(SC.SAMPLENO,6) BETWEEN ' + QuotedStr(gs_fromDailyNo) + ' AND ' + quotedstr(gs_ToDailyNo))
          else
              SQL.Add('AND SUBSTR(SC.SAMPLENO,9) BETWEEN ' + copy(gs_fromDailyNo, 11, 10) + ' AND ' + copy
                 (gs_ToDailyNo, 11, 10));

          if gi_TestNameId > 0 then
          SQL.Add(' And T.TestNameID='+IntToStr(gi_TestNameId));
          //sql.Add(' and Trim(T.Test) In (''Potassium'',''Sodium'',''Blood Group'')');

          if gb_AltWorkList then
          SQL.Add('And T.ALTWORKLIST=''Y'' ')
          else
          SQL.Add('And T.ALTWORKLIST=''N'' ');

          //SQL.Add('ORDER BY TESTID');
          SQL.Add('ORDER BY TEST');
          SQL.Add(') WHERE DEPID IN ('+gs_UserDepId+')');
           //     sql.SaveToFile('c:\tt.txt');
          Open;
          lbl_Date.Caption := gs_From;
          ls_col := '';
          i := 1;
          j := 0;
          li_1stTop := 0;
          li_2ndTop := 0;
          li_3rdTop := 0;
          li_4thTop := 0;
          li_MaxTop := 0;
          while not Eof do
          begin
               if i = 1 then
               begin
                    with Table_WorkList do
                    begin
                         if li_1stTop >= li_MaxTop then
                         begin
                              j := j + 1;
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Append;
                                   FieldByName('SN').AsInteger := j;
                                   FieldByName('col1').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end
                         else
                         begin
                              Locate('SN', li_1stTop + 1, []);
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Edit;
                                   FieldByName('col1').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end;
                         Inc(li_1stTop);
                         with Qrysub do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              SQL.Clear;
                              SQL.Add('Select * from vw_worklist');
                              SQL.Add('Where Trim(Test)=' + #39 + Qry.FieldByName('TestMain').AsString + #39);
                              SQL.Add('And SAMPLETAKENDATE = ' + #39 + gs_From + #39);

                              if gi_compileValue=3 then
                                  SQL.Add('AND SAMPLENO BETWEEN ' + QuotedStr(gs_fromDailyNo)+ ' AND ' + quotedstr(gs_ToDailyNo))
                              else
                                  SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                                         + ' AND ' + copy(gs_ToDailyNo, 11, 10));

                              sql.Add('and depid in ('+gs_UserDepId+')');
                              //sql.SaveToFile('c:\asda.txt');
                              Open;
                              while not Eof do
                              begin
                                   with Table_WorkList do
                                   begin
                                        if li_1stTop >= li_MaxTop then
                                        begin
                                        Append;
                                        j := j + 1;
                                        FieldByName('SN').AsInteger := j;
                                        FieldByName('Col1').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end
                                        else
                                        begin
                                        Locate('SN', li_1stTop + 1, []);
                                        Edit;
                                        FieldByName('Col1').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end;
                                   end;
                                   Qrysub.Next;
                                   li_1stTop := li_1stTop + 1;
                                   if li_1stTop > li_MaxTop then
                                        li_MaxTop := li_1stTop;
                              end;
                         end;
                    end;
                    i := 2;
               end
               else if i = 2 then
               begin
                    with Table_WorkList do
                    begin
                         if li_2ndTop >= li_MaxTop then
                         begin
                              j := j + 1;
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Append;
                                   FieldByName('SN').AsInteger := j;
                                   FieldByName('col2').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end
                         else
                         begin
                              Locate('SN', li_2ndTop + 1, []);
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Edit;
                                   FieldByName('col2').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end;
                         Inc(li_2ndTop);
                         with Qrysub do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              SQL.Clear;
                              SQL.Add('Select * from vw_worklist');
                              SQL.Add('Where Trim(Test)=' + #39 + Qry.FieldByName('TestMain').AsString + #39);
                              SQL.Add('And SAMPLETAKENDATE = ' + #39 + gs_From + #39);

                              if gi_compileValue=3 then
                                  SQL.Add('AND SAMPLENO BETWEEN ' + QuotedStr(gs_fromDailyNo)+ ' AND ' + quotedstr(gs_ToDailyNo))
                              else
                                  SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                                         + ' AND ' + copy(gs_ToDailyNo, 11, 10));
                              //SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                              //       + ' AND ' + copy(gs_ToDailyNo, 11, 10));

                              sql.Add('and depid in ('+gs_UserDepId+')');
                              Open;
                              while not Eof do
                              begin
                                   with Table_WorkList do
                                   begin
                                        if li_2ndTop >= li_MaxTop then
                                        begin
                                        Append;
                                        j := j + 1;
                                        FieldByName('SN').AsInteger := j;
                                        FieldByName('Col2').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end
                                        else
                                        begin
                                        Locate('SN', li_2ndTop + 1, []);
                                        Edit;
                                        FieldByName('Col2').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end;
                                   end;
                                   Qrysub.Next;
                                   li_2ndTop := li_2ndTop + 1;
                                   if li_2ndTop > li_MaxTop then
                                        li_MaxTop := li_2ndTop;
                              end;
                         end;
                    end;
                    i := 3;
               end
               else if i = 3 then
               begin
                    with Table_WorkList do
                    begin
                         if li_3rdTop >= li_MaxTop then
                         begin
                              j := j + 1;
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Append;
                                   FieldByName('SN').AsInteger := j;
                                   FieldByName('col3').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end
                         else
                         begin
                              Locate('SN', li_3rdTop + 1, []);
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Edit;
                                   FieldByName('col3').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end;
                         Inc(li_3rdTop);
                         with Qrysub do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              SQL.Clear;
                              SQL.Add('Select * from vw_worklist');
                              SQL.Add('Where Trim(Test)=' + #39 + Qry.FieldByName('TestMain').AsString + #39);
                              SQL.Add('And SAMPLETAKENDATE = ' + #39 + gs_From + #39);

                              if gi_compileValue=3 then
                                  SQL.Add('AND SAMPLENO BETWEEN ' + QuotedStr(gs_fromDailyNo)+ ' AND ' + quotedstr(gs_ToDailyNo))
                              else
                                  SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                                         + ' AND ' + copy(gs_ToDailyNo, 11, 10));

                              //SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                              //       + ' AND ' + copy(gs_ToDailyNo, 11, 10));
                              sql.Add('and depid in ('+gs_UserDepId+')');
                              Open;
                              while not Eof do
                              begin
                                   with Table_WorkList do
                                   begin
                                        if li_3rdTop >= li_MaxTop then
                                        begin
                                        Append;
                                        j := j + 1;
                                        FieldByName('SN').AsInteger := j;
                                        FieldByName('Col3').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end
                                        else
                                        begin
                                        Locate('SN', li_3rdTop + 1, []);
                                        Edit;
                                        FieldByName('Col3').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end;
                                   end;
                                   Qrysub.Next;
                                   li_3rdTop := li_3rdTop + 1;
                                   if li_3rdTop > li_MaxTop then
                                        li_MaxTop := li_3rdTop;
                              end;
                         end;
                    end;
                    i := 4;
               end
               else if i = 4 then
               begin
                    with Table_WorkList do
                    begin
                         if li_4thTop >= li_MaxTop then
                         begin
                              j := j + 1;
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Append;
                                   FieldByName('SN').AsInteger := j;
                                   FieldByName('col4').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end
                         else
                         begin
                              Locate('SN', li_4thTop + 1, []);
                              if ls_col <> Qry.FieldByName('test').AsString then
                              begin
                                   Edit;
                                   FieldByName('col4').AsString := trim(Qry.FieldByName('test').AsString);
                                   Post;
                                   ls_col := Qry.FieldByName('test').AsString;
                              end;
                         end;
                         Inc(li_4thTop);
                         with Qrysub do
                         begin
                              Close;
                              Session:=Dm_Hospital.Db;
                              SQL.Clear;
                              SQL.Add('Select * from vw_worklist');
                              SQL.Add('Where Trim(Test)=' + #39 + Qry.FieldByName('TestMain').AsString + #39);
                              SQL.Add('And SAMPLETAKENDATE = ' + #39 + gs_From + #39);

                              if gi_compileValue=3 then
                                  SQL.Add('AND SAMPLENO BETWEEN ' + QuotedStr(gs_fromDailyNo)+ ' AND ' + quotedstr(gs_ToDailyNo))
                              else
                                  SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                                         + ' AND ' + copy(gs_ToDailyNo, 11, 10));


                              //SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10)
                              //       + ' AND ' + copy(gs_ToDailyNo, 11, 10));
                              sql.Add('and depid in ('+gs_UserDepId+')');
                              Open;
                              while not Eof do
                              begin
                                   with Table_WorkList do
                                   begin
                                        if li_4thTop >= li_MaxTop then
                                        begin
                                        Append;
                                        j := j + 1;
                                        FieldByName('SN').AsInteger := j;
                                        FieldByName('Col4').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end
                                        else
                                        begin
                                        Locate('SN', li_4thTop + 1, []);
                                        Edit;
                                        FieldByName('Col4').AsString := Qrysub.FieldByName('SampleNo').AsString;
                                        Post;
                                        end;
                                   end;
                                   Qrysub.Next;
                                   li_4thTop := li_4thTop + 1;
                                   if li_4thTop > li_MaxTop then
                                        li_MaxTop := li_4thTop;
                              end;
                         end;
                    end;
                    i := 1;
               end;
               Next;
          end;
          Qry.Free;
          Table_WorkList.Close;
          Table_WorkList.Open;
     end;
end;

procedure TForm_QrWorkList.QRDBText1Print(Sender: TObject; var Value: string);
VAR
     STR: STRING;
begin
     STR := WideCharToString(AnsiLastChar(Value));
     if IsStrANumber(STR) then
     begin
          QRDBText1.Font.Style := [];
          QRShape3.Enabled:=true;
     end
     else
     begin
          QRDBText1.Font.Style := [fsBold];
          QRShape3.Enabled:=false;
     end;

end;

procedure TForm_QrWorkList.QRDBText2Print(Sender: TObject; var Value: string);
VAR
     STR: STRING;
begin
     STR := WideCharToString(AnsiLastChar(Value));
     if IsStrANumber(STR) then
     begin
          QRDBText2.Font.Style := [];
          QRShape2.Enabled:=true;
     end
     else
     begin
          QRDBText2.Font.Style := [fsBold];
          QRShape2.Enabled:=false;
     end;
end;

procedure TForm_QrWorkList.QRDBText3Print(Sender: TObject; var Value: string);
VAR
     STR: STRING;
begin
     STR := WideCharToString(AnsiLastChar(Value));
     if IsStrANumber(STR) then
     begin
          QRDBText3.Font.Style := [];
          QRShape5.Enabled:=true;
     end
     else
     begin
          QRDBText3.Font.Style := [fsBold];
          QRShape5.Enabled:=false;
     end;
end;

procedure TForm_QrWorkList.QRDBText4Print(Sender: TObject; var Value: string);
VAR
     STR: STRING;
begin
     STR := WideCharToString(AnsiLastChar(Value));
     if IsStrANumber(STR) then
     begin
          QRDBText4.Font.Style := [];
          QRShape7.Enabled:=true;
     end
     else
     begin
          QRDBText4.Font.Style := [fsBold];
          QRShape7.Enabled:=false;
     end;
end;

procedure TForm_QrWorkList.QRLabel1Print(sender: TObject; var Value: string);
begin
     //Value:='WORK LIST ('+Copy(GetMinMaxSampleNobyDate('min', gs_From),8, 10)+' - '+Copy(GetMinMaxSampleNobyDate('max', gs_From),8, 10)+' )';
     if gi_compileValue<>3 then
        Value:='WORK LIST ['+Copy(gs_fromDailyNo,8,10)+'-'+Copy(gs_ToDailyNo,8,10)+']'
     else
        Value:='WORK LIST ['+gs_fromDailyNo+'-'+gs_ToDailyNo+']';
end;

end.
