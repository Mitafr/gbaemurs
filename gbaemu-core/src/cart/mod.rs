use std::{fs, path::Path};

#[derive(Debug, Default)]
pub struct Cart {
    data: Vec<u8>,
}

impl Cart {
    pub fn load<P: AsRef<Path>>(path: P) -> Cart {
        Cart {
            data: fs::read(path).unwrap(),
        }
    }
}
