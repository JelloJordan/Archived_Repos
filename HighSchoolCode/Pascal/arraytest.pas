{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   1/5/2017

    PURPOSE:  Practice with arrays
              -input data
              -show data
              -find other information
                -find average
                -find sum
                -find small/large
                -sort list
              -display varibles

              <E>nter Number
              <O>utput Numbers
              <T>otal Of Numbers
              <A>verage Of Numbers
              <S>mallest
              <L>argest
              <P>ut numbers in order\
              <Q>uit


}

Program arraytest;

uses
    crt;
{Create the constant - size of array}                                                                                                             { -please let this be a normal field trip   *honk *honk   }
const
  MAX = 5;

{Create a data type for our array}
type
  int_array = array[1..MAX] of integer;

Procedure getInt(ask:string;var num : integer);
var                                                                                                                               {oh jam it}
   numStr : string;
   code : integer;
begin                                                                                       {    *hissssss         }
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



procedure getList(var list: int_array);

var
  loop : integer;

begin

  writeln('Getting numbers from user');
  clrscr;
  for loop := 1 to MAX do
    begin

    writeln('Number ',loop,' of ',MAX);
    getint('Enter a number :',list[loop]);
    clrscr;
    end;

end;




procedure showlist(list : int_array; sum : integer; average : real);

var
  loop : integer;

begin

  for loop := 1 to MAX do
    writeln('Number ',loop,' is ',list[loop]);
  writeln('The sum of your numbers are ',sum);
  writeln('The average of your numbers are ',average:0:2);
  writeln('The largest number is ',list[MAX]);
  writeln('The smallest number is ',list[1]);


end;



procedure getsum(list : int_array; var sum : integer);

var
  loop : integer;

begin

  sum:=0;
  for loop := 1 to MAX do
    begin
    sum:=sum+list[loop];
    end;
    writeln('The sum of your numbers are ',sum);
end;


procedure getaverage(list : int_array; var average : real; sum :integer);

var
  loop : integer;

begin

  average:=sum / MAX;
  writeln('The average of your numbers are ',average:0:2);
end;

procedure sort(var list : int_array);

var
  dummy,loop,count:integer;

begin

  for count := 1 to MAX-1 do
    for loop := count+1 to MAX do
      if list[count]>list[loop] then
        begin
          dummy:=list[count];
          list[count]:=list[loop];
          list[loop]:=dummy;
        end;

end;

procedure menu(var choice : char);

begin

  clrscr;                          
  writeln;
  writeln('Select An Option');
  writeln;
  writeln('(E)nter Number');
  writeln('(O)utput Numbers');
  writeln('(T)otal Of Numbers');
  writeln('(A)verage Of Numbers');
  writeln('(S)mallest');
  writeln('(L)argest');
  writeln('(P)ut numbers in order');
  writeln;
  writeln('(Q)uit');
  writeln;

  readln(choice);
  choice:=upcase(choice);
end;

Procedure getlarge(list : int_array;var large : integer);

var
  count,loop,dummy : integer;

begin

for count := 1 to MAX-1 do
    for loop := count+1 to MAX do
      if list[count]>list[loop] then
        begin
          dummy:=list[count];
          list[count]:=list[loop];
          list[loop]:=dummy;
        end;

        large := list[max];
        writeln('The largest number is ',large);
        readkey;

end;

Procedure getsmall(list : int_array;var small : integer);

var
  count,loop,dummy : integer;

begin

for count := 1 to MAX-1 do
    for loop := count+1 to MAX do
      if list[count]>list[loop] then
        begin
          dummy:=list[count];
          list[count]:=list[loop];
          list[loop]:=dummy;
        end;

        small := list[1];
        writeln('The smallest number is ',small);
        readkey;

end;
                                                               

procedure menumath(large,small : integer;var choice : char;var list : int_array;var sum : integer;var average : real);

var
  loop : integer;

begin

  case choice of
  'E':getlist(list);
  'O':for loop := 1 to MAX do

  writeln('Number ',loop,' is ',list[loop]);
  'T':getsum(list,sum);
  'A':getaverage(list,average,sum);
  'S':getsmall(list,small);
  'L':getlarge(list,large);
  'P':sort(list);
  'Q':writeln('You selected Quit');
  else
  writeln('Not an option');
  end;
   readkey;
end;

var
  list : int_array;
  large,small,sum,count,loop,dummy : integer;
  average : real;
  choice : char;

begin {main}

  clrscr;
  getList(list);
  getsum(list,sum);
  getaverage(list,average,sum);
  repeat
  menu(choice);
  menumath(large,small,choice,list,sum,average);
  until(choice = 'Q');
  showlist(list,sum,average);
  writeln('Press a key to end the program');
  readkey;

end.  {main}














{How can you see into my eyes, like open doors
Leading you down into my core
Where I've become so numb, without a soul
My spirit's sleeping somewhere cold
Until you find it there and lead it back home

Wake me up, wake me up inside I can't wake up,
Wake me up inside, save me,
Call my name and save me from the dark, wake me up
Bid my blood to run, I can't wake up
Before I come undone, save me
Save me from the nothing I've become

Now that I know what I'm without
You can't just leave me
Breathe into me and make me real, bring me to life

Wake me up, wake me up inside I can't wake up,
Wake me up inside, save me,
Call my name and save me from the dark, wake me up
Bid my blood to run, I can't wake up
Before I come undone, save me
Save me from the nothing I've become

Bring me to life, I've been living a lie
There's nothing inside, bring me to life

Frozen inside without your touch
Without your love, darling
Only you are the life among the dead

All this time, I can't believe I couldn't see
Kept in the dark, but you were there in front of me

I've been sleeping a thousand years it seems
I've got to open my eyes to everything

Without a thought, without a voice, without a soul

Don't let me die here
There must be something wrong, bring me to life

Wake me up, wake me up inside I can't wake up,
Wake me up inside, save me,
Call my name and save me from the dark, wake me up
Bid my blood to run, I can't wake up
Before I come undone, save me
Save me from the nothing I've become

Bring me to life, I've been living a lie, there's nothing inside
Bring me to life



Read more: Evanescence - Bring Me To Life Lyrics | MetroLyrics}
