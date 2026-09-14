unit Unit_CalculationName;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DBCtrls, DB, MemDS, DBAccess, Ora,DM,Fxn,
  ComCtrls, Grids, DBGrids;

type
  TForm_AutoCalculation = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    OraQuery_TestName: TOraQuery;
    DS_TestName: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit_CalcName: TEdit;
    DBLCB_TestName: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    OraQuery_DbGrid: TOraQuery;
    DS_Dbgrid: TDataSource;
    CB_IsActive: TCheckBox;
    DBLCB_SourceTestCode: TDBLookupComboBox;
    OraQuery_SourceTestCode: TOraQuery;
    DS_SourceTestCode: TDataSource;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLCB_TestNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit_CalcCodeKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_CalcNameKeyPress(Sender: TObject; var Key: Char);
    procedure DBLCB_TestNameKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
  pb_isInsert:boolean;
    { Public declarations }
  end;

var
  Form_AutoCalculation: TForm_AutoCalculation;

implementation

{$R *.dfm}
uses Unit_SetupSourceTestCode;

procedure TForm_AutoCalculation.BitBtn1Click(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=1 then
     begin
          PageControl1.ActivePageIndex:=0;
          BitBtn2.Enabled:=false;
          BitBtn3.Enabled:=True;
     end
     else
     close;
end;

procedure TForm_AutoCalculation.BitBtn2Click(Sender: TObject);
var OraQuery1:TOraQuery;
var OraQuery2:TOraQuery;
var IdMax:Integer;
begin
     if Trim(DBLCB_SourceTestCode.Text)='' then
     begin
         ShowMessage('Please Enter Calculation Code of Max 5 Character');
         DBLCB_SourceTestCode.SetFocus;
         Exit;
     end;
     if trim(Edit_CalcName.Text)='' then
     begin
          ShowMessage('Plese Enter Calculation Name');
          Edit_CalcName.SetFocus;
          exit;
     end;

     if DBLCB_TestName.KeyValue=Null then
     begin
          ShowMessage('Please Select the Test Name');
          DBLCB_TestName.SetFocus;
          exit;
     end;


     if pb_isInsert=True then
     begin
          OraQuery1:=TOraQuery.Create(nil);

          IdMax:=GetMaxId('lb_cana_calculationname','cana_CalculationId');
          try
               with OraQuery1 do
               begin
                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    SQL.Add('insert into lb_cana_calculationname values(');
                    sql.Add(IntToStr(Idmax)+','+QuotedStr(Trim(Edit_CalcName.Text))+','+QuotedStr(Trim(DBLCB_SourceTestCode.Text))+','+intToStr(DBLCB_TestName.KeyValue));
                    if CB_IsActive.Checked=True then
                    sql.Add(',''Y''')
                    else
                    sql.Add(',''N''');

                    sql.Add(')');
                    SQL.SaveToFile('C:\abc1234.txt');
                    ExecSQL;
               end;
          except
               ShowMessage('The Data You have Entered is already Saved or Could Not Saved');
               exit;
          end;
     end
     else
     begin
          OraQuery1:=TOraQuery.Create(nil);
          try
               with OraQuery1 do
               begin
                    Close;
                    Session:=DM_Hospital.DB;
                    sql.Clear;
                    SQL.Add('update lb_cana_calculationname set CANA_CALCULATIONNAME='+QuotedStr(Trim(Edit_CalcName.Text))+',CANA_SOURCETESTCODE='+QuotedStr(Trim(DBLCB_SourceTestCode.Text)));
                    sql.Add(',CANA_TESTNAMEID='+intToStr(DBLCB_TestName.KeyValue));
                    if CB_IsActive.Checked=True then
                    sql.Add(',CANA_ISACTIVE=''Y''')
                    else
                    sql.Add(',CANA_ISACTIVE=''N''');
                    sql.add(' where CANA_CALCULATIONID='+IntToStr(OraQuery_DbGrid.FieldByName('CANA_CALCULATIONID').AsInteger));
                    //sql.savetofile('C:\ab11222.txt');
                    ExecSQL;
               end;

          except

          end;
     end;

     Edit_CalcName.text:='';
     DBLCB_SourceTestCode.KeyValue:='';
     DBLCB_TestName.keyvalue:=null;
     PageControl1.ActivePageIndex:=0;
     OraQuery_DbGrid.Close;
     OraQuery_DbGrid.Session:=DM_Hospital.DB;
     OraQuery_DbGrid.Open;
     BitBtn3.Enabled:=True;
     BitBtn2.Enabled:=false;
     Oraquery1.Free;


end;

procedure TForm_AutoCalculation.BitBtn3Click(Sender: TObject);
begin
     PageControl1.ActivePageIndex:=1;
     BitBtn3.Enabled:=false;
     BitBtn2.Enabled:=True;
     DBLCB_SourceTestCode.KeyValue:='';
     Edit_CalcName.text:='';
     pb_isInsert:=True;
     DBLCB_TestName.keyvalue:=null;
     DBLCB_SourceTestCode.SetFocus;
end;

procedure TForm_AutoCalculation.BitBtn4Click(Sender: TObject);
begin
     try
          Form_SourceSetupTestCode:=TForm_SourceSetupTestCode.Create(nil);
          Form_SourceSetupTestCode.ShowModal;
     finally
          Form_SourceSetupTestCode.Free;
     end;
end;

procedure TForm_AutoCalculation.DBGrid1DblClick(Sender: TObject);

begin

     if OraQuery_DbGrid.RecordCount>0 then
     begin
          DBLCB_SourceTestCode.keyvalue:=OraQuery_DbGrid.FieldByName('CANA_SOURCETESTCODE').AsString;
          Edit_CalcName.Text:=OraQuery_DbGrid.FieldByName('cana_CALCULATIONNAME').AsString;
          DBLCB_TestName.KeyValue:=OraQuery_DbGrid.FieldByName('cana_TESTNAMEID').AsInteger;
          if OraQuery_DbGrid.fieldbyName('CANA_ISACTIVE').AsString='Y' then
          begin
          CB_IsActive.Checked:=True;
          end
          else
          CB_IsActive.Checked:=false;

          PageControl1.ActivePageIndex:=1;
          BitBtn3.Enabled:=false;
          BitBtn2.Enabled:=True;
          pb_isInsert:=False;
     end;

end;

procedure TForm_AutoCalculation.DBLCB_TestNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if Key=VK_DELETE then
     begin
       DBLCB_TestName.KeyValue:=null;
     end;
end;

procedure TForm_AutoCalculation.DBLCB_TestNameKeyPress(Sender: TObject;
  var Key: Char);
begin
     if Key=#13 then
     begin
          BitBtn2.SetFocus;
     end;
end;

procedure TForm_AutoCalculation.Edit_CalcCodeKeyPress(Sender: TObject;
  var Key: Char);
begin

     if Key=#13 then
     begin
          Edit_CalcName.SetFocus;
     end;

end;

procedure TForm_AutoCalculation.Edit_CalcNameKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key=#13 then
     begin
          DBLCB_TestName.setfocus;
     end;
end;

procedure TForm_AutoCalculation.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#27 then
          Close;

end;

procedure TForm_AutoCalculation.FormShow(Sender: TObject);
begin
     OraQuery_TestName.Close;
     OraQuery_TestName.Session:=DM_Hospital.DB;
     OraQuery_TestName.Open;

     OraQuery_SourceTestCode.close;
     OraQuery_SourceTestCode.Session:=DM_Hospital.DB;
     OraQuery_SourceTestCode.Open;

     OraQuery_DbGrid.Close;
     OraQuery_DbGrid.Session:=DM_Hospital.DB;
     OraQuery_DbGrid.Open;
     BitBtn2.Enabled:=false;

     PageControl1.ActivePageIndex:=0;

end;

procedure TForm_AutoCalculation.PageControl1Change(Sender: TObject);
begin
     if PageControl1.ActivePageIndex=0 then
     begin
          PageControl1.ActivePageIndex:=1;
     end
     else
     PageControl1.ActivePageIndex:=0;
end;

end.
