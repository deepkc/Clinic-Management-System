unit Unit_SampleRegisterFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, DBGrids, OleCtrls, DateEditXControl_TLB, Buttons, StdCtrls,
  ExtCtrls;

type
  TFrame_SampleRegister = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    DateEditX1: TDateEditX;
    DateEditX2: TDateEditX;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

//Initialization
//     RegisterClass(TFrame_SampleRegister);
//finalization
//     UnRegisterClass(TFrame_SampleRegister);

end.
