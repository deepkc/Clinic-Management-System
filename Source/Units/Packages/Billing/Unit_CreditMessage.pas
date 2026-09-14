unit Unit_CreditMessage;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Fxn_hos;

type
  TFormCreditMessage = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreditMessage: TFormCreditMessage;

implementation

{$R *.DFM}

procedure TFormCreditMessage.FormShow(Sender: TObject);
begin
     gb_IsCreditBill:=False;
end;

procedure TFormCreditMessage.BitBtn1Click(Sender: TObject);
begin
     gb_IsCreditBill:=True;
     Close;
end;

procedure TFormCreditMessage.BitBtn2Click(Sender: TObject);
begin
     gb_IsCreditBill:=False;
     Close;
end;

end.
