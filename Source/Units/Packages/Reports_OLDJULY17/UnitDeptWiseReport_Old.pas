unit UnitDeptWiseReport;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     fxn, dm, serverdate,
     Dialogs, ComCtrls, StdCtrls, OleCtrls, DateEditXControl_TLB, Buttons,
     DBCtrls,
     ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
     TFormDeptwiseCollection = class(TForm)
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
          Chk_Detail: TCheckBox;
          DateEditxFrom: TDateEditX;
          StatusBar1: TStatusBar;
          QueryDept: TOraQuery;
          Dsdept: TDataSource;
          procedure Btn_PreviewClick(Sender: TObject);
          procedure BtnFromClick(Sender: TObject);
          procedure BtnToClick(Sender: TObject);
          procedure FormShow(Sender: TObject);
          procedure DBLCB_DepNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
     private
          { Private declarations }
     public
          { Public declarations }
     end;

var
     FormDeptwiseCollection: TFormDeptwiseCollection;

implementation

uses UnitRepDeptWiseCollection;
{$R *.dfm}

procedure TFormDeptwiseCollection.BtnFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditxFrom, BtnFrom);
end;

procedure TFormDeptwiseCollection.BtnToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditXTo, BtnTo);
end;

procedure TFormDeptwiseCollection.Btn_PreviewClick(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     if (Chk_Detail.Checked = True) and (DBLCB_DepName.KeyValue = Null) then
     begin
          ShowMessage('Please Select the Department');
          DBLCB_DepName.SetFocus;
          exit;
     end;
     try
          FormRepDeptWiseSum := TFormRepDeptWiseSum.Create(nil);
          if Chk_Detail.Checked <> True then
          begin
               with FormRepDeptWiseSum do
               begin
                    With QueryMain do
                    begin
                         close;
                         Session:=Dm_Hospital.Db;
                         Sql.Clear;
                         Sql.Add(
                              ' select DepName, Round(Sum(Total),3) as CashAmt, Nvl(Round(Sum(CreditTotal),3),0) as CreditAmt,');
                         Sql.Add(
                              ' NVL(Round(Sum(Discount),3),0) as FreeConAmt,NVL(Round(Sum(RfFreeCon),3),0)as RefFreeCon, NVl(Round(Sum(NetREfAMt),3),0) as NetRefAMt');
                         Sql.Add(' from VW_Dept_Wise_Total_Coll');
                         Sql.Add
                           (' where BillDate>='#39 + DateEditxFrom.text + #39 + 'and BillDate<='#39 +
                                DateEditXTo.text + #39);
                         if DBLCB_DepName.KeyValue <> Null then
                              Sql.Add('And DepId = ' + IntToStr(DBLCB_DepName.KeyValue));
                         Sql.Add(' Group by DepName');
                         Sql.Add(' Order by DepName');
                         // ParamByName('FromDate').AsString:=DateEditxFrom.text;
                         // ParamByName('ToDate').AsString:=DateEditXTo.text;
                         // Sql.SaveToFile('D:\User.txt');
                         Open;
                    end;
                    with QueryDeposit do
                    begin
                         close;
                         Session:=Dm_Hospital.Db;
                         Sql.Clear;
                         Sql.Add('Select Sum(CrAmount) As Deposit,Sum(DrAmount) As DepositRef');
                         Sql.Add(' from deposit');
                         Sql.Add('where depositDate>='#39 + DateEditxFrom.text + #39 + 'and depositDate<='#39 +
                                DateEditXTo.text + #39);
                         Open;
                    end;
                    QRLabel7.Caption := DateEditxFrom.text;
                    QRLabel6.Caption := DateEditXTo.text;
                    QuickRep1.Preview;
               end;
          end
          else
          begin
               // Detail report
          end;

     finally
          FormRepDeptWiseSum.free;
     end;
end;

procedure TFormDeptwiseCollection.DBLCB_DepNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if Key = VK_DELETE then
          DBLCB_DepName.KeyValue := Null;
end;

procedure TFormDeptwiseCollection.FormShow(Sender: TObject);
begin
     DateEditxFrom.SystemOfDate := gi_datesystem;
     DateEditXTo.SystemOfDate := gi_datesystem;
     DateEditxFrom.text := serverdate.TodaysDate;
     DateEditXTo.text := serverdate.TodaysDate;
     BtnFrom.Caption := gs_DateCaption;
     BtnTo.Caption := gs_DateCaption;
     with QueryDept do
     begin
          close;
          Session:=Dm_Hospital.Db;
          Open;
     end;
end;

initialization

RegisterClass(TFormDeptwiseCollection);

Finalization

UnRegisterClass(TFormDeptwiseCollection);

end.
