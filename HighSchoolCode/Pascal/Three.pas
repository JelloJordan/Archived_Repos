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
  a : char;
  word : string;
  loop,count : integer;

begin {main}

  write('Word : ');
  readln(word);
  write('Letter : ');
  readln(a);

  for loop := 1 to 80 do
  begin

  if (word[loop] = upcase(a)) or (word[loop] = lowercase(a)) then
    count := count+1;

   end;

  writeln;
  writeln(a,' occured ',count,' times');
  readkey;

end.  {main}
