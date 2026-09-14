unit Unit_WebBroadcast;

interface

uses
     Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Spin, OleCtrls, DateEditXControl_TLB, CheckLst, Buttons, DB, DBTables, Grids, DBGrids, ComCtrls,
     fxn, serverdate, dm, Unit_master,
     ExtCtrls;

type
     TForm_WebBroadcast = class(TForm)
          Panel2: TPanel;
          BB_Save: TBitBtn;
          BB_Close: TBitBtn;
          BB_New: TBitBtn;
          PageControl1: TPageControl;
          TabSheet1: TTabSheet;
          Panel_Head: TPanel;
          GB_PatientSearch: TGroupBox;
          Label26: TLabel;
          Edit13: TEdit;
          CLB_Department: TCheckListBox;
          GB_Searchbydate: TGroupBox;
          Label11: TLabel;
          SpeedButton6: TSpeedButton;
          Label13: TLabel;
          SpeedButton7: TSpeedButton;
          CB_Date: TCheckBox;
          Dex_CLFrom: TDateEditX;
          Dex_CLTo: TDateEditX;
          GroupBox6: TGroupBox;
          Label31: TLabel;
          Label32: TLabel;
          BB_Refresh: TSpeedButton;
          Se_CLDays: TSpinEdit;
          Cb_Mode: TComboBox;
          Label1: TLabel;
          Edit8: TEdit;
          Edit9: TEdit;
          Edit10: TEdit;
          Edit11: TEdit;
          Edit12: TEdit;
          Edit14: TEdit;
          Edit15: TEdit;
          DBGrid2: TDBGrid;
          Query_SampleCollected: TQuery;
          DS_SampleCollected: TDataSource;
          procedure FormCreate(Sender: TObject);
          procedure BB_RefreshClick(Sender: TObject);
     private
          Ps_TodaysDate: String;
          { Private declarations }
     public
          { Public declarations }
     end;

var
     Form_WebBroadcast: TForm_WebBroadcast;

implementation

{$R *.dfm}

procedure TForm_WebBroadcast.BB_RefreshClick(Sender: TObject);
Var
     depid: string;
     i: integer;
begin
     if gi_datesystem = 0 then
          Ps_TodaysDate := TodaysDateVS
     else
          Ps_TodaysDate := TodaysDate;
     gs_From := Dex_CLFrom.Text;
     gs_to := Dex_CLTo.Text;
     for i := 0 to CLB_Department.Items.Count - 1 do
     begin
          if CLB_Department.State[i] = cbChecked then
          begin
               if depid = '' then
                    depid := Arr_CLB_DepartmentID[i, 0]
               else
                    depid := depid + ',' + Arr_CLB_DepartmentID[i, 0];
          end;
     end;
     with Query_SampleCollected do
     begin
          Close;
          if CB_Date.Checked = true then
               SQL[1] := 'Where Testdate Between ' + #39 + gs_From + #39 + ' And ' + #39 + gs_to + #39
          else
               SQL[1] := 'Where Testdate =' + #39 + Ps_TodaysDate + #39;
          if depid <> '' then
               SQL[2] := 'And DepID in (' + depid + ')'
          else
               SQL[2] := 'And 99=99';

          if Cb_Mode.ItemIndex = 0 then
               SQL[1] := 'Where 99=99'
          else if Cb_Mode.ItemIndex = 1 then
               SQL[1] := 'Where TestProgressStatus=4'
          else if Cb_Mode.ItemIndex = 2 then
               SQL[1] := 'Where TestProgressStatus=5'
          else if Cb_Mode.ItemIndex = 3 then
               SQL[1] := 'Where TestProgressStatus=6'
          else if Cb_Mode.ItemIndex = 4 then
               SQL[1] := 'Where TestProgressStatus=7';
          Open;
     end;
end;

procedure TForm_WebBroadcast.FormCreate(Sender: TObject);
begin
     LoadDepartmentINCheckListBox(CLB_Department);
     Cb_Mode.ItemIndex := 0;
     BB_RefreshClick(Sender);
end;

end.
