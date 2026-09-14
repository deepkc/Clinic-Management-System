unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit_ReffWiseRevenue, Unit_SchemeWiseRevenue, Fxn;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
    Form_ReffWiseRevenue:=TForm_ReffWiseRevenue.Create(nil);
    try
         Form_ReffWiseRevenue.ShowModal;
    finally
          Form_ReffWiseRevenue.Free;
    end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
     Form_SchemeWiseRevenue:=TForm_SchemeWiseRevenue.Create(nil);

     try
          Form_SchemeWiseRevenue.ShowModal;
     finally
          Form_SchemeWiseRevenue.Free;
     end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
//     gs_DatabaseName :='KLAB';
//          gs_HospitalName := 'KROWN LABORATORY AND REFERRAL CENTER';
//          gs_HospitalAddress := 'BHATBHATENI';
//          gi_datesystem := 1;
//          gs_DateCaption := 'AD';
//          gs_AliasName := 'ORAHOSPITAL';
//          gs_DatabaseName := 'HOSPITAL';
//          gs_DB_UserName := 'KLAB';
//          gs_DB_Password := 'KLAB';
//          Gs_PatientIdCaption := 'Lab No.';
//          gi_PatientID := 0;
//          gf_TaxPercent := 5; // Health Service Tax
//          Gs_TaxRule := 'TAD'; // Tax After Discount
//          gb_isDotMatrix := true;
//          gb_HideSource := true;
//          gb_HideIndication := true;
end;

end.
