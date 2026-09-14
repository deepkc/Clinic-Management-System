unit Unit_BloodCollection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, OleCtrls, DateEditXControl_TLB,
  Grids, DBGrids, DBCtrls, DB, MemDS, DBAccess, Ora,Fxn;

type
     dateString=String[10];
  TForm_BloodCollection = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn_Save: TBitBtn;
    btn_exit: TBitBtn;
    PageControl1: TPageControl;
    ts_BloodCollection: TTabSheet;
    Shape1: TShape;
    EditSearch: TEdit;
    CheckBoxExtended: TCheckBox;
    Btn_view: TSpeedButton;
    SPButtonRefresh: TSpeedButton;
    EditDay: TEdit;
    Shape5: TShape;
    Label24: TLabel;
    Label23: TLabel;
    Label78: TLabel;
    UpDown1: TUpDown;
    Btn_Refresh: TSpeedButton;
    DateEditX1: TDateEditX;
    EditPatientNo: TEdit;
    EditPatientName: TEdit;
    EditSBagNo: TEdit;
    EditSBagQty: TEdit;
    EditCollnDate: TEdit;
    EditExpDate: TEdit;
    EditGroup: TEdit;
    EditType: TEdit;
    EditStatus: TEdit;
    EditRefBagNo: TEdit;
    EditBloodSource: TEdit;
    GridLedger: TDBGrid;
    ts_New: TTabSheet;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label106: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label44: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    EditHosNo: TEdit;
    DBLCB_Inpatient: TDBLookupComboBox;
    btn_new: TBitBtn;
    oraquery_PatientNo: TOraQuery;
    ds_patient: TDataSource;
    OraQuery_Ward: TOraQuery;
    ds_ward: TDataSource;
    OraQuery_Source: TOraQuery;
    ds_Source: TDataSource;
    OraQuery_Save: TOraQuery;
    OraQuery_update: TOraQuery;
    LabelName: TLabel;
    EditBagQty: TEdit;
    EditBagNo: TEdit;
    EditBagNo1: TEdit;
    EditBagNo2: TEdit;
    EditBagNo3: TEdit;
    dex_Collection: TDateEditX;
    dex_Expire: TDateEditX;
    CMBWard: TDBLookupComboBox;
    Oraquery_HosNo: TOraQuery;
    OraQuery_BloodCollection: TOraQuery;
    ds_BloodCollection: TDataSource;
    Btn_Coll: TSpeedButton;
    btn_Exp: TSpeedButton;
    btn_Todays: TSpeedButton;
    EditSource: TEdit;
    Label11: TLabel;
    DBLCB_Source: TDBLookupComboBox;
    ComboBoxGroup: TComboBox;
    ComboBoxType: TComboBox;
    MemoRemark: TMemo;
    GroupBox2: TGroupBox;
    RB_Return: TRadioButton;
    RB_Used: TRadioButton;
    RB_Collection: TRadioButton;
    RB_Transfer: TRadioButton;

    procedure btn_exitClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure btn_newClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure EditBagNoExit(Sender: TObject);
    procedure EditBagNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoExit(Sender: TObject);
    procedure DBLCB_InpatientKeyPress(Sender: TObject; var Key: Char);
    procedure EditHosNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditBagQtyKeyPress(Sender: TObject; var Key: Char);
    procedure EditBagNo1KeyPress(Sender: TObject; var Key: Char);
    procedure EditBagNo2KeyPress(Sender: TObject; var Key: Char);
    procedure EditBagNo3KeyPress(Sender: TObject; var Key: Char);
    procedure CMBWardKeyPress(Sender: TObject; var Key: Char);
    procedure EditSourceKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_SourceKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxGroupKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxTypeKeyPress(Sender: TObject; var Key: Char);
    procedure MemoRemarkKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_RefreshClick(Sender: TObject);
    procedure Btn_viewClick(Sender: TObject);
    procedure ButtonRegDateClick(Sender: TObject);
    procedure ButtonExpDateClick(Sender: TObject);
    procedure GridLedgerDblClick(Sender: TObject);
    procedure Btn_CollClick(Sender: TObject);
    procedure btn_ExpClick(Sender: TObject);
    procedure DBLCB_InpatientClick(Sender: TObject);
    procedure MakeRefresh;
    procedure EditPatientNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditPatientNameKeyPress(Sender: TObject; var Key: Char);
    procedure EditSBagNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditSBagQtyKeyPress(Sender: TObject; var Key: Char);
    procedure EditCollnDateKeyPress(Sender: TObject; var Key: Char);
    procedure EditExpDateKeyPress(Sender: TObject; var Key: Char);
    procedure EditGroupKeyPress(Sender: TObject; var Key: Char);
    procedure EditTypeKeyPress(Sender: TObject; var Key: Char);
    procedure EditStatusKeyPress(Sender: TObject; var Key: Char);
    procedure EditRefBagNoKeyPress(Sender: TObject; var Key: Char);
    procedure EditBloodSourceKeyPress(Sender: TObject; var Key: Char);
    function ADToVS(dAD:TDateTime):dateString;
    procedure btn_BSClick(Sender: TObject);
    procedure btn_TodaysClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    b_New:Boolean;
    pi_PrimaryId:Integer;
  end;

