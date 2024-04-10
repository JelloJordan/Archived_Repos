{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/31/2016

    PURPOSE:  To create graphics.

}


Program grafdemo;

uses
    crt,graph; {step 1:include graphics library}

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

{*********** Main Body ***********}
var
  gd,gm:smallint; {step 2:create varibles}
  x,y,count,spacing:integer;

begin {main}
  gd:=DETECT; {step 3:set varibles}
  initgraph(gd,gm,'');  {step 4:initialize graphics}
  {step 5:code graphics}
  {setcolor(blue);
  line(1,640,1024,1);
  setcolor(lightgreen);
  for y:=1 to 640100000 do
  line(1,640,1024,y);
  randomize;
  line(random(100+1),random(100+1),random(100+1),random(100+1));}
  repeat
  randomize;
  count:=random(600)+1;
  setcolor(random(16)+1);
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  randomize;
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  line(random(2000)+1,random(2000)+1,random(2000)+1,random(2000)+1);
  Rectangle(random(2000)+1, random(2000)+1, random(2000)+1, random(2000)+1);
  Rectangle(random(2000)+1, random(2000)+1, random(2000)+1, random(2000)+1);
  Rectangle(random(2000)+1, random(2000)+1, random(2000)+1, random(2000)+1);
  until(count=-1);
  readkey;
  closegraph; {step 6:close graph}




end.  {main}
