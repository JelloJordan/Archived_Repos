{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   12/12/2016

    PURPOSE:  To make a program that will:
                      Get 3/5 numbers from the user
                      Display the numbers
                      Find the total(display)
                      Done in procedures

                      ABOVE AND BEYOND
                      Find the average
                      Find the biggest and smallest num
}


Program testscores;

uses
    crt;

Procedure getInt(ask:string; var num : integer);
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

procedure getnums(var num1,num2,num3,num4,num5:integer);

begin

  getInt('Enter the first number: ',num1);
  getInt('Enter the second number: ',num2);
  getInt('Enter the third number: ',num3);
  getInt('Enter the fourth number: ',num4);
  getInt('Enter the fifth number: ',num5);
  clrscr;

end;

procedure addthem(var num1,num2,num3,num4,num5,total:integer);

begin

  total:=num1+num2+num3+num4+num5;

end;

procedure display(var num1,num2,num3,num4,num5,total:integer);

begin

  writeln(num1,' + ',num2,' + ',num3,' + ',num4,' + ',num5,' = ',total);
end;


var
  num1,num2,num3,num4,num5,total:integer;

begin {main}

  getnums(num1,num2,num3,num4,num5);
  addthem(num1,num2,num3,num4,num5,total);
  display(num1,num2,num3,num4,num5,total);
  writeln('Press any key to end the program');
  readkey;

end.  {main}



















