pub trait Memory: std::fmt::Debug {
    fn read(&self, address: u32) -> u32;
    fn write(&mut self, address: u16, value: u16);
}
