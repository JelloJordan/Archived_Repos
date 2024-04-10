{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   12/6/2016

    PURPOSE:  Look at how to manipulate text.

}


Program textmani;

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
  text:string;
  i,vowels:integer;

begin {main}
  {text:='this is a line of text';}

  write('Enter a line of text: ');
  readln(text);

  {writeln(text[2]);}

  {text[random(2)]:='*';
  writeln(text);}

  {for i:= 1 to 80 do
    begin
      if (text[i] = 'S') or (text[i] = 's') then
      write('$')
      else
      write(text[i]);
    end;
  writeln;
  writeln(text);}

  {vowels:=0;
  text:=upcase(text);
  for i:= 1 to length(text) do
    begin
      if (text[i]) in ['A','E','I','O','U'] then
        vowels:=vowels+1;

    end;
    writeln('There are ',vowels,' vowels');}

  {text[1]:=upcase(text[1]);}
  {writeln(text);}

  {for i:= 1 to length(text) do
    begin
      if text[i] = ' ' then
      text[i+1]:= upcase(text[i+1])

    end;

    writeln(text);}

  for i:= 1 to length(text) do
    begin
    write(chr(ord(text[i])+ 5));


    end;

  readkey;
end.  {main}
