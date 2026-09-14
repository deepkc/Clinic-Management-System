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
    procedure FormShow(Sender: TObject);
    procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
    procedure DBLCB_DepNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Dblcb_ParentDepClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNoofTestDone: TFormNoofTestDone;

implementation

uses UnitRepNoofTestDone;

{$R *.dfm}

procedure TFormNoofTestDone.btn1Click(Sender: TObject);
begin
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
                         Sql.Add('and Depid in ('+IntToStr(Dblcb_ParentDep.KeyValue)+')');
                    SQL.Add('Group by DepID,ServiceType');
                    SQL.Add('Order By ServiceType');
                    //sql.SaveToFile('c:\tetsandhelllowt.txt');
                    Open;
               end;
               if Dblcb_ParentDep.KeyValue<> Null then
                    QRLabelUser.Caption:=Dblcb_ParentDep.Text
               else
                    QRLabelUser.Caption:='All( Test Only)';
               Date1.Caption:=DateEditxFrom.text;
               Date2.Caption:=DateEditXTo.text;
               QuickRep1.Preview;
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
