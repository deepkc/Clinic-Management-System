unit Unit_ClinicalMasterSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, DBAccess,
  Ora, MemDS, AdvGroupBox, AdvDualListBox, AdvWiiProgressBar;

type
  TForm_MasterSetup = class(TForm)
    Panel_Header: TPanel;
    BitBtn_Close: TBitBtn;
    BitBtn_New: TBitBtn;
    BitBtn_Save: TBitBtn;
    PageControl_MasterSetup: TPageControl;
    TabSheet_List: TTabSheet;
    TabSheet_New: TTabSheet;
    Panel_New: TPanel;
    Edit_MasterSetupName: TEdit;
    ComboBox_SetupType: TComboBox;
    Label_Setuptype: TLabel;
    Label_Name: TLabel;
    DBGrid1: TDBGrid;
    OraQuery_name: TOraQuery;
    OraDataSource_name: TOraDataSource;
    OraQuery_Save: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn_CloseClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn_NewClick(Sender: TObject);
    procedure PageControl_MasterSetupChange(Sender: TObject);
    procedure BitBtn_SaveClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
  var pg_isNew:Boolean;
    { Private declarations }
  public
  pi_setupid:Integer;
    { Public declarations }
  end;

var
  Form_MasterSetup: TForm_MasterSetup;

implementation
    uses
     Fxn, ServerDate,Dm;
{$R *.dfm}

procedure TForm_MasterSetup.BitBtn_CloseClick(Sender: TObject);
begin
     if PageControl_MasterSetup.ActivePageIndex=0 then
     begin
          Close;
     end;
     PageControl_MasterSetup.ActivePageIndex:=0;
     BitBtn_Save.Enabled:=false;
     BitBtn_New.Enabled:=true;

end;

procedure TForm_MasterSetup.BitBtn_NewClick(Sender: TObject);
begin
     pg_isNew:=true;
     PageControl_MasterSetup.ActivePageIndex:=1;
     BitBtn_Save.Enabled:=true;
     BitBtn_New.Enabled:=false;
     Edit_MasterSetupName.Clear;
     if pi_setupid=1 then
     ComboBox_SetupType.ItemIndex:=-1
     else if pi_setupid=2 then
          ComboBox_SetupType.Visible:=False;

end;

procedure TForm_MasterSetup.BitBtn_SaveClick(Sender: TObject);
var SAVEID:Integer;
     SINGLE:String;
begin
     //SINGLE:=(ComboBox_SetupType.Text,1,1);
     if pi_setupid=1 then
     begin
          if pg_isNew then
          begin
               SAVEID:=GetmaxId('HC_MASE_MasterSetup','MASE_MASTERSETUPID');
               With OraQuery_Save do
               begin
                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    Sql.Add('Insert Into HC_MASE_MASTERSETUP(MASE_MASTERSETUPID,MASE_MASTERSETUPNAME,MASE_MASTERSETUPTYPE,MASE_MODIFIEDBY,MASE_MODIFIEDDATE,MASE_MODIFIEDTIME,MASE_MACID)');
                    SQL.ADD('VALUES('+INTTOSTR(SAVEID));
                    Sql.Add(',' + QUOTEDSTR(Edit_MasterSetupName.Text));
                   // Sql.Add(',' + QUOTEDSTR(ComboBox_SetupType.Text));
                    if ComboBox_SetupType.ItemIndex=0 then
                    begin
                         Sql.Add(','+quotedstr('R'));
                    end
                    Else if ComboBox_SetupType.ItemIndex=1 then
                    begin
                         Sql.Add(','+QuotedStr('H'));
                    end
                    Else if ComboBox_SetupType.ItemIndex=2 then
                    begin
                         Sql.Add(','+QuotedStr('H'));
                    end;

                    Sql.Add(','+ IntToStr(gi_userid));
                    Sql.Add(','+ QuotedStr(Serverdate.TodaysDate));
                    Sql.Add(','+ QuotedStr(Serverdate.TodaysTime));
                    Sql.Add(',' + QuotedStr(gs_MacID));
                    Sql.Add(')');
                    //Sql.SaveToFile('d:\savesetrup.txt');
                    execSql;
               end;
          end
          else
          SAVEID:=OraQuery_name.FieldByName('id').AsInteger;
          with OraQuery_Save do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               Sql.Clear;
               Sql.Add('Update HC_MASE_MASTERSETUP SET');
               Sql.Add('MASE_MASTERSETUPNAME=' + Quotedstr(Edit_MasterSetupName.Text));
               //sql.Add(',MASE_MASTERSETUPTYPE=' + Quotedstr(ComboBox_SetupType.Text));
               if ComboBox_SetupType.ItemIndex=0 then
               Sql.Add(',MASE_MASTERSETUPTYPE=' + QuotedStr('R'))
               Else if ComboBox_SetupType.ItemIndex=1 then
               begin
                    Sql.Add(',MASE_MASTERSETUPTYPE=' + QuotedStr('H'))
               end;

               Sql.Add(',MASE_MODIFIEDBY=' + IntToStr(gi_userid));
               Sql.Add(',MASE_MODIFIEDDATE=' + QuotedStr(Serverdate.TodaysDate));
               Sql.Add(',MASE_MODIFIEDTIME=' + QuotedStr(Serverdate.TodaysTime));
               Sql.Add(',MASE_MACID=' + QuotedStr(gs_MacID));
               Sql.Add('where MASE_MASTERSETUPID=' +IntToStr(SAVEID));
               //Sql.SaveToFile('d:\updatesetup.txt');
               execSql;
          end;
          Showdonemessage;
          OraQuery_name.Close;
          OraQuery_name.Open;
          BitBtn_New.Enabled:=true;
          BitBtn_Save.Enabled:=false;
          PageControl_MasterSetup.ActivePageIndex:=0;
     end
     else if pi_setupid=2 then
     begin
          if pg_isNew then
          begin
               SAVEID:=GetmaxId('hc_pase_panelsetup','PASE_ID');
               With OraQuery_Save do
               begin
                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    Sql.Add('Insert Into hc_pase_panelsetup(PASE_ID,PASE_PANELNAME)');
                    SQL.ADD('VALUES('+INTTOSTR(SAVEID));
                    Sql.Add(',' + QUOTEDSTR(Edit_MasterSetupName.Text));
                    Sql.Add(')');
                    //Sql.SaveToFile('d:\savesetrup.txt');
                    execSql;
               end;
          end
          else
          SAVEID:=OraQuery_name.FieldByName('ID').AsInteger;
          with OraQuery_Save do
          begin
               Close;
               Session:=Dm_Hospital.Db;
               Sql.Clear;
               Sql.Add('Update hc_pase_panelsetup SET');
               Sql.Add('PASE_PANELNAME=' + Quotedstr(Edit_MasterSetupName.Text));
               Sql.Add('where PASE_ID=' +IntToStr(SAVEID));
               //Sql.SaveToFile('d:\updatesetup.txt');
               execSql;
          end;
          Showdonemessage;
          OraQuery_name.Close;
          OraQuery_name.Open;
          BitBtn_New.Enabled:=true;
          BitBtn_Save.Enabled:=false;
          PageControl_MasterSetup.ActivePageIndex:=0;
     end;
