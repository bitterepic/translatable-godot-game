use godot::classes::{INode2D, Node2D};
use godot::prelude::*;
use godot::tools::{tr, tr_n};

#[derive(GodotClass)]
#[class(init, base=Node2D)]
pub struct RustNode {
    base: Base<Node2D>,
}

#[godot_api]
impl INode2D for RustNode {
    fn ready(&mut self) {
        let count : i32 = 3;
        let character = "Jim";

        godot_print!("{}", tr!("test rust string"));

        let plural_string = tr_n!(count;
            "{character} picked up a weapon",
            "{character} picked up {count} weapons",
        );
        godot_print!("{}", plural_string);
    }
}
