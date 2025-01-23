use gbaemu_common::mem::Memory;
use gbaemu_rom::Rom;
use insrt::{executor::InstrExecutor, Instr};
use register::CpuRegister;

mod insrt;
pub mod mem;
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
        InstrExecutor {
            instr: Instr::from(rom.entrypoint()),
            register: &mut self.register,
            bus,
        }
        .execute();

        while self.state == CpuState::Running {
            InstrExecutor {
                instr: self.fetch(bus),
                register: &mut self.register,
                bus,
            }
            .execute();
        }
        println!("{:#?}", self.register);
    }

    fn fetch<B: Memory>(&mut self, bus: &B) -> Instr {
        let address = self.register.pc;
        self.register.pc += 4;
        println!("Instr from pc => {}", address);
        Instr::from(bus.read(address))
    }
}
