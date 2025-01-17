use std::{fs, io, ops::Deref, path::Path};

#[derive(Default, Debug)]
pub struct Rom {
    data: Vec<u8>,
}

impl Rom {
    pub fn load<P: AsRef<Path>>(path: P) -> Result<Rom, io::Error> {
        let data = fs::read(path)?;
        Ok(Rom { data })
    }

    pub fn title(&self) -> String {
        String::from_utf8(self.data[0x00A0..0x00A0 + 12].to_vec()).unwrap()
    }

    pub fn logo(&self) -> &[u8] {
        &self.data[0x004..0x004 + 192]
    }

    pub fn entrypoint(&self) -> &[u8] {
        &self.data[0..0x04]
    }
}

impl Deref for Rom {
    type Target = Vec<u8>;

    fn deref(&self) -> &Self::Target {
        &self.data
    }
}
