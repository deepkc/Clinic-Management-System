unit Unit_OutdoorPatientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, OleCtrls, DateEditXControl_TLB, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrame_OutdoorPatientList = class(TFrame)
    Panel_list: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit_PatientID: TEdit;
    Edit_Fname: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    DateEditX1: TDateEditX;
    DateEditX2: TDateEditX;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton4: TSpeedButton;
    SpinEdit1: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
