{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program name;

uses
    crt;

Procedure getInt(ask:string; num : integer);
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

  {window(3,4,28,10);
  textbackground(red);
  textcolor(white);
  clrscr;
  write('Hello');
  window(32,15,52,19);
  textbackground(blue);
  textcolor(white);
  clrscr;
  gotoxy(5,2);
  writeln('Today');
  write('Computer Science');
  window(20,8,32,12);
  textbackground(green);
  clrscr;
  textcolor(yellow);
  writeln('More boxes!');}

  gotoxy(51,21);
  writeln('Box 1');

  gotoxy(71,21);
  writeln('Box 2');

  gotoxy(91,21);
  writeln('Box 3');

  window(48,22,64,25);
  textbackground(red);
  textcolor(white);
  clrscr;
  writeln;
  write('RED');

  window(68,22,84,25);
  textbackground(blue);
  textcolor(white);
  clrscr;
  writeln;
  write('BLUE');

  window(88,22,104,25);
  textbackground(green);
  textcolor(white);
  clrscr;
  writeln;
  gotoxy(90,19);
  write('GREEN');



  readkey;
end.  {main}
