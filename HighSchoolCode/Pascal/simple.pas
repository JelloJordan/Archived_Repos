{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/13/2016

    PURPOSE:  Our Program will display a person name,age and period number.

}
Program simple;

uses
    crt;

var
   Name:string;
   Age:string;
   Period:string;

begin {main}

   Write('What is your name? ');
   readln(name);
   Writeln('My name is ',Name,'.');
   readkey;
   Write('How old are you? ');
   readln(Age);
   Writeln('I am ',Age,' years old.');
   readkey;
   Write('What period do you have Comp Sci? ');
   readln(Period);
   Writeln('My Comp Sci class is period ',Period,'.');
   readkey;
{type some really cool code here}
end.  {main}
