{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program foor;

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
  x : integer;

begin {main}

  readkey;
  for x := 1 to 115 do
  begin
    clrscr;
    gotoxy(x,1);
    writeln('Jordan');
    delay(50);
  end;
  readkey;

end.  {main}
