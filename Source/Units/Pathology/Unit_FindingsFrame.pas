unit Unit_FindingsFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, Buttons, DBCtrls, Grids, DBGrids, Mask, OleCtrls,
  Fxn,Serverdate,Dm,Unit_Master,
  DateEditXControl_TLB, DB, DBTables;

type
  TFrame_Findings = class(TFrame)
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    DBGrid1: TDBGrid;
    Label18: TLabel;
    DBLCB_Religion: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    le_Age: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DateEditX1: TDateEditX;
    Label5: TLabel;
    Label6: TLabel;
    DateEditX2: TDateEditX;
    Me_Time: TMaskEdit;
    Table_Findings: TTable;
    DS_Findings: TDataSource;
  private
    { Private declarations }
     procedure CreateFindingsTable;
     Procedure OncreateEvent;
  public
    { Public declarations }
     constructor Create(AOwner: TComponent) ; Override;
  end;

implementation

{$R *.dfm}

constructor TFrame_Findings.Create(AOwner: TComponent);
begin
  inherited;
     ShowMessage('abc');
//     CreateFindingsTable;
//     with Table_Findings do
//     begin
//          Close;
//          DatabaseName:=gs_temppath;
//          EmptyTable;
//          Open;
//     end;
//     LoadFindings(Table_Findings,138);
end;

procedure TFrame_Findings.CreateFindingsTable;
begin
     if FileExists(gs_temppath+'\Findings.db') then
     begin
          with Table_Findings do
          begin
               Close;
               DatabaseName:=gs_temppath;
               TableName:='Findings.db';
               DeleteTable;
          end;
     end;
     with Table_Findings do
     begin
          Close;
          DatabaseName:=gs_temppath;
          TableName:='Findings.db';
          TableType:=ttDefault;
          FieldDefs.Clear;
          FieldDefs.Add('TestNameId',ftInteger);
          FieldDefs.Add('TestName',ftString,32);
          FieldDefs.Add('Findings',ftString,32);
          FieldDefs.Add('LRange',ftString,32);
          FieldDefs.Add('HRange',ftString,32);
          FieldDefs.Add('LRangeF',ftString,32);
          FieldDefs.Add('HRangeF',ftString,32);
          FieldDefs.Add('Unit',ftString,32);
          FieldDefs.Add('Extra',ftString,32);
          FieldDefs.Add('ExtraFindings',ftString,32);
          CreateTable;
     end;
end;

procedure TFrame_Findings.OncreateEvent;
begin
     CreateFindingsTable;
     with Table_Findings do
     begin
          Close;
          DatabaseName:=gs_temppath;
          EmptyTable;
          Open;
     end;
     LoadFindings(Table_Findings,138);
end;

//
//initialization
//  RegisterClass(TFrame_Findings);
//finalization
//  UnRegisterClass(TFrame_Findings);

end.
