use crate::prelude::cargo;
use rand::{seq::SliceRandom};

use super::game::Game;

#[derive(serde::Serialize, serde::Deserialize, Default, Debug, PartialEq, Eq, Hash, Clone)]
pub enum CargoType
{
    #[default]
    Food,
    Valuable
}

impl std::fmt::Display for CargoType {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        match self 
        {
            CargoType::Food => write!(f, "Food"),
            CargoType::Valuable => write!(f, "Valuable"),
        }
    }
}

#[derive(serde::Serialize, serde::Deserialize, Default, Debug, Clone)]
pub struct CargoPreset
{
    pub cargo_type: CargoType,
    pub value: u16,
}

#[derive(serde::Serialize, serde::Deserialize, Default, Debug, Clone)]
pub struct Cargo
{
    pub name: String,
    pub preset: CargoPreset,
    pub tons: u16,
}

impl crate::utils::JsonHelper for Cargo {}

#[derive(Debug)]
pub enum CargoLookupError
{
    LookUpNameFailed(String),
    LookUpTypeFailed(String),
}

impl Cargo 
{
    pub fn random(game: &Game, cargo_type: CargoType, tons: u16) -> Result<Cargo, CargoLookupError>
    {
        let mut found : Vec<&String> = Vec::new();
        
        for (key, value) in &game.cargo.presets 
        {
            if value.cargo_type == cargo_type
            {
                found.push(&key);
            }
        }
        
        if found.is_empty() {CargoLookupError::LookUpTypeFailed(cargo_type.to_string());};
        
        let key: &String = found.choose(&mut rand::thread_rng()).unwrap();
        
        Ok(Cargo 
        {
            name: key.clone(), 
            preset: game.cargo.presets.get(key).unwrap().clone(), 
            tons: tons,
        })
    }
    /* 
    pub fn random(game: &Game, tons: u16) -> Cargo
    {
        //get cargo [Food].randomfrom vec
        
        //get key value
        
        return Cargo{name: "Apples".to_string(), preset: game.cargo.presets.get("Apples").unwrap().clone(), tons: tons};
        
        //return Cargo::default()
    }*/
    
    pub fn from_name(game: &Game, name : String, tons: u16) -> Result<Cargo, CargoLookupError>
    {
        match game.cargo.presets.get(&name).ok_or(CargoLookupError::LookUpNameFailed(name.clone()))
        {
            Err(error) => Err(error),
            Ok(preset) => Ok(
                Cargo 
                {
                    name: name.clone(), 
                    preset: preset.clone(), 
                    tons: tons,
                }
            ),                
        }
    }
}

/*
Cargo {
                    name: name.clone(), 
                    preset: preset.clone(), 
                    tons: tons,
                )}
}
 */