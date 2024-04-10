{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/20/2016

    PURPOSE:  Type a description of your program here.

}


Program list;

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

var counter,second,third,spacing,fourth:integer;

begin {main}
   clrscr;
   delay(200);
   writeln(chr(201),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(187));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(82),chr(85),chr(78),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(186),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(255),chr(186));
   delay(200);
   writeln(chr(200),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(205),chr(188));
   readkey;

   {for counter:=5 to 36 do
      begin
         write(counter:15);
         second:=counter+4;
         write(second:20);
         third:=counter*3;
         write(third:25);
         writeln(fourth:30);
         fourth:=counter*5;

      end;}

   counter:=1;
   spacing:=1;
   repeat
      spacing:=random(100)+1;
      textcolor(random(16)+1);
      textbackground(random(16)+1);

      write(counter:spacing);
      textcolor(random(16)+1);

      write(counter:spacing);
      textbackground(random(16)+1);
      counter:=counter+1;
      randomize;
      textcolor(random(16)+1);
      randomize;
      textbackground(random(16)+1);

      write(counter:spacing);
      counter:=counter+4;
      textcolor(random(16)+1);
      Writeln('LOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLOLO':spacing);
      write(counter:spacing);
      counter:=random(16)+1;
      textcolor(random(16)+1);
      randomize;
      textbackground(random(16)+1);
      write(counter:spacing);
      counter:=counter+1;
      textcolor(random(16)+1);
      Writeln('HAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAXHAX':spacing);
      write(counter:spacing);
      counter:=counter+1;
      textcolor(random(16)+1);
      textbackground(random(16)+1);
      randomize;
      write(counter:spacing);
      counter:=counter+2;
      if (spacing>1) then
      spacing:=0;
   until(counter>1000000);
   readkey;


 {type some really cool code here}


end.  {main}
