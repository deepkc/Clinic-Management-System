unit UnitNewPatientFxn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, ExtDlgs, DB, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
  Fxn,Serverdate,dm,Unit_NewPatient,
  OleCtrls, DateEditXControl_TLB, ExtCtrls, ComCtrls;

  Procedure CreateForm_NewPatient;Stdcall;

implementation

Var
     Frame_NewPatient:Unit_NewPatient.TFrame_NewPatient;


Procedure CreateForm_NewPatient;Stdcall;
begin
     Frame_NewPatient:=TFrame_NewPatient.Create(nil);
end;

Exports
     CreateForm_NewPatient;

end.
