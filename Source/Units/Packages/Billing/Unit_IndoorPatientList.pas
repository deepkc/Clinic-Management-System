unit Unit_IndoorPatientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Spin, OleCtrls, DateEditXControl_TLB, Buttons, Grids,
  DBGrids, ExtCtrls;

type
  TFrame_IndoorPatientList = class(TFrame)
    Panel_list: TPanel;
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
    Edit11: TEdit;
    GroupBox1: TGroupBox;
    BitBtnGo: TSpeedButton;
    EditHospitalNo: TLabeledEdit;
    EditXsearch: TLabeledEdit;
    CheckBoxToday: TCheckBox;
    RadioButtonAdmit: TRadioButton;
    RadioButtonDischargedOnly: TRadioButton;
    RadioButtonDischarge: TRadioButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    CheckBox_Search: TCheckBox;
    DateEditX_From: TDateEditX;
    DateEditX_To: TDateEditX;
    GroupBox3: TGroupBox;
    LabelIncreasedDate1: TLabel;
    SpeedButton6: TSpeedButton;
    Label5: TLabel;
    Shape1: TShape;
    Label3: TLabel;
    Shape2: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape3: TShape;
    BitBtnRefresh: TSpeedButton;
    DateEditX_TodayIPView: TDateEditX;
    EditDay: TSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
