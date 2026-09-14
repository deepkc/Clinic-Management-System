unit UnitdmHospital;

interface

uses
  Windows, Messages, SysUtils, Classes,stdctrls,ServerDate,OleCtrls, Graphics,VdateUtils, Controls, Forms, Dialogs,
  Db, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,Excel97;

type
  TDMhospital = class(TDataModule)
    tablepatientMain: TOraTable;
    DataSourcePatientMaster: TDataSource;
    TableVisit: TOraTable;
    QueryTemp: TOraQuery;
    Hospital: TOraSession;                                                                                                                        
    TableZone: TOraTable;
    DataSourceZone: TDataSource;
    TableDistrict: TOraTable;
    DataSourceDistrict: TDataSource;
    TableVDC: TOraTable;
    DataSourceVdc: TDataSource;
    DataSourceDepartment: TDataSource;
    TableTestName: TOraTable;
    DataSourceTestName: TDataSource;
    TablePatientTest: TOraTable;
    DataSourcePatientTest: TDataSource;
    TableDoctor: TOraTable;
    DataSourceDoctor: TDataSource;
    TableWard: TOraTable;
    DataSourceWard: TDataSource;
    TableRoom: TOraTable;
    DataSourceRoom: TDataSource;
    TableBed: TOraTable;
    DataSourceBed: TDataSource;
    TableDischarge: TOraTable;
    DataSourceDischarge: TDataSource;
    TableNMC: TOraTable;
    DataSourceNMC: TDataSource;
    TableICDCode: TOraTable;
    DataSourceICDCode: TDataSource;
    TableTest: TOraTable;
    DataSourceTest: TDataSource;
    TableTestFinding: TOraTable;
    DataSourceTestFinding: TDataSource;
    TablePatientDetailTest: TOraTable;
    TableDepartment: TOraTable;
    TableTestType: TOraTable;
    DataSourceQueryDepartment: TDataSource;
    TableSilentFeature: TOraTable;
    DataSourceSilentFeature: TDataSource;
    TableDesignation: TOraTable;
    DataSourceDesignation: TDataSource;
    TableOccupation: TOraTable;
    DataSourceOccupation: TDataSource;
    TablePatientTestSpecial: TOraTable;
    DSPatientTestSpecial: TDataSource;
    QueryDoctor: TOraQuery;
    DataSourceQueryDoctor: TDataSource;
    TableMedicine: TOraTable;
    DataSourceMedicine: TDataSource;
    TableDiffDiagnosis: TOraTable;
    TableMedicineCode: TOraTable;
    DataSourceTableMedicineCode: TDataSource;
    TableOPDiagnosis: TOraTable;
    DataSourceTableOPDiagnosis: TDataSource;
    TableSpecialDefault: TOraTable;
    DataSourceSpecialDefault: TDataSource;
    TablebillMaster: TOraTable;
    TableBillDetail: TOraTable;
    TablePersonalBalance: TOraTable;
    TablePayType: TOraTable;
    DataSourcePayType: TDataSource;
    TablePatientReceive: TOraTable;
    TableInpatientReg: TOraTable;
    DataSourceInpatientReg: TDataSource;
    TableInpatientDetail: TOraTable;
    DataSourceInpatientDetail: TDataSource;
    QueryAllCode: TOraQuery;
    DataSourceIPBirth: TDataSource;
    TableIPBirth: TOraTable;
    TableIPDeath: TOraTable;
    DataSourceTableIPDeath: TDataSource;
    TableIPDischarge: TOraTable;
    DataSourceIPDischarge: TDataSource;
    TableTestEditFinding: TOraTable;
    TablePatientPersonalInfo: TOraTable;
    DataSourcePatientPersonalInfo: TDataSource;
    AccountTransaction: TOraSession;
    DataSourceTableTransfer: TDataSource;
    TableTransfer: TOraTable;
    DataSourceDischargeOperation: TDataSource;
    TableDischargeOperation: TOraTable;
    DataSourceRoomType: TDataSource;
    TableRoomType: TOraTable;
    TablePatientTestSpecialTESTSPECIALID: TFloatField;
    TablePatientTestSpecialPATIENTTESTID: TFloatField;
    TablePatientTestSpecialPATIENTID: TFloatField;
    TablePatientTestSpecialTESTID: TFloatField;
    TablePatientTestSpecialPTSPECIAL: TMemoField;
    TablePatientTestSpecialPTDETAILID: TFloatField;
    TablePatientTestSpecialIMPRESSION: TStringField;
    QueryServerDate: TOraQuery;
    QueryDepartment: TOraQuery;
    QueryBedCharge: TOraQuery;
    TableTempAccount: TOraTable;
    QueryInpBedCharge: TOraQuery;
    TableOperation: TOraTable;
    TableOperationOPERATIONID: TFloatField;
    TableOperationPATIENTNO: TFloatField;
    TableOperationOPERATIONDATE: TStringField;
    TableOperationDOCTEAM1: TStringField;
    TableOperationDOCTEAM2: TStringField;
    TableOperationDOCTEAM3: TStringField;
    TableOperationDOCTEAM4: TStringField;
    TableOperationSTAFF1: TStringField;
    TableOperationSTAFF2: TStringField;
    TableOperationSTAFF3: TStringField;
    TableOperationSTAFF4: TStringField;
    TableOperationPAYSTATUS: TStringField;
    TableOperationAMOUNT: TFloatField;
    TableOperationOPERATIONNAME: TStringField;
    TableOperationENTEREDBY: TStringField;
    TableOperationENTEREDDATE: TStringField;
    TableOperationENTEREDTIME: TStringField;
    TableOperationOPERATIONPROCEDURE: TMemoField;
    TableOperationOPERATIONFINDING: TMemoField;
    TableOperationPREOPERATIVE: TMemoField;
    TableOperationPOSTOPERATIVEPLAN: TMemoField;
    TableOperationAUTHORISED: TStringField;
    TableOperationPAYDATE: TStringField;
    TableOperationAUTHORISEDREMARK: TMemoField;
    TableOperationOPERATIONTYPE: TStringField;
    TableOperationBILLDATE: TStringField;
    TableOperationBILLDETAILID: TFloatField;
    TableOperationDEPARTMENT: TStringField;
    DataSourceTableOperation: TDataSource;
    TableOperationName: TOraTable;
    TableOperationNameOPERATIONID: TFloatField;
    TableOperationNameOPERATIONCODE: TStringField;
    TableOperationNameOPERATIONNAME: TStringField;
    DataSourceTableOperationName: TDataSource;
    TableCollection: TOraTable;
    TableCollectionSNO: TFloatField;
    TableCollectionFIRST_NAME: TStringField;
    TableCollectionMIDDLE_NAME: TStringField;
    TableCollectionLAST_NAME: TStringField;
    TableCollectionSEX: TStringField;
    TableCollectionAGE: TFloatField;
    TableCollectionCONTACT_PHONE: TFloatField;
    TableCollectionTITLE: TStringField;
    TableCollectionMARITAL_STATUS: TStringField;
    TableCollectionAGETYPE: TStringField;
    TableCollectionCOUNTRY: TStringField;
    TableCollectionZONE: TStringField;
    TableCollectionDISTRICT: TStringField;
    TableCollectionVDC: TStringField;
    TableCollectionMOBILE: TFloatField;
    TableCollectionADDRESS: TStringField;
    TableCollectionADDRESS2: TStringField;
    TableCollectionREMARKS: TStringField;
    TableCollectionDDATE: TStringField;
    TableDonorDetail: TOraTable;
    TableBloodTest: TOraTable;
    TableTestTESTID: TFloatField;
    TableTestDONOR_DETAIL_ID: TFloatField;
    TableTestSNO: TFloatField;
    TableTestHIV: TStringField;
    TableTestHBSAG: TStringField;
    TableTestVDRL: TStringField;
    TableTestHCV: TStringField;
    TableTestHIVMEMO: TStringField;
    TableTestHBSAGMEMO: TStringField;
    TableTestVDRLMEMO: TStringField;
    TableTestHCVMEMO: TStringField;
    TablePatientDetail: TOraTable;
    TableCrossMatch: TOraTable;
    TableCrossMatchCROSSMATCHID: TFloatField;
    TableCrossMatchPATIENTDETAILID: TFloatField;
    TableCrossMatchCROSSMATCH_DATE: TStringField;
    TableCrossMatchBLOODBAG_NO: TFloatField;
    TableCrossMatchHIV: TStringField;
    TableCrossMatchHBSAG: TStringField;
    TableCrossMatchVDRL: TStringField;
    TableCrossMatchHCV: TStringField;
    TableCrossMatchCROSSMATCH_DONE_BY: TStringField;
    TableCrossMatchGROUPINGBY: TStringField;
    TableCrossMatchISSUE_QTY: TFloatField;
    TableCrossMatchRESULT: TStringField;
    TableCrossMatchREMARKS: TStringField;
    TableCrossMatchBLOODQTY: TFloatField;
    TableCrossMatchCHECKEDBY: TStringField;
    TableCrossMatchRECEIVEDBY: TStringField;
    TableCrossMatchBLOODRECEIVEDDATE: TStringField;
    TableCrossMatchRETURN: TStringField;
    TableCrossMatchWARD: TStringField;
    TableDonorDetailDONOR_DETAIL_ID: TFloatField;
    TableDonorDetailSNO: TFloatField;
    TableDonorDetailBGROUP: TStringField;
    TableDonorDetailBTYPE: TStringField;
    TableDonorDetailDATE_OF_COLLECTION: TStringField;
    TableDonorDetailBAGNO: TFloatField;
    TableDonorDetailDIPOSIT_DATE: TStringField;
    TableDonorDetailDIPOSIT_TIME: TStringField;
    TableDonorDetailRECEIVED_DATE: TStringField;
    TableDonorDetailRECEIVED_TIME: TStringField;
    TableDonorDetailPATIENT_NO: TFloatField;
    TableDonorDetailPATIENT_NAME: TStringField;
    TableDonorDetailWARD: TStringField;
    TableDonorDetailREMARKS: TStringField;
    TableDonorDetailDATE_OF_EXPIRE: TStringField;
    TableDonorDetailCOLLECTED_BY: TStringField;
    TableDonorDetailBEDNO: TFloatField;
    TableDonorDetailOCCUPIED: TStringField;
    TableDonorDetailBLOOD_SET: TStringField;
    TableDonorDetailRECEIVED_BY: TStringField;
    DataSourceTableDocRoutine: TDataSource;
    TableDocRoutine: TOraTable;
    TableMedicalRecord: TOraTable;
    DataSourceTableMedicalRecord: TDataSource;
    TableMedInvt: TOraTable;
    DataSourceTableMedInvt: TDataSource;
    TableMedDiagonosis: TOraTable;
    DataSourceTableMedDiagonosis: TDataSource;
    TableMedOT: TOraTable;
    DataSourceTableMedOT: TDataSource;
    TableMrBirth: TOraTable;
    DataSourceTableMrBirth: TDataSource;
    TableFileStatus: TOraTable;
    TableGender: TOraTable;
    TableMaritalStatus: TOraTable;
    DataSourceTableGender: TDataSource;
    DataSourceTableMaritalStatus: TDataSource;
    TableFreeType: TOraTable;
    DataSourceTableFreeType: TDataSource;
    QueryFreeType: TOraQuery;
    QueryFreeTypeTYPEID: TFloatField;
    QueryFreeTypeTYPE: TStringField;
    QueryFreeTypeDISCOUNT: TFloatField;
    TableCommunity: TOraTable;
    Query_CalculationForTempTable: TOraQuery;
    Database2: TOraSession;
    TableReceivable: TOraQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    CanAdminChange:boolean;
   // TodaysDate,TodaysTime:String;
    FromDepartment:boolean;
    FromDoctor:boolean;
    CodeGotOrNot:boolean;
    //Related With Procedure Depcode(Checks Wheather Parameter Given satisfies or not)
    Procedure DepCode(Sender:Tobject);
    Procedure DocCode(Sender:Tobject);
    Procedure WardCode(Sender:TCombobox);
    Procedure CallingMedicinecode(Const TempTableName:string ;const StrForLikeCase:string);
    Procedure CallingTestNamecode(Const TempTableName:string ;const StrForLikeCase:string;Const DepartmentCode:string);
    Procedure ExtendedSearch(Const RealTablename:string;Queryname:TOraQuery;EditboxName:Tedit);//;StringFields:array of string;IntegerFields:array of string);
    Function  LocateSingleField(Const RealTableName,KeyFieldName,FieldValue:String):Boolean;overLoad;
    Function  LocateSingleField(Const RealTableName,KeyFieldName:String;FieldValue:LongInt):Boolean;Overload;
    Function  GetNewLongIntKeyValue(Const RealTableName,KeyFieldName:String):LongInt;    
    Function  CalculateBedCharge:Double;
    Procedure CreateTableTempAccount;
    Procedure RetriveBed(NInPatientID:Integer);
    Procedure BedCharge(const RealtableName:String);
    Function  CountField(const CountNo:String):Integer;
    // Function  DueBedCharge(const RealtableName:String):Double;
    Function  TotalBedCharge:Double;
    Procedure SendDataToExcel(DataSet:TDataSet;ReportTitle:String);
   
  end;


