use bitflags::bitflags;

#[derive(Default, Debug, Clone, Copy)]
pub struct CpuRegister {
    pub gp0: u32,
    pub gp1: u32,
    pub gp2: u32,
    pub gp3: u32,
    pub gp4: u32,
    pub gp5: u32,
    pub gp6: u32,
    pub gp7: u32,
    pub gp8: u32,
    pub gp9: u32,
    pub gp10: u32,
    pub gp11: u32,
    pub gp12: u32,
    pub sp13: u32,
    pub lr14: u32,
    pub pc: u32,
    pub cpsr: Cspr,
    pub spsr: u32,
}

bitflags! {

    #[derive(Default, Debug, Clone, Copy)]
    pub struct Cspr: u32 {
        const N = 1 << 31;
        const Z = 1 << 30;
        const C = 1 << 29;
        const V = 1 << 28;
        const Q = 1 << 27;

        const I = 1 << 7;
        const F = 1 << 6;
        const T = 1 << 5;

        // TODO mode [4..0]
    }
}
