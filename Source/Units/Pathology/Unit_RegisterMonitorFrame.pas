unit Unit_RegisterMonitorFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, OleCtrls, DateEditXControl_TLB, Buttons, StdCtrls, ExtCtrls, Grids,
  DBGrids;

type
  TFrame_RegisterMonitor = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    DateEditX1: TDateEditX;
    DateEditX2: TDateEditX;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TFrame_RegisterMonitor);
finalization
     UnRegisterClass(TFrame_RegisterMonitor);

end.
