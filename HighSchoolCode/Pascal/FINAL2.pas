{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program Final;

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
  term : string;
  rx,ry : integer;
  r : integer;

begin {main}

  writeln('Enter a word');
  readln(term);
  repeat
  randomize;
  rx:=random(100)+25;
  ry:=random(25)+10;
  gotoxy(rx,ry);
  writeln(term);
  clrscr;
  until(rx = 1030);

end.  {main}
