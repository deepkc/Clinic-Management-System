unit Unit_NameModifyFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ExtCtrls, OleCtrls, DateEditXControl_TLB, StdCtrls, DBCtrls, Buttons;

type
  TFrame_NameModify = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    CheckBox3: TCheckBox;
    Edit1: TEdit;
    Label8: TLabel;
    DBLCB_Religion: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Le_FName: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    Label7: TLabel;
    CB_Gender: TComboBox;
    le_Age: TLabeledEdit;
    CB_AgeType: TComboBox;
    Label4: TLabel;
    Dex_Dob: TDateEditX;
    Image2: TImage;
    Label12: TLabel;
    DBLCB_District: TDBLookupComboBox;
    Le_Address: TLabeledEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TFrame_NameModify);
Finalization
     UnRegisterClass(TFrame_NameModify);

end.
