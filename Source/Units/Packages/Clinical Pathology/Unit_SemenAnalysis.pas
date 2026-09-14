unit Unit_SemenAnalysis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,dbtables, DBAccess, Ora, OraSmart, MemDS, OraError,
  Fxn, Dm,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TForm_SemenAnalysis = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape7: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    lbl_LastName: TQRLabel;
    lbl_FirstName: TQRLabel;
    lbl_HosNo: TQRLabel;
    lbl_DobAge: TQRLabel;
    lbl_NoofDays: TQRLabel;
    Lbl_Ipno: TQRLabel;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    lbl_orderingphysician: TQRLabel;
    lbl_LabNo: TQRLabel;
    Lbl_TestPerformedBy: TQRLabel;
    lbl_ResleasingSignature: TQRLabel;
    lbl_ReleaseDate: TQRLabel;
    lbl_CollectedDate: TQRLabel;
    lbl_ReceivedDate: TQRLabel;
    lbl_PerformedDate: TQRLabel;
    lbl_CollectedTime: TQRLabel;
    lbl_ReceivedTime: TQRLabel;
    lbl_PerformedTime: TQRLabel;
    lbl_liquefaction: TQRLabel;
    lbl_SemenViscosity: TQRLabel;
    lbl_Appearance: TQRLabel;
    lbl_Volume: TQRLabel;
    lbl_Ph: TQRLabel;
    lbl_SpermConc: TQRLabel;
    lbl_motility: TQRLabel;
    lbl_pr: TQRLabel;
    lbl_np: TQRLabel;
    lbl_Im: TQRLabel;
    lbl_Aggregation: TQRLabel;
    lbl_Normalforms: TQRLabel;
    lbl_HeadDefects: TQRLabel;
    lbl_neck: TQRLabel;
    lbl_tail: TQRLabel;
    lbl_Enstain: TQRLabel;
    lbl_elements: TQRLabel;
    lbl_others: TQRLabel;
    lbl_Comment: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure LoadReport;
  end;

var
  Form_SemenAnalysis: TForm_SemenAnalysis;

implementation

{$R *.dfm}

procedure TForm_SemenAnalysis.FormCreate(Sender: TObject);
begin
     LoadReport;
end;

procedure TForm_SemenAnalysis.LoadReport;
Var
     Qry:TOraQuery;
begin
     LoadPatientData(gi_PatientID);
     lbl_LastName.Caption:=Gs_Lname;
     lbl_FirstName.Caption:=Gs_Fname;
     lbl_HosNo.Caption:=IntToStr(gi_PatientID);
     Lbl_Ipno.Caption:=IntToStr(gi_InPatientID);
     lbl_DobAge.Caption:=Gs_DobAD+' ('+Gs_Age+')';
     lbl_orderingphysician.Caption:=GetRefDoc(Gs_BillNo);
     lbl_LabNo.Caption:=gs_SampleNo;

     lbl_Comment.Caption:=Trim(LoadReportComment(gi_PatientID,gs_TestDate,IntToStr(gi_PatientTestID)));

     Qry:=TOraQuery.Create(Nil);
     With Qry do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL.Clear;
          SQL.Add('Select (Select Username from lab_usermain where userid=pt.findingPostBy)FindingPostBy from PatientTest pt');
          SQL.Add('Where PatientTestID='+IntToStr(gi_PatientTestID));
          Open;
          Lbl_TestPerformedBy.Caption:=FieldByName('FindingPostBy').AsString;
          SQL.Clear;
          SQL.Add('Select * from SampleCollection ');
          SQL.Add('Where PatientTestID='+IntToStr(gi_PatientTestID));
          Open;
          lbl_CollectedDate.Caption:=FieldByName('SampleTakenDate').AsString;
          lbl_CollectedTime.Caption:=FieldByName('SampleTakenTime').AsString;

          SQL.Clear;
          SQL.Add('Select (Select Test From Test Where TestID=Ptd.TestId)Test,Ptd.* from PatientTestDetail Ptd ');
          SQL.Add('Where PatientTestID='+IntToStr(gi_PatientTestID));
          Open;
          while not eof do
          begin
               if Trim(FieldByName('Test').AsString)='Abstinence' then
                    lbl_NoofDays.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Date Test Performed' then
                    lbl_PerformedDate.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Time Test Performed' Then //'Time Test Received' then
               Begin
                    if Trim(Qry.FieldByName('Finding').AsString)<>'' then
                    Begin
                         lbl_PerformedTime.Enabled:=True;
                         lbl_PerformedTime.Caption:=Qry.FieldByName('Finding').AsString;
                    End
                    Else
                    lbl_PerformedTime.Enabled:=False;
               End
               else if Trim(FieldByName('Test').AsString)='Date Sample Received' then
                    lbl_ReceivedDate.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Time Sample Received' then
                    lbl_ReceivedTime.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Liquefaction' then
                    lbl_liquefaction.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Semen Viscosity' then
                    lbl_SemenViscosity.Caption:=FieldByName('Finding').AsString
               else if Trim(Qry.FieldByName('Test').AsString)='Appearance : Color' then
                    lbl_Appearance.Caption:=Qry.FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Semen Volume' then
                    lbl_Volume.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Semen pH' then
                    lbl_Ph.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Sperm Conc' then
                    lbl_SpermConc.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Motility (PR + NP)' then
                    lbl_motility.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Progressively Motile (PR)' then
                    lbl_pr.Caption:=FieldByName('Finding').AsString
               else if Trim(Qry.FieldByName('Test').AsString)='Nonprogressively Motile (NP)' then
                    lbl_np.Caption:=Qry.FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Immotile (IM)' then
                    lbl_Im.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Aggregation' then
                    lbl_Aggregation.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='% Normal Forms' then
                    lbl_Normalforms.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Head Defects' then
                    lbl_HeadDefects.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Neck/ mid piece' then
                    lbl_neck.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Tail Defects' then
                    lbl_tail.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Viability (EN Stain)' then
                    lbl_Enstain.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Cellular Elements' then
                    lbl_elements.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Others' then
                    lbl_others.Caption:=FieldByName('Finding').AsString
               else if Trim(FieldByName('Test').AsString)='Agglutination' then
               Begin
                    if FieldByName('Finding').AsString='1' then
                    QRLabel68.Font.Style:=[fsBold]
                    Else IF FieldByName('Finding').AsString='2' then
                    QRLabel69.Font.Style:=[fsBold]
                    Else IF FieldByName('Finding').AsString='3' then
                    QRLabel70.Font.Style:=[fsBold]
                    Else IF FieldByName('Finding').AsString='4' then
                    QRLabel71.Font.Style:=[fsBold];
               End;

               Next;
          end;
     end;
     Qry.Free;
end;

end.
