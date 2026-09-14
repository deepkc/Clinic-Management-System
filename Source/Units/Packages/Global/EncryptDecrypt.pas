unit EncryptDecrypt;



interface

uses
windows,classes,SysUtils,FXN,StrUtils;

  Function Cryptograph(sInput: string; nPass: word): string;
  Function EncryptionPassword(const sInput: string): string;
  Function DecryptionPassword(const sInput: string): string;
  Function Encryption(const s: string; Key: word): string;
  function Decryption(const s: string; Key: word): string;
  function GenerateSecutityStringMidas: string;
  function MakeRandomizedString(Chars: string; Count: Integer): string;
  function MidasEncrypt(Data: string; MinV: Integer = 0; MaxV: Integer = 5): string;
  function MidasDecrypt(Data: string): string;
  function Encryptcheck(const InString:string; Salt:string): string;
  function Decryptcheck(const InString:string; Salt:string): string;
  Function Add128(strul : String) : String;
  Function CreateEncryptCode(Key : String) : Integer;
  Function DecryptStr(EncStr : String; Key : String) : String;
  Function EncryptStr(OrigStr : String; Key : String) : String;

  const
     //c1 = 21066;
     //c2 = 21434;
     //Codes64 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz@#';

     c1 = 21066;
     c2 = 21434;
     Codes64 = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz+/';
     SecurityString='5WCNtuYIr+UH7Bb2';

     implementation

function MidasEncrypt(Data :string; MinV: Integer = 0; MaxV: Integer = 5): string;
var
     i, x: Integer;
     s1, s2, ss: string;
begin
     if MinV > MaxV then
     begin
          i := MinV;
          MinV := MaxV;
          MaxV := i;
     end;
     if MinV < 0 then
          MinV := 0;
     if MaxV > 100 then
          MaxV := 100;
     Result := '';
     if Length(SecurityString) < 16 then
          Exit;
     for i := 1 to Length(SecurityString) do
     begin
          s1 := Copy(SecurityString, i + 1, Length(SecurityString));
          if Pos(SecurityString[i], s1) > 0 then
               Exit;
          if Pos(SecurityString[i], Codes64) <= 0 then
               Exit;
     end;
     s1 := Codes64;
     s2 := '';
     for i := 1 to Length(SecurityString) do
     begin
          x := Pos(SecurityString[i], s1);
          if x > 0 then
               s1 := Copy(s1, 1, x - 1) + Copy(s1, x + 1, Length(s1));
     end;
     ss := SecurityString;
     for i := 1 to Length(Data) do
     begin
          s2 := s2 + ss[Ord(Data[i]) mod 16 + 1];
          ss := Copy(ss, Length(ss), 1) + Copy(ss, 1, Length(ss) - 1);
          s2 := s2 + ss[Ord(Data[i]) div 16 + 1];
          ss := Copy(ss, Length(ss), 1) + Copy(ss, 1, Length(ss) - 1);
     end;
     Result := MakeRNDString(s1, Random(MaxV - MinV) + MinV + 1);
     for i := 1 to Length(s2) do
          Result := Result + s2[i] + MakeRNDString(s1, Random(MaxV - MinV) + MinV);
end;

function MidasDecrypt(Data: string): string;
var
     i, x, x2: Integer;
     s1, s2, ss: string;
