{   NAME:   Jordan Millett
    CLASS:  Comp Sci 1
    DATE:   11/4/2016

    PURPOSE:  An try at making a rpg.

}


Program rpg;

uses
    crt;

Procedure getInt(var ask:string; num : integer);
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

procedure F_rat(var hp,dmg,gold,exp,level:integer);

var
  hp_rat,dmg_rat,fleechance,expgain:integer;
  flee:char;

begin
  writeln('You were running through a dark hall when you tripped over something');
  writeln('and hit hard on the ground, you look to see a huge rat coming at you');
  writeln('so you ready your weapon');
  hp_rat:=20;
  dmg_rat:=1;
  readkey;
  repeat
  clrscr;
  writeln('Would you like to try to run away? (Y/N)');
  readln(flee);
  flee:=upcase(flee);
  until (flee = 'Y') or (flee = 'N');
  if (flee = 'Y') then
  begin
    randomize;
    fleechance:=random(2)+1;
    if (fleechance = 1) then
    begin
      writeln('You try to run away but you fall on your face again');
      readkey;
      clrscr;
      flee:='N';
    end else
    begin
    writeln('You ran away safeley');
    readkey;
    end;
  end;
  if (flee = 'N') then
  begin
    repeat
    hp_rat:=hp_rat-dmg;
    if (hp_rat > 0) then
    begin
      writeln('You hit the rat for ',dmg,' dmg it now has ',hp_rat,' health');
      hp:=hp-dmg_rat;
      readkey;
      writeln('The rat hit you for ',dmg_rat,' dmg and you have ',hp,' health');
    end
    else if (hp_rat <= 0) then
    begin
      writeln('You hit the rat for ',dmg,' dmg and it died');
      expgain:=random(10)+1;
      exp:=exp+expgain;
      writeln('You gained ',expgain,' experience and you now have ',exp,' experience');
    end;
    readkey;
    clrscr;
    until(hp_rat <= 0) or (hp <= 0);
  end;
  clrscr;
end;

procedure initializevar(var hp,dmg,gold,exp,level:integer);

begin
  hp:=100;
  dmg:=1;
  gold:=0;
  exp:=0;
  level:=0;
end;

procedure loot(var gold:integer);

var
  goldgain:integer;

begin
  goldgain:=random(10)+1;
  gold:=gold+goldgain;
  writeln('You found a chest with ',goldgain,' gold');
  readkey;
  writeln('You now have ',gold,' gold');
  readkey;
  clrscr;
end;

procedure trader(var gold,hp:integer);

var
  choice:char;

begin
  repeat
  clrscr;
  writeln('You walk through a creeky old wooden door and find a old man sitting');
  writeln('behind a counter he asks "would you like to spend ten gold to recover 25 hp?"');
  readln(choice);
  choice:=upcase(choice);
  until (choice = 'Y') or (choice = 'N');
  if (choice = 'Y') and (gold >= 10) then
  begin
    gold:=gold-10;
    hp:=hp+25;
    writeln('You regained 25 hp and you now have ',hp,' hp');
    readkey;
  end
  else if (gold < 10) and (choice = 'Y') then
  begin
    writeln('You need more gold to purchase my potion!');
    readkey;
  end;
  clrscr;
end;

procedure intro();

begin
  writeln('your father has been gone in the doungeons for weeks and is presumed dead.');
  delay(1000);
  writeln('you found yourself looking through all of his old gear and you found a object');
  delay(1000);
  writeln('rapped in a silk cloth, as you remove it you recognize it as your fathers old');
  delay(1000);
  writeln('shortsword, you feel a sense of motavation and you rush off into the doungeons');
  delay(1000);
  writeln('to find your dad.');
  readkey;
  clrscr;
end;

var
  hp,dmg,gold,exp,level,encounter:integer;


begin {main}
  initializevar(hp,dmg,gold,exp,level);
  Intro();
  repeat
  randomize;
  encounter:=random(3)+1;
  if (encounter = 1) then
  F_rat(hp,dmg,gold,exp,level)
  else if (encounter = 2) then
  loot(gold)
  else if (encounter = 3) then
  trader(gold,hp);
  until(exp > 50)




end.  {main}
