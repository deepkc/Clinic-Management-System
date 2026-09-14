unit Unit_MaterializedView;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, OleCtrls, DateEditXControl_TLB, Grids,
  DBGrids, Db, DBTables,ServerDate,Fxn, MemDS, DBAccess, Ora,DM;

type
  TForm_MaterializedView = class(TForm)
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtnCancel: TBitBtn;
    GroupBox1: TGroupBox;
    DBGridCreditBill: TDBGrid;
    Panel1: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    DateEditX_To: TDateEditX;
    DateEditX_From: TDateEditX;
    BitBtnRefresh: TBitBtn;
    GroupBox2: TGroupBox;
    RB_Sales: TRadioButton;
    RB_SalesRefund: TRadioButton;
    RB_Both: TRadioButton;
    Query_BillList1: TQuery;
    DS_BillList: TDataSource;
    ButtonFrom: TSpeedButton;
    ButtonTo: TSpeedButton;
    Query_BillList: TOraQuery;
    procedure ButtonTo12Click(Sender: TObject);
    procedure BitBtnRefreshClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RB_SalesClick(Sender: TObject);
    procedure RB_SalesRefundClick(Sender: TObject);
    procedure RB_BothClick(Sender: TObject);
    procedure ButtonFromClick(Sender: TObject);
    procedure ButtonToClick(Sender: TObject);
  private
    { Private declarations }
  public
          pb_IsSendToExcel : Boolean;
          ps_FromDate,ps_ToDate : String;
    { Public declarations }
  end;

var
  Form_MaterializedView: TForm_MaterializedView;

implementation

uses UnitSendToExcel,DBGridExportToExcel;

{$R *.DFM}

procedure TForm_MaterializedView.ButtonFromClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From,ButtonFrom);
     ChangeDateSystem(DateEditX_To,ButtonTo);
end;

procedure TForm_MaterializedView.ButtonTo12Click(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From,ButtonFrom);
     ChangeDateSystem(DateEditX_To,ButtonTo);
end;

procedure TForm_MaterializedView.ButtonToClick(Sender: TObject);
begin
     ChangeDateSystem(DateEditX_From,ButtonFrom);
     ChangeDateSystem(DateEditX_To,ButtonTo);
end;

procedure TForm_MaterializedView.BitBtnRefreshClick(Sender: TObject);
begin
     ChangeToDefaultDate(DateEditX_From,DateEditX_To);
     ChangeDateCaption(ButtonFrom);
     ChangeDateCaption(ButtonTo);
     ps_FromDate:=DateEditX_From.Text;
     ps_ToDate:=DateEditX_To.Text;
     With Query_BillList do
     begin
          Close;
          SQL.Clear;
          Session:=DM_Hospital.DB;
          SQL.Add(' Select Fiscal_Year,Bill_No,Customer_Name,Customer_PAN,Bill_Date,Amount,Discount,Taxable_Amount,Tax_Amount,');
          //SQL.Add(' NPRAmount,NPRDiscount,NPRTaxable_Amount,NPRTax_Amount,');
          SQL.Add(' Is_Printed,Is_Active,Printed_Time,Entered_By,Printed_By');
          SQL.Add(' From VS_HS_SaleBookForTaxOffice ');
          SQL.Add(' where Bill_Date>='+#39+DateEditX_From.Text+#39+' and Bill_Date<='+#39+DateEditX_To.Text+#39);
          IF RB_Sales.Checked=True then
          SQL.Add(' and TransType=''BILL''')
          Else IF RB_SalesRefund.Checked=True then
          SQL.Add(' and TransType=''REFUND''');
          SQL.Add(' Order by TransType,SubStr(Bill_No,9,7)');
          //sql.savetofile('c:\savetofile.txt');
          Open;
     end;
end;

procedure TForm_MaterializedView.BitBtn1Click(Sender: TObject);
begin
     IF MessageDlg('Are You Sure To Send In Excel ?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
     begin
          {SendToExcels_query(Query_BillList,nil,'Materialized View',ps_FromDate+' - '+ps_ToDate,'',gs_HospitalName,gs_HospitalAddress,20);}

          ExportDBGrid(Form_MaterializedView,DBGridCreditBill, True, 'Materialized View', ps_FromDate+' - '+ps_ToDate);
     end;
end;

procedure TForm_MaterializedView.FormShow(Sender: TObject);
begin
     DateEditX_From.SystemOfDate:=gi_DateSystem;
     DateEditX_From.Text:=ServerDate.TodaysDate;
     ChangeDateCaption(ButtonFrom);

     DateEditX_To.SystemOfDate:=gi_DateSystem;
     DateEditX_To.Text:=DateEditX_From.Text;
     ChangeDateCaption(ButtonTo);
end;

procedure TForm_MaterializedView.BitBtnCancelClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_MaterializedView.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     IF Key=27 Then Close;
end;

procedure TForm_MaterializedView.RB_SalesClick(Sender: TObject);
begin
     BitBtnRefreshClick(Sender);
end;

procedure TForm_MaterializedView.RB_SalesRefundClick(Sender: TObject);
begin
     BitBtnRefreshClick(Sender);
end;

procedure TForm_MaterializedView.RB_BothClick(Sender: TObject);
begin
     BitBtnRefreshClick(Sender);
end;

end.
