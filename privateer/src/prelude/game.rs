use crate::prelude::*;

#[derive(Default)]
pub struct Game
{
    pub gen_id: u32,
    pub names: Vec<String>,
    pub ship: ShipPresets,
    pub cargo: CargoPresets,
    pub player: Ship,
}

impl Game 
{
    pub fn start(&mut self)
    {
        self.initialize();
        
        let mut ship = Ship::default();
        ship.name = "Epic Ship".to_string();
        ship.preset = self.ship.presets.get("Sloop").unwrap().clone();
        
        self.gen_id += 1;
        
        ship.crew.push(Sailor{
                name:"Jordan".to_string(), 
                age: 25, 
                id: self.gen_id,
                rank: Rank::Captain,
                personality: Personality::default(),
                stats: Stats::default(),
                });
        
        for _i in 1..5
        {
            ship.add_to_crew(Sailor::random(self));
        }
        
        let mut loading = Cargo::from_name(&self, "Apples".to_string(), 5);
        
        println!("{:?}", ship.load_cargo(&mut loading, CargoLoadAmount::Some(3)));
        println!("{:?}", ship.load_cargo(&mut loading, CargoLoadAmount::Some(2)));
        
        let mut ran = Cargo::random(&self, CargoType::Food, 4);
        
        println!("{:?}", ship.load_cargo(&mut ran, CargoLoadAmount::All));
        
        loading.unwrap().write_output();
        
        while !ship.crew.is_empty()
        {
        
            let mut casualties : Vec<u32> = Vec::new();
            
            for c in ship.crew.iter_mut() 
            {
                if c.Day()
                {
                    println!("{} died", c.name);
                    casualties.push(c.id);
                }
            }
            
            for id in casualties.iter()
            {
                ship.remove_from_crew(id.clone());
            }
        }
    }
    
    fn initialize(&mut self)
    {
        self.gen_id = 0;
        self.names = std::fs::read_to_string("content/names.txt").unwrap().split("\n").map(|s| s.to_string()).collect();
        
        let json: String = std::fs::read_to_string("content/shippresets.json").unwrap().parse().unwrap(); 
        self.ship = serde_json::from_str(&json).unwrap();
        
        let json: String = std::fs::read_to_string("content/cargopresets.json").unwrap().parse().unwrap(); 
        self.cargo = serde_json::from_str(&json).unwrap();
        
           /* 
        let json: String = std::fs::read_to_string("content/ships.json").unwrap().parse().unwrap(); 
        let ships: Ships = serde_json::from_str(&json).unwrap();
        let mut current: Ship = ships.types.get("Cutter").unwrap().clone();
        
        Ship::write_template();
        let json: String = std::fs::read_to_string("debug/templates/ship.json").unwrap().parse().unwrap(); 
        let mut ship: Ship = serde_json::from_str(&json).unwrap();
        */
    }
}


