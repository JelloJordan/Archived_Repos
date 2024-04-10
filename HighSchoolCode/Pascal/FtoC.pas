{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/24/2016

    PURPOSE:  Create a temperature conversion program.

              INPUT: fahr temperature (integer)
              OUTPUT: cel temperature (integer)
              Note: uses procedures.

              Stage 2: Display a table of temperatures
              1st column - fahr temps
              2nd column - cel temps
              F temps - 20 to 210 by 10's
              C temps - corrisponding temps
              easily adjustable
              Headings over the columns
              done in a procedure
              may call other procedures
              Above & Beyond
              Menu based program
              Other temp scales
              Convert in other directions
              color coding
              History of Celsius and Fahrenheit
              Convert multiple temps
}


Program FtoC;

uses
    crt;

Procedure getInt(ask:string; var num : integer);
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
    writeln('You can only enter numbers');
    readkey;
    clrscr;
  end;
  until (code = 0);
end;

Procedure getmenu(ask:string; var num : integer);
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
    writeln('You can only enter numbers');

  end;
  until (code = 0);
end;

Procedure convert(var fahr:integer; var cel:real);

begin {convert}
cel:=(fahr-32)*5/9;
end; {convert}
Procedure table;
var
  fahr,count,header:integer;
  cel:real;
begin {table}
  header:=1;
  count:=20;
  for count:=20 to 210 do
  begin
    if (header=1) then
    begin
      write('Fahrenheit':19);
      writeln('Celsius':17);
      header:=2;
    end;
    fahr:=count;
    convert(fahr,cel);
    write(count:15);
    writeln(cel:20:2);
    count:=count+9;
  end;
end;  {table}

Procedure fahrtocel(var fahr:integer; var cel:real);
begin {fahrtocel}
getInt('Enter a fahr temperature: ',fahr);
convert(fahr,cel);
writeln(fahr,' degrees(F) = ',cel:0:2,' degrees(C)');
readkey;
clrscr;
end;  {fahrtocel}

Procedure Menu();
begin
  writeln('  __  __       _         __  __                  ':80);
  writeln(' |  \/  |     (_)       |  \/  |                 ':80);
  writeln(' | \  / | __ _ _ _ __   | \  / | ___ _ __  _   _ ':80);
  writeln(' | |\/| |/ _` | |  _ \  | |\/| |/ _ \  _ \| | | |':80);
  writeln(' | |  | | (_| | | | | | | |  | |  __/ | | | |_| |':80);
  writeln(' |_|  |_|\__,_|_|_| |_| |_|  |_|\___|_| |_|\__,_|':80);

end;

Procedure fahrinfo();
begin

Writeln('Fahrenheit was invented in');
readkey;

end;

var
   fahr,count,menuchoice:integer;
   cel:real;

begin {main}
  writeln('Fahrenheit to Celsius':70);
  writeln;
  writeln;
  writeln('This program will help you with converting fahrenheit to celsuise and vice versa':100);
  readkey;
  repeat
  clrscr;
  Menu();
  writeln;
  writeln;
  Writeln('1.Temperature Table':60);
  writeln;
  Writeln('2.Fahr to Cel':54);
  writeln;
  Writeln('3.Information about Fahrenheit':71);
  writeln;
  Writeln('4.Exit':47);
  getmenu('',menuchoice);
  clrscr;
  if (menuchoice = 2) then
  fahrtocel(fahr,cel)
  else if (menuchoice = 3) then
  fahrinfo()
  else if (menuchoice = 1) then
  begin
  table();
  readkey;
  end;
  until(menuchoice = 4);
end.  {main}
