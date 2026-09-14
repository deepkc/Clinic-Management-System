unit Unit_DmNewPatient;

interface

uses
  SysUtils, Classes,dm;

type
  TDM_NewPatient = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_NewPatient: TDM_NewPatient;

implementation

{$R *.dfm}

end.
