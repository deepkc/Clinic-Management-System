unit Unit_RegAccountFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls;

type
  TFrame_RegAccount = class(TFrame)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ComboBox1: TComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label27: TLabel;
    Label28: TLabel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    ComboBox2: TComboBox;
    CheckBox1: TCheckBox;
    LabeledEdit5: TLabeledEdit;
    CheckBox2: TCheckBox;
    LabeledEdit6: TLabeledEdit;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TFrame_RegAccount);
finalization
     UnRegisterClass(TFrame_RegAccount);

end.
