unit Unit_Testsetupdetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ServerDate,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, DB,DBGrids, MemDS, DBAccess, Ora,dm,Fxn,UnitSendToExcel;

type
  TForm_testdetail = class(TForm)
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    BB_Close: TBitBtn;
    pnl_client: TPanel;
    lbl1: TLabel;
    dblkcbb_dep: TDBLookupComboBox;
    chk_all: TCheckBox;
    orqry_dep: TOraQuery;
    ds_dep: TDataSource;
    procedure BB_CloseClick(Sender: TObject);
    procedure chk_allClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
  dbGRid:TDBGrid;
    { Public declarations }
  end;

var
  Form_testdetail: TForm_testdetail;

implementation

{$R *.dfm}

procedure TForm_testdetail.BB_CloseClick(Sender: TObject);
begin
cLOSE;
end;

procedure TForm_testdetail.chk_allClick(Sender: TObject);
begin
    if chk_all.Checked then
        dblkcbb_dep.Enabled:=false
    else
    dblkcbb_dep.Enabled:=True;
end;

procedure TForm_testdetail.FormCreate(Sender: TObject);
begin
    RefreshQuery(orqry_dep,'');
    chk_all.Checked:=True;
    dbGRid:=TDBGrid.Create(Self);
end;

procedure TForm_testdetail.SpeedButton2Click(Sender: TObject);
var
  Orqry:TOraQuery;
  datasource1:TDataSource;
begin
    try
      Orqry:=TOraQuery.Create(nil);
      with Orqry do
      begin
        Close;
        Session:=DM_Hospital.DB;
        sql.Clear;
        SQL.Add('SELECT testname,TEST,LRANGEG,HRANGEG,LRANGEM,HRANGEM,LRANGEF,HRANGEF,LRANGEC,HRANGEC,UNIT,SPECIALRANGE');
        sql.Add(' from VW_testdetail');
        if chk_all.Checked=false then
        begin
          SQL.Add('where depid='+quotedstr(dblkcbb_dep.KeyValue));
        end;
        //SQL.SaveToFile('c:\checktestdetail.txt');
        Open;
      end;
      datasource1:=TDataSource.Create(Self);
      datasource1.DataSet:=Orqry;
      dbGRid.DataSource:=datasource1;
      SendToExcels(nil,dbGRid,'Test Setup Detail',TodaysDate,'',gs_HospitalName,gs_HospitalAddress,0);
    finally
       Orqry.free;
    end;
end;

end.