begin
     Result := #1;
     if Length(SecurityString) < 16 then
          Exit;
     for i := 1 to Length(SecurityString) do
     begin
          s1 := Copy(SecurityString, i + 1, Length(SecurityString));
          if Pos(SecurityString[i], s1) > 0 then
               Exit;
          if Pos(SecurityString[i], Codes64) <= 0 then
               Exit;
     end;
     s1 := Codes64;
     s2 := '';
     ss := SecurityString;
     for i := 1 to Length(Data) do
          if Pos(Data[i], ss) > 0 then
               s2 := s2 + Data[i];
     Data := s2;
     s2 := '';
     if Length(Data) mod 2 <> 0 then
          Exit;
     for i := 0 to Length(Data) div 2 - 1 do
     begin
          x := Pos(Data[i * 2 + 1], ss) - 1;
          if x < 0 then
               Exit;
          ss := Copy(ss, Length(ss), 1) + Copy(ss, 1, Length(ss) - 1);
          x2 := Pos(Data[i * 2 + 2], ss) - 1;
          if x2 < 0 then
               Exit;
          x := x + x2 * 16;
          s2 := s2 + chr(x);
          ss := Copy(ss, Length(ss), 1) + Copy(ss, 1, Length(ss) - 1);
     end;
     Result := s2;
end;

function GenerateSecutityStringMidas: string;
var
     i, x: Integer;
     s1, s2: string;
begin
     s1 := Codes64;
     s2 := '';
     for i := 0 to 15 do
     begin
          x := Random(Length(s1));
          x := Length(s1) - x;
          s2 := s2 + s1[x];
          s1 := Copy(s1, 1, x - 1) + Copy(s1, x + 1, Length(s1));
     end;
     Result := s2;
end;

function MakeRandomizedString(Chars: string; Count: Integer): string;
var
     i, x: Integer;
begin
     Result := '';
     for i := 0 to Count - 1 do
     begin
          x := Length(Chars) - Random(Length(Chars));
          Result := Result + Chars[x];
          Chars := Copy(Chars, 1, x - 1) + Copy(Chars, x + 1, Length(Chars));
     end;
end;

Function Encryption(const s: string; Key: word): string;
var
     i: byte;
     ResultStr: string;
     Len: Integer;
begin
     Result := s;
     Len := Length(s);
     SetLength(Result, Len);
     for i := 0 to Len do
     begin
          Result[i] := Char(byte(s[i]) xor (Key shr 8));
          Key := (byte(Result[i]) + Key) * c1 + c2
     end;
     Result := Copy(Result, 1, Len);
end;

function Decryption(const s: string; Key: word): string;
var
     i: byte;
     Len: Integer;
begin
     { Result[0] := s[0]; }
     Result := s;
     SetLength(Result, Len);
     Len := Length(s);
     for i := 0 to Len do
     begin
          Result[i] := Char(byte(s[i]) xor (Key shr 8));
          Key := (byte(s[i]) + Key) * c1 + c2
     end;
     Result := Copy(Result, 1, Len);
end;

Function Cryptograph(sInput: string; nPass: word): string;
var
     nLen, x, n: word;
     OutPut: String;
     Res: Array of String;
begin
     if sInput = '' then
     begin
          Result := '';
          Exit;
     end;
     nLen := Length(sInput);
     n := nLen;
     SetLength(Res, nLen);
     for x := nLen downto 1 do
     begin
          Res[x] := chr(Ord(sInput[n]) XOR nPass);
          OutPut := OutPut + Res[x];
          dec(n);
     end;
     Result := OutPut;
end;

Function EncryptionPassword(const sInput: string): string;
Begin
     EncryptionPassword := Encryption(sInput, 1010);
End;

Function DecryptionPassword(const sInput: string): string;
Begin
     DecryptionPassword := Decryption(sInput, 1010);
End;


function Encryptcheck(const InString:string; Salt:string): string;
var
  i : Byte;
  StartKey, MultKey, AddKey: Word;
begin
  Result := '';
  if (Salt = '') then begin
    Result := InString;
  end
  else begin
    StartKey := Length(Salt);
    MultKey := Ord(Salt[1]);
    AddKey := 0;
    for i := 1 to Length(Salt) - 1 do AddKey := AddKey + Ord(Salt[i]);
    for i := 1 to Length(InString) do
    begin
      Result := Result + CHAR(Byte(InString[i]) xor (StartKey shr 8));
      StartKey := (Byte(Result[i]) + StartKey) * MultKey + AddKey;
    end;
  end;
