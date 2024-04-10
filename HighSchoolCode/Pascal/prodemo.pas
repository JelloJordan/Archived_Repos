{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   9/27/2016

    PURPOSE:  To create a program using procedures.

}
Program prodemo;

uses
    crt;
{Put procedures here}

{  error checks to make sure user input is an integer  }

Procedure getInt(var ask:string; num : integer);
var
   numStr : string;
   code : integer;
begin
repeat
  writeln(ask);
  readln(numstr);
  val(numStr, num, code);
  if code <> 0 then
begin
  writeln('Not an integer ');
  writeln('Press any key to continue');
  readkey;
  clrscr;
  write('Enter A Number ')
end;
until (code = 0);
end;

procedure GetNums(var num1,num2:integer);
begin {GetNums}
  Getint('Enter the first number ',num1,' ');
  Getint('Enter the second number ',num2,' ');
end;  {GetNums}

procedure AddNums(var num1,num2,sum1:integer);
begin {AddNums}
  sum1:=num1 + num2
end;  {AddNums}

procedure Display(var sum1:integer);
begin {Display}
  Write('The sum is ',sum1,' ');
end;  {Display}



var {Main Varibles}
num1,num2,sum1:integer;

begin {main}
 {
 Algorithm           Pseudocode  Code
 1. Get two Numbers  GetNums
 2. Add two numbers  AddNums
 3. Display the sum  Display
 }
  GetNums(num1,num2);
  AddNums(num1,num2,sum1);
  Display(sum1);
  Readkey;



end.  {main}
