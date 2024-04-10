{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program name;

uses
    crt;

Procedure getInt(ask:string;var num : integer);
var
   numStr : string;
   code : integer;
begin
repeat
  write(ask);
  readln(numstr);
  val(numStr, num, code);
  if code <> 0 then
begin
  writeln('Not an integer ');
  writeln('Press any key to continue');
  readkey;
  clrscr;
end;
until (code = 0);
end;

var
  text : string;
  i : integer;

begin {main}

  write('Text ');
  readln(text);
  for i := 1 to 80 do
    begin
    if (text[i] = 'A') or (text[i] = 'a') then
      text[i] := ' ';
    end;
  writeln(text);
  readkey;

end.  {main}
