unit vdateUtils;
interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, OleCtrls, DateEditXControl_TLB;
 type
   dateString=String[10];

function VSTOADS(sVS:dateString):dateString;
function ADTOVSS(sVS:dateString):dateString;
function VSTOADD(sVS:dateString):Tdate;
function ADToVS(dAD:TDateTime):dateString;
implementation



function VSTOADS(sVS:dateString):dateString;
var
Converter:TDateEditX;
begin
  Converter:=TDateEditX.Create(Nil);
  try
    Converter.systemOfDate:=dsVikramSambat;
    Converter.text:=sVS;
    result:=Converter.ADDateAsText;
  finally
    Converter.free;
  end;
end;


function ADTOVSS(sVS:dateString):dateString;
var
Converter:TDateEditX;
begin
  Converter:=TDateEditX.Create(Nil);
  try
    Converter.systemOfDate:=dsIswiSambat;//dsVikramSambat;
    Converter.text:=sVS;
    result:=Converter.VSDateAsText;//ADDateAsText;
  finally
    Converter.free;
  end;
end;

function VSTOADD(sVS:dateString):Tdate;
var
Converter:TDateEditX;
begin
  Converter:=TDateEditX.Create(Nil);
  try
    Converter.text:='';
    Converter.systemOfDate:=dsIswiSambat;//dsVikramSambat;
    Converter.text:='';
    Converter.text:=sVS;
    result:=Converter.ADDateAsDate;
  finally
    Converter.free;
  end;
end;



function ADToVS(dAD:TDateTime):dateString;
var
Converter:TDateEditX;
begin
  Converter:=TDateEditX.Create(Nil);
  try
   // Converter.systemOfDate:=dsVikramSambat;
    Converter.systemOfDate:=dsIswiSambat;
    Converter.text:=formatDateTime('yyyy/mm/dd',dAD);
    result:=Converter.VSDateAsText;
  finally
    Converter.free;
  end;
end;

end.
