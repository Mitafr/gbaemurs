use std::ops::{Index, IndexMut};

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

impl Index<u32> for CpuRegister {
    type Output = u32;

    fn index(&self, index: u32) -> &Self::Output {
        match index {
            0 => &self.gp0,
            1 => &self.gp1,
            2 => &self.gp2,
            3 => &self.gp3,
            4 => &self.gp4,
            5 => &self.gp5,
            6 => &self.gp6,
            7 => &self.gp7,
            8 => &self.gp8,
            9 => &self.gp9,
            _ => todo!(),
        }
    }
}

impl IndexMut<u32> for CpuRegister {
    fn index_mut(&mut self, index: u32) -> &mut Self::Output {
        match index {
            0 => &mut self.gp0,
            1 => &mut self.gp1,
            2 => &mut self.gp2,
            3 => &mut self.gp3,
            4 => &mut self.gp4,
            5 => &mut self.gp5,
            6 => &mut self.gp6,
            7 => &mut self.gp7,
            8 => &mut self.gp8,
            9 => &mut self.gp9,
            _ => todo!(),
        }
    }
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