end;

procedure TForm_MasterSetup.DBGrid1DblClick(Sender: TObject);
begin
     BitBtn_Save.Enabled:=true;
     BitBtn_New.Enabled:=true;
     PageControl_MasterSetup.ActivePageIndex:=1;
     if pi_setupid=1 then
     begin
          Edit_MasterSetupName.Text:=OraQuery_name.FieldByName('NAME').AsString;
          //ComboBox_SetupType.Text:=OraQuery_name.FieldByName('MASE_MASTERSETUPTYPE').AsString;
          if OraQuery_name.FieldByName('MASE_MASTERSETUPTYPE').AsString='R' then
          BEGIN
               ComboBox_SetupType.Text:='RADIOLOGY';
          END
          Else if OraQuery_name.FieldByName('MASE_MASTERSETUPTYPE').AsString='H' then
          begin
               ComboBox_SetupType.Text:='HISTOLOGY';
          end;
     end
     else if pi_setupid=2 then
     BEGIN
          Edit_MasterSetupName.Text:=OraQuery_name.FieldByName('nAME').AsString;
          ComboBox_SetupType.Visible:=False;
     END;

end;

procedure TForm_MasterSetup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if key=VK_ESCAPE then
     BitBtn_CloseClick(Sender);
     if key=VK_F12 then
     BitBtn_SaveClick(Sender);


end;

procedure TForm_MasterSetup.FormShow(Sender: TObject);
begin
     BitBtn_Save.Enabled:=false;
     PageControl_MasterSetup.ActivePageIndex:=0;
     with OraQuery_name do
     begin
          Close;
          Session:=DM_Hospital.DB;
          SQL.Clear;
          if pi_setupid=1 then
          begin
               SQL.Add('select MASE_MASTERSETUPID as ID,MASE_MASTERSETUPNAME as Name,');
               SQL.Add('MASE_MASTERSETUPTYPE ');
               SQL.add('from  HC_MASE_MasterSetup order by mase_mastersetupid')

          end
          else if pi_setupid=2 then
          begin
               SQL.Add('select PASE_ID as ID,  PASE_PANELNAME as Name,'''' as MASE_MASTERSETUPTYPE');
               sql.Add('from hc_pase_panelsetup order by PASE_ID');
          end;
          open;
     end;
     if pi_setupid<>1 then
     begin
          DBGrid1.Columns[2].Visible:=False;
          Label_Setuptype.Visible:=False;
          Label_Name.Caption:='Panel Name Setup';
     end;
     //OraQuery_name.Close;
     //OraQuery_name.Open;

end;

procedure TForm_MasterSetup.PageControl_MasterSetupChange(Sender: TObject);
begin
     if PageControl_MasterSetup.ActivePageIndex=0 then
     begin
          PageControl_MasterSetup.ActivePageIndex:=1;
     end
     else if PageControl_MasterSetup.ActivePageIndex=1 then
     begin
          PageControl_MasterSetup.ActivePageIndex:=0;
     end;
end;

end.
