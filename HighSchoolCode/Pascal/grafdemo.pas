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
  x,y,count:integer;

begin {main}
  gd:=DETECT;             {step 3:set varibles}
  initgraph(gd,gm,'');    {step 4:initialize graphics}
                          {step 5:code graphics}
  setcolor(blue);
  line(1,640,1024,1);
  setcolor(lightgreen);
  for y:=1 to 640 do
    line(1,640,1024,y);
  setcolor(red);
  for x:=1024 downto 1 do
    line(1,640,x,1);
  setcolor(blue);
  circle(512,320,200);
  setfillstyle(solidfill,cyan);
  floodfill(520,320,blue);
  delay(1000);
  setcolor(yellow);
  settextstyle(defaultfont, horizdir,8);
  outtextxy(320,300,'Jordan');
  readkey;
  closegraph; {step 6:close graph}
end.  {main}
