{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/20/2016

    PURPOSE:  To work with datatypes and learn some control commands.

}
Program sample;

uses
    crt;
var
score:integer;
average:real;
gender:char;
name:string;

begin {main}
  score:=87;
  average:=3.14;
  gender:='5';
  name:='Jordan';
  delay(500);
  gotoxy(20,5);
  writeln('Your score is',score:7);
  delay(1000);
  gotoxy(150,20);
  writeln('Your name is',name:12);
  delay(1500);
  gotoxy(10,20);
  writeln('Your gender is',gender:5);
  delay(2000);
  gotoxy(15,24);
  writeln('Your average is',average:10:5);
   {
   First Number;Sets how many black spaces there is gonna be, puts end of number at end of spaces
   Second Number;The number of digits after the dot
   }
  delay(2500);
  gender:=upcase(gender);
  writeln('Your gender is',gender:5);
  readkey;

 {type some really cool code here}


end.  {main}