var
  DMhospital: TDMhospital;

implementation

uses Unit_GlobalFxnVar;



{$R *.DFM}
Procedure TDMhospital.SendDataToExcel(DataSet:TDataSet;ReportTitle:String);
var
     RangeE :  Excel97.range;
     I,Row:Integer;
     Bookmark:TBookmarkStr;
     a1b:TOleControl;
     abcd: TExcelApplication;
     FixedRow : Integer;
     Cols : Integer;
Begin
     FixedRow:= 3;
     abcd := TExcelApplication.Create(abcd);
     If (DataSet <> nil) Then
     Begin
          Cols:=Dataset.Fields.count; //-1
          abcd.visible[0]:=True;
          abcd.Workbooks.add(Null,0);
          RangeE:=abcd.ActiveCell;

          RangeE.Value:=ReportTitle;
          RangeE.Font.color:=ClRed;
          RangeE.Font.Size:=12;
          RangeE.Font.Bold:=True;

          Row:=FixedRow-1;
          RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
          RangeE.Value:='Date:'+DateToStr(Date);

          Row:=FixedRow;
          RangeE:=abcd.Range['A' + inttostr(Row),  'A' + Inttostr(Row)];
          For I := 0 to Cols - 1 do
          Begin
               RangeE.Borders.Color:=clBlack;
               RangeE.Font.Bold:=True;
               With RangeE.Interior do begin
                    ColorIndex := 15;
                    Pattern := xlSolid;
               End;
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
                         for I := 0 to Cols - 1 do
                         Begin
                              RangeE.Borders.Color:=clBlack;
                              RangeE.Value :=DataSet.Fields[I].AsString;
                              RangeE:=RangeE.Next;
                         End;
                         DataSet.Next;
                         Inc(Row);
                    End;
               Finally
                    DataSet.Bookmark := Bookmark;
               End;
          Finally
               DataSet.enablecontrols;
          End;
     End Else ShowMessage('Dataset not found.');
     abcd.Free;
