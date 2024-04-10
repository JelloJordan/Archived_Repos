{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   1/19/2017

    PURPOSE:

}


Program practice1;

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
  side,l,w,r,s,d : integer;

begin {main}

  writeln('How long is the side of the square');
  readln(side);
  writeln('How long is the width of the rectange');
  readln(w);
  writeln('How long is the length of the rectangle');
  readln(l);
  s :=side * side;
  r := l * w;

  if r > s then
  begin
    d := r - s;
    writeln('The rectangle is bigger');
  end else
  begin
    d := s - r;
    writeln('The square is bigger');
  end; else
    writeln('The area of the square and rectange are equal');
    writeln('The difference is ',d);
    readkey;
end.  {main}
