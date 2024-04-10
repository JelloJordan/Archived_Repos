{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program fourthteens;

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
  one,two,three,four,five : string;

begin {main}

  write('one   ');
  readln(one);
  write('two   ');
  readln(two);
  write('three ');
  readln(three);
  write('four  ');
  readln(four);
  write('five  ');
  readln(five);

  if (one = two) or (one = three) or (one = four) or (one = five) then
    writeln('Yes , ',one)
  else if (two = three) or (two = four) or (two = five) then
    writeln('Yes , ',two)
  else if (three = four) or (three = five) then
    writeln('Yes , ',three)
  else if (four = five) then
    writeln('Yes , ',four)
  else if (five = two) or (five = three) or (five = four) then
    writeln('Yes , ',five)
  else
    writeln('No');
    readkey;



end.  {main}
