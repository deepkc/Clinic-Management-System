unit InWordsSu;

interface
uses SysUtils,Dialogs,fxn;

Function InWords(const nNumber:Extended):String;stdcall;
Function AmountInWords(Amount: double):String;stdcall;

implementation

function InWords(const nNumber:Extended):String;Stdcall;
const
aUnits:array[0..9] of string=('','One ', 'Two ', 'Three ', 'Four ', 'Five ', 'Six ', 'Seven ','Eight ','Nine ');

function cDecimal(const cDecDitxt:string):String;
var
len,x,n:Integer;
nNumber:string[17];
begin
  result:='';
  nNumber:=cDecDitxt;
  //cut off Zeros to the right
  while copy(nNumber,length(nNumber),1)='0' do
    delete(nNumber,length(nNumber),1);
  len:=length(nNumber);
  //No need to convert if it is all zeros
  if len=0 then exit;
  //Start conversion !
  for x:=1 to len do
  begin
    n:=strToint(copy(nNumber,x,1));
    if n=0 then result:=result+'zero '
    else result:=result+aUnits[n];
  end;
  if result<>'' then result:=' decimal '+trim(result);
end;

//Local function to convert the whole number portion
function Num2EngWords(const nNumber, nWordIndex:integer):String;
const
//aLargeNumWords:array[0..5] of string=('','Thousand, ','Million, ', 'Billion, ', 'Trillion, ', 'Quadrillion, ');
aLargeNumWords:array[0..5] of string=('','Thousand ','Million ', 'Billion ', 'Trillion, ', 'Quadrillion, ');
aTens:array[0..8] of string=('','Twenty', 'Thirty', 'Forty', 'Fifty',  'Sixty',  'Seventy', 'Eighty', 'Ninety');
aTwenties:array[10..19] of string=('Ten ','Eleven ', 'Twelve ', 'Thirteen ', 'Fourteen ', 'Fifteen ', 'Sixteen ', 'Seventeen ', 'Eighteen ', 'Nineteen ');
var
nQtnt,nNum,nMod:Integer;
begin
  result:='';
  if nNumber<1 then exit;
  nNum:=nNumber;

  if nNumber>99 then
  begin
   //Pick up hundreds and leave others
    nQtnt:=nNum div 100;
    nNum:=nNum mod 100;
    //result:=aUnits[nQtnt]+'Hundred and ';
    result:=aUnits[nQtnt]+'Hundred ';
  end;
  case nNum of
    1..9: result:= result+aUnits[nNum]; {one to nine}
    10..19: result:= result+aTwenties[nNum];{ten to nineteen}
    20..99:
    begin
      nQtnt:=nNum div 10;
      nMod:=nNum mod 10;
      result:= result+aTens[nQtnt-1]; {digit at tenth place}
      if nMod<>0 then result:= result+' '+aUnits[nMod] {digit at unit place} //result+'-'+aUnits[nMod] {digit at unit place}
      else result:= result+' ';
    end
    else
      //if result<>'' then result:=copy(result,1,length(result)-4);   //removed by me
  end;
  result:= result+aLargeNumWords[nWordIndex]; {add thousand, million etc...}
end;
var
nNum,nIndex:Integer;
cStr,cDec:String;
lNegative:Boolean;
begin
  result:='';
  if (nNumber>999999999999999999.0) then
  begin
    showmessage('Sorry this is too large ! larger than the budget of the whole world !!');
    exit;
  end;
  //str(nNumber:34:15,cStr);
  str(nNumber:34:2,cStr);
  lNegative:=False;
  nIndex:=pos('-',cStr); {having - sign is negative}
  if nIndex>0 then
  begin
    lNegative:=True;
    cStr:=copy(cStr,nIndex+1,length(cStr)-nIndex); {trim off minus sign}
  end;
  while cStr[1]=' ' do {trim of spaces}
  delete(cStr,1,1);
  nIndex:=pos('.',cStr); {decimal position}
  if nIndex=0 then nIndex:=length(cStr)+1;{if no decimal it must be at the far right}
  cDec:=copy(cStr,nIndex+1,length(cStr)-nIndex); {digits after decimal point}
  cStr:=copy(cStr,1,nIndex-1); {digits before decimal point}
  nIndex:=0; {index to point the words thousand, million etc.}
  nNum:=length(cStr); {count of digits}
  while nNum>0 do
  begin
    if nNum<3 then
    begin
      result:=Num2EngWords(strToInt(copy(cStr,1,nNum)),nIndex)+result;
      cstr:=''; {less than 3 digits means finished}
    end
    else
    begin
      result:=Num2EngWords(strToInt(copy(cStr,nNum-2,3)),nIndex)+result;
      cStr:=copy(cStr,1,nNum-3); {cut off three rightmost digits}
    end;
    nNum:=length(cStr); {remaining number of digits}
    inc(nIndex); {increase the large number's word index}
  end;
  result:=trim(result)+cDecimal(cDec); {finished, add a full stop}
  if lNegative then result:='minus '+result; {if the number is negative add "minus" at first}
end;


Function AmountInWords(Amount: double):String;stdcall;
var ls_rupee, ls_paisa, ls_amount, ls_word, ls_paiWord: string;
begin
   ls_amount:=FloatToStr(Amount);

   If Pos('.',ls_amount) > 0 Then
        ls_rupee:=Copy(ls_amount,1,Pos('.',ls_amount) -1)
    Else
        ls_rupee:=Trim(ls_amount);

    If Pos('.',ls_amount) > 0 Then
        ls_paisa:=Copy(ls_amount,(Pos('.',ls_amount) + 1),Length(ls_amount))
    Else ls_paisa :='';
    //modified by renu deleted the uppercase  function
    ls_word:=InWords(StrToFloat(ls_rupee));

    IF Length(ls_paisa)=1 Then
    ls_paisa:=ls_paisa+'0';


    If ls_paisa <> '' Then
        ls_paiword:=InWords(StrToFloat(ls_paisa))
    Else ls_paiword:='';

    IF (gs_patientType<>'FRG') Then
    Begin
       If StrToIntDef(ls_paisa,0) > 0 Then
          //Result:=Copy(ls_word,1,1)+ LowerCase(Copy(ls_word,2,Length(ls_word)-1)) +' rupees and '+LowerCase(ls_paiword)+' paisa Only.'
          Result:=ls_word+' Rupees and '+ls_paiword+' Paisa Only.'
       Else
          //Result:=Copy(ls_word,1,1)+ LowerCase(Copy(ls_word,2,Length(ls_word)-1))+' rupees only.';
          //Result:=ls_word+' Rupees only.';  //REMOVED 15 JAN
          Result:=ls_word+' only.';
    End
    Else
    Begin
       If StrToIntDef(ls_paisa,0) > 0 Then
          //Result:=Copy(ls_word,1,1)+ LowerCase(Copy(ls_word,2,Length(ls_word)-1)) +' Dollar and '+LowerCase(ls_paiword)+' Cents Only.'
          Result:=ls_word+' Dollar and '+ls_paiword+' Cents Only.'
       Else
          //Result:=Copy(ls_word,1,1)+ LowerCase(Copy(ls_word,2,Length(ls_word)-1))+' Dollar only.';
          Result:=ls_word+' Dollar only.';
    End;
end;

Exports

     InWords,AmountInWords;
end.