var
  Form_BloodCollection: TForm_BloodCollection;

implementation

uses DM,Unit_Message,Unit_ServerIp,NetShare,DateRange, Unit_Master, ServerDate;

{$R *.dfm}



function TForm_BloodCollection.ADToVS(dAD: TDateTime): dateString;
     var
Converter:TDateEditX;
begin
  Converter:=TDateEditX.Create(Nil);
  try
    //Converter.systemOfDate:=dsVikramSambat;
    Converter.systemOfDate:=dsIswiSambat;
    Converter.text:=formatDateTime('yyyy/mm/dd',dAD);
    result:=Converter.VSDateAsText;
  finally
    Converter.free;
  end;
end;

procedure TForm_BloodCollection.btn_BSClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX1,Btn_Coll);
end;

procedure TForm_BloodCollection.Btn_CollClick(Sender: TObject);
begin
     ChangeDateSystem(dex_Collection,Btn_Coll);
end;

procedure TForm_BloodCollection.btn_exitClick(Sender: TObject);
begin
      if PageControl1.ActivePageIndex=1 then
         begin
          ts_BloodCollection.TabVisible:=True;
          ts_New.TabVisible:=False;
          btn_new.Enabled:=True;
          btn_Save.Enabled:=False;
          OraQuery_BloodCollection.Close;
          OraQuery_BloodCollection.Open;

         end
      else

    
     Close;
end;

procedure TForm_BloodCollection.btn_ExpClick(Sender: TObject);
begin
     ChangeDateSystem(dex_Expire,btn_Exp);
end;

procedure TForm_BloodCollection.btn_newClick(Sender: TObject);
begin
     //PageControl1.ActivePageIndex:=1;
     btn_Save.Enabled:=True;
     ts_BloodCollection.TabVisible:=False;
     ts_New.TabVisible:=True;
     btn_new.Enabled:=False;
     b_New:=True;


     with OraQuery_PatientNo do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;

     with OraQuery_Ward do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;

     with OraQuery_Source do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;
end;

procedure TForm_BloodCollection.Btn_RefreshClick(Sender: TObject);
var li_PatientId:Integer;
begin

     MakeRefresh;
     With OraQuery_BloodCollection do
     Begin
          Filtered:=False;
          Close;
          IF CheckBoxExtended.Checked=False Then
          Begin
               ParamByName('FromDate').AsString:=ADToVS(DateEditX1.ADDateAsDate-StrToInt(EditDay.text));
               ParamByName('ToDate').AsString:=DateEditX1.Text;
               //SQL[5]:='Where BLCO_COLLNDATE>=:FromDate';
               //SQL[6]:='and BLCO_COLLNDATE <=:ToDate';
          End;

          Try
               li_PatientId:=StrToInt(EditSearch.Text);
               sql[7]:=' and blco_PatientId='+IntToStr(li_PatientId);
          Except
               IF Trim(EditSearch.Text)<>'' Then
               sql[7]:=' and PatientName='+#39+EditSearch.Text+#39
               Else
               sql[7]:=' ';
          End;
          //SQL.SaveToFile('c:\abcd.txt');
          Open;

     End;
     EditSearch.SetFocus;
end;

