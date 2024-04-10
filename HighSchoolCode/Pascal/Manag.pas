{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/8/2016

    PURPOSE:  Type a description of your program here.

}


Program manag;

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

var
  words, data:string;
  myfile:text;
  bank,bet:integer;
  y:char;


begin
  bank:=100;                          {Assigning varible a number}
  writeln('Y/N');
  readln(y);
  words:='Profiles.txt';              {assigning the file name}
  assign(myfile, words);              {assigning file a var name and assigning name}
  if (y = 'n') then
  begin
  writeln('Enter a number name: ');   {assigning varible a number}
  readln(bank);                       {assigning varible a number}
  rewrite(myfile);                    {open file}
  writeln(myfile, bank);              {write bank var into file}
  writeln(myfile,'Testing');          {write Testing into file}
  writeln('Completed writing');       {displaying text to user}
  readkey;                            {displaying text to user}
  close(myfile);                      {closing the writeable file}
  end else
  if (y = 'y') then
  begin
  reset(myfile);                      {opening the file as a readable}
  readln(myfile, bet);                {reading the first line of text from the file and assiging it}
  writeln(bet);                       {reading the var out from program}
  closefile(myfile);                  {closing the readable file}
  writeln(bet);                       {displaying the varible we set}
  readkey;                            {displaying the var we set}
  end else

end.  {main}
