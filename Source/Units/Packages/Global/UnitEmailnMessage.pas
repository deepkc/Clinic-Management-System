unit UnitEmailnMessage;

//developed by shishir ghimire for sending sms through sparrow gateway
//Using indy http component FOR SMS  2017-08-17



interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, ShellApi, pngimage,
     NetShare,
     DB, DBTables, DBAccess, Ora, OraSmart, MemDS, OraError,ServerDate,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

procedure SendAPIMessage(Token,Identification,SmsText,MobileNo,API: String);

implementation


procedure SendAPIMessage(Token,Identification,SmsText,MobileNo,API: String);
var
//developed by shishir ghimire for sending sms through sparrow gateway
//Using indy http component
  Api_HTTP: TIdHTTP;
  lParamList: TStringList;
  lResult: string;
begin
  lParamList := TStringList.Create;
  lParamList.Add('token='+Token);            //The Token that is provided to you by service provider.
  lParamList.Add('&from='+Identification);  //The identity provided by your service provider.
  lParamList.Add('&text='+SmsText); //The SMS Message text to be sent.
  lParamList.Add('&to='+MobileNo); //The desired destination number seperated by commas.

  Api_HTTP := TIdHTTP.Create(nil); //POST request.
  try
    lResult := Api_HTTP.Post(''+API, lParamList);//Execute the SMS HTTP API request.
  except
       //ShowMessage('SMS NOT SENT ! Please recharge or get credit limit');
  end;
    FreeAndNil(Api_HTTP);
    FreeAndNil(lParamList);
    //ShowMessage('SMS SENT');
end;

end.
