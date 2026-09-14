unit Unit_QrPatientTestList;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate, DateRange,
     Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, qrBarcode;

type
     TForm_QrPatientTesList = class(TForm)
          QuickRep1: TQuickRep;
          TitleBand1: TQRBand;
          QRSubDetail1: TQRSubDetail;
          QRLabel1: TQRLabel;
          QRLabel2: TQRLabel;
          lbl_Date: TQRLabel;
          QRLabel4: TQRLabel;
          QRLabel5: TQRLabel;
          QRLabel6: TQRLabel;
          QRLabel7: TQRLabel;
          QRLabel8: TQRLabel;
          QRDBText1: TQRDBText;
          QRDBText2: TQRDBText;
          QRDBText3: TQRDBText;
          QRShape1: TQRShape;
          QRShape2: TQRShape;
          QRShape3: TQRShape;
          QRShape4: TQRShape;
          QRShape5: TQRShape;
          QRShape6: TQRShape;
          GroupFooterBand1: TQRBand;
          QRShape7: TQRShape;
          QRShape8: TQRShape;
          QRline_half: TQRShape;
          QRLabel3: TQRLabel;
          QRDBText4: TQRDBText;
          QRLabel_InvList: TQRLabel;
    QRDBText5: TQRDBText;
    Table_Patienttestlist: TTable;
          procedure FormCreate(Sender: TObject);
          procedure QRDBText1Print(Sender: TObject; var Value: string);
          procedure QRLabel5Print(Sender: TObject; var Value: string);
          procedure QRDBText2Print(Sender: TObject; var Value: string);
          procedure QRDBText4Print(Sender: TObject; var Value: string);
          procedure Table_PatienttestlistAfterScroll(DataSet: TDataSet);
          procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: string);
     private
          { Private declarations }
          procedure Loaddata;
          Function GetTestName: String;
          Procedure PrintBarcode;
     public
          totpage: integer;
          pb_HIDETESTINPATIENTLIST: Boolean;
          pi_pageno: integer;

          pi_LabNo: integer;
          ps_Name: String;
          { Public declarations }
     end;

var
     Form_QrPatientTesList: TForm_QrPatientTesList;

implementation

{$R *.dfm}

procedure TForm_QrPatientTesList.FormCreate(Sender: TObject);
begin
     if FileExists(gs_temppath + '\PatientTestList.db') then
     begin
          with Table_Patienttestlist do
          begin
               Close;
               TableName := 'PatientTestList.db';
               TableType := ttDefault;
               DatabaseName := gs_temppath;
               DeleteTable;
          end;
     end;
     with Table_Patienttestlist do
     begin
          Close;
          TableName := 'PatientTestList.db';
          TableType := ttDefault;
          DatabaseName := gs_temppath;
          FieldDefs.Clear;
          FieldDefs.Add('RealSampleNo', ftString, 100);
          FieldDefs.Add('PatientName', ftString, 100);
          FieldDefs.Add('PatientDetail', ftString, 400);
          FieldDefs.Add('Patient', ftString, 100);
          FieldDefs.Add('Test', ftString, 100);
          FieldDefs.Add('TestType', ftString, 100);
          FieldDefs.Add('DueAmt', ftFloat);
          CreateTable;
     end;
     Loaddata;

     if gb_HIDETESTINPATIENTLIST then
     Begin
          QRLabel_InvList.Caption := GetTestName;
          QRDBText3.Font.Color := clWhite;
          QRDBText2.Font.Color := clWhite;
          QRLabel6.Font.Color := clWhite;
          QRLabel7.Caption := 'Result';
          IF gi_TestNameId > 0 Then
               QRDBText3.Left := 384
          Else
          Begin
               QRDBText3.Left := 288;
               QRLabel6.Font.Color := clBlack;
               QRDBText3.Font.Color := clBlack;
          End;
     End
     Else
          QRLabel7.Caption := 'Test Type';

end;

