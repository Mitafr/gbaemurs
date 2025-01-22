use std::{fs, path::Path};

#[derive(Debug)]
pub struct CpuMemory {
    pub bios: Vec<u8>,
}

impl CpuMemory {
    pub fn new<P: AsRef<Path>>(bios: P) -> Self {
        Self {
            bios: fs::read(bios).unwrap(),
        }
    }
}
