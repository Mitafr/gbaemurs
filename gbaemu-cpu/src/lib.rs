use gbaemu_common::mem::Memory;
use gbaemu_rom::Rom;
use register::CpuRegister;

mod insrt;
mod opcode;
mod register;

#[derive(Debug, Default)]
enum CpuMode {
    #[default]
    Arm,
    Thumb,
}

#[derive(Debug, Default)]
pub struct Cpu {
    register: CpuRegister,
    mode: CpuMode,
}

impl Cpu {
    pub fn execute<B: Memory>(&mut self, rom: &Rom, bus: &mut B) {
        println!("Executing {}", rom.title());
        println!("{:#?}", bus);
        println!("{:#?}", self.register);
    }
}
