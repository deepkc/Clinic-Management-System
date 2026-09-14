unit Unit_ReferralSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ServerDate,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, ComCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,DBGridExportToExcel;

type
  TForm_ReferalOrg = class(TForm)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    BB_Close: TBitBtn;
    BB_New: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit_Search: TEdit;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    RB_All: TRadioButton;
    RB_Active: TRadioButton;
    RB_Inactive: TRadioButton;
    TabSheet2: TTabSheet;
    Label8: TLabel;
    Label1: TLabel;
    le_Docname: TLabeledEdit;
    cb_isactive: TCheckBox;
    LE_PhoneNo: TLabeledEdit;
    LE_MobileNo: TLabeledEdit;
    Edit_Email: TEdit;
    Query_list: TOraQuery;
    Ds_List: TDataSource;
    procedure BB_SaveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure RB_AllClick(Sender: TObject);
    procedure RB_ActiveClick(Sender: TObject);
    procedure RB_InactiveClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pb_isnew: Boolean;
    pi_RefHosID: integer;
  public
    { Public declarations }
  end;

var
  Form_ReferalOrg: TForm_ReferalOrg;

implementation

Uses      Unit_Master,Fxn;

{$R *.dfm}

procedure TForm_ReferalOrg.BB_CloseClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex = 1 then
     Begin
          PageControl1.ActivePageIndex := 0;
          Query_list.Close;
          Query_list.DatabaseName := gs_DatabaseName;
          Query_list.Open;
          Query_list.Locate('REHO_REFHOSID',pi_RefHosID,[]);
     End
     else
          Close;
end;

procedure TForm_ReferalOrg.BB_NewClick(Sender: TObject);
begin
     pb_isnew := true;
     PageControl1.ActivePageIndex := 1;
     ClearAll(PageControl1.Pages[1]);
     cb_isactive.Checked:=True;
     le_Docname.SetFocus;
end;

procedure TForm_ReferalOrg.BB_SaveClick(Sender: TObject);
Var
     ls_ISACTIVE, ls_HOSNAME, ls_Email: String;
     ls_PhoneNo, ls_MobileNo:String;
begin
     if cb_isactive.Checked = true then
          ls_ISACTIVE := 'Y'
     else
          ls_ISACTIVE := 'N';

     ls_HOSNAME := Trim(le_Docname.Text);

     ls_PhoneNo := LE_PhoneNo.Text;
     ls_MobileNo := LE_MobileNo.Text;
     ls_Email :=Edit_Email.Text;

     try
          if pb_isnew then
          SaveReferralSetup(ls_HOSNAME, ls_ISACTIVE,ls_PhoneNo,ls_MobileNo,ls_Email,pi_RefHosID)
          else
          UpdateReferralSetup(pi_RefHosID,ls_HOSNAME, ls_ISACTIVE,ls_PhoneNo,ls_MobileNo,ls_Email);
          ShowDoneMessage;
          WITH QUERY_LIST DO
          BEGIN
               CLOSE;
               OPEN;
          END;
          ClearAll(PageControl1.Pages[1]);
          cb_isactive.Checked:=True;

          Query_list.Locate('REHO_REFHOSID',pi_RefHosID,[]);
          pb_isnew := true;
     except
          MsgBox(1005, 0, '', '', '');
     end;
end;

procedure TForm_ReferalOrg.FormShow(Sender: TObject);
begin
     With Query_list do
     Begin
         Close;
         sql[1]:='Where REHO_isactive=''Y''';
         Open;
     End;
end;

procedure TForm_ReferalOrg.RB_ActiveClick(Sender: TObject);
begin
     if RB_ACTIVE.Checked=True then
     Begin
          With Query_list do
          Begin
               Close;
               sql[1]:='Where REHO_isactive=''Y''';
               Open;
          End;
     End;
end;

procedure TForm_ReferalOrg.RB_AllClick(Sender: TObject);
begin
      if RB_All.Checked=True then
     Begin
          With Query_list do
          Begin
               Close;
               sql[1]:='';
               Open;
          End;
     End;
end;

procedure TForm_ReferalOrg.RB_InactiveClick(Sender: TObject);
begin
     if RB_INACTIVE.Checked=True then
     Begin
          With Query_list do
          Begin
               Close;
               sql[1]:='Where REHO_isactive=''N''';
               Open;
          End;
     End;
end;

procedure TForm_ReferalOrg.SpeedButton2Click(Sender: TObject);
begin
     if MsgBox(1010, 1, '', '', '') then
     begin
          ExportDBGrid(Form_ReferalOrg, DBGrid1, true, 'Referring Hospital List ', TodaysDateVS + ' BS -' + TodaysDate + ' AD');
     end;
end;

end.
