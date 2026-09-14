unit Unit_WorkList;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ServerDate,
  Db, DBTables, StdCtrls, Buttons, OleCtrls, DateEditXControl_TLB, DBCtrls,
  ExtCtrls, Mask, MemDS, DBAccess, Ora,dm,Variants;

type
  TForm_WorkList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLCB_Department: TDBLookupComboBox;
    DateEditX_From: TDateEditX;
    DateEditX_To: TDateEditX;
    BitBtn_From: TBitBtn;
    BitBtnCancel: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBoxAll: TCheckBox;
    BitBtnExcel: TBitBtn;
    Panel_Time: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    CheckBox_timewise: TCheckBox;
    qry_department: TOraQuery;
    Ds_department: TOraDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure BitBtn_FromClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBoxAllClick(Sender: TObject);

    //function IntToRoman(num:Integer): string;
    function IntToRoman(num: Integer): string;
    procedure BitBtnExcelClick(Sender: TObject);
    procedure CheckBox_timewiseClick(Sender: TObject);

  private
    { Private declarations }
  public
     pb_SendToExcel:bool;
    { Public declarations }
  end;

var
  Form_WorkList: TForm_WorkList;

implementation

uses Fxn, Qr_WorkList,UnitSendToExcel;

{$R *.DFM}

procedure TForm_WorkList.FormShow(Sender: TObject);
begin
     {DateEditX_To.SystemOfDate:=gi_DateSystem;
     DateEditX_From.SystemOfDate:=gi_DateSystem;
     DateEditX_From.text:=TodaysDate;
     DateEditX_To.text:=TodaysDate;}
     MaskEdit1.Text:=ServerDate.TodaysTime;
     MaskEdit2.Text:=ServerDate.TodaysTime;
     DateEditX_To.SystemOfDate := gi_datesystem;
     DateEditX_From.SystemOfDate := gi_datesystem;
     DateEditX_From.text := gs_From;
     DateEditX_To.text := gs_to;
     BitBtn_From.Caption:=gs_DateCaption;
     BitBtn2.Caption:=gs_DateCaption;
     with qry_department do
     begin
          close;
          Session:=Dm_Hospital.Db;
          open;
     end;
end;

procedure TForm_WorkList.BitBtnCancelClick(Sender: TObject);
begin
     close;
end;

procedure TForm_WorkList.BitBtn_FromClick(Sender: TObject);
begin
      IF DateEditX_From.SystemOfDate=1 Then
  Begin
    DateEditX_From.SystemOfDate:=0;
    BitBtn_From.Caption:='BS';
  End
  Else
  Begin
    DateEditX_From.SystemOfDate:=1;
    BitBtn_From.Caption:='AD';
  End;
end;

procedure TForm_WorkList.BitBtn2Click(Sender: TObject);
begin
      IF DateEditX_From.SystemOfDate=1 Then
  Begin
    DateEditX_From.SystemOfDate:=0;
    BitBtn_From.Caption:='BS';
  End
  Else
  Begin
    DateEditX_From.SystemOfDate:=1;
    BitBtn_From.Caption:='AD';
  End;
end;

procedure TForm_WorkList.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#27 then
     close;
end;

procedure TForm_WorkList.BitBtn1Click(Sender: TObject);
var i,j,patientid:Integer;

