{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   11/8/2016

    PURPOSE:  INPUT:
              Employee Name
              Weekly Hours Worked
              Hourly Wage

              OUTPUT:
              Gross Pay (earned)
              State Taxes (5%  0.05)
              Federal Taxes (15%  0.15)
              Social Security (10% 0.10)
              Net Pay   (leftover)

          All done in procedures
          All money should look like money
          Dont worry about making it user friendly

}


Program payroll;

uses
    crt;

procedure drawscreen();

begin

  window(-1,-1,120,30);
  textbackground(cyan);
  textcolor(black);
  clrscr;

end;

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

Procedure Input(var name:string; var HWorked:integer; var wage:real);

begin

  window(1,1,19,1);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  Write('Enter your name: ');

  window(1,2,19,2);
  textbackground(white);
  textcolor(black);
  clrscr;

  readln(name);
  write(name);

  window(1,4,30,4);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  Write('Enter your hourly wage: ');

  window(1,5,20,5);
  textbackground(white);
  textcolor(black);
  clrscr;

  Write('$');

  readln(wage);
  write('$',wage:0:0);

  window(1,7,20,7);
  textbackground(cyan);
  textcolor(black);
  clrscr;


  Write('Hours worked: ');

  window(1,8,20,8);

  textbackground(white);
  textcolor(black);
  clrscr;

  readln(Hworked);
  write(Hworked);

end;

procedure Math(var hworked:integer; var wage,gross,state,federal,socail,net:real);

begin

  gross:=wage*hworked;
  state:=gross*0.08;
  federal:=gross*0.13;
  socail:=gross*0.04;
  net:=gross-socail-federal-state;

end;

procedure output(var net,gross,state,federal,socail:real);

begin

  window(1,10,20,10);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  write('Gross Pay');

  window(1,11,20,11);
  textbackground(white);
  textcolor(black);
  clrscr;

  write('$',gross:0:2);

  window(1,13,20,13);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  write('State Tax');

  window(1,14,20,14);
  textbackground(white);
  textcolor(black);
  clrscr;

  write('$',state:0:2);

  window(1,16,20,16);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  writeln('Federal Tax');

  window(1,17,20,17);
  textbackground(white);
  textcolor(black);
  clrscr;

  writeln(federal:0:2);

  window(1,19,20,19);
  textbackground(cyan);
  textcolor(black);
  clrscr;

  writeln('Socail Tax');

  window(1,20,20,20);
  textbackground(white);
  textcolor(black);
  clrscr;

  writeln(socail:0:2);

  writeln('Net pay ',net:0:2);
  readkey;

end;

var
  Name:string;
  HWorked:integer;
  wage,gross,federal,state,social,net:real;



begin {main}

  drawscreen;
  input(name,hworked,wage);
  math(hworked,wage,gross,state,federal,social,net);
  output(net,gross,state,federal,social);

end.  {main}
