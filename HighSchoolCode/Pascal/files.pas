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
var
name:integer;
myfile:text;

begin
  name:=1;
  insert('.txt',name,100);
  assign(myfile, name);
  writeln('Enter your name the exact way you did when you made this account');
  readln(name);
  insert('.txt',name,100);
  assign(myfile, name);
  reset(myfile);
  readln(myfile, bank);
  writeln('You have ',bank,' dollars in this save file');
  closefile(myfile);

end;










 {type some really cool code here}


end.  {main}
