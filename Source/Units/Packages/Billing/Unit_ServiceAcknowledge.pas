unit Unit_ServiceAcknowledge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,fxn,dm,Unit_master,
  Dialogs, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TForm_ServiceAcknowledge = class(TForm)
    Panel3: TPanel;
    BtnSave: TBitBtn;
    BB_Cancel: TBitBtn;
    Panel1: TPanel;
    Label25: TLabel;
    LabelNo: TLabel;
    Label26: TLabel;
    Labelname: TLabel;
    DBGrid_ServiceCharge: TSMDBGrid;
    Label1: TLabel;
    lbl_DepositBalance: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbl_Total: TLabel;
    Label8: TLabel;
    Ds_List: TDataSource;
    Table_ServiceAcknowledge: TOraTable;
    cb_All: TCheckBox;
    CB_NoDeposit: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_CancelClick(Sender: TObject);
    procedure cb_AllClick(Sender: TObject);
    procedure DBGrid_ServiceChargeCellClick(Column: TColumn);
    procedure BtnSaveClick(Sender: TObject);
  private
     pf_DepositBalance:Double;
    { Private declarations }
    Procedure CreateTable;
    Procedure LoadData;
    Procedure SaveData;
  public
    { Public declarations }
  end;

var
  Form_ServiceAcknowledge: TForm_ServiceAcknowledge;

implementation

{$R *.dfm}

procedure TForm_ServiceAcknowledge.BB_CancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_ServiceAcknowledge.BtnSaveClick(Sender: TObject);
begin
     if CB_NoDeposit.Checked=False then
     begin
          if pf_DepositBalance<0 then
          begin
               ShowMessage('Please add deposit');
               Exit;
          end;
     end;
     SaveData;
end;

procedure TForm_ServiceAcknowledge.cb_AllClick(Sender: TObject);
Var
     Qry:TOraQuery;
begin
     DBGrid_ServiceCharge.RefreshData;
     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          DatabaseName := gs_temppath;
          SQL.Clear;
          if cb_All.Checked then
               SQL.Add('Update ServiceAcknowledge Set State=''true'' ' )
          else
               SQL.Add('Update ServiceAcknowledge Set State=''false'' ' );
          ExecSQL
     end;
     Qry.free;
end;

procedure TForm_ServiceAcknowledge.CreateTable;
begin
     IF FileExists(gs_TempPath + '\ServiceAcknowledge.db') Then
     begin
          with Table_ServiceAcknowledge do
          begin
               Close;
               databasename := gs_TempPath;
               tablename := 'ServiceAcknowledge.db';
               DeleteTable;
          end;
     end;
     With Table_ServiceAcknowledge do
     begin
          Close;
          databasename := gs_TempPath;
          tablename := 'ServiceAcknowledge.db';
          tableType := ttDefault;
          FieldDefs.Clear;
          FieldDefs.add('ServiceBillDetailId', ftInteger);
          FieldDefs.add('BillDate', ftString, 10);
          FieldDefs.add('BillTime', ftString, 10);
          FieldDefs.add('BillNo', ftString, 15);
          FieldDefs.add('TestName', ftString, 50);
          FieldDefs.add('NetTotal', FtFloat);
          FieldDefs.add('User', ftString, 20);
          FieldDefs.add('State', ftBoolean);
          createtable;
     End;
end;

procedure TForm_ServiceAcknowledge.DBGrid_ServiceChargeCellClick(Column: TColumn);
Var
     Qry:TOraQuery;
begin
     if DBGrid_ServiceCharge.SelectedIndex=6 then
     begin
          Qry:=TOraQuery.Create(Nil);
          with Qry do
          begin
               Close;
               DatabaseName := gs_temppath;
               SQL.Clear;
               SQL.Add('Select Sum(NetTotal)NetTotal from  ServiceAcknowledge ' );
               SQL.Add('Where State=''True'' ');
               Open;
               lbl_Total.Caption:=FormatFloat('#0,0.00',FieldByName('NetTotal').AsFloat);
          end;
          Qry.free;
     end;
     DBGrid_ServiceCharge.RefreshData;
end;

procedure TForm_ServiceAcknowledge.FormCreate(Sender: TObject);
begin
     LoadPatientData(gi_PatientID);
     LabelNo.Caption:=IntToStr(gi_PatientID);
     Labelname.Caption:=Gs_PatientName;
     pf_DepositBalance:=GetDepositBalance(gi_PatientID);
     lbl_DepositBalance.Caption:=FormatFloat('#0,0.00',pf_DepositBalance);
     CreateTable;
     LoadData;
end;

procedure TForm_ServiceAcknowledge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if key=27 then
     BB_CancelClick(Sender);
end;

procedure TForm_ServiceAcknowledge.LoadData;
Var
     Qry:TOraQuery;
begin
     With Table_ServiceAcknowledge do
     begin
          Close;
          EmptyTable;
          Open;
     end;

     Qry:=TOraQuery.Create(Nil);
     with Qry do
     begin
          Close;
          DatabaseName := gs_DatabaseName;
          SQL.Clear;
          SQL.Add('SELECT SBD.*');
          SQL.Add(',((Amount-Amount*Disper/100)*Qty+VatAmt)NetTotal');
          SQL.Add(' ,(SELECT UserName From UserMain Where UserID=SBD.BillBy)UserName');
          sql.Add(' FROM SERVICEBILLDETAIL SBD WHERE SBD.PatientId=' + IntToStr(gi_PatientID) + ' AND BillDetailId=0');
          SQL.Add('AND SBD.SERVICEBILLDETAILID NOT IN (SELECT SERVICEBILLDETAILID FROM TESTCANCEL WHERE SERVICEBILLDETAILID=SBD.SERVICEBILLDETAILID)');
          SQL.Add('And DepId in (Select DepID from Department Where ParentDepID in (5,14))');
          SQL.Add('And Sbd.ProgressStatus=1');
          Open;
          while not eof do
          begin
               With Table_ServiceAcknowledge do
               begin
                    Append;
                    FieldByName('ServiceBillDetailID').AsInteger:=Qry.FieldByName('ServiceBillDetailID').AsInteger;
                    FieldByName('BillDate').AsString:=Qry.FieldByName('BillDate').AsString;
                    FieldByName('BillTime').AsString:=Qry.FieldByName('BillTime').AsString;
                    FieldByName('BillNo').AsString:=Qry.FieldByName('BillNo').AsString;
                    FieldByName('TestName').AsString:=Qry.FieldByName('ServiceType').AsString;
                    FieldByName('NetTotal').AsFloat:=Qry.FieldByName('NetTotal').AsFloat;
                    FieldByName('User').AsString:=Qry.FieldByName('UserName').AsString;
                    FieldByName('State').AsBoolean:=false;
                    Post;
               end;
               Next;
          end;
     end;
     Ds_List.DataSet:=Table_ServiceAcknowledge;
     RefreshTable(Table_ServiceAcknowledge,gs_temppath);
end;

procedure TForm_ServiceAcknowledge.SaveData;
begin
     with Table_ServiceAcknowledge do
     begin
          Close;
          Open;
          while not eof do
          begin
               if FieldByName('State').AsBoolean=True then
               UpdateServiceProgressStatus(FieldByName('ServiceBillDetailID').AsInteger,2);
               Next;
          end;
     end;
     ShowDoneMessage;
end;

end.
