unit UnitVDC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, DBCtrls, Db, Fxn, DM, ServerDate,
  DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TFormVDC = class(TForm)
    PageControlVDC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BitBtnNew: TBitBtn;
    BitBtnSave: TBitBtn;
    BitBtnCancel: TBitBtn;
    LabelVdc: TLabel;
    LabelVdcId: TLabel;
    EditName: TEdit;
    LabelVdcName: TLabel;
    DBLookupComboBoxZone: TDBLookupComboBox;
    DBLookupComboBoxDistric: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    QueryDistrict: TOraQuery;
    DataSourceQueryDistrict: TDataSource;
    QueryVDC: TOraQuery;
    DataSourceQueryVDC: TDataSource;
    Shape13: TShape;
    EditSearch: TEdit;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CB_ShowAllVDC: TCheckBox;
    Query_Zone: TOraQuery;
    DS_Zone: TDataSource;
    Query_Process: TOraQuery;
    DBLB_District: TDBLookupComboBox;
    Label3: TLabel;
    CB_ChangeDistrict: TCheckBox;
    procedure BitBtnCancelClick(Sender: TObject);
    procedure BitBtnNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBoxZoneClick(Sender: TObject);
    procedure DBLookupComboBoxDistricClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PageControlVDCChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CB_ShowAllVDCClick(Sender: TObject);
    procedure CB_ChangeDistrictClick(Sender: TObject);
    procedure DBLB_DistrictClick(Sender: TObject);
  private
    { Private declarations }
    pb_isNew :boolean;
  public

          pi_ZoneId,pi_DistrictId,pi_VDCMCPTID: Integer;
          pi_PreZoneId,pi_PreDistrictId : Integer;
    { Public declarations }
  end;

var
  FormVDC: TFormVDC;

implementation

{$R *.DFM}

procedure TFormVDC.BitBtnCancelClick(Sender: TObject);
begin
     if pagecontrolvdc.ActivePageIndex=1 then
     begin
          pagecontrolvdc.ActivePageIndex:=0;
          BitbtnSave.Enabled:=false;
          BitBtnNew.Enabled:=true;
     end
     else
     Close;
end;

procedure TFormVDC.BitBtnNewClick(Sender: TObject);
begin
     pb_isNew:=true;
     editname.Text:='';
     if (Trim(DBLookupComboBoxZone.Text)='') or (Trim(DBLookupComboBoxDistric.KeyValue)='') then
     begin
          MessageDlg(' You must have to select Zone and District for new VDC/MCPT. Entry',mtWarning,[mbOK],0);
          Exit;
     end;
     pi_ZoneId:=DBLookupComboBoxZone.KeyValue;
     pi_DistrictId:=DBLookupComboBoxDistric.KeyValue;
     BitbtnSave.Enabled:=true;
     BitBtnNew.Enabled:=false;
     pagecontrolvdc.ActivePageIndex:=1;
     Label3.Enabled:=False;
     Label3.Visible:=False;
     DBLB_District.KeyValue:=-1;
     DBLB_District.Enabled:=False;
     DBLB_District.Visible:=False;
end;

procedure TFormVDC.FormShow(Sender: TObject);
begin
     With QueryDistrict do
     begin
          Close;
          SQL.Clear;
          SQL.Add(' SELECT * from HS_DISTRICT');
          SQL.Add(' Order by DistrictName');
     end;

     With Query_Zone do
     begin
          close;
          open;
     end;
     PageControlVDC.ActivePageIndex:=0;
end;

procedure TFormVDC.DBLookupComboBoxZoneClick(Sender: TObject);
begin
     if Trim(DBLookupComboBoxZone.Text)<>'' then
     begin
          With QueryDistrict do
          begin
               close;
               SQL.Clear;
               SQL.add(' SELECT * from HS_DISTRICT ');
               SQL.add(' WHERE ZONEID='+IntToStr(DBLookupComboBoxZone.KeyValue));
               SQL.add(' Order by DistrictName');
               open;
          end;
          DBLookupComboBoxDistric.KeyValue:=QueryDistrict.fieldbyname('DistrictId').asinteger;
          With QueryVDC do
          begin
               close;
               SQL.Clear;
               SQL.Add(' SELECT * from HS_VDCMCPT');
               SQL.Add(' WHERE ZONEID='+IntToStr(DBLookupComboBoxZone.KeyValue));
               if Trim(DBLookupComboBoxDistric.Text)<>'' then
               SQL.Add(' and DistrictId='+IntToStr(DBLookupComboBoxDistric.KeyValue));
               SQL.Add(' Order by VDCName');
               open;
          end;
     end;
end;

procedure TFormVDC.DBLB_DistrictClick(Sender: TObject);
begin
     if Trim(DBLB_District.Text)<>'' then
     begin
          pi_preZoneId:=pi_ZoneId;
          pi_PreDistrictId:=pi_DistrictId;
          pi_ZoneId:=QueryVDC.FieldByName('ZoneID').AsInteger;
          pi_DistrictId:=QueryVDC.FieldByName('DistrictID').AsInteger;
     end
     else
     begin
          pi_ZoneId:=pi_preZoneId;
          pi_DistrictId:=pi_PreDistrictId;
     end;
