{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/15/2016

    PURPOSE: This program will add two numbers from the user
    and display the answer.

}
Program calculat;

uses
    crt;
var
num1,num2,sum1,sum2,sum3,sum4,mystery:integer;
quot:real;
txtcolor:string;

begin {main}
  Writeln('Green');
  Writeln('Blue');
  Writeln('Red');
  Writeln('Yellow');
  Write('What color do you want you text? ');
  readln(txtcolor);
  if txtcolor = 'Green' then
  textcolor(green);
  if txtcolor = 'Yellow' then
  textcolor(yellow);
  if txtcolor = 'yellow' then
  textcolor(yellow);
  if txtcolor = 'Blue' then
  textcolor(blue);
  if txtcolor = 'Red' then
  textcolor(red);
  if txtcolor = 'green' then
  textcolor(green);
  if txtcolor = 'blue' then
  textcolor(blue);
  if txtcolor = 'red' then
  textcolor(red);
  clrscr;
  Write('Enter the first number : ');
  readln(num1);
  Write('Enter the second number : ');
  readln(num2);
  mystery:=num1 mod num2;
  sum1:=num1 + num2;
  sum2:=num1 - num2;
  sum3:=num1 div num2;
  quot:=num1 div num2;
  sum4:=num1 * num2;
  if num1 = 9 then
  if num2 = 10 then
  sum1:=21;
  writeln(num1,' + ',num2,' = ',sum1);
  writeln(num1,' - ',num2,' = ',sum2);
  writeln(num1,' / ',num2,' = ',sum3);
  writeln(num1,' / ',num2,' = ',quot);
  writeln(num1,' * ',num2,' = ',sum4);
  writeln(num1,' % ',num2,' = ',mystery);
  readkey;
  {Mod divides two numbers and returns only the remainder that is a whole number.}


 {type some really cool code here}


end.  {main}
