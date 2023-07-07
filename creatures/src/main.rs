use creature::Creature;
use creature::BattleData;
//use rand::seq::SliceRandom;
//use csv::Writer;

mod creature;
mod pokedex;

use crate::{pokedex::Pokedex};

const POKEMON: i32 = 100;
//const BATTLES: i32 = 1000;

fn main()
{
    let json: String = std::fs::read_to_string("pokedex.json").unwrap().parse().unwrap(); 
    let pokedex : Pokedex = Pokedex{species: serde_json::from_str(&json).unwrap()};
    
    let mut pokemon: Vec<Creature> = 
    {
        let mut tmp: Vec<Creature> = vec![];
        for _i in 0..POKEMON 
        { 
            tmp.push(Creature::new(pokedex.random()));
        }
        tmp
    };
    
    
    //println!("{}\nStats\n{}", pokemon[0], pokemon[0].stats);
    //println!("{}\nStats\n{}", pokemon[1], pokemon[1].stats);
    
    let info = pokemon[0].battle(&pokemon[1]);
    pokemon[0].battles.push(BattleData{won: info.won, history:info.history.clone()});
    pokemon[1].battles.push(BattleData{won: !info.won, history:info.history.clone()});
    
    println!("{}", pokemon[0].battles[0]);
    
    /*
    let mut rng = rand::thread_rng();
    let mut wtr = Writer::from_path("data.csv").unwrap();
    
    wtr.write_record(&["Wins", "Losses"]).unwrap();
    
    for _i in 0..BATTLES 
    {
        let mid = pokemon.len()/2;
        
        let (left, right) = pokemon.split_at_mut(mid);
        
        let attacker = left.choose_mut(&mut rng).unwrap();
        let mut defender = right.choose_mut(&mut rng).unwrap();
        
        attacker.battle(&mut defender);
        
        //wtr.write_record([attacker.wins.to_string(), attacker.losses.to_string()]).unwrap();
    }
    */
}