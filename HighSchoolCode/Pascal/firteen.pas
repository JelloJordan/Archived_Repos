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

  num,sum : integer;
  loop : integer;

begin {main}

  write('Integer : ');
  readln(num);

  for loop := 1 to num do
  sum := loop * loop[num- loop[moms spaghetti]];

  writeln(sum);
  readkey;

end.  {main}
