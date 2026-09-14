unit UnitNoofTestDone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn,dm,serverdate,
  Dialogs, ComCtrls, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons, DBCtrls,
  ExtCtrls, DB, DBTables;

type
  TFormNoofTestDone = class(TForm)
    Panel1: TPanel;
    Btn_Preview: TButton;
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
    QueryDepartment: TQuery;
    DS_Dept: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BtnFromClick(Sender: TObject);
    procedure BtnToClick(Sender: TObject);
    procedure Btn_PreviewClick(Sender: TObject);
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

procedure TFormNoofTestDone.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom,BtnFrom);
end;

procedure TFormNoofTestDone.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo,BtnTo);
end;

procedure TFormNoofTestDone.Btn_PreviewClick(Sender: TObject);
begin
     try
          FormRepNoofTestDone:=TFormRepNoofTestDone.Create(Nil);
          with FormRepNoofTestDone do
          begin
               with QueryMain do
               begin
                    close;
                    DatabaseName:=gs_DatabaseName;
                    Sql.Clear;
                    Sql.Add('Select A.*,b.CNoofTest,b.CAmount,b.CVatAmt,b.Cdiscount from ');
                    Sql.Add('(Select ServiceType, Depid, Sum(Qty) as NoofTest, Round(Sum(Amount),3) as Amount, Round(Sum(VatAmt),3) as VatAmt, Round(Sum(Discount),3) as Discount');
                    Sql.Add('from VW_User_Wise_Coll_Detail');
                    Sql.Add('where CancelStatus=''N'' and billdate>='+#39+DateEditxFrom.text+#39+' and billdate<='+#39+DateEditxTo.Text+#39);
                    Sql.Add('Group by ServiceType,Depid) A');
                    Sql.Add(',');
                    Sql.Add('(Select ServiceType, Depid, NVl(Sum(Qty),0) as CNoofTest, Nvl(Round(Sum(Amount),3),0) as CAmount, NVL(Round(Sum(VatAmt),3),0) as CVatAmt, NVL(Round(Sum(Discount),3),0) as CDiscount');
                    Sql.Add('from VW_User_Wise_Coll_Detail');
                    Sql.Add('where CancelStatus=''Y'' and billdate>='+#39+DateEditxFrom.text+#39+' and billdate<='+#39+DateEditxTo.Text+#39);
                    Sql.Add('Group by ServiceType,Depid) B');
                    Sql.Add('where A.serviceType=b.Servicetype(+)');
                    if DBLCB_DepName.KeyValue <> Null then
                    Sql.Add('and A.Depid ='+IntToStr(DBLCB_DepName.KeyValue));
                    Sql.SaveToFile('D:\testcount.txt');
                    Open;
               end;
               if DBLCB_DepName.KeyValue<> Null then
                    QRLabelUser.Caption:=DBLCB_DepName.Text
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

procedure TFormNoofTestDone.FormShow(Sender: TObject);
begin
     with QueryDepartment do
     begin
          close;
          DatabaseName:=gs_DatabaseName;
          open;
     end;
end;
Initialization

RegisterClass(TFormNoofTestDone);

Finalization

UnRegisterClass(TFormNoofTestDone);

end.