End;
Function  TDMhospital.CountField(const CountNo:String):Integer;
Begin
{try

  for I := 0 to CountNo.Count - 1 do
    ListBox1.Items.Add(CountNo[I]);
finally
  MyStringList.Free;
end;
Result:=li_return; }
End;



Function TDMhospital.LocateSingleField(Const RealTableName,KeyFieldName,FieldValue:String):Boolean;
begin
  With QueryTemp do
  begin
     close;
     with SQL do
     begin
        Clear;
        add('Select count('+KeyFieldName+') AS nCount from '+RealTableName);
        add('Where ('+KeyFieldName+'='+chr(39)+FieldValue+chr(39)+')');
     End;
     open;
     result:=FieldByName('nCount').AsInteger>0;
     close;
  end;
end;

Procedure TDmHospital.ExtendedSearch(Const RealTablename:string;Queryname:TOraQuery;EditboxName:Tedit);//StringFields:array of string;IntegerFields:array of string);
var E:Tedit;
    ss,strFields,intfields,RealString,Statement,LastStatement,o:string;
    len,i,j,k,m,h,z:integer;
    Isnumeric:boolean;
    stringfield:array of string;
    intfield:array of Variant;
    fbool:boolean;
Begin
    E:=EditboxName;
    strfields:='';
    statement:='';
    h:=0;
    fbool:=false;
    for m:=0 to Queryname.Fields.Count-1 do
    begin
       if Queryname.Fields[m].DataType=ftstring then
       begin
         setlength(stringfield,h+1);
         stringfield[h]:=queryname.Fields[m].FieldName;
         strfields:=strfields+queryname.Fields[m].FieldName+',';
         h:=h+1;
       end
       else
       if (Queryname.Fields[m].DataType=ftinteger)or (Queryname.Fields[m].DataType=ftfloat ) then
       begin
         fbool:=true;
         setlength(intfield,z+1);
         intfield[z]:=queryname.Fields[m].FieldName;
         intfields:=intfields+queryname.Fields[m].FieldName+',';
         z:=Z+1;
       end;
     end;
       if fbool=false then
       delete(strFields,length(strFields),1);
       delete(intFields,length(intFields),1);
       RealString:='select'+' '+strFields+intfields;
     ss:=E.text;
     len:=length(E.text);
     If len<>0 then
     begin
       IsNumeric:=true;
     For i:=1 to len do
     begin
       copy(ss,i,1);
       If (ss>'9') or (ss<'0') then
       Begin
         isnumeric:=false;
         break;
       End;
     End;
    End;
    If len=0 then isnumeric:=false;
    If Isnumeric=false then
    Begin
      for k:=0 to High(StringField) do
        begin
          Statement:=Statement+' '+'('+StringField[k]+' '+'like'+' '+''''+'%'+ss+'%'+''''+')'+'Or';
        End;
    End
    Else
    Begin
      For k:=0 to High(intfield) do
      Begin
        statement:=statement+' '+'('+intField[k]+' '+'='+ss+')'+'Or';
      End;
    End;
    Delete(Statement,length(statement)-1,2);
    LastStatement:=Statement;
    o:=Queryname.Name;
    With Queryname do
    begin
      close;
      With SQL do
      begin
        If E.text<>'' then
        begin
          clear;
          //if Isnumeric=false then
          begin
            Add('39=39');
            Add('From '+RealTablename+'');
            Add('Where');
            Add('39=39');
            Sql[0]:=RealString;
            Sql[3]:=LAstStatement;
            //savetofile('C:\Windows\Desktop\waiwai.txt');
          end
        End
        else
        begin
          clear;
          add('Select * from '+RealTableName);
        end;
     End;
   End;
   Queryname.Open;