begin
     IF ((DBLCB_Department.KeyValue = Null) and (CheckBoxAll.Checked = false)) then
     Begin
          MessageDlg('Plz. Choose Department.',mtInformation,[mbok],0);
          DBLCB_Department.SetFocus;
          Exit;
     End
     else if (DBLCB_Department.KeyValue <> Null) then
     begin
          try
          Form_QrreportWorkList:=TForm_QrreportWorkList.create(Application);
          with  Form_QrreportWorkList do
          begin
               Query_master.close;
               Query_master.Session:=Dm_Hospital.Db;
               //Query_master.Databasename:=gs_databasename;
               Query_master.sql[5]:='and pt.depid='+inttostr(DBLCB_Department.KeyValue);
               if(CheckBox_timewise.Checked=true)then
               begin
                    Query_master.sql[2]:='(select pama_regtime from hs_pama_patientmain where pama_patientid=pt.patientid and pama_regtime>='+#39+maskedit1.text+#39+'and pama_regtime<='+#39+maskedit2.text+#39+') as modifytime from patienttest pt,hs_tena_testname t';
                    Form_QrreportWorkList.QRLabel14.Font.Color:=clBlack;
                    Form_QrreportWorkList.QRLabel15.Font.Color:=clBlack;
                    Form_QrreportWorkList.label_timefrom.Caption:=MaskEdit1.Text;
                    Form_QrreportWorkList.label_timeto.Caption:=MaskEdit2.Text;
               end
               else
               begin
                    Form_QrreportWorkList.QRLabel14.Font.Color:=clwhite;
                    Form_QrreportWorkList.QRLabel15.Font.Color:=clwhite;
                    Form_QrreportWorkList.label_timefrom.font.Color:=clWhite;
                    Form_QrreportWorkList.label_timeto.font.Color:=clwhite;
               end;
               Query_master.sql[7]:='  and pt.testdate>='+#39+DateEditX_From.text+#39+' and pt.testdate<='+#39+DateEditX_To.text+#39;
               //Query_master.sql.savetofile('c:\wwwwwwwwwwwwww.txt');
               //Query_master.ParamByName('fromdate').AsString:=DateEditX_From.text;
               //Query_master.ParamByName('todate').AsString:=DateEditX_To.text;

               Query_master.Open;
               Tableworklistcreate;
               with Tableworklist do
               begin
                    IF Active Then Active:=False;
                    Exclusive:=True;
                    Close;
                    EmptyTable;
                    Open;
                    Query_Master.First;
                    while not Query_Master.EOF do
                    begin
                         Append;
                         if (patientid<>(Query_Master.fieldbyname('patientid').AsInteger)) then
                         begin
                              i:=i+1;
                              j:=1;
                              fieldbyname('S.NO').AsInteger:=i;
                              fieldbyname('Patientid').AsInteger:=Query_Master.fieldbyname('Patientid').AsInteger;
                              fieldbyname('PatientName').AsString:=Query_Master.Fieldbyname('PatientName').AsString;
                              fieldbyname('SN').AsString:='('+inttoroman(j)+')';
                              fieldbyname('MODIFYTIME').AsString:=Query_Master.Fieldbyname('MODIFYTIME').AsString;
                              //fieldbyname('Runno').Asstring:=Query_Master.Fieldbyname('Runno').Asstring;
                         end
                         else
                         begin
                              if i = i+1 then
                                   j:=0
                              else
                              begin
                                 j:=j+1;
                                  fieldbyname('SN').AsString:='('+inttoroman(j)+')';
                              end;
                         end;

                         fieldbyname('Testname').AsString:=Query_Master.Fieldbyname('Testname').AsString;
                         fieldbyname('Runno').Asstring:=Query_Master.Fieldbyname('labno').Asstring;
                         post;
                         patientid:=Query_Master.fieldbyname('patientid').AsInteger;
                         Query_Master.next;

                    end;
               end;

               Label_FDate.Caption:=DateEditX_From.Text;
               label_TDate.Caption:=DateEditX_To.text;
               QRLabel7.Caption:=DBLCB_Department.text;
               QRLabel1.Caption:='Work List Report';
               QRLabel_PrintDate.Caption:=FormatDateTime('YYYY/MM/DD',Date);
               if(pb_SendToExcel<>True) then
                    QuickReport1.Preview;
          end;
          finally
               Form_QrreportWorkList.free
          End;
     end
     else if((DBLCB_Department.KeyValue = Null) or (CheckBoxAll.Checked = true)) then
     begin
         try
          Form_QrreportWorkList:=TForm_QrreportWorkList.create(nil);
          with  Form_QrreportWorkList do
          begin

               Query_master.close;
               Query_master.Session:=Dm_Hospital.Db;
               //Query_master.Databasename:=gs_databasename;
               //Query_master.sql[5]:='and pt.depid='+inttostr(DBLCB_Department.KeyValue);
                 if(CheckBox_timewise.Checked=true)then
               begin
                    Query_master.sql[2]:='(select modifytime from patientmain where patientid=pt.patientid and modifytime>='+#39+maskedit1.text+#39+'and modifytime<='+#39+maskedit2.text+#39+') as modifytime from patienttest pt,testname t';
                    Form_QrreportWorkList.QRLabel14.Font.Color:=clBlack;
                    Form_QrreportWorkList.QRLabel15.Font.Color:=clBlack;
                    Form_QrreportWorkList.label_timefrom.Caption:=MaskEdit1.Text;
                    Form_QrreportWorkList.label_timeto.Caption:=MaskEdit2.Text;
               end
               else
               begin
                    Form_QrreportWorkList.QRLabel14.Font.Color:=clwhite;
                    Form_QrreportWorkList.QRLabel15.Font.Color:=clwhite;
                    Form_QrreportWorkList.label_timefrom.font.Color:=clWhite;
                    Form_QrreportWorkList.label_timeto.font.Color:=clwhite;
               end;
               Query_master.sql[7]:='  and pt.testdate>='+#39+DateEditX_From.text+#39+' and pt.testdate<='+#39+DateEditX_To.text+#39;
               Query_master.sql.savetofile('xxxxxxxxxxxx.txt');
               //Query_master.ParamByName('fromdate').AsString:=DateEditX_From.text;
               //Query_master.ParamByName('todate').AsString:=DateEditX_To.text;
               Query_master.Open;

               Tableworklistcreate;
               with Tableworklist do
               begin
                    IF Active Then Active:=False;
                    Exclusive:=True;
                    Close;
                    EmptyTable;
                    Open;
                    Query_Master.First;
                    while not Query_Master.EOF do
                    begin
                         Append;
                         if (patientid<>(Query_Master.fieldbyname('patientid').AsInteger)) then
                         begin
                              i:=i+1;
                              j:=1;
                              fieldbyname('S.NO').AsInteger:=i;
                              fieldbyname('Patientid').AsInteger:=Query_Master.fieldbyname('Patientid').AsInteger;
                              fieldbyname('PatientName').AsString:=Query_Master.Fieldbyname('PatientName').AsString;
                              fieldbyname('SN').AsString:='('+inttoroman(j)+')';
                              fieldbyname('MODIFYTIME').AsString:=Query_Master.Fieldbyname('MODIFYTIME').AsString;
                         end
                         else
                         begin
                              if i = i+1 then
                                   j:=0
                              else
                              begin
                                 j:=j+1;
                                  fieldbyname('SN').AsString:='('+inttoroman(j)+')';
                              end;
                         end;

                         fieldbyname('Testname').AsString:=Query_Master.Fieldbyname('Testname').AsString;
                         fieldbyname('Runno').Asstring:=Query_Master.Fieldbyname('Runno').Asstring;
                         post;
                         patientid:=Query_Master.fieldbyname('patientid').AsInteger;
                         Query_Master.next;

                    end;
               end;


          
               Label_FDate.Caption:=DateEditX_From.Text;
               label_TDate.Caption:=DateEditX_To.text;
               QRLabel7.Caption:='All Department';
               QRLabel1.Caption:='Work List Report';
               QRLabel_PrintDate.Caption:=FormatDateTime('YYYY/MM/DD',Date);
               if(pb_SendToExcel<>True) then
               QuickReport1.Preview;
          end;
          finally
               Form_QrreportWorkList.free
          End;
     end;
