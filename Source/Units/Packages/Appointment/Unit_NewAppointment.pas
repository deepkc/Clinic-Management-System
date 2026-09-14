unit Unit_NewAppointment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, OleCtrls, DateEditXControl_TLB,
  DBCtrls;

type
  TForm_NewAppointment = class(TForm)
    Panel2: TPanel;
    BB_Close: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Dex_Today: TDateEditX;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    GB_BasicInformation: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Image2: TImage;
    Label11: TLabel;
    Label12: TLabel;
    Le_FName: TLabeledEdit;
    Le_LName: TLabeledEdit;
    Dex_Dob: TDateEditX;
    le_Age: TLabeledEdit;
    DBLCB_Religion: TDBLookupComboBox;
    DBLCB_title: TDBLookupComboBox;
    CB_Gender: TComboBox;
    CB_AgeType: TComboBox;
    CB_MaritalStatus: TComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GB_Address: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Le_Address: TLabeledEdit;
    Le_WardNo: TLabeledEdit;
    DBLCB_Country: TDBLookupComboBox;
    DBLCB_District: TDBLookupComboBox;
    DBLCB_VDC: TDBLookupComboBox;
    Le_PhoneNo: TLabeledEdit;
    Le_MobileNo: TLabeledEdit;
    GB_Others: TGroupBox;
    Label18: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    Le_Relative: TLabeledEdit;
    DBLCB_Occupation: TDBLookupComboBox;
    DBLCB_Education: TDBLookupComboBox;
    Le_Company: TLabeledEdit;
    DBLCB_Relation: TDBLookupComboBox;
    procedure BB_CloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_NewAppointment: TForm_NewAppointment;

implementation

{$R *.dfm}

procedure TForm_NewAppointment.BB_CloseClick(Sender: TObject);
begin
     Close;
end;

end.