end;


Function TDMhospital.LocateSingleField(Const RealTableName,KeyFieldName:String;FieldValue:LongInt):Boolean;
begin
  With QueryTemp do
  begin
    close;
    with SQL do
    begin
      Clear;
      add('Select count('+KeyFieldName+') AS nCount from '+RealTableName);
      add('Where ('+KeyFieldName+'='+intToStr(FieldValue)+')');
    End;
    Open;
    result:=FieldByName('nCount').AsInteger>0;
    close;
  End;
End;

Procedure TDMhospital.DepCode(Sender: Tobject);
begin
{  FromDepartment:=true;
  FromDoctor:=false;
  With formAllCode do
  begin
    caption:='Department Code';
    With QueryAllCode do
    begin
      close;
      With SQL do
      Begin
        clear;
        close;
        Add('Select DepCode,DepName From Department');
        //Add('From Department');
        Add('Where depcode=:depCode');
      End;
      Parambyname('depcode').asstring:=FormOPDMAin.ComboDepCode .Text;
      Open;
      If recordCount<=0 then
      Begin
         CodeGotOrNot:=false;
         With Queryallcode do
         begin
           close;
           With SQL do
           begin
             clear;
             close;
             ADD('Select DepCode,DepName From Department');
             Add('Where Depcode like '+chr(39)+FormOpdMain.comboDepCode.Text+'%'+chr(39)+'');
             open;
           end;
         end;
       end
       else
       CodeGotOrNot:=true;
    end;
     dbgrid1.Columns[0].Field:=QueryallCode.Fieldbyname('DepCode');
     dbgrid1.Columns[1].Field:=QueryallCode.Fieldbyname('DepName');
     //Showmodal;
  end;

}
end;

