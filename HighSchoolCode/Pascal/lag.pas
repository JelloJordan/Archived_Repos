{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Type a description of your program here.

}


Program Fallout;

uses
    crt;

Procedure getInt(var ask:string; num : integer);
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

Procedure AI(var airan:integer; var aiguess,guess,ai1,ai2:char);

begin


  if (ai1=ai2) then
  aiguess:=ai2
  else
  AIran:=random(3)+1;

  AI1:=guess;
  AI2:=ai1;

  if (airan = 1) then
  aiguess:='R'
  else if (airan = 2) then
  aiguess:='P'
  else if (airan = 3) then
  aiguess:='S';
  Writeln(aiguess);

end;

Procedure output(var aiguess,guess:char; var tie:integer);

begin

  if (aiguess = 'R') and (guess = 'P') then
  writeln('You Win')
  else if (aiguess = 'R') and (guess = 'S') then
  writeln('You Lose')
  else if (aiguess = 'R') and (guess = 'R') then
  begin
  tie:=1;
  writeln('Tie');
  end
  else if (aiguess = 'P') and (guess = 'S') then
  writeln('You Win')
  else if (aiguess = 'P') and (guess = 'R') then
  writeln('You Lose')
  else if (aiguess = 'P') and (guess = 'P') then
  begin
  tie:=1;
  writeln('Tie');
  end
  else if (aiguess = 'S') and (guess = 'R') then
  writeln('You Win')
  else if (aiguess = 'S') and (guess = 'P') then
  writeln('You Lose')
  else if (aiguess = 'S') and (guess = 'S') then
  begin
  tie:=1;
  writeln('Tie');
  end;

end;

Var
  AIguess,guess,ai1,ai2:char;
  airan,tie:integer;

begin {main}
  randomize;
  repeat
  repeat
  repeat
  tie:=0;
  clrscr;
  Writeln('(R)ock,(P)aper or (S)cissors');
  readln(guess);
  guess:=upcase(guess);
  until(guess = 'R') or (guess = 'P') or (guess = 'S');
  AI(airan,aiguess,ai1,ai2,guess);
  output(guess,aiguess,tie);
  readkey;
  until (tie = 0);
  until (tie = 100);



end.  {main}
