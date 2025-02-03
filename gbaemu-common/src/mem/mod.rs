use crate::Word;

pub trait Memory: std::fmt::Debug {
    fn read(&self, address: Word) -> Word;
    fn write(&mut self, address: u16, value: u16);
}
