use serde::{Serialize};

pub trait JsonHelper<T:Default + Serialize = Self>:
{
    fn write_template()
    {
        let default: T = T::default();
        
        let json = serde_json::to_string_pretty(&default).unwrap();
        
        let (_, file_name) = std::any::type_name::<T>().rsplit_once(':').unwrap();
    
        let path = "debug/templates/".to_string() + &file_name.to_lowercase() + ".json";
        
        //println!("{}", path);
        
        std::fs::write(path, json).unwrap();
    }
    
    fn write_output(&self) where Self: Serialize
    {
        let json = serde_json::to_string_pretty(&self).unwrap();
        
        let (_, file_name) = std::any::type_name::<T>().rsplit_once(':').unwrap();
    
        let path = "debug/output/".to_string() + &file_name.to_lowercase() + ".json";
        
        //println!("{}", path);
        
        std::fs::write(path, json).unwrap();
    }
}