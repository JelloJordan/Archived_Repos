use crate::creature::Species;
use serde::{Deserialize};
use rand::seq::SliceRandom;

#[derive(Deserialize)]
pub struct Pokedex
{
    pub species: Vec<Species> 
}

impl Pokedex
{
    pub fn random(&self) -> Species
    {
        return self.species.choose(&mut rand::thread_rng()).unwrap().clone();
    }
}