end;

function Decryptcheck(const InString:string; Salt:string): string;
var
  i : Byte;
  StartKey, MultKey, AddKey: Word;
begin
  Result := '';
  if (Salt = '') then begin
    Result := InString;
  end
  else begin
    StartKey := Ord(Salt[1]);
    MultKey := Length(Salt);
    AddKey := 0;
    for i := 1 to Length(Salt) - 1 do AddKey := AddKey + Ord(Salt[i]);
    for i := 1 to Length(InString) do
    begin
      Result := Result + CHAR(Byte(InString[i]) xor (StartKey shr 8));
      StartKey := (Byte(InString[i]) + StartKey) * MultKey + AddKey;
    end;
  end;
end;



Function Add128(strul : String) : String;
var
  strIz :String;
  i : Integer;
  sPom : String;
  sPomi : Integer;
begin
  strIz :='';
  For i:=1 to Length(strul) do
  begin
      sPom := MidStr(strul,i,1);
      sPomi :=  Ord(sPom[1]);
      strIz := strIz + Chr((sPomi + 128) mod 256);
  end;
  Add128 := strIz
end;

Function CreateEncryptCode(Key : String) : Integer;
var
  Total1,Total2 :  Integer;
  NbChars1, NbChars2 :  Integer;
  Counter : Integer;
  sPom : String;
  sPomR : Real;
begin
  Total1 := 0;
  Total2 := 0;
  NbChars1 := 0;
  NbChars2 := 0;

  For Counter := 1 to Length (Key) do
      case (Counter mod 2) of
        0 : begin
            sPom := MidStr(Key, Counter, 1);
            Total1 := Total1 + Ord(sPom[1]);
            NbChars1 :=  NbChars1 + 1
            end
        else
        begin
            sPom := MidStr(Key, Counter, 1);
            Total2 := Total2 + Ord(sPom[1]);
            NbChars2 :=  NbChars2 + 1
        end
        end;

If  (NbChars1>0) AND (NbChars2>0) Then
 begin
    sPomR := Abs((Total1 / NbChars1)-(Total2 / NbChars2));
    CreateEncryptCode := Round(sPomR);
 end
else
   CreateEncryptCode := 1
end;

Function DecryptStr(EncStr : String; Key : String) : String;
var
  Counter : Integer;
  EncCode : Integer;
  sPom : String;
  Result1 : string;
begin
  EncCode := CreateEncryptCode(Key);
  DecryptStr := '';
  Result :='';
  EncStr := Add128(EncStr);
  For Counter := 1 To Length (EncStr) do
      case (Counter mod 2) of
        0 : begin
            sPom := MidStr(EncStr, Counter, 1);
            Result1 :=  Result1 + Chr(Ord(sPom[1]) - EncCode);
            end
        else
        begin
            sPom := MidStr(EncStr, Counter, 1);
            Result1 :=  Result1 + Chr(Ord(sPom[1]) + EncCode);
        end

        end;
DecryptStr := Result1
end;

Function EncryptStr(OrigStr : String; Key : String) : String;
var
  Counter,MaxV,MinV : Integer;
  EncCode : Integer;
  sPom : String;
  Result1 : string;
begin
  EncCode := CreateEncryptCode(Key);
  EncryptStr := '';
  Result :='';
  MinV:=0;
  MaxV:=5;
  For Counter := 1 To Length (OrigStr) do
      case (Counter mod 2) of
        0 : begin
            sPom := MidStr(OrigStr, Counter, 1);
            Result1 :=  Result1 + Chr(Ord(sPom[1]) + EncCode);
            end
        else
        begin
            sPom := MidStr(OrigStr, Counter, 1);
            Result1 :=  Result1 + Chr(Ord(sPom[1]) - EncCode);
        end

        end;
EncryptStr := Add128(Result1);
end;





end.
