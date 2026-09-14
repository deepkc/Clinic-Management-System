unit Unit_Schemes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Unit_Master,Dm,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,fxn;

type
  TForm_Schemes = class(TForm)
    Panel1: TPanel;
    Btn_close: TBitBtn;
    BB_New: TBitBtn;
    btn_save: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Edit_Scheme: TEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DS_Scheme: TDataSource;
    Query_scheme: TOraQuery;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    CheckBox_Active: TCheckBox;
    Query_Blank: TOraQuery;
    BitBtn1: TBitBtn;
    procedure PageControl1Change(Sender: TObject);
    procedure Btn_closeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure BB_NewClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    schemeid,PbIsNew:integer;
    isactive:string;
  end;

var
  Form_Schemes: TForm_Schemes;

implementation

uses Unit_SchemeDetail;

{$R *.dfm}

procedure TForm_Schemes.BB_NewClick(Sender: TObject);
begin
     PbIsNew:=0;
     if PageControl1.ActivePageIndex=1 then
     PageControl1.ActivePageIndex:=0;
     Edit_Scheme.Clear;
end;

procedure TForm_Schemes.BitBtn1Click(Sender: TObject);
begin
     Try
          Form_SchemeDetail:=TForm_SchemeDetail.Create(Nil);
          Form_SchemeDetail.ShowModal;
     Finally
          Form_SchemeDetail.Free;
     End;
end;

procedure TForm_Schemes.Btn_closeClick(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     PageControl1.ActivePageIndex:=1
     else
     close;
end;

procedure TForm_Schemes.btn_saveClick(Sender: TObject);
begin
      if Edit_Scheme.Text='' then
     begin
          MessageDlg('scheme name can not be blank',mtInformation,[mbOK],0);
     end;
     if PbIsNew=0 then
     begin
          if edit_scheme.Text<>'' then
          begin
               if CheckDuplicateDataFrmTmp('scheme','schemename',gs_DatabaseName,Edit_scheme.Text)=false then
               begin
                    if CheckBox_Active.Checked=true then
                    Isactive:='Y'
                    else
                    Isactive:='N';
                    SaveScheme(Edit_Scheme.Text,isactive);
                    ShowDoneMessage;
                    PageControl1.ActivePageIndex:=1;
               end ;
          end;
     end
     else
     begin
           if CheckBox_Active.Checked=true then
           Isactive:='Y'
          else
          Isactive:='N';
          UpdateScheme(schemeid,Edit_Scheme.Text,isactive);
          ShowDoneMessage;
          PageControl1.ActivePageIndex:=1;
          //PbIsNew:=0;
     end;

          Query_scheme.Close;
          Query_scheme.Open;
end;

procedure TForm_Schemes.DBGrid1DblClick(Sender: TObject);
begin
     PbIsNew:=1;
     PageControl1.ActivePageIndex:=0;
     Edit_Scheme.Text:=Query_scheme.FieldByName('schemename').AsString;
     schemeid:=Query_scheme.FieldByName('schemeid').AsInteger;
     if Query_scheme.FieldByName('isactive').AsString='Y' then
     CheckBox_Active.Checked:=true
     else
     CheckBox_Active.Checked:=false;

end;

procedure TForm_Schemes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     Btn_closeClick(Sender);
end;

procedure TForm_Schemes.FormShow(Sender: TObject);
begin
     Query_scheme.Close;
     Query_scheme.Open;
end;

procedure TForm_Schemes.PageControl1Change(Sender: TObject);
begin
       if PageControl1.ActivePageIndex=0 then
     begin
          PageControl1.ActivePageIndex:=1 ;
          //btn_new.enabled:=true;
     end
     else
         begin
          PageControl1.ActivePageIndex:=0;
          //btn_save.enabled:=true;
          //btn_new.enabled:=false;
          end;
end;

procedure TForm_Schemes.SpeedButton2Click(Sender: TObject);
begin
     with Query_Blank do
     begin
          close;
          Session:=Dm_Hospital.Db;
          sql.Clear;
          sql.Add('delete from scheme where schemeid='+inttostr(Query_scheme.FieldByName('schemeid').AsInteger));
          execsql;
     end;
      Query_scheme.Close;
          Query_scheme.Open;
end;

end.
