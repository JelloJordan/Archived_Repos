#![cfg_attr(
    all(not(debug_assertions), target_os = "windows"),
    windows_subsystem = "windows"
)]

use dioxus::prelude::*;
use dioxus_desktop::{Config, WindowBuilder};

fn main() {
    dioxus_desktop::launch_cfg(
        app,
        Config::default().with_window(WindowBuilder::new().with_resizable(true).with_inner_size(
            dioxus_desktop::wry::application::dpi::LogicalSize::new(400.0, 800.0),
        )),
    );
}

fn app(cx: Scope) -> Element {
    cx.render(rsx! {
        div {
            "Hello, world!"
        }
    })
}