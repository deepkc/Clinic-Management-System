unit Unit_CustomerMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm_CustomerMonitor = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Lbl_GrandTotal: TLabel;
    Shape1: TShape;
    Image_Main: TImage;
    Label19: TLabel;
    Lbl_TotalItems: TLabel;
    Label1: TLabel;
    lbl_patientid: TLabel;
    lbl_PatientName: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    lbl_TenderAmt: TLabel;
    Label15: TLabel;
    lbl_DepositBalance: TLabel;
    Label17: TLabel;
    Lbl_ReturnAmt: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    lbl_NetBalance: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_CustomerMonitor: TForm_CustomerMonitor;

implementation

{$R *.dfm}

end.
