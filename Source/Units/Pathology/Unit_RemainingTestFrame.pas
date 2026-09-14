unit Unit_RemainingTestFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, DBGrids, OleCtrls, DateEditXControl_TLB, Buttons, StdCtrls,
  ExtCtrls;

type
  TFrame_RemainingTest = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    DateEditX1: TDateEditX;
    DateEditX2: TDateEditX;
    DBGrid2: TDBGrid;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TFrame_RemainingTest);
Finalization
     UnRegisterClass(TFrame_RemainingTest);

end.
