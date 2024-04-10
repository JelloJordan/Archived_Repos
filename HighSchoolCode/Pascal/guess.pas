{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   10/3/2016

    PURPOSE:  To create a guessing game


}


Program guess;

uses
    crt;

Procedure getInt(ask:string;var num : integer);
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
  writeln('Please enter a number ');
  writeln('Press any key to continue');
  readkey;
  clrscr;
end;
until (code = 0);
end;

Procedure Rolldice(var dice:integer);
  var

  die1, die2:integer;
begin
  die1:=random(6)+1;
  die2:=random(6)+1;
  dice:=die1+die2;
end;

Procedure GuessHL(var choice:char);

begin
  Write('Will the next roll be (H)igher,(L)ower or (E)qual? ');
  readln(choice);
  choice:=upcase(choice);
end;

Procedure Decide(var Roll1,Roll2,Bet,Bank:integer;choice:char);

begin
   if (choice='M') then
     begin
     delay(200);
     writeln('  ______          _              ______            ');
     delay(200);
     writeln(' |  ____|        | |            |  ____|           ');
     delay(200);
     writeln(' | |__   __ _ ___| |_ ___ _ __  | |__   __ _  __ _ ');
     delay(200);
     writeln(' |  __| / _` / __| __/ _ \  __| |  __| / _  |/ _  |');
     delay(200);
     writeln(' | |___| (_| \__ \ ||  __/ |    | |___| (_| | (_| |');
     delay(200);
     writeln(' |______\__,_|___/\__\___|_|    |______\__, |\__, |');
     delay(200);
     writeln('                                        __/ | __/ |');
     delay(200);
     writeln('                                       |___/ |___/ ');

     end
  else if (choice = 'H') and (roll2 > roll1) then
  begin
    writeln('You win');
    bank:=bank+bet*2;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'H') and (roll2 < roll1) then
  begin
    writeln('You lose');
    bank:=bank-bet;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'L') and (roll2 > roll1) then
  begin
    writeln('You lose');
    bank:=bank-bet;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'L') and (roll2 < roll1) then
  begin
    writeln('You win');
    bank:=bank+bet*2;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'E') and (roll2=roll1) then
  begin
    writeln('You win');
    bank:=bank+bet*5;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'E') and (roll2<>roll1) then
  begin
    writeln('You lose');
    bank:=bank-bet;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'H') and (roll2 = roll1) then
  begin
    writeln('You lose');
    bank:=bank-bet;
    writeln('you have ',bank,' dollars in the bank');
  end
  else if (choice = 'L') and (roll2 = roll1) then
  begin
    writeln('You lose');
    bank:=bank-bet;
    writeln('you have ',bank,' dollars in the bank');
  end else
  begin
  writeln('Incorrect Answer');
  readkey;
  end;
end;

Procedure Placebet(var bet,bank:integer);

begin
  repeat
  Writeln('You have ',bank,' dollars in your bank');
  Getint('How much do you want to bet? ',Bet);
  if (bet<0) then
  begin
    writeln('You cant bet a negative');
    readkey;
  end
  else if (bank<bet) then
  begin
    writeln('You dont have enough money ');
    readkey;
  end;
  clrscr;
  until (bet<=bank) and (bet>=0);
end;

Procedure intro(
var bank,save,shopb:integer;
var name:string;
var shop,game:char;
var myfile:text);
begin
  repeat
  repeat
  clrscr;
  if (save = 0) then
  begin
  Write('(L)oad game or (N)ew game? ');
  readln(game);
  game:=upcase(game);
  if (game = 'N') then
  begin
  write('Enter your name ');
  readln(name);
  insert('.txt',name,100);
  assign(myfile, name);
  end
  else if (game = 'L') then
  begin
  writeln('Enter your name the exact way you did when you made this account');
  readln(name);
  insert('.txt',name,100);
  assign(myfile, name);
  reset(myfile);
  readln(myfile, bank);
  writeln('You have ',bank,' dollars in this save file');
  closefile(myfile);
  end
  end;
  until (game = 'L') or (game = 'N');
  save:=1;
  Write('Do you want to go to the shop? (Y/N) ');
  readln(shop);
  shop:=upcase(shop);
  clrscr;
  until (shop = 'Y') or (shop = 'N');
  if (shop ='Y') then
begin
  writeln('What do you want to buy?');
  writeln('(1)Blue Background text color   $500');
  writeln('(2)Red text color              $1000');
  writeln('(3)Red Background text color    $500');
  writeln('(4)Yellow Background text color $500');
  writeln('(5)Yellow text color           $1000');
  writeln('(6)Exit');
  readln(shopb);
  if (shopB = 1) and (bank >= 500) then
begin
  TextBackground(Blue);
  bank:=bank-500;
end
else if (shopB = 2) and (bank >= 1000) then
begin
  Textcolor(lightred);
  bank:=bank-1000;
end
else if (shopB = 3) and (bank >= 500) then
begin
  TextBackground(Red);
  bank:=bank-500;
end
else if (shopB = 4) and (bank >= 500) then
begin
  TextBackground(Yellow);
  bank:=bank-500;
end
else if (shopB = 5) and (bank >= 1000) then
begin
  Textcolor(Yellow);
  bank:=bank-1000;
end;

end;



end;

var
Bank,save, Bet, roll1, roll2,ShopB:integer;
choice,quit,shop,game:char;
name:string;
myfile:text;

begin {main}
  Bank:=100;
  repeat
  Bet:=0;
  randomize;
  Intro(bank,shopb,save,name,game,shop,myfile);
  clrscr;
  Placebet(bet,bank);
  RollDice(Roll1);
  writeln('You rolled a ',Roll1);
  GuessHL(choice);
  RollDice(Roll2);
  writeln('You rolled a ',Roll2);
  Decide(Roll1,Roll2,Bet,Bank,Choice);
  repeat
  write('Do you want to cash out? (Y/N) ' );
  readln(quit);
  clrscr;
  quit:=upcase(quit);
  until (quit = 'Y') or (quit = 'N');
  until (quit = 'Y') or (bank<=0);
  if (bank<=0) and (quit = 'Y') then
  begin
    Writeln('You cashed out with zero dollars');
    readkey;
  end
  else if (bank<=0) then
  begin
    writeln('You ran out of money');
    readkey;
  end;
begin
  rewrite(myfile);
  writeln(myfile, bank);
  close(myfile);
  writeln('You cashed out with ',bank,' dollars');
  readkey;
  writeln('This application was made by Jordan Millett');
  readkey;
end;

end.  {main}
