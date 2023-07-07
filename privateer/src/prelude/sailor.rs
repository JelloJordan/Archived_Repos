use rand::{seq::SliceRandom, Rng};
use rand_distr::{StandardNormal};

use super::game::Game;

#[derive(serde::Serialize, serde::Deserialize, Clone, Default, Debug)]
pub struct Sailor
{
    pub name: String,
    pub age: u16,
    pub rank: Rank,
    pub id: u32,
    pub personality: Personality,
    pub stats: Stats,
}

impl crate::utils::JsonHelper for Sailor {}

impl Sailor 
{
    pub fn random(game: &mut Game) -> Sailor
    {
        game.gen_id += 1;
        return Sailor{
            name:game.names.choose(&mut rand::thread_rng()).unwrap().trim().to_string(), 
            age: rand::thread_rng().gen_range(16..41), 
            id: game.gen_id,
            rank: Rank::Crewmate,
            personality: Personality::default(),
            stats: Stats::default(),
            };
    }
}

impl Sailor
{
    pub fn Day(&mut self) -> bool
    {
        let odds = rand::thread_rng().gen_range(1..1001);
        
        if odds < 100
        {
            return true;
        }
        
        return false;
    }
}

#[derive(serde::Serialize, serde::Deserialize, Clone, Default, Debug)]
pub enum Rank
{
    #[default]
    Passenger,
    Crewmate,
    Cook,
    Surgeon,
    Boatswain,
    Gunner,
    Navigator,
    Quartermaster,
    Captain,
}

#[derive(serde::Serialize, serde::Deserialize, Clone, Debug)]
pub struct Personality
{
    pub curiosity: u8,
    pub discipline: u8,
    pub extraversion: u8,
    pub cooperativeness: u8,
    pub neuroticism: u8,
}

impl Default for Personality 
{
    fn default() -> Self 
    {
        let mut _curiosity: f64 = rand::thread_rng().sample(StandardNormal);
        let mut _discipline: f64 = rand::thread_rng().sample(StandardNormal);
        let mut _extraversion: f64 = rand::thread_rng().sample(StandardNormal);
        let mut _cooperativeness: f64 = rand::thread_rng().sample(StandardNormal);
        let mut _neuroticism: f64 = rand::thread_rng().sample(StandardNormal);
        
        _curiosity = ((_curiosity + 3.0)/6.0) * 100.0;
        _discipline = ((_discipline + 3.0)/6.0) * 100.0;
        _extraversion = ((_extraversion + 3.0)/6.0) * 100.0;
        _cooperativeness = ((_cooperativeness + 3.0)/6.0) * 100.0;
        _neuroticism = ((_neuroticism + 3.0)/6.0) * 100.0;
        
        Self 
        { 
            curiosity: num::clamp(_curiosity.round() as u8, 1, 100),
            discipline: num::clamp(_discipline.round() as u8, 1, 100),
            extraversion: num::clamp(_extraversion.round() as u8, 1, 100),
            cooperativeness: num::clamp(_cooperativeness.round() as u8, 1, 100),
            neuroticism: num::clamp(_neuroticism.round() as u8, 1, 100),
        }
    }
}

#[derive(serde::Serialize, serde::Deserialize, Clone, Debug)]
pub struct Stats
{
    pub fitness: u8,
    pub intelligence: u8,
}

impl Default for Stats 
{
    fn default() -> Self 
    {
        let mut _fitness: f64 = rand::thread_rng().sample(StandardNormal);
        let mut _intelligence: f64 = rand::thread_rng().sample(StandardNormal);
        
        _fitness = ((_fitness + 3.0)/6.0) * 100.0;
        _intelligence = ((_intelligence + 3.0)/6.0) * 100.0;
        
        Self 
        { 
            fitness: num::clamp(_fitness.round() as u8, 1, 100), 
            intelligence: num::clamp(_intelligence.round() as u8, 1, 100), 
        }
    }
}