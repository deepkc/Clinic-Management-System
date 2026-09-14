unit Unit_Appointment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables, OleCtrls, DateEditXControl_TLB,fxn,
  Buttons, ComCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm_Appointment = class(TForm)
    Panel_Parent: TPanel;
    Panel_list: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    BB_Close: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton3: TSpeedButton;
    Dex_Today: TDateEditX;
    Panel3: TPanel;
    QueryBlank: TQuery;
    DS_List: TDataSource;
    QueryList: TQuery;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label16: TLabel;
    lbl_Hosno: TLabel;
    Label3: TLabel;
    lbl_patientname: TLabel;
    SpeedButton4: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure SpeedButton4Click(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Appointment: TForm_Appointment;

implementation

uses Unit_NewAppointment;

{$R *.dfm}

procedure TForm_Appointment.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

procedure TForm_Appointment.BitBtn4Click(Sender: TObject);
begin
     try
          Form_NewAppointment:=TForm_NewAppointment.Create(nil);
          Form_NewAppointment.ShowModal;
     finally
          Form_NewAppointment.Free;
     end;
end;

procedure TForm_Appointment.SpeedButton4Click(Sender: TObject);
begin
     ShowMessage(gs_databasename);
end;

Initialization
     RegisterClass(TForm_Appointment);
finalization
     UnRegisterClass(TForm_Appointment);

end.
