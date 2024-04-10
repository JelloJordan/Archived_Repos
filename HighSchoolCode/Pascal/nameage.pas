{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/22/2016

    PURPOSE: INPUT: Ask user for:
                    Name
                    Age
                    Favorite Color
             OUTPUT:
                    Name is ___ days old
                    Name is a (child, teen , adult)
                    Name likes the color ___
             Notes:
                    365 days in a year
                    0 --- 12 child
                    13 --- 19 teen
                    20+ adult
             Above & Beyond:
                     accurate to the day
                     color coded messages
                     age in different scales
}
Program nameage;

uses
    crt;
var
   Name,color,agetype:string;
   age, days:integer;
   bgcolor:char;

begin {main}
   write('How old are you? ');
   readln(Age);
   writeln;
   days:=age * 365;
   write('What is your name? ');
   readln(name);
   writeln;
   writeln('What is your favorite color?');
   writeln('Blue = B');
   writeln('Yellow = Y');
   writeln('Red = R');
   readln(bgcolor);
   bgcolor:=upcase(bgcolor);
   if (bgcolor ='B') then
   textbackground(Blue) else
   if (bgcolor ='R') then
   textbackground(Red) else
   if (bgcolor ='Y') then
   textbackground(Yellow) else
   begin
   writeln('I am too lazy to program more colors in or your answer was incorrect');
   readkey;
   end;
   if (bgcolor='R') then
   color:='red';
   if (bgcolor='Y') then
   color:='yellow';
   if (bgcolor='B') then
   color:='blue';
   if(age <= 12) then
   agetype:='child';
   if(age >= 13 ) and (age <=19) then
   agetype:='teen';
   if(age >= 20) then
   agetype:='adult';
   writeln;
   writeln(name,' is ',days,' days old and is a ',agetype);
   readkey;
   if (bgcolor='R') or (bgcolor='B') or (bgcolor='Y') then
   Begin
   writeln(name,' likes the color ',color);
   end else
   writeln(name,' likes that i did not program in');
   readkey;


 {type some really cool code here}

end.  {main}
