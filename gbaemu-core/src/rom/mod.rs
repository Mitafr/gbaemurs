use std::{fs, io, path::Path};

#[derive(Default, Debug)]
pub struct Rom {
    data: Vec<u8>,
}

impl Rom {
    pub fn load<P: AsRef<Path>>(path: P) -> Result<Rom, io::Error> {
        let data = fs::read(path)?;
        Ok(Rom { data })
    }
}
