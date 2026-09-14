unit Unit_TestCancelNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Fxn,ServerDate,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, MemDS, DBAccess, Ora, CheckLst;

type
  TForm_TestCancelNew = class(TForm)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo_Remarks: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbl_PatientName: TLabel;
    lbl_Patientid: TLabel;
    lbl_SampleNo: TLabel;
    lbl_TestName: TLabel;
    Query_Blank: TOraQuery;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    lbl_canceltime: TLabel;
    lbl_Canceldate: TLabel;
    lbl_CancelBy: TLabel;
    chklst_testname: TCheckListBox;
    shp_rect: TShape;
    chk_all: TCheckBox;
    spl1: TSplitter;
    procedure BB_CloseClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);
    procedure chk_allClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chklst_testnameClickCheck(Sender: TObject);
    procedure LoadCanceltest;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
     pi_testcount:Integer;
     pi_PatientTestID:Integer;
     Arr_CLB_patienttestid: Array of Array of String;
     ps_canceltestpatienttesid:string;
     IsSpecialTestCancel:Boolean;
    { Public declarations }
  end;

var
  Form_TestCancelNew: TForm_TestCancelNew;

implementation

uses Unit_Master;

{$R *.dfm}

procedure TForm_TestCancelNew.BB_CloseClick(Sender: TObject);
begin
   Close;
end;

procedure TForm_TestCancelNew.BB_SaveClick(Sender: TObject);
var
    i,j:Integer;
begin
     //Validation For All Empty record..........
     j:=0;
     for i := 0 to chklst_testname.Items.Count - 1 do
     begin
         if chklst_testname.State[i] = cbUnchecked then
         begin
           j:=j+1;
         end;
     end;
     if j=chklst_testname.Items.Count then
     begin
          MessageDlg('Cannot Complete Task. No Data found.',mtError,[mbOK],0);
          Exit;
     end;
     //**********************************************************

     if Trim(Memo_Remarks.Text)='' then
     begin
          MessageDlg('Please Enter Valid Remarks.',mtError,[mbOK],0);
          Exit;
     end;
     //**************************** Cancel Function*****************************************//
     if MessageDlg('Are you sure you want to cancel selected test ?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
     begin
       i:=0;
       for i := 0 to chklst_testname.Items.Count - 1 do
       begin
          if chklst_testname.State[i] = cbChecked then
          begin
               pi_PatientTestID:=StrToInt(Arr_CLB_patienttestid[i,0]);

               if IsSpecialTestCancel=FALSE then
               begin
                    if not UndoSampleCollection(pi_PatientTestID) then
                    begin
                              MsgBox(1012, 0, '', '', '');
                              exit;
                    end
                    ELSE
               end;


               {if not UndoSampleCollection(pi_PatientTestID) then
                    begin
                              MsgBox(1012, 0, '', '', '');
                              exit;
                    end
               else }
               with Query_Blank do
               begin
                  Close;
                  Sql.Clear;
                  Sql.Add('Update PatientTest Set CancelRemarks='+#39+StringReplace(Memo_Remarks.Text,'''','''''',[rfReplaceAll])+#39);
                  Sql.Add(',CancelStatus=''Y'' ');
                  Sql.Add(',CancelDate='+#39+TodaysDate+#39);
                  Sql.Add(',CancelTime='+#39+TodaysTime+#39);
                  Sql.Add(',CancelBy='+IntToStr(gi_UserID));
                  if IsSpecialTestCancel=TRUE then
                  SQL.Add(',TESTPROGRESSSTATUS=2');
                  Sql.Add('Where PatientTestID='+IntToStr(pi_PatientTestID));
                  ExecSQL;
               end;
          end;
       end;
       ShowDoneMessage;
     end
     else
      Exit;
     //***********************************************************************************//
end;

procedure TForm_TestCancelNew.chklst_testnameClickCheck(Sender: TObject);
begin
    if chk_all.Checked=true then
      chk_all.Checked:=false;

end;

procedure TForm_TestCancelNew.chk_allClick(Sender: TObject);
var
    li_check:Integer;
begin
     Li_check := 0;
     if chk_all.Checked = True then
     Begin
          while Li_check < pi_testcount do
          Begin
               chklst_testname.Checked[Li_check] := True;
               inc(Li_check);
          End;
     End
     else
     Begin
          while Li_check < pi_testcount do
          Begin
               if chklst_testname.Checked[Li_check] = True then
               begin
                     chklst_testname.Checked[Li_check] := true;
               end
               else
               begin
                      chklst_testname.Checked[Li_check] := False;
               end;
               inc(Li_check);
          End;
     End;
end;

procedure TForm_TestCancelNew.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_ESCAPE then
        close;
end;

procedure TForm_TestCancelNew.FormShow(Sender: TObject);
begin
    LoadCanceltest;
end;

procedure TForm_TestCancelNew.LoadCanceltest;
var
  k:Integer;
begin
     with Query_Blank do
     begin
          Close;
          Sql.Clear;
          Sql.Add('Select patienttestid,(select tena_testname from hs_tena_testname t where tena_testnameid=PT.TESTNAMEID)testname,CancelRemarks,CancelDate,CancelTime');
          Sql.Add(',(Select Username from Lab_UserMain where UserId=pt.CancelBy)CancelBy');
          Sql.Add('from PatientTest pt');
          Sql.Add('Where PatientTestID in ('+ps_canceltestpatienttesid+')and cancelstatus=''Y'' order by patienttestid');
          //Sql.SaveToFile('C:\TestCancel.txt');
          Open;
          Query_Blank.First;
          lbl_Canceldate.Caption:=FieldByName('CancelDate').AsString;
          lbl_canceltime.Caption:=FieldByName('CancelTime').AsString;
          lbl_CancelBy.Caption:=FieldByName('CancelBy').AsString;
          Memo_Remarks.Lines.Text:=FieldByName('CancelRemarks').AsString;
          while not Query_Blank.Eof do
          begin
               chklst_testname.State[chklst_testname.Items.IndexOf(Trim(FieldByName('testname').AsString))] := cbChecked;
              // ShowMessage(IntToStr(chklst_testname.Items.IndexOf(FieldByName('testname').AsString)));
               Query_Blank.Next;
          end;
      end;

end;

end.