Procedure TDMhospital.DocCode(Sender: TObject);
begin
{  FromDepartment:=false;
  FromDoctor:=true;
  With formAllCode do
  begin
    caption:='Doctor Code';
    With QueryAllCode do
    begin
      close;
      With SQL do
      Begin
        clear;
        close;
        Add('Select DocCode,F_name||'' ''||L_name as FullName From Doctor');
        Add('Where doccode=:docCode');
      End;
       parambyname('doccode').asstring:=FormOPDmain.ComboDocCode.Text;
       open;
       If recordCount<=0 then
       Begin
         CodeGotOrNot:=false;
         With Queryallcode do
         Begin
           close;
           With SQL do
           Begin
             clear;
             close;
             ADD('Select DocCode,F_name+'' ''+L_name as FullName From Doctor');
             Add('Where Doccode like '+chr(39)+FormOpdMain.comboDocCode.Text+'%'+chr(39)+'');
             open;
           End;
         End;
       End
       Else
       CodeGotOrNot:=true;
    End;
     dbgrid1.Columns[0].Field:=QueryallCode.fieldbyname('DocCode');
     dbgrid1.Columns[1].Field:=QueryallCode.Fieldbyname('FullName');
     //Showmodal;
  end;
}
end;



Procedure TDMhospital.CallingMedicinecode(Const TempTableName:string ;const StrForLikeCase:string);
Begin
{   With FormallCode do
   begin
     With Queryallcode do
     begin
       close;

       With SQL do
       begin
         clear;
         Add('Select * From MedicineCode');
         ADD('Where MedCode like '+chr(39)+StrForLikeCase+'%'+chr(39)+'')
       end;
       open;
     end;
     dbgrid1.Columns[0].Field:=QueryallCode.fieldbyname('MedCode');
     dbgrid1.Columns[1].Field:=QueryallCode.Fieldbyname('MedName');
   end;  }
