unit Unit_Master;

interface

Uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dbTables,db,
     Dialogs,fxn;

     Procedure SavePatient(NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;

     Procedure UpdatePatient(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;

     Procedure SaveNonPatient(PATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;

     Procedure UpdateNONPatient(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;

     Procedure SaveAppointment(APPID,PATIENTID,NONPATIENTID,QUENO,DATAPOSTBY : Integer;
                               APPDATE,APPTIME,DOCCODE,ISURGENT,APPSTATUS,CHECKUPSTATUS,APPTAKENDATE,
                               APPTAKENTIME,DATAPOSTDATE,DATAPOSTTIME,MACID: String);stdcall;

     Procedure UpdateAppointment(APPID,PATIENTID,NONPATIENTID,QUENO,DATAPOSTBY: Integer;
                               APPDATE,APPTIME,DOCCODE,ISURGENT,APPSTATUS,CHECKUPSTATUS,APPTAKENDATE,
                               APPTAKENTIME,DATAPOSTDATE,DATAPOSTTIME,MACID: String);stdcall;

     Procedure SavePatientVisit(PATIENTID,NONPATIENTID,REFFEREDBYID,SCHEMEID,COMMUNITYID,DATAPOSTBY:Integer;
                           VISITDATE,VISITTIME,APPOINTMENTTIME,DOCVISITTIME,SVRCOMPLETETIME,DEPCODE,SUBDEP,DOCCODE,DUTYDOCCODE,REFFBYDEG,
                           REMARKS,VISITSTATUS,PATIENTTYPE,BILLINGSTATUS,VISITTYPE,CHECKUPSTATUS,DATAPOSTDATE,
                           DATAPOSTTIME,MACID:String);stdcall;
     Procedure SaveVisitCancel(VISITID,PATIENTID,DATAPOSTBY : Integer;
                           CANCELDATE,CANCELTIME,DATAPOSTDATE,DATAPOSTTIME,MACID:String);stdcall;

     Procedure UpdatePatientVisitCancel(VISITID:Integer);

     Procedure SaveBillMaster(PATIENTID,INPATIENTID,BILLBY : Integer;
                              GROSSTOTAL,TAXAMT,DISCOUNTTOTAL : Double;
                              BILLNO,BILLDATE,BILLTIME,REFDOCCODE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,REMARKS,MACID:String);stdcall;

     Procedure SaveBillDetail(PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;

     Procedure SaveBillDetail_Dollar(PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,DOLLARAMOUNT,DOLLARVATAMT,DOLLARTOTALAMOUNT,DOLLAREXRATE : Double;
                              BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;

     Procedure SaveReundDetail(PATIENTID,INPATIENTID,PATIENTTESTID,REFUNDBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,REFUNDDATE,REFUNDTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;

     Procedure SaveTestCancel(BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,REFUNDBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,REFUNDDATE,REFUNDTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;

     Function GetMaxId(TableName,FieldName :String):Integer;
     Var Query,Qry : TQuery;
         gi_PatientId, gi_BillDetailId,gi_RefundDetailID,gi_TestCancelID : Integer;


implementation

Function GetMaxId(TableName,FieldName :String):Integer;
Begin
     Qry := TQry.Create(nil);
     With Qry do
     Begin
          Close;
          DatabaseName := gs_DatabaseName;
          sql.Clear;
          sql.Add(' Select NVL(Max('+FieldName+'),0) as MaxVal From '+TableName);
          Open;
          Result:=FieldByName('MaxVal').AsInteger+1;
     End;
     Qry.Free;
End;


Procedure SavePatient(NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;
Begin
     gi_PatientId:=GetMaxId('PatientMain','PATIENTID');
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Insert Into PatientMain(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY,');
          sql.Add(' TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,');
          sql.Add(' EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,');
          sql.Add(' DATAPOSTDATE,DATAPOSTTIME,MacID)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(gi_PatientId)+','+IntToStr(NONPATIENTID)+','+IntToStr(Age));
          sql.Add(' ,'+IntToStr(COUNTRYID)+','+IntToStr(ZoneID)+','+IntToStr(DistrictID)+','+IntToStr(VDCID)+','+IntToStr(WardNo));
          sql.Add(' ,'+IntToStr(OCCUPATIONID)+','+IntToStr(RELATIONID)+','+IntToStr(RELIGIONID)+','+IntToStr(EDUCATIONID)+','+IntToStr(DATAPOSTBY));
          sql.Add(' ,'+#39+TITLE+#39+','+#39+FNAME+#39+','+#39+MNAME+#39+','+#39+LNAME+#39+','+#39+PATIENTNAME+#39+','+#39+GENDER+#39);
          sql.Add(' ,'+#39+AGETYPE+#39+','+#39+DOBVS+#39+','+#39+DOBAD+#39+','+#39+MARITALSTATUS+#39+','+#39+ADDRESS+#39+','+#39+PHONENO+#39+','+#39+MOBILENO+#39);
          sql.Add(' ,'+#39+EMAIL+#39+','+#39+COMPANY+#39+','+#39+EDUCATION+#39+','+#39+PATIENTTYPE+#39+','+#39+NEXTTOKIN+#39);
          sql.Add(' ,'+#39+CARDNO+#39+','+#39+REMARKS+#39+','+#39+REGDATE+#39+','+#39+REGTIME+#39+','+#39+DATAPOSTDATE+#39+','+#39+DATAPOSTTIME+#39);
          sql.Add(' ,'+#39+MacID+#39);
          sql.Add(' )');
          ExecSQL;
     End;
     Query.Free;
End;

Procedure UpdatePatient(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Update PatientMain ');
          sql.Add(' Set ');
          sql.Add(' NONPATIENTID='+IntToStr(NONPATIENTID)+',AGE='+IntToStr(Age));
          sql.Add(' ,COUNTRYID='+IntToStr(COUNTRYID)+',ZONEID='+IntToStr(ZoneID)+',DISTRICTID='+IntToStr(DISTRICTID));
          sql.Add(' ,VDCID='+IntToStr(VDCID)+',WARDNO='+IntToStr(WardNo));
          sql.Add(' ,OCCUPATIONID='+IntToStr(OCCUPATIONID)+',RELATIONID='+IntToStr(RELATIONID)+',RELIGIONID='+IntToStr(RELIGIONID)+',EDUCATIONID='+IntToStr(EDUCATIONID)+' ,DATAPOSTBY='+IntToStr(DATAPOSTBY));
          sql.Add(' ,TITLE='+#39+TITLE+#39+',FNAME='+#39+FNAME+#39+',MNAME='+#39+MNAME+#39+',LNAME='+#39+LNAME+#39+',PATIENTNAME='+#39+PATIENTNAME+#39);
          sql.Add(' ,GENDER='+#39+GENDER+#39+',AGETYPE='+#39+AGETYPE+#39+',DOBVS='+#39+DOBVS+#39+',DOBAD='+#39+DOBAD+#39);
          sql.Add(' ,MARITALSTATUS='+#39+MARITALSTATUS+#39+',ADDRESS='+#39+ADDRESS+#39+',PHONENO='+#39+PHONENO+#39+',MOBILENO='+#39+MOBILENO+#39);
          sql.Add(' ,EMAIL='+#39+EMAIL+#39+',COMPANY='+#39+COMPANY+#39+',PATIENTTYPE='+#39+PATIENTTYPE+#39);
          sql.Add(' ,NEXTTOKIN='+#39+NEXTTOKIN+#39+',CARDNO='+#39+CARDNO+#39+',REMARKS='+#39+REMARKS+#39);
          sql.Add(' ,DATAPOSTDATE='+#39+DATAPOSTDATE+#39+',DATAPOSTTIME='+#39+DATAPOSTTIME+#39+',MacID='+#39+MacID+#39);
          sql.Add(' where PATIENTID='+IntToStr(PATIENTID));
          ExecSQL;
     End;
     Query.Free;
End;


Procedure SaveNonPatient(PATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Insert Into PatientMain(NONPATIENTID,PATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,EDUCATIONID,DATAPOSTBY,');
          sql.Add(' TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,');
          sql.Add(' EMAIL,COMPANY,EDUCATION,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,REGDATE,REGTIME,');
          sql.Add(' DATAPOSTDATE,DATAPOSTTIME,MacID)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(GetMaxId('NonPatient','NonPATIENTID'))+','+IntToStr(PATIENTID)+','+IntToStr(Age));
          sql.Add(' ,'+IntToStr(COUNTRYID)+','+IntToStr(ZONEID)+','+IntToStr(DISTRICTID)+','+IntToStr(VDCID)+','+IntToStr(WARDNO));
          sql.Add(' ,'+IntToStr(OCCUPATIONID)+','+IntToStr(RELATIONID)+','+IntToStr(RELIGIONID)+','+IntToStr(EDUCATIONID)+','+IntToStr(DATAPOSTBY));
          sql.Add(' ,'+#39+TITLE+#39+','+#39+FNAME+#39+','+#39+MNAME+#39+','+#39+LNAME+#39+','+#39+PATIENTNAME+#39+','+#39+GENDER+#39);
          sql.Add(' ,'+#39+AGETYPE+#39+','+#39+DOBVS+#39+','+#39+DOBAD+#39+','+#39+MARITALSTATUS+#39+','+#39+ADDRESS+#39+','+#39+PHONENO+#39+','+#39+MOBILENO+#39);
          sql.Add(' ,'+#39+EMAIL+#39+','+#39+COMPANY+#39+','+#39+PATIENTTYPE+#39+','+#39+NEXTTOKIN+#39);
          sql.Add(' ,'+#39+CARDNO+#39+','+#39+REMARKS+#39+','+#39+REGDATE+#39+','+#39+REGTIME+#39+','+#39+DATAPOSTDATE+#39+','+#39+DATAPOSTTIME+#39);
          sql.Add(' ,'+#39+MacID+#39);
          sql.Add(' )');
          ExecSQL;
     End;
     Query.Free;
End;


Procedure UpdateNONPatient(PATIENTID,NONPATIENTID,AGE,COUNTRYID,ZONEID,DISTRICTID,VDCID,WARDNO,OCCUPATIONID,RELATIONID,RELIGIONID,DATAPOSTBY:Integer;
                              TITLE,FNAME,MNAME,LNAME,PATIENTNAME,GENDER,AGETYPE,DOBVS,DOBAD,MARITALSTATUS,ADDRESS,PHONENO,MOBILENO,
                              EMAIL,COMPANY,EDUCATION,PATIENTTYPE,NEXTTOKIN,CARDNO,REMARKS,
                              DATAPOSTDATE,DATAPOSTTIME,MacID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Update NONPatient ');
          sql.Add(' Set ');
          sql.Add(' PATIENTID='+IntToStr(PATIENTID)+',AGE='+IntToStr(Age));
          sql.Add(' ,COUNTRYID='+IntToStr(COUNTRYID)+',ZONEID='+IntToStr(ZoneID)+',DISTRICTID='+IntToStr(DISTRICTID));
          sql.Add(' ,VDCID='+IntToStr(VDCID)+',WARDNO='+IntToStr(WardNo));
          sql.Add(' ,OCCUPATIONID='+IntToStr(OCCUPATIONID)+',RELATIONID='+IntToStr(RELATIONID)+',RELIGIONID='+IntToStr(RELIGIONID)+',DATAPOSTBY='+IntToStr(DATAPOSTBY));
          sql.Add(' ,TITLE='+#39+TITLE+#39+',FNAME='+#39+FNAME+#39+',MNAME='+#39+MNAME+#39+',LNAME='+#39+LNAME+#39+',PATIENTNAME='+#39+PATIENTNAME+#39);
          sql.Add(' ,GENDER='+#39+GENDER+#39+',AGETYPE='+#39+AGETYPE+#39+',DOBVS='+#39+DOBVS+#39+',DOBAD='+#39+DOBAD+#39);
          sql.Add(' ,MARITALSTATUS='+#39+MARITALSTATUS+#39+',ADDRESS='+#39+ADDRESS+#39+',PHONENO='+#39+PHONENO+#39+',MOBILENO='+#39+MOBILENO+#39);
          sql.Add(' ,EMAIL='+#39+EMAIL+#39+',COMPANY='+#39+COMPANY+#39+',EDUCATION='+#39+EDUCATION+#39+',PATIENTTYPE='+#39+PATIENTTYPE+#39);
          sql.Add(' ,NEXTTOKIN='+#39+NEXTTOKIN+#39+',CARDNO='+#39+CARDNO+#39+',REMARKS='+#39+REMARKS+#39);
          sql.Add(' ,DATAPOSTDATE='+#39+DATAPOSTDATE+#39+',DATAPOSTTIME='+#39+DATAPOSTTIME+#39+',MacID='+#39+MacID+#39);
          sql.Add(' where NONPATIENTID='+IntToStr(PATIENTID));
          ExecSQL;
     End;
     Query.Free;
End;


Procedure SaveAppointment(APPID,PATIENTID,NONPATIENTID,QUENO,DATAPOSTBY: Integer;
                               APPDATE,APPTIME,DOCCODE,ISURGENT,APPSTATUS,CHECKUPSTATUS,APPTAKENDATE,
                               APPTAKENTIME,DATAPOSTDATE,DATAPOSTTIME,MACID: String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Insert Into Appointment(APPID,PATIENTID,NONPATIENTID,QUENO,');
          sql.Add(' APPDATE,APPTIME,DOCCODE,ISURGENT,APPSTATUS,CHECKUPSTATUS,APPTAKENDATE,');
          sql.Add(' APPTAKENTIME,DATAPOSTDATE,DATAPOSTTIME,DATAPOSTBY,MACID)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(GetMaxId('Appointment','APPID'))+','+IntToStr(PATIENTID)+','+IntToStr(NONPATIENTID));
          sql.Add(' ,'+','+IntToStr(QUENO)+','+IntToStr(DATAPOSTBY));
          sql.Add(' ,'+#39+APPDATE+#39+','+#39+APPTIME+#39+','+#39+DOCCODE+#39+','+#39+ISURGENT+#39+','+#39+APPSTATUS+#39+','+#39+CHECKUPSTATUS+#39);
          sql.Add(' ,'+#39+APPTAKENDATE+#39+','+#39+APPTAKENTIME+#39+','+#39+DATAPOSTDATE+#39+','+#39+DATAPOSTTIME+#39+','+#39+MACID+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;


Procedure SavePatientVisit(PATIENTID,NONPATIENTID,REFFEREDBYID,SCHEMEID,COMMUNITYID,DATAPOSTBY:Integer;
                           VISITDATE,VISITTIME,APPOINTMENTTIME,DOCVISITTIME,SVRCOMPLETETIME,DEPCODE,SUBDEP,DOCCODE,DUTYDOCCODE,REFFBYDEG,
                           REMARKS,VISITSTATUS,PATIENTTYPE,BILLINGSTATUS,VISITTYPE,CHECKUPSTATUS,DATAPOSTDATE,
                           DATAPOSTTIME,MACID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Insert Into PatientVisit(VISITID,PATIENTID,NONPATIENTID,REFFEREDBYID,SCHEMEID,COMMUNITYID,DATAPOSTBY,');
          sql.Add(' VISITDATE,VISITTIME,APPOINTMENTTIME,DOCVISITTIME,SVRCOMPLETETIME,DEPCODE,SUBDEP,DOCCODE,DUTYDOCCODE,REFFBYDEG,');
          sql.Add(' VISITSTATUS,PATIENTTYPE,BILLINGSTATUS,VISITTYPE,CHECKUPSTATUS,DATAPOSTDATE,');
          sql.Add(' DATAPOSTTIME,MACID)');
          sql.Add(' Values');
          sql.Add(' ('+IntToStr(GetMaxId('PatientVisit','VISITID'))+','+IntToStr(PATIENTID)+','+IntToStr(NONPATIENTID)+','+IntToStr(REFFEREDBYID));
          sql.Add(' ,'+IntToStr(SCHEMEID)+','+IntToStr(COMMUNITYID)+','+IntToStr(DATAPOSTBY));
          sql.Add(' ,'+#39+VISITDATE+#39+','+#39+VISITTIME+#39+','+#39+APPOINTMENTTIME+#39+','+#39+DOCVISITTIME+#39+','+#39+SVRCOMPLETETIME+#39);
          sql.Add(' ,'+#39+DEPCODE+#39+','+#39+SUBDEP+#39+','+#39+REFFBYDEG+#39+','+#39+VISITSTATUS+#39+','+#39+PATIENTTYPE+#39+','+#39+BILLINGSTATUS+#39);
          sql.Add(' ,'+#39+VISITTYPE+#39+','+#39+CHECKUPSTATUS+#39+','+#39+DATAPOSTDATE+#39+','+#39+DATAPOSTTIME+#39+','+#39+MACID+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;


Procedure UpdatePatientVisitCancel(VISITID:Integer);
Begin
     Qry:=TQry.Create(nil);
     With Qry do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Update PatientVisit Set VisitStatus=''C'' where VisitId='+IntToStr(VISITID));
          ExecSQL;
     End;
     Qry.Free;
End;


Procedure SaveVisitCancel(VISITID,PATIENTID,DATAPOSTBY : Integer;
                           CANCELDATE,CANCELTIME,DATAPOSTDATE,DATAPOSTTIME,MACID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' Insert Into VISITCANCEL(VISITCANCELID,VISITID,PATIENTID,DATAPOSTBY,CANCELDATE,CANCELTIME,DATAPOSTDATE,DATAPOSTTIME,MACID)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(GetMaxId('VISITCANCEL','VISITCANCELID'))+','+IntToStr(VISITID)+','+IntToStr(PATIENTID)+','+IntToStr(DATAPOSTBY));
          sql.Add(' ,'+#39+CANCELDATE+#39+','+#39+CANCELTIME+#39+','+#39+DATAPOSTDATE+#39+','+#39+DATAPOSTTIME+#39+','+#39+MACID+#39+')');
          ExecSQL;

          { Update PatientVisit For VisitCancelStatus }
          UpdatePatientVisitCancel(VISITID);
     End;
     Query.Free;
End;


Procedure UpdateAppointment(APPID,PATIENTID,NONPATIENTID,QUENO,DATAPOSTBY: Integer;
                               APPDATE,APPTIME,DOCCODE,ISURGENT,APPSTATUS,CHECKUPSTATUS,APPTAKENDATE,
                               APPTAKENTIME,DATAPOSTDATE,DATAPOSTTIME,MACID: String);stdcall;
begin
     //
end;


Procedure SaveBillMaster(PATIENTID,INPATIENTID,BILLBY : Integer;
                              GROSSTOTAL,TAXAMT,DISCOUNTTOTAL : Double;
                              BILLNO,BILLDATE,BILLTIME,REFDOCCODE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,REMARKS,MACID:String);stdcall;
Begin
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' INSERT INTO BILLMASTER(PATIENTID,INPATIENTID,BILLBY,GROSSTOTAL,TAXAMT,DISCOUNTTOTAL,');
          sql.Add(' BILLNO,BILLDATE,BILLTIME,CRBILLNO,CRBILLDATE,CRBILLTIME,CRBILLBY,');
          sql.Add(' REFDOCCODE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,REMARKS,MACID)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(PATIENTID)+','+IntToStr(INPATIENTID)+','+IntToStr(BILLBY)+','+FloatToStr(GROSSTOTAL));
          sql.Add(' ,'+FloatToStr(TAXAMT)+','+FloatToStr(DISCOUNTTOTAL)+','+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39);

          if PAYTYPE='CREDIT' then
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39+','+IntToStr(BILLBY));

          sql.Add(' ,'+#39+REFDOCCODE+#39+','+#39+BILLTYPE+#39+','+#39+PAYTYPE+#39+','+#39+RATETYPE+#39+','+#39+PATIENTTYPE+#39);
          sql.Add(' ,'+#39+REMARKS+#39+','+#39+MACID+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;

Procedure SaveBillDetail(PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;
Begin
     gi_BillDetailId:=GetMaxId('BILLDETAIL','BILLDETAILID');
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' INSERT INTO BILLDETAIL(BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID,');
          sql.Add(' AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,BILLNO,BILLDATE,BILLTIME,CRBILLNO,CRBILLDATE,CRBILLTIME,CRBILLBY,SERVICE,SERVICETYPE,');
          sql.Add(' BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,DOCCODE,REFDOCCODE,EMRDUTYDOC,ISFRACTIONABLETEST,ISPACKAGETEST,ISOT)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(gi_BillDetailId)+','+IntToStr(PATIENTID)+','+IntToStr(INPATIENTID)+','+IntToStr(PATIENTTESTID)+','+','+IntToStr(BILLBY));
          sql.Add(' ,'+IntToStr(COMMUNITYID)+','+IntToStr(SCHEMEID)+','+IntToStr(DEPID)+','+IntToStr(CLINICALDEPID)+','+IntToStr(ACCHEADID));
          sql.Add(' ,'+Format('%.4f',[AMOUNT])+','+FloatToStr(QTY)+','+Format('%.4f',[VATAMT])+','+Format('%.4f',[TOTALAMOUNT])+','+Format('%.4f',[DISPER])+','+Format('%.4f',[DISPERADD]));
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39);

          if PayType='CREDIT' then
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39+','+IntTOStr(BILLBY));

          sql.Add(' ,'+#39+SERVICE+#39+','+#39+SERVICETYPE+#39+','+#39+BILLTYPE+#39+','+#39+PAYTYPE+#39+','+#39+RATETYPE+#39+','+#39+PATIENTTYPE+#39);
          sql.Add(' ,'+#39+DOCCODE+#39+','+#39+REFDOCCODE+#39+','+#39+EMRDUTYDOC+#39+','+#39+ISFRACTIONABLETEST+#39+','+#39+ISPACKAGETEST+#39+','+#39+ISOT+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;


Procedure SaveBillDetail_Dollar(PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,DOLLARAMOUNT,DOLLARVATAMT,DOLLARTOTALAMOUNT,DOLLAREXRATE : Double;
                              BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;
Begin
     gi_BillDetailId:=GetMaxId('BILLDETAIL','BILLDETAILID');
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' INSERT INTO BILLDETAIL(BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,BILLBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID,');
          sql.Add(' AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,BILLNO,BILLDATE,BILLTIME,CRBILLNO,CRBILLDATE,CRBILLTIME,CRBILLBY,SERVICE,SERVICETYPE,');
          sql.Add(' BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,DOCCODE,REFDOCCODE,EMRDUTYDOC,ISFRACTIONABLETEST,ISPACKAGETEST,ISOT)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(gi_BillDetailId)+','+IntToStr(PATIENTID)+','+IntToStr(INPATIENTID)+','+IntToStr(PATIENTTESTID)+','+','+IntToStr(BILLBY));
          sql.Add(' ,'+IntToStr(COMMUNITYID)+','+IntToStr(SCHEMEID)+','+IntToStr(DEPID)+','+IntToStr(CLINICALDEPID)+','+IntToStr(ACCHEADID));
          sql.Add(' ,'+Format('%.4f',[AMOUNT])+','+FloatToStr(QTY)+','+Format('%.4f',[VATAMT])+','+Format('%.4f',[TOTALAMOUNT])+','+Format('%.4f',[DISPER])+','+Format('%.4f',[DISPERADD]));
          sql.Add(' ,'+Format('%.4f',[DOLLARAMOUNT])+','+Format('%.4f',[DOLLARVATAMT])+','+Format('%.4f',[DOLLARTOTALAMOUNT])+','+Format('%.4f',[DOLLAREXRATE]));
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39);

          if PayType='CREDIT' then
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+BILLDATE+#39+','+#39+BILLTIME+#39+','+IntTOStr(BILLBY));

          sql.Add(' ,'+#39+SERVICE+#39+','+#39+SERVICETYPE+#39+','+#39+BILLTYPE+#39+','+#39+PAYTYPE+#39+','+#39+RATETYPE+#39+','+#39+PATIENTTYPE+#39);
          sql.Add(' ,'+#39+DOCCODE+#39+','+#39+REFDOCCODE+#39+','+#39+EMRDUTYDOC+#39+','+#39+ISFRACTIONABLETEST+#39+','+#39+ISPACKAGETEST+#39+','+#39+ISOT+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;



Procedure SaveReundDetail(PATIENTID,INPATIENTID,PATIENTTESTID,REFUNDBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,REFUNDDATE,REFUNDTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;
Begin
     gi_RefundDetailID:=GetMaxId('REFUNDDETAIL','REFUNDDETAILID');
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' INSERT INTO REFUNDDETAIL(REFUNDDETAILID,BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,');
          sql.Add(' COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID,');
          sql.Add(' AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,');
          sql.Add(' BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,DOCCODE,REFDOCCODE,EMRDUTYDOC,ISFRACTIONABLETEST,ISPACKAGETEST,ISOT)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(gi_RefundDetailID)+','+IntToStr(gi_BillDetailId)+','+IntToStr(PATIENTID));
          sql.Add(' ,'+IntToStr(INPATIENTID)+','+IntToStr(PATIENTTESTID)+','+','+IntToStr(REFUNDBY));
          sql.Add(' ,'+IntToStr(COMMUNITYID)+','+IntToStr(SCHEMEID)+','+IntToStr(DEPID)+','+IntToStr(CLINICALDEPID)+','+IntToStr(ACCHEADID));
          sql.Add(' ,'+Format('%.4f',[AMOUNT])+','+FloatToStr(QTY)+','+Format('%.4f',[VATAMT])+','+Format('%.4f',[TOTALAMOUNT]));
          sql.Add(' ,'+Format('%.4f',[DISPER])+','+Format('%.4f',[DISPERADD]));
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+REFUNDDATE+#39+','+#39+REFUNDTIME+#39);
          sql.Add(' ,'+#39+SERVICE+#39+','+#39+SERVICETYPE+#39+','+#39+BILLTYPE+#39+','+#39+PAYTYPE+#39+','+#39+RATETYPE+#39+','+#39+PATIENTTYPE+#39);
          sql.Add(' ,'+#39+DOCCODE+#39+','+#39+REFDOCCODE+#39+','+#39+EMRDUTYDOC+#39+','+#39+ISFRACTIONABLETEST+#39+','+#39+ISPACKAGETEST+#39+','+#39+ISOT+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;


Procedure SaveTestCancel(BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,REFUNDBY,COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID : Integer;
                              AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD : Double;
                              BILLNO,REFUNDDATE,REFUNDTIME,SERVICE,SERVICETYPE,BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,MEMBERNO,DOCCODE,REFDOCCODE,EMRDUTYDOC,
                              ISFRACTIONABLETEST,ISPACKAGETEST,ISOT : String);stdcall;
Begin
     gi_TestCancelID:=GetMaxId('TESTCANCEL','TESTCANCELID');
     Query:=TQuery.Create(nil);
     With Query do
     Begin
          Close;
          Databasename:=gs_DatabaseName;
          sql.Clear;
          sql.Add(' INSERT INTO TESTCANCEL(TESTCANCELID,BILLDETAILID,PATIENTID,INPATIENTID,PATIENTTESTID,');
          sql.Add(' COMMUNITYID,SCHEMEID,DEPID,CLINICALDEPID,ACCHEADID,');
          sql.Add(' AMOUNT,QTY,VATAMT,TOTALAMOUNT,DISPER,DISPERADD,BILLNO,BILLDATE,BILLTIME,SERVICE,SERVICETYPE,');
          sql.Add(' BILLTYPE,PAYTYPE,RATETYPE,PATIENTTYPE,DOCCODE,REFDOCCODE,EMRDUTYDOC,ISFRACTIONABLETEST,ISPACKAGETEST,ISOT)');
          sql.Add(' Values ');
          sql.Add(' ('+IntToStr(gi_TestCancelID)+','+IntToStr(gi_BillDetailId)+','+IntToStr(PATIENTID));
          sql.Add(' ,'+IntToStr(INPATIENTID)+','+IntToStr(PATIENTTESTID)+','+','+IntToStr(REFUNDBY));
          sql.Add(' ,'+IntToStr(COMMUNITYID)+','+IntToStr(SCHEMEID)+','+IntToStr(DEPID)+','+IntToStr(CLINICALDEPID)+','+IntToStr(ACCHEADID));
          sql.Add(' ,'+Format('%.4f',[AMOUNT])+','+FloatToStr(QTY)+','+Format('%.4f',[VATAMT])+','+Format('%.4f',[TOTALAMOUNT]));
          sql.Add(' ,'+Format('%.4f',[DISPER])+','+Format('%.4f',[DISPERADD]));
          sql.Add(' ,'+#39+BILLNO+#39+','+#39+REFUNDDATE+#39+','+#39+REFUNDTIME+#39);
          sql.Add(' ,'+#39+SERVICE+#39+','+#39+SERVICETYPE+#39+','+#39+BILLTYPE+#39+','+#39+PAYTYPE+#39+','+#39+RATETYPE+#39+','+#39+PATIENTTYPE+#39);
          sql.Add(' ,'+#39+DOCCODE+#39+','+#39+REFDOCCODE+#39+','+#39+EMRDUTYDOC+#39+','+#39+ISFRACTIONABLETEST+#39+','+#39+ISPACKAGETEST+#39+','+#39+ISOT+#39+')');
          ExecSQL;
     End;
     Query.Free;
End;


exports
     SavePatient,UpdatePatient,SaveNonPatient,UpdateNONPatient,SaveAppointment,
     UpdateAppointment,SavePatientVisit,SaveVisitCancel,SaveBillMaster,SaveBillDetail,SaveBillDetail_Dollar,
     SaveReundDetail,SaveTestCancel;


end.
