use std::{
    fs, io,
    ops::{Deref, Index},
    path::Path,
};

use gbaemu_common::Word;

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

impl Index<Word> for Rom {
    type Output = Word;

    fn index(&self, index: Word) -> &Self::Output {
        let start = (index as usize) * 4;
        let bytes = &self.data[start..start + 4];
        unsafe { std::mem::transmute(bytes.as_ptr()) }
    }
}
