uses DateUtils, sysutils;
var
  FromTime, ToTime: TDateTime;
  DiffMinutes: integer;
  num: Real = 0.0;
  str: string = '00000000.00000000';
  n: UInt32 = 10000000;
  i: UInt32;
  j: Integer;
  seed: UInt32 = 1;
begin
  FromTime := Now;
  for i := 1 to n do
  begin
    for j := 1 to 17 do
      if j <> 9 then
      begin
        seed := (((seed + 7) shl 4) div 11) and $ffffff;
        str[j] := chr($30 + (seed mod 10));
      end;
    num := StrToFloat(str);
  end;
  ToTime := Now;
  DiffMinutes := MillisecondsBetween(ToTime, FromTime);
  writeln('converted: ', n, ' str: ', str, ' num: ', num: 17: 8);
  writeln('Time: ', DiffMinutes);
end.
