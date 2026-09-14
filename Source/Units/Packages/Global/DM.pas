unit DM;

interface

uses
  SysUtils, Classes, DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError;

type
  TDM_Hospital = class(TDataModule)
    DB: TOraSession;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Hospital: TDM_Hospital;

implementation

{$R *.dfm}

end.
