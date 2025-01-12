use gbaemu_core::Core;

pub fn main() {
    let core = Core::new().unwrap();
    core.run().unwrap();
}
