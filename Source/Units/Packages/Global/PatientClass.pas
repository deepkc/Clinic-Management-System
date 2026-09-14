unit PatientClass;

interface

Uses
     SysUtils,Classes, dm,
     Db,Dbtables, DBAccess, Ora, OraSmart, MemDS, OraError;

Type
     TPatient=Class(TObject)
     Private
          FPatientName:String;
          FGender:String;
          FAge:Integer;
          FAgeType:String;
          FAgeGender:String;
          FPatientID:Integer;
          FMemberID:Integer;
          FMemberNo:String;
          FRemarks:String;
          FAddress:String;
          FContactNo:String;
     Public
          Function LoadData(PatientId:Integer):String;
          Property PatientId:Integer Read FPatientID Write FPatientID;
          Property Gender:String Read FGender Write FGender;
          Property AgeGender:String Read FAgeGender Write FAgeGender;
          Property Age:Integer Read FAge Write FAge;
          Property AgeType:String Read FAgeType Write FAgeType;
          Property PatientName:String Read FPatientName Write FPatientName;
          Property MemberId:Integer Read FMemberID Write FMemberId;
          Property MemberNo:String Read FMemberNo Write FMemberNo;
          Property Remarks:String Read FRemarks Write FRemarks;
          Property Address:String Read FAddress Write FAddress;
          Property ContactNo:String Read FContactNo Write FContactNo;

     End;


Var
     Qry:TOraQuery;


implementation

uses Fxn;

{ TPatient }

function TPatient.LoadData(PatientID:Integer): String;
begin
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          SQL.Clear;
          Session:=Dm_Hospital.Db;
          SQL.Add('Select * from '+gs_DB_UserName+'.Vw_hs_PatientMain');
          SQL.Add('Where PatientID='+IntToStr(PatientId));
          Open;
          FPatientName:=FieldByName('PatientName').AsString;
          FGender:=FieldByName('Gender').AsString;
          FAge:=FieldByName('Age').AsInteger;
          FAgeType:=FieldByName('AgeType').AsString;
          FAgeGender:=FieldByName('CURRENTAGEGENDER').AsString;
          FRemarks:=FieldByName('Remarks').AsString;
          FAddress:=FieldByName('Address').AsString;
          FContactNo:=FieldByName('mobileno').AsString;
          FPatientID:=PatientId;
//          SQL.Clear;
//          SQL.Add('Select * from Vw_MemberMain');
//          SQL.Add('Where PatientID='+IntToStr(PatientId));
//          Open;
//          FMemberID:=FieldByName('MemberId').AsInteger;
//          FMemberNo:=FieldByName('MemberNo').AsString;
     end;
end;

end.
