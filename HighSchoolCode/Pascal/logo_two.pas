{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   11/1/2016

    PURPOSE:  To create a logo.

}


Program logo;

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

Procedure drawlines(var mx,x,y,count:integer);

begin

setcolor(black);
  rectangle(325,125,675,319);
  setfillstyle(solidfill,white);
  floodfill(326,126,green);
  x:=325;
  repeat
  line(x,124,x,319); {27}
  delay(50);
  x:=x+13;
  until(x >= 680);
  y:=124;
  repeat
  line(325,y,675,y); {15}
  delay(50);                         {rectangle(325,125,675,319);}
  y:=y+13;
  until(y >= 327);
  setfillstyle(solidfill,black);
  count:=0;
  mx:=364;
end;

Procedure drawpayroll(var mx,x,y,count:integer);

begin

  floodfill(442,305,black);
  floodfill(481,305,black);
  floodfill(507,305,black);
  floodfill(520,305,black);
  floodfill(533,305,black);
  floodfill(559,305,black);
  floodfill(585,305,black);

  floodfill(442,292,black);
  floodfill(468,292,black);
  floodfill(507,292,black);
  floodfill(533,292,black);
  floodfill(559,292,black);
  floodfill(585,292,black);

  floodfill(442,279,black);
  floodfill(455,279,black);
  floodfill(507,279,black);
  floodfill(520,279,black);
  floodfill(533,279,black);
  floodfill(559,279,black);
  floodfill(585,279,black);

  floodfill(442,266,black);
  floodfill(468,266,black);
  floodfill(559,266,black);
  floodfill(585,266,black);

  floodfill(442,253,black);
  floodfill(455,253,black);
  floodfill(468,253,black);
  floodfill(559,253,black);
  floodfill(585,253,black);

  floodfill(351,227,black);
  floodfill(403,227,black);
  floodfill(429,227,black);
  floodfill(455,227,black);

  floodfill(351,214,black);
  floodfill(403,214,black);
  floodfill(429,214,black);
  floodfill(468,214,black);

  floodfill(351,201,black);
  floodfill(364,201,black);
  floodfill(377,201,black);
  floodfill(403,201,black);
  floodfill(416,201,black);
  floodfill(429,201,black);
  floodfill(481,201,black);

  floodfill(351,188,black);
  floodfill(377,188,black);
  floodfill(403,188,black);
  floodfill(429,188,black);
  floodfill(468,188,black);
  floodfill(494,188,black);

  floodfill(351,175,black);
  floodfill(364,175,black);
  floodfill(377,175,black);
  floodfill(403,175,black);
  floodfill(416,175,black);
  floodfill(429,175,black);
  floodfill(455,175,black);
  floodfill(507,175,black);


end;

Procedure drawmushroom(var mx,x,y,count:integer);

begin
 repeat
  count:=count+1;
  floodfill(mx,318,black);
  mx:=mx+13;
  until(count = 7);
  floodfill(351,305,black);
  floodfill(364,305,black);
  floodfill(442,305,black);
  floodfill(455,305,black);

  floodfill(351,292,black);
  floodfill(390,292,black);
  floodfill(416,292,black);
  floodfill(455,292,black);

  floodfill(338,279,black);
  floodfill(351,279,black);
  floodfill(390,279,black);
  floodfill(416,279,black);
  floodfill(455,279,black);
  floodfill(468,279,black);

  floodfill(338,266,black);
  setfillstyle(solidfill,red);
  floodfill(351,266,black);
  setfillstyle(solidfill,black);
  floodfill(364,266,black);
  floodfill(377,266,black);
  floodfill(390,266,black);
  floodfill(403,266,black);
  floodfill(416,266,black);
  floodfill(429,266,black);
  floodfill(442,266,black);
  setfillstyle(solidfill,red);
  floodfill(455,266,black);
  setfillstyle(solidfill,black);
  floodfill(468,266,black);

  floodfill(338,253,black);
  setfillstyle(solidfill,red);
  floodfill(377,253,black);
  floodfill(429,253,black);
  setfillstyle(solidfill,black);
  floodfill(468,253,black);

  floodfill(338,240,black);
  setfillstyle(solidfill,red);
  floodfill(377,240,black);
  floodfill(390,240,black);
  floodfill(403,240,black);
  floodfill(416,240,black);
  floodfill(429,240,black);
  setfillstyle(solidfill,black);
  floodfill(468,240,black);

  floodfill(338,227,black);
  floodfill(351,227,black);
  setfillstyle(solidfill,red);
  floodfill(364,227,black);
  floodfill(377,227,black);
  floodfill(429,227,black);
  floodfill(442,227,black);
  setfillstyle(solidfill,black);
  floodfill(455,227,black);
  floodfill(468,227,black);

  floodfill(351,214,black);
  setfillstyle(solidfill,red);
  floodfill(364,214,black);
  floodfill(377,214,black);
  floodfill(429,214,black);
  floodfill(442,214,black);
  setfillstyle(solidfill,black);
  floodfill(455,214,black);

  floodfill(364,201,black);
  floodfill(377,201,black);
  floodfill(390,201,black);
  floodfill(403,201,black);
  floodfill(416,201,black);
  floodfill(429,201,black);
  floodfill(442,201,black);

end;

{*********** Main Body ***********}
var
  gd,gm:smallint; {step 2:create varibles}
  x,y,mx,count,color:integer;

begin {main}
  gd:=DETECT;
  initgraph(gd,gm,'');
  rectangle(300,100,700,750);
  setfillstyle(solidfill,yellow);
  floodfill(301,101,white);
  rectangle(325,125,675,319);
  setfillstyle(HatchFill,blue);
  floodfill(326,126,white);
  setfillstyle(HatchFill,lightblue);
  floodfill(326,126,white);
  setfillstyle(solidfill,green);
  floodfill(301,101,white);
  circle(650,530,25);
  setfillstyle(solidfill,red);
  floodfill(651,531,white);
  circle(575,555,25);
  setfillstyle(solidfill,red);
  floodfill(576,556,white);
  rectangle(334,541,433,574); {hor line}
  rectangle(367,508,400,607);  {vert line}
  setfillstyle(solidfill,black);
  floodfill(335,542,white);
  floodfill(368,542,white);
  floodfill(410,542,white);
  floodfill(368,590,white);
  floodfill(368,512,white);
  setcolor(black);
  line(367,542,367,573);{left ver}
  line(400,542,400,573);{right ver}
  line(368,541,399,541);{top hor}
  line(368,574,399,574);{bottom hor}
  setcolor(blue);
  settextstyle(0,0,1);
  outtextxy(325,335,'Nintendo');
  settextstyle(0,0,2);
  outtextxy(395,330,'GAME BOY');
  settextstyle(0,0,1);
  outtextxy(528,336,'TM');
                             {x = 27 y = 15}
  drawlines(x,y,mx,count);
  {drawmushroom(x,y,mx,count);
  drawlines(x,y,mx,count);}
  drawpayroll(x,y,mx,count);


  readkey;
  closegraph;
end.  {main}