procedure TForm_QrPatientTesList.Loaddata;
Var
     Qry: TOraQuery;
     ls_patient, ls_test,ls_patientDetail,ls_patientDetailOld: string;
     li_TestNameId: integer;
begin
     with Table_Patienttestlist do
     begin
          Close;
          EmptyTable;
          Open;
     end;

     Qry := TOraQuery.Create(nil);
     with Qry do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          SQL.Add(
               'Select PL.*,UPB.BALANCE,to_number(substr(sampleno,6))orderno from vw_patienttestlist PL,VW_UNPAIDBILL UPB');
          SQL.Add('Where PL.BillNo=UPB.BillNo(+) and PL.TESTDATE = ' + #39 + gs_From + #39);
//          SQL.Add('AND SUBSTR(SAMPLENO,2) BETWEEN ' + copy(gs_fromDailyNo, 11, 10) + ' AND ' + copy
//                 (gs_ToDailyNo, 11, 10));
          SQL.Add('AND Sampleno BETWEEN ' + QuotedStr(gs_fromDailyNo) + ' AND ' + quotedstr(gs_ToDailyNo));
          if gi_TestNameId > 0 then
               SQL.Add(' And PL.TestNameID=' + IntToStr(gi_TestNameId));
          SQL.Add('Order by OrderNo,sampleno,deporder,testnamedisplayorder,testdisplayorder');
          //sql.saveToFile('C:\PatientTestList.Txt');
          Open;
          lbl_Date.Caption := gs_From;
          ls_patient := '';
          ls_test := '';
          li_TestNameId := 0;
          while not Eof do
          begin
               with Table_Patienttestlist do
               begin
                    Append;
                    if ls_patient <> Qry.FieldByName('Particular').AsString then
                    begin
                         FieldByName('RealSampleNO').AsString := Qry.FieldByName('RealSampleNO').AsString;
                         FieldByName('Patient').AsString := Qry.FieldByName('PatientID').AsString;

                         Post;
                         Append;
                         FieldByName('Patient').AsString := Qry.FieldByName('Particular').AsString;
                         FieldByName('DueAmt').AsFloat := Qry.FieldByName('BALANCE').AsFloat;
                         ls_patient := Qry.FieldByName('Particular').AsString;

                         FieldByName('Test').AsString := Qry.FieldByName('Test').AsString;
                         Post;
                         Append;
                         ls_test := Qry.FieldByName('test').AsString;
                    end;

                    if ls_test <> Qry.FieldByName('Test').AsString then
                    begin
                         FieldByName('Test').AsString := Qry.FieldByName('Test').AsString;
                         Post;
                         Append;
                         ls_test := Qry.FieldByName('test').AsString;
                    end;

                    ls_patientDetail:=Qry.FieldByName('MobileNo').AsString+' '+
                                                            Qry.FieldByName('Email').AsString+' '+
                                                            Qry.FieldByName('Remarks').AsString;
                    if ls_patientDetailOld<>ls_patientDetail then
                    begin
                         FieldByName('PatientDetail').AsString := ls_patientDetail;
                         ls_patientDetailOld:=ls_patientDetail;
                    end;


                    if Trim(Qry.FieldByName('ABBREVIATION').AsString) <> '' then
                         FieldByName('TestType').AsString := Qry.FieldByName('ABBREVIATION').AsString
                    Else
                         FieldByName('TestType').AsString := Qry.FieldByName('testtype').AsString;
                    Post;

                    {if Qry.FieldByName('MobileNo').AsString<>'' then
                    begin
                         Append;
                         FieldByName('Patient').AsString:='('+Qry.FieldByName('MobileNo').AsString+')';
                         Post;
                    end;
                    if Qry.FieldByName('Email').AsString<>'' then
                    begin
                         Append;
                         FieldByName('Patient').AsString:=Qry.FieldByName('Email').AsString;
                         Post;
                    end;
                    if Qry.FieldByName('Remarks').AsString<>'' then
                    begin
                         Append;
                         FieldByName('Patient').AsString:=Qry.FieldByName('Remarks').AsString;
                         Post;
                    end;}
               end;
               li_TestNameId := Qry.FieldByName('TESTNAMEID').AsInteger;
               Next;
          end;
     end;
     Qry.Free;
     Table_Patienttestlist.Close;
     Table_Patienttestlist.Open;
end;

procedure TForm_QrPatientTesList.PrintBarcode;
Var
     Day, DayNo, SAMPLENO: String;
begin
     // gs_SampleNo := Edit_PreviousSampleNo.Text;
     Day := copy(gs_SampleNo, 8, 1);
     if Day = 'S' then
          DayNo := '1'
     else if Day = 'M' then
          DayNo := '2'
     else if Day = 'T' then
          DayNo := '3'
     else if Day = 'W' then
          DayNo := '4'
     else if Day = 'H' then
          DayNo := '5'
     else if Day = 'F' then
          DayNo := '6';
     SAMPLENO := copy(gs_SampleNo, 1, 6) + DayNo + copy(gs_SampleNo, 9, 999);
     // Barcode.Text := SAMPLENO;
end;

procedure TForm_QrPatientTesList.QRDBText1Print(Sender: TObject; var Value: string);
begin
     if Value = '' then
     begin
          QRSubDetail1.Frame.DrawTop := false;
          QRline_half.Enabled := true;
     end
     else
     begin
          QRSubDetail1.Frame.DrawTop := true;
          QRline_half.Enabled := false;
     end;

     if Value <> '' then
     begin
          if IsStrANumber(Value) then
          Begin
               pi_LabNo := StrToInt(Value);
               QRDBText1.Font.Style := [fsBold];
          end
          else
          Begin
               if Trim(Value) <> '' then
                    ps_Name := Value;
               QRDBText1.Font.Style := [];
          End;
     End;
          Try
               if pi_pageno <> QuickRep1.QRPrinter.PageNumber then
               begin
                    if (Value = '') and (ps_Name <> '') then
                    Begin
                         Value := IntToStr(pi_LabNo) + ' - ' + ps_Name;
                         ps_Name := '';
                    End;
                    pi_pageno := QuickRep1.QRPrinter.PageNumber;
                    // lbl_Name.Enabled := true;
               end
               else
               begin
                    // lbl_Name.Enabled:=false;
               end;
          except

          End;
end;

procedure TForm_QrPatientTesList.QRDBText2Print(Sender: TObject; var Value: string);
begin
     // if Value <> '' then
     // QRline_half.Enabled := true
     // else
     // QRline_half.Enabled := false;
end;

procedure TForm_QrPatientTesList.QRDBText4Print(Sender: TObject; var Value: string);
begin
     IF StrToFloat(StringReplace(Value, ',', '', [rfReplaceAll])) <= 0 Then
          Value := '';
end;

procedure TForm_QrPatientTesList.QRDBText5Print(sender: TObject; var Value: string);
begin
//     if Value='' then
//     QRDBText5.Enabled:=false
//     else
//     QRDBText5.Enabled:=true;
end;

procedure TForm_QrPatientTesList.QRLabel5Print(Sender: TObject; var Value: string);
begin
     Value := IntToStr(QuickRep1.PageNumber) + ' of ' + IntToStr(totpage);
end;

procedure TForm_QrPatientTesList.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     // if Table_Patienttestlist.FieldByName('RealSampleNo').AsString <> '' then
     // PrintBarcode;
end;

procedure TForm_QrPatientTesList.Table_PatienttestlistAfterScroll(DataSet: TDataSet);
begin
     gs_SampleNo := Table_Patienttestlist.FieldByName('RealSampleNo').AsString
end;

Function TForm_QrPatientTesList.GetTestName: String;
Var
     Qry: TOraQuery;
Begin
     Qry := TOraQuery.Create(nil);
     With Qry do
     Begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          SQL.Add('Select TestName From TestName where TestNameId=' + IntToStr(gi_TestNameId));
          Open;
     End;
     Result := Qry.FieldByName('TestName').AsString;
End;

end.
