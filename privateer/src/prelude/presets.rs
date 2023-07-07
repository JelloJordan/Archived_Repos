use std::collections::HashMap;

#[derive(serde::Serialize, serde::Deserialize, Default)]
pub struct ShipPresets
{
    pub presets: HashMap<String, crate::ship::ShipPreset>
}

#[derive(serde::Serialize, serde::Deserialize, Default)]
pub struct CargoPresets
{
    pub presets: HashMap<String, crate::cargo::CargoPreset>
}

impl crate::utils::JsonHelper for ShipPresets {}
impl crate::utils::JsonHelper for CargoPresets {}