end;
Procedure TDMhospital.CallingTestNamecode(Const TempTableName:string ;const StrForLikeCase:string;Const DepartmentCode:string);
var strCquel:string;
begin
{   With FormallCode do
   begin
     With Queryallcode do
     begin
       close;
       With SQL do
       begin
         clear;
         Add('Select * From TestName');
         ADD('Where TestNameCode like '+chr(39)+StrForLikeCase+'%'+chr(39)+'');
         //Add('And DepCode='+''''+DepartmentCode+'''');
         Add('And(39=39)');
         //SaveToFile('C:\TestName.Txt');
       end;
       open;
     end;
     dbgrid1.Columns[0].Field:=QueryallCode.fieldbyname('TestNameCode');
     dbgrid1.Columns[1].Field:=QueryallCode.Fieldbyname('TestName');
   end;}
end;
Procedure TDMhospital.WardCode(Sender:TCombobox);
begin
{  FormAllcode.Caption:='Wards...';
  With QueryAllCode do
  begin
    close;
    With SQL do
    begin
      clear;
      ADD('Select * from Ward');
      ADD('Where WardCode=:WardCode');
      Parambyname('Wardcode').asstring:=Sender.Text;
      open;
      if recordcount<=0 then
      begin
        CodeGotOrNot:=false;
        close;
        With SQL do
        begin
          clear;
          ADD('Select * from Ward');
          ADD('Where Wardcode like '+chr(39)+Sender.Text+'%'+chr(39)+'');
          open;
        end;
      end
      else
      CodeGotOrNot:=True;
      Formallcode.LabelHeading.Caption:='Wards...';
      FormallCode.dbgrid1.Columns[0].Field:=dmhospital.QueryallCode.fieldbyname('WardCode');
     Formallcode.dbgrid1.Columns[1].Field:=dmhospital.QueryallCode.Fieldbyname('WardName');
    end;
  end;  }
End;

Procedure TDMhospital.CreateTableTempAccount;
Begin
  With TableTempAccount do
  begin
    IF Active Then Active:=False;
    databasename:=gs_TempPath;
    tablename:='TempAccount.db';
    tableType:=TTParadox;
    FieldDefs.Clear;
    Fielddefs.add('PatientID',ftInteger);
    Fielddefs.add('InpatientId',ftInteger);
    Fielddefs.add('Service',ftString,10);
    Fielddefs.add('ServiceType',ftString,25);
    Fielddefs.add('TestName',ftString,75);
    Fielddefs.add('DDate',ftString,25);
    Fielddefs.add('InptDate',ftString,10);
    Fielddefs.add('Amount',ftString,10);
    Fielddefs.add('SameDate',ftString,1);
    createtable;
  End;
End;

Procedure TDMhospital.RetriveBed(NInPatientID:Integer);
Var Indate:String;
Begin
//
  With QueryBedCharge Do
  Begin
    Close;
    ParamByName('InPatientID').AsInteger:=NInPatientID;
    Open;
    TableTempAccount.DataBaseName:=gs_TempPath;
    TableTempAccount.Close;
    TableTempAccount.Exclusive:=True;
    TableTempAccount.Open;
    TableTempAccount.EmptyTable;
    First;
    While Not Eof Do
    Begin
      TableTempAccount.Append;
      TableTempAccount.FieldByName('InptDate').AsString:=FieldByName('InptDate').AsString;
      TableTempAccount.FieldByName('PatientID').AsInteger:=FieldByName('PatientID').AsInteger;
      TableTempAccount.FieldByName('Service').AsString:=FieldByName('ROOMTYPECODE').AsString;
      TableTempAccount.FieldByName('ServiceType').AsString:='Bed Charge';//FieldByName('ServiceType').AsString;
      IF FieldByName('OutDate').AsString='C' Then
        TableTempAccount.FieldByName('DDate').AsString:=FieldByName('InptDate').AsString+'-'+ServerDate.TodaysDate
      Else
        TableTempAccount.FieldByName('DDate').AsString:=FieldByName('InptDate').AsString+'-'+FieldByName('BedDate').AsString;
      TableTempAccount.Post;
      Indate:=FieldByName('InptDate').AsString;
      Next;
    End;
  End;
