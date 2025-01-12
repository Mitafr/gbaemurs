use register::CpuRegister;

mod register;

pub struct Cpu {
    register: CpuRegister,
}

impl Default for Cpu {
    fn default() -> Self {
        Cpu {
            register: CpuRegister::default(),
        }
    }
}
