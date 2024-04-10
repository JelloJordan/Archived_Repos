{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program name;

uses
    crt;

Procedure getInt(var ask:string; num : integer);
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

begin {main}

Writeln('Pythagorean Theorem');
readln();
Writeln('Enter first side');
readln();
Writeln('Enter second side');
readln();
Writeln('Enter the hypotenuse');
readln();

end.  {main}