end;

procedure TForm_WorkList.CheckBoxAllClick(Sender: TObject);
begin
     if CheckBoxAll.Checked=true then
     begin
          DBLCB_Department.keyvalue:=-1;
          DBLCB_Department.Enabled:=false;
     end     
     else
         DBLCB_Department.Enabled:=true;

end;


function TForm_WorkList.IntToRoman(num: Integer): string;

const
     Nvals = 13;
     vals: array [1..Nvals] of word =
     (1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000);
     roms: array [1..Nvals] of string[2] =
     ('i', 'iv', 'v', 'ix', 'x', 'xl', 'l', 'xc', 'c',
     'cd', 'd', 'cm', 'm');
var
     b: 1..Nvals;
begin
     result := '';
     b := Nvals;
     while num > 0 do
     begin
          while vals[b] > num do
          dec(b);
          dec (num, vals[b]);
          result := result + roms[b];
     end;
end;

procedure TForm_WorkList.BitBtnExcelClick(Sender: TObject);
var
     qry_sendexl:TQuery;
begin
     qry_sendexl:=TQuery.Create(nil);
     pb_SendToExcel:=True;
     BitBtn1Click(sender);
     with qry_sendexl do
     begin
          close;
          sql.clear;
          DatabaseName:=gs_TempPath;
          sql.Add('select * from worklist.db');
          open;
     end;
     //SendToExcel(qry_sendexl,nil,'Work List Report',DateEditX_From.Text+'-'+DateEditX_To.Text,'',gs_HosName,gs_HosAddress);
     pb_SendToExcel:=False;
end;

procedure TForm_WorkList.CheckBox_timewiseClick(Sender: TObject);
begin
      if(CheckBox_timewise.Checked= true)then
     begin
          Panel_Time.Visible:=true;
     end
     else
     begin
          Panel_Time.Visible:=false;
     end;
end;

end.
