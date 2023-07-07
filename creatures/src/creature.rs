use std::{fmt::{Display, Formatter, Result}, vec};
use serde::{Deserialize};
use rand::Rng;

#[derive(Clone, PartialEq)]
pub struct Creature
{
    pub health: i32,
    pub stats: Base,
    pub level: i32,
    pub species: Species,
    pub ivs: Base,
    pub evs: Base,
    pub battles: Vec<BattleData>,
}

#[derive(Clone, PartialEq, Default)]
pub struct BattleData
{
    pub won: bool,
    pub history: Vec<String>,
}

#[derive(Clone, Deserialize, PartialEq)]
pub struct Species
{
    pub id: i32,
    pub name : Name,
    #[serde(rename = "type")]
    pub element : Vec<String>,
    pub base : Base,
}

impl Creature
{
    pub fn new(species: Species) -> Self 
    {
        let _ivs = Creature::generate_ivs();
        let _evs = Base::default();
        let _lvl = rand::thread_rng().gen_range(1..2);
        
        let _stats = Creature::generate_stats(&species, &_ivs, &_evs, &_lvl);
        
        let default = Creature
        {
            health: _stats.hp,
            stats: _stats,
            level: _lvl,
            species: species,
            ivs: _ivs,
            evs: _evs,
            battles: vec![],
        };
    
        return default;
    }
    
    //gen 3 calculations
    pub fn generate_stats(species: &Species, ivs: &Base, evs: &Base, lvl: &i32) -> Base
    {
        let mut stats = Base::default();
        stats.hp = Creature::generate_stat(&species.base.hp, &ivs.hp, &evs.hp, lvl, true);
        stats.attack = Creature::generate_stat(&species.base.attack, &ivs.attack, &evs.attack, lvl, false);
        stats.defense = Creature::generate_stat(&species.base.defense, &ivs.defense, &evs.defense, lvl, false);
        stats.sp_attack = Creature::generate_stat(&species.base.sp_attack, &ivs.sp_attack, &evs.sp_attack, lvl, false);
        stats.sp_defense = Creature::generate_stat(&species.base.sp_defense, &ivs.sp_defense, &evs.sp_defense, lvl, false);
        stats.speed = Creature::generate_stat(&species.base.speed, &ivs.speed, &evs.speed, lvl, false);
        
        return stats;
    }
    
    pub fn generate_stat(base: &i32, iv: &i32, ev: &i32, lvl: &i32, hp: bool) -> i32
    {
        let mut stat = (2 * base + iv + (ev/4)) * lvl;
        
        stat = stat/100;
        if hp
        {
            stat = stat + lvl + 10;
        }else
        {
            stat = stat + 5;
        }
        
        return stat;
    }
    
    pub fn generate_ivs() -> Base
    {
        let mut rng = rand::thread_rng();
        //rng.gen_range(0..10)
        
        return Base
        {
            hp: rng.gen_range(0..32),
            attack: rng.gen_range(0..32),
            defense: rng.gen_range(0..32),
            sp_attack: rng.gen_range(0..32),
            sp_defense: rng.gen_range(0..32),
            speed: rng.gen_range(0..32),
        }
    }
    
    pub fn calculate_damage(&self, target: &Creature) -> i32
    {
        let power = 50; //tackle power
        let ad_ratio = self.stats.attack/target.stats.defense;
        let burn = 1; //0.5 if attacker is burned, 1 otherwise
        let screen = 1;
        let targets = 1;
        let weather = 1;
        let ff = 1;
        let stockpile = 1;
        let critical = 1;
        let double_damage = 1;
        let charge = 1;
        let hh = 1;
        let stab = 1;
        let effectiveness = 1;
        let random = rand::thread_rng().gen_range(85..101)/100;
        
        let mut damage = ((2 * self.level)/5) + 2;
        damage = damage * power * ad_ratio;
        damage = damage/50;
        damage = damage * burn * screen * targets * weather * ff + 2;
        damage = damage * stockpile * critical * double_damage * charge * hh * stab * effectiveness * random;
        
        return damage;
        
    }
    
    pub fn battle(&self, enemy: &Creature) -> BattleData
    {
        let mut self_hp = self.health;
        let mut enemy_hp = enemy.health;
        
        let mut history: Vec<String> = vec![];
        
        let mut self_turn = self.stats.speed > enemy.stats.speed;
        
        let mut damage;
        
        while self_hp > 0 && enemy_hp > 0
        {
            if self_turn
            {
                damage = self.calculate_damage(enemy);
                enemy_hp = enemy_hp - damage;
                history.push(format!("{} attacked {} for {} damage", self, enemy, damage));
            }else
            {
                damage = enemy.calculate_damage(self);
                self_hp = self_hp - damage;
                history.push(format!("{} attacked {} for {} damage", enemy, self, damage));
                
            }
            
            self_turn = !self_turn;
        }
        
        if self_hp > 0
        {
            history.push(format!("{} fainted", enemy));
            return BattleData {won: true, history: history};
        }else
        {
            history.push(format!("{} fainted", self));
            return BattleData {won: false, history: history};
        }
    }
}

impl Display for Creature
{
    fn fmt(&self, f: &mut Formatter) -> Result 
    {
        write!(f,"{} (lvl {})", self.species.name.english, self.level)
    }
}

impl Display for BattleData
{
    fn fmt(&self, f: &mut Formatter) -> Result 
    {
        write!(f,"{}", self.history.join("\n"))
    }
}

#[derive(Clone, Deserialize, PartialEq)]
pub struct Name
{
    pub english: String,
    pub japanese: String,
    pub chinese: String,
    pub french: String
}

#[derive(Clone, Deserialize, PartialEq, Default)]
pub struct Base
{
    #[serde(rename = "HP")]
    pub hp: i32,
    #[serde(rename = "Attack")]
    pub attack: i32,
    #[serde(rename = "Defense")]
    pub defense: i32,
    #[serde(rename = "Sp. Attack")]
    pub sp_attack: i32,
    #[serde(rename = "Sp. Defense")]
    pub sp_defense: i32,
    #[serde(rename = "Speed")]
    pub speed: i32,
}

impl Display for Base
{
    fn fmt(&self, f: &mut Formatter) -> Result 
    {
        write!(f, "hp\t-\t{}\nattack\t-\t{}\ndefense\t-\t{}\ns atk\t-\t{}\ns def\t-\t{}\nspeed\t-\t{}", self.hp, self.attack, self.defense, self.sp_attack, self.sp_defense, self.speed)
    }
}

/* 
impl Display for Element 
{
    fn fmt(&self, f: &mut Formatter) -> Result 
    {
       match self 
       {
            Element::Normal => write!(f, "Normal"),
            Element::Water => write!(f, "Water"),
            Element::Fire => write!(f, "Fire"),
            Element::Grass => write!(f, "Grass"),
       }
    }
}*/