program Project_Report;

uses
  Forms,
  Fxn in 'Fxn.pas',
  Unit_QrReffWiseRevenueDetail in 'Unit_QrReffWiseRevenueDetail.pas' {Form_QRReffWiseRevenueDetail},
  Unit_QrReffWiseRevenueSummary in 'Unit_QrReffWiseRevenueSummary.pas' {Form_QrReffWiseRevenueSummary},
  Unit_QrSchemeWiseRevenueDetail in 'Unit_QrSchemeWiseRevenueDetail.pas' {Form_QRSchemeWiseRevenueDetail},
  Unit_QrSchemeWiseRevenueSummary in 'Unit_QrSchemeWiseRevenueSummary.pas' {Form_QrSchemeWiseRevenueSummary},
  ServerDate in 'ServerDate.pas',
  Unit_ReffWiseRevenue in 'Unit_ReffWiseRevenue.pas' {Form_ReffWiseRevenue},
  Unit_SchemeWiseRevenue in 'Unit_SchemeWiseRevenue.pas' {Form_SchemeWiseRevenue},
  Unit2 in 'Unit2.pas' {Form2},
  DM in 'DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Startup;
//  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  //  Application.CreateForm(TForm1, Form1);
//  Application.CreateForm(TForm_ReffWiseRevenue, Form_ReffWiseRevenue);
//  Application.CreateForm(TForm_SchemeWiseRevenue, Form_SchemeWiseRevenue);
  Application.Run;
end.
