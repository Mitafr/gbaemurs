use std::{fs, io, ops::Deref, path::Path};

use gbaemu_common::{mem::Memory, Word};

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

    pub fn entrypoint(&self) -> Word {
        let bytes: [u8; 4] = self.data[0..0x04].try_into().unwrap();
        u32::from_le_bytes(bytes)
    }
}

impl Deref for Rom {
    type Target = Vec<u8>;

    fn deref(&self) -> &Self::Target {
        &self.data
    }
}

impl Memory for Rom {
    fn read(&self, address: Word) -> Word {
        let start = (address as usize) * 4;
        let bytes = &self.data[start..start + 4];
        u32::from_le_bytes(bytes.try_into().unwrap())
    }

    fn write(&mut self, _address: u16, _value: u16) {
        unreachable!()
    }
}
