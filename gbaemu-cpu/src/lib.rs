use gbaemu_common::mem::Memory;
use gbaemu_rom::Rom;
use insrt::Instr;
use register::CpuRegister;

mod insrt;
mod opcode;
mod register;

#[derive(Default, Debug, PartialEq, Eq)]
enum CpuState {
    #[default]
    Running = 0,
    Wait = 1,
    Exit = 2,
}

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
    state: CpuState,
}

impl Cpu {
    pub fn execute<B: Memory>(&mut self, rom: &Rom, bus: &mut B) {
        println!("{:#?}", bus);
        println!("{:#?}", self.register);
        println!("{:#?}", Instr::from(rom.entrypoint()));
        Instr::from(rom.entrypoint()).execute(&mut self.register, bus);

        while self.state == CpuState::Running {
            Instr::from(rom[self.register.pc]).execute(&mut self.register, bus);
        }
        println!("{:#?}", self.register);
    }
}
