unit DM;

interface

uses
  SysUtils, Classes, DB, DBTables;

type
  TDM_Hospital = class(TDataModule)
    DB: TDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Hospital: TDM_Hospital;

implementation

{$R *.dfm}

Initialization
     RegisterClass(TDM_Hospital);
finalization
     UnRegisterClass(TDM_Hospital);
end.
