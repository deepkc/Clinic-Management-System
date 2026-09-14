unit Unit_ValidTestCancelFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, CheckLst, ExtCtrls, Buttons;

type
  TFrame_ValidTestCancel = class(TFrame)
    Panel2: TPanel;
    BB_Save: TBitBtn;
    Label16: TLabel;
    lbl_Hosno: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Le_LName: TLabeledEdit;
    CheckBox1: TCheckBox;
    CheckListBox2: TCheckListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TFrame_ValidTestCancel);
Finalization
     UnRegisterClass(TFrame_ValidTestCancel);

end.
