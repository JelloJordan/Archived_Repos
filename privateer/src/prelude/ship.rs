use super::sailor::Sailor;
use super::cargo::*;

#[derive(serde::Serialize, serde::Deserialize, Default, Debug, Clone)]
pub struct ShipPreset
{
    pub crew_capacity: u16,
    pub cargo_capacity: u16,
}

#[derive(serde::Serialize, serde::Deserialize, Default, Debug)]
pub struct Ship
{
    pub name: String,
    pub preset: ShipPreset,
    pub crew: Vec<Sailor>,
    pub cargo: Vec<Cargo>,
}

impl crate::utils::JsonHelper for Ship {}

#[derive(Debug)]
pub enum CargoLoadResult
{
    Failed,
    LoadedNone,
    LoadedSome(u16),
    Loaded
}

#[derive(Debug)]
pub enum CargoLoadAmount
{
    All,
    Some(u16),
}

impl Ship 
{
    pub fn add_to_crew(&mut self, sailor: Sailor)
    {
        self.crew.push(sailor);
    }
    
    pub fn remove_from_crew(&mut self, id: u32)
    {
        self.crew.remove(self.crew.iter().position(|i| i.id == id).unwrap());
    }
    
    pub fn load_cargo(&mut self, result: &mut Result<Cargo, CargoLookupError>, amount:CargoLoadAmount) -> CargoLoadResult
    {
        match result
        {
            Err(error) => 
            {
                match error
                {
                    CargoLookupError::LookUpNameFailed(name) => 
                    {
                        println!("failed to look up cargo name {:?}", name);
                        return CargoLoadResult::Failed;
                    },
                    CargoLookupError::LookUpTypeFailed(cargo_type) => 
                    {
                        println!("failed to look up cargo type {:?}", cargo_type);
                        return CargoLoadResult::Failed;
                    }
                }
            },
            Ok(ref mut cargo) => 
            {
                let tons_onboard: u16 = self.cargo.iter().map(|cargo| cargo.tons as u16).sum();
                let tons_space = self.preset.cargo_capacity - tons_onboard;
                
                if tons_space == 0 || cargo.tons == 0 {return CargoLoadResult::LoadedNone};
                
                let mut packaged_cargo : Cargo = cargo.clone();
                let desired_amount = match amount 
                {
                    CargoLoadAmount::All => cargo.tons,
                    CargoLoadAmount::Some(value) => std::cmp::min(value, cargo.tons)
                };
                
                let will_fit = desired_amount <= tons_space;
                
                if will_fit
                {
                    cargo.tons -= desired_amount;
                    packaged_cargo.tons = desired_amount;
                }else 
                {
                    cargo.tons -= tons_space;
                    packaged_cargo.tons = tons_space;     
                }
                
                for c in self.cargo.iter_mut() 
                {
                    if c.name == packaged_cargo.name
                    {
                        c.tons += packaged_cargo.tons;
                        return if will_fit {CargoLoadResult::Loaded} else {CargoLoadResult::LoadedSome(tons_space)};
                    }
                }
                
                self.cargo.push(packaged_cargo);
                return if will_fit {CargoLoadResult::Loaded} else {CargoLoadResult::LoadedSome(tons_space)};
            },
        }
    }
    
    //
    
    
    /* 
    pub fn unload_cargo_amount(&mut self, cargo_type: CargoType, tons: u16)
    {
        
    }
    
    pub fn unload_cargo_completely(&mut self, cargo_type: CargoType)
    {
        
    }*/
}