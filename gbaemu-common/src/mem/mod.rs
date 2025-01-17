pub trait Memory: std::fmt::Debug {
    fn read(&self, address: u16) -> u16;
    fn write(&mut self, address: u16, value: u16);
}
