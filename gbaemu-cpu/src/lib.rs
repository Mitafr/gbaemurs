use gbaemu_common::mem::Memory;
use gbaemu_rom::Rom;
use insrt::{Instr, InstrExecutor};
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
        InstrExecutor {
            instr: Instr::from(rom.entrypoint()),
            register: &mut self.register,
            bus,
        }
        .execute();

        while self.state == CpuState::Running {
            InstrExecutor {
                instr: self.fetch(rom),
                register: &mut self.register,
                bus,
            }
            .execute();
        }
        println!("{:#?}", self.register);
    }

    fn fetch(&self, rom: &Rom) -> Instr {
        Instr::from(rom[self.register.pc])
    }
}
