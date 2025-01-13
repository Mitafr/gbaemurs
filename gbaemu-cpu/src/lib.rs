use gbaemu_common::mem::Memory;
use register::CpuRegister;

mod register;

#[derive(Debug, Default)]
pub struct Cpu {
    register: CpuRegister,
}

impl Cpu {
    pub fn execute<B: Memory>(&mut self, bus: &mut B) {
        println!("Executing")
    }
}
