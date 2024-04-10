{   NAME:   Jordan Millett                            
    CLASS:  Comp Sci 1
    DATE:   11/29/2016

    PURPOSE:  Build a working menu system.




}


Program menutest;

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

procedure menu;

begin

  clrscr;                          
  writeln;
  writeln('What is your favorite version of windows?');
  writeln;
  writeln('Windows (X)P');
  writeln('Windows (V)ista');
  writeln('Windows (S)even');
  writeln('Windows (E)ight');
  writeln('Windows (T)en');
  writeln;
  writeln('(Q)uit');
  writeln;

end;

procedure userchoice(var choice:char);

begin

  write('Enter your choice: ');
  readln(choice);
  choice:=upcase(choice);

end;

procedure action(var choice:char);

begin

  case choice of
  'X':writeln('You like windows XP');
  'V':writeln('You like windows Vista');
  'S':writeln('You like windows 7');
  'A':writeln('You like windows 8');
  'T':writeln('You like windows 10');
  'Q':writeln('You selected Quit');
  else
  writeln('Not an option');
  end;

  {if (choice = 'X') then
  writeln('You like windows XP')
  else if (choice = 'V') then
  writeln('You like windows Vista')
  else if (choice = 'S') then
  writeln('You like windows 7')
  else if (choice = 'E') then
  writeln('You like windows 8')
  else if (choice = 'T') then
  writeln('You like windows 10')
  else if (choice = 'Q') then
  writeln('You selected Exit')
  else
  writeln('Invalid Choice');}

end;

  {**********MAIN BODY**********}
  var
  choice:char;

begin {main}

  repeat
    menu;
    userChoice(choice);
    action(choice);
    readkey;
  until(choice = 'Q');

end.  {main}
