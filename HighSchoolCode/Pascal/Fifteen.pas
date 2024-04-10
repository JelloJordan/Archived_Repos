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
  a , e , i , o , u : char;
  word : string;
  loop : integer;

begin {main}

  write('Word : ');
  readln(word);

  for loop := 1 to 80 do
  begin

  if (word[loop] = 'a') then
    word[loop]:=upcase(word[loop]);

  if (word[loop] = 'e') then
    word[loop]:=upcase(word[loop]);

  if (word[loop] = 'i') then
    word[loop]:=upcase(word[loop]);

  if (word[loop] = 'o') then
    word[loop]:=upcase(word[loop]);

  if (word[loop] = 'u') then
    word[loop]:=upcase(word[loop]);


  end;

  writeln;
  writeln(word);
  readkey;

end.  {main}
