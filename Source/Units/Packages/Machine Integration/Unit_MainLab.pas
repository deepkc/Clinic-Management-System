unit Unit_MainLab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, fxn,
  Dialogs, ExtCtrls, StdCtrls, Buttons, jpeg, DB, DBTables,SERVERDATE, OleCtrls,
  DateEditXControl_TLB;

type
  TForm_MainLab = class(TForm)
    PanelMain: TPanel;
    Panel_Setup: TPanel;
    Image1: TImage;
    BB_SetupBack: TBitBtn;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CP_DepositDayClose: TCategoryPanel;
    BitBtn19: TBitBtn;
    CP_ProblemCorrection: TCategoryPanel;
    BitBtn_ProblemCorrection: TBitBtn;
    Cp_UserAccessSetup: TCategoryPanel;
    BitBtn_Module: TBitBtn;
    BitBtn_MainMenu: TBitBtn;
    BitBtn_SubMenu: TBitBtn;
    BitBtn_SystemFunction: TBitBtn;
    CP_FractionManagement: TCategoryPanel;
    BitBtn_FractionManagement: TBitBtn;
    CP_FractionSetup: TCategoryPanel;
    BitBtn_FractionSetup: TBitBtn;
    CP_AccountIntegration: TCategoryPanel;
    BitBtn_RevenuePosting: TBitBtn;
    CP_NursingSetup: TCategoryPanel;
    BitBtn_PreOpNursingCare: TBitBtn;
    asdf: TBitBtn;
    BitBtn18: TBitBtn;
    CP_WardRoom: TCategoryPanel;
    BitBtn_Ward: TBitBtn;
    BitBtn_RoomType: TBitBtn;
    BitBtn_BedSetup: TBitBtn;
    CP_AdminSetUp: TCategoryPanel;
    BB_DepartmentSetup: TBitBtn;
    BitBtn_DoctorSetup: TBitBtn;
    BitBtn_User: TBitBtn;
    BitBtn_CommunitySetup: TBitBtn;
    BitBtn_Scheme: TBitBtn;
    BitBtn_ColorSetup: TBitBtn;
    BitBtn_GroupSetUp: TBitBtn;
    CP_InvestigationResult: TCategoryPanel;
    BitBtn_FindingSetup: TBitBtn;
    BitBtn_Footer: TBitBtn;
    BitBtn_Comment: TBitBtn;
    BitBtn_SensitiveMedicineSetup: TBitBtn;
    BitBtn_SensitiveMedicine: TBitBtn;
    CP_TestSetup: TCategoryPanel;
    BitBtn_TestNameSetup: TBitBtn;
    BitBtn_ReferenceRange: TBitBtn;
    BitBtn_UnitSetup: TBitBtn;
    BB_SampleSourceSetup: TBitBtn;
    BitBtn5: TBitBtn;
    pnl_top: TPanel;
    BB_Close: TBitBtn;
    btn_setup: TSpeedButton;
    btn_Mapping: TSpeedButton;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    Label11: TLabel;
    SPB_TodayDate: TSpeedButton;
    Dex_TodayDate: TDateEditX;
    shp_map: TShape;
    shp_setup: TShape;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
    procedure btn_setupClick(Sender: TObject);
    procedure btn_MappingClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
      Pb_IsNew:Boolean;
    { Public declarations }

  end;

var
  Form_MainLab: TForm_MainLab;

implementation

uses Unit_MachineTestMapping, Unit_MachineTestNameMapping,
  Unit_MachineTestNameSetup, Unit_MachineTestSetup, Unit_ResultVerification;


{$R *.dfm}





procedure TForm_MainLab.BB_CloseClick(Sender: TObject);
begin
Close;
end;

procedure TForm_MainLab.BitBtn1Click(Sender: TObject);
begin
     try
       Form_MachineTestNameMapping:=TForm_MachineTestNameMapping.Create(nil);
       Form_MachineTestNameMapping.ShowModal;
     finally
        Form_MachineTestNameMapping.Free;
     end;
end;

procedure TForm_MainLab.BitBtn2Click(Sender: TObject);
begin
       try
       Form_MachineTestMapping:=TForm_MachineTestMapping.Create(nil);
       Form_MachineTestMapping.ShowModal;
     finally
        Form_MachineTestMapping.Free;
     end;
end;

procedure TForm_MainLab.BitBtn3Click(Sender: TObject);
begin
    try
      Form_MachinetestNameSetup:=TForm_MachinetestNameSetup.Create(nil);
      Form_MachinetestNameSetup.ShowModal;
    finally
      Form_MachinetestNameSetup.Free;

    end;
end;

procedure TForm_MainLab.BitBtn4Click(Sender: TObject);
begin
     try
       Form_MachinetestSetup:=TForm_MachinetestSetup.Create(nil);
       Form_MachinetestSetup.ShowModal;
     finally
        Form_MachinetestSetup.Free;
     end;
end;

procedure TForm_MainLab.BitBtn5Click(Sender: TObject);
begin
     try
        Form_ResultVerification:=TForm_ResultVerification.Create(nil);
        Form_ResultVerification.ShowModal;
     finally
        Form_ResultVerification.Free;
        BitBtn4.Enabled:=False;
        BitBtn3.Enabled:=False;
        BitBtn2.Enabled:=False;
        BitBtn1.Enabled:=False;
        //shp_map.Visible:=False;
        //shp_setup.Visible:=False;
     end;
end;

procedure TForm_MainLab.btn_MappingClick(Sender: TObject);
begin
    BitBtn4.Enabled:=False;
    BitBtn3.Enabled:=False;
    BitBtn2.Enabled:=True;
    BitBtn1.Enabled:=True;
    //shp_map.Visible:=True;
    //shp_setup.Visible:=false;
end;

procedure TForm_MainLab.btn_setupClick(Sender: TObject);
begin
    BitBtn4.Enabled:=True;
    BitBtn3.Enabled:=True;
    BitBtn2.Enabled:=False;
    BitBtn1.Enabled:=False;
    //shp_map.Visible:=False;
    //shp_setup.Visible:=True;
end;

procedure TForm_MainLab.FormKeyPress(Sender: TObject; var Key: Char);
begin
     if key=#27 then
     close;
end;



procedure TForm_MainLab.FormShow(Sender: TObject);
begin
     Dex_TodayDate.SystemOfDate := gi_datesystem;
     Dex_TodayDate.text := TodaysDate;
     ChangeCaptions(SPB_TodayDate, gi_datesystem);
end;

end.
