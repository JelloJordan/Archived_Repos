use crate::prelude::*;

mod prelude;
mod utils;

fn main() 
{   
    /*
    let mut test : CargoPresets = CargoPresets::default();
    test.presets.insert("Apple".to_string(), CargoPreset { cargo_type: CargoType::Food, value: 2 });
    test.presets.insert("Bruh".to_string(), CargoPreset { cargo_type: CargoType::Valuable, value: 52 });
    test.write_output();*/
    
    let mut game: Game = Game::default();
    game.start();
    
    //ship.write_output();
}