procedure TForm_BloodCollection.btn_SaveClick(Sender: TObject);
begin
     IF (DBLCB_Inpatient.KeyValue=NULL) and (Trim(EditHosNo.Text)='') Then
     Begin
          MessageDlg('Plz Select Patient or Type Patient No.',mtInformation,[mbok],0);
          DBLCB_Inpatient.SetFocus;
          Exit;
     End;

     IF Trim(EditBagNo.Text)='' Then
     Begin
          MessageDlg('Plz. Put Blood Bag No.',mtInformation,[mbok],0);
          EditBagNo.SetFocus;
          Exit;
     End;

     IF (DBLCB_Source.KeyValue=NULL) and (Trim(EditSource.Text)='') Then
     Begin
          MessageDlg('Plz Select Patient or Type Patient No.',mtInformation,[mbok],0);
          EditSource.SetFocus;
          Exit;
     End;


     IF b_New=True Then
     Begin
          pi_PrimaryId:=GetMaxId('BB_BLCO_BLOODCOLLECTION','BLCO_BLOODCOLLECTIONID');
          With OraQuery_Save do
          Begin
               Close;
               sql.Clear;
               sql.add(' Insert Into BB_BLCO_BLOODCOLLECTION(BLCO_BLOODCOLLECTIONID,BLCO_PATIENTID,BLCO_BLOODBAGNO,');
               sql.add(' BLCO_BLOODBAGNO1,BLCO_BLOODBAGNO2,BLCO_BLOODBAGNO3,BLCO_BAGQTY,BLCO_COLLNDATE,BLCO_COLLNTIME,BLCO_DATAPOSTDATE,BLCO_DATAPOSTTIME,BLCO_DATAPOSTBY,BLCO_EXPDATE,');
               sql.add(' BLCO_WARDCODE,BLCO_BLOODSOURCE,BLCO_REFBAGNO,BLCO_BLOODGROUP ,BLCO_BLOODTYPE,BLCO_REMARKS,BLCO_STATUS) Values ');
               sql.add(' ('+IntToStr(pi_PrimaryId)+','+EditHosNo.Text);
               sql.add(' ,'+#39+EditBagNo.Text+#39+','+#39+EditBagNo1.Text+#39+','+#39+EditBagNo2.Text+#39);
               sql.add(' ,'+#39+EditBagNo3.Text+#39+','+EditBagQty.Text);
               sql.add(' ,'+#39+dex_Collection.Text+#39+','+#39+ServerDate.TodaysTime+#39);
               sql.add(' ,'+#39+ServerDate.TodaysDate+#39+','+#39+ServerDate.TodaysTime+#39);
               sql.add(' ,'+IntToStr(gi_UserId)+','+#39+dex_Expire.Text+#39);
               sql.add(' ,'+#39+CMBWard.KeyValue+#39);
               IF DBLCB_Source.KeyValue<>NULL Then
               sql.add(' ,'+#39+DBLCB_Source.Text+#39+','+#39+OraQuery_Source.FieldByName('BLCO_REFBAGNO').AsString+#39)

               Else
               sql.add(' ,'+#39+EditSource.Text+#39+','+#39+''+#39);
               sql.add(' ,'+#39+ComboBoxGroup.Text+#39+','+#39+ComboBoxType.Text+#39);
               sql.add(' ,'+#39+MemoRemark.Text+#39);
               IF RB_Collection.Checked=True Then
               sql.add(' ,''C'')')
               Else IF RB_Return.Checked=True Then
               sql.add(' ,''R'')')
               Else IF RB_Transfer.Checked=True Then
               sql.add(' ,''T'')')
               Else
               sql.add(' ,''U'')');

               //SQL.SaveToFile('C:\\1234.TXT');
               ExecSQL;
               ShowMessage('Blood Collection Details Successfully Saved');

          End;
     End
     Else
     Begin
          With OraQuery_update do
          Begin
               Close;
               sql.Clear;
               sql.add(' Update BB_BLCO_BLOODCOLLECTION Set BLCO_PATIENTID='+EditHosNo.Text);
               sql.add(' ,BLCO_DATAPOSTTIME='+#39+ServerDate.TodaysTime+#39);
               sql.add(' ,BLCO_BLOODBAGNO='+#39+EditBagNo.Text+#39+',BLCO_BLOODBAGNO1='+#39+EditBagNo1.Text+#39);
               sql.add(' ,BLCO_BLOODBAGNO2='+#39+EditBagNo2.Text+#39+',BLCO_BLOODBAGNO3='+#39+EditBagNo3.Text+#39);
               sql.add(' ,BLCO_BAGQTY='+EditBagQty.Text+',BLCO_COLLNDATE='+#39+dex_Collection.Text+#39);
               sql.add(' ,BLCO_COLLNTIME='+#39+ServerDate.TodaysTime+#39',BLCO_DATAPOSTDATE='+#39+ServerDate.TodaysDate+#39);

               sql.add(' ,BLCO_DATAPOSTBY='+IntToStr(gi_UserId));
               sql.add(' ,BLCO_EXPDATE='+#39+dex_Expire.Text+#39+' ,BLCO_WARDCODE='+#39+CMBWard.KeyValue+#39);
               IF DBLCB_Source.KeyValue<>NULL Then
               sql.add(' ,BLCO_BLOODSOURCE='+#39+DBLCB_Source.Text+#39+',BLCO_REFBAGNO='+#39+OraQuery_Source.FieldByName('BLCO_BlOODBAGNO').AsString+#39)
               Else
               sql.add(' ,BLCO_BLOODSOURCE='+#39+EditSource.Text+#39+',BLCO_REFBAGNO='+#39+''+#39);
               sql.add(' ,BLCO_BLOODGROUP='+#39+ComboBoxGroup.Text+#39);
               sql.add(' ,BLCO_BLOODTYPE='+#39+ComboBoxType.Text+#39);
               sql.add(' ,BLCO_REMARKS='+#39+MemoRemark.Text+#39);
               IF RB_Collection.Checked=True Then
               sql.add(' ,BLCO_STATUS=''C''')
               Else IF RB_Return.Checked=True Then
               sql.add(' ,BLCO_STATUS=''R''')
               Else IF RB_Transfer.Checked=True Then
               sql.add(' ,BLCO_STATUS=''T''')
               Else
               sql.add(' ,BLCO_STATUS=''U''');
               //sql.add(' ,ModifyDate='+#39+ServerDate.TodaysDate+#39);
               sql.add(' Where BLCO_BLOODCOLLECTIONID='+IntToStr(pi_PrimaryId));
               //sql.SaveToFile('C:\Test1.Txt');
               ExecSQL;
               //Frm_Message.ShowModal;
               ShowMessage('The Changes Made Are Successfully Updated');


          End;
     End;

              ts_BloodCollection.TabVisible:=True;
              ts_New.TabVisible:=False;

               with OraQuery_BloodCollection do
               begin
                    Close;
                    Open;
               end;
               btn_new.Enabled:=True;
               btn_Save.Enabled:=False;


end;

procedure TForm_BloodCollection.btn_TodaysClick(Sender: TObject);
begin
ChangeDateSystem(DateEditX1,btn_Todays);
end;

procedure TForm_BloodCollection.Btn_viewClick(Sender: TObject);
begin
 IF (CheckBoxExtended.Checked=True) and (Trim(EditSearch.Text)='') Then
     Begin
          MessageDlg('Plz. Put Patient No. or Name For Extended Search.',mtInformation,[mbok],0);
          EditSearch.SetFocus;
          Exit;
     End;
     Btn_RefreshClick(Sender);
     EditSearch.SetFocus;
end;

procedure TForm_BloodCollection.ButtonExpDateClick(Sender: TObject);
begin
   ChangeDateSystem(dex_Expire,btn_Exp);
end;

procedure TForm_BloodCollection.ButtonRegDateClick(Sender: TObject);
begin
     ChangeDateSystem(dex_Collection,Btn_Coll);
end;

procedure TForm_BloodCollection.CMBWardKeyPress(Sender: TObject; var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.ComboBoxGroupKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.ComboBoxTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.DBLCB_InpatientClick(Sender: TObject);
begin
IF DBLCB_Inpatient.KeyValue<>NULL Then
     Begin
          LabelName.Caption:=DBLCB_Inpatient.Text;
          EditHosNo.Text:=oraquery_PatientNo.FieldByName('BLCO_PatientId').AsString;
     End
     Else
     Begin
          LabelName.Caption:='Name';
          EditHosNo.Text:='';
     End;
end;

procedure TForm_BloodCollection.DBLCB_InpatientKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.DBLCB_SourceKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditBagNo1KeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditBagNo2KeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditBagNo3KeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditBagNoExit(Sender: TObject);
begin
IF Trim(EditBagQty.Text)='' Then
     EditBagQty.Text:='0';

     if StrToInt(EditBagQty.Text)=1 Then
     Begin
          EditBagNo1.Visible:=False;
          EditBagNo2.Visible:=False;
          EditBagNo3.Visible:=False;
     End
     Else IF StrToInt(EditBagQty.Text)=2 Then
     Begin
          EditBagNo1.Visible:=True;
          EditBagNo2.Visible:=False;
          EditBagNo3.Visible:=False;
     End
     Else IF StrToInt(EditBagQty.Text)=3 Then
     Begin
          EditBagNo1.Visible:=True;
          EditBagNo2.Visible:=True;
          EditBagNo3.Visible:=False;
     End
     Else
     Begin
          EditBagNo1.Visible:=True;
          EditBagNo2.Visible:=True;
          EditBagNo3.Visible:=True;
     End;
end;

procedure TForm_BloodCollection.EditBagNoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;

procedure TForm_BloodCollection.EditBagQtyKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditBloodSourceKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF key=#13 then
     Begin
          EditBloodSource.text:=StringReplace(EditBloodSource.text,'''','''''',[rfReplaceAll]);
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditBloodSource.text)<>'' Then
               Begin
                    Filter:='BLCO_BloodSource ='+#39+EditBloodSource.text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditCollnDateKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditCollnDate.text)<>'' Then
               Begin
                    Filter:='BLCO_CollnDate ='+#39+EditCollnDate.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditExpDateKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditExpDate.text)<>'' Then
               Begin
                    Filter:='BLCO_ExpDate ='+#39+EditExpDate.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditGroupKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditGroup.text)<>'' Then
               Begin
                    Filter:='BLCO_BLOODGROUP ='+#39+EditGroup.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditHosNoExit(Sender: TObject);
begin
IF Trim(EditHosNo.Text)<>'' Then
     Begin
          With Oraquery_HosNo do
          Begin
               Close;
               sql.Clear;
               sql.add(' Select Title||''  ''||PatientName as Name From PatientMain ');
               sql.add(' where PatientId='+EditHosNo.Text);
                //SQL.SaveToFile('C:\\hosNo.TXT');
               Open;
          End;
          LabelName.Update;
          LabelName.Caption:=Oraquery_HosNo.FieldByName('Name').AsString;
     End
     Else
     LabelName.Caption:='Name';
end;

procedure TForm_BloodCollection.EditHosNoKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
     IF key=#13 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;

end;
end;

procedure TForm_BloodCollection.EditPatientNameKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF key=#13 then
     Begin
          EditPatientName.text:=StringReplace(EditPatientName.text,'''','''''',[rfReplaceAll]);
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditPatientName.text)<>'' Then
               Begin
                    Filter:='PatientName ='+#39+EditPatientName.text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
     EditPatientName.SetFocus;
end;

procedure TForm_BloodCollection.EditPatientNoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#13 Then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditPatientNo.text)<>'' Then
               Begin
                    Filter:='blco_PatientId ='+EditPatientNo.text;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditRefBagNoKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditRefBagNo.text)<>'' Then
               Begin
                    Filter:='blco_RefBagNo ='+#39+EditRefBagNo.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditSBagNoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditSBagNo.text)<>'' Then
               Begin
                    Filter:='blco_BloodBagNo ='+#39+EditSBagNo.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditSBagQtyKeyPress(Sender: TObject;
  var Key: Char);
begin
IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditSBagQty.text)<>'' Then
               Begin
                    Filter:='blco_BagQty ='+EditSBagQty.Text;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditSourceKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.EditStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
      IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditStatus.text)<>'' Then
               Begin
                    Filter:='blco_Status ='+#39+EditStatus.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.EditTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF key=#13 then
     Begin
          with OraQuery_BloodCollection do
          Begin
               IF Trim(EditType.text)<>'' Then
               Begin
                    Filter:='blco_BloodType ='+#39+EditType.Text+'*'+#39;
                    Filtered:=True;
               End
               Else
               Filtered:=False;
          End;
     End;
end;

procedure TForm_BloodCollection.FormShow(Sender: TObject);
begin
     DateEditX1.text:=ServerDate.TodaysDateVS;
     dex_Collection.text:=ServerDate.TodaysDateVS;
     dex_Expire.text:=ServerDate.TodaysDateVS;
     //PageControl1.ActivePageIndex:=0;
     btn_new.Enabled:=True;
     btn_Save.Enabled:=False;
     ts_New.TabVisible:=False;
     ts_BloodCollection.TabVisible:=True;
     EditSearch.SetFocus;

     with OraQuery_BloodCollection do
     begin
          Close;
          Open;
     end;

     with OraQuery_PatientNo do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;

     with OraQuery_Ward do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;

     with OraQuery_Source do
     begin
          Close;
          Session := Dm_hospital.DB;
          Open;
     end;
end;




procedure TForm_BloodCollection.GridLedgerDblClick(Sender: TObject);
begin

     ts_New.TabVisible:=True;
     ts_BloodCollection.TabVisible:=False;

     b_New:=False;
     pi_PrimaryId:=OraQuery_BloodCollection.FieldByName('BLCO_BLOODCOLLECTIONID').AsInteger;
     DBLCB_Inpatient.KeyValue:=OraQuery_BloodCollection.FieldByName('BLCO_BLOODCOLLECTIONID').AsInteger;
     EditHosNo.Text:=OraQuery_BloodCollection.FieldByName('BLCO_PATIENTID').AsString;
     LabelName.Caption:=OraQuery_BloodCollection.FieldByName('PatientName').AsString;
     EditBagQty.Text:=OraQuery_BloodCollection.FieldByName('BLCO_BAGQTY').AsString;
     EditBagNo.Text:= OraQuery_BloodCollection.FieldByName('BLCO_BLOODBAGNO').AsString;
     EditBagNo1.Text := OraQuery_BloodCollection.FieldByName('BLCO_BLOODBAGNO1').AsString;
     EditBagNo2.Text := OraQuery_BloodCollection.FieldByName('BLCO_BLOODBAGNO2').AsString;
     EditBagNo3.Text:= OraQuery_BloodCollection.FieldByName('BLCO_BLOODBAGNO3').AsString;

     dex_Collection.Text := OraQuery_BloodCollection.FieldByName('BLCO_COLLNDATE').AsString;
     dex_Expire.Text := OraQuery_BloodCollection.FieldByName('BLCO_EXPDATE').AsString;
     CMBWard.KeyValue:=OraQuery_BloodCollection.FieldByName('BLCO_WARDCODE').AsString;
     EditSource.Text:= OraQuery_BloodCollection.FieldByName('BLCO_BLOODSOURCE').AsString;
     DBLCB_Source.KeyValue:=OraQuery_BloodCollection.FieldByName('BLCO_BLOODCOLLECTIONID').AsInteger;
     ComboBoxGroup.Text:=OraQuery_BloodCollection.FieldByName('BLCO_BLOODGROUP').AsString;
     ComboBoxType.Text:=OraQuery_BloodCollection.FieldByName('BLCO_BLOODTYPE').AsString;
     MemoRemark.Text:=OraQuery_BloodCollection.FieldByName('BLCO_REMARKS').AsString;
     IF OraQuery_BloodCollection.FieldByName('BLCO_STATUS').AsString='C' Then
          RB_Collection.Checked:=True
     Else IF OraQuery_BloodCollection.FieldByName('BLCO_STATUS').AsString='R' Then
          RB_Return.Checked:=True
     Else IF OraQuery_BloodCollection.FieldByName('BLCO_STATUS').AsString='T' Then
          RB_Transfer.Checked:=True
     Else
          RB_Used.Checked:=True;



     btn_Save.Enabled:=True;
     btn_new.Enabled:=False;

end;

procedure TForm_BloodCollection.MemoRemarkKeyPress(Sender: TObject;
  var Key: Char);
begin
begin
IF key=#8 Then Exit;
     IF Not(key In['0'..'9']) Then
     Begin
          key:=#0;
          Exit;
     End;
end;
end;

procedure TForm_BloodCollection.MakeRefresh;
Begin
     EditPatientNo.Text:='';
     EditPatientName.Text:='';
     EditSBagNo.Text:='';
     EditSBagQty.Text:='';
     EditCollnDate.Text:='';
     EditExpDate.Text:='';
     EditGroup.Text:='';
     EditType.Text:='';
     EditStatus.Text:='';
     EditRefBagNo.Text:='';
     EditBloodSource.Text:='';
End;

end.
