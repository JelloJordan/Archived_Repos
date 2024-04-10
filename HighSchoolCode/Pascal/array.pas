{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   12/13/2016

    PURPOSE:
}


Program arraywork;

uses
    crt;

const
    arrSize = 5;

type
   num_arr = array[1..arrsize] of integer;

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
      writeln('Not an integer ');
      writeln('Press any key to continue');
      readkey;
      clrscr;
    end;
  until (code = 0);
end;

procedure getData(var num : num_arr;var constant:integer);

var
 loop : integer;

begin

  for loop := 1 to constant do
  begin
  write('Input number ', loop, ' ');
  readln(num[loop]);
  end;

end;

procedure getmath(var num : num_arr;var sum,small,large,constant:integer;var aver:real);

var
  loop,loopnum : integer;

begin

  for loop := 1 to constant do   {SUM}
  begin

  sum:=sum+num[loop];

  end;                    {SUM}

  for loop := 1 to constant do   {AVERAGE}
  begin

  aver:=sum div constant;

  end;                    {AVERAGE}


  loopnum:=num[1];

  for loop := 1 to constant do   {LARGE}
  begin


  if num[loop] > loopnum then
  loopnum:=num[loop]
  else

  end;                    {LARGE}

  small:=loopnum;

  loopnum:=num[1];

  for loop := 1 to constant do   {SMALL}
  begin


  if num[loop] < loopnum then
  loopnum:=num[loop]
  else

  end;                    {SMALL}

  large:=loopnum;

end;

procedure draw(var num : num_arr;var sum,large,small:integer;var aver:real);

begin

  writeln('The sum of your numbers are ',sum);
  writeln('The average of your numbers is ',aver:0:2);
  writeln('The largest number is ',large);
  writeln('The smallest number is ',small);

end;

var
  num : num_arr;
  sum,constant,large,small : integer;
  aver : real;

begin {main}


  write('Enter a constant: ');
  readln(constant);
  getData(num,constant);
  getmath(num,sum,large,small,constant,aver);
  draw(num,sum,large,small,aver);
  readkey;

end.  {main}
