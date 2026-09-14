unit UnitNoofTestDone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn,dm,serverdate,
  Dialogs, ComCtrls, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls,
  ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError, Grids, DBGrids;

type
  TFormNoofTestDone = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    DBLCB_DepName: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    label2: TLabel;
    Label1: TLabel;
    BtnTo: TSpeedButton;
    BtnFrom: TSpeedButton;
    DateEditXTo: TDateEditX;
    DateEditxFrom: TDateEditX;
    StatusBar1: TStatusBar;
    QueryDepartment: TOraQuery;
    DS_Dept: TDataSource;
    Label4: TLabel;
    Dblcb_ParentDep: TDBLookupComboBox;
    Query_ParentDep: TOraQuery;
    Ds_ParentDep: TDataSource;
    btn_Close: TBitBtn;
    btn_preview: TBitBtn;
    BitBtn_SendToExcel: TBitBtn;
    oraquery_sendtoexcel: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
    procedure DBLCB_DepNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Dblcb_ParentDepClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BitBtn_SendToExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
  pb_SendToExcel:Boolean;
    { Public declarations }
  end;

var
  FormNoofTestDone: TFormNoofTestDone;

implementation

uses UnitRepNoofTestDone,UnitSendToExcel;

{$R *.dfm}

procedure TFormNoofTestDone.BitBtn_SendToExcelClick(Sender: TObject);
begin
     IF MessageDlg('Are you sure to send in Excel ?',mtconfirmation,[mbyes,mbno],0)=mryes then
     Begin
          Try
               pb_SendToExcel:=True;
               btn1Click(Sender);
          Except
               pb_SendToExcel:=False;
          End;
     End;
end;

procedure TFormNoofTestDone.btn1Click(Sender: TObject);
var ls_fromdate,ls_todate:String;
begin
     ls_fromdate:=DateEditxFrom.text;
     ls_todate:=DateEditXTo.text;
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     BtnFrom.Caption:=gs_DateCaption;
     BtnTo.Caption:=gs_DateCaption;
     try
          FormRepNoofTestDone:=TFormRepNoofTestDone.Create(Nil);
          with FormRepNoofTestDone do
          begin
               with QueryMain do
               begin
                    close;
                    Session:=Dm_Hospital.Db;
                    Sql.Clear;
                    SQL.Add('Select DepID,Servicetype,Sum(Amount)Amount,Sum(VatAmt)VatAmt,Sum(Qty)Qty,Sum(Discount)Discount');
                    SQL.Add(',Sum(CAmount)CAmount,Sum(CVatAmt)CVatAmt,Sum(CQty)CQty,Sum(CDiscount)CDiscount  from VW_NoofTestCount');
                    SQL.Add('Where BillDate Between '+#39+DateEditxFrom.text+#39+' and '+#39+DateEditxTo.Text+#39);
                  //  if DBLCB_DepName.KeyValue <> Null then
                   //      Sql.Add('and Depid ='+IntToStr(DBLCB_DepName.KeyValue));
                    if Dblcb_ParentDep.KeyValue <> Null then
                    Sql.Add('and Depid in ('+IntToStr(Dblcb_ParentDep.KeyValue)+')')
                    else
                    SQL.Add(' and depid in (select dept_depid from hs_dept_department)');
                    SQL.Add('Group by DepID,ServiceType');
                    SQL.Add('Order By ServiceType');
                    sql.SaveToFile('c:\nooftestdone.txt');
                    Open;
               end;
               if pb_SendToExcel=true then
               begin
               with OraQuery_sendtoexcel do
                    begin
                         Close;
                         Session:=Dm_Hospital.Db;
                         sql.Clear;
                         SQL.Add('select rownum as sno,(select dept_depname from hs_dept_department where dept_depid=depid)department');
                         SQL.Add(',servicetype,nooftest,canceledtest from ');
                         sql.Add('(Select DepID,Servicetype,Sum(Qty)NOOFTEST,Sum(CQty)CANCELEDTEST from VW_NoofTestCount');
                         SQL.Add('Where BillDate Between '+#39+DateEditxFrom.text+#39+' and '+#39+DateEditxTo.Text+#39);
                         if Dblcb_ParentDep.KeyValue <> Null then
                              Sql.Add('and Depid in ('+IntToStr(Dblcb_ParentDep.KeyValue)+')')
                         else
                          SQL.Add(' and depid in (select dept_depid from hs_dept_department)');
                        sql.Add( 'group by DepID,Servicetype order by servicetype)');
                        { sql.Add('select rownum as sn,Servicetype AS TESTNAME,qty AS NOOFTEST ,cqty AS CANCELEDTEST from VW_NoofTestCount');
                         SQL.Add('Where BillDate Between '+#39+DateEditxFrom.text+#39+' and '+#39+DateEditxTo.Text+#39);
                         if Dblcb_ParentDep.KeyValue <> Null then
                              Sql.Add('and Depid in ('+IntToStr(Dblcb_ParentDep.KeyValue)+')');
                         SQL.Add('Order By ServiceType');  }
                         sql.SaveToFile('c:\nooftestdone.txt');
                         open;
                    end;
               end;

               if Dblcb_ParentDep.KeyValue<> Null then
                    QRLabelUser.Caption:=Dblcb_ParentDep.Text
               else
                    QRLabelUser.Caption:='All( Test Only)';
               Date1.Caption:=ls_fromdate;
               Date2.Caption:=ls_todate;

               if pb_SendToExcel=False then
               Begin
                    QuickRep1.Preview;
               End
               Else
               Begin
                    SendToExcels(OraQuery_sendtoexcel,nil,'No of Test Done ',ls_fromdate+'-'+ls_todate,''
                    ,gs_HospitalName,gs_HospitalAddress,2);

                    pb_SendToExcel:=False;
               End;
          end;
     finally
          FormRepNoofTestDone.Free;
     end;
end;

procedure TFormNoofTestDone.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom,BtnFrom);
end;

procedure TFormNoofTestDone.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo,BtnTo);
end;

procedure TFormNoofTestDone.btn_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TFormNoofTestDone.DBLCB_DepNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
          Dblcb_ParentDep.KeyValue:=null;
end;

procedure TFormNoofTestDone.Dblcb_ParentDepClick(Sender: TObject);
begin
    { With QueryDepartment do
     begin
          Close;
          Session:=Dm_Hospital.Db;
          SQL[1]:='Where DepID in (Select DepID from Department Where ParentDepID='+IntToStr(Dblcb_ParentDep.KeyValue)+')';
          Open;
     end;  }
end;

procedure TFormNoofTestDone.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key=VK_ESCAPE then
    begin
      Close;
    end;

end;

procedure TFormNoofTestDone.FormShow(Sender: TObject);
begin
     CreateQuery;
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := gs_From;
     DateEditXTo.text := gs_to;
     BtnFrom.Caption:=gs_DateCaption;
     BtnTo.Caption:=gs_DateCaption;
     pb_SendToExcel:=False;
     with Query_ParentDep do
     begin
          close;
          Session:=Dm_Hospital.Db;
          open;
     end;
end;
Initialization

RegisterClass(TFormNoofTestDone);

Finalization

UnRegisterClass(TFormNoofTestDone);

end.