End;

Function TDMhospital.CalculateBedCharge:Double;
  Var
    Initialdate,Outdate,PreDate:Tdate;
    NbedCharge,TotalBedCharge:Double;
    NoOfDay:Integer;
Begin
  {
  with QueryBedCharge Do
  Begin
    TotalBedCharge:=0;
    NoOfDay:=0;
    IF FieldByName('OutDate').AsString='C' Then
      Outdate:=ServerDate.TodaysDate
    Else
     Outdate:=FieldByName('OutDate').AsString;
    Initialdate:=FieldByName('InptDate').AsString;
    NbedCharge:=FieldByName('BedCharge').AsFloat+FieldByName('VatAmt').AsFloat;
    IF Outdate=Null Then
    Begin
      Outdate:=ServerDate.TodaysDate;
    End;
    IF Initialdate<>Outdate Then
    Begin
      While Initialdate<>Outdate Do
      Begin
        IF  Initialdate=PreDate Then
        Begin
          Initialdate:=Initialdate+1;

        End
        Else
        Begin
          Inc(NoOfDay);
          Initialdate:=Initialdate+1;

        End;
      End;
      TotalBedCharge:=TotalBedCharge+NbedCharge*NoOfDay;
      Result:=TotalBedCharge;
    End
    Else
    Begin
      Result:=NbedCharge;
    End;

    PreDate:=FieldByName('OutDate').AsString;
  End;}
End;

Procedure TDMhospital.BedCharge(const RealtableName:String);
Begin
  QueryInpBedCharge.DatabaseName:=gs_TempPath;
  With QueryInpBedCharge Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      Add('SELECT Max(Amount) As BedAmt,Max(DDate) AS DDate,Service from '+RealtableName);
      Add('Where ServiceType='+Chr(39)+'Bed Charge'+Chr(39));
      Add('Group by InptDate,Service');
    End;
    Open;
  End;
End;

Function TDMhospital.TotalBedCharge:Double;
Var TotalAmount:Double;
   NbedAmt:String;
Begin
  TotalAmount:=0;
  BedCharge('TempAccount.db');
  With QueryInpBedCharge Do
  Begin
    First;
    While Not Eof Do
    Begin
      IF FieldByName('BedAmt').AsString='' Then
        NbedAmt:='0'
      Else
        NbedAmt:=FloatToStr(FieldByName('BedAmt').AsFloat);
      TotalAmount:=TotalAmount+StrToFloat(NbedAmt);
      Next;
    End;
    TotalBedCharge:=TotalAmount;
  End;
End;
{Function TDMhospital.DueBedCharge(const RealtableName:String):Double;
Begin
  QueryInpBedCharge.DatabaseName:=DmHospital.Temppath;
  With QueryInpBedCharge Do
  Begin
    Close;
    With SQL Do
    Begin
      Clear;
      Add('SELECT Sum(Max(Amount))AS BedAmount from '+RealtableName);
      Add('Where ServiceType='+Chr(39)+'Bed Charge'+Chr(39));
      Add('Group by InptDate');
    End;
    Open;
    DueBedCharge:=FieldByName('BedAmount').AsFloat;
  End;
End;  }


Function TdmHospital.GetNewLongIntKeyValue(Const RealTableName,KeyFieldName:String):LongInt;
begin
  With QueryTemp do
  begin
    close;
    with SQL do
    begin
      Clear;
      add('Select max('+KeyFieldName+') AS nMax from '+RealTableName)
    end;
    open;
    result:=fieldByName('nMax').AsInteger+1;
    close;
  end;
end;



procedure TDMhospital.DataModuleCreate(Sender: TObject);
begin
  //GVat:=5;
  CreateTableTempAccount;
end;

end.