end;

procedure TFormVDC.DBLookupComboBoxDistricClick(Sender: TObject);
begin
     if Trim(DBLookupComboBoxDistric.Text)<>'' then
     Begin
          With QueryVDC do
          begin
               close;
               SQL.Clear;
               SQL.Add(' SELECT * from HS_VDCMCPT');
               SQL.Add(' WHERE DistrictId='+IntToStr(DBLookupComboBoxDistric.KeyValue));
               SQL.Add(' Order by VDCName');
               open;
          end;
     end
     else
     begin
          QueryVDC.Close;
     end;
end;

procedure TFormVDC.DBGrid1DblClick(Sender: TObject);
begin
     EditName.Text:=QueryVDC.fieldbyname('VDCName').asstring;
     pi_ZoneId:=QueryVDC.fieldbyname('ZoneId').AsInteger;
     pi_DistrictId:=QueryVDC.fieldbyname('DistrictId').AsInteger;
     pi_VDCMCPTID:=QueryVDC.fieldbyname('VDCMCPTId').AsInteger;
     bitbtnsave.Enabled:=true;
     bitbtnnew.Enabled:=false;
     PageControlVDC.ActivePageIndex:=1;
     pb_isNew:=False;

     Label3.Enabled:=False;
     Label3.Visible:=True;
     DBLB_District.KeyValue:=-1;
     DBLB_District.Enabled:=False;
     DBLB_District.Visible:=True;

end;

procedure TFormVDC.PageControlVDCChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  bitbtnnew.Click;
end;

procedure TFormVDC.BitBtnSaveClick(Sender: TObject);
begin
     if Trim(EditName.Text)='' then
     begin
          MessageDlg(' You must have to put VDC/MCPT.',mtWarning,[mbOK],0);
          EditName.SetFocus;
          Exit;
     end;

     if pb_isNew then
     begin
          With Query_Process do
          begin
               Close;
               SQL.Clear;
               SQL.Add(' Insert Into HS_VDCMCPT(VDCMCPTID,ZONEID,DISTRICTID,VDCNAME) Values ((Select max(VDCMCPTID)+1 From HS_VDCMCPT)');
               SQL.Add(' ,'+IntToStr(pi_ZoneId)+','+IntToStr(pi_DistrictId)+','+#39+StringReplace(EditName.Text,'''','''''',[rfReplaceAll])+#39);
               SQL.Add(' )');
               ExecSQL;
          end;
     end
     else
     Begin
          With Query_Process do
          begin
               Close;
               SQL.Clear;
               SQL.Add(' Update HS_VDCMCPT Set ZONEID='+IntToStr(pi_ZoneId)+' ,DISTRICTID='+IntToStr(pi_DistrictId));
               SQL.Add(' ,VDCNAME='+#39+StringReplace(EditName.Text,'''','''''',[rfReplaceAll])+#39);
               SQL.Add(' where VDCMCPTID='+IntToStr(pi_VDCMCPTID));
               ExecSQL;
          end;
     End;

     With QueryVDC do
     begin
          close;
          SQL.Clear;
          SQL.Add(' SELECT * from HS_VDCMCPT');
          SQL.Add(' WHERE DistrictId='+IntToStr(pi_DistrictId));
          SQL.Add(' Order by VDCName');
          open;
     end;
     pagecontrolVDC.ActivePageIndex:=0;
     BitbtnSave.Enabled:=false;
     BitBtnNew.Enabled:=true;
end;

procedure TFormVDC.CB_ShowAllVDCClick(Sender: TObject);
begin
     if CB_ShowAllVDC.Checked then
     begin
          DBLookupComboBoxZone.KeyValue:=-1;
          DBLookupComboBoxZone.Enabled:=False;
          DBLookupComboBoxZone.Color:=clMenu;


          DBLookupComboBoxDistric.KeyValue:=-1;
          DBLookupComboBoxDistric.Enabled:=False;
          DBLookupComboBoxDistric.Color:=clMenu;

          With QueryVDC do
          begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from HS_VDCMCPT ');
               SQL.Add('Order by VDCName');
               Open;
          end;
     end
     else
     begin
          DBLookupComboBoxZone.KeyValue:=-1;
          DBLookupComboBoxZone.Enabled:=True;
          DBLookupComboBoxZone.Color:=clWhite;


          DBLookupComboBoxDistric.KeyValue:=-1;
          DBLookupComboBoxDistric.Enabled:=True;
          DBLookupComboBoxDistric.Color:=clWhite;
     end;
end;

procedure TFormVDC.CB_ChangeDistrictClick(Sender: TObject);
begin
     if CB_ChangeDistrict.Checked=True then
     begin
          Label3.Enabled:=True;
          DBLB_District.Enabled:=True;
          DBLB_District.KeyValue:=pi_DistrictId;
     end
     else
     begin
          Label3.Enabled:=False;
          DBLB_District.Enabled:=False;
          DBLB_District.KeyValue:=-1;
     end;
end;

end.
