use branch::BranchInstr;
use datap::DataPInstr;
use gbaemu_common::print_bits_with_indices;
use memory::MemoryInstr;
use psr::PsrInstr;

use crate::opcode::OpCode;

pub mod branch;
pub mod datap;
pub mod executor;
pub mod memory;
pub mod psr;

type PreInstr = (u32, Cond, OpCode);

#[derive(Debug, Clone)]
pub enum Instr {
    Branch(BranchInstr),
    DataP(DataPInstr),
    Psr(PsrInstr),
    Memory(MemoryInstr),
}

impl From<u32> for Instr {
    fn from(value: u32) -> Self {
        print_bits_with_indices!(value);
        println!("value => {:x}", value);
        Instr::from((
            value,
            Cond::from_exact_bits(((value >> 28) & 0xF) as u8),
            OpCode::from(value),
        ))
    }
}

impl From<PreInstr> for Instr {
    fn from(value: PreInstr) -> Self {
        match value.2 {
            OpCode::B => Instr::Branch(BranchInstr::try_from(value).unwrap()),
            OpCode::ADC | OpCode::MOV | OpCode::TEQ => {
                Instr::DataP(DataPInstr::try_from(value).unwrap())
            }
            OpCode::LDR | OpCode::STR => Instr::Memory(MemoryInstr::try_from(value).unwrap()),
            OpCode::MRS => Instr::Psr(PsrInstr::try_from(value).unwrap()),
            _ => panic!("{:?} Instr not implemented", value),
        }
    }
}

#[derive(Default, Debug, Clone, Copy)]
pub enum Cond {
    EQ = 0x0,
    NE = 0x1,
    CSHS = 0x2,
    CCLO = 0x3,
    MI = 0x4,
    PL = 0x5,
    VS = 0x6,
    VC = 0x7,
    HI = 0x8,
    LS = 0x9,
    GE = 0xa,
    LT = 0xb,
    GT = 0xc,
    LE = 0xd,
    #[default]
    AL = 0xe,
    NV = 0xf,
}

impl Cond {
    fn from_exact_bits(bits: u8) -> Self {
        match bits {
            0x0 => Cond::EQ,
            0x1 => Cond::NE,
            0x2 => Cond::CSHS,
            0x3 => Cond::CCLO,
            0x4 => Cond::MI,
            0x5 => Cond::PL,
            0x6 => Cond::VS,
            0x7 => Cond::VC,
            0x8 => Cond::HI,
            0x9 => Cond::LS,
            0xa => Cond::GE,
            0xb => Cond::LT,
            0xc => Cond::GT,
            0xd => Cond::LE,
            0xe => Cond::AL,
            0xf => Cond::NV,
            _ => Cond::default(),
        }
    }
}